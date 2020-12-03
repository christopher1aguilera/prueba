UPDATE facturas_detalles 
SET valor_total = (cantidad * (SELECT valor_unitario FROM productos WHERE id = facturas_detalles.id_producto)) 
WHERE valor_total IS NULL;

UPDATE facturas 
SET subtotal = (SELECT SUM(valor_total) FROM facturas_detalles WHERE numero_factura = numero) 
WHERE subtotal IS NULL;

UPDATE facturas 
SET precio_total = ((subtotal)*19/100)+(subtotal) 
WHERE precio_total IS NULL;