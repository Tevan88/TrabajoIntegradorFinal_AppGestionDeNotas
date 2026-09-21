// ENTIDADES DE ACCESO Y SEGURIDAD
Table usuarios {
  id integer [primary key, increment]
  dni varchar [unique, not null]
  email varchar [unique, not null]
  password_hash varchar [not null]
  rol varchar [not null] // ADMIN, DOCENTE, FAMILIAR
}

// PERSONAS
Table estudiantes {
  id integer [primary key, increment]
  curso_id integer [ref: > cursos.id]
  nombre varchar [not null]
  apellido varchar [not null]
  dni varchar [unique, not null]
  fecha_nacimiento date [not null]
  telefono varchar
  direccion varchar
}

Table docentes {
  id integer [primary key, increment]
  usuario_id integer [ref: - usuarios.id]
  nombre varchar [not null]
  apellido varchar [not null]
  telefono varchar
  direccion varchar
}

Table familiares {
  id integer [primary key, increment]
  usuario_id integer [ref: - usuarios.id]
  nombre varchar [not null]
  apellido varchar [not null]
  telefono varchar
  direccion varchar
}

// RELACIÓN N:M ESTUDIANTE - FAMILIAR
Table estudiante_familiar {
  estudiante_id integer [ref: > estudiantes.id]
  familiar_id integer [ref: > familiares.id]
  parentesco varchar // Padre, Madre, Tutor Legal
}

// ESTRUCTURA ACADÉMICA
Table cursos {
  id integer [primary key, increment]
  anio varchar [not null] // ej: 3°
  division varchar [not null] // ej: A
  ciclo_lectivo integer [not null] // ej: 2026
}

Table materias {
  id integer [primary key, increment]
  nombre varchar [not null] // ej: Matemática, Lengua
}

// ASIGNACIÓN DOCENTE - MATERIA - CURSO
Table asignaciones_docente {
  id integer [primary key, increment]
  docente_id integer [ref: > docentes.id]
  materia_id integer [ref: > materias.id]
  curso_id integer [ref: > cursos.id]
}

// CARGA DE NOTAS Y CONTENIDOS (CORE MVP)
Table calificaciones {
  id integer [primary key, increment]
  estudiante_id integer [ref: > estudiantes.id]
  materia_id integer [ref: > materias.id]
  nota decimal [not null]
  trimestre integer [not null] // 1, 2, 3
  fecha date [not null]
}

Table contenidos {
  id integer [primary key, increment]
  curso_id integer [ref: > cursos.id]
  materia_id integer [ref: > materias.id]
  descripcion text [not null]
  fecha date [not null]
}
