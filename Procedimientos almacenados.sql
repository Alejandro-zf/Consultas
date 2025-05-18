USE `producto`;
DROP PROCEDURE IF EXISTS `Fabricante`;

DELIMITER $$
CREATE PROCEDURE `Fabricante` (
    IN Nombre VARCHAR(100)
)
BEGIN
    INSERT INTO Fabricante (Nombre)
    VALUES (Nombre);
END$$
DELIMITER ;

CALL Fabricante('Asus');
CALL Fabricante('Lenovo');
CALL Fabricante('Hewlett-Packard');
CALL Fabricante('Samsung');   
CALL Fabricante('Seagate');        
CALL Fabricante('Crucial');        
CALL Fabricante('Gigabyte');     
CALL Fabricante('Huawei');
CALL Fabricante('Xiaomi');
SELECT * FROM Fabricante;

/*///////////////////////////////////////////////Proceso producto/////////////////////////////////////////////*/

USE `producto`;
DROP procedure IF EXISTS `producto`;

DELIMITER $$
USE `producto`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `producto`(
    IN	Nombre VARCHAR(100),
    IN	Precio DOUBLE,
    IN	Codigo_fabricante INT(10)
    )
BEGIN
	INSERT INTO producto(Nombre,Precio ,Codigo_fabricante) 
	VALUES (Nombre,Precio ,Codigo_fabricante);
END$$

DELIMITER ;

CALL Producto("Disco duro SATA3 1TB", 86.99, 5); 
CALL Producto("Memoria RAM DDR4 8GB", 120, 6);   
CALL Producto("Disco SSD 1 TB", 150.99, 4);       
CALL Producto("GeForce GTX 1050Ti", 185, 7);     
CALL Producto("GeForce GTX 1080 Xtreme", 755, 6); 
CALL Producto("Monitor 24 LED Full HD", 202, 1);   
CALL Producto("Monitor 27 LED Full HD", 245.99, 1);
CALL Producto("Portátil Yoga 520", 559, 2);       
CALL Producto("Portátil Ideapad 320", 444, 2);      
CALL Producto("Impresora HP Deskjet 3720", 59.99, 3); 
CALL Producto("Impresora HP Laserjet Pro M26nw", 180, 3); 

Select *from Producto;






