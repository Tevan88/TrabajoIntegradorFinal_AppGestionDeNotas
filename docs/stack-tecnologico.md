# Stack Tecnológico

Para el desarrollo del sistema de gestión de notas para escuelas primarias, se ha seleccionado un stack tecnológico moderno, robusto y escalable, diseñado para garantizar la integridad de los datos académicos, la seguridad en las operaciones y una experiencia de usuario fluida y accesible.

Decidimos estructurar nuestra aplicación web utilizando una `arquitectura en capas` para separar claramente las responsabilidades del sistema. Elegimos este enfoque por los siguientes motivos:

* Nos permite que el código sea mucho más ordenado. Por un lado está la interfaz con la que interactúa el usuario (React), por otro la lógica que procesa las notas y permisos (Backend/Spring Boot), y por último la conexión con la base de datos (PostgreSQL). Si hay un error, sabemos exactamente en qué capa buscarlo sin romper el resto del sistema.
* Al estar dividido por capas, los integrantes del grupo podemos dividirnos las tareas sin pisarnos el código. Uno puede estar trabajando en las consultas a la base de datos y otro en las pantallas de visualización de notas de forma independiente.
* Si mañana necesitamos cambiar algún detalle de cómo se guardan los datos o modificar la interfaz visual, podemos hacerlo en su respectiva capa sin tener que reescribir toda la aplicación desde cero.
* Facilita la aplicación de reglas de negocio claras (como validar que una nota esté entre 1 y 10, o que solo un docente con permisos pueda cargar calificaciones), manteniendo el código limpio y fácil de entender para cualquier persona que lo lea.

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
