#!/usr/bin/env python3
"""
Descarga la transcripción de un vídeo de YouTube y la ingesta en ListenGlish.

Uso:
    python3 ingest_video.py <youtubeId> <título> <canal> [acento] [--cookies <archivo>]

Ejemplos:
    python3 ingest_video.py iG9CE55wbtY "Do schools kill creativity?" "TED" british
    python3 ingest_video.py iG9CE55wbtY "Do schools kill creativity?" "TED" british --cookies cookies.txt

Si YouTube bloquea tu IP, exporta las cookies desde el navegador con la extensión
"Get cookies.txt LOCALLY" (Chrome/Firefox) y pásalas con --cookies cookies.txt
"""

import sys
import json
import urllib.request
import urllib.error

from youtube_transcript_api import YouTubeTranscriptApi

# Override con env vars para apuntar a prod:
#   API_URL=https://tuapp.railway.app/api/admin/videos python3 ingest_video.py ...
#   ADMIN_TOKEN=xxx python3 ingest_video.py ...
import os
API_URL     = os.environ.get("API_URL",     "http://localhost:8080/api/admin/videos")
ADMIN_TOKEN = os.environ.get("ADMIN_TOKEN", "dev-token-change-me")

def ingest(youtube_id, title, channel, accent=None, cookies_file=None):
    print(f"Descargando transcripción de: {youtube_id}")

    http_client = None
    if cookies_file:
        import requests, http.cookiejar
        jar = http.cookiejar.MozillaCookieJar(cookies_file)
        jar.load(ignore_discard=True, ignore_expires=True)
        session = requests.Session()
        session.cookies = jar
        http_client = session
        print(f"  → Usando cookies de: {cookies_file}")

    api = YouTubeTranscriptApi(http_client=http_client)
    transcript = list(api.fetch(youtube_id))
    print(f"  → {len(transcript)} segmentos descargados")

    segments = [
        {
            "text":         s.text,
            "startSeconds": round(s.start, 3),
            "endSeconds":   round(s.start + s.duration, 3)
        }
        for s in transcript
        if s.text.strip()
    ]

    duration = int(segments[-1]["endSeconds"]) if segments else 0

    payload = {
        "youtubeId":       youtube_id,
        "title":           title,
        "channel":         channel,
        "durationSeconds": duration,
        "language":        "en",
        "accent":          accent,
        "segments":        segments,
    }

    body = json.dumps(payload).encode("utf-8")
    req  = urllib.request.Request(
        API_URL,
        data    = body,
        method  = "POST",
        headers = {
            "Content-Type":  "application/json",
            "X-Admin-Token": ADMIN_TOKEN,
        },
    )

    try:
        with urllib.request.urlopen(req) as resp:
            print(f"  → Ingesta exitosa (HTTP {resp.status}): {len(segments)} segmentos guardados")
    except urllib.error.HTTPError as e:
        body_text = e.read().decode()
        if "already exists" in body_text.lower() or e.code == 409:
            print(f"  ⚠ El vídeo {youtube_id} ya existe en la base de datos.")
            print(f"    Bórralo primero con:")
            print(f"    docker compose exec db psql -U listenglish -c \"DELETE FROM video WHERE youtube_id = '{youtube_id}';\"")
        else:
            print(f"  ✗ Error HTTP {e.code}: {body_text[:300]}")
        sys.exit(1)

if __name__ == "__main__":
    if len(sys.argv) < 4:
        print(__doc__)
        sys.exit(1)

    args = sys.argv[1:]
    cookies_file = None
    if "--cookies" in args:
        idx = args.index("--cookies")
        cookies_file = args[idx + 1]
        args = args[:idx] + args[idx + 2:]

    ingest(
        youtube_id   = args[0],
        title        = args[1],
        channel      = args[2],
        accent       = args[3] if len(args) > 3 else None,
        cookies_file = cookies_file,
    )
