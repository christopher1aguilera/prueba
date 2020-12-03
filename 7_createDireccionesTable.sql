DROP TABLE IF EXISTS direcciones;
CREATE TABLE direcciones(
    id SERIAL, 
    id_cliente INT NOT NULL, 
    direccion VARCHAR(30) NOT NULL, 
    PRIMARY KEY(id), 
    FOREIGN KEY(id_cliente) REFERENCES clientes(id)
    );