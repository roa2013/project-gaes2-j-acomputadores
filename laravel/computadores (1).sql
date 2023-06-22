CREATE DATABASE  IF NOT EXISTS `computadores` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `computadores`;
-- MySQL dump 10.13  Distrib 5.7.24, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: computadores
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.28-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `administrador`
--

DROP TABLE IF EXISTS `administrador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `administrador` (
  `id_administrador` int(11) NOT NULL,
  `usuarios_id_usuario` int(11) NOT NULL,
  `roles_id_rol` int(11) NOT NULL,
  PRIMARY KEY (`id_administrador`),
  KEY `fkadministrador_usuario` (`usuarios_id_usuario`),
  KEY `fkrol_usuario` (`roles_id_rol`),
  CONSTRAINT `fkadministrador_usuario` FOREIGN KEY (`usuarios_id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fkrol_usuario` FOREIGN KEY (`roles_id_rol`) REFERENCES `roles` (`id_rol`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrador`
--

LOCK TABLES `administrador` WRITE;
/*!40000 ALTER TABLE `administrador` DISABLE KEYS */;
INSERT INTO `administrador` VALUES (1,1,2);
/*!40000 ALTER TABLE `administrador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calificacion`
--

DROP TABLE IF EXISTS `calificacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calificacion` (
  `id_calificacion` int(11) NOT NULL,
  `nombre_proveedor` varchar(50) NOT NULL,
  `comentarios` varchar(45) NOT NULL,
  `estrellas_C` int(5) NOT NULL,
  `proveedor_id_proveedor` int(11) NOT NULL,
  PRIMARY KEY (`id_calificacion`),
  KEY `fkcalificacion_proveedor` (`proveedor_id_proveedor`),
  CONSTRAINT `fkcalificacion_proveedor` FOREIGN KEY (`proveedor_id_proveedor`) REFERENCES `proveedor` (`id_proveedor`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calificacion`
--

LOCK TABLES `calificacion` WRITE;
/*!40000 ALTER TABLE `calificacion` DISABLE KEYS */;
INSERT INTO `calificacion` VALUES (3001,'Jose Joaquin Castro Martinez','ppp',4,800),(3002,'Brayan Steven Vargas','ppp',3,801),(3003,'Juan Camilo Cardenas','ppp',2,802),(3004,'Jose David Martinez','ppp',4,803),(3005,'Juan Felipe Carrillo Rojas','ppp',5,804),(3006,'Santiago Jimenez Espinosa','ppp',5,820),(3007,'Eddy Joel Espitia Cambindo','ppp',4,825),(3008,'Lizeth Daniela Espitia Ruiz','ppp',3,826),(3009,'Julian Eduardo Capera Torres','ppp',2,827),(3010,'Jasneidy Estrada Pinilla','ppp',1,828),(3011,'pedro picapiedra romero ','ppp',4,829),(3012,'Carlos LeÃ³n bravo ','ppp',5,830),(3013,'Juan David Guerrero ','ppp',2,831),(3014,'Pablo acacias meta ','ppp',1,832);
/*!40000 ALTER TABLE `calificacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categorias` (
  `id_categoria` int(11) NOT NULL,
  `nombre` varchar(35) NOT NULL,
  PRIMARY KEY (`id_categoria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (1,'Impresoras'),(2,'Memorias Ram'),(3,'Discos duro'),(4,'Monitores'),(5,'Teclados'),(6,'Mause Gamer'),(7,'Memorias USB'),(8,'Audifonos'),(9,'Microfonos'),(10,'Parlantes'),(11,'Disparadores'),(12,'Graficos'),(13,'Chasis'),(14,'FUENTE DE PODER'),(15,'Camaras');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cliente` (
  `id_cliente` int(11) NOT NULL,
  `usuarios_id_usuario` int(11) NOT NULL,
  `roles_id_rol` int(11) NOT NULL,
  `direccioncliente_id_direccionCk` int(11) NOT NULL,
  PRIMARY KEY (`id_cliente`),
  KEY `fkcliente_usuarios` (`usuarios_id_usuario`),
  KEY `fkrol_clientes` (`roles_id_rol`),
  KEY `fkdireccion_cliente` (`direccioncliente_id_direccionCk`),
  CONSTRAINT `fkcliente_usuarios` FOREIGN KEY (`usuarios_id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fkdireccion_cliente` FOREIGN KEY (`direccioncliente_id_direccionCk`) REFERENCES `direccioncliente` (`id_direccionC`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fkrol_clientes` FOREIGN KEY (`roles_id_rol`) REFERENCES `roles` (`id_rol`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (2,3,1,2),(3,4,1,3),(4,5,1,4),(5,6,1,5),(6,7,1,6),(7,8,1,7),(8,9,1,8),(9,10,1,9),(10,11,1,10),(11,12,1,11),(12,13,1,12),(13,14,1,13),(14,15,1,14),(15,16,1,15),(16,17,1,16),(17,18,1,17),(18,19,1,18),(19,20,1,19),(20,21,1,20),(21,22,1,21),(22,23,1,22),(23,24,1,23),(24,25,1,24),(25,26,1,25),(26,27,1,26),(27,28,1,27),(28,29,1,28),(29,30,1,29),(30,31,1,30),(31,32,1,31),(32,33,1,32),(33,34,1,33),(34,35,1,34),(35,36,1,35),(36,37,1,36),(37,38,1,37),(38,39,1,38),(39,40,1,39),(40,41,1,40),(41,42,1,41),(42,43,1,42),(43,44,1,43),(44,45,1,44),(45,46,1,45),(46,47,1,46),(47,48,1,47),(48,49,1,48),(49,50,1,49),(50,51,1,50);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `direccioncliente`
--

DROP TABLE IF EXISTS `direccioncliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `direccioncliente` (
  `id_direccionC` int(11) NOT NULL,
  `calle` varchar(45) DEFAULT NULL,
  `localidad` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_direccionC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `direccioncliente`
--

LOCK TABLES `direccioncliente` WRITE;
/*!40000 ALTER TABLE `direccioncliente` DISABLE KEYS */;
INSERT INTO `direccioncliente` VALUES (2,'Carrera 56A No. 51 - 81','fontibon'),(3,'Carrera 22 No. 17-31','Chapinero'),(4,'Carrera 54 No. 68 - 80 Barrio el Prado','kenedy'),(5,'Calle 59 No. 27 - 35 Barrio GalÃ¡n','Ciudad Bolivar'),(6,'Carrera 10A No. 20 - 40 Edificio El ClarÃ­n','San Cristobal'),(7,'Carrera 8 No. 20 - 59','San Cristobal'),(8,'Calle 20 No. 22 - 27','La candelaria'),(9,'Carrera 8a No. 7 - 88 /94 Barrio La Estrella','usme'),(10,'Carrera 5 No. 3 -74 centro','Teusaquillo'),(11,'Calle 15 No. 9 - 56 centro','Engativa'),(12,'Calle 25 No. 4 - 38','San Cristobal'),(13,'Calle 28 No. 8 - 69 CENTRO','Teusaquillo'),(14,'Carrera 7A No. 32 - 63 piso 2','Tunjuelito'),(15,'Calle 7 No. 5 - 25 Edificio Segunda','Tunjuelito'),(16,'Carrera 9 No. 7 - 34','kenedy'),(17,'Calle 20 No. 3 - 22','San Cristobal'),(18,'Calle 33B No. 38 - 42 Barrio Barzal','kenedy'),(19,'Calle 16 No. 23 - 57 piso 4','Rafael uribe U'),(20,'Calle 12 No. 4 - 19','Bosa'),(21,'Avenida 19 No. 98-03, sexto piso','La candelaria'),(22,'Calle 53 No 10-60/46, Piso 2','Kennedy'),(23,'Calle 10 # 5-51','Tunjuelito'),(24,'Avenida Calle 26 No 59-51 Edificio Argos','San Cristobal'),(25,'Calle 9 # 9 â€“ 62, Leticia, Barrio Centro','Rafael uribe U'),(26,'Calle 19 # 80A-40. Barrio BelÃ©n La Nubia','Tunjuelito'),(27,'Carrera 21 # 17 -63','kenedy'),(28,'Carrera 42 # 54-77 Barrio El Recreo','La candelaria'),(29,'Calle 100 # 11B-27 BogotÃ¡','Suba'),(30,'Carrera 20 B # 29-18. Barrio Pie de la Popa.','San Cristobal'),(31,'Transversal 9 a No. 29 - 29 Barrio Maldonado','Suba'),(32,'Calle 53 # 25A-35','usme'),(33,'Carrera 20 B # 29-18. Barrio Pie de la Popa.','Bosa'),(34,'Calle 4 norte # 10B-66 Barrio Modelo','San Cristobal'),(35,'carrera 8 #15Âª-19, Locales comerciales Santo','Rafael uribe U'),(36,'Calle 28 # 2-27 Barrio Centro','kenedy'),(37,'Calle 25 # 6-08','Rafael uribe U'),(38,'Calle 10 # 8-07','usme'),(39,'Carrera 12 No. 19-00 Local 18','usme'),(40,'Calle 5 # 4-48 Barrio Centro','Tunjuelito'),(41,'Calle 16 # 3-28','kenedy'),(42,'Calle 22 # 13 â€“ A 88 Barrio Los Alcazare','Ciudad Bolivar'),(43,'Calle 37 # 42-12','Suba'),(44,'Calle 17 # 29-70','Engativa'),(45,'Calle 8 # 7-40 Centro','usme'),(46,'Avenida 1 # 28-57','Antonio NariÃ±o'),(47,'Avenida 30 de agosto # 26-37','Ciudad Bolivar'),(48,'Carrera 7 # 2-70 Sector Swamp Ground','Rafael uribe U'),(49,'Carrera 10 # 3-92','kenedy'),(50,'Calle 20 # 24-05 Barrio Centro','Rafael uribe U');
/*!40000 ALTER TABLE `direccioncliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `direccionproveedor`
--

DROP TABLE IF EXISTS `direccionproveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `direccionproveedor` (
  `id_direccionP` int(11) NOT NULL,
  `calle` varchar(50) NOT NULL,
  `localidad` varchar(50) NOT NULL,
  PRIMARY KEY (`id_direccionP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `direccionproveedor`
--

LOCK TABLES `direccionproveedor` WRITE;
/*!40000 ALTER TABLE `direccionproveedor` DISABLE KEYS */;
INSERT INTO `direccionproveedor` VALUES (2001,'Calle 72 #10-23','engativa '),(2002,'Carrera 11 #45-67','suba '),(2003,'Avenida Caracas #22-45','bosa '),(2004,'Calle 94 #15-10','FontibÃ³n '),(2005,'Carrera 7 #32-50','San Cristobal'),(2006,'Avenida Suba #100-18','UsaquÃ©n '),(2007,'Calle 63 #17-32','tunal '),(2008,'Carrera 15 #50-12','soacha '),(2009,'Avenida BoyacÃ¡ #80-29','chapinero '),(2010,'Calle 116 #19-45','salitre '),(2011,'Carrera 9 #22-67','Teusaquilo '),(2012,'Avenida Primero de Mayo #34-21','salitre '),(2013,'Calle 68 #25-11','tunjuelito'),(2014,'Carrera 13 #48-73','kennedy '),(2015,'Avenida 19 #72-84','engativa'),(2016,'Calle 100 #14-34','fontibon'),(2017,'Carrera 5 #38-56','centro'),(2018,'Avenida Circunvalar #82-10','fotibon '),(2019,'Calle 72 #21-43','usaquen'),(2020,'Carrera 11 #55-78','suba'),(2021,'Avenida Caracas #27-56','ciudad bolivar'),(2022,'Calle 94 #19-12','UsaquÃ©n'),(2023,'Carrera 7 #40-64','kennedy '),(2024,'Avenida Suba #105-30','salitre '),(2025,'Calle 63 #21-18','chapinero '),(2026,'Carrera 15 #52-29','usaquen'),(2027,'Avenida BoyacÃ¡ #85-17','soacha'),(2028,'Calle 116 #23-55','suba'),(2029,'Carrera 9 #25-70','ciudad bolivar'),(2030,'Avenida Primero de Mayo #40-23','20 de julio'),(2031,'Calle 68 #28-65','usaquen '),(2032,'Carrera 13 #52-81','tesaquillo'),(2033,'Avenida 19 #76-92','usme'),(2034,'Calle 100 #16-28','kennedy '),(2035,'Carrera 5 #42-60','suba'),(2036,'Avenida Circunvalar #88-17','20 de julio '),(2037,'Calle 72 #27-38','saocha '),(2038,'Carrera 11 #60-79','engativa'),(2039,'Avenida Caracas #32-45','kennedy'),(2040,'Calle 94 #22-15','salitre '),(2041,'Carrera 7 #45-68','tunjuelito'),(2042,'Avenida Suba #110-23','tunal'),(2043,'Calle 63 #25-10','chapinero'),(2044,'Carrera 15 #54-12','tunal '),(2045,'Avenida BoyacÃ¡ #90-29','Usme ');
/*!40000 ALTER TABLE `direccionproveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `domicilios`
--

DROP TABLE IF EXISTS `domicilios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `domicilios` (
  `id_domicilio` int(11) NOT NULL,
  `fecha_domicilio` datetime NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `ordenservicio_id_ordenservicio` int(11) NOT NULL,
  PRIMARY KEY (`id_domicilio`),
  KEY `fkdomicilio_ordenservicio` (`ordenservicio_id_ordenservicio`),
  CONSTRAINT `fkdomicilio_ordenservicio` FOREIGN KEY (`ordenservicio_id_ordenservicio`) REFERENCES `ordenservicio` (`id_ordenservicio`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `domicilios`
--

LOCK TABLES `domicilios` WRITE;
/*!40000 ALTER TABLE `domicilios` DISABLE KEYS */;
INSERT INTO `domicilios` VALUES (5001,'2023-02-04 00:00:00',8,'Calle 20 No. 22 - 27',301),(5002,'2023-02-18 00:00:00',17,'Calle 20 No. 3 - 22',302),(5003,'2023-02-22 00:00:00',22,'Calle 53 No 10-60/46, Piso 2',303),(5004,'2023-02-28 00:00:00',13,'Calle 28 No. 8 - 69 CENTRO',304),(5005,'2023-03-01 00:00:00',15,'Calle 7 No. 5 - 25 Edificio Segunda',305),(5006,'2023-03-06 00:00:00',40,'Calle 5 # 4-48 Barrio Centro',306),(5007,'2023-03-14 00:00:00',35,'carrera 8 #15ª-19, Locales comerciales Santo Domin',307),(5008,'2023-03-20 00:00:00',25,'Calle 9 # 9 – 62, Leticia, Barrio Centro',308),(5009,'2023-03-25 00:00:00',11,'Calle 15 No. 9 - 56 centro',309),(5010,'2023-04-15 00:00:00',5,'Calle 59 No. 27 - 35 Barrio Galán',310),(5011,'2023-04-19 00:00:00',20,'Calle 12 No. 4 - 19',311),(5012,'2023-04-20 00:00:00',30,'Carrera 20 B # 29-18. Barrio Pie de la Popa.',312),(5013,'2023-04-24 00:00:00',44,'Calle 17 # 29-70',313),(5014,'2023-04-27 00:00:00',16,'Carrera 9 No. 7 - 34',314);
/*!40000 ALTER TABLE `domicilios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entradas`
--

DROP TABLE IF EXISTS `entradas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entradas` (
  `id_entrada` int(11) NOT NULL,
  `fecha_entrada` date NOT NULL,
  `productos_id_producto` int(11) NOT NULL,
  PRIMARY KEY (`id_entrada`),
  KEY `fkproducto_entradas` (`productos_id_producto`),
  CONSTRAINT `fkproducto_entradas` FOREIGN KEY (`productos_id_producto`) REFERENCES `productos` (`id_producto`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entradas`
--

LOCK TABLES `entradas` WRITE;
/*!40000 ALTER TABLE `entradas` DISABLE KEYS */;
INSERT INTO `entradas` VALUES (8001,'2023-04-29',5001),(8002,'2023-04-30',5002),(8003,'2023-05-01',5003),(8004,'2023-05-02',5004),(8005,'2023-05-03',5005),(8006,'2023-05-04',5006),(8007,'2023-05-05',5007),(8008,'2023-05-06',5008),(8009,'2023-05-07',5009),(8010,'2023-05-08',5010),(8011,'2023-05-09',5011),(8012,'2023-05-10',5012),(8013,'2023-05-11',5013),(8014,'2023-05-12',5014),(8015,'2023-05-13',5015),(8016,'2023-05-14',5016),(8017,'2023-05-15',5017),(8018,'2023-05-16',5018),(8019,'2023-05-17',5019),(8020,'2023-05-18',5020),(8021,'2023-05-19',5021),(8022,'2023-05-20',5022),(8023,'2023-05-21',5023),(8024,'2023-05-22',5024),(8025,'2023-05-22',5025),(8026,'2023-05-22',5026),(8027,'2023-05-22',5027),(8028,'2023-05-22',5028),(8029,'2023-05-22',5029),(8030,'2023-05-23',5030),(8031,'2023-05-24',5031),(8032,'2023-05-25',5032),(8033,'2023-05-26',5033),(8034,'2023-05-27',5034),(8035,'2023-05-28',5035),(8036,'2023-05-29',5036),(8037,'2023-05-30',5037),(8038,'2023-05-31',5038),(8039,'2023-06-01',5039),(8040,'2023-06-02',5040),(8041,'2023-06-03',5041),(8042,'2023-06-04',5042),(8043,'2023-06-05',5043),(8044,'2023-06-06',5044),(8045,'2023-06-07',5045),(8046,'2023-06-08',5046),(8047,'2023-06-09',5047),(8048,'2023-06-10',5048),(8049,'2023-06-11',5049),(8050,'2023-06-12',5050),(8051,'2023-06-12',5051),(8052,'2023-06-12',5052),(8053,'2023-06-12',5053);
/*!40000 ALTER TABLE `entradas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equipos`
--

DROP TABLE IF EXISTS `equipos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `equipos` (
  `id_equipo` int(11) NOT NULL,
  `fecha_entrada` date NOT NULL,
  `marca` varchar(25) NOT NULL,
  `tecnicos_id_tecnico` int(11) NOT NULL,
  `cliente_id_cliente` int(11) NOT NULL,
  PRIMARY KEY (`id_equipo`),
  KEY `fkequipo_clientes` (`cliente_id_cliente`),
  KEY `fkequipo_tecnico` (`tecnicos_id_tecnico`),
  CONSTRAINT `fkequipo_clientes` FOREIGN KEY (`cliente_id_cliente`) REFERENCES `cliente` (`id_cliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fkequipo_tecnico` FOREIGN KEY (`tecnicos_id_tecnico`) REFERENCES `tecnicos` (`id_tecnico`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipos`
--

LOCK TABLES `equipos` WRITE;
/*!40000 ALTER TABLE `equipos` DISABLE KEYS */;
INSERT INTO `equipos` VALUES (4002,'2023-04-25','ADATA',1,2),(4003,'2023-05-04','ICORE',1,3),(4004,'2023-05-08','AeroCool',1,4),(4005,'2023-05-15','ASUS',1,5),(4006,'2023-05-16','WIT',1,6),(4007,'2023-05-17','EPSON',1,7),(4008,'2023-05-18','GAMEMAX',1,8),(4009,'2023-05-19','EPSON',1,9),(4010,'2023-05-20','SONY',1,10),(4011,'2023-05-21','SONY',1,11),(4012,'2023-05-22','KINGSTON',1,12),(4013,'2023-05-23','INTEL',1,13),(4014,'2023-05-24','LOGITECH',1,14),(4015,'2023-05-05','ADATA',1,15);
/*!40000 ALTER TABLE `equipos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estadogarantias`
--

DROP TABLE IF EXISTS `estadogarantias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estadogarantias` (
  `id_estadogarantia` int(11) NOT NULL,
  `estado` varchar(30) NOT NULL,
  PRIMARY KEY (`id_estadogarantia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estadogarantias`
--

LOCK TABLES `estadogarantias` WRITE;
/*!40000 ALTER TABLE `estadogarantias` DISABLE KEYS */;
INSERT INTO `estadogarantias` VALUES (1,'Iniciado'),(2,'En proceso '),(3,'Finalizado');
/*!40000 ALTER TABLE `estadogarantias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estadoseguimiento`
--

DROP TABLE IF EXISTS `estadoseguimiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estadoseguimiento` (
  `id_estadoseguimiento` int(11) NOT NULL,
  `fecha_ingreso` date NOT NULL,
  `fecha_salida` date NOT NULL,
  PRIMARY KEY (`id_estadoseguimiento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estadoseguimiento`
--

LOCK TABLES `estadoseguimiento` WRITE;
/*!40000 ALTER TABLE `estadoseguimiento` DISABLE KEYS */;
INSERT INTO `estadoseguimiento` VALUES (900,'2023-04-29','2023-05-03'),(901,'2023-05-02','2023-05-10'),(902,'2023-05-10','2023-05-11'),(903,'2023-05-11','2023-05-16'),(904,'2023-05-16','2023-05-17'),(905,'2023-05-17','2023-05-19'),(906,'2023-05-20','2023-05-21'),(907,'2023-05-21','2023-05-22'),(908,'2023-04-01','2023-04-25'),(909,'2023-04-25','2023-05-08'),(910,'2023-04-28','2023-07-30'),(911,'2023-05-13','2023-06-26'),(912,'2023-05-22','2023-08-01'),(913,'2023-05-27','2023-06-11');
/*!40000 ALTER TABLE `estadoseguimiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ficha_tecnica`
--

DROP TABLE IF EXISTS `ficha_tecnica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ficha_tecnica` (
  `id_ficha` int(11) NOT NULL,
  `nombre_empresa` varchar(35) NOT NULL,
  `nombre_producto` varchar(50) NOT NULL,
  `nombre_cliente` varchar(50) NOT NULL,
  `descripcion` varchar(60) NOT NULL,
  `imagenes` varchar(100) NOT NULL,
  `fecha_realizacion` date NOT NULL,
  `garantias_id_garantia` int(11) NOT NULL,
  PRIMARY KEY (`id_ficha`),
  KEY `fkficha_garantia` (`garantias_id_garantia`),
  CONSTRAINT `fkficha_garantia` FOREIGN KEY (`garantias_id_garantia`) REFERENCES `garantias` (`id_garantia`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ficha_tecnica`
--

LOCK TABLES `ficha_tecnica` WRITE;
/*!40000 ALTER TABLE `ficha_tecnica` DISABLE KEYS */;
INSERT INTO `ficha_tecnica` VALUES (600,'J.A computadores','Impresora epson L321','Yeison Lafuente','Impresora a color multifunción Epson EcoTank L3210 negra 110','https://http2.mlstatic.com/D_NQ_NP_914517-MLA48231809799_112021-O.webp','2023-04-12',200),(601,'J.A computadores','Pantalla Led 32\"','Brayan Poveda','Monitor De Pantalla Iluminada Led De 32 Pulgadas De La Serie','https://http2.mlstatic.com/D_NQ_NP_691739-MCO31460041425_072019-O.webp','2023-02-14',201),(602,'J.A computadores','Teclado Gamer','Leydi Cabanillas','Teclado gamer Redragon Kumara K552 QWERTY Outemu Red español','https://http2.mlstatic.com/D_NQ_NP_636746-MLA52350707355_112022-O.webp','2023-01-25',202),(603,'J.A computadores','PC APPLE','Johan Andujar','iMac Apple Chip M1 2021 24 4.5k 8gb Ram 512gb Ssd Nuevo','https://http2.mlstatic.com/D_NQ_NP_601032-MCO69873014674_062023-O.webp','2023-02-10',203),(604,'J.A computadores','PANTALLA LED CURVO 45\"','Pedro Manso','Monitor Janus Led 32 Gamer 165hz Curvo Pantalla Giratoria','https://http2.mlstatic.com/D_NQ_NP_631655-MCO69128355231_042023-O.webp','2022-12-08',204),(605,'J.A computadores','PC DELL','Carlos Padilla','Pc Dell Vostro Sff 3681 Ci3-10100gn 8gb, 1tb, 256gb Ssd 18,5','https://http2.mlstatic.com/D_NQ_NP_774580-MCO52578036293_112022-O.webp','2023-04-30',205),(606,'J.A computadores','IMPRESA HP Smart Tank 530','Juan Santana','Impresora a color multifunción HP Smart Tank 530 con wifi ne','https://http2.mlstatic.com/D_NQ_NP_834902-MLA45244693204_032021-O.webp','2022-05-05',206),(607,'J.A computadores','PC ASUS','Monica De las Heras','Computador Portátil Asus Core I5 8gb Ram 256gb Ssd W10','https://http2.mlstatic.com/D_NQ_NP_788487-MLU69269877144_052023-O.webp','2022-09-01',207),(608,'J.A computadores','TECLADO GAMER REDRAGON','Saray Quintero','Teclado gamer Redragon Harpe Pro K503A RGB QWERTY español co','https://http2.mlstatic.com/D_NQ_NP_758964-MLA48955519097_012022-O.webp','2023-03-13',208),(609,'J.A computadores','iImpresora Multifunción Hp Ink Tank 415','Camila Fuentes','Impresora a color multifunción HP Ink Tank Wireless 415 con ','https://http2.mlstatic.com/D_NQ_NP_747959-MLA51736489390_092022-O.webp','2023-02-16',209);
/*!40000 ALTER TABLE `ficha_tecnica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fichamantenimiento`
--

DROP TABLE IF EXISTS `fichamantenimiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fichamantenimiento` (
  `id_fichatecnica` int(11) NOT NULL,
  `descripcion_fallas` varchar(50) NOT NULL,
  `total_pagar` int(11) NOT NULL,
  `fecha_salida` datetime NOT NULL,
  `administrador_id_administrador` int(11) NOT NULL,
  `mantenimientos_id_mantenimiento` int(11) NOT NULL,
  PRIMARY KEY (`id_fichatecnica`),
  KEY `fkadministrador_ficha` (`administrador_id_administrador`),
  KEY `fkmantenimientos_ficha` (`mantenimientos_id_mantenimiento`),
  CONSTRAINT `fkadministrador_ficha` FOREIGN KEY (`administrador_id_administrador`) REFERENCES `administrador` (`id_administrador`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fkmantenimientos_ficha` FOREIGN KEY (`mantenimientos_id_mantenimiento`) REFERENCES `mantenimientos` (`id_mantenimiento`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fichamantenimiento`
--

LOCK TABLES `fichamantenimiento` WRITE;
/*!40000 ALTER TABLE `fichamantenimiento` DISABLE KEYS */;
INSERT INTO `fichamantenimiento` VALUES (400,'cambiar pasta terminaca',5000,'2023-06-22 00:00:00',1,700),(401,'falta de limpieza',20000,'2023-06-23 00:00:00',1,701),(402,'daño en una memoria ram',150000,'2023-06-24 00:00:00',1,702),(403,'Falla en el sistema operativo',40000,'2023-06-25 00:00:00',1,703),(404,'Daño en la Pantalla',12000,'2023-06-26 00:00:00',1,704),(405,'limpieza general',15000,'2023-06-27 00:00:00',1,705),(406,'cambio del ventilador ',20000,'2023-06-28 00:00:00',1,706),(407,'DISPARADOR ',10000,'2023-06-29 00:00:00',1,707),(408,'Rayon en la Pantalla',50000,'2023-06-30 00:00:00',1,708),(409,'DAñO EN CHASIS ',10000,'2023-07-01 00:00:00',1,709),(410,'Daño EN EN PATALLA',20000,'2023-07-02 00:00:00',1,710);
/*!40000 ALTER TABLE `fichamantenimiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `garantias`
--

DROP TABLE IF EXISTS `garantias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `garantias` (
  `id_garantia` int(11) NOT NULL,
  `nombre_producto` varchar(45) NOT NULL,
  `descripcion` varchar(45) NOT NULL,
  `tiempo_establecido` varchar(50) NOT NULL,
  `tecnicos_id_tecnico` int(11) NOT NULL,
  `tipogarantias_id_tipogarantia` int(11) NOT NULL,
  `estadogarantias_id_estadogarantia` int(11) NOT NULL,
  PRIMARY KEY (`id_garantia`),
  KEY `fktecnico_garantia` (`tecnicos_id_tecnico`),
  KEY `fktipo_garantia` (`tipogarantias_id_tipogarantia`),
  KEY `fkestado_garantia` (`estadogarantias_id_estadogarantia`),
  CONSTRAINT `fkestado_garantia` FOREIGN KEY (`estadogarantias_id_estadogarantia`) REFERENCES `estadogarantias` (`id_estadogarantia`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fktecnico_garantia` FOREIGN KEY (`tecnicos_id_tecnico`) REFERENCES `tecnicos` (`id_tecnico`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fktipo_garantia` FOREIGN KEY (`tipogarantias_id_tipogarantia`) REFERENCES `tipogarantias` (`id_tipogarantia`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `garantias`
--

LOCK TABLES `garantias` WRITE;
/*!40000 ALTER TABLE `garantias` DISABLE KEYS */;
INSERT INTO `garantias` VALUES (200,'Impresora',' Impresora Epson L 321','10 dias habiles',1,502,1),(201,'Pantalla','Pantalla Led 32\"','30 dias habiles',1,501,3),(202,'Teclado','Teclado Gamer mecanico','15 dias habiles',1,503,2),(203,'pc ','PC APPLE ','90 dias habiles',1,501,1),(204,'pantalla','PANTALLA LED CURVO 45\"','10 dias habiles',1,501,3),(205,'pc ','PC DELL','95 dias habiles',1,501,2),(206,'impresora','IMPRESA HP Smart Tank 530','25 dias habiles',1,502,1),(207,'pc ','PC ASUS','7 dias habiles',1,501,3),(208,'teclado','TECLADO GAMER REDRAGON','100 dias habiles',1,503,1),(209,'impresora','iImpresora MultifunciÃ³n Hp Ink Tank 415 ','100 dias habiles',1,502,1);
/*!40000 ALTER TABLE `garantias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventario`
--

DROP TABLE IF EXISTS `inventario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventario` (
  `id_inventario` int(11) NOT NULL,
  `productos_id_producto` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `entradas_id_entrada` int(11) NOT NULL,
  PRIMARY KEY (`id_inventario`),
  KEY `fkproducto_inventario` (`productos_id_producto`),
  KEY `fkentrada_inventario` (`entradas_id_entrada`),
  CONSTRAINT `fkentrada_inventario` FOREIGN KEY (`entradas_id_entrada`) REFERENCES `entradas` (`id_entrada`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fkproducto_inventario` FOREIGN KEY (`productos_id_producto`) REFERENCES `productos` (`id_producto`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventario`
--

LOCK TABLES `inventario` WRITE;
/*!40000 ALTER TABLE `inventario` DISABLE KEYS */;
INSERT INTO `inventario` VALUES (1,5001,7,8001),(2,5002,33,8002),(3,5003,2,8003),(4,5004,51,8004),(5,5005,4,8005),(6,5006,7,8006),(7,5007,4,8007),(8,5008,9,8008),(9,5009,52,8009),(10,5010,19,8010),(11,5011,7,8011),(12,5012,9,8012),(13,5013,7,8013),(14,5014,6,8014),(15,5015,32,8015),(16,5016,8,8016),(17,5017,21,8017),(18,5018,2,8018),(19,5019,23,8019),(20,5020,12,8020),(21,5021,13,8021),(22,5022,14,8022),(23,5023,2,8023),(24,5024,33,8024),(25,5025,20,8025),(26,5026,15,8026),(27,5027,30,8027),(28,5028,12,8028),(29,5029,22,8029),(30,5030,51,8030),(31,5031,20,8031),(32,5032,25,8032),(33,5033,2,8033),(34,5034,5,8034),(35,5035,12,8035),(36,5036,5,8036),(37,5037,10,8037),(38,5038,8,8038),(39,5039,9,8039),(40,5040,4,8040),(41,5041,7,8041),(42,5042,12,8042),(43,5043,18,8043),(44,5044,19,8044),(45,5045,16,8045),(46,5046,23,8046),(47,5047,10,8047),(48,5048,15,8048),(49,5049,20,8049),(50,5050,8,8050),(51,5051,5,8051),(52,5052,12,8052),(53,5053,15,8053);
/*!40000 ALTER TABLE `inventario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mantenimientos`
--

DROP TABLE IF EXISTS `mantenimientos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mantenimientos` (
  `id_mantenimiento` int(11) NOT NULL,
  `estado_M` varchar(30) NOT NULL,
  `fecha_M` date NOT NULL,
  PRIMARY KEY (`id_mantenimiento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mantenimientos`
--

LOCK TABLES `mantenimientos` WRITE;
/*!40000 ALTER TABLE `mantenimientos` DISABLE KEYS */;
INSERT INTO `mantenimientos` VALUES (700,'FINALIZADO','2023-04-02'),(701,'PROCESO','2023-04-12'),(702,'INICIADO','2023-05-04'),(703,'PROCESO','2023-05-08'),(704,'INICIADO','2023-05-15'),(705,'FIINALIZADO','2023-05-16'),(706,'PROCESO','2023-05-12'),(707,'FINALIZADO','2023-05-18'),(708,'PROCESO','2023-05-19'),(709,'INICIADO','2023-05-20'),(710,'PROCESO','2023-05-21');
/*!40000 ALTER TABLE `mantenimientos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marcas`
--

DROP TABLE IF EXISTS `marcas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marcas` (
  `id_marca` int(11) NOT NULL,
  `nombre` varchar(35) NOT NULL,
  PRIMARY KEY (`id_marca`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marcas`
--

LOCK TABLES `marcas` WRITE;
/*!40000 ALTER TABLE `marcas` DISABLE KEYS */;
INSERT INTO `marcas` VALUES (50,'ADATA'),(51,'RYZEN'),(52,'ICORE'),(53,'ASUS'),(54,'LOGITECH'),(55,'KINGSTON'),(56,'INTEL'),(57,'WIT'),(58,'AeroCool'),(59,'SONY'),(60,'GAMEMAX'),(61,'EPSON'),(62,'APPLE'),(63,'DELL'),(64,'SAT'),(65,'Western Digital'),(66,'Aoas'),(67,'T-Dagger'),(68,'F92'),(69,'Artic'),(70,'Crucial'),(71,'PNY'),(72,'Iceberg'),(73,'Samsung'),(74,'SanDick'),(75,'Thermaltake'),(76,'MONSTER TECH'),(77,'AMD'),(78,'Nvidia'),(79,'Evga'),(80,'cougar'),(81,'Aerocool Advanced Technologies'),(82,'Corsair'),(83,'DELUXE'),(84,'SEISA'),(85,'SAT');
/*!40000 ALTER TABLE `marcas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordenservicio`
--

DROP TABLE IF EXISTS `ordenservicio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ordenservicio` (
  `id_ordenservicio` int(11) NOT NULL,
  `fecha_orden` datetime NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `precio_U` int(11) NOT NULL,
  `iva` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `servicios_id_servicio` int(11) NOT NULL,
  `seguimientos_id_seguimiento` int(11) NOT NULL,
  PRIMARY KEY (`id_ordenservicio`),
  KEY `fkordenservicio_servicios` (`servicios_id_servicio`),
  KEY `fkseguimientos_ordenservicio` (`seguimientos_id_seguimiento`),
  CONSTRAINT `fkordenservicio_servicios` FOREIGN KEY (`servicios_id_servicio`) REFERENCES `servicios` (`id_servicio`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fkseguimientos_ordenservicio` FOREIGN KEY (`seguimientos_id_seguimiento`) REFERENCES `seguimientos` (`id_seguimiento`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordenservicio`
--

LOCK TABLES `ordenservicio` WRITE;
/*!40000 ALTER TABLE `ordenservicio` DISABLE KEYS */;
INSERT INTO `ordenservicio` VALUES (301,'0000-00-00 00:00:00',8,'mantenimiento general',250000,0,250000,4014,6001),(302,'0000-00-00 00:00:00',17,'mantenimiento externo',90000,0,90000,4008,6002),(303,'0000-00-00 00:00:00',22,'SOFTWARE',50000,0,50000,4009,6003),(304,'0000-00-00 00:00:00',13,'mantenimiento interno',320000,0,320000,4013,6004),(305,'0000-00-00 00:00:00',15,'matenimimiento externo',120000,0,120000,4015,6005),(306,'0000-00-00 00:00:00',40,'SOFTWARE',100000,0,100000,4017,6006),(307,'0000-00-00 00:00:00',35,'matenimiento general',50000,0,50000,4023,6007),(308,'0000-00-00 00:00:00',25,'SOFTWARE',50000,0,50000,4025,6008),(309,'0000-00-00 00:00:00',11,'mantenimiento general',50000,0,50000,4029,6009),(310,'0000-00-00 00:00:00',5,'SOFTWARE',100000,0,100000,4007,6010),(311,'0000-00-00 00:00:00',20,'mantenimiento externo',150000,0,150000,4015,6011),(312,'0000-00-00 00:00:00',30,'mantenimiento  general ',50000,0,50000,4020,6012),(313,'0000-00-00 00:00:00',44,'mantenimiento externo',160000,0,160000,4022,6013),(314,'0000-00-00 00:00:00',16,'mantenimiento interno',100000,0,100000,4018,6005);
/*!40000 ALTER TABLE `ordenservicio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedidos`
--

DROP TABLE IF EXISTS `pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedidos` (
  `id_pedido` int(11) NOT NULL,
  `fecha_pedido` datetime NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `cliente_id_cliente` int(11) NOT NULL,
  PRIMARY KEY (`id_pedido`),
  KEY `fkpedidos_cliente` (`cliente_id_cliente`),
  CONSTRAINT `fkpedidos_cliente` FOREIGN KEY (`cliente_id_cliente`) REFERENCES `cliente` (`id_cliente`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos`
--

LOCK TABLES `pedidos` WRITE;
/*!40000 ALTER TABLE `pedidos` DISABLE KEYS */;
INSERT INTO `pedidos` VALUES (700,'2023-04-01 00:00:00',5001,2,19),(701,'2023-04-02 00:00:00',5007,2,2),(702,'2023-04-03 00:00:00',5002,1,3),(703,'2023-04-04 00:00:00',5007,2,5),(704,'2023-04-05 00:00:00',5008,2,13),(705,'2023-04-06 00:00:00',5009,2,6),(706,'2023-04-07 00:00:00',5010,3,7),(707,'2023-04-08 00:00:00',5011,3,4),(708,'2023-04-09 00:00:00',5012,12,9),(709,'2023-04-10 00:00:00',5013,3,10),(710,'2023-04-11 00:00:00',5014,13,11),(711,'2023-04-12 00:00:00',5015,13,12),(712,'2023-04-13 00:00:00',5016,13,13),(713,'2023-04-14 00:00:00',5017,13,14),(714,'2023-04-14 00:00:00',5018,13,7),(715,'2023-04-14 00:00:00',5019,13,18),(716,'2023-04-14 00:00:00',5020,5,8),(717,'2023-04-14 00:00:00',5021,7,22),(718,'2023-04-14 00:00:00',5022,7,25),(719,'2023-04-14 00:00:00',5023,7,50),(720,'2023-04-14 00:00:00',5024,7,41),(721,'2023-04-14 00:00:00',5025,7,6),(722,'2023-04-14 00:00:00',5026,7,33),(723,'2023-04-14 00:00:00',5027,14,20),(724,'2023-04-14 00:00:00',5037,8,36),(725,'2023-04-14 00:00:00',5038,8,21),(726,'2023-04-14 00:00:00',5039,6,8),(727,'2023-04-14 00:00:00',5042,6,4),(728,'2023-04-14 00:00:00',5043,6,5),(729,'2023-04-14 00:00:00',5044,15,15),(730,'2023-04-14 00:00:00',5045,3,45);
/*!40000 ALTER TABLE `pedidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permisos`
--

DROP TABLE IF EXISTS `permisos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permisos` (
  `id_permiso` int(11) NOT NULL,
  `nombre_permiso` varchar(25) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  PRIMARY KEY (`id_permiso`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permisos`
--

LOCK TABLES `permisos` WRITE;
/*!40000 ALTER TABLE `permisos` DISABLE KEYS */;
/*!40000 ALTER TABLE `permisos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producto_proveedor`
--

DROP TABLE IF EXISTS `producto_proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `producto_proveedor` (
  `productos_id_producto` int(11) NOT NULL,
  `proveedor_id_proveedor` int(11) NOT NULL,
  PRIMARY KEY (`productos_id_producto`,`proveedor_id_proveedor`),
  KEY `fkproducto_producto_proveedor` (`proveedor_id_proveedor`),
  CONSTRAINT `fkproducto_producto_proveedor` FOREIGN KEY (`proveedor_id_proveedor`) REFERENCES `proveedor` (`id_proveedor`),
  CONSTRAINT `fkproducto_proveedor_producto` FOREIGN KEY (`productos_id_producto`) REFERENCES `productos` (`id_producto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto_proveedor`
--

LOCK TABLES `producto_proveedor` WRITE;
/*!40000 ALTER TABLE `producto_proveedor` DISABLE KEYS */;
/*!40000 ALTER TABLE `producto_proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productos` (
  `id_producto` int(11) NOT NULL,
  `nombre_producto` varchar(35) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `marca_producto` varchar(35) NOT NULL,
  `precio_U` int(11) NOT NULL,
  `imagenes` varchar(100) NOT NULL,
  `categorias_id_categoria` int(11) NOT NULL,
  `marcas_id_marca` int(11) NOT NULL,
  PRIMARY KEY (`id_producto`),
  KEY `fkcategoria_producto` (`categorias_id_categoria`),
  KEY `fkmarcas_producto` (`marcas_id_marca`),
  CONSTRAINT `fkcategoria_producto` FOREIGN KEY (`categorias_id_categoria`) REFERENCES `categorias` (`id_categoria`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fkmarcas_producto` FOREIGN KEY (`marcas_id_marca`) REFERENCES `marcas` (`id_marca`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (5001,'Memoria Ram','Memoria Ram PortÃ¡til Adata Ddr5 32gb 4800 Mt/s','Adata',710000,'https://http2.mlstatic.com/D_NQ_NP_853586-MLU69124633495_042023-O.webp',2,50),(5002,'Disco Solido','Disco sÃ³lido SSD interno Kingston SA400S37/480G 4','Kingston',146000,'https://http2.mlstatic.com/D_NQ_NP_751939-MLA46221843872_052021-V.webp',1,55),(5003,'Disco Solido','Disco sÃ³lido SSD interno Adata Ultimate SU650 ASU','Adata',145628,'https://http2.mlstatic.com/D_NQ_NP_963406-MCO53444886907_012023-V.webp',3,50),(5004,'Pasta terminca','Pasta TÃ©rmica Disipadora Arctic Mx-4 4g Original ','Artic',34190,'https://http2.mlstatic.com/D_NQ_NP_668801-MCO51559922712_092022-V.webp',3,69),(5005,'Memoria Ram','Memoria RAM Basics color verde 16GB 1 Crucial CB16','Crucial',283500,'https://http2.mlstatic.com/D_NQ_NP_951812-MLA49064748022_022022-V.webp',11,70),(5006,'Memoria Ram','Memoria RAM XLR8 gamer color negro/rojo 8GB 1 PNY ','PNY',133600,'https://http2.mlstatic.com/D_NQ_NP_755740-MLA44739941253_012021-V.webp',2,71),(5007,'Memoria Ram','Memoria RAM XLR8 Gaming EPIC-X RGB gamer color neg','PNY',166000,'https://http2.mlstatic.com/D_NQ_NP_677059-MLA49041476800_022022-V.webp',2,71),(5008,'Memoria Ram','Memoria RAM Fury Beast gamer color negro 16GB 1 Ki','Kingston',478705,'https://http2.mlstatic.com/D_NQ_NP_625237-MLA52222796883_102022-V.webp',2,55),(5009,'Ryzen 5','Procesador Gamer Amd Ryzen 5 3600 Amd Am4','AMD',779000,'https://http2.mlstatic.com/D_NQ_NP_944615-MLA45376527337_032021-V.webp',2,77),(5010,'Ryzen 7','Procesador gamer AMD Ryzen 7 5700X 100-100000926WO','AMD',1300000,'https://http2.mlstatic.com/D_NQ_NP_894487-MLA53145808015_012023-V.webp',3,77),(5011,'Tarjeta grafica','Tarjetas GrÃ¡ficas Rx 580 8gb 256bit 2048sp Gddr5','AMD',501837,'https://http2.mlstatic.com/D_NQ_NP_660379-MLA54503703627_032023-V.webp',3,77),(5012,'Tarjeta grafica','Tarjeta De Video Nvidia Gt710 2048mb 2gb Ddr3 Hdmi','Nvidia',223155,'https://http2.mlstatic.com/D_NQ_NP_790202-MCO49759924507_042022-V.webp',12,78),(5013,'Board','Board Tarjeta Madre Pc H55 Lga1156 Socket Para Int','MONSTER TECH',246050,'https://http2.mlstatic.com/D_NQ_NP_892793-MCO48765483844_012022-V.webp',3,76),(5014,'Chasis','Chasis Caja Atx Gamer Iceberg Gear V6 Plus + 3 Ven','Iceberg',197910,'https://http2.mlstatic.com/D_NQ_NP_905740-MCO54970145168_042023-V.webp',13,72),(5015,'Chasis','Chasis Gabinete Iceberg Turbo Z8 Lite 3 Ventilador','Iceberg',233910,'https://http2.mlstatic.com/D_NQ_NP_757775-MCO45037374926_032021-V.webp',13,72),(5016,'Chasis','Gabinete Atx Media Torre Iceberg Flow Gs + 4 Fan I','Iceberg',332910,'https://http2.mlstatic.com/D_NQ_NP_944804-MCO51688147292_092022-V.webp',13,72),(5017,'Chasis','Chasis Caja Iceberg Flux Pro Rgb Vidrio Templado +','Iceberg',221900,'https://http2.mlstatic.com/D_NQ_NP_865780-MCO54293200385_032023-V.webp',13,72),(5018,'Chasis','Caja Gabinete Iceberg Crystal Max - 4 Fans + Tira ','Iceberg',589900,'https://http2.mlstatic.com/D_NQ_NP_962837-MCO48729265996_012022-V.webp',13,72),(5019,'Chasis','Caja Gabinete Iceberg Gate 9 + Vidrio Templado + 3','Iceberg',256405,'https://http2.mlstatic.com/D_NQ_NP_658485-MCO45037241712_032021-V.webp',13,72),(5020,'Combo','Kit de teclado y mouse inalÃ¡mbrico Logitech MK235','Logitech',110000,'https://http2.mlstatic.com/D_NQ_NP_961801-MLA48377493379_112021-V.webp',5,54),(5021,'Memoria USB','Memoria Usb Kingston Datatraveler Exodia 128gb Usb','Kingston',59000,'https://http2.mlstatic.com/D_NQ_NP_778047-MLA53090552905_122022-V.webp',7,55),(5022,'Memoria USB','Memoria USB Kingston DataTraveler Exodia DTX/32 32','Kingston',39000,'https://http2.mlstatic.com/D_NQ_NP_972338-MLC50775285891_072022-V.webp',7,55),(5023,'Memoria USB','Memoria Usb De 32 Gb Datatraveler 50 Kingston Usb ','Kingston',21330,'https://http2.mlstatic.com/D_NQ_NP_763380-MLA48208721576_112021-V.webp',7,55),(5024,'Memoria USB','Memoria USB Samsung FIT Plus MUF-128AB/EU 128GB 3.','Samsung',117832,'https://http2.mlstatic.com/D_NQ_NP_982165-MLA45993909064_052021-V.webp',7,73),(5025,'Memoria USB','Memoria USB SanDisk Cruzer Blade 16GB 2.0 negro y ','SanDisk',19980,'https://http2.mlstatic.com/D_NQ_NP_872268-MLA45993737914_052021-V.webp',7,74),(5026,'Memoria USB','Memoria USB Kingston DataTraveler 50 DT50 16GB 3.1','Kingston',36000,'https://http2.mlstatic.com/D_NQ_NP_934193-MLA32122998255_092019-V.webp',7,55),(5027,'Fuente poder','Fuente De Poder Thermaltake Tr2 600w','Thermaltake',245000,'https://http2.mlstatic.com/D_NQ_NP_939756-MCO54963976857_042023-V.webp',14,75),(5028,'ICORE 5','Procesador gamer Intel Core i5-11400F BX8070811400','Intel',834000,'https://http2.mlstatic.com/D_NQ_NP_981686-MLA46390081603_062021-V.webp',3,56),(5029,'Tarjeta grafica','Gtx1060 6g Tarjetas GrÃ¡ficas Pcie 16x 3.0 192 Bit','Nvidia',802492,'https://http2.mlstatic.com/D_NQ_NP_665743-CBT50129353445_052022-V.webp',12,56),(5030,'Fuente poder','Fuente De Poder Evga 600 W3 80 Plus White','Evga',350500,'https://http2.mlstatic.com/D_NQ_NP_713168-MCO49787996676_042022-V.webp',14,79),(5031,'Fuente poder','Fuente de poder para PC Cougar VTC Series CGR BS-6','Cougar',299000,'https://http2.mlstatic.com/D_NQ_NP_891492-MLA46520784904_062021-V.webp',14,80),(5032,'Fuente poder','Fuente De Poder Rgb Thermaltake Smart 600w 80 Plus','Thermaltake',304950,'https://http2.mlstatic.com/D_NQ_NP_674685-MCO40518131731_012020-V.webp',14,75),(5033,'Fuente poder','Fuente de poder para PC Aerocool Advanced Technolo','Aerocool Advanced Technologies',334900,'https://http2.mlstatic.com/D_NQ_NP_727243-MLA46521030609_062021-V.webp',14,81),(5034,'Camara','CÃ¡mara web Logitech C270 HD 30FPS color negro','Logitech',183000,'https://http2.mlstatic.com/D_NQ_NP_735127-MLA52219240184_102022-V.webp',15,54),(5035,'Mause','Mouse gamer Logitech G Series Lightsync G203 negro','Logitech',122550,'https://http2.mlstatic.com/D_NQ_NP_779763-MLA45385615296_032021-V.webp',6,54),(5036,'Audifonos','AudÃ­fonos gamer inalÃ¡mbricos Logitech G Series G','Logitech',818900,'https://http2.mlstatic.com/D_NQ_NP_760857-MLA44771394445_022021-V.webp',8,54),(5037,'Audifonos','AudÃ­fonos gamer inalÃ¡mbricos Logitech G Series G','Logitech',767000,'https://http2.mlstatic.com/D_NQ_NP_654468-MLA44771577094_022021-V.webp',8,54),(5038,'Audifonos','AudÃ­fonos gamer inalÃ¡mbricos Corsair VOID Elite ','Corsair',713000,'https://http2.mlstatic.com/D_NQ_NP_940106-MLA45259389584_032021-V.webp',8,82),(5039,'Mause','Mouse gamer Delux M700A black','Delux',49900,'https://http2.mlstatic.com/D_NQ_NP_658471-MLA46041009638_052021-V.webp',6,83),(5040,'Mause','Mouse gamer Seisa DN-A401 negro','Seisa',10693,'https://http2.mlstatic.com/D_NQ_NP_690536-MLA47442669713_092021-V.webp',6,84),(5041,'Mause','Mouse vertical recargable Delux M618 Mini jet blac','Delux',132000,'https://http2.mlstatic.com/D_NQ_NP_960487-MLA54270821623_032023-V.webp',6,83),(5042,'Camara','CÃ¡mara web Logitech C270 HD 30FPS color negro','Logitech',183000,'https://http2.mlstatic.com/D_NQ_NP_735127-MLA52219240184_102022-V.webp',15,54),(5043,'Camara','CÃ¡mara web SAT X11 HD color negro/naranja','SAT',33900,'https://http2.mlstatic.com/D_NQ_NP_831522-MLA49695293167_042022-V.webp',15,85),(5044,'ICORE 3','Procesador Intel Core I3-12100f 4.30 Ghz','Intel',730000,'https://http2.mlstatic.com/D_NQ_NP_768929-MLA53644260872_022023-V.webp',3,56),(5045,'Impresora','Impresora a color multifunciÃ³n Epson EcoTank L321','Epson',629900,'https://http2.mlstatic.com/D_NQ_NP_914517-MLA48231809799_112021-V.webp',1,61),(5046,'Impresora','Impresora a color simple funciÃ³n Epson EcoTank L1','Epson',554490,'https://http2.mlstatic.com/D_NQ_NP_928519-MLA52223273630_102022-V.webp',1,61),(5047,'Combo','Combo Gamer Teclado Y Mouse Usb','F92',39800,'https://http2.mlstatic.com/D_NQ_NP_852127-MCO52213486516_102022-V.webp',7,68),(5048,'Teclado','Teclado gamer Aoas AS-808 QWERTY inglÃ©s US color ','Aoas',112132,'https://http2.mlstatic.com/D_NQ_NP_815089-MLA47954409143_102021-V.webp',5,67),(5049,'Teclado','Teclado gamer T-Dagger Bora T-TGK315 QWERTY T-Dagg','T-Dagger',214902,'https://http2.mlstatic.com/D_NQ_NP_776868-MLA50207867103_062022-V.webp',5,66),(5050,'Disco Duro','Disco duro interno Western Digital WD Purple WD40P','Western Digital',393718,'https://http2.mlstatic.com/D_NQ_NP_719874-MLA46257006707_062021-V.webp',3,65),(5051,'Disco Duro','Disco Solido Interno Western Digital Green Sn350 4','Western Digital',179900,'https://http2.mlstatic.com/D_NQ_NP_762683-MLA54975976082_042023-V.webp',3,65),(5052,'Disco Duro','Disco Duro Western Digital Green 1 Tb Para Cctv O ','Western Digital',170100,'https://http2.mlstatic.com/D_NQ_NP_978692-MLA52611454416_112022-V.webp',3,65),(5053,'Disco Duro','Disco Duro Interno 1 Tera Uso En Pc Y Dvrs Marca W','Western Digital',165900,'https://http2.mlstatic.com/D_NQ_NP_719874-MLA46257006707_062021-V.webp',3,65);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedor`
--

DROP TABLE IF EXISTS `proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proveedor` (
  `id_proveedor` int(11) NOT NULL,
  `nombre_proveedor` varchar(45) NOT NULL,
  `correo_electronico` varchar(55) NOT NULL,
  `celular` int(11) NOT NULL,
  `direccionproveedor_id_direccionP` int(11) NOT NULL,
  PRIMARY KEY (`id_proveedor`),
  KEY `fkdireccion_proveedor` (`direccionproveedor_id_direccionP`),
  CONSTRAINT `fkdireccion_proveedor` FOREIGN KEY (`direccionproveedor_id_direccionP`) REFERENCES `direccionproveedor` (`id_direccionP`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedor`
--

LOCK TABLES `proveedor` WRITE;
/*!40000 ALTER TABLE `proveedor` DISABLE KEYS */;
INSERT INTO `proveedor` VALUES (800,'Jose Joaquin Castro Martinez','Josejoaquin@gmail.com',2147483647,2001),(801,'Brayan Steven Vargas','RepuestosSteven@gmail.com',2147483647,2002),(802,'Juan Camilo Cardenas','Compucamilo.Cd@gmail.com',2147483647,2003),(803,'Jose David Martinez','ServiMarti@gmail.com',2147483647,2004),(804,'Juan Felipe Carrillo Rojas','JuanFelipe.carrillo@gmail.com',2147483647,2005),(805,'Sebastian david Molina Suarez','Compuestosmolina.suarez@gmail.com',2147483647,2006),(806,'Cristian Benitez Guevara','CrBenitez.14@gmail.com',2147483647,2007),(807,'Fernando Tabarez Cortez','Ferchotaba.1986@gmail.com',2147483647,2008),(808,'Santiago Garcia Loaiza','SantiagoLoaiza.12@gmail.com',2147483647,2009),(809,'David Santiago Guzman Ballesteros','DdvidGuzman20@gmail.com',2147483647,2010),(810,'Juan Manuel Moreno Contreras','Juanmorenocontreras@gmail.com',310,2011),(811,'Cristian Rodriguez Galindo','CristianGalindo@gmail.com',302,2012),(812,'Joselin Martinez Pinzon','Josemartinez@gmail.com',310,2013),(813,'Juan Nicolas Vasquez Cano','Nicolasvazquezcano@gmail.com',314,2014),(814,'Omar Andres Alfonso Contreras','Omaralfonsocontreras@gmail.com',317,2015),(815,'Juan Camilo Mendez Bareto','CamiloMendez@gmail.com',301,2016),(816,'Jordan Esteban Cano Garcia','Jordancanogarcia@gmail.com',315,2017),(817,'Juan Sebastian Rodriguez Moreno','Sebastianmendez@gmail.com',300,2018),(818,'Edisson Julian Capera Tacuma','Edissonjuliantacuma@gmail.com',316,2019),(819,'Miguel Anguel Cardenas Acosta','miguelacosta@gmail.com',301,2020),(820,'Santiago Jimenez Espinosa','santigoespinosa@gmail.com',316,2021),(821,'Fabian Alejandro Estrada NiÃ±o','fabianestrada@gmail.com',314,2022),(822,'Edwin Alberto Amaya Duque','Edwinalbertoduque@gmail.com',310,2023),(823,'Ivan Jacobo Esquerra PatiÃ±o','IvanesquerraniÃ±o@gmail.com',311,2024),(824,'Jorge Enrique Amaya Romero','Jorgeromeroamaya@gmail.com',314,2025),(825,'Eddy Joel Espitia Cambindo','eddyjoelespitia@gmail.com',2147483647,2026),(826,'Lizeth Daniela Espitia Ruiz','lizethdanielaespitia@gmail.com',2147483647,2027),(827,'Julian Eduardo Capera Torres','JulianCaepera.Torres@gmail.com',2147483647,2028),(828,'Jasneidy Estrada Pinilla','jasneidyestrada@gmail.com',2147483647,2029),(829,'pedro picapiedra romero ','pedroromero@gmail.com',2147483647,2030),(830,'Carlos LeÃ³n bravo ','carlosbravo@gmail.com',2147483647,2031),(831,'Juan David Guerrero ','juanguerro@gmail.com',2147483647,2032),(832,'Pablo acacias meta ','pablometa@gmail.com',2147483647,2033),(833,'Guillermo de la roca ','guillermodelaroca@gmail.com',2147483647,2034),(834,'harol David GÃ³mez ','haroldavilgomez@gmail.com',2147483647,2035),(835,'Enrique de los santos ','enriquesantos@gmail.com',2147483647,2036),(836,'Jhony Rivera campeÃ³n ','Jhonycampeon@gmail.com',2147483647,2037),(837,'David  GÃ³mez PÃ©rez ','Gomezperez@gmail.com',2147483647,2038),(838,'Santiago Espinoza  llamel ','santigollamel@gmail.com',2147483647,2039),(839,'Juan David GÃ³mez ','juangomez@gmail.com',2147483647,2040),(840,'Yamilet de la torre ','yamiletlatorre@gmail.com',2147483647,2041),(841,'Ricardo Arjona yerba ','ricardoarjona@gmail.com',2147483647,2042),(842,'Martha forero  pelona ','marthaforero@gmail.com',2147483647,2043),(843,'Andres Alejandro Gonzalez ','Andresgonzales@gmail.com',2147483647,2044),(844,'Kevin Santiago Martinez ','Kevinsantigomartinez@gmail.com',2147483647,2045);
/*!40000 ALTER TABLE `proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id_rol` int(11) NOT NULL,
  `nombre_rol` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_rol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Cliente'),(2,'Administrador'),(3,'Tecnico');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles_permisos`
--

DROP TABLE IF EXISTS `roles_permisos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles_permisos` (
  `permisos_id_permiso` int(11) NOT NULL,
  `roles_id_rol` int(11) NOT NULL,
  PRIMARY KEY (`permisos_id_permiso`,`roles_id_rol`),
  KEY `fkrol_permiso_rol` (`roles_id_rol`),
  CONSTRAINT `fkrol_permiso_rol` FOREIGN KEY (`roles_id_rol`) REFERENCES `roles` (`id_rol`),
  CONSTRAINT `fkrol_rol_permiso` FOREIGN KEY (`permisos_id_permiso`) REFERENCES `permisos` (`id_permiso`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles_permisos`
--

LOCK TABLES `roles_permisos` WRITE;
/*!40000 ALTER TABLE `roles_permisos` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles_permisos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salidas`
--

DROP TABLE IF EXISTS `salidas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `salidas` (
  `id_salida` int(11) NOT NULL,
  `fecha_salida` date NOT NULL,
  `productos_id_producto` int(11) NOT NULL,
  PRIMARY KEY (`id_salida`),
  KEY `fkproducto_salida` (`productos_id_producto`),
  CONSTRAINT `fkproducto_salida` FOREIGN KEY (`productos_id_producto`) REFERENCES `productos` (`id_producto`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salidas`
--

LOCK TABLES `salidas` WRITE;
/*!40000 ALTER TABLE `salidas` DISABLE KEYS */;
INSERT INTO `salidas` VALUES (9001,'2023-05-03',5001),(9002,'2023-05-10',5002),(9003,'2023-05-25',5036),(9004,'2023-05-16',5037),(9005,'2023-05-17',5038),(9006,'2023-05-12',5039),(9007,'2023-05-08',5040),(9008,'2023-05-11',5041),(9009,'2023-04-25',5042),(9010,'2023-05-08',5043),(9011,'2023-05-12',5044),(9012,'2023-05-15',5045),(9013,'2023-05-17',5024),(9014,'2023-05-16',5025),(9015,'2023-05-20',5026),(9016,'2023-05-22',5027),(9017,'2023-05-21',5028),(9018,'2023-05-24',5029),(9019,'2023-05-18',5030),(9020,'2023-05-26',5031),(9021,'2023-05-28',5032),(9022,'2023-05-25',5033),(9023,'2023-05-22',5046),(9024,'2023-05-23',5047);
/*!40000 ALTER TABLE `salidas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seguimientos`
--

DROP TABLE IF EXISTS `seguimientos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seguimientos` (
  `id_seguimiento` int(11) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `id_pedido` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_tecnico` int(11) NOT NULL,
  `estadoseguimiento_id_estadoseguimiento` int(11) NOT NULL,
  PRIMARY KEY (`id_seguimiento`),
  KEY `fkestado_seguimiento` (`estadoseguimiento_id_estadoseguimiento`),
  CONSTRAINT `fkestado_seguimiento` FOREIGN KEY (`estadoseguimiento_id_estadoseguimiento`) REFERENCES `estadoseguimiento` (`id_estadoseguimiento`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seguimientos`
--

LOCK TABLES `seguimientos` WRITE;
/*!40000 ALTER TABLE `seguimientos` DISABLE KEYS */;
INSERT INTO `seguimientos` VALUES (6001,'PC con problemas de rendimiento',704,10,1,900),(6002,'PC con problemas de memoria',705,24,1,901),(6003,'Impresora, cambio de cartuchos ',706,26,1,902),(6004,'Impresora mantenimiento',707,20,1,903),(6005,'PC con cambio de pasta termica',708,13,1,904),(6006,'PC Mantenimiento General',709,12,1,905),(6007,'PC con problemas de software',710,26,1,906),(6008,'PC Mantenimiento General',711,29,1,907),(6009,'PC problemas de hadware',712,37,1,908),(6010,'Impresora cambio de tintas',713,33,1,909),(6011,'Impresora cambio de tintas',714,23,1,910),(6012,'PC Mantenimiento General',715,49,1,911),(6013,'PC Cambio de chasis ',716,44,1,912);
/*!40000 ALTER TABLE `seguimientos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servicios`
--

DROP TABLE IF EXISTS `servicios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `servicios` (
  `id_servicio` int(11) NOT NULL,
  `nombre_servicio` varchar(45) NOT NULL,
  `ventas_id_venta` int(11) NOT NULL,
  `tiposervicio_id_tiposervicio` int(11) NOT NULL,
  PRIMARY KEY (`id_servicio`),
  KEY `fkventas_servicios` (`ventas_id_venta`),
  KEY `fktiposervicio_servicio` (`tiposervicio_id_tiposervicio`),
  CONSTRAINT `fktiposervicio_servicio` FOREIGN KEY (`tiposervicio_id_tiposervicio`) REFERENCES `tiposervicio` (`id_tiposervicio`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fkventas_servicios` FOREIGN KEY (`ventas_id_venta`) REFERENCES `ventas` (`id_venta`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicios`
--

LOCK TABLES `servicios` WRITE;
/*!40000 ALTER TABLE `servicios` DISABLE KEYS */;
INSERT INTO `servicios` VALUES (4001,'MANTENIMIENTO ',3002,1),(4002,'MANTENIMIENTO ',3001,3),(4003,'MANTENIMIENTO ',3002,4),(4004,'MANTENIMIENTO ',3003,2),(4005,'MANTENIMIENTO ',3004,3),(4006,'MANTENIMIENTO ',3005,1),(4007,'MANTENIMIENTO ',3006,3),(4008,'MANTENIMIENTO ',3007,2),(4009,'MANTENIMIENTO ',3008,3),(4010,'MANTENIMIENTO ',3009,1),(4011,'MANTENIMIENTO ',3010,4),(4012,'MANTENIMIENTO ',3011,2),(4013,'MANTENIMIENTO ',3012,1),(4014,'MANTENIMIENTO ',3013,4),(4015,'MANTENIMIENTO ',3014,2),(4016,'MANTENIMIENTO ',3015,4),(4017,'MANTENIMIENTO ',3016,3),(4018,'MANTENIMIENTO ',3017,1),(4019,'MANTENIMIENTO ',3018,2),(4020,'MANTENIMIENTO ',3019,4),(4021,'MANTENIMIENTO ',3020,3),(4022,'MANTENIMIENTO ',3021,2),(4023,'MANTENIMIENTO ',3022,4),(4024,'MANTENIMIENTO ',3023,1),(4025,'MANTENIMIENTO ',3024,3),(4026,'MANTENIMIENTO ',3025,4),(4027,'MANTENIMIENTO ',3026,1),(4028,'MANTENIMIENTO ',3027,3),(4029,'MANTENIMIENTO ',3028,4),(4030,'MANTENIMIENTO ',3029,3),(4031,'MANTENIMIENTO ',3030,3);
/*!40000 ALTER TABLE `servicios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecnicos`
--

DROP TABLE IF EXISTS `tecnicos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tecnicos` (
  `id_tecnico` int(11) NOT NULL,
  `usuarios_id_usuario` int(11) NOT NULL,
  `roles_id_rol` int(11) NOT NULL,
  PRIMARY KEY (`id_tecnico`),
  KEY `fktecnico_usuario` (`usuarios_id_usuario`),
  KEY `fkrol_tecnico` (`roles_id_rol`),
  CONSTRAINT `fkrol_tecnico` FOREIGN KEY (`roles_id_rol`) REFERENCES `roles` (`id_rol`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fktecnico_usuario` FOREIGN KEY (`usuarios_id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecnicos`
--

LOCK TABLES `tecnicos` WRITE;
/*!40000 ALTER TABLE `tecnicos` DISABLE KEYS */;
INSERT INTO `tecnicos` VALUES (1,1,3);
/*!40000 ALTER TABLE `tecnicos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipogarantias`
--

DROP TABLE IF EXISTS `tipogarantias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipogarantias` (
  `id_tipogarantia` int(11) NOT NULL,
  `nombre_tipo` varchar(40) NOT NULL,
  PRIMARY KEY (`id_tipogarantia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipogarantias`
--

LOCK TABLES `tipogarantias` WRITE;
/*!40000 ALTER TABLE `tipogarantias` DISABLE KEYS */;
INSERT INTO `tipogarantias` VALUES (501,'Computadores'),(502,'Impresoras'),(503,'Accesorios Pc');
/*!40000 ALTER TABLE `tipogarantias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiposervicio`
--

DROP TABLE IF EXISTS `tiposervicio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiposervicio` (
  `id_tiposervicio` int(11) NOT NULL,
  `tipo_servicio` varchar(45) NOT NULL,
  PRIMARY KEY (`id_tiposervicio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tiposervicio`
--

LOCK TABLES `tiposervicio` WRITE;
/*!40000 ALTER TABLE `tiposervicio` DISABLE KEYS */;
INSERT INTO `tiposervicio` VALUES (1,'MANTENIMIENTO INTERNO'),(2,'MANTENIMIENTO EXTERNO'),(3,'SOFTWARE'),(4,'MANTENIMIENTO GENEREAL');
/*!40000 ALTER TABLE `tiposervicio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `N_documento` int(11) NOT NULL,
  `nombre_usuario` varchar(35) NOT NULL,
  `apellido_usuario` varchar(35) NOT NULL,
  `contraseña` varchar(40) NOT NULL,
  `correo_electronico` varchar(60) NOT NULL,
  `direccion` varchar(60) DEFAULT NULL,
  `roles_id_rol` int(11) NOT NULL,
  PRIMARY KEY (`id_usuario`),
  KEY `fkusuario_roles` (`roles_id_rol`),
  CONSTRAINT `fkusuario_roles` FOREIGN KEY (`roles_id_rol`) REFERENCES `roles` (`id_rol`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,1034456934,'DANIEL','ALARCON','12345678','danielalarcon@gmail.com','carrera 8 #25-12 barrio tunjuelito',2),(2,1005866241,'Yeison','Lafuente','235475','yeisonsuarez.pal@gmail.com','Calle 10 No. 9 - 78 Centro',1),(3,1001685213,'Brayan','Poveda','2192956','sanchezcortez.12@gmail.com','Carrera 56A No. 51 - 81',1),(4,1003953852,'Leydi','Cabanillas','1516098','leidy12@gmail.com','Carrera 22 No. 17-31',1),(5,2147483647,'Johan','Andujar','86524','johan2004@gmail.com','Carrera 54 No. 68 - 80 Barrio el PradoCarrera 54 N',1),(6,1022934334,'Pedro','Manso','2630958','pedrolol@gmail.com','Calle 59 No. 27 - 35 Barrio GalÃ¡n',1),(7,1994082148,'Carlos','Padilla','4213437','carlospadilla@gmail.com','Carrera 10A No. 20 - 40 Edificio El ClarÃ­n',1),(8,2005925975,'Juan','Santana','543272','juansantana@gmail.com','Carrera 8 No. 20 - 59',1),(9,1070258284,'Tatiana','Parrilla','354342','tatianaparrilla@gmail.com','Calle 20 No. 22 - 27',1),(10,1053796646,'Monica','De las Heras','960767','monicadelaheras@gmail.com','Carrera 8a No. 7 - 88 /94 Barrio La Estrella',1),(11,1053795396,'Saray','Quintero','3773132','sarayquitero@gmail.com','Carrera 5 No. 3 -74 centro',1),(12,1053797430,'Camila','Fuente','3711876','camilafuntes@gmail.com','Calle 15 No. 9 - 56 centro',1),(13,1053801555,'Lorena','Planas','1092677','lorenaplanas@gmail.com','Calle 25 No. 4 - 38',1),(14,1055750262,'Sebastian','Jurado','60598','sebastianjurado@gmail.com','Calle 28 No. 8 - 69 CENTRO',1),(15,1053833310,'Hugo','Codina','2900629','hugocodina@gmail.com','Carrera 7A No. 32 - 63 piso 2',1),(16,1060651149,'Martin','Hoyos','4171492','martinhoyos@gmail.com','Calle 7 No. 5 - 25 Edificio Segunda',1),(17,1060654474,'Lucas','Granado','386873','lucasgranado@gmail.com','Carrera 9 No. 7 - 34',1),(18,1053855782,'Mateo','Exposito','131627','mateoexposito@gmail.com','Calle 20 No. 3 - 22',1),(19,1053856474,'Leo','Amores','3321','leoamore@gmail.com','Calle 33B No. 38 - 42 Barrio Barzal',1),(20,1053858286,'Daniel','Lillo','4231357','daniellilo@gmail.com','Calle 16 No. 23 - 57 piso 4',1),(21,1087049041,'Alejandro','Morcillo','1745452','alejadomorcillo','Calle 12 No. 4 - 19',1),(22,1053832090,'Pablo','Blazquez','1605305','pabloblazquez@gmail.com','Avenida 19 No. 98-03, sexto piso',1),(23,1225089344,'Manuel','Parada','2981401','manuelparada@gmail.com','Calle 53 No 10-60/46, Piso 2',1),(24,1193524007,'Alvaro','OrtuÃ±o','3479788','alvarortuÃ±p@gmail.com','Calle 10 # 5-51',1),(25,1053872951,'Adrian','Toro','1690358','adriantoro@gmail.com','Avenida Calle 26 No 59-51 Edificio Argos',1),(26,1054857825,'Mario','Contreras','2041532','mariocontreras@gmail.com','Calle 9 # 9 â€“ 62, Leticia, Barrio Centro',1),(27,1053853377,'Enzo','Fuertes','1954015','enzofuentes@gmail.com','Calle 19 # 80A-40. Barrio BelÃ©n La Nubia',1),(28,1053851246,'Diego','Almagro','2960385','diegoalamagro@gmail.com','Carrera 21 # 17 -63',1),(29,1053869701,'Alex','Manzano','4106890','alexmanzao@gmail.com','Carrera 42 # 54-77 Barrio El Recreo',1),(30,1053849196,'Bruno','Diez','1394276','brunodiez@gmail.com','Calle 100 # 11B-27 BogotÃ¡',1),(31,1053848404,'Oliver','Nadal','2199970','olivernadal@gmail.com','Carrera 20 B # 29-18. Barrio Pie de la Popa.',1),(32,1053868773,'Miguel','Cuenca','125400','miguencuenca@gmail.com','Transversal 9 a No. 29 - 29 Barrio Maldonado',1),(33,1053848314,'Thiago','Fraile','667647','thiagofraile@gmail.com','Calle 53 # 25A-35',1),(34,1053868622,'Antonio ','Amores','4403703','antonioamores@gmail.com','Carrera 20 B # 29-18. Barrio Pie de la Popa.',1),(35,1053847575,'Marck','Roman','617235','romanmarck@gmail.com','Calle 4 norte # 10B-66 Barrio Modelo',1),(36,1053867874,'Carlos','Sanmartin','3176135','sanmartin@gmail.com','carrera 8 #15Âª-19, Locales comerciales Santo Domingo',1),(37,1053846053,'Angel','Mosquera','3137651','angelmosquera@gmail.com','Calle 28 # 2-27 Barrio Centro',1),(38,1053867440,'Juan','Lora','3306465','juallora@gmail.com','Calle 25 # 6-08',1),(39,1053845731,'Gael','Liu','4211952','gaelliu@gmail.com','Calle 10 # 8-07',1),(40,1053867044,'Nicolas','Calatayud','2172177','nicolas@gmail.com','Carrera 12 No. 19-00 Local 18',1),(41,1053845703,'Dylan','Plaza','1694888','dylanplaza@gmail.com','Calle 5 # 4-48 Barrio Centro',1),(42,1053866038,'Gabriel','Cuadrado','3508238','gabrielcuadrado@gmail.com','Calle 16 # 3-28',1),(43,1053845694,'Jorge','Manso','2875302','jorgemanso@gmail.com','Calle 22 # 13 â€“ A 88 Barrio Los Alcazare',1),(44,1053865855,'Jose ','Jaramillo','3534315','josejaramillo@gmail.com','Calle 37 # 42-12',1),(45,1053844708,'Liam','Sempere','1196997','liamsempere@gmail.com','Calle 17 # 29-70',1),(46,1053864816,'Eric','Miguez','332438','ericmiguez@gmail.com','Calle 8 # 7-40 Centro',1),(47,1053844203,'Samuel','Haro','272678','samuelHaro@gmail.com','Avenida 1 # 28-57',1),(48,1053864655,'Valentina','Bilbao','3489490','valentina@gmail.com','Avenida 30 de agosto # 26-37',1),(49,1053843966,'Dario','Aparicio','1882619','darioaparicio@gmail.com','Carrera 7 # 2-70 Sector Swamp Ground',1),(50,1053864651,'Sofia','Espino','650688','sofiaespino@gmail.com','Carrera 10 # 3-92',1),(51,1053843869,'Karol ','Adan','1334069','karoladan@gmail.com','Calle 20 # 24-05 Barrio Centro',1);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ventas`
--

DROP TABLE IF EXISTS `ventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ventas` (
  `id_venta` int(11) NOT NULL,
  `N_factura` int(11) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `descuento` int(11) NOT NULL,
  `iva` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `pedidos_id_pedido` int(11) NOT NULL,
  PRIMARY KEY (`id_venta`),
  KEY `fkpedidos_ventas` (`pedidos_id_pedido`),
  CONSTRAINT `fkpedidos_ventas` FOREIGN KEY (`pedidos_id_pedido`) REFERENCES `pedidos` (`id_pedido`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ventas`
--

LOCK TABLES `ventas` WRITE;
/*!40000 ALTER TABLE `ventas` DISABLE KEYS */;
INSERT INTO `ventas` VALUES (3001,100,'Pasta TÃ©rmica Disipadora Arctic Mx-4 4g Original ',2,0,0,68380,700),(3002,101,'Memoria RAM Basics color verde 16GB 1 Crucial CB16',2,0,0,283500,701),(3003,102,'Memoria RAM XLR8 gamer color negro/rojo 8GB 1 PNY ',1,0,0,478705,702),(3004,103,'Memoria RAM XLR8 Gaming EPIC-X RGB gamer color neg',1,0,0,166000,703),(3005,104,'Memoria RAM Fury Beast gamer color negro 16GB 1 Ki',4,5,0,9874100,704),(3006,105,'Procesador Gamer Amd Ryzen 5 3600 Amd Am4',1,0,0,779000,705),(3007,106,'Procesador gamer AMD Ryzen 7 5700X 100-100000926WO',5,0,0,520000,706),(3008,107,'Tarjetas GrÃ¡ficas Rx 580 8gb 256bit 2048sp Gddr5',3,5,0,1505511,707),(3009,108,'Tarjeta De Video Nvidia Gt710 2048mb 2gb Ddr3 Hdmi',1,0,0,223155,708),(3010,109,'Board Tarjeta Madre Pc H55 Lga1156 Socket Para Int',4,5,0,934990,709),(3011,110,'Chasis Caja Atx Gamer Iceberg Gear V6 Plus + 3 Ven',1,0,0,197910,710),(3012,111,'Chasis Gabinete Iceberg Turbo Z8 Lite 3 Ventilador',3,0,0,701730,711),(3013,112,'Gabinete Atx Media Torre Iceberg Flow Gs + 4 Fan I',1,0,0,332910,712),(3014,113,'Chasis Caja Iceberg Flux Pro Rgb Vidrio Templado +',2,0,0,443800,713),(3015,114,'Caja Gabinete Iceberg Crystal Max - 4 Fans + Tira ',1,0,0,589900,714),(3016,115,'Caja Gabinete Iceberg Gate 9 + Vidrio Templado + 3',1,0,0,256405,715),(3017,116,'Kit de teclado y mouse inalÃ¡mbrico Logitech MK235',1,0,0,110000,716),(3018,117,'Memoria Usb Kingston Datatraveler Exodia 128gb Usb',1,0,0,59000,717),(3019,118,'Memoria USB Kingston DataTraveler Exodia DTX/32 32',3,5,0,11115,718),(3020,119,'Memoria Usb De 32 Gb Datatraveler 50 Kingston Usb ',2,0,0,42660,719),(3021,120,'Memoria USB Samsung FIT Plus MUF-128AB/EU 128GB 3.',6,10,0,636293,720),(3022,121,'Memoria USB SanDisk Cruzer Blade 16GB 2.0 negro y ',1,0,0,19980,721),(3023,122,'Memoria USB Kingston DataTraveler 50 DT50 16GB 3.1',2,0,0,72000,722),(3024,123,'Mouse vertical recargable Delux M618 Mini jet blac',6,10,0,712000,723),(3025,124,'CÃ¡mara web Logitech C270 HD 30FPS color negro',3,5,0,521550,724),(3026,125,'CÃ¡mara web SAT X11 HD color negro/naranja',5,5,0,161025,725),(3027,126,'Procesador Intel Core I3-12100f 4.30 Ghz',1,0,0,730000,726),(3028,127,'Impresora a color multifunciÃ³n Epson EcoTank L321',5,10,0,2834550,727),(3029,128,'Impresora a color simple funciÃ³n Epson EcoTank L1',2,0,0,1108980,728),(3030,129,'Combo Gamer Teclado Y Mouse Usb',1,0,0,39800,729);
/*!40000 ALTER TABLE `ventas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-15  3:03:27
