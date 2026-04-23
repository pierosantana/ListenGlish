package com.listenglish.config;

import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;
import org.springframework.web.filter.OncePerRequestFilter;

import java.io.IOException;

/**
 * Protege /api/admin/** con un header X-Admin-Token.
 *
 * El token válido se configura en la propiedad app.admin-token (env var ADMIN_TOKEN).
 * Si la propiedad está vacía (no configurada), todas las peticiones a /api/admin
 * son rechazadas con 503 — evita ejecutar sin querer la app en prod sin token.
 *
 * Este filtro corre sobre cada petición (OncePerRequestFilter) pero solo
 * actúa sobre rutas /api/admin. El resto pasa sin modificar.
 */
@Component
public class AdminTokenFilter extends OncePerRequestFilter {

    private static final String HEADER = "X-Admin-Token";
    private static final String ADMIN_PATH_PREFIX = "/api/admin";

    private final String expectedToken;

    public AdminTokenFilter(@Value("${app.admin-token:}") String expectedToken) {
        this.expectedToken = expectedToken;
    }

    @Override
    protected void doFilterInternal(HttpServletRequest req,
                                    HttpServletResponse res,
                                    FilterChain chain)
            throws ServletException, IOException {

        if (!req.getRequestURI().startsWith(ADMIN_PATH_PREFIX)) {
            chain.doFilter(req, res);
            return;
        }

        if (expectedToken == null || expectedToken.isBlank()) {
            res.sendError(HttpServletResponse.SC_SERVICE_UNAVAILABLE,
                    "Admin endpoints disabled (no ADMIN_TOKEN configured).");
            return;
        }

        String provided = req.getHeader(HEADER);
        if (!expectedToken.equals(provided)) {
            res.sendError(HttpServletResponse.SC_UNAUTHORIZED, "Invalid admin token.");
            return;
        }

        chain.doFilter(req, res);
    }
}
