

USE `consultas`;
DROP procedure IF EXISTS `consultas`.`producto`;
;

DELIMITER $$
USE `consultas`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `producto`(

USE `producto`;
DROP procedure IF EXISTS `producto`.`Producto`;
;

DELIMITER $$
USE `producto`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `Producto`(
    IN	Nombre VARCHAR(100),
    IN	Precio DOUBLE,
    IN	Codigo_fabricante INT(10)
    )
BEGIN
	INSERT INTO producto(Nombre,Precio ,Codigo_fabricante) 
	VALUES (Nombre,Precio ,Codigo_fabricante);
END$$

DELIMITER ;
;
	INSERT INTO Producto(Nombre,Precio ,Codigo_fabricante) 
	VALUES (Nombre,Precio ,Codigo_fabricante);
END$$

DELIMITER ;
