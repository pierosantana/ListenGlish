/**
 * ListenGlish — app.js
 *
 * Flujo:
 *  1. Búsqueda → GET /api/search → lista de clips
 *  2. Clip activo → player de YouTube + subtítulo sincronizado en tiempo real
 *  3. GET /api/videos/{id}/transcript → segmentos del vídeo para el subtítulo dinámico
 *  4. Clic en palabra → GET /api/dictionary/{word} → panel lateral
 */

// ─────────────────────────────────────────────
// Estado
// ─────────────────────────────────────────────
const state = {
    query:         '',
    results:       [],   // array barajado de clips; navegamos en orden sobre él
    index:         0,    // posición actual dentro de results[]
    total:         0,    // total de resultados según el backend
    page:          0,    // próxima página a pedir
    pageSize:      50,   // pedimos 50 a la vez para tener variedad desde el principio
    ytPlayer:      null,
    clipStart:     0,
    transcript:    [],
    pollInterval:  null,
    lastActiveSeg: -1,
};

// ─────────────────────────────────────────────
// DOM
// ─────────────────────────────────────────────
const searchForm        = document.getElementById('searchForm');
const searchInput       = document.getElementById('searchInput');
const homeScreen        = document.getElementById('homeScreen');
const loading           = document.getElementById('loading');
const emptyState        = document.getElementById('emptyState');
const emptyMessage      = document.getElementById('emptyMessage');
const playerView        = document.getElementById('playerView');
const resultCounter     = document.getElementById('resultCounter');
const videoMeta         = document.getElementById('videoMeta');
const subtitleBlock     = document.getElementById('subtitleBlock');
const prevBtn           = document.getElementById('prevBtn');
const nextBtn           = document.getElementById('nextBtn');
const rewindBtn         = document.getElementById('rewindBtn');
const resetBtn          = document.getElementById('resetBtn');
const playPauseBtn      = document.getElementById('playPauseBtn');
const iconPlay          = playPauseBtn.querySelector('.icon-play');
const iconPause         = playPauseBtn.querySelector('.icon-pause');
const navDots           = document.getElementById('navDots');
const dictionaryPanel   = document.getElementById('dictionaryPanel');
const dictionaryContent = document.getElementById('dictionaryContent');
const dictionaryClose   = document.getElementById('dictionaryClose');

// Estado visual inicial: solo la pantalla de inicio visible
show('home');

// ─────────────────────────────────────────────
// YouTube IFrame API
// ─────────────────────────────────────────────
const ytApiReady = new Promise(resolve => {
    window.onYouTubeIframeAPIReady = () => resolve();
});

(function () {
    const s = document.createElement('script');
    s.src = 'https://www.youtube.com/iframe_api';
    document.head.appendChild(s);
})();

// ─────────────────────────────────────────────
// Búsqueda
// ─────────────────────────────────────────────
searchForm.addEventListener('submit', async e => {
    e.preventDefault();
    const q = searchInput.value.trim();
    if (!q) return;

    state.query   = q;
    state.page    = 0;
    state.index   = 0;
    state.results = [];

    show('loading');
    try {
        await fetchPage();
    } catch (_) {
        show('empty');
        emptyMessage.textContent = 'Error al conectar con el servidor.';
        return;
    }

    if (state.results.length === 0) {
        show('empty');
        emptyMessage.textContent = `No se encontraron resultados para "${q}".`;
    } else {
        show('player');
        saveSearch(state.query, state.total);
        renderClip(0);
    }
});

async function fetchPage() {
    const res = await fetch(`/api/search?q=${encodeURIComponent(state.query)}&page=${state.page}&size=${state.pageSize}`);
    if (!res.ok) throw new Error(`HTTP ${res.status}`);
    const data = await res.json();
    state.total = data.total;
    state.page++;

    if (state.results.length === 0) {
        // Primera página: barajamos todo el lote antes de empezar
        state.results = shuffle(data.results);
    } else {
        // Páginas siguientes: insertamos cada nuevo clip en una posición
        // aleatoria DESPUÉS del índice actual para no repetir lo ya visto
        insertShuffled(data.results, state.index + 1);
    }
}

/** Fisher-Yates in-place shuffle — devuelve el mismo array */
function shuffle(arr) {
    for (let i = arr.length - 1; i > 0; i--) {
        const j = Math.floor(Math.random() * (i + 1));
        [arr[i], arr[j]] = [arr[j], arr[i]];
    }
    return arr;
}

/** Inserta cada elemento de `items` en una posición aleatoria >= `from` */
function insertShuffled(items, from) {
    for (const item of items) {
        const pos = from + Math.floor(Math.random() * (state.results.length - from + 1));
        state.results.splice(pos, 0, item);
    }
}

// ─────────────────────────────────────────────
// Renderizar clip activo
// ─────────────────────────────────────────────
async function renderClip(idx) {
    state.index = idx;
    const clip  = state.results[idx];

    if (idx >= state.results.length - 3 && state.results.length < state.total) {
        fetchPage().catch(console.error);
    }

    // Contador "2 de 12 para 'creativity'"
    resultCounter.innerHTML =
        `<em>${idx + 1}</em> de <em>${state.total}</em> para "<strong>${escapeHtml(state.query)}</strong>"`;

    // Metadatos del vídeo
    videoMeta.innerHTML = `
        <span class="vm-title">${escapeHtml(clip.videoTitle)}</span>
        <span class="badge badge--channel">${escapeHtml(clip.channel)}</span>
        ${clip.accent ? `<span class="badge badge--accent">${escapeHtml(clip.accent)}</span>` : ''}
    `;

    // Mostrar ya el segmento que encontró la búsqueda
    showSubtitle(clip.text);

    // Navegación
    prevBtn.disabled = idx === 0;
    nextBtn.disabled = idx >= state.total - 1;
    renderDots(idx);

    // Parar polling anterior, cargar player y transcript en paralelo
    stopSync();
    await Promise.all([
        loadVideo(clip.youtubeId, Math.max(0, clip.startSeconds - 1.5)),
        loadTranscript(clip.youtubeId),
    ]);
}

// ─────────────────────────────────────────────
// YouTube Player
// ─────────────────────────────────────────────
async function loadVideo(videoId, startSeconds) {
    await ytApiReady;
    state.clipStart = startSeconds;
    setPlayIcon('play'); // resetear icono mientras carga

    if (state.ytPlayer) {
        state.ytPlayer.loadVideoById({ videoId, startSeconds });
        // onStateChange sigue activo del constructor — no hace falta re-registrar
        startSync();
    } else {
        state.ytPlayer = new YT.Player('ytPlayer', {
            videoId,
            playerVars: { start: startSeconds, autoplay: 1, rel: 0, modestbranding: 1 },
            events: {
                onReady: () => startSync(),
                onStateChange: onPlayerStateChange,
                onError: () => {
                    document.querySelector('.player-wrap').innerHTML =
                        `<div style="color:#ef4444;padding:2rem;text-align:center">
                            No se pudo cargar este vídeo.
                        </div>`;
                }
            }
        });
    }
}

function onPlayerStateChange(e) {
    // YT.PlayerState: PLAYING=1, PAUSED=2, ENDED=0, BUFFERING=3
    if (e.data === 1) { setPlayIcon('pause'); startSync(); }
    else              { setPlayIcon('play'); }
}

function setPlayIcon(mode) {
    iconPlay.style.display  = (mode === 'pause') ? 'none' : 'block';
    iconPause.style.display = (mode === 'play')  ? 'none' : 'block';
}

// ─────────────────────────────────────────────
// Transcripción (para sincronizar subtítulo)
// ─────────────────────────────────────────────
async function loadTranscript(youtubeId) {
    state.transcript    = [];
    state.lastActiveSeg = -1;
    try {
        const res = await fetch(`/api/videos/${encodeURIComponent(youtubeId)}/transcript`);
        if (res.ok) state.transcript = await res.json();
    } catch (_) {}
}

// ─────────────────────────────────────────────
// Sincronización subtítulo ↔ player
//
// Cada 300ms consultamos player.getCurrentTime().
// Buscamos el segmento de la transcripción que cubre ese segundo.
// Si cambió, actualizamos el texto del subtítulo grande.
// ─────────────────────────────────────────────
function startSync() {
    if (state.pollInterval) return;

    state.pollInterval = setInterval(() => {
        if (!state.ytPlayer?.getCurrentTime) return;

        const t   = state.ytPlayer.getCurrentTime();
        const idx = findSegment(t);

        if (idx === state.lastActiveSeg) return;  // sin cambio, no re-renderizar
        state.lastActiveSeg = idx;

        if (idx >= 0) {
            showSubtitle(state.transcript[idx].text);
        }
    }, 300);
}

function stopSync() {
    clearInterval(state.pollInterval);
    state.pollInterval  = null;
    state.lastActiveSeg = -1;
}

/**
 * Devuelve el índice del segmento cuyo rango [start, end] cubre `t`.
 * Si estamos entre segmentos, devuelve el último que ya empezó.
 */
function findSegment(t) {
    let best = -1;
    for (const [i, seg] of state.transcript.entries()) {
        if (seg.startSeconds <= t + 0.5) best = i;
        else break;
    }
    return best;
}

// ─────────────────────────────────────────────
// Subtítulo grande
// ─────────────────────────────────────────────
function showSubtitle(text) {
    subtitleBlock.innerHTML = tokenizeText(text, state.query);
}

function tokenizeText(text, query) {
    // Las palabras de la query se resaltan por coincidencia exacta (sin stemming),
    // igual que lo hace el backend con phraseto_tsquery('simple', ...).
    const queryWords = new Set(
        query.toLowerCase().split(/\s+/).map(w => w.replace(/[^a-z]/g, '')).filter(Boolean)
    );

    return text.replace(/(\s+|[a-zA-Z''-]+|[^a-zA-Z\s]+)/g, match => {
        if (!/[a-zA-Z]/.test(match)) return escapeHtml(match);
        const clean     = match.toLowerCase().replace(/[^a-z]/g, '');
        const highlight = queryWords.has(clean);
        const cls       = highlight ? 'word-token word-token--highlight' : 'word-token';
        return `<span class="${cls}" data-word="${escapeHtml(clean)}">${escapeHtml(match)}</span>`;
    });
}

// Clic en palabra del subtítulo → diccionario
subtitleBlock.addEventListener('click', e => {
    const token = e.target.closest('.word-token');
    if (token?.dataset.word) openDictionary(token.dataset.word);
});

// ─────────────────────────────────────────────
// Controles del player
// ─────────────────────────────────────────────
prevBtn.addEventListener('click', () => {
    if (state.index > 0) renderClip(state.index - 1);
});

nextBtn.addEventListener('click', () => {
    if (state.index < state.total - 1) renderClip(state.index + 1);
});

rewindBtn.addEventListener('click', () => {
    if (!state.ytPlayer?.seekTo) return;
    const t = Math.max(0, state.ytPlayer.getCurrentTime() - 5);
    state.ytPlayer.seekTo(t, true);
});

resetBtn.addEventListener('click', () => {
    if (!state.ytPlayer?.seekTo) return;
    state.ytPlayer.seekTo(state.clipStart, true);
    state.ytPlayer.playVideo();
});

playPauseBtn.addEventListener('click', () => {
    if (!state.ytPlayer) return;
    const playerState = state.ytPlayer.getPlayerState?.();
    if (playerState === 1) { // PLAYING
        state.ytPlayer.pauseVideo();
    } else {
        state.ytPlayer.playVideo();
    }
});

function renderDots(current) {
    const count = Math.min(Math.min(state.results.length, state.total), 9);
    navDots.innerHTML = '';
    for (let i = 0; i < count; i++) {
        const dot = document.createElement('button');
        dot.className = `nav-dot${i === current ? ' nav-dot--active' : ''}`;
        dot.title     = `Clip ${i + 1}`;
        dot.addEventListener('click', () => renderClip(i));
        navDots.appendChild(dot);
    }
}

// ─────────────────────────────────────────────
// Diccionario
// ─────────────────────────────────────────────
dictionaryClose.addEventListener('click', () => { dictionaryPanel.hidden = true; });

async function openDictionary(word) {
    dictionaryPanel.hidden   = false;
    dictionaryContent.innerHTML =
        `<div class="dict-loading">Buscando <strong>${escapeHtml(word)}</strong>…</div>`;

    try {
        const res = await fetch(`/api/dictionary/${encodeURIComponent(word)}`);
        if (res.status === 404) {
            dictionaryContent.innerHTML =
                `<div class="dict-error">Palabra "<strong>${escapeHtml(word)}</strong>" no encontrada.</div>`;
            return;
        }
        if (!res.ok) throw new Error();
        renderDictionary(await res.json());
    } catch (_) {
        dictionaryContent.innerHTML = `<div class="dict-error">Error al consultar el diccionario.</div>`;
    }
}

function renderDictionary(data) {
    let html = `<div class="dict-word">${escapeHtml(data.word)}</div>`;
    if (data.phonetic) html += `<div class="dict-phonetic">${escapeHtml(data.phonetic)}</div>`;
    if (data.audioUrl) html += `<button class="dict-audio-btn" id="dictAudioBtn">🔊 Pronunciación</button>`;

    (data.meanings || []).forEach(m => {
        html += `<div class="dict-pos-section"><div class="dict-pos-label">${escapeHtml(m.partOfSpeech)}</div>`;
        (m.definitions || []).forEach((def, i) => {
            html += `<div class="dict-definition-item">
                <div class="dict-definition-text">${i + 1}. ${escapeHtml(def.definition)}</div>
                ${def.example ? `<div class="dict-example">"${escapeHtml(def.example)}"</div>` : ''}
            </div>`;
        });
        html += `</div>`;
    });

    dictionaryContent.innerHTML = html;
    if (data.audioUrl) {
        document.getElementById('dictAudioBtn')
            .addEventListener('click', () => new Audio(data.audioUrl).play().catch(() => {}));
    }
}

// ─────────────────────────────────────────────
// Helpers
// ─────────────────────────────────────────────
function show(section) {
    // style.display tiene mayor especificidad que cualquier regla CSS,
    // así evitamos que .loading { display:flex } sobreescriba el ocultado.
    homeScreen.style.display  = 'none';
    loading.style.display     = 'none';
    emptyState.style.display  = 'none';
    playerView.style.display  = 'none';

    if (section === 'home')    homeScreen.style.display  = 'block';
    if (section === 'loading') loading.style.display     = 'flex';
    if (section === 'empty')   emptyState.style.display  = 'block';
    if (section === 'player')  playerView.style.display  = 'block';
}

function formatTime(s) {
    const n = Math.floor(s);
    return `${Math.floor(n / 60)}:${String(n % 60).padStart(2, '0')}`;
}

function escapeHtml(str) {
    if (str == null) return '';
    return String(str)
        .replace(/&/g, '&amp;').replace(/</g, '&lt;').replace(/>/g, '&gt;')
        .replace(/"/g, '&quot;').replace(/'/g, '&#39;');
}

// ─────────────────────────────────────────────
// Historial de búsquedas (localStorage)
// ─────────────────────────────────────────────
const HISTORY_KEY = 'lg_history';
const HISTORY_MAX = 100;

function saveSearch(query, total) {
    if (!query || total < 1) return;
    const history = getHistory().filter(h => h.query.toLowerCase() !== query.toLowerCase());
    history.unshift({ query, total, ts: Date.now() });
    if (history.length > HISTORY_MAX) history.length = HISTORY_MAX;
    localStorage.setItem(HISTORY_KEY, JSON.stringify(history));
    renderHistoryWidgets();
}

function getHistory() {
    try { return JSON.parse(localStorage.getItem(HISTORY_KEY)) || []; }
    catch (_) { return []; }
}

function renderHistoryWidgets() {
    renderHomeHistory();
    refreshPlayerHistorySection();
}

function renderHomeHistory() {
    const history = getHistory();
    const el = document.getElementById('homeHistory');
    if (!history.length) { el.hidden = true; return; }
    el.hidden = false;
    const recent = history.slice(0, 8);
    let html = recent.map(h =>
        `<button class="history-chip" data-query="${escapeHtml(h.query)}">${escapeHtml(h.query)}</button>`
    ).join('');
    if (history.length > 8) {
        html += `<button class="history-chip history-chip--more" id="homeShowAll">+${history.length - 8} más</button>`;
    }
    el.innerHTML = html;
    document.getElementById('homeShowAll')?.addEventListener('click', openHistoryModal);
}

function refreshPlayerHistorySection() {
    const history = getHistory();
    const section = document.getElementById('historySection');
    if (!history.length) { section.hidden = true; return; }
    section.hidden = false;
}

function refreshHistoryGrid() {
    const history = getHistory();
    const grid = document.getElementById('historyGrid');
    const recent = history.slice(0, 10);
    let html = recent.map(h =>
        `<button class="history-chip" data-query="${escapeHtml(h.query)}">${escapeHtml(h.query)}</button>`
    ).join('');
    if (history.length > 10) {
        html += `<button class="history-chip history-chip--more" id="playerShowAll">Ver todo (${history.length})</button>`;
    }
    grid.innerHTML = html;
    document.getElementById('playerShowAll')?.addEventListener('click', openHistoryModal);
}

// Toggle historial en el player
document.getElementById('historyToggle').addEventListener('click', () => {
    const grid    = document.getElementById('historyGrid');
    const toggle  = document.getElementById('historyToggle');
    const opening = grid.hidden;
    grid.hidden   = !opening;
    toggle.classList.toggle('history-toggle--open', opening);
    if (opening) refreshHistoryGrid();
});

// Delegación de clicks en chips (home + player)
document.addEventListener('click', e => {
    const chip = e.target.closest('.history-chip[data-query]');
    if (!chip) return;
    const q = chip.dataset.query;
    searchInput.value = q;
    document.getElementById('historyModal').hidden = true;
    searchForm.dispatchEvent(new Event('submit'));
});

// Modal historial completo
function openHistoryModal() {
    const history = getHistory();
    const list    = document.getElementById('historyModalList');
    list.innerHTML = history.map(h => {
        const date = new Date(h.ts).toLocaleDateString('es-ES',
            { day: '2-digit', month: 'short', year: '2-digit' });
        const count = h.total === 1 ? '1 resultado' : `${h.total} resultados`;
        return `<button class="history-chip history-chip--row" data-query="${escapeHtml(h.query)}">
            <span class="hc-query">${escapeHtml(h.query)}</span>
            <span class="hc-meta">${count} · ${date}</span>
        </button>`;
    }).join('');
    document.getElementById('historyModal').hidden = false;
}

document.getElementById('historyModalClose').addEventListener('click', () => {
    document.getElementById('historyModal').hidden = true;
});

// Cerrar modal al hacer clic fuera
document.getElementById('historyModal').addEventListener('click', e => {
    if (e.target === document.getElementById('historyModal')) {
        document.getElementById('historyModal').hidden = true;
    }
});

// Init: mostrar historial en pantalla de inicio si ya hay entradas
renderHistoryWidgets();

