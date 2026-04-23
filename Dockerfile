# ──────────────────────────────────────────────────────────
# Stage 1 — build: compila el JAR con Maven en una imagen JDK
# ──────────────────────────────────────────────────────────
FROM eclipse-temurin:21-jdk AS build

WORKDIR /build

# Copiar primero pom.xml para aprovechar la caché de Docker:
# si solo cambia el código, no re-descargamos todas las deps.
COPY pom.xml ./
RUN --mount=type=cache,target=/root/.m2 \
    apt-get update && apt-get install -y --no-install-recommends maven && \
    mvn -q -B dependency:go-offline

COPY src ./src
RUN --mount=type=cache,target=/root/.m2 \
    mvn -q -B -DskipTests package && \
    cp target/listenglish-*.jar /build/app.jar

# ──────────────────────────────────────────────────────────
# Stage 2 — runtime: imagen JRE, mucho más ligera
# ──────────────────────────────────────────────────────────
FROM eclipse-temurin:21-jre

WORKDIR /app

# Usuario no-root (buenas prácticas)
RUN useradd --system --home /app --shell /usr/sbin/nologin spring
USER spring

COPY --from=build /build/app.jar /app/app.jar

# Railway inyecta PORT dinámicamente; application.yml lo usa con ${PORT:8080}.
EXPOSE 8080

# -XX:+UseContainerSupport ya es el default en JDK 21,
# pero fijamos MaxRAMPercentage por si el contenedor tiene límite de memoria.
ENTRYPOINT ["sh", "-c", "java -XX:MaxRAMPercentage=75 -jar /app/app.jar"]
