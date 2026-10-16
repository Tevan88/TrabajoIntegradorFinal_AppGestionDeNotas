# Análisis de Riesgos y Acciones Preventivas

Para garantizar el éxito del proyecto y anticiparnos a posibles inconvenientes técnicos realizamos el siguiente análisis de riesgos y sus medidas preventivas:

## Desviación en el Cronograma
* Que los tiempos estimados no alcancen debido a imprevistos técnicos o complejidad en el desarrollo, afectando la fecha límite del MVP.
* **Impacto:** Alto (riesgo de no llegar con un MVP funcional a la entrega final).
* **Acción Preventiva:** 
  * Respetar estrictamente el alcance definido (MVP), manteniendo fuera del alcance inicial (*Out of Scope*) funcionalidades secundarias como el chat o la asistencia diaria.
  * Realizar revisiones quincenales utilizando el tablero de Trello para detectar desvíos a tiempo y reasignar esfuerzos.

## Riesgo de Seguridad y Brechas de Acceso (RBAC)
* Que un usuario con rol de familiar o docente logre acceder por manipulación de endpoints a información académica de cursos que no le corresponden, o exposición de datos sensibles de los estudiantes.
* **Impacto:** Crítico.
* **Acción Preventiva:** 
  * Implementar validaciones estrictas de control de acceso basado en roles tanto en el middleware del backend como en las rutas protegidas del frontend.
  * Asegurar la correcta firma y expiración de los tokens JWT y el cifrado seguro de contraseñas.

## 4. Riesgo de Complejidad en la Interfaz de Carga (UX de la Planilla)
* Que la vista/planilla de notas resulte compleja de usar o lenta de renderizar en el navegador al listar muchos estudiantes y materias.
* **Impacto:** Medio (afecta directamente el principal objetivo del proyecto: mejorar la usabilidad frente a las herramientas actuales).
* **Acción Preventiva:** 
  * Validar tempranamente los wireframes antes de programar la interfaz completa.
  * Utilizar componentes eficientes en React y evitar re-renderizados innecesarios al editar notas masivamente.
