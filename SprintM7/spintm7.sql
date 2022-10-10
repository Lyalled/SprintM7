-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: sprintm7
-- ------------------------------------------------------
-- Server version	8.0.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `idcliente` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `apellido` varchar(45) DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `empresa_id` int NOT NULL,
  PRIMARY KEY (`idcliente`),
  KEY `fk_empresa_id_idx` (`empresa_id`),
  CONSTRAINT `fk_cliente_empresa1` FOREIGN KEY (`empresa_id`) REFERENCES `empresa` (`idempresa`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'Rosangel','Muñoz','Las florcitas amarillas 386',1),(2,'Macarena','Santelices','MAria en m los cielos 450',1),(3,'Bruno','Fuerte','Mi perro chocolo 1234',1),(4,'Matilde','Rojas','Que sera mañana sera 789',1),(5,'Benito','Sepulveda','Las chicas yeye 967',1);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empresa`
--

DROP TABLE IF EXISTS `empresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empresa` (
  `idempresa` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `correo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idempresa`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresa`
--

LOCK TABLES `empresa` WRITE;
/*!40000 ALTER TABLE `empresa` DISABLE KEYS */;
INSERT INTO `empresa` VALUES (1,'TeloVendo','las papas fritas wenas 1128','telovendo@gmail.com');
/*!40000 ALTER TABLE `empresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producto`
--

DROP TABLE IF EXISTS `producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producto` (
  `idproducto` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `precio` float DEFAULT NULL,
  `categoria` varchar(45) DEFAULT NULL,
  `proveedor` varchar(45) DEFAULT NULL,
  `color` varchar(45) DEFAULT NULL,
  `stock` int DEFAULT NULL,
  PRIMARY KEY (`idproducto`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` VALUES (1,'audifono_gamer',52500,'Accesorio','Audifono difonia','negro',50),(2,'audifono_bluetooth',32000,'Accesorio','Audifono difonia','negro',30),(3,'mouse',8000,'Accesorio','Ratones Cyber','negro',25),(4,'notebook',1249990,'Electronica y Computacion','Importadora Lahuen','plateado',15),(5,'microfono',26700,'Accesorio','Audifono difonia','negro',46),(6,'pantalla_gamer',389450,'Electronica y Computacion','Lo veo','blanco',21),(7,'mousepad',26470,'Electronica y Computacion','Importadora Lahuen','negro',32),(8,'camara',58900,'Electronica y Computacion','Lo veo','plateado',6),(9,'respaldo',5600,'Acomodamiento','La casa del cojin','rojo',11),(10,'cojin',16900,'Acomodamiento','La casa del cojin','azul',23);
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedor`
--

DROP TABLE IF EXISTS `proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedor` (
  `idproveedor` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `rep_legal` varchar(45) DEFAULT NULL,
  `telefono1` int DEFAULT NULL,
  `telefono2` int DEFAULT NULL,
  `nombre_contacto` varchar(45) DEFAULT NULL,
  `categoria_producto` varchar(45) DEFAULT NULL,
  `correo` varchar(45) DEFAULT NULL,
  `empresa_id` int NOT NULL,
  PRIMARY KEY (`idproveedor`),
  KEY `fk_proveedores_empresa1_idx` (`empresa_id`) /*!80000 INVISIBLE */,
  CONSTRAINT `fk_proveedores_empresa1` FOREIGN KEY (`empresa_id`) REFERENCES `empresa` (`idempresa`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedor`
--

LOCK TABLES `proveedor` WRITE;
/*!40000 ALTER TABLE `proveedor` DISABLE KEYS */;
INSERT INTO `proveedor` VALUES (1,'Importadora Lahuen','Juanito Perez',987564231,956823744,'Manuel','Computacion','importadora_lahuen@lahuen.com',1),(2,'La casa del cojin','Rimbombo Fernandez',985647331,948756123,'Jose','Acomodamiento','casa.cojin@cojin.cl',1),(3,'Audifono difonia','Alalia Figueroa',933654287,936254789,'Luis','Accesorio','contacto@difonia.cl',1),(4,'Ratones Cyber','Sonambulo Martinez',966442589,982716423,'Jimena','Accesorio','contacto.alalia@ratones.com',1),(5,'Lo veo','Cacareo Ñigue',942568321,953428679,'Natalia','Computacion','contacto.veo@gmail.cl',1);
/*!40000 ALTER TABLE `proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedor_producto`
--

DROP TABLE IF EXISTS `proveedor_producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedor_producto` (
  `idprove` int NOT NULL,
  `idprodu` int NOT NULL,
  KEY `fk_prov_prod` (`idprove`),
  KEY `fk_prov_prod1` (`idprodu`),
  CONSTRAINT `fk_prov_prod` FOREIGN KEY (`idprove`) REFERENCES `proveedor` (`idproveedor`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_prov_prod1` FOREIGN KEY (`idprodu`) REFERENCES `producto` (`idproducto`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedor_producto`
--

LOCK TABLES `proveedor_producto` WRITE;
/*!40000 ALTER TABLE `proveedor_producto` DISABLE KEYS */;
/*!40000 ALTER TABLE `proveedor_producto` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-10 16:19:56
