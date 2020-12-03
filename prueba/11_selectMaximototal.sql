--por cada factura
SELECT nombre, precio_total FROM clientes JOIN facturas ON id = facturas.id_cliente WHERE facturas.precio_total = (SELECT MAX(precio_total) FROM facturas);
--por el total en el cliente
SELECT nombre, SUM(precio_total) FROM clientes JOIN facturas ON id = facturas.id_cliente GROUP BY nombre, id_cliente ORDER BY SUM(precio_total) DESC LIMIT 1;
