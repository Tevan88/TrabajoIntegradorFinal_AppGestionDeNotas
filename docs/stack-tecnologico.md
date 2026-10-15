# Stack Tecnológico
* **Frontend:** React, TypeScript, Tailwind CSS.***
* **Backend:** Node.js (Express / NestJS) con TypeScript (o Java con Spring Boot, a ratificar al cierre de la Etapa 1).
* **Base de Datos:**
PostgreSQL: elegimos PostgreSQL como motor de base de datos porque nos ofrece:
* **Seguridad y orden en los datos:** Al ser una base de datos relacional, nos permite conectar perfectamente a los estudiantes con sus cursos, las materias con los docentes y mantener todo prolijo sin que queden datos sueltos o erróneos.
* **Estabilidad en momentos de mucho uso:** Sabemos que en épocas de cierre de trimestre las plataformas escolares sufren picos de tráfico. PostgreSQL maneja muy bien a muchos usuarios trabajando al mismo tiempo sin caerse ni volverse lento.
* **Integridad académica:** Nos garantiza que las notas y los datos sensibles de los alumnos no se corrompan y que las transacciones (como guardar una planilla de calificaciones) se guarden siempre de forma segura.
* **Facilidad para auditoría e histórico:** Se adapta muy bien a nuestra necesidad de aplicar la eliminación lógica, permitiéndonos ocultar registros sin perder el historial necesario para la institución.

  
* **Entorno / Despliegue:** Docker, Docker Compose.
