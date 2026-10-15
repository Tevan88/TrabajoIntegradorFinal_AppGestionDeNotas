# Seguridad y Protección de Datos
Dado que el sistema gestiona datos sensibles de menores de edad e información académica:

* **Autenticación y Autorización:** Implementación de tokens JWT (JSON Web Tokens) con contraseñas encriptadas mediante algoritmos fuertemente probados (bcrypt).
* **Control de Acceso Basado en Roles (RBAC):** Restricción estricta a nivel de API/Endpoints para garantizar que los tutores solo accedan a los datos de sus hijos/representados y los docentes solo a sus cursos asignados.
* **Protección de Comunicaciones:** Cifrado en tránsito utilizando protocolo HTTPS/TLS.
* **Sanitización de Datos:** Validaciones estrictas en Backend y Frontend para prevenir vulnerabilidades de inyección SQL (SQLi) y Cross-Site Scripting (XSS).
