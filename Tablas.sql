DROP DATABASE IF EXISTS Producto;
CREATE DATABASE Producto;
Use Producto;

CREATE TABLE Producto(
	Codigo INT (10) PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR(100),
    Precio DOUBLE,
    Codigo_fabricante INT(10)
); 

CREATE TABLE Fabricante(
	Codigo INT (10) PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR(100)
); 

ALTER TABLE Producto 
ADD CONSTRAINT Codigo_fabricante
FOREIGN KEY (Codigo) REFERENCES Fabricante (Codigo);  