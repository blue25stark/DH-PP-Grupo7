-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: recruitingrh
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `aspirantes`
--

DROP TABLE IF EXISTS `aspirantes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aspirantes` (
  `Dni` int unsigned NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Apellido` varchar(50) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Telefono` varchar(15) DEFAULT NULL,
  `LinkedinURL` varchar(255) DEFAULT NULL,
  `FechaNacimiento` date DEFAULT NULL,
  `Sexo` enum('M','F','Otro') DEFAULT NULL,
  `Imagen` varchar(50) DEFAULT NULL,
  `ProfesionID` int DEFAULT NULL,
  `EstadoID` int DEFAULT NULL,
  PRIMARY KEY (`Dni`),
  UNIQUE KEY `Email` (`Email`),
  KEY `ProfesionID` (`ProfesionID`),
  KEY `EstadoID` (`EstadoID`),
  CONSTRAINT `aspirantes_ibfk_1` FOREIGN KEY (`ProfesionID`) REFERENCES `profesiones` (`ProfesionID`),
  CONSTRAINT `aspirantes_ibfk_2` FOREIGN KEY (`EstadoID`) REFERENCES `estado` (`EstadoID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aspirantes`
--

LOCK TABLES `aspirantes` WRITE;
/*!40000 ALTER TABLE `aspirantes` DISABLE KEYS */;
INSERT INTO `aspirantes` VALUES (12345678,'Juan','Pérez','juan.perez@example.com','123456789','https://linkedin.com/in/juanperez','1990-01-01','M',NULL,1,1),(12345679,'Elena','Sánchez','elena.sanchez@example.com','123456789','https://linkedin.com/in/elenasanchez','1995-10-10','F',NULL,1,1),(12345680,'Manuel','Guerrero','manuel.guerrero@example.com','123456789','https://linkedin.com/in/manuelguerrero','1992-07-19','M',NULL,1,1),(23456780,'David','Torres','david.torres@example.com','234567890','https://linkedin.com/in/davidtorres','1990-11-11','M',NULL,2,2),(23456781,'Lucía','Díaz','lucia.diaz@example.com','234567890','https://linkedin.com/in/luciadiaz','1988-08-20','F',NULL,2,2),(23456789,'María','González','maria.gonzalez@example.com','234567890','https://linkedin.com/in/mariagonzalez','1992-02-02','F',NULL,2,2),(34567881,'Patricia','Flores','patricia.flores@example.com','345678901','https://linkedin.com/in/patriciaflores','1988-12-12','F',NULL,3,3),(34567882,'Esteban','Silva','esteban.silva@example.com','345678901','https://linkedin.com/in/estebansilva','1991-09-21','M',NULL,3,3),(34567890,'Carlos','Rodríguez','carlos.rodriguez@example.com','345678901','https://linkedin.com/in/carlosrodriguez','1988-03-03','M',NULL,3,3),(45678901,'Ana','Martínez','ana.martinez@example.com','456789012','https://linkedin.com/in/anamartinez','1991-04-04','F',NULL,4,1),(45678902,'Andrés','Castro','andres.castro@example.com','456789012','https://linkedin.com/in/andrescastro','1991-01-13','M',NULL,4,1),(45678903,'Natalia','Cruz','natalia.cruz@example.com','456789012','https://linkedin.com/in/nataliacruz','1987-10-22','F',NULL,4,1),(56789012,'Luis','Fernández','luis.fernandez@example.com','567890123','https://linkedin.com/in/luisfernandez','1987-05-05','M',NULL,5,2),(56789013,'Gabriela','Vargas','gabriela.vargas@example.com','567890123','https://linkedin.com/in/gabrielavargas','1987-02-14','F',NULL,5,2),(56789014,'Roberto','Ortega','roberto.ortega@example.com','567890123','https://linkedin.com/in/robertoortega','1993-11-23','M',NULL,5,2),(67890123,'Sofía','López','sofia.lopez@example.com','678901234','https://linkedin.com/in/sofialopez','1993-06-06','F',NULL,6,3),(67890124,'Ricardo','Morales','ricardo.morales@example.com','678901234','https://linkedin.com/in/ricardomorales','1993-03-15','M',NULL,6,3),(67890125,'Claudia','Pineda','claudia.pineda@example.com','678901234','https://linkedin.com/in/claudiapineda','1989-12-24','F',NULL,6,3),(78901234,'Miguel','García','miguel.garcia@example.com','789012345','https://linkedin.com/in/miguelgarcia','1989-07-07','M',NULL,7,1),(78901235,'Valeria','Méndez','valeria.mendez@example.com','789012345','https://linkedin.com/in/valeriamendez','1989-04-16','F',NULL,7,1),(89012345,'Laura','Hernández','laura.hernandez@example.com','890123456','https://linkedin.com/in/laurahernandez','1994-08-08','F',NULL,8,2),(89012346,'Héctor','Núñez','hector.nunez@example.com','890123456','https://linkedin.com/in/hectornunez','1985-05-17','M',NULL,8,2),(90123456,'Jorge','Ramírez','jorge.ramirez@example.com','901234567','https://linkedin.com/in/jorgeramirez','1986-09-09','M',NULL,1,3),(90123457,'Carolina','Rojas','carolina.rojas@example.com','901234567','https://linkedin.com/in/carolinarojas','1996-06-18','F',NULL,9,3);
/*!40000 ALTER TABLE `aspirantes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estado`
--

DROP TABLE IF EXISTS `estado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estado` (
  `EstadoID` int NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(50) NOT NULL,
  PRIMARY KEY (`EstadoID`),
  UNIQUE KEY `Descripcion` (`Descripcion`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estado`
--

LOCK TABLES `estado` WRITE;
/*!40000 ALTER TABLE `estado` DISABLE KEYS */;
INSERT INTO `estado` VALUES (3,'Con trabajo'),(1,'En búsqueda'),(2,'No disponible');
/*!40000 ALTER TABLE `estado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profesiones`
--

DROP TABLE IF EXISTS `profesiones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profesiones` (
  `ProfesionID` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) NOT NULL,
  `Imagen` varchar(50) DEFAULT NULL,
  `Descripcion` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`ProfesionID`),
  UNIQUE KEY `Nombre` (`Nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profesiones`
--

LOCK TABLES `profesiones` WRITE;
/*!40000 ALTER TABLE `profesiones` DISABLE KEYS */;
INSERT INTO `profesiones` VALUES (1,'Desarrollador de Software',NULL,'Desarrolla y mantiene aplicaciones de software.'),(2,'Ingeniero de Sistemas',NULL,'Diseña y gestiona sistemas de información a gran escala.'),(3,'Analista de Datos',NULL,'Interpreta datos y proporciona insights para la toma de decisiones.'),(4,'Especialista en Ciberseguridad',NULL,'Protege los sistemas y redes contra ciberataques.'),(5,'Administrador de Base de Datos',NULL,'Gestiona y organiza bases de datos.'),(6,'Ingeniero DevOps',NULL,'Automatiza y mejora los procesos de desarrollo y operación.'),(7,'Arquitecto de Soluciones',NULL,'Diseña soluciones tecnológicas integrales para problemas empresariales.'),(8,'Desarrollador Frontend',NULL,'Se especializa en la construcción de interfaces de usuario.'),(9,'Desarrollador Backend',NULL,'Se especializa en la lógica del lado del servidor y la integración de bases de datos.'),(10,'Analista de Sistemas',NULL,'Analiza y mejora los sistemas informáticos existentes.');
/*!40000 ALTER TABLE `profesiones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'recruitingrh'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-17 14:59:31
