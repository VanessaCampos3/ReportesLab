-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: reporteslab
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `caccesorios`
--

DROP TABLE IF EXISTS `caccesorios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `caccesorios` (
  `id_accesorio` int NOT NULL AUTO_INCREMENT,
  `descripcion` text NOT NULL,
  PRIMARY KEY (`id_accesorio`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caccesorios`
--

LOCK TABLES `caccesorios` WRITE;
/*!40000 ALTER TABLE `caccesorios` DISABLE KEYS */;
INSERT INTO `caccesorios` VALUES (1,'Mouse y audifonos'),(2,'Mouse');
/*!40000 ALTER TABLE `caccesorios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `casignatura`
--

DROP TABLE IF EXISTS `casignatura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `casignatura` (
  `id_asignatura` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`id_asignatura`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `casignatura`
--

LOCK TABLES `casignatura` WRITE;
/*!40000 ALTER TABLE `casignatura` DISABLE KEYS */;
INSERT INTO `casignatura` VALUES (1,'PSW');
/*!40000 ALTER TABLE `casignatura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cestadomaquina`
--

DROP TABLE IF EXISTS `cestadomaquina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cestadomaquina` (
  `id_estadomaquina` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) NOT NULL,
  PRIMARY KEY (`id_estadomaquina`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cestadomaquina`
--

LOCK TABLES `cestadomaquina` WRITE;
/*!40000 ALTER TABLE `cestadomaquina` DISABLE KEYS */;
INSERT INTO `cestadomaquina` VALUES (1,'El monitor esta rayado');
/*!40000 ALTER TABLE `cestadomaquina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cestadoreporte`
--

DROP TABLE IF EXISTS `cestadoreporte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cestadoreporte` (
  `id_cer` int NOT NULL AUTO_INCREMENT,
  `tipo` varchar(45) NOT NULL,
  PRIMARY KEY (`id_cer`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cestadoreporte`
--

LOCK TABLES `cestadoreporte` WRITE;
/*!40000 ALTER TABLE `cestadoreporte` DISABLE KEYS */;
INSERT INTO `cestadoreporte` VALUES (1,'Pendiente');
/*!40000 ALTER TABLE `cestadoreporte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cgrupo`
--

DROP TABLE IF EXISTS `cgrupo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cgrupo` (
  `id_grupo` int NOT NULL AUTO_INCREMENT,
  `nombre_grupo` tinytext NOT NULL,
  PRIMARY KEY (`id_grupo`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cgrupo`
--

LOCK TABLES `cgrupo` WRITE;
/*!40000 ALTER TABLE `cgrupo` DISABLE KEYS */;
INSERT INTO `cgrupo` VALUES (1,'null');
/*!40000 ALTER TABLE `cgrupo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `claboratorio`
--

DROP TABLE IF EXISTS `claboratorio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `claboratorio` (
  `id_lab` int NOT NULL AUTO_INCREMENT,
  `tipo_lab` varchar(30) NOT NULL,
  PRIMARY KEY (`id_lab`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `claboratorio`
--

LOCK TABLES `claboratorio` WRITE;
/*!40000 ALTER TABLE `claboratorio` DISABLE KEYS */;
INSERT INTO `claboratorio` VALUES (1,'LNV'),(2,'LBD'),(3,'4.0'),(4,'LDS'),(7,'LNV'),(8,'labo'),(9,'LBD'),(10,'lab'),(11,'lab'),(12,'LBD'),(13,'LBD'),(14,'LBD'),(15,'lab'),(16,'LBD');
/*!40000 ALTER TABLE `claboratorio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cprivilegio`
--

DROP TABLE IF EXISTS `cprivilegio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cprivilegio` (
  `id_privilegio` int NOT NULL AUTO_INCREMENT,
  `tipo_privilegio` tinytext NOT NULL,
  `mpersona_id_persona` int NOT NULL,
  `mpersona_crol_id_rol` int NOT NULL,
  PRIMARY KEY (`id_privilegio`),
  KEY `mpersona_id_persona` (`mpersona_id_persona`),
  KEY `mpersona_crol_id_rol` (`mpersona_crol_id_rol`),
  CONSTRAINT `cprivilegio_ibfk_1` FOREIGN KEY (`mpersona_id_persona`) REFERENCES `mpersona` (`id_persona`),
  CONSTRAINT `cprivilegio_ibfk_2` FOREIGN KEY (`mpersona_crol_id_rol`) REFERENCES `mpersona` (`crol_id_rol`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cprivilegio`
--

LOCK TABLES `cprivilegio` WRITE;
/*!40000 ALTER TABLE `cprivilegio` DISABLE KEYS */;
INSERT INTO `cprivilegio` VALUES (1,'Estudiante',1,1);
/*!40000 ALTER TABLE `cprivilegio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crol`
--

DROP TABLE IF EXISTS `crol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `crol` (
  `id_rol` int NOT NULL AUTO_INCREMENT,
  `tipo_rol` varchar(45) NOT NULL,
  PRIMARY KEY (`id_rol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crol`
--

LOCK TABLES `crol` WRITE;
/*!40000 ALTER TABLE `crol` DISABLE KEYS */;
/*!40000 ALTER TABLE `crol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dfecha`
--

DROP TABLE IF EXISTS `dfecha`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dfecha` (
  `id_fecha` int NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  PRIMARY KEY (`id_fecha`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dfecha`
--

LOCK TABLES `dfecha` WRITE;
/*!40000 ALTER TABLE `dfecha` DISABLE KEYS */;
INSERT INTO `dfecha` VALUES (1,'2022-04-26');
/*!40000 ALTER TABLE `dfecha` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dhora`
--

DROP TABLE IF EXISTS `dhora`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dhora` (
  `id_hora` int NOT NULL AUTO_INCREMENT,
  `hora` time NOT NULL,
  PRIMARY KEY (`id_hora`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dhora`
--

LOCK TABLES `dhora` WRITE;
/*!40000 ALTER TABLE `dhora` DISABLE KEYS */;
INSERT INTO `dhora` VALUES (1,'10:50:00'),(2,'10:36:00');
/*!40000 ALTER TABLE `dhora` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dreporte`
--

DROP TABLE IF EXISTS `dreporte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dreporte` (
  `id_reporte` int NOT NULL AUTO_INCREMENT,
  `casignatura_id_asignatura` int NOT NULL,
  `cestadomaquina_id_estadomaquina` int NOT NULL,
  `cgrupo_id_grupo` int NOT NULL,
  `cestadoreporte_id_cer` int NOT NULL,
  `mequipo_id_equipo` int NOT NULL,
  `dfecha_id_fecha` int NOT NULL,
  `dhora_id_hora` int NOT NULL,
  PRIMARY KEY (`id_reporte`),
  KEY `casignatura_id_asignatura` (`casignatura_id_asignatura`),
  KEY `cestadomaquina_id_estadomaquina` (`cestadomaquina_id_estadomaquina`),
  KEY `cgrupo_id_grupo` (`cgrupo_id_grupo`),
  KEY `cestadoreporte_id_cer` (`cestadoreporte_id_cer`),
  KEY `mequipo_id_equipo` (`mequipo_id_equipo`),
  KEY `dfecha_id_fecha` (`dfecha_id_fecha`),
  KEY `dhora_id_hora` (`dhora_id_hora`),
  CONSTRAINT `dreporte_ibfk_1` FOREIGN KEY (`casignatura_id_asignatura`) REFERENCES `casignatura` (`id_asignatura`),
  CONSTRAINT `dreporte_ibfk_2` FOREIGN KEY (`cestadomaquina_id_estadomaquina`) REFERENCES `cestadomaquina` (`id_estadomaquina`),
  CONSTRAINT `dreporte_ibfk_3` FOREIGN KEY (`cgrupo_id_grupo`) REFERENCES `cgrupo` (`id_grupo`),
  CONSTRAINT `dreporte_ibfk_4` FOREIGN KEY (`cestadoreporte_id_cer`) REFERENCES `cestadoreporte` (`id_cer`),
  CONSTRAINT `dreporte_ibfk_5` FOREIGN KEY (`mequipo_id_equipo`) REFERENCES `mequipo` (`id_equipo`),
  CONSTRAINT `dreporte_ibfk_6` FOREIGN KEY (`dfecha_id_fecha`) REFERENCES `dfecha` (`id_fecha`),
  CONSTRAINT `dreporte_ibfk_7` FOREIGN KEY (`dhora_id_hora`) REFERENCES `dhora` (`id_hora`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dreporte`
--

LOCK TABLES `dreporte` WRITE;
/*!40000 ALTER TABLE `dreporte` DISABLE KEYS */;
/*!40000 ALTER TABLE `dreporte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mconfiguracion`
--

DROP TABLE IF EXISTS `mconfiguracion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mconfiguracion` (
  `id_configuracion` int NOT NULL AUTO_INCREMENT,
  `descripcion` text NOT NULL,
  PRIMARY KEY (`id_configuracion`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mconfiguracion`
--

LOCK TABLES `mconfiguracion` WRITE;
/*!40000 ALTER TABLE `mconfiguracion` DISABLE KEYS */;
INSERT INTO `mconfiguracion` VALUES (1,'Windows 10'),(2,'Config');
/*!40000 ALTER TABLE `mconfiguracion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mcpu`
--

DROP TABLE IF EXISTS `mcpu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mcpu` (
  `id_maquina` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(100) NOT NULL,
  PRIMARY KEY (`id_maquina`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mcpu`
--

LOCK TABLES `mcpu` WRITE;
/*!40000 ALTER TABLE `mcpu` DISABLE KEYS */;
INSERT INTO `mcpu` VALUES (1,'Marca Intel'),(2,'CPU');
/*!40000 ALTER TABLE `mcpu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mequipo`
--

DROP TABLE IF EXISTS `mequipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mequipo` (
  `id_equipo` int NOT NULL AUTO_INCREMENT,
  `mcpu_id_maquina` int NOT NULL,
  `mmonitor_id_monitor` int NOT NULL,
  `caccesorios_id_accesorio` int NOT NULL,
  `mconfiguracion_id_configuracion` int NOT NULL,
  `claboratorio_id_lab` int NOT NULL,
  `metiqueta_id_etiqueta` int NOT NULL,
  PRIMARY KEY (`id_equipo`),
  KEY `mcpu_id_maquina` (`mcpu_id_maquina`),
  KEY `mmonitor_id_monitor` (`mmonitor_id_monitor`),
  KEY `caccesorios_id_accesorio` (`caccesorios_id_accesorio`),
  KEY `mconfiguracion_id_configuracion` (`mconfiguracion_id_configuracion`),
  KEY `claboratorio_id_lab` (`claboratorio_id_lab`),
  KEY `metiqueta_id_etiqueta` (`metiqueta_id_etiqueta`),
  CONSTRAINT `mequipo_ibfk_1` FOREIGN KEY (`mcpu_id_maquina`) REFERENCES `mcpu` (`id_maquina`),
  CONSTRAINT `mequipo_ibfk_2` FOREIGN KEY (`mmonitor_id_monitor`) REFERENCES `mmonitor` (`id_monitor`),
  CONSTRAINT `mequipo_ibfk_3` FOREIGN KEY (`caccesorios_id_accesorio`) REFERENCES `caccesorios` (`id_accesorio`),
  CONSTRAINT `mequipo_ibfk_4` FOREIGN KEY (`mconfiguracion_id_configuracion`) REFERENCES `mconfiguracion` (`id_configuracion`),
  CONSTRAINT `mequipo_ibfk_5` FOREIGN KEY (`claboratorio_id_lab`) REFERENCES `claboratorio` (`id_lab`),
  CONSTRAINT `mequipo_ibfk_6` FOREIGN KEY (`metiqueta_id_etiqueta`) REFERENCES `metiqueta` (`id_etiqueta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mequipo`
--

LOCK TABLES `mequipo` WRITE;
/*!40000 ALTER TABLE `mequipo` DISABLE KEYS */;
/*!40000 ALTER TABLE `mequipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `metiqueta`
--

DROP TABLE IF EXISTS `metiqueta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `metiqueta` (
  `id_etiqueta` int NOT NULL AUTO_INCREMENT,
  `etiqueta` varchar(15) NOT NULL,
  PRIMARY KEY (`id_etiqueta`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metiqueta`
--

LOCK TABLES `metiqueta` WRITE;
/*!40000 ALTER TABLE `metiqueta` DISABLE KEYS */;
INSERT INTO `metiqueta` VALUES (1,'256AL5');
/*!40000 ALTER TABLE `metiqueta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mmonitor`
--

DROP TABLE IF EXISTS `mmonitor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mmonitor` (
  `id_monitor` int NOT NULL AUTO_INCREMENT,
  `descripcion` text NOT NULL,
  PRIMARY KEY (`id_monitor`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mmonitor`
--

LOCK TABLES `mmonitor` WRITE;
/*!40000 ALTER TABLE `mmonitor` DISABLE KEYS */;
INSERT INTO `mmonitor` VALUES (1,'Marca Dell, 24\'\''),(2,'Monitor');
/*!40000 ALTER TABLE `mmonitor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mpersona`
--

DROP TABLE IF EXISTS `mpersona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mpersona` (
  `id_persona` int NOT NULL AUTO_INCREMENT,
  `numero_empleado` int NOT NULL,
  `boleta` int NOT NULL,
  `nombre` tinytext NOT NULL,
  `appat` tinytext NOT NULL,
  `apmat` tinytext NOT NULL,
  `sexo` tinytext NOT NULL,
  `fecha_nac` date NOT NULL,
  `crol_id_rol` int NOT NULL,
  PRIMARY KEY (`id_persona`),
  KEY `crol_id_rol` (`crol_id_rol`),
  CONSTRAINT `mpersona_ibfk_1` FOREIGN KEY (`crol_id_rol`) REFERENCES `crol` (`id_rol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mpersona`
--

LOCK TABLES `mpersona` WRITE;
/*!40000 ALTER TABLE `mpersona` DISABLE KEYS */;
/*!40000 ALTER TABLE `mpersona` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-27  4:49:56
