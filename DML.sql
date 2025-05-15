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
SELECT
    UPPER(LEFT(Nombre, 2)) AS Ini_MAY, Nombre
FROM
    Fabricante;
/*Noveno punto*/
SELECT Nombre,CEILING(Precio) AS precio_redond FROM producto;
/*Decimo punto*/
SELECT Nombre,CEILING(Precio) AS precio_sin_deci FROM producto;