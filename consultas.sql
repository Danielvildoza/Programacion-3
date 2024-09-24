/*1)Selecciona todos los automóviles de la tabla AUTOMOVIL.*/
SELECT * FROM automovil

/*2)Muestra el Numero de chasis y Precio de todos los automóviles que cuesten más de 30000.*/
SELECT num_chasis, precio FROM automovil
WHERE precio > 30000;

/*3)Lista todos los modelos de la tabla MODELO ordenados alfabéticamente.*/
SELECT * FROM modelo
ORDER BY nombre

/*4)Encuentra el automóvil más caro en la tabla AUTOMOVIL.*/
SELECT max(precio) FROM automovil

/*5)Cuenta cuántos automóviles hay en la tabla AUTOMOVIL.*/
SELECT COUNT(*) AS total,
SUM(stock) AS total_stock
FROM automovil

/*6)Calcula el precio promedio de todos los automóviles.*/
SELECT AVG (precio) AS precio_promedio FROM automovil

/*7)Lista los 5 automóviles más baratos.*/
SELECT precio FROM automovil
ORDER BY precio ASC
LIMIT 5

/*8)Muestra los automóviles cuyo precio esté entre 20000 y 35000, ordenados por precio de
forma descendente.*/
SELECT id_modelo, precio FROM automovil
WHERE precio BETWEEN 20000 AND 35000 
ORDER BY precio DESC

/*9)Calcula el valor total del inventario (suma de todos los precios de los automóviles)*/
SELECT SUM(precio) AS total_inventario FROM automovil

/*10)Encuentra el precio del automóvil más caro y más barato en una sola consulta.*/
SELECT
MAX(precio) AS mas_caro,
MIN(precio) AS mas_barato
FROM automovil

/*11)Lista los Numero de chasis de los automóviles cuyo precio sea mayor que el promedio.*/
SELECT num_chasis FROM automovil
WHERE precio>(SELECT AVG(precio) FROM automovil)

/*Encuentra el rango de precios (diferencia entre el más caro y el más barato) para los
automóviles.*/
SELECT  (MAX(precio)-MIN(precio)) AS rango_de_precio FROM automovil
