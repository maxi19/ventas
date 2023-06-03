DROP DATABASE IF EXISTS mercado;
CREATE DATABASE mercado;
USE mercado;
CREATE TABLE productos (
	`id` INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    `id_marca` INT NOT NULL,
    `titulo` VARCHAR (30) NOT NULL,
    `nombre` VARCHAR (100) NOT NULL,
    `id_categoria` INT,
    `stock` INT NOT NULL,
    `precio` double NOT NULL,
    `descripcion` VARCHAR(800) ,
    `origen` VARCHAR(15) 
);

CREATE TABLE usuarios (
	`id_usuario` INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    `usuario` varchar(50) NOT NULL,
    `password` VARCHAR(45) NOT NULL,
    `habilitado` Boolean not NULL
);

CREATE TABLE ventas(
	`id_ventas` INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    `factura` VARCHAR(45) NOT NULL,
    `producto` INT NOT NULL,
    `cantidad` INT NOT NULL,
    `importe` INT NOT NULL,
    `nombre` VARCHAR(45) NOT NULL,
    `direccion` VARCHAR(45) NOT NULL,
    `total`INT NOT NULL,
    `fecha` VARCHAR(45) NOT NULL,
    `pago` INT NOT NULL
);


CREATE TABLE tipos (
	`id` INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    `nombre` VARCHAR (100) NOT NULL,
    `valor` VARCHAR(800) NOT NULL
);


CREATE TABLE marcas (
	`id` INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    `nombre` VARCHAR(800) NOT NULL
);

CREATE TABLE `tipo_marca`(
	`id` INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    `tipo` INT,
    `marca` INT
);


INSERT INTO `productos` (`Id`, `marca`, `nombre`, `descripcion`, `tipo`, `cantidad`, `stock`, `precio`,`categoria`) VALUES
(1, 'Western Digital', 'Disco Rígido WD 1TB BLUE 64MB SATA 6.0GB/s', 'descripcion', 'Almacenamiento', NULL, 3456, 8450,1),
(2, 'Western Digital', 'Disco Rigido WD 8TB Red Pro 7.2K RPM 256MB', 'descripcion', 'Almacenamiento', NULL, 3456, 54280,1),
(3, 'Western Digital', 'Disco Rígido WD 3TB PURPLE 64MB SATA 6.0GB/s', 'descripcion', 'Almacenamiento', NULL, 3245, 12800,1),
(4, 'Team', 'Disco Solido SSD Team 240GB T-Force Vulcan Z 540MB/s', 'descripcion', 'Almacenamiento', NULL, 2, 5600),
(5, 'Team', 'Disco Solido SSD Team 1TB T-Force Vulcan Z 550MB/s', 'descripcion', 'Almacenamiento', NULL, 2, 16400),
(6, 'Team', 'Disco Solido SSD M.2 Team 2TB T-Create 2100MB/s NVMe PCI-E x4', 'descripcion', 'Almacenamiento', NULL, 3, 39290),
(7, 'Hikvision y PNY', 'Disco Solido SSD HIKVISION C100 120GB 460MB/s', 'descripcion', 'Almacenamiento', NULL, 455, 3250),
(8, 'Hikvision y PNY', 'Disco Solido SSD HIKVISION C100 240GB 550MB/s', 'descripcion', 'Almacenamiento', NULL, 3, 5230),
(9, 'Hikvision y PNY', 'Disco Solido SSD M.2 PNY 1TB PCI-E NVMe Gen4 x4', 'descripcion', 'Almacenamiento', NULL, 45, 26640),
(10, 'Geil', 'Memoria GeiL DDR4 16GB 3000MHz Orion RGB Red', 'descripcion', 'Memoria', NULL, 3, 13350),
(11, 'Geil', 'Memoria GeiL DDR4 16GB 3000MHz Super Luce RGB Black', 'descripcion', 'Memoria', NULL, 323, 15950),
(12, 'Geil', 'Memoria GeiL DDR4 8GB 3000MHZ EVO POTENZA Black', 'descripcion', 'Memoria', NULL, 453, 6800),
(13, 'Patriot', 'Memoria Patriot DDR4 8GB (2x4GB) 3200Mhz Steel', 'descripcion', 'Memoria', NULL, 4, 7300),
(14, 'Patriot', 'Memoria Patriot Viper DDR4 16GB (2x8GB) 3200MHz Steel CL16', 'descripcion', 'Memoria', NULL, 554, 13600),
(15, 'Patriot', 'Memoria Patriot Viper DDR4 32GB (2x16GB) 3200Mhz Steel RGB Black', 'descripcion', 'Memoria', NULL, 352, 13600),
(16, 'Adata', 'Memoria Adata DDR4 8GB 3200Mhz XPG Gammix D30', 'descripcion', 'Memoria', NULL, 3, 7650),
(17, 'Adata', 'Memoria Adata DDR4 16GB 3000MHz XPG Gammix D10 Black', 'descripcion', 'Memoria', NULL, 45, 13900),
(18, 'Adata', 'Memoria ADATA DDR4 16GB 3600MHZ XPG Spectrix D41 RGB Black', 'descripcion', 'Memoria', NULL, 3, 15250),
(19, 'INTEL', 'Procesador Intel Core i5 10400F 4.3GHz Turbo 1200 Comet Lake', 'descripcion', 'Microprocesador', NULL, 345, 34400),
(20, 'INTEL', 'Procesador Intel Core i9 12900KF 5.2GHz Turbo Socket 1700', 'descripcion', 'Microprocesador', NULL, 234, 134850),
(21, 'INTEL', 'Core i3 12100 12th Gen S1700', 'descripcion', 'Microprocesador', NULL, 32, 34500),
(22, 'AMD', 'Ryzen 5 5600X 4.6GHz Turbo AM4 + Wraith Stealth Cooler', 'descripcion', 'Microprocesador', NULL, 345, 61950),
(23, 'AMD', 'Ryzen 5 3600 4.2GHz Turbo AM4 Wraith Stealth Cooler', 'descripcion', 'Microprocesador', NULL, 34, 36700),
(24, 'AMD', 'Ryzen 7 5700G 4.6GHz Turbo + Wraith Stealth Cooler', 'descripcion', 'Microprocesador', NULL, 3, 69250),
(25, 'ID-Cooling', 'Cooler ID-Cooling SE-224-XT Basic', 'descripcion', 'Cooler', NULL, 56, 5850),
(26, 'ID-Cooling', 'Cooler ID-Cooling SE-226-XT Black', 'descripcion', 'Cooler', NULL, 3456, 10300),
(27, 'ID-Cooling', 'Cooler ID-Cooling SE-207-XT Black', 'descripcion', 'Cooler', NULL, 65, 12900),
(28, 'Master Hype', 'Cooler Master Hyper T20', 'descripcion', 'Cooler', NULL, 34, 3400),
(29, 'Master Hype', 'Cooler Master Hyper 212 White LED', 'descripcion', 'Cooler', NULL, 56, 8400),
(30, 'Master Hype', 'Cooler Master MasterAir MA410M ARGB', 'descripcion', 'Cooler', NULL, 7, 18150),
(31, 'Deepcool', 'Cooler CPU Deepcool ICE EDGE Mini FS V2', 'descripcion', 'Cooler', NULL, 53, 2750),
(32, 'Deepcool', 'Cooler CPU DeepCool Gammaxx 400 V2 RED', 'descripcion', 'Cooler', NULL, 0, 4700),
(33, 'Deepcool', 'Cooler CPU Deepcool GAMMAXX 400EX', 'descripcion', 'Cooler', NULL, 8, 9300),
(34, 'ASUS', 'Mother ASUS PRIME A520M-K AM4', 'descripcion', 'Placa', NULL, 23, 14820),
(35, 'ASUS', 'Mother ASUS PRIME B550M-K AM4\r', 'descripcion', 'Placa', NULL, 845637, 23990),
(36, 'ASUS', 'Mother ASUS TUF GAMING B550-PLUS WIFI II AM4\r', 'descripcion', 'Placa', NULL, 34, 23990),
(37, 'Asrock', 'Mother Asrock A320M-HDV R4.0 Ryzen M-ATX\r', 'descripcion', 'Placa', NULL, 745, 10350),
(38, 'Asrock', 'Mother Asrock B550 Pro4 AM4\r', 'descripcion', 'Placa', NULL, 4, 28450),
(39, 'Asrock', 'Mother Asrock B450 Steel Legend AM4 RGB Dual M.2 Dual USB 3.1\r', 'descripcion', 'Placa', NULL, 24563473, 30850),
(40, 'Gigabyte', 'Mother Gigabyte GA-A320M-H AM4', 'descripcion', 'Placa', NULL, 357326, 11400),
(41, 'Gigabyte', 'Mother Gigabyte A520M H AM4\r', 'descripcion', 'Placa', NULL, 3472, 15499),
(42, 'Aerocool', 'Gabinete Aerocool Bolt Black RGB Ventana Acrilica ATX\r', 'descripcion', 'Gabinete', NULL, 3534, 8650),
(43, 'Aerocool', 'Gabinete Aerocool Nighthawk Duo Black E-ATX Vidrio Templado\r', 'descripcion', 'Gabinete', NULL, 623, 19.8),
(44, 'Aerocool', 'Gabinete Aerocool Playa RGB Mid Tower\r', 'descripcion', 'Gabinete', NULL, 5734, 14890),
(45, 'Cooler Master', 'Gabinete Cooler Master MasterBox Q300L Rainbow\r', 'descripcion', 'Gabinete', NULL, 2564, 11060),
(46, 'Cooler Master', 'Gabinete Cooler Master MasterBox Q300L Rainbow\r', 'descripcion', 'Gabinete', NULL, 2356234, 11060),
(47, 'Cooler Master', 'Gabinete Cooler Master H500P Mesh ARGB\r', 'descripcion', 'Gabinete', NULL, 23455, 39100),
(48, 'Kolink', 'Gabinete Kolink Observatory Lite Black 4x120mm ARGB Vidrio Templado\r', 'descripcion', 'Gabinete', NULL, 3, 12250),
(49, 'Kolink', 'Gabinete Kolink Inspire K6 ARGB Micro ATX\r', 'descripcion', 'Gabinete', NULL, 34, 8150),
(50, 'Kolink', 'Gabinete Kolink Refine RGB Vidrio Templado\r', 'descripcion', 'Gabinete', NULL, 4656, 11100),
(51, 'ASUS', 'Fuente ASUS TUF 550B 80 Plus Bronze 550W\r', 'descripcion', 'Fuente', NULL, 45, 15530),
(52, 'ASUS', 'Fuente ASUS ROG STRIX 850G 80 Plus Gold 850W Full Modular\r', 'descripcion', 'Fuente', NULL, 54, 15530),
(53, 'ASUS', 'Fuente ASUS TUF 750B 80 Plus Bronze 750W\r', 'descripcion', 'Fuente', NULL, 3522, 21670),
(54, 'Cooler Master', 'Fuente Cooler Master ELITE V3 500W\r', 'descripcion', 'Fuente', NULL, 234, 7440),
(55, 'Cooler Master', 'Fuente Cooler Master MWE V2 750W 80 Plus Bronze\r', 'descripcion', 'Fuente', NULL, 345, 19560),
(56, 'Cooler Master', 'Fuente Cooler Master MWE 850W 80+ Gold Full Modular\r', 'descripcion', 'Fuente', NULL, 2345, 36000),
(57, 'Kolink', 'Fuente Gigabyte 550W 80 Plus Bronze P550B\r', 'descripcion', 'Fuente', NULL, 2345, 12200),
(58, 'Kolink', 'Fuente Gigabyte 850W 80 Plus Gold Full Modular P850GM\r', 'descripcion', 'Fuente', NULL, 89, 23790),
(59, 'Kolink', 'Fuente Gigabyte 1000W 80 Plus Gold Full Modular P1000GM\r', 'descripcion', 'Fuente', NULL, 576, 40400);

INSERT INTO usuarios(`id_usuario`, `usuario`, `password`, `habilitado`) VALUES ('1', 'adminadmin', 'j@mon2022', true);

INSERT INTO `categorias` (`nombre`) values
( 'Almacenamiento'),
( 'Memoria'),
( 'Microprocesador'),
( 'Cooler'),
( 'Placa'),
( 'Gabinete'),
( 'Fuente')


INSERT INTO `marcas`(`nombre`) values
('Western Digital'),
('Team'),
('Hikvision y PNY'),
('Geil'),
('Patriot'),
('Adata'),
('INTEL'),
('Master Hype'),
('ID-Cooling'),
('Deepcool'),
('ASUS'),
('Asrock'),
('Gigabyte'),
('Aerocool'),
('Cooler Master'),
('Kolink');

INSERT INTO tipo_marca(`tipo`,`marca`) values (1,1),(1,2),(1,3);
