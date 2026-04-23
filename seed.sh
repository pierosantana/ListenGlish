#!/bin/bash
# seed.sh — Carga los datos de seed-data.json en la aplicación.
#
# Requisitos: la app debe estar corriendo en localhost:8080
#
# Uso:
#   chmod +x seed.sh
#   ./seed.sh

set -e  # Parar si algún comando falla

BASE_URL="http://localhost:8080/api/admin/videos"
SEED_FILE="seed-data.json"

if [ ! -f "$SEED_FILE" ]; then
    echo "ERROR: No se encuentra $SEED_FILE"
    exit 1
fi

# jq es una herramienta de línea de comandos para procesar JSON.
# `jq length` cuenta cuántos elementos tiene el array.
VIDEO_COUNT=$(jq length "$SEED_FILE")
echo "Cargando $VIDEO_COUNT vídeos desde $SEED_FILE..."

# Iteramos sobre cada elemento del array JSON.
# `jq -c ".[$i]"` extrae el elemento i-ésimo como JSON compacto (una línea).
for i in $(seq 0 $((VIDEO_COUNT - 1))); do
    VIDEO=$(jq -c ".[$i]" "$SEED_FILE")
    YOUTUBE_ID=$(echo "$VIDEO" | jq -r '.youtubeId')
    TITLE=$(echo "$VIDEO" | jq -r '.title')

    echo -n "  Ingesting '$TITLE' ($YOUTUBE_ID)... "

    # curl opciones:
    #   -s          = silencioso (no muestra progreso)
    #   -o /dev/null = descarta el cuerpo de la respuesta
    #   -w "%{http_code}" = imprime solo el código HTTP de respuesta
    #   -X POST     = método HTTP
    #   -H          = cabecera
    #   -d          = cuerpo de la petición
    HTTP_STATUS=$(curl -s -o /dev/null -w "%{http_code}" \
        -X POST "$BASE_URL" \
        -H "Content-Type: application/json" \
        -d "$VIDEO")

    if [ "$HTTP_STATUS" -eq 201 ]; then
        echo "OK (201 Created)"
    elif [ "$HTTP_STATUS" -eq 409 ]; then
        echo "SKIP (409 ya existe)"
    else
        echo "ERROR (HTTP $HTTP_STATUS)"
    fi
done

echo ""
echo "Listo. Verifica con:"
echo "  curl 'http://localhost:8080/api/search?q=creativity'"
