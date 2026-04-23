#!/usr/bin/env python3
"""
Descarga la transcripción de un vídeo de YouTube y la ingesta en ListenGlish.

Uso:
    python3 ingest_video.py <youtubeId> <título> <canal> [acento]

Ejemplo:
    python3 ingest_video.py iG9CE55wbtY "Do schools kill creativity?" "TED" british
"""

import sys
import json
import urllib.request
import urllib.error

from youtube_transcript_api import YouTubeTranscriptApi

API_URL = "http://localhost:8080/api/admin/videos"

def ingest(youtube_id, title, channel, accent=None):
    print(f"Descargando transcripción de: {youtube_id}")
    api = YouTubeTranscriptApi()
    transcript = list(api.fetch(youtube_id))
    print(f"  → {len(transcript)} segmentos descargados")

    segments = [
        {
            "text":         s.text,
            "startSeconds": round(s.start, 3),
            "endSeconds":   round(s.start + s.duration, 3)
        }
        for s in transcript
        if s.text.strip()   # ignorar segmentos vacíos
    ]

    # Duración total = fin del último segmento
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
        headers = {"Content-Type": "application/json"},
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

    ingest(
        youtube_id = sys.argv[1],
        title      = sys.argv[2],
        channel    = sys.argv[3],
        accent     = sys.argv[4] if len(sys.argv) > 4 else None,
    )
