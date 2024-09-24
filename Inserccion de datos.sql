
--Inserccion de Marcas
INSERT INTO marca (id_marca,nombre) values (1,'Toyota');
INSERT INTO marca (id_marca,nombre) values (2,'Peugeot');
INSERT INTO marca (id_marca,nombre) values (3,'Ford');
INSERT INTO marca (id_marca,nombre) values (4,'Chevrolet');
	
SELECT * FROM marca

--Inserccion de modelos
INSERT INTO modelo (id_modelo,nombre,id_marca) values (1,'Etios',1);
INSERT INTO modelo (id_modelo,nombre,id_marca) values (2,'Onix',4);
INSERT INTO modelo (id_modelo,nombre,id_marca) values (3,'Corolla',1);
INSERT INTO modelo (id_modelo,nombre,id_marca) values (4,'Prisma',4);
INSERT INTO modelo (id_modelo,nombre,id_marca) values (5,'Ka',3);
INSERT INTO modelo (id_modelo,nombre,id_marca) values (6,'206',2);

SELECT * FROM modelo

--Inserccion de vendedores
INSERT INTO vendedor (id_vendedor,nombre,dni,domicilio,id_consecionario,id_servicio) values (1,'Juan Perez',65789123,'San Miguel de Tucuman',2,NULL);
INSERT INTO vendedor (id_vendedor,nombre,dni,domicilio,id_consecionario,id_servicio) values (2,'Carlos ALvarez',645533,'Monteros',3,NULL);
INSERT INTO vendedor (id_vendedor,nombre,dni,domicilio,id_consecionario,id_servicio) values (3,'Daniel Vildza',634563,'Concepcion',NULL,1);
INSERT INTO vendedor (id_vendedor,nombre,dni,domicilio,id_consecionario,id_servicio) values (4,'Jorge Olea',3499123,'SanMiguel de Tucuman',NULL,3);
INSERT INTO vendedor (id_vendedor,nombre,dni,domicilio,id_consecionario,id_servicio) values (5,'Luciano Gomez',57489123,'Monteros',NULL,2);
INSERT INTO vendedor (id_vendedor,nombre,dni,domicilio,id_consecionario,id_servicio) values (6,'Pedro Olaza',99789123,'Concepcion',1,NULL);

SELECT * FROM vendedor

--Inserccion de versiones
INSERT INTO versiones (id_version,nombre,id_modelo) values (1,'LTZ',4);
INSERT INTO versiones (id_version,nombre,id_modelo) values (2,'LT',2);
INSERT INTO versiones (id_version,nombre,id_modelo) values (3,'XLE',3);
INSERT INTO versiones (id_version,nombre,id_modelo) values (4,'Freestyle',5);
INSERT INTO versiones (id_version,nombre,id_modelo) values (5,'XLS',1);
INSERT INTO versiones (id_version,nombre,id_modelo) values (6,'GTI',6);

SELECT * FROM versiones

--Inserccion de extra
INSERT INTO extra (id_extra,descripcion,precio,id_version) values (1,'Suspension deportiva',300,2);
INSERT INTO extra (id_extra,descripcion,precio,id_version) values (2,'LLantas de aleacion',500,6);
INSERT INTO extra (id_extra,descripcion,precio,id_version) values (3,'Suspension deportiva',400,6);
INSERT INTO extra (id_extra,descripcion,precio,id_version) values (4,'Volante deportivo',100,1);
INSERT INTO extra (id_extra,descripcion,precio,id_version) values (5,'Faros antiniebla',100,5);
INSERT INTO extra (id_extra,descripcion,precio,id_version) values (6,'Volante deportivo',1500,4);

SELECT * FROM extra;

--Inserccion de equipamiento serie
INSERT INTO equipamiento_serie (id_equipamiento,descripcion,id_version) values (1,'Aire acondicionado',3);
INSERT INTO equipamiento_serie (id_equipamiento,descripcion,id_version) values (2,'Direccion asistida',2);
INSERT INTO equipamiento_serie (id_equipamiento,descripcion,id_version) values (3,'Cierre centralizado',6);
INSERT INTO equipamiento_serie (id_equipamiento,descripcion,id_version) values (4,'ABS',1);

SELECT * FROM equipamiento_serie

--Inserccion de consecionario
INSERT INTO consecionario (id_consecionario,nombre,direccion,cuit) values (1,'GEMSA','Concepcion',999999);
INSERT INTO consecionario (id_consecionario,nombre,direccion,cuit) values (2,'Fadua S.A.','San MIguel de Tucuman',956999);
INSERT INTO consecionario (id_consecionario,nombre,direccion,cuit) values (3,'De cars','Monteros',912399);

SELECT * FROM consecionario

--Inserccion de servicio oficial
INSERT INTO servicio_oficial (id_servicio,nombre,domicilio,cuit, id_consecionario) values (1,'MAC MOTORES','Concepcion',3498593,1);
INSERT INTO servicio_oficial (id_servicio,nombre,domicilio,cuit, id_consecionario) values (2,'Servicio Musmarra','Monteros',3655493,3);
INSERT INTO servicio_oficial (id_servicio,nombre,domicilio,cuit, id_consecionario) values (3,'Horizontes','San Miguel de Tucuman',34988893,2);

SELECT * FROM servicio_oficial

--Inserccion de ventas
INSERT INTO venta (id_venta,matricula,precio,forma_pago,id_automovil,id_vendedor) values (1,'AS34',9500,'Efectivo',1,5);
INSERT INTO venta (id_venta,matricula,precio,forma_pago,id_automovil,id_vendedor) values (2,'EEE4',47500,'FInanciado',3,1);
INSERT INTO venta (id_venta,matricula,precio,forma_pago,id_automovil,id_vendedor) values (3,'BBCS',33250,'Efectivo',10 ,2);
INSERT INTO venta (id_venta,matricula,precio,forma_pago,id_automovil,id_vendedor) values (4,'QT34',86450,'Efectivo',11 ,4);
INSERT INTO venta (id_venta,matricula,precio,forma_pago,id_automovil,id_vendedor) values (5,'E344',19950,'FInanciado',4,1);

SELECT * FROM venta

--Inserccion de automovil

INSERT INTO automovil (id_automovil,precio,descuento,num_chasis,stock,potencia,cilindrada,color,id_modelo,id_vendedor) values (1,10000,5,868432,10,120,3000,'Rojo',4,3);
INSERT INTO automovil (id_automovil,precio,descuento,num_chasis,stock,potencia,cilindrada,color,id_modelo,id_vendedor) values (2,15000,5,508455,10,180,3000,'Verde',1,3);
INSERT INTO automovil (id_automovil,precio,descuento,num_chasis,stock,potencia,cilindrada,color,id_modelo,id_vendedor) values (3,50000,5,712432,5,300,6000,'Negro',4,4);
INSERT INTO automovil (id_automovil,precio,descuento,num_chasis,stock,potencia,cilindrada,color,id_modelo,id_vendedor) values (4,21000,5,568432,7,120,3200,'Azul',6,2);
INSERT INTO automovil (id_automovil,precio,descuento,num_chasis,stock,potencia,cilindrada,color,id_modelo,id_vendedor) values (5,30000,5,563332,6,190,2700,'Blanco',1,1);
INSERT INTO automovil (id_automovil,precio,descuento,num_chasis,stock,potencia,cilindrada,color,id_modelo,id_vendedor) values (6,70000,5,654300,3,400,7500,'Marron',3,5);
INSERT INTO automovil (id_automovil,precio,descuento,num_chasis,stock,potencia,cilindrada,color,id_modelo,id_vendedor) values (7,80000,5,568132,2,60,1800,'Negro',5,3);
INSERT INTO automovil (id_automovil,precio,descuento,num_chasis,stock,potencia,cilindrada,color,id_modelo,id_vendedor) values (8,29000,5,128432,7,190,3500,'Rojo',2,6);
INSERT INTO automovil (id_automovil,precio,descuento,num_chasis,stock,potencia,cilindrada,color,id_modelo,id_vendedor) values (9,17000,5,568432,13,120,3000,'Verde',4,2);
INSERT INTO automovil (id_automovil,precio,descuento,num_chasis,stock,potencia,cilindrada,color,id_modelo,id_vendedor) values (10,35000,5,001432,6,190,3600,'Gris',4,1);
INSERT INTO automovil (id_automovil,precio,descuento,num_chasis,stock,potencia,cilindrada,color,id_modelo,id_vendedor) values (11,91000,5,577432,4,750,8000,'Bordo',4,3);
INSERT INTO automovil (id_automovil,precio,descuento,num_chasis,stock,potencia,cilindrada,color,id_modelo,id_vendedor) values (12,13000,5,458432,7,100,2000,'Morado',4,6);

SELECT * FROM automovil

--Inserccion de venta extra
INSERT INTO venta_extra (id_venta_extra,precio,id_venta,id_extra) values (1,100,1,4);
INSERT INTO venta_extra (id_venta_extra,precio,id_venta,id_extra) values (2,900,5,6);
INSERT INTO venta_extra (id_venta_extra,precio,id_venta,id_extra) values (3,100,4,1);

SELECT * FROM venta_extra