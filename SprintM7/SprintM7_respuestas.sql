#Cuál es la categoría de productos que más se repite.

#SELECT categoria, count(categoria) AS frecuencia FROM sprintm7.producto GROUP BY categoria order by frecuencia DESC limit 1;

#Cuáles son los productos con mayor stock

#SELECT nombre, stock FROM sprintm7.producto ORDER BY stock DESC limit 3;

#Qué color de producto es más común en nuestra tienda.

#SELECT color, count(color) AS frecuencia FROM sprintm7.producto GROUP BY color order by frecuencia DESC limit 1;

#Cual o cuales son los proveedores con menor stock de productos.

#SELECT proveedor, stock FROM sprintm7.producto GROUP BY proveedor ORDER BY stock ASC limit 3;

#Cambien la categoría de productos más popular por ‘Electrónica y computación

SELECT categoria  AS frecuencia FROM sprintm7.producto GROUP BY categoria order by frecuencia DESC limit 1;

SELECT idproducto FROM producto WHERE categoria= (SELECT categoria  AS frecuencia FROM sprintm7.producto GROUP BY categoria order by frecuencia DESC LIMIT 1 );

UPDATE `sprintm7`.`producto` SET `categoria` = 'Electronica y Computacion' WHERE (`idproducto` = '4');
UPDATE `sprintm7`.`producto` SET `categoria` = 'Electronica y Computacion' WHERE (`idproducto` = '6');
UPDATE `sprintm7`.`producto` SET `categoria` = 'Electronica y Computacion' WHERE (`idproducto` = '7');
UPDATE `sprintm7`.`producto` SET `categoria` = 'Electronica y Computacion' WHERE (`idproducto` = '8');