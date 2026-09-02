# TrabajoIntegradorFinal_AppGestionDeNotas
Trabajo Final Integrador de creación de una aplicación web para gestionar notas y contenidos de un centro educativo en Córdoba Capital.

## Propuesta de trabajo
Basándonos en una aplicación web existente (deio) y al contar con la experiencia de usuario de hace 5 años (Esteban Rivarola lo utiliza de manera frecuente en su trabajo docente) notamos que la página con la que cuenta la institución es muy deficiente a la hora del uso del cuerpo docente en cargar notas, cargar contenidos y aprendizajes y buscar estudiantes. A su vez todos los años al comienzo del ciclo lectivo, los docentes deben pedir nuevamente instrucciones para navegar y realizar sus tareas en dicha página, lo que acarrea pérdida de tiempo y dolor de cabeza a todo el cuerpo docente. Sucede también que la página está en constantes cambios, por lo que en épocas de carga de notas y contenidos la página suele volverse lenta y en ocasiones no está disponible debido al alto tránsito de datos.

Por lo tanto nos proponemos en el presente trabajo mejorar la carga de notas, contenidos y aprendizajes y mejorar el diseño intuitivo y la experiencia del usuario en su usabilidad.

Al contar con la experiencia de usuario de uno de los miembros del grupo creemos que podremos dar una solución real al problema con el que se encuentran año a año el cuerpo docente. 

Es nuestro plan que la página cumpla con aspectos, tales como, `eficacia` (garantizar que el software haga exactamente lo que debe hacer), `fiabilidad` (que sea estable y no falle durante su ejecución), `usabilidad` (que el usuario pueda interactuar con la aplicación y la calidad de su experiencia de uso) y `rendimiento` (que el sistema sea eficaz y veloz)

Confiamos que con los conocimientos técnicos con los que contamos es altamente viable lograr entregar un MVP en el tiempo establecido por la cátedra (Fecha máxima de entrega: 14/11) 

### La página deberá hacer: 
* Carga de notas seleccionando el curso y la división,
* Carga de contenidos y aprendizajes seleccionando curso y división,
* Visualización de dichas notas en planillas por curso y división,
* Video tutorial breve sobre cómo utilizar la página,
* Ingreso con diferentes credenciales: **Admin/Docente/Familiar** con diferentes funcionalidades. **Admin** deberá poder cargar/modificar/eliminar datos de estudiantes, docentes y familiares. **Docente** deberá poder cargar/modificar/eliminar notas y contenidos y aprendizajes y visualización del video tutorial. **Familiar** deberá poder visualizar las notas, contenidos y aprendizajes cargados de su hijo/a. 

## Plan de trabajo
#### Fechas estimadas

* **Etapa 1: Análisis, Diseño de Arquitectura y UI/UX (01/09 - 14/09)**
  * Definición y refinamiento de requerimientos funcionales y no funcionales.
  * Diseño del esquema de la base de datos (PostgreSQL) y diagramas entidad-relación (DER).
  * Creación de wireframes y prototipo de alta fidelidad en Figma enfocado en usabilidad docente.
  * Definición final del stack y configuración del repositorio inicial con Docker.

* **Etapa 2: Infraestructura Backend e Identidad/Roles (15/09 - 28/09)**
  * Configuración del servidor y la conexión a la base de datos.
  * Implementación del sistema de autenticación y autorización según roles (**Admin**, **Docente**, **Familiar**).
  * Desarrollo de la API REST base y endpoints para la gestión de usuarios (CRUD de estudiantes, docentes y familiares).

* **Etapa 3: Desarrollo Core Backend & Frontend Base (29/09 - 12/10)**
  * **Backend:** Endpoints para la carga, modificación y lectura de notas, contenidos y aprendizajes por curso y división.
  * **Frontend:** Creación de la estructura base del proyecto con React + Tailwind CSS, enrutamiento y estado global.
  * Maquetado e integración de pantallas de Login y panel de administración (**Admin**).

* **Etapa 4: Desarrollo Frontend Avanzado e Integración Core (13/10 - 26/10)**
  * Desarrollo del módulo **Docente**: Interfaces para selección de curso/división, planilla de carga rápida de notas y sección de contenidos/aprendizajes.
  * Desarrollo del módulo **Familiar**: Vista de consulta de calificaciones e informes del estudiante.
  * Conexión completa Frontend-Backend e integración de validaciones en la carga masiva.

* **Etapa 5: Material de Capacitación, Testing y Optimización (27/10 - 05/11)**
  * Grabación e integración en la plataforma del video tutorial breve de orientación para docentes.
  * Pruebas de usabilidad, pruebas de carga/rendimiento simuladas y corrección de bugs.
  * Pruebas de roles y seguridad (restricción de accesos por perfil).
  * Dockerización final del proyecto y despliegue en entorno de pruebas.

* **Etapa 6: Cierre, Documentación y Presentación Final (06/11 - 14/11)**
  * Conclusión de la documentación técnica y actualización del `README.md` final.
  * Ensayos de presentación y demo funcional del proyecto.
  * **14/11/2026:** Entrega final del MVP.

* Link a tablero en Trello: https://trello.com/invite/b/6a8e2122420964fcd890a3bb/ATTI7012be5147e3d749afc116705a0ceebf54E6930D/trabajointegradorfinalappgestiondenotas

## Stack tecnológico
* **Lenguaje:** JavaScript/TypeScript - Java/SpringBoot (a definir en un futuro próximo)
* **Frontend:** React + Tailwind CSS (TypeScript)
* **Backend:** Node.js + TypeScript
* **Base de datos:** SQL (PostgreSQL)
* **Despliegue/Entorno:** Docker
