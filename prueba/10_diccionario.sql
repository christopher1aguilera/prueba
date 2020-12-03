SELECT
clientes.TABLE_NAME AS tabla_nombre,
clientes.COLUMN_NAME AS columna_nombre,
clientes.ORDINAL_POSITION AS position,
clientes.IS_NULLABLE AS nulo,
clientes.DATA_TYPE AS tipo_dato,
COALESCE(clientes.NUMERIC_PRECISION,
clientes.CHARACTER_MAXIMUM_LENGTH) AS longitud
FROM
INFORMATION_SCHEMA.COLUMNS clientes
WHERE
clientes.TABLE_SCHEMA = 'public'
ORDER BY
clientes.TABLE_NAME;