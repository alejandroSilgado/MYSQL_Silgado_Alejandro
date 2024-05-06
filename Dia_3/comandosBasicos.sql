CREATE DATABASE comandosBasicos;
-- Departamento
CREATE TABLE Departamento (
    id INT(10) PRIMARY KEY,
    nombre VARCHAR(50)
);

-- Profesor
CREATE TABLE Profesor (
    id_profesor INT(10) PRIMARY KEY,
    id_departamento INT(10),
    FOREIGN KEY (id_departamento) REFERENCES Departamento(id)
);

-- Persona
CREATE TABLE Persona (
    id INT(10) PRIMARY KEY,
    nif VARCHAR(9),
    nombre VARCHAR(25),
    apellido1 VARCHAR(50),
    apellido2 VARCHAR(50),
    ciudad VARCHAR(25),
    direccion VARCHAR(50),
    telefono VARCHAR(9),
    fecha_nacimiento DATE,
    sexo ENUM('H', 'M'),
    tipo ENUM('valor1', 'valor2', 'valor3') -- Reemplaza con los valores apropiados
);

-- Grado
CREATE TABLE Grado (
    id INT(10) PRIMARY KEY,
    nombre VARCHAR(100)
);

-- Curso escolar
CREATE TABLE Curso_escolar (
    id INT(10) PRIMARY KEY,
    anyo_inicio YEAR,
    anyo_fin YEAR
);

-- Alumno_se_matricula_asignatura
CREATE TABLE Alumno_se_matricula_asignatura (
    id_alumno INT(10),
    id_asignatura INT(10),
    id_curso_escolar INT(10),
    FOREIGN KEY (id_curso_escolar) REFERENCES Curso_escolar(id),
    FOREIGN KEY (id_alumno) REFERENCES Persona(id),
    FOREIGN KEY (id_asignatura) REFERENCES Asignatura(id)
);

-- Asignatura
CREATE TABLE Asignatura (
    id INT(10) PRIMARY KEY,
    nombre VARCHAR(100),
    creditos FLOAT,
    tipo ENUM('valor1', 'valor2', 'valor3'), -- Reemplaza con los valores apropiados
    curso INT,
    cuatrimestre INT,
    id_profesor INT(10),
    id_grado INT(10),
    FOREIGN KEY (id_profesor) REFERENCES Profesor(id_profesor),
    FOREIGN KEY (id_grado) REFERENCES Grado(id)
);
