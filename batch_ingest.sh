#!/usr/bin/env bash
# batch_ingest.sh — Ingesta masiva de vídeos curados para el buscador.
#
# Uso:
#   chmod +x batch_ingest.sh
#   ./batch_ingest.sh
#
#   # Apuntar a producción:
#   API_URL=https://tuapp.railway.app/api/admin/videos ADMIN_TOKEN=xxx ./batch_ingest.sh
#
# Requisitos:
#   - La app corriendo en localhost:8080 (o API_URL configurado)
#   - pip install youtube-transcript-api requests

set -euo pipefail

ingest() {
  local id="$1" title="$2" channel="$3" accent="${4:-}"
  echo -n "  [$id] ${title:0:55} ... "
  python3 ingest_video.py "$id" "$title" "$channel" "$accent" 2>&1 | tail -1
}

echo ""
echo "============================================================"
echo " TED Talks — Bienestar, Psicología y Relaciones"
echo "============================================================"
ingest "8KkKuTCFvzI" "What makes a good life?" "TED" "american"
ingest "GXy__kBVq1M" "The happy secret to better work" "TED" "american"
ingest "RcGyVTAoXEU" "How to make stress your friend" "TED" "american"
ingest "psN1DORYYV0" "Listening to shame" "TED" "american"
ingest "vhhgI4tSMwc" "Why 30 is not the new 20" "TED" "american"
ingest "LTO_dZUvbJA" "The surprising science of happiness" "TED" "american"

echo ""
echo "============================================================"
echo " TED Talks — Sociedad, Cultura y Comunicación"
echo "============================================================"
ingest "c0KYU2j0TM4" "The power of introverts" "TED" "american"
ingest "68RQehr3rQk" "How to spot a liar" "TED" "american"
ingest "MKUfC3d3BJY" "What I learned from 100 days of rejection" "TED" "american"
ingest "hVimVzgtD6w" "The best stats you've ever seen" "TED" "swedish"
ingest "86x-u-tz0MA" "Your elusive creative genius" "TED" "american"
ingest "r9LelXa3U_I" "Bring on the learning revolution" "TED" "british"
ingest "fC9da6eqaqg" "Teach girls bravery, not perfection" "TED" "american"

echo ""
echo "============================================================"
echo " TED Talks — Ciencia, Naturaleza y Tecnología"
echo "============================================================"
ingest "0fKBhvDjuy0" "Underwater astonishments" "TED" "american"
ingest "UaA-EVgkwkA" "The mathematics of love" "TED" "british"
ingest "UbR1nQUqfCo" "15 ways to reduce carbon emissions" "TED" "american"
ingest "FknHjl7eQ6o" "What adults can learn from kids" "TED" "american"
ingest "e-QFj59PON4" "How I held my breath for 17 minutes" "TED" "american"

echo ""
echo "============================================================"
echo " Ciencia y Educación (YouTube)"
echo "============================================================"
ingest "aCIKMd1OMhU" "Why Do We Dream?" "TED-Ed" "american"
ingest "OIyTr-D8T10" "How do carbohydrates impact your health?" "TED-Ed" "american"
ingest "VitFnLe5MU4" "What is the Heisenberg Uncertainty Principle?" "TED-Ed" "american"
ingest "JDqc4-qjzaM" "Is light a wave or a particle?" "TED-Ed" "american"
ingest "LS5YKFPdkLU" "Correlation vs. Causation" "TED-Ed" "american"

echo ""
echo "============================================================"
echo " Entretenimiento, Cultura Pop y Sociedad"
echo "============================================================"
ingest "4BdtSvQ_Gfw" "The surprising reason you feel awful when you're sick" "TED-Ed" "american"
ingest "QmOF0crdyRU" "Why do we laugh?" "TED-Ed" "american"
ingest "p7ILkFVCQCo" "How languages evolve" "TED-Ed" "american"
ingest "pT6SChoZQSk" "What makes something \"Kafkaesque\"?" "TED-Ed" "american"
ingest "UWlTHvRlXaY" "How to read music" "TED-Ed" "american"

echo ""
echo "============================================================"
echo " Resumen"
echo "============================================================"
echo "Ingesta completada. Verifica los vídeos con:"
echo "  python3 check_videos.py"
echo ""
echo "Luego regenera el seed SQL con:"
echo "  python3 generate_seed.py"
