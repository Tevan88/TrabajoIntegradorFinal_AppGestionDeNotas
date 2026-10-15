# Stack Tecnológico

Para el desarrollo del sistema de gestión de notas para escuelas primarias, se ha seleccionado un stack tecnológico moderno, robusto y escalable, diseñado para garantizar la integridad de los datos académicos, la seguridad en las operaciones y una experiencia de usuario fluida y accesible.

## 📋 Índice
- [Frontend](#frontend)
- [Backend](#backend)
- [Base de Datos (PostgreSQL)](#base-de-datos-postgresql)
- [Entorno y Despliegue](#entorno-y-despliegue)

---

## Frontend
* **Tecnologías:** React, TypeScript, Tailwind CSS.

## Backend
* **Tecnologías:** Node.js (Express / NestJS) con TypeScript (o Java con Spring Boot, a ratificar al cierre de la Etapa 1).

## Base de Datos (PostgreSQL)
Elegimos PostgreSQL como motor de base de datos porque nos ofrece:
* **Seguridad y orden en los datos:** Al ser una base de datos relacional, nos permite conectar perfectamente a los estudiantes con sus cursos, las materias con los docentes y mantener todo prolijo sin que queden datos sueltos o erróneos.
* **Estabilidad en momentos de mucho uso:** Sabemos que en épocas de cierre de trimestre las plataformas escolares sufren picos de tráfico. PostgreSQL maneja muy bien a muchos usuarios trabajando al mismo tiempo sin caerse ni volverse lento.
* **Integridad académica:** Nos garantiza que las notas y los datos sensibles de los alumnos no se corrompan y que las transacciones (como guardar una planilla de calificaciones) se guarden siempre de forma segura.
* **Implementación de la Eliminación Lógica:** Cuando un docente o directivo "elimina" un registro de nota o un curso antiguo, el sistema solo actualiza su estado a inactivo. De esta forma, la información permanece almacenada en PostgreSQL de manera segura, permitiendo que las consultas históricas, auditorías y reportes de años anteriores sigan disponibles y accesibles para los usuarios autorizados dentro de la aplicación.

## Entorno y Despliegue
* **Herramientas:** Docker, Docker Compose.
