CREATE DATABASE  IF NOT EXISTS `db_myweb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `db_myweb`;
-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: db_myweb
-- ------------------------------------------------------
-- Server version	8.0.18

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
-- Table structure for table `analisi`
--

DROP TABLE IF EXISTS `analisi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `analisi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) NOT NULL,
  `analisi` varchar(5000) NOT NULL,
  `idUsuario` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idUsuario` (`idUsuario`),
  CONSTRAINT `analisi_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `analisi`
--

LOCK TABLES `analisi` WRITE;
/*!40000 ALTER TABLE `analisi` DISABLE KEYS */;
INSERT INTO `analisi` VALUES (1,'Tomb Raider','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><s>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</s></p>\r\n',1);
/*!40000 ALTER TABLE `analisi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comentario`
--

DROP TABLE IF EXISTS `comentario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comentario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comentario` varchar(225) DEFAULT NULL,
  `fecha` varchar(255) DEFAULT NULL,
  `meGusta` int(11) DEFAULT NULL,
  `noMeGusta` int(11) DEFAULT NULL,
  `idUsuario` int(11) NOT NULL,
  `idJuego` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idUsuario` (`idUsuario`),
  KEY `idJuego` (`idJuego`),
  CONSTRAINT `comentario_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`id`),
  CONSTRAINT `comentario_ibfk_2` FOREIGN KEY (`idJuego`) REFERENCES `juego` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comentario`
--

LOCK TABLES `comentario` WRITE;
/*!40000 ALTER TABLE `comentario` DISABLE KEYS */;
INSERT INTO `comentario` VALUES (2,'asas','29/04/2020 18:27:23',0,0,1,1);
/*!40000 ALTER TABLE `comentario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comentario_analisis`
--

DROP TABLE IF EXISTS `comentario_analisis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comentario_analisis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comentario` varchar(225) DEFAULT NULL,
  `fecha` varchar(255) DEFAULT NULL,
  `meGusta` int(11) DEFAULT NULL,
  `noMeGusta` int(11) DEFAULT NULL,
  `idUsuario` int(11) NOT NULL,
  `idAnalisis` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idUsuario` (`idUsuario`),
  KEY `idAnalisis` (`idAnalisis`),
  CONSTRAINT `comentario_analisis_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`id`),
  CONSTRAINT `comentario_analisis_ibfk_2` FOREIGN KEY (`idAnalisis`) REFERENCES `analisi` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comentario_analisis`
--

LOCK TABLES `comentario_analisis` WRITE;
/*!40000 ALTER TABLE `comentario_analisis` DISABLE KEYS */;
INSERT INTO `comentario_analisis` VALUES (1,'<p>as</p>\r\n','30/04/2020 02:10:35',0,0,1,1);
/*!40000 ALTER TABLE `comentario_analisis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comentario_guia`
--

DROP TABLE IF EXISTS `comentario_guia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comentario_guia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comentario` varchar(225) DEFAULT NULL,
  `fecha` varchar(255) DEFAULT NULL,
  `meGusta` int(11) DEFAULT NULL,
  `noMeGusta` int(11) DEFAULT NULL,
  `idUsuario` int(11) NOT NULL,
  `idGuia` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idUsuario` (`idUsuario`),
  KEY `idGuia` (`idGuia`),
  CONSTRAINT `comentario_guia_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`id`),
  CONSTRAINT `comentario_guia_ibfk_2` FOREIGN KEY (`idGuia`) REFERENCES `guia` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comentario_guia`
--

LOCK TABLES `comentario_guia` WRITE;
/*!40000 ALTER TABLE `comentario_guia` DISABLE KEYS */;
INSERT INTO `comentario_guia` VALUES (2,'asasa','29/04/2020 19:35:24',0,0,1,2),(3,'<p>aassa</p>\r\n','30/04/2020 02:06:13',0,0,1,1),(4,'<p>aass</p>\r\n','30/04/2020 02:08:10',0,0,1,1);
/*!40000 ALTER TABLE `comentario_guia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fotoanalisi`
--

DROP TABLE IF EXISTS `fotoanalisi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fotoanalisi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `foto` varchar(255) DEFAULT NULL,
  `idAnalisis` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idAnalisis` (`idAnalisis`),
  CONSTRAINT `fotoanalisi_ibfk_1` FOREIGN KEY (`idAnalisis`) REFERENCES `analisi` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fotoanalisi`
--

LOCK TABLES `fotoanalisi` WRITE;
/*!40000 ALTER TABLE `fotoanalisi` DISABLE KEYS */;
INSERT INTO `fotoanalisi` VALUES (1,'df.jpg',1);
/*!40000 ALTER TABLE `fotoanalisi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fotoguia`
--

DROP TABLE IF EXISTS `fotoguia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fotoguia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `foto` varchar(255) DEFAULT NULL,
  `idGuia` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idGuia` (`idGuia`),
  CONSTRAINT `fotoguia_ibfk_1` FOREIGN KEY (`idGuia`) REFERENCES `guia` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fotoguia`
--

LOCK TABLES `fotoguia` WRITE;
/*!40000 ALTER TABLE `fotoguia` DISABLE KEYS */;
INSERT INTO `fotoguia` VALUES (1,'desconocido.txt',1),(2,'desconocido.txt',2),(3,'desconocido.txt',3),(4,'ac.jpg',4),(5,'d.jpg',5),(6,'images.jpg',6);
/*!40000 ALTER TABLE `fotoguia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fotojuego`
--

DROP TABLE IF EXISTS `fotojuego`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fotojuego` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `foto` varchar(255) DEFAULT NULL,
  `idJuego` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idJuego` (`idJuego`),
  CONSTRAINT `fotojuego_ibfk_1` FOREIGN KEY (`idJuego`) REFERENCES `juego` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fotojuego`
--

LOCK TABLES `fotojuego` WRITE;
/*!40000 ALTER TABLE `fotojuego` DISABLE KEYS */;
INSERT INTO `fotojuego` VALUES (1,'d.jpg',1),(2,'df.jpg',2);
/*!40000 ALTER TABLE `fotojuego` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genero`
--

DROP TABLE IF EXISTS `genero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genero` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(55) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genero`
--

LOCK TABLES `genero` WRITE;
/*!40000 ALTER TABLE `genero` DISABLE KEYS */;
INSERT INTO `genero` VALUES (1,'Acción'),(2,'Fantasía'),(3,'Aventura'),(4,'RPG');
/*!40000 ALTER TABLE `genero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guia`
--

DROP TABLE IF EXISTS `guia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `guia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) NOT NULL,
  `guia` varchar(5000) NOT NULL,
  `idUsuario` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idUsuario` (`idUsuario`),
  CONSTRAINT `guia_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guia`
--

LOCK TABLES `guia` WRITE;
/*!40000 ALTER TABLE `guia` DISABLE KEYS */;
INSERT INTO `guia` VALUES (1,'Animal Crossing: New Horizons','Os explicamos el mÃ©todo a seguir para pagar la primera hipoteca de Animal Crossing: New Horizons rÃ¡pidamente en esta guÃ­a completa del juego, ya en Switch.\r\nTom Nook nos darÃ¡ la bienvenida a la isla desierta y serÃ¡ fiel al estilo de su personaje al colocarnos una pequeÃ±a hipoteca que cubra los gastos de nuestra llegada al lugar, instalaciÃ³n de nuestra tienda y otros detalles que se preocuparÃ¡ en explicarnos. Hay dos mÃ©todos para pagarla y una vez que lo hagamos sustituirÃ¡ a nuestra tienda de campaÃ±a por una casa de verdad. A continuaciÃ³n y como parte de esta guÃ­a completa os explicaremos cÃ³mo pagar esta primera hipoteca de forma sencilla y rÃ¡pida en nuestros primeros minutos de juego.\r\n\r\nCÃ³mo pagar fÃ¡cilmente la primera hipoteca\r\n\r\nEn esta ocasiÃ³n os recomendamos usar la opciÃ³n de pagarla mediante Millas Nook, ya que serÃ¡ una caracterÃ­stica que tan solo estarÃ¡ disponible para este primer pago. Tenemos que reunir hasta 5000 y a pesar de que en un inicio pueda parecer una cantidad muy elevada, no tardaremos en darnos cuenta de que se consiguen solas a medida que atrapamos bichos, vendemos conchas, pescamos algunos peces y demÃ¡s pequeÃ±as misiones que encontramos en el apartado de âMillas Nookâ de nuestro telÃ©fono mÃ³vil virtual (NookÃ³fono). Debemos revisarlo de vez en cuando para canjear las Millas, ya que no ocurre de forma automÃ¡tica.\r\n\r\nSiempre tenemos la opciÃ³n de reunir la ligeramente desorbitada cantidad de bayas que nos pide, pero ya os avanzamos que serÃ¡ mÃ¡s complicado que las Millas debido a que en este primer dÃ­a de juego todavÃ­a no tenemos muchas opciones para conseguir dinero de forma sencilla. Lo hagamos mediante el mÃ©todo que prefiramos, una vez que le paguemos esa primera hipoteca nos informarÃ¡ de que hay una remodelaciÃ³n disponible si asÃ­ lo queremos. Para llevarla a cabo debemos hablar de nuevo con Tom Nook y seleccionar el color del techo que queremos para nuestra vivienda.',1),(2,'CÃ³mo conseguir Millas Nook mÃ¡s rÃ¡pido en Animal Crossing: New Horizons','Os explicamos el mÃ©todo para conseguir Millas Nook rÃ¡pidamente en Animal Crossing: New Horizons en esta guÃ­a completa del juego, ya en Switch.\r\nUna de las innovaciones que New Horizons aporta la saga Animal Crossing es el sistema de Millas Nook. Se trata de una de las opciones disponibles en nuestro NookÃ³fono que registra una serie de misiones por completar, tales como atrapar ciertas especies de peces, vender un nÃºmero determinado de conchas o alcanzar una cifra indicada de bayas almacenadas, por ejemplo. A continuaciÃ³n y como parte de esta guÃ­a completa os explicamos cÃ³mo completar estas misiones fÃ¡cilmente, conseguir millas Nook rÃ¡pidamente y quÃ© premios podemos obtener con ellas.\r\n\r\nCÃ³mo conseguir Millas Nook mÃ¡s rÃ¡pido\r\n\r\nPara saber quÃ© tipo de misiones de Millas Nook tenemos disponibles os recomendamos consultar el apartado correspondiente del NookÃ³fono de forma habitual. Aun asÃ­, hay muchas de ellas que estÃ¡n ocultas por lo que deberemos descubrirlas a medida que realizamos acciones cotidianas y avanzamos en nuestra vida en la isla. Las misiones que sÃ­ podemos ver directamente son las Millas Nook +, quÃ© conseguimos la primera vez que pagamos la hipoteca. Estas van cambiando constantemente en cuanto las completamos y siempre hay alguna disponible, por lo que la forma de conseguir Millas Nook mÃ¡s rÃ¡pido es llevar a cabo estas tareas.',1),(3,'CÃ³mo conseguir Millas Nook mÃ¡s rÃ¡pido en Animal Crossing: New Horizons','CÃ³mo conseguir Millas Nook mÃ¡s rÃ¡pido\r\n\r\nPara saber quÃ© tipo de misiones de Millas Nook tenemos disponibles os recomendamos consultar el apartado correspondiente del NookÃ³fono de forma habitual. Aun asÃ­, hay muchas de ellas que estÃ¡n ocultas por lo que deberemos descubrirlas a medida que realizamos acciones cotidianas y avanzamos en nuestra vida en la isla. Las misiones que sÃ­ podemos ver directamente son las Millas Nook +, quÃ© conseguimos la primera vez que pagamos la hipoteca. Estas van cambiando constantemente en cuanto las completamos y siempre hay alguna disponible, por lo que la forma de conseguir Millas Nook mÃ¡s rÃ¡pido es llevar a cabo estas tareas.',1),(4,'CÃ³mo conseguir Millas Nook mÃ¡s rÃ¡pido en Animal Crossing: New Horizons','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum\r\n\r\n\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum\r\n\r\n\r\n',1),(5,'paquitolanda','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum\r\n--------------------------------------------------\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum\r\n-------------------------------------------------------\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum\r\n ------------------------------------------------------',1),(6,'CÃ³mo conseguir Millas Nook mÃ¡s rÃ¡pido en Animal Crossing: New Horizons','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n\r\n<p>--------------------------------</p>\r\n\r\n<p><s>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</s></p>\r\n',1);
/*!40000 ALTER TABLE `guia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `juego`
--

DROP TABLE IF EXISTS `juego`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `juego` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) NOT NULL,
  `Descripcion` varchar(255) NOT NULL,
  `anyo` int(4) NOT NULL,
  `idGenero` int(11) NOT NULL,
  `idPlataforma` int(11) NOT NULL,
  `idUsuario` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idGenero` (`idGenero`),
  KEY `idPlataforma` (`idPlataforma`),
  KEY `idUsuario` (`idUsuario`),
  CONSTRAINT `juego_ibfk_1` FOREIGN KEY (`idGenero`) REFERENCES `genero` (`id`),
  CONSTRAINT `juego_ibfk_2` FOREIGN KEY (`idPlataforma`) REFERENCES `plataforma` (`id`),
  CONSTRAINT `juego_ibfk_3` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `juego`
--

LOCK TABLES `juego` WRITE;
/*!40000 ALTER TABLE `juego` DISABLE KEYS */;
INSERT INTO `juego` VALUES (1,'xxxxxxxx','zzzzzzzzzzzzzzzzzzzzzzzzzzzz',2020,3,3,1),(2,'Tomb Raider','<p>kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk</p>\r\n',2016,1,1,1);
/*!40000 ALTER TABLE `juego` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plataforma`
--

DROP TABLE IF EXISTS `plataforma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plataforma` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(55) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plataforma`
--

LOCK TABLES `plataforma` WRITE;
/*!40000 ALTER TABLE `plataforma` DISABLE KEYS */;
INSERT INTO `plataforma` VALUES (1,'Play Station 4'),(2,'Xbox One'),(3,'Nintendo Switch'),(4,'Pc');
/*!40000 ALTER TABLE `plataforma` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `puntuacion`
--

DROP TABLE IF EXISTS `puntuacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `puntuacion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `puntuacion` int(2) DEFAULT NULL,
  `idJuego` int(11) NOT NULL,
  `idUsuario` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idUsuario` (`idUsuario`),
  KEY `idJuego` (`idJuego`),
  CONSTRAINT `puntuacion_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`id`),
  CONSTRAINT `puntuacion_ibfk_2` FOREIGN KEY (`idJuego`) REFERENCES `juego` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `puntuacion`
--

LOCK TABLES `puntuacion` WRITE;
/*!40000 ALTER TABLE `puntuacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `puntuacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(55) NOT NULL,
  `user` varchar(55) NOT NULL,
  `password` varchar(10) NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `fechaAlta` varchar(255) NOT NULL,
  `administrador` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'cinti','Admin','123','desconocido.txt','cintia.349@gmail.com','25-05-2020',1),(2,'manoli','manolita','123','a5fccbac3b974a8078db4b34daf9b418.png','cintiia.349@gmail.com','29/04/2020 17:03:33',NULL),(3,'cinti','Paquita','123','desconocido.txt','cintia.349@gmail.com','25-05-2020',0),(4,'cinti','Paquita','123','desconocido.txt','cintia.349@gmail.com','25-05-2020',0);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `videoanalisi`
--

DROP TABLE IF EXISTS `videoanalisi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `videoanalisi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `video` varchar(255) DEFAULT NULL,
  `idAnalisis` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idAnalisis` (`idAnalisis`),
  CONSTRAINT `videoanalisi_ibfk_1` FOREIGN KEY (`idAnalisis`) REFERENCES `analisi` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `videoanalisi`
--

LOCK TABLES `videoanalisi` WRITE;
/*!40000 ALTER TABLE `videoanalisi` DISABLE KEYS */;
/*!40000 ALTER TABLE `videoanalisi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `videoguia`
--

DROP TABLE IF EXISTS `videoguia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `videoguia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `video` varchar(255) DEFAULT NULL,
  `idGuia` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idGuia` (`idGuia`),
  CONSTRAINT `videoguia_ibfk_1` FOREIGN KEY (`idGuia`) REFERENCES `guia` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `videoguia`
--

LOCK TABLES `videoguia` WRITE;
/*!40000 ALTER TABLE `videoguia` DISABLE KEYS */;
/*!40000 ALTER TABLE `videoguia` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-30 17:17:57
