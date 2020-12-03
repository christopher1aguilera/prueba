DROP TABLE IF EXISTS clientes;
CREATE TABLE clientes (
    id SERIAL, 
    nombre VARCHAR(30) NOT NULL, 
    PRIMARY KEY(id)
    );