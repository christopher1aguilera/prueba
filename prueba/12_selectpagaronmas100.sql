--por cada factura
SELECT nombre, precio_total FROM clientes JOIN facturas ON id = facturas.id_cliente WHERE facturas.precio_total > 100;
--por el total en el cliente
SELECT nombre, compras_cliente FROM (SELECT nombre, SUM(precio_total) AS compras_cliente FROM clientes JOIN facturas ON id = facturas.id_cliente GROUP BY nombre, id_cliente ORDER BY SUM(precio_total)) AS mas_caro WHERE compras_cliente > 100;
