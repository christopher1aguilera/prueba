DROP TABLE IF EXISTS productos;
CREATE TABLE productos (
    id SERIAL, 
    id_categoria INT NOT NULL, 
    nombre VARCHAR(30) NOT NULL, 
    descripcion VARCHAR(30), 
    valor_unitario INT,  
    PRIMARY KEY(id), 
    FOREIGN KEY(id_categoria) REFERENCES categorias(id)
    );