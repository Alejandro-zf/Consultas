/*Primer punto*/SELECT Nombre FROM producto;
/*Segundo punto*/SELECT Nombre, Precio FROM producto;
/*Tercer punto*/
	SELECT
		p.Nombre AS Nombre_Producto,
		p.Precio,
		f.Nombre AS Nombre_Fabricante
	FROM
		producto p
	JOIN
		Fabricante f ON p.Codigo_fabricante = f.Codigo;
/*Cuarto punto*/
SELECT Nombre, Precio * 0.89 AS Precio_EUROS , Precio FROM producto;
/*Quinto punto*/
SELECT Nombre, Precio * 0.89 AS EUROS , Precio AS Dolares FROM producto;
/*Sexto punto*/
SELECT UPPER(Nombre) AS Nom_Mayusc,Precio FROM Producto;
/*Septimo punto*/
SELECT LOWER(Nombre) AS Nom_minus,Precio FROM Producto;
/*Octavo punto*/
SELECT UPPER(LEFT(Nombre, 2)) AS Ini_MAY, Nombre FROM Fabricante;
/*Noveno punto*/
SELECT Nombre,CEILING(Precio) AS precio_redond FROM producto;
/*Decimo punto*/
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
SELECT Precio,Nombre FROM Producto WHERE precio <= 120;
#22
SELECT Precio,Nombre FROM Producto WHERE precio >= 400;
#23
SELECT Nombre FROM Producto WHERE precio <= 400;
#24
SELECT Nombre, Precio FROM Producto WHERE Precio >=80 AND precio <=300;
#25
SELECT  Nombre, Precio FROM Producto WHERE Precio BETWEEN 60 AND 200;
#26
SELECT Nombre, Precio, Codigo_fabricante FROM Producto WHERE Precio >= 200 AND Codigo_fabricante = 6;
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
SELECT Nombre,Precio FROM Producto WHERE Nombre LIKE '%Monitor%' AND Precio < 215;
#36
SELECT Precio,Nombre FROM Producto WHERE Precio >= 180 ORDER BY Precio DESC, Nombre ASC;

#1.1.4 Consultas multitabla (Composicion interna)
#1 
SELECT p.Nombre AS NombreProducto, p.Precio,f.Nombre AS NombreF_abricante FROM Producto p JOIN Fabricante f ON p.Codigo_fabricante = f.Codigo;
#2
SELECT p.Nombre AS NombreProducto, p.Precio,f.Nombre AS Nombre_Fabricante FROM Producto p JOIN Fabricante f ON p.Codigo_fabricante = f.Codigo ORDER BY Nombre_Fabricante ASC;
#3
SELECT p.Codigo AS Identificador_producto, p.Nombre AS NombreProducto, f.Codigo AS Identificador_fabricante, f.Nombre AS Nombre_Fabricante FROM Producto p JOIN Fabricante f ON p.Codigo_fabricante = f.Codigo;
#4
SELECT p.Nombre AS NombreProducto, p.Precio, f.Nombre AS Nombre_Fabricante FROM Producto p JOIN Fabricante f ON p.Codigo_fabricante = f.Codigo;



