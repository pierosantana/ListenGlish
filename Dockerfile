# ──────────────────────────────────────────────────────────
# Stage 1 — build: compila el JAR con Maven
# ──────────────────────────────────────────────────────────
FROM maven:3.9-eclipse-temurin-21 AS build

WORKDIR /build

# Copiar pom.xml primero para que Docker cachee la descarga de deps:
# si solo cambia el código fuente, no se re-descarga todo.
COPY pom.xml ./
RUN mvn -q -B dependency:go-offline

COPY src ./src
RUN mvn -q -B -DskipTests package && \
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

# Railway inyecta PORT dinámicamente; application.yml lo lee con ${PORT:8080}.
EXPOSE 8080

# MaxRAMPercentage ajusta el heap al tamaño real del contenedor.
ENTRYPOINT ["sh", "-c", "java -XX:MaxRAMPercentage=75 -jar /app/app.jar"]
