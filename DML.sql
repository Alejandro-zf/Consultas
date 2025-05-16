#1
SELECT Nombre FROM producto;
#2
SELECT Nombre, Precio FROM producto;
#3
	SELECT p.Nombre AS Nombre_Producto, p.Precio, f.Nombre AS Nombre_Fabricante FROM producto p JOIN Fabricante f ON p.Codigo_fabricante = f.Codigo;
#4
SELECT Nombre, Precio * 0.89 AS Precio_EUROS , Precio FROM producto;
#5
SELECT Nombre, Precio * 0.89 AS EUROS , Precio AS Dolares FROM producto;
#6
SELECT UPPER(Nombre) AS Nom_Mayusc,Precio FROM Producto;
#7
SELECT LOWER(Nombre) AS Nom_minus,Precio FROM Producto;
#8
SELECT UPPER(LEFT(Nombre, 2)) AS Ini_MAY, Nombre FROM Fabricante;
#9
SELECT Nombre,CEILING(Precio) AS precio_redond FROM producto;
#10
SELECT Nombre,CEILING(Precio) AS precio_sin_deci FROM producto;
#11
SELECT Codigo_fabricante FROM Producto;
#12
SELECT DISTINCT Codigo_fabricante FROM Producto;
#13
SELECT * FROM Fabricante ORDER BY Nombre ASC;
#14
SELECT * FROM Fabricante ORDER BY Nombre DESC;
#15
SELECT Nombre FROM Producto ORDER BY Nombre ASC;
SELECT Precio FROM Producto ORDER BY Precio DESC;
#16 
SELECT Nombre FROM Fabricante LIMIT 5;
#17
SELECT Codigo, Nombre FROM Fabricante WHERE Codigo >= 4 AND Codigo < 6;
#18
SELECT Precio,Nombre FROM Producto ORDER BY Precio ASC LIMIT 1;
#19
SELECT Precio,Nombre FROM Producto ORDER BY Precio DESC LIMIT 1;
#20
SELECT Nombre,Precio,Codigo_fabricante  FROM Producto WHERE Codigo_fabricante = 2;
#21
SELECT Precio,Nombre FROM Producto WHERE precio*0.89 <= 120;
#22
SELECT Precio,Nombre FROM Producto WHERE precio*0.89 >= 400;
#23
SELECT Nombre FROM Producto WHERE precio*0.89 <= 400;
#24
SELECT Nombre, Precio FROM Producto WHERE Precio*0.89 >=80 AND precio <=300;
#25
SELECT  Nombre, Precio FROM Producto WHERE Precio*0.89 BETWEEN 60 AND 200;
#26
SELECT Nombre, Precio, Codigo_fabricante FROM Producto WHERE Precio*0.89 >= 200 AND Codigo_fabricante = 6;
#27
SELECT Nombre, Codigo_fabricante FROM Producto WHERE Codigo_fabricante = 1 OR Codigo_fabricante = 3 OR Codigo_fabricante = 5;
#28
SELECT Nombre, Codigo_fabricante FROM Producto WHERE Codigo_fabricante IN (1,3,5);
#29
SELECT Nombre, Precio * 100 AS Centimos FROM Producto;
#30
SELECT Nombre FROM Fabricante WHERE Nombre LIKE 'S%';
#31
SELECT Nombre FROM Fabricante WHERE Nombre LIKE '%E';
#32
SELECT Nombre FROM Fabricante WHERE Nombre LIKE '%W%';
#33
SELECT LEFT(Nombre, 4) FROM Fabricante;
#34
SELECT Nombre FROM Producto WHERE Nombre LIKE '%Portatil%';
#35
SELECT Nombre,Precio FROM Producto WHERE Nombre LIKE '%Monitor%' AND Precio*0.89 < 215;
#36
SELECT Precio,Nombre FROM Producto WHERE Precio >= 180 ORDER BY Precio*0.89 DESC, Nombre ASC;

#1.1.4 Consultas multitabla (Composicion interna)
#1 
SELECT p.Nombre AS NombreProducto, p.Precio,f.Nombre AS NombreF_abricante FROM Producto p JOIN Fabricante f ON p.Codigo_fabricante = f.Codigo;
#2
SELECT p.Nombre AS NombreProducto, p.Precio,f.Nombre AS Nombre_Fabricante FROM Producto p JOIN Fabricante f ON p.Codigo_fabricante = f.Codigo ORDER BY Nombre_Fabricante ASC;
#3
SELECT p.Codigo AS Identificador_producto, p.Nombre AS NombreProducto, f.Codigo AS Identificador_fabricante, f.Nombre AS Nombre_Fabricante FROM Producto p JOIN Fabricante f ON p.Codigo_fabricante = f.Codigo;
#4
SELECT p.Nombre AS NombreProducto, p.Precio, f.Nombre AS Nombre_Fabricante FROM Producto p JOIN Fabricante f ON p.Codigo_fabricante = f.Codigo  ORDER BY Precio ASC LIMIT 1;
#5
SELECT p.Nombre AS NombreProducto, p.Precio, f.Nombre AS Nombre_Fabricante FROM Producto p JOIN Fabricante f ON p.Codigo_fabricante = f.Codigo  ORDER BY Precio DESC LIMIT 1;
#6
SELECT p.Nombre, f.Nombre AS Nombre_fab,p.Precio FROM Producto p JOIN Fabricante f ON p.Codigo_fabricante= f.Codigo WHERE p.Codigo_fabricante = (SELECT Codigo FROM Fabricante WHERE nombre = 'Lenovo');
#7
SELECT p.Nombre, f.Nombre AS Nombre_fab,p.Precio FROM Producto p JOIN Fabricante f ON p.Codigo_fabricante= f.Codigo WHERE p.Codigo_fabricante = (SELECT Codigo FROM Fabricante WHERE nombre = 'Crucial') AND p.Precio*0.89 >200;
#8
SELECT p.Nombre, f.Nombre AS Nombre_fab,p.Precio FROM Producto p JOIN Fabricante f ON p.Codigo_fabricante= f.Codigo WHERE p.Codigo_fabricante = (SELECT Codigo FROM Fabricante WHERE nombre = 'Asus')
OR p.Codigo_fabricante = (SELECT Codigo FROM Fabricante WHERE nombre = 'Hewlett-Packard')
OR p.Codigo_fabricante = (SELECT Codigo FROM Fabricante WHERE nombre = 'Seagate');
#9
SELECT p.Nombre, f.Nombre AS Nombre_fab,p.Precio FROM Producto p JOIN Fabricante f ON p.Codigo_fabricante= f.Codigo WHERE p.Codigo_fabricante IN (SELECT Codigo FROM Fabricante WHERE nombre IN ('Asus','Hewlett-Packard','Seagate'));
#10
SELECT p.Nombre, p.Precio, f.Nombre AS Nombre_Fabri FROM Producto p JOIN Fabricante f ON p.Codigo_fabricante = f.Codigo WHERE f.Nombre LIKE '%E';
#11
SELECT p.Nombre, p.Precio, f.Nombre AS Nombre_Fabri FROM Producto p JOIN Fabricante f ON p.Codigo_fabricante = f.Codigo WHERE f.Nombre LIKE '%W%';
#12 /*Revisar mas tarde//////////////////////////////////////////////////////////////////////////////////////////////////*/
SELECT p.Nombre AS Nombre_Produ, p.Precio AS Precio_desc, f.Nombre AS Nombre_asc FROM Producto p JOIN Fabricante f ON p.Codigo_fabricante = f.Codigo WHERE p.Precio*0.89 >= 180 ORDER BY p.Precio DESC, p.Nombre ASC;
#13
SELECT DISTINCT f.Nombre, f.Codigo FROM Fabricante f JOIN Producto p ON f.Codigo = p.Codigo_fabricante;
#1.1.5 Consulta multitabla (Composicion Externa)
#1
SELECT f.Codigo, f.Nombre AS nombre_fabricant, p.Nombre AS nombre_product, p.Precio FROM Fabricante f LEFT JOIN Producto p ON f.Codigo = p.Codigo_fabricante;
#2
SELECT f.Codigo, f.Nombre AS nombre_fabricant, p.Nombre AS nombre_product, p.Precio FROM Fabricante f LEFT JOIN Producto p ON f.Codigo = p.Codigo_fabricante WHERE p.Nombre IS NULL;
#3
/*Pregunta del documento*/
#1.1.6 Consultas Resumen
#1
SELECT COUNT(Nombre) AS Total_produ FROM Producto;
#2
SELECT COUNT(Nombre) AS Total_fabri FROM Fabricante;
#3
SELECT COUNT(DISTINCT Codigo_fabricante) AS Numeros_ids FROM Producto;
#4
SELECT AVG(Precio) AS Media_precio FROM Producto;
#5
SELECT Precio AS Precio_bara FROM Producto ORDER BY Precio ASC LIMIT 1;
#6
SELECT Precio AS Precio_bara FROM Producto ORDER BY Precio ASC LIMIT 1;
#7
SELECT Nombre, Precio AS Precio_bara FROM Producto ORDER BY Precio ASC LIMIT 1;
#8
SELECT Nombre, Precio AS Precio_bara FROM Producto ORDER BY Precio DESC LIMIT 1;
#9
SELECT SUM(Precio) AS Total_precio FROM Producto;
#10
SELECT COUNT(p.Codigo_fabricante) AS Cantidad_Asus FROM Producto p JOIN Fabricante f ON p.Codigo_fabricante = f.Codigo WHERE f.Nombre = "Asus";
#11
SELECT AVG(p.Precio) AS Media_Asus FROM Producto p JOIN Fabricante f ON p.Codigo_fabricante = f.Codigo WHERE f.Nombre = 'Asus';
#12
SELECT p.Precio AS Asus_barato FROM Producto p JOIN Fabricante f ON p.Codigo_fabricante = f.Codigo WHERE f.Nombre = "Asus"  ORDER BY Precio ASC LIMIT 1;
#13
SELECT p.Precio AS Asus_caro FROM Producto p JOIN Fabricante f ON p.Codigo_fabricante = f.Codigo WHERE f.Nombre = "Asus"  ORDER BY Precio DESC LIMIT 1;
#14
SELECT SUM(p.Precio) AS Suma_Asus FROM Producto p JOIN Fabricante f ON p.Codigo_fabricante = f.Codigo WHERE f.Nombre = 'Asus';
#15
SELECT MIN(p.Precio) AS Minimo_Crucial, MAX(p.Precio) AS maximo_Crucial, AVG (p.Precio) AS Media_Crucial, COUNT(p.Codigo_fabricante) AS Cantidad_Crucial FROM Producto p JOIN Fabricante f ON f.Codigo = p.Codigo_fabricante WHERE f.Nombre = "Crucial";
#16
SELECT f.Nombre AS Nombre_Fabr, COUNT(p.Codigo) AS Cant_Produc FROM Fabricante f LEFT JOIN Producto p ON f.Codigo = p.Codigo_fabricante GROUP BY f.Nombre ORDER BY Cant_Produc DESC;
#17
SELECT f.Nombre, MAX(Precio) AS precio_maximo, MIN(Precio) AS precio_minimo, AVG(Precio) AS precio_promedio FROM Producto p JOIN Fabricante f ON p.Codigo_fabricante = f.Codigo GROUP BY f.Nombre;
#18
SELECT Codigo AS Codigo_fabri, MAX(Precio) AS precio_maximo, MIN(Precio) AS precio_minimo, AVG(Precio) AS precio_promedio FROM Producto p GROUP BY Nombre HAVING AVG(Precio*0.89)>200;
#19
SELECT f.Nombre, MAX(Precio) AS precio_maximo, MIN(Precio) AS precio_minimo, AVG(Precio) AS precio_promedio FROM Producto p JOIN Fabricante f ON p.Codigo_fabricante = f.Codigo GROUP BY Nombre HAVING AVG(Precio*0.89)>200;
#20
SELECT COUNT(Precio) AS Pre_mayor FROM Producto WHERE Precio*0.89 >=180;
#21
SELECT COUNT(Precio) AS Pre_mayor, f.Nombre AS Nombre_fab FROM Producto p JOIN Fabricante f ON p.Codigo_fabricante = f.Codigo WHERE Precio*0.89 >=180 GROUP BY f.Nombre;
#22
SELECT Codigo_fabricante, AVG(Precio) AS Precio_med FROM Producto GROUP BY Codigo_fabricante;
#23
SELECT f.Nombre AS nombre_fab, AVG(p.Precio) AS Precio_med FROM Producto p JOIN Fabricante f ON p.Codigo_fabricante = f.Codigo GROUP BY f.Nombre;
#24
SELECT f.Nombre AS Nombre_fabr, Precio FROM Producto p JOIN Fabricante f ON p.Codigo_fabricante = f.Codigo WHERE Precio*0.89 >=150;
#25
SELECT f.Nombre AS Nombre_fabr, COUNT(Codigo_fabricante) AS Pro_mayor2 FROM Producto p JOIN Fabricante f ON p.Codigo_fabricante = f.Codigo GROUP BY f.Nombre HAVING COUNT(Codigo_fabricante)>=2;
#26
SELECT f.Nombre AS Nombre_fabr, COUNT(*) AS Pro_mayor2, Precio FROM Producto p JOIN Fabricante f ON p.Codigo_fabricante = f.Codigo WHERE Precio*0.89>=220 GROUP BY p.Precio HAVING Precio>=220;
#27
SELECT f.Nombre, COUNT(p.Codigo) FROM Fabricante f LEFT JOIN Producto p ON f.Codigo = p.Codigo_fabricante AND p.Precio* 0.89 >=220 GROUP BY f.Nombre ORDER BY p.Codigo DESC;
#28
SELECT f.Nombre AS Nombre_fab FROM Producto p JOIN Fabricante f ON p.Codigo_fabricante = f.Codigo GROUP BY f.Nombre HAVING SUM(p.Precio)>1000;
#29
SELECT p.Nombre, MAX(Precio) AS Product_caro, f.Nombre AS Nombre_fabri FROM Producto p JOIN Fabricante f ON p.Codigo_fabricante = f.Codigo GROUP BY f.Nombre ORDER BY f.Nombre;
#1.1.7
#1
SELECT p.Nombre, (SELECT f.Nombre FROM Fabricante f WHERE f.Nombre="Lenovo") AS Produ_lenovo FROM Producto p;








