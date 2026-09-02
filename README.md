# Grupo 118 - Trabajo Integrador Final: App Gestión de Notas
Aplicación web para la gestión ágil de calificaciones, contenidos y aprendizajes en centros educativos de Córdoba Capital.

## Contexto y Definición del Problema
En las instituciones de educación de Córdoba Capital, la carga periódica de notas, contenidos y aprendizajes se realiza a través de plataformas gubernamentales/institucionales centralizadas (como gestión deio). Si bien estas herramientas cubren las necesidades administrativas básicas, presentan serias deficiencias operativas que afectan directamente el trabajo docente:

* Mala Experiencia de Usuario (UX) y Navegación Poco Intuitiva: Interfaces complejas que requieren múltiples clics por cada calificación registrada, saturando al usuario.

* Necesidad de Re-entrenamiento Continuo: Cambios recurrentes en la interfaz sin un onboarding claro provocan que año a año los docentes deban solicitar capacitaciones o instrucciones para tareas operativas básicas.

* Lentitud y Caídas del Sistema: Durante los períodos picos de cierre de trimestre/cuatrimestre, el alto tráfico provoca latencia extrema o indisponibilidad total de la plataforma.

### Cuantificación del Impacto Operativo
Para evaluar el impacto real del problema, se recopilaron datos cualitativos y cuantitativos a partir de la experiencia operativa directa dentro del cuerpo docente:

**Encuesta en proceso**

## Propuesta de Solución y Actores Beneficiados
Proponemos el desarrollo de una aplicación web moderna, optimizada y enfocada en la usabilidad, diseñada para simplificar la carga de calificaciones y la comunicación pedagógica.

## Actores del Sistema y Beneficios
### Cuerpo Docente:

* Reducción en el tiempo dedicado a la carga de notas mediante interfaces tipo planilla interactiva.

* Autonomía operativa con acceso permanente a guías de uso e instructivos integrados.

### Equipo Directivo / Administradores:

* Control y gestión eficiente de la estructura institucional (estudiantes, docentes, tutores, cursos y divisiones).

* Disminución drástica de solicitudes de soporte técnico por parte del personal docente.

### Familias / Tutores:

* Acceso transparente, claro y en tiempo real a las calificaciones y registros de aprendizajes de los estudiantes.

## Alcance del Proyecto
### Funcionalidades Incluidas (DENTRO del Alcance - MVP)

* Gestión de Calificaciones: Carga, edición y lectura rápida de notas por curso, división y materia mediante vista matricial/planilla.

* Gestión de Contenidos y Aprendizajes: Registro y seguimiento de los contenidos pedagógicos trabajados por curso y división.

* Control de Acceso Basado en Roles (RBAC) y Seguridad:

* Administrador: CRUD completo de usuarios (estudiantes, docentes, familiares) y asignación de cursos.

* Docente: Carga y modificación de notas/contenidos de sus materias asignadas.

* Familiar: Consulta exclusiva del legajo académico de sus representados.

* Material de Onboarding: Video tutorial breve alojado de forma nativa en la plataforma para asistencia al docente.

* Visualización de Planillas: Reportes de calificaciones consolidadas por curso.

### Fuera del Alcance (OUT of Scope - MVP)
* Módulo de asistencia diaria o registro de faltas.

* Sistema de mensajería interna o chat directo entre docentes y familiares.

* Generación automática de boletines impresos en formato PDF oficial.

* Integración con sistemas legados externos de la jurisdicción mediante API de terceros.

### Funcionalidades Futuras (Evolutivas Post-MVP)
* Notificaciones por correo electrónico o WhatsApp a los tutores ante nuevas calificaciones.

* Módulo de estadísticas avanzadas y alertas de bajo rendimiento estudiantil.

### Análisis de Viabilidad
* Viabilidad Técnica: Alta. El equipo cuenta con dominio en arquitecturas web modernas (React, Node.js/Spring Boot, PostgreSQL y Docker). La complejidad radicará en la optimización de las vistas matriciales de carga, aspecto abarcable con componentes web optimizados.

* Viabilidad Temporal: Alta. Se dispone de un ventana de trabajo estructurada desde el 01/09 hasta el 14/11. El cronograma cuenta con sprints quincenales y un margen de contingencia previo a la entrega final.

* Viabilidad de Conocimiento del Dominio: Excelente. Se cuenta con la experiencia operativa directa de un integrante del equipo en el ejercicio docente en Córdoba Capital, lo que garantiza validación de usabilidad en tiempo real sin requerir intermediarios externos.

### Criterios de Éxito Medibles
* Rendimiento de Carga: Permitir el registro completo de notas de un curso (30 estudiantes) en menos de 3 minutos.

* Usabilidad (Prueba de Usuario): Lograr que un docente complete el flujo de carga por primera vez sin asistencia externa en menos de 5 minutos.

* Disponibilidad y Estabilidad: Responder con tiempos de latencia inferiores a 800 ms en operaciones de lectura/escritura durante simulación de carga concurrente.

* Aprobación de Integración: Cumplimiento del 100% de las pruebas funcionales por roles (Admin, Docente, Familiar) sin brechas de permisos.

## Seguridad y Proteccion de Datos
Dado que el sistema gestiona datos sensibles de menores de edad e información académica:

* Autenticación y Autorización: Implementación de tokens JWT (JSON Web Tokens) con contraseñas encriptadas mediante algoritmos fuertemente probados (bcrypt).

* Control de Acceso Basado en Roles (RBAC): Restricción estricta a nivel de API/Endpoints para garantizar que los tutores solo accedan a los datos de sus hijos/representados y los docentes solo a sus cursos asignados.

* Protección de Comunicaciones: Cifrado en tránsito utilizando protocolo HTTPS/TLS.

* Sanitización de Datos: Validaciones estrictas en Backend y Frontend para prevenir vulnerabilidades de inyección SQL (SQLi) y Cross-Site Scripting (XSS).

## Plan de Trabajo, Estimación de Horas y Cronograma
Fecha límite de entrega final del MVP: 14 de Noviembre de 2026

### Etapa 1: Análisis, Arquitectura, UX y Especificación (~40hs) | (01/09 - 14/09)
* Refinamiento de requerimientos funcionales, no funcionales y contratos de API (12hs).

* Diseño del esquema de base de datos PostgreSQL (DER) (10hs).

* Diseños de Wireframes y prototipo interactivo en Figma (12hs).

* Definición final del stack y configuración del repositorio Docker base (6hs).

### Etapa 2: Infraestructura Backend, Autenticación y Roles (~40hs) | (15/09 - 28/09)
Configuración del servidor y pool de conexiones a la base de datos (8hs).

* Implementación del módulo de autenticación (JWT) y esquemas de seguridad RBAC (16hs).

* Desarrollo de endpoints para CRUD de usuarios (Admin/Docente/Familiar/Estudiante) (16hs).

### Etapa 3: Desarrollo Core Backend & Frontend Base (~45hs) | (29/09 - 12/10)
* Backend: Endpoints para la gestión y persistencia de calificaciones y contenidos (20hs).

* Frontend: Inicialización del proyecto (React + Tailwind CSS), rutas protegidas y estado (10hs).

* Maquetado e integración del panel de administración y Login (15hs).

### Etapa 4: Frontend Avanzado e Integración Core (~50hs) | (13/10 - 26/10)
* Módulo Docente: Desarrollo de la interfaz de carga matricial/planilla de notas y contenidos (25hs).

* Módulo Familiar: Pantalla de consulta de legajo académico (10hs).

* Integración Frontend-Backend y validación de formularios (15hs).

### Etapa 5: Capacitación, Testing, Seguridad y Despliegue (~40hs) | (27/10 - 05/11)
* Grabación e integración nativa del video tutorial de uso (8hs).

* Pruebas de usabilidad, pruebas de seguridad por rol y optimización de consultas (18hs).

* Dockerización final y despliegue en entorno de pruebas/staging (14hs).

### Etapa 6: Documentación, Ensayos y Cierre (~25hs) | (06/11 - 14/11)
* Consolidación de la documentación técnica y README final (10hs).

* Ensayos de presentación y demo funcional del proyecto (15hs).

14/11/2026: Entrega Final del MVP.

* **Link a tablero en Trello:** https://trello.com/invite/b/6a8e2122420964fcd890a3bb/ATTI7012be5147e3d749afc116705a0ceebf54E6930D/trabajointegradorfinalappgestiondenotas

## Stack Tecnológico
* Frontend: React, TypeScript, Tailwind CSS.

* Backend: Node.js (Express / NestJS) con TypeScript (o Java con Spring Boot, a ratificar al cierre de la Etapa 1).

* Base de Datos: PostgreSQL.

* Entorno / Despliegue: Docker, Docker Compose.
