package com.listenglish;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

/**
 * Punto de entrada de la aplicación.
 *
 * @SpringBootApplication es un atajo para tres anotaciones:
 *
 * 1. @Configuration        — esta clase puede definir beans de Spring.
 * 2. @EnableAutoConfiguration — Spring Boot inspecciona el classpath y configura
 *    cosas automáticamente. Por ejemplo: como spring-boot-starter-web está en el
 *    classpath, configura Tomcat embebido y Spring MVC. Como spring-boot-starter-data-jpa
 *    está presente, configura Hibernate y el EntityManagerFactory.
 * 3. @ComponentScan        — Spring escanea este paquete y todos los subpaquetes
 *    buscando clases anotadas con @Component, @Service, @Repository, @Controller, etc.,
 *    y las registra como beans.
 *
 * SpringApplication.run() crea el ApplicationContext, arranca el servidor embebido,
 * y mantiene la aplicación activa.
 */
@SpringBootApplication
public class ListenGlishApplication {

    public static void main(String[] args) {
        SpringApplication.run(ListenGlishApplication.class, args);
    }
}
