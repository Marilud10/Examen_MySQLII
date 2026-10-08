# Examen_MySQLII_Marilud_Uribe

Examen MySQLII

# Consulta SQL: Total pagado por reservas de todos los usuarios que tengan la membresia activa.

Evaluación MySQL II · Sistema de Gestión de Coworking y Oficinas Compartidas

## Descripción

Este repositorio contiene una consulta SQL sobre la base de datos `coworking_db`. Muestra el nombre de cada usuario con membresía activa, su tipo de membresía y el total pagado por sus reservas.

## Requisitos

- Un repositorio privado en github.
- Un script con las consultas pedida en el enunciado. 
- Comentarios que expliquen la lógica.


 ## Explicacion 

Consulta: Usuarios con membresía activa y total pagado por reservas > 100

1. Se seleccionan los datos del usuario (nombre completo) y el nombre del tipo de membresía.
2. Se calcula el total pagado por reservas sumando los montos de la tabla pagos ('Pagado').
3. Se unen las tablas 'usuarios', 'membresias', 'tipos_membresia', 'reservas', 'facturas' y 'pagos' asegurando que la membresía esté en estado 'Activa'.
4. Se agrupa por usuario y tipo de membresía para permitir la función de agregación SUM().
5. Se filtra con HAVING para mostrar únicamente los que superen los 100 en total pagado por reservas.
6. Se ordena el resultado de forma descendente.


Imagen Con la Prueba de que funciona la consulta. 

<img width="827" height="757" alt="image" src="https://github.com/user-attachments/assets/c3d8dffa-5110-4839-bb19-f74c3003ea65" />
