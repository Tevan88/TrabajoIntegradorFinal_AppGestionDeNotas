-- 1. Cursos de Nivel Primario (1° a 6° Grado)
INSERT INTO cursos (anio, division, ciclo_lectivo) VALUES
('1° Grado', 'A', 2026),
('1° Grado', 'B', 2026),
('2° Grado', 'A', 2026),
('2° Grado', 'B', 2026),
('3° Grado', 'A', 2026),
('3° Grado', 'B', 2026),
('4° Grado', 'A', 2026),
('5° Grado', 'A', 2026),
('6° Grado', 'A', 2026);

-- 2. Materias de Nivel Primario
INSERT INTO materias (nombre) VALUES
('Matemáticas'),
('Lengua'),
('Ciencias Sociales'),
('Ciencias Naturales'),
('Informática'),
('Teatro'),
('Educación Física'),
('Inglés'),
('Catequesis'),
('Música'),
('Artes Visuales');

-- 3. Usuarios de Prueba
INSERT INTO usuarios (dni, email, password_hash, rol) VALUES
('30111222', 'admin@escuela.edu.ar', '$2a$10$HASH_EJEMPLO_ADMIN', 'ADMIN'),
('28333444', 'profesor.perez@escuela.edu.ar', '$2a$10$HASH_EJEMPLO_DOCENTE', 'DOCENTE'),
('25555666', 'familiar.lopez@gmail.com', '$2a$10$HASH_EJEMPLO_FAMILIAR', 'FAMILIAR');

-- 4. Perfil Docente
INSERT INTO docentes (usuario_id, nombre, apellido, telefono, direccion) VALUES
(2, 'Carlos', 'Pérez', '3514556677', 'Av. Colón 1200, Córdoba');

-- 5. Perfil Familiar
INSERT INTO familiares (usuario_id, nombre, apellido, telefono, direccion) VALUES
(3, 'María', 'López', '3518990011', 'Calle Belgrano 450, Córdoba');

-- 6. Estudiantes de Primaria (Edades entre 5 y 12 años)
INSERT INTO estudiantes (curso_id, nombre, apellido, dni, fecha_nacimiento, telefono, direccion) VALUES
(5, 'Lucas', 'Gómez', '54123456', '2017-03-15', '3511112222', 'Av. General Paz 300'),      -- 9 años (3° Grado)
(5, 'Sofía', 'Martínez', '54654321', '2017-07-22', '3513334444', 'Calle San Martín 150'),  -- 9 años (3° Grado)
(1, 'Joaquín', 'Silva', '56987654', '2020-05-10', '3515556666', 'Av. Vélez Sarsfield 800');-- 6 años (1° Grado)

-- 7. Vinculación Estudiante - Familiar
INSERT INTO estudiante_familiar (estudiante_id, familiar_id, parentesco) VALUES
(1, 1, 'Madre');

-- 8. Asignación de Docente (Prof. Pérez enseña Teatro en 3° Grado A)
INSERT INTO asignaciones_docente (docente_id, materia_id, curso_id) VALUES
(1, 6, 5); 

-- 9. Calificaciones Iniciales
INSERT INTO calificaciones (estudiante_id, materia_id, nota, trimestre, fecha) VALUES
(1, 6, 9.00, 1, '2026-05-10'),
(2, 6, 8.50, 1, '2026-05-10');

-- 10. Contenido Pedagógico de Ejemplo
INSERT INTO contenidos (curso_id, materia_id, descripcion, fecha) VALUES
(5, 6, 'Juegos de expresión corporal y montaje de Teatro de Sombras', '2026-04-12');