INSERT INTO clientes(nombre) 
VALUES ('cliente1'),('cliente2'),('cliente3'),('cliente4'),('cliente5');

INSERT INTO categorias(nombre, descripcion) 
VALUES ('categoria1', 'descripcioncategoria1'),('categoria2', 'descripcioncategoria2'),('categoria3', 'descripcioncategoria3');

INSERT INTO productos(id_categoria, nombre, descripcion, valor_unitario) 
VALUES (1, 'producto1', 'descripcionproducto1', 2),(2, 'producto2', 'descripcionproducto2', 4),(3, 'producto3', 'descripcionproducto3', 6),
(1, 'producto4', 'descripcionproducto4', 8),(2, 'producto5', 'descripcionproducto5', 10),(3, 'producto6', 'descripcionproducto6', 12),
(1, 'producto7', 'descripcionproducto7', 14),(2, 'producto8', 'descripcionproducto8', 16);

INSERT INTO direcciones(id_cliente, direccion) 
VALUES (1, 'direccion1'),(1, 'segundaDireccion1'),(2, 'direccion2'),(3, 'direccion3'),(3, 'segundaDireccion3'),(3, 'terceraDireccion3'),
(4, 'direccion4');

INSERT INTO facturas(numero, id_cliente, fecha) 
VALUES (1, 1, NOW()),(2, 1, NOW()),(3, 2, NOW()),(4, 2, NOW()),(5, 2, NOW()),(6, 3, NOW()),(7, 4, NOW()),(8, 4, NOW()),(9, 4, NOW()),(10, 4, NOW());

INSERT INTO facturas_detalles(id_producto, numero_factura, cantidad) 
VALUES (1, 1, 5), (2, 1, 6),
(3, 2, 7),(4, 2, 1),(5, 2, 10),
(6, 3, 2),(6, 3, 2),(8, 3, 2),
(1, 4, 5),(2, 4, 6),
(3, 5, 10),(4, 5, 9),(5, 5, 6),
(6, 6, 3),
(7, 7, 1),(8, 7, 1),
(1, 8, 5),(2, 8, 5),(3, 8, 3),
(4, 9, 4),(5, 9, 5),(6, 9, 2),(7, 9, 1),
(8, 10, 7);