DROP DATABASE if exists techSolutionsDB;
CREATE DATABASE techSolutionsDB;

USE techSolutionsDB;
CREATE TABLE tbCargos(
	id_cargo INT PRIMARY KEY AUTO_INCREMENT,
	nombre_cargo VARCHAR(50)
);


CREATE TABLE tbDepartamentos(
	id_departamento INT PRIMARY KEY AUTO_INCREMENT,
	nombre_departamento VARCHAR (50)
);

CREATE TABLE tbProyectos(
	id_proyecto INT PRIMARY KEY AUTO_INCREMENT,
	nombre_proyecto VARCHAR(50)
);


CREATE TABLE tbEmpleados(
	id_Empleado INT PRIMARY KEY AUTO_INCREMENT,
	nombre_empleado VARCHAR(50),
	apellido_empleado VARCHAR(50),
	salario_empleado INT,
	fecha_inicio DATE,
	id_cargo INT,
	id_departamento INT
);

CREATE TABLE tbProyectos_Empleados(
	id_proyecto_empleado INT PRIMARY KEY AUTO_INCREMENT,
	id_proyecto INT, 
	id_Empleado INT
	
);

ALTER TABLE tbEmpleados ADD CONSTRAINT FK_cargo_empleado
FOREIGN KEY (id_cargo)
REFERENCES tbCargos(id_cargo);

ALTER TABLE tbEmpleados ADD CONSTRAINT FK_departamento_empleado
FOREIGN KEY (id_departamento)
REFERENCES tbDepartamentos(id_departamento);

ALTER TABLE tbProyectos_Empleados ADD CONSTRAINT FK_proyecto_empleado
FOREIGN KEY (id_proyecto)
REFERENCES tbProyectos(id_proyecto);

ALTER TABLE tbProyectos_Empleados ADD CONSTRAINT FK_empleado_proyecto
FOREIGN KEY (id_Empleado) 
REFERENCES tbEmpleados(id_Empleado);





