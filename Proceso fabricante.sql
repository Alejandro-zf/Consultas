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
