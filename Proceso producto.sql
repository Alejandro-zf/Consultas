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