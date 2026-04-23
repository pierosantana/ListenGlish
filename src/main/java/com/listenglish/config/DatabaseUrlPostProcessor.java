package com.listenglish.config;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.env.EnvironmentPostProcessor;
import org.springframework.core.env.ConfigurableEnvironment;
import org.springframework.core.env.MapPropertySource;

import java.util.HashMap;
import java.util.Map;

/**
 * Convierte DATABASE_URL (formato postgresql://user:pass@host:port/db de Railway/Heroku)
 * a las propiedades JDBC que Spring Boot necesita.
 *
 * Si SPRING_DATASOURCE_URL ya está configurado y es válido, no hace nada.
 */
public class DatabaseUrlPostProcessor implements EnvironmentPostProcessor {

    @Override
    public void postProcessEnvironment(ConfigurableEnvironment env, SpringApplication app) {
        String databaseUrl = System.getenv("DATABASE_URL");
        if (databaseUrl == null || databaseUrl.isBlank()) return;

        // postgresql://user:pass@host:port/dbname
        if (!databaseUrl.startsWith("postgresql://")) return;

        // Quitar el prefijo para parsear
        String withoutScheme = databaseUrl.substring("postgresql://".length());
        // withoutScheme = user:pass@host:port/dbname

        String[] atSplit = withoutScheme.split("@", 2);
        if (atSplit.length != 2) return;

        String userInfo  = atSplit[0]; // user:pass
        String hostPart  = atSplit[1]; // host:port/dbname

        String[] userPass = userInfo.split(":", 2);
        String username = userPass[0];
        String password = userPass.length > 1 ? userPass[1] : "";

        // jdbc:postgresql://host:port/dbname
        String jdbcUrl = "jdbc:postgresql://" + hostPart;

        Map<String, Object> props = new HashMap<>();
        props.put("spring.datasource.url",      jdbcUrl);
        props.put("spring.datasource.username", username);
        props.put("spring.datasource.password", password);

        // addFirst → mayor prioridad que application.yml pero menor que env vars explícitas
        env.getPropertySources().addFirst(
            new MapPropertySource("railway-database-url", props)
        );
    }
}
