
-- <==========================>
-- EXAMEN MYSQLII
-- <==========================>

USE coworking_db;

SELECT 
    CONCAT(u.nombre, ' ', u.apellidos) AS nombre_usuario,
    tm.nombre AS tipo_membresia,
    SUM(p.monto) AS total_pagado_reservas
FROM  usuarios u
INNER JOIN 
    membresias m ON u.id_usuario = m.id_usuario AND m.estado = 'Activa'
INNER JOIN 
    tipos_membresia tm ON m.id_tipo_membresia = tm.id_tipo_membresia
INNER JOIN 
    reservas r ON u.id_usuario = r.id_usuario
INNER JOIN 
    facturas f ON r.id_reserva = f.id_reserva
INNER JOIN 
    pagos p ON f.id_factura = p.id_factura AND p.estado_transaccion = 'Pagado'
GROUP BY 
    u.id_usuario, 
    u.nombre, 
    u.apellidos, 
    tm.nombre
HAVING 
    SUM(p.monto) > 100
ORDER BY 
    total_pagado_reservas DESC;
    
    
    