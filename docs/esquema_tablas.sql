-- 1. Tabla de Usuarios
CREATE TABLE usuarios (
    id SERIAL PRIMARY KEY,
    dni VARCHAR(20) UNIQUE NOT NULL,
    email VARCHAR(150) UNIQUE NOT NULL,
    password_hash VARCHAR(255) NOT NULL,
    rol VARCHAR(20) NOT NULL CHECK (rol IN ('ADMIN', 'DOCENTE', 'FAMILIAR')),
    creado_en TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- 2. Tabla de Cursos
CREATE TABLE cursos (
    id SERIAL PRIMARY KEY,
    anio VARCHAR(10) NOT NULL,
    division VARCHAR(10) NOT NULL,
    ciclo_lectivo INT NOT NULL
);

-- 3. Tabla de Materias
CREATE TABLE materias (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL
);

-- 4. Tabla de Estudiantes
CREATE TABLE estudiantes (
    id SERIAL PRIMARY KEY,
    curso_id INT REFERENCES cursos(id) ON DELETE SET NULL,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    dni VARCHAR(20) UNIQUE NOT NULL,
    fecha_nacimiento DATE NOT NULL,
    telefono VARCHAR(30),
    direccion VARCHAR(200)
);

-- 5. Tabla de Docentes
CREATE TABLE docentes (
    id SERIAL PRIMARY KEY,
    usuario_id INT UNIQUE REFERENCES usuarios(id) ON DELETE CASCADE,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    telefono VARCHAR(30),
    direccion VARCHAR(200)
);

-- 6. Tabla de Familiares
CREATE TABLE familiares (
    id SERIAL PRIMARY KEY,
    usuario_id INT UNIQUE REFERENCES usuarios(id) ON DELETE CASCADE,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    telefono VARCHAR(30),
    direccion VARCHAR(200)
);

-- 7. Tabla Intermedia: Estudiante - Familiar
CREATE TABLE estudiante_familiar (
    estudiante_id INT REFERENCES estudiantes(id) ON DELETE CASCADE,
    familiar_id INT REFERENCES familiares(id) ON DELETE CASCADE,
    parentesco VARCHAR(50),
    PRIMARY KEY (estudiante_id, familiar_id)
);

-- 8. Tabla Intermedia: Asignaciones de Docente
CREATE TABLE asignaciones_docente (
    id SERIAL PRIMARY KEY,
    docente_id INT REFERENCES docentes(id) ON DELETE CASCADE,
    materia_id INT REFERENCES materias(id) ON DELETE CASCADE,
    curso_id INT REFERENCES cursos(id) ON DELETE CASCADE,
    CONSTRAINT uq_docente_materia_curso UNIQUE (docente_id, materia_id, curso_id)
);

-- 9. Tabla de Calificaciones
CREATE TABLE calificaciones (
    id SERIAL PRIMARY KEY,
    estudiante_id INT REFERENCES estudiantes(id) ON DELETE CASCADE,
    materia_id INT REFERENCES materias(id) ON DELETE CASCADE,
    nota DECIMAL(4, 2) NOT NULL CHECK (nota >= 1.00 AND nota <= 10.00),
    trimestre INT NOT NULL CHECK (trimestre IN (1, 2, 3)),
    fecha DATE DEFAULT CURRENT_DATE
);

-- 10. Tabla de Contenidos
CREATE TABLE contenidos (
    id SERIAL PRIMARY KEY,
    curso_id INT REFERENCES cursos(id) ON DELETE CASCADE,
    materia_id INT REFERENCES materias(id) ON DELETE CASCADE,
    descripcion TEXT NOT NULL,
    fecha DATE DEFAULT CURRENT_DATE
);