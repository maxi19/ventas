-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: mercado
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorias` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (1,'Almacenamiento'),(2,'Memoria'),(3,'Microprocesador'),(4,'Cooler'),(5,'Placa'),(6,'Gabinete'),(7,'Fuente'),(8,'Sin categoria');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marcas`
--

DROP TABLE IF EXISTS `marcas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marcas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(800) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marcas`
--

LOCK TABLES `marcas` WRITE;
/*!40000 ALTER TABLE `marcas` DISABLE KEYS */;
INSERT INTO `marcas` VALUES (1,'Western Digital'),(2,'Team'),(3,'Hikvision y PNY'),(4,'Geil'),(5,'Patriot'),(6,'Adata'),(7,'INTEL'),(8,'Master Hype'),(9,'ID-Cooling'),(10,'Deepcool'),(11,'ASUS'),(12,'Asrock'),(13,'Gigabyte'),(14,'Aerocool'),(15,'Cooler Master'),(16,'Kolink'),(17,'Sin marca');
/*!40000 ALTER TABLE `marcas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido`
--

DROP TABLE IF EXISTS `pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedido` (
  `id` int NOT NULL AUTO_INCREMENT,
  `identificador` varchar(50) NOT NULL,
  `estado` varchar(20) DEFAULT NULL,
  `monto` int NOT NULL DEFAULT '0',
  `email` varchar(100) DEFAULT NULL,
  `telefono` varchar(30) DEFAULT NULL,
  `factura` varchar(100) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `cp` varchar(100) DEFAULT NULL,
  `fecha` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido`
--

LOCK TABLES `pedido` WRITE;
/*!40000 ALTER TABLE `pedido` DISABLE KEYS */;
INSERT INTO `pedido` VALUES (3,'443A34531F','PENDIENTE_ENTREGA',30023,'ninguno','ninguno','00000001-0000001','ninguno','ninguno','2024-09-09'),(4,'FD6451DHHA','PENDIENTE_ENTREGA',15046,'ninguno','ninguno','00000001-0000001','ninguno','ninguno','2024-09-09'),(5,'1645G3FE53','PENDIENTE_ENTREGA',45068,'ninguno','ninguno','00000001-0000001','ninguno','ninguno','2024-09-10'),(6,'22G5HHFB4E','PENDIENTE_ENTREGA',15000,'ninguno','ninguno','00000001-0000001','ninguno','ninguno','2024-09-10'),(7,'FF343EE46D','PENDIENTE_ENTREGA',30000,'ninguno','ninguno','00000001-0000001','ninguno','ninguno','2024-09-10'),(8,'FBH12C4BAG','PENDIENTE_ENTREGA',34,'ninguno','ninguno','00000001-0000001','ninguno','ninguno','2024-09-10'),(9,'2133AF66D5','PENDIENTE_ENTREGA',23,'ninguno','ninguno','00000001-0000001','ninguno','ninguno','2024-09-10');
/*!40000 ALTER TABLE `pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_marca` int NOT NULL,
  `titulo` varchar(30) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `id_categoria` int DEFAULT NULL,
  `stock` int NOT NULL,
  `precio` double NOT NULL,
  `origen` varchar(15) DEFAULT NULL,
  `portada` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (8,2,'Disco rigido SSD Team 240gb','Disco rigido SSD Team 240gb','Disco Solido SSD Team 240GB T-Force Vulcan Z 540MB/s',1,68,15000,'China',1),(20,5,'Verdaura','dadasdsadasdsa','dewdqfefwefweew',4,17,23,'',1),(21,1,'Verdaura','dadasdsadasdsa','dewdqfefwefweew',1,20,23,'',1),(22,1,'dsadsadsadsa','dasdaasda','dsadadasdsadsa',1,194,23,'',1),(23,1,'dsadsadsadsa','dasdaasda','dsadadasdsadsa',1,199,23,'',1),(24,5,'Verdaura','fideos','4rfrefrefrefrefreferf',3,40,34,'',1),(27,8,'producto 2','producto 2','dsdsfsdfdsfsdsffsdfdsdsf',5,200,100,'',1),(28,1,'producto 2','producto 2','dsdsfsdfdsfsdsffsdfdsdsf',1,200,100,'',0),(39,10,'producto 2','sqwsqwsqwsqwsqwsqws','Sin descripcion',6,23,200,'',0),(40,9,'prueba 2024','prueba 2024','Sin descripcion',6,100,23,'',0);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id_usuario` int NOT NULL AUTO_INCREMENT,
  `usuario` varchar(50) NOT NULL,
  `password` varchar(45) NOT NULL,
  `habilitado` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'admin','j@mon2022',1);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ventas`
--

DROP TABLE IF EXISTS `ventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ventas` (
  `id_ventas` int NOT NULL AUTO_INCREMENT,
  `factura` varchar(45) NOT NULL,
  `producto` int NOT NULL,
  `cantidad` int NOT NULL,
  `importe` int NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `direccion` varchar(45) NOT NULL,
  `total` int NOT NULL,
  `fecha` varchar(45) NOT NULL,
  `pago` int NOT NULL,
  `identificador` varchar(50) NOT NULL,
  PRIMARY KEY (`id_ventas`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ventas`
--

LOCK TABLES `ventas` WRITE;
/*!40000 ALTER TABLE `ventas` DISABLE KEYS */;
INSERT INTO `ventas` VALUES (71,'1',8,2,30000,'ivan pineda ivan pineda','rodriguz',0,'2024-09-09',1,'443A34531F'),(72,'1',20,1,23,'ivan pineda ivan pineda','rodriguz',0,'2024-09-09',1,'443A34531F'),(73,'1',8,1,15000,'JOSE MAXIMILIANO JOSE MAXIMILIANO','rodriguz 1212',0,'2024-09-09',1,'FD6451DHHA'),(74,'1',21,1,23,'JOSE MAXIMILIANO JOSE MAXIMILIANO','rodriguz 1212',0,'2024-09-09',1,'FD6451DHHA'),(75,'1',22,1,23,'JOSE MAXIMILIANO JOSE MAXIMILIANO','rodriguz 1212',0,'2024-09-09',1,'FD6451DHHA'),(76,'1',24,2,68,'diego maradona diego maradona','selada 2020',0,'2024-09-10',1,'1645G3FE53'),(77,'1',8,3,45000,'diego maradona diego maradona','selada 2020',0,'2024-09-10',1,'1645G3FE53'),(78,'1',8,1,15000,'daniel cayoja daniel cayoja','sarsa10',0,'2024-09-10',1,'22G5HHFB4E'),(79,'1',8,2,30000,'esto es prueba esto es prueba','nada de nada',0,'2024-09-10',1,'FF343EE46D'),(80,'1',24,1,34,'messi messi','nada de nada',0,'2024-09-10',1,'FBH12C4BAG'),(81,'1',22,1,23,'JOSE MAXIMILIANO JOSE MAXIMILIANO','rodriguz',0,'2024-09-10',1,'2133AF66D5');
/*!40000 ALTER TABLE `ventas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'mercado'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-10 11:54:33
