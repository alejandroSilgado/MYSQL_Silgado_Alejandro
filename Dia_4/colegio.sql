-- ###################################
-- ###   Ejercicios del dia 4      ###
-- ###################################

-- creacion de la base de datos 
CREATE DATABASE dia4;
USE dia4;

-- creacion de la tabla pais 
CREATE TABLE pais(
	id INT(10) PRIMARY KEY AUTO_INCREMENT,
	nombre VARCHAR(20),
	continente VARCHAR(25),
	poblacion INT(10)
);

-- creacion de la tabla Cuidad 
CREATE TABLE cuidad(
	id INT(10),
	nombre VARCHAR(20),
	id_pais INT(10),
    FOREIGN KEY (id_pais) REFERENCES pais(id)
);

-- creacion de la tabla Idioma 
CREATE TABLE idioma(
	id INT(10)PRIMARY KEY AUTO_INCREMENT,
	idioma VARCHAR(50)
);

-- creacion de la tabla Idioma pais  
CREATE TABLE idioma_pais(
	id_idioma INT(10),
	id_pais INT(10),
	es_oficial TINYINT(1),
	FOREIGN KEY (id_pais) REFERENCES pais(id),
    FOREIGN KEY (id_idioma) REFERENCES idioma(id)
);
-- Se insertan los datos  de la tabla pais 

INSERT INTO pais (nombre, continente, poblacion)
VALUES
    ('Colombia', 'América', 50.372.424),
    ('España', 'Europa', 47.329.981),
    ('Japón', 'Asia', 126.476.461),
    ('Australia', 'Oceanía', 25.788.200),
    ('Egipto', 'África', 104258327),
    ('Canadá', 'América', 37589262),
    ('Italia', 'Europa', 60359546),
    ('India', 'Asia', 1380004385),
    ('Nueva Zelanda', 'Oceanía', 5120000),
    ('Sudáfrica', 'África', 59308690);
   
-- Se insertan los datos  de la tabla cuidad 

INSERT INTO cuidad (nombre)
VALUES
    ('Pasto'),
    ('Neiva'),
    ('Cucuta'),
    ('Piedecuesta'),
    ('Giron'),
    ('Bucaramanga'),
    ('Bogota'),
    ('Barranquilla'),
    ('Velez'),
    ('Amsterdan');
      -- Se insertan los datos  de la tabla cuidad 

INSERT INTO idioma (idioma)
VALUES
    ('Ingles'),
    ('Español'),
    ('Cucuteño'),
    ('Mandarin'),
    ('Eslovaco'),
    ('Ruso'),
    ('Aleman'),
    ('Bulgaro'),
    ('Arabe'),
    ('Frances');
   

 



