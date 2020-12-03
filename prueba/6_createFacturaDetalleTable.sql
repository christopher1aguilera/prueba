DROP TABLE IF EXISTS facturas_detalles;
CREATE TABLE facturas_detalles (
    id SERIAL, 
    id_producto INT NOT NULL, 
    numero_factura INT NOT NULL, 
    cantidad INT NOT NULL, 
    valor_total INT, 
    PRIMARY KEY(id), 
    FOREIGN KEY(id_producto) REFERENCES productos(id), 
    FOREIGN KEY(numero_factura) REFERENCES facturas(numero)
    );