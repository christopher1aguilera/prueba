SELECT COUNT (DISTINCT id_cliente) 
AS clientes_compraron_producto_6 
FROM facturas 
JOIN facturas_detalles ON numero = facturas_detalles.numero_factura 
WHERE id_producto = 6;