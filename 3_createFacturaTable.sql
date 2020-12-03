DROP TABLE IF EXISTS facturas;
CREATE TABLE facturas (
    numero SERIAL, 
    id_cliente INT NOT NULL, 
    fecha DATE, 
    subtotal INT, 
    precio_total INT,  
    PRIMARY KEY(numero), 
    FOREIGN KEY(id_cliente) REFERENCES clientes(id)
    );