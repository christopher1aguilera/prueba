DROP TABLE IF EXISTS categorias;
CREATE TABLE categorias (
    id SERIAL, 
    nombre VARCHAR(30) NOT NULL, 
    descripcion VARCHAR(30) NOT NULL,  
    PRIMARY KEY(id)
    );