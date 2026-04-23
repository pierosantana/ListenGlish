#!/usr/bin/env python3
"""
check_videos.py — Detecta vídeos rotos o con embedding desactivado.

Método de detección: oEmbed de YouTube
    GET https://www.youtube.com/oembed?url=https://www.youtube.com/watch?v=<id>&format=json

    Código HTTP devuelto:
        200  → embeddable, el vídeo funciona correctamente
        401  → embedding desactivado por el autor, o vídeo privado
        404  → vídeo eliminado o ID no existe

    Este endpoint es una API pública de YouTube, no depende del origen
    de la petición (localhost vs. servidor real), por lo que el resultado
    es fiable en cualquier entorno.

Uso:
    python3 check_videos.py           # solo lista el estado de cada vídeo
    python3 check_videos.py --delete  # lista Y elimina de la BD los rotos

Nota: --delete es irreversible. Antes de usarlo, regenera el seed SQL
      (generate_seed.py) para tener una copia de seguridad actualizada.
"""

import sys
import subprocess
import urllib.request
import urllib.error


OEMBED_URL = "https://www.youtube.com/oembed?url=https://www.youtube.com/watch%3Fv%3D{}&format=json"


def get_videos():
    """Lee todos los vídeos directamente de la BD vía docker exec."""
    result = subprocess.run(
        ['docker', 'exec', 'listenglish-postgres',
         'psql', '-U', 'listenglish', '-d', 'listenglish',
         '-t', '-A', '-c', 'SELECT id, youtube_id, title FROM video ORDER BY id'],
        capture_output=True, text=True
    )
    videos = []
    for line in result.stdout.strip().splitlines():
        parts = line.split('|')
        if len(parts) == 3:
            videos.append({'id': parts[0], 'youtube_id': parts[1], 'title': parts[2]})
    return videos


def check_oembed(youtube_id):
    """
    Consulta el endpoint oEmbed de YouTube y devuelve (ok, status_code, label).

    ok          → True si el vídeo es embeddable
    status_code → código HTTP recibido (200 / 401 / 404 / 0 si error de red)
    label       → descripción legible del estado
    """
    url = OEMBED_URL.format(youtube_id)
    req = urllib.request.Request(url, headers={'User-Agent': 'Mozilla/5.0'})
    try:
        with urllib.request.urlopen(req, timeout=10):
            return True, 200, 'OK — embeddable'
    except urllib.error.HTTPError as e:
        if e.code == 401:
            return False, 401, 'EMBEDDING DESACTIVADO (privado o restringido)'
        if e.code == 404:
            return False, 404, 'ELIMINADO o ID inválido'
        return False, e.code, f'HTTP {e.code}'
    except Exception as e:
        return False, 0, f'ERROR DE RED: {e}'


def delete_video(video_id):
    subprocess.run(
        ['docker', 'exec', 'listenglish-postgres',
         'psql', '-U', 'listenglish', '-d', 'listenglish',
         '-c', f"DELETE FROM video WHERE id = {video_id};"],
        capture_output=True
    )
    print("    ✓ Eliminado de la BD")


def main():
    delete = '--delete' in sys.argv
    videos = get_videos()
    print(f"Comprobando {len(videos)} vídeos via oEmbed...\n")

    broken = []
    for v in videos:
        ok, code, label = check_oembed(v['youtube_id'])
        icon = '✓' if ok else '✗'
        print(f"  [{icon}] {v['title'][:52]:<52} ({v['youtube_id']})  {label}")
        if not ok:
            broken.append({**v, 'code': code, 'label': label})

    print(f"\n{'='*70}")
    print(f"Rotos / no embeddables: {len(broken)} / {len(videos)}")

    if broken:
        print("\nResumen de rotos:")
        for v in broken:
            print(f"  [{v['code']}] {v['youtube_id']}  {v['title'][:45]}  — {v['label']}")

    if broken and delete:
        print("\nEliminando vídeos rotos de la BD...")
        for v in broken:
            print(f"  → {v['title'][:50]} ({v['youtube_id']})")
            delete_video(v['id'])
        print("\nHecho. Regenera el seed con generate_seed.py antes del próximo deploy.")
    elif broken:
        print("\nEjecuta con --delete para eliminarlos (irreversible).")
        print("Recuerda regenerar el seed antes si quieres conservar el estado actual.")


if __name__ == '__main__':
    main()
