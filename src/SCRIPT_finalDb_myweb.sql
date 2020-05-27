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
  `descripcion` varchar(255) NOT NULL,
  `fecha` varchar(255) NOT NULL,
  `analisi` varchar(10000) DEFAULT NULL,
  `idUsuario` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idUsuario` (`idUsuario`),
  CONSTRAINT `analisi_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `analisi`
--

LOCK TABLES `analisi` WRITE;
/*!40000 ALTER TABLE `analisi` DISABLE KEYS */;
INSERT INTO `analisi` VALUES (1,'Predator: Hunting Grounds para PS4 y PC','Análisis de Predator: Hunting Grounds, el nuevo juego para PS4 y PC desarrollado por los responsables de Friday the 13th: The Game. Con un enfoque puramente multijugador, nos ponemos la máscara de la letal criatura','21/05/2020 17:08:06','<h2>Esto hace que Vietnam parezca Kansas</h2>\r\n\r\n<p>Como multijugador asim&eacute;trico, tenemos dos opciones a la hora de jugar: ponernos en la piel del Depredador, que act&uacute;a en solitario, o formar escuadra junto a otros tres jugadores para cumplir varios objetivos y tratar de sobrevivir. Pero no nos vamos a enga&ntilde;ar: todo el mundo quiere ponerse en la piel del alien&iacute;genea con tecnolog&iacute;a letal para cazar a sus presas (el juego se llama Predator, al fin y al cabo).</p>\r\n\r\n<p>Y&nbsp;ah&iacute; ya nos encontramos <strong>el primer gran problema de Predator: Hunting Grounds</strong>: los tiempos de espera. Al elegir partida r&aacute;pida, podemos ver el tiempo estimado que vamos a tardar en encontrar partida, pudiendo elegir entre Escuadra Militar, Depredador&nbsp;o Sin preferencias. Y en el caso del Depredador la estimaci&oacute;n suele rondar los cinco minutos... Pero la realidad es mucho peor.&nbsp;</p>\r\n\r\n<p>Existe un breve tutorial en el que se repasan sus mec&aacute;nicas principales, pero poco o nada tiene que ver con la experiencia de enfrentarse a&nbsp;jugadores reales. El Depredaor es letal, s&iacute;, pero si no sabemos usar correctamente sus habilidades, cuatro jugadores bien organizados pueden convertirlo en un amasijo de carne y sangre verde en cuesti&oacute;n de segundos.</p>\r\n\r\n<p><strong>Hemos llegado a estar m&aacute;s de trece minutos esperando encontrar partida como el Depredador</strong>, y todo para que al final se nos metiese en una sala en la que no hab&iacute;a nadie. Esto es un problema, adem&aacute;s de por lo obvio, porque da muy poco margen para aprender a manejar a la criatura.</p>\r\n',1),(2,'Las personalidades de tus vecinos - Atléticos (Animal Crossing)','Hoy hablaré de los diferentes tipos de personalidades que tienen los vecinos de Animal crossing.  Los vecinos, son animales que hablan y a veces te pedirán cosas, te harán visitas sorpresas a tu casa, te darán una fiesta de cumpleaños...etcétera.\r\n','25/05/2020 17:39:29','<h3><br />\r\n<strong>Personalidades del g&eacute;nero masculino</strong><br />\r\n<br />\r\n<strong>Atl&eacute;ticos: </strong></h3>\r\n\r\n<p>Les gusta competir y presumen de musculos, se llevan bien con las vecinas que son presumidas y casi siempre estar&aacute;n fuera de casa.</p>\r\n\r\n<p><strong>Arni:</strong> &Aacute;guila<strong> , Hugo:</strong> &Aacute;guila<strong>, Matracas:</strong> Ardilla<strong>, Trot&oacute;n:</strong> Caballo<strong> , </strong><strong>Cacho:</strong> Toro<strong>, Leocadio:</strong> Tigre<strong>, Miguel&oacute;n: </strong>Tigre<strong>, An&iacute;bal:</strong> Rinoceronte</p>\r\n\r\n<p><strong>Rodi:</strong> Rat&oacute;n<strong>, Sans&oacute;n:</strong> Rat&oacute;n<strong>, Sato:</strong> Rat&oacute;n<strong>, Cousteau:</strong> Rana<strong>, Croaldo:</strong> Rana<strong>, Ranobot: </strong>Rana<strong>, Surf&iacute;n: </strong>Rana<strong>, Gus:</strong> Pollo<strong>, Franfu&aacute;:</strong> Cerdo</p>\r\n\r\n<p><strong>Porcinio:</strong> Cerdo<strong>, Rufueto:</strong> Cerdo<strong>, Cornelio:</strong> Ciervo<strong>, Estall&oacute;n:</strong> Cocodrilo<strong>, Rayo: </strong>Conejo<strong>, Sumo: </strong>Conejo<strong>, Eustakio:</strong> Elefante<strong>, Gatom&aacute;n:</strong> Gato</p>\r\n\r\n<p><strong>Micifuz:</strong> Gato<strong>, Rufino:</strong> Gato<strong>, Bab&uacute;:</strong> Gorila<strong>, Bombo:</strong> H&aacute;mster<strong>, Pipo: </strong>Hipop&oacute;tamo<strong>, Chipi:</strong> Koala<strong>, Jones:</strong> Le&oacute;n<strong>, Rogelio:</strong> Le&oacute;n<strong>, Surfleo:</strong> Le&oacute;n</p>\r\n\r\n<p><strong>Monet:</strong> Mono<strong>, Orestes: </strong>Osito<strong>, Poncho: </strong>Osito<strong>, Teddy:</strong> Oso<strong> , Antonio:</strong> Oso Hormiguero<strong>, Camelio:</strong> P&aacute;jaro<strong>, Jaime: </strong>P&aacute;jaro<strong> ,Jota:</strong> P&aacute;jaro (Golondrina)</p>\r\n\r\n<p><strong>Picuet:</strong> P&aacute;jaro<strong>, Chema:</strong> Pato<strong>, Paquito:</strong> Pato<strong>, Pit:</strong> Perro<strong>, Bobi:</strong> Ping&uuml;ino<strong>, Bobo: </strong>Ping&uuml;ino</p>\r\n',1),(3,'Maneater: El tiburón con el que tendrás pesadillas','Conviertete en un tiburón asesino y ve arrasando en las playas o lagos de la ciudad. Deborando a las personas que se acerquen a la orilla.','25/05/2020 17:45:39','<p>Estamos acostumbrados a ser el h&eacute;roe salvador, el palad&iacute;n que rescata a la humanidad todas y cada una de las veces. Acostumbrados a ser el bueno de la pel&iacute;cula. Pero, de vez en cuando, no est&aacute; de m&aacute;s desatar esa ira que todos llevamos dentro, esas ganas de caos y destrucci&oacute;n sano que sirve para desconectar y divertirnos. Y <strong>&iquest;qu&eacute; mejor manera de hacerlo que convirti&eacute;ndonos en un tibur&oacute;n y acabar con todo lo que se mueve?</strong> Esta es la propuesta de <em>Maneater</em>, un interesante juego con m&aacute;s chicha de la que parece.</p>\r\n\r\n<h2>Sembrando el p&aacute;nico</h2>\r\n\r\n<p><em>Maneater</em> es una especie de aventura en la que encarnamos a un tibur&oacute;n &ndash;t&eacute;cnicamente, a una tiburona&ndash; sedienta de sangre. Este t&iacute;tulo nos lleva a un mapa abierto en el que tenemos que ir haciendo diferentes misiones para avanzar a la siguiente zona. <strong>Cada zona tiene unos peligros, unos coleccionables y unos secretos diferentes, as&iacute; como, obviamente, sus desaf&iacute;os propios rematados por un jefe final</strong>. Es un dise&ntilde;o muy tradicional; quiz&aacute;s demasiado para una propuesta tan original.</p>\r\n\r\n<p><strong>Completando misiones y comi&eacute;ndonos a otros seres vivos vamos a conseguir experiencia que nos sirve para subir de nivel, haci&eacute;ndonos no s&oacute;lo m&aacute;s fuertes, sino tambi&eacute;n modificando nuestra apariencia f&iacute;sica</strong>. A todo esto hay que a&ntilde;adirle la posibilidad de mejorar a nuestra protagonista a trav&eacute;s de ciertas modificaciones gen&eacute;ticas que se consiguen explorando y matando. Hay un sistema de mejora un relativamente elaborado, que requiere diferentes recursos que conseguimos en funci&oacute;n de los animales que devoremos o los objetos que encontremos, por lo que tenemos que pensar qu&eacute; presas vamos a atacar si queremos mejorar un habilidad en concreto.</p>\r\n',1);
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
  `idUsuario` int(11) NOT NULL,
  `idJuego` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idUsuario` (`idUsuario`),
  KEY `idJuego` (`idJuego`),
  CONSTRAINT `comentario_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`id`),
  CONSTRAINT `comentario_ibfk_2` FOREIGN KEY (`idJuego`) REFERENCES `juego` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comentario`
--

LOCK TABLES `comentario` WRITE;
/*!40000 ALTER TABLE `comentario` DISABLE KEYS */;
INSERT INTO `comentario` VALUES (3,'<p>s</p>\r\n','24/05/2020 19:47:23',1,18);
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
  `idUsuario` int(11) NOT NULL,
  `idAnalisis` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idUsuario` (`idUsuario`),
  KEY `idAnalisis` (`idAnalisis`),
  CONSTRAINT `comentario_analisis_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`id`),
  CONSTRAINT `comentario_analisis_ibfk_2` FOREIGN KEY (`idAnalisis`) REFERENCES `analisi` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comentario_analisis`
--

LOCK TABLES `comentario_analisis` WRITE;
/*!40000 ALTER TABLE `comentario_analisis` DISABLE KEYS */;
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
  `idUsuario` int(11) NOT NULL,
  `idGuia` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idUsuario` (`idUsuario`),
  KEY `idGuia` (`idGuia`),
  CONSTRAINT `comentario_guia_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`id`),
  CONSTRAINT `comentario_guia_ibfk_2` FOREIGN KEY (`idGuia`) REFERENCES `guia` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comentario_guia`
--

LOCK TABLES `comentario_guia` WRITE;
/*!40000 ALTER TABLE `comentario_guia` DISABLE KEYS */;
/*!40000 ALTER TABLE `comentario_guia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comentariocomunidad`
--

DROP TABLE IF EXISTS `comentariocomunidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comentariocomunidad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comentario` varchar(225) DEFAULT NULL,
  `fecha` varchar(255) DEFAULT NULL,
  `idUsuario` int(11) NOT NULL,
  `idComunidad` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idUsuario` (`idUsuario`),
  KEY `idComunidad` (`idComunidad`),
  CONSTRAINT `comentariocomunidad_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`id`),
  CONSTRAINT `comentariocomunidad_ibfk_2` FOREIGN KEY (`idComunidad`) REFERENCES `comunidad` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comentariocomunidad`
--

LOCK TABLES `comentariocomunidad` WRITE;
/*!40000 ALTER TABLE `comentariocomunidad` DISABLE KEYS */;
/*!40000 ALTER TABLE `comentariocomunidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comunidad`
--

DROP TABLE IF EXISTS `comunidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comunidad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(225) NOT NULL,
  `hilo` varchar(225) NOT NULL,
  `fecha` varchar(255) NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `idUsuario` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idUsuario` (`idUsuario`),
  CONSTRAINT `comunidad_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comunidad`
--

LOCK TABLES `comunidad` WRITE;
/*!40000 ALTER TABLE `comunidad` DISABLE KEYS */;
INSERT INTO `comunidad` VALUES (1,'¿Cúando sale L.A Noire 2 para Pc?','<p>Buenas a todos! Me gustar&iacute;a saber cuando sale el juego o si est&aacute; en desarrollo. &iquest;Alguien tiene alguna idea? plis contestadme T_T</p>\r\n','24/05/2020 18:48:31','noire.jpg',1);
/*!40000 ALTER TABLE `comunidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email`
--

DROP TABLE IF EXISTS `email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `email` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(55) NOT NULL,
  `idUsuario` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idUsuario` (`idUsuario`),
  CONSTRAINT `email_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email`
--

LOCK TABLES `email` WRITE;
/*!40000 ALTER TABLE `email` DISABLE KEYS */;
INSERT INTO `email` VALUES (1,'cinthyaortiz.9328@gmail.com',2);
/*!40000 ALTER TABLE `email` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fotoanalisi`
--

LOCK TABLES `fotoanalisi` WRITE;
/*!40000 ALTER TABLE `fotoanalisi` DISABLE KEYS */;
INSERT INTO `fotoanalisi` VALUES (7,'pre.jpg',1),(8,'vecinos.png',2),(9,'maneaterr.jpg',3);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fotoguia`
--

LOCK TABLES `fotoguia` WRITE;
/*!40000 ALTER TABLE `fotoguia` DISABLE KEYS */;
INSERT INTO `fotoguia` VALUES (1,'s.jpg',1),(2,'enfermeria.jpg',2),(3,'scorcher.jpg',3);
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
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fotojuego`
--

LOCK TABLES `fotojuego` WRITE;
/*!40000 ALTER TABLE `fotojuego` DISABLE KEYS */;
INSERT INTO `fotojuego` VALUES (2,'q.jpg',2),(3,'diablo.jpg',3),(4,'blood.jpg',4),(5,'gta.jpg',5),(6,'eternal.jpg',6),(7,'oblets.jpg',7),(8,'seaOfStars.jpg',8),(9,'crucible.jpg',9),(14,'cyber.jpg',11),(15,'mafia.jpg',12),(16,'ww2.jpg',13),(17,'resident.png',14),(18,'maneater.jpg',15),(19,'journy.jpeg',16),(20,'adventure.jpg',17),(21,'ruiner.jpg',18),(22,'divisionXbox.jpeg',19),(23,'zone.jpg',20),(24,'sword.jpg',21),(25,'arslan.jpg',22),(26,'riverbond.jpg',23),(27,'cod.jpg',24),(28,'thelastUs.jpg',25),(29,'fifa.jpg',26),(30,'persona5.jpg',27),(31,'control.jpg',28),(32,'sekiro.jpg',29),(33,'god.jpg',30),(34,'spiderman.jpg',31),(35,'mount.jpg',32),(36,'tomRaider.jpg',33),(37,'bloodborne.jpg',34),(38,'unch.jpg',35),(39,'pokmn.jpg',36),(40,'lego.jpg',37),(41,'doraemon.jpg',38),(42,'zelda.jpg',39),(43,'xenocle.jpg',40),(44,'litleDragon.jpg',41),(45,'onepeace.jpg',42),(46,'bobEsponja.jpg',43),(47,'marioRabbid.jpg',44),(48,'dragonQuest.jpg',45),(49,'civi.jpg',46);
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
  `fecha` varchar(255) NOT NULL,
  `guia` varchar(5000) NOT NULL,
  `idUsuario` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idUsuario` (`idUsuario`),
  CONSTRAINT `guia_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guia`
--

LOCK TABLES `guia` WRITE;
/*!40000 ALTER TABLE `guia` DISABLE KEYS */;
INSERT INTO `guia` VALUES (1,'Animal Crossing: New Horizons - Cómo escanear códigos QR','20/05/2020 18:34:19','<p>Lo primero que debemos hacer es disponer de una cuenta de <strong>Nintendo Switch Online</strong> y tras ello <strong>descargar su aplicaci&oacute;n</strong> en la tienda virtual de nuestro <strong>dispositivo m&oacute;vil iOS o Android</strong>. Si la tenemos <strong>actualizada a la &uacute;ltima versi&oacute;n</strong> y <strong>conectada a nuestra cuenta Nintendo</strong> nos deber&iacute;a aparecer un <strong>icono con Animal Crossing: New Horizons</strong> cuando la iniciemos. Pulsamos ah&iacute; y nos llevar&aacute; a una serie de aplicaciones que podemos usar enlazadas a nuestra partida como nuestro <strong>pasaporte</strong>, un <strong>chat</strong> (de texto y voz, muy &uacute;til para hablar con nuestros amigos en el juego), nuestra <strong>lista de amigos</strong> y una serie de ajustes.</p>\r\n\r\n<p>Adem&aacute;s, encontramos tambi&eacute;n la opci&oacute;n de &ldquo;<strong>Dise&ntilde;os</strong>&rdquo;. Al clicar ah&iacute; nos aparece la opci&oacute;n de &ldquo;<strong>Escanear un c&oacute;digo QR</strong>&rdquo; y podemos hacerlo f&aacute;cilmente al apuntar a la pantalla de nuestra consola o a la de un PC (si encontramos un dise&ntilde;o por internet que nos gusta, por ejemplo. Algo a tener en cuenta que <strong>tan solo podremos tener un dise&ntilde;o escaneado a la vez</strong>, por lo que <strong>si queremos guardarlo</strong> dentro del juego deberemos acceder a la aplicaci&oacute;n de &ldquo;Mis Dise&ntilde;os&rdquo; del <strong>Nook&oacute;fono</strong> y pulsar el <strong>bot&oacute;n +</strong> de nuestra consola Nintendo Switch para descargar aquel dise&ntilde;o que tengamos subido a nuestra aplicaci&oacute;n. Tan solo debemos <strong>sustituirlo por uno de los huecos en blanco</strong> que tenemos y tras ello podemos repetir el proceso para seguir ampliando nuestra colecci&oacute;n de dise&ntilde;os.</p>\r\n',1),(2,'Caja fuerte de la Enfermería del Hospital (Resident Evil 3 Remake)','25/05/2020 17:51:19','<p>En Resident Evil 3 Remake iremos encontrando una serie de cajas fuertes con una recompensa oculta, que no podremos abrir hasta no encontrar la soluci&oacute;n a su combinaci&oacute;n por el escenario del juego.</p>\r\n\r\n<p>Una vez descubierto el c&oacute;digo, &eacute;stas se abren <strong>girando el dial en la direcci&oacute;n indicada y hasta el n&uacute;mero indicado, y luego al siguiente en la direcci&oacute;n que se indique, pero sin pulsar aceptar</strong>. Solamente debes pulsar aceptar hasta mover el dial al &uacute;ltimo n&uacute;mero. Si te equivocas, el dial se pondr&aacute; a girar y tienes que volver a introducir el c&oacute;digo. En esta ocasi&oacute;n, a diferencia de lo que suced&iacute;a en <em>Resident Evil 2 Remake</em>, no son especialmente numerosas. Tambi&eacute;n hay dos taquillas cerradas con combinaci&oacute;n, pero <strong>esas las hemos explicado junto con los candados</strong>.</p>\r\n\r\n<ul>\r\n	<li><strong>Soluci&oacute;n de la combinaci&oacute;n:</strong> 9 izquierda, 3 derecha. Simplemente mu&eacute;vete con la cruceta a izquierda y derecha hasta llegar a los n&uacute;meros indicados. Cuando llegues al &uacute;ltimo pulsa aceptar.</li>\r\n	<li><strong>&iquest;Cu&aacute;ndo la encontraremos?:</strong> Mientras exploras el Hospital con Carlos.</li>\r\n	<li><strong>&iquest;D&oacute;nde?:</strong> Est&aacute; en la sala de Enfermer&iacute;a, en la segunda planta.</li>\r\n	<li><strong>Recompensa:</strong> conseguir&aacute;s el Cargador doble (Rifle de asalto).</li>\r\n</ul>\r\n',1),(3,'¿Cuál es la mejor bici? - Bicicletas (GTA V)','25/05/2020 18:07:46','<p><strong>&iquest;Cu&aacute;l es la mejor bici?</strong></p>\r\n\r\n<p>Las bicis son... eso. Bicis. No son un gran medio de transporte, pero es mejor que nada.</p>\r\n\r\n<ul>\r\n	<li><strong>BMX:</strong> 50km/h - Pedal and metal cycles - $800.</li>\r\n	<li><strong>Cruiser:</strong> 45km/h - Pedal and metal cycles - $800.</li>\r\n	<li><strong>Endurex Race Bike:</strong> 63km/h - Pedal and metal cycles - $10.000.</li>\r\n	<li><strong>Fixter:</strong> 63km/h - No se puede comprar, tampoco se puede guardar en un garaje.</li>\r\n	<li><strong>Scorcher:</strong> 55km/h - Pedal and metal cycles - $2.000.</li>\r\n	<li><strong>Try-Cycles Race Bike:</strong> 63km/h - Pedal and metal cycles - $10.000.</li>\r\n	<li><strong>Whippet Race Bike:</strong> 63km/h - Pedal and metal cycles - $10.000.</li>\r\n</ul>\r\n\r\n<p>De acuerdo a la valoraci&oacute;n actual de sus estad&iacute;sticas generales, <strong>la Scorcher</strong> es la mejor bici disponible.</p>\r\n',1);
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
  `Descripcion` varchar(5000) NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `juego`
--

LOCK TABLES `juego` WRITE;
/*!40000 ALTER TABLE `juego` DISABLE KEYS */;
INSERT INTO `juego` VALUES (2,'Animal Crossing: New Horizons','<p>Si ya no puedes m&aacute;s con el ajetreo de la ciudad, Tom Nook se ha sacado un negocio redondo de debajo de la manga y te tiene preparada una sorpresa que te encantar&aacute;: &iexcl;el Plan de Asentamiento en Islas Desiertas de Nook Inc.!<br />\r\n<br />\r\nHasta ahora has conocido a personajes de lo m&aacute;s variopinto, te lo has pasado de miedo en la gran ciudad y puede que hasta hayas decidido darle un giro a tu vida trabajando en la alcald&iacute;a. Sin embargo, hay una parte de ti que anhela&hellip; &iexcl;la libertad en estado puro! Quieres hacer lo que te apetezca en cualquier momento. Quiz&aacute; la soluci&oacute;n sea darse un largo paseo por la playa de una isla desierta, en la que aguarda un verdadero tesoro de naturaleza virgen...<br />\r\n<br />\r\nDisfruta de una vida placentera repleta de encanto y creatividad. Eso s&iacute;, tambi&eacute;n tendr&aacute;s que dar un poco el callo para sacarle el m&aacute;ximo partido.<br />\r\n<br />\r\nRecoge materiales y crea todo tipo de cosas: desde herramientas hasta objetos para hacerte la vida m&aacute;s c&oacute;moda. Saca a relucir tus dotes para la jardiner&iacute;a e interact&uacute;a con las flores y los &aacute;rboles de nuevas maneras. Levanta un hogar en el que la l&iacute;nea entre el interior y el exterior se desdibuja por completo.<br />\r\n<br />\r\nTraba amistad con los reci&eacute;n llegados, disfruta del paso de las estaciones, sortea r&iacute;os mientras exploras la isla... &iexcl;y mucho m&aacute;s!</p>\r\n\r\n<p><strong>Car&aacute;cteristicas:</strong></p>\r\n\r\n<ul>\r\n	<li>Distribuidor:&nbsp;Nintendo</li>\r\n	<li>G&eacute;neros:&nbsp;Simulaci&oacute;n,</li>\r\n	<li>Plataforma:&nbsp;SWITCH</li>\r\n	<li>Consola virtual:&nbsp;No disponible</li>\r\n	<li>Lanzamiento en Europa:&nbsp;20/03/2020</li>\r\n	<li>Formato:&nbsp;F&iacute;sico y Digital</li>\r\n	<li>Jugadores:&nbsp;8+</li>\r\n	<li>Modo Online:&nbsp;Si</li>\r\n</ul>\r\n',2020,3,3,1),(3,'Diablo IV','<p><strong>Diablo 4</strong>&nbsp;es uno de los juegos que ha estado en boca de todos estos &uacute;ltimos a&ntilde;os. Se trata de la cuarta entrega de una de las franquicias m&aacute;s importantes de los videojuegos, y por fin Blizzard ha anunciado lo que tantos jugadores llevaban a&ntilde;os pidiendo. Tras un&nbsp;Diablo Immortal&nbsp;para m&oacute;viles que no hizo mucha gracia a los asistentes de la Blizzcon 2018,&nbsp;<strong>Blizzard ha aprovechado la Blizzcon 2019 para anunciar el nuevo Diablo</strong>.</p>\r\n\r\n<p><strong>Se trata de un juego para PC, Xbox One y PS4</strong>&nbsp;que nos permitir&aacute; volver a jugar con el Druida, el Hechicero y el B&aacute;rbaro, explorar nuevos territorios y contar con monturas, como caballos, para pasar m&aacute;s r&aacute;pido por las zonas. Gr&aacute;ficamente, el juego ha dado un paso adelante frente a la propuesta de Diablo III, y algo parecido pasa con el arte.</p>\r\n\r\n<p>Y es que, ahora&nbsp;<strong>Diablo IV ser&aacute; m&aacute;s oscuro</strong>, pero Blizzard ha confirmado que mantendr&aacute; la esencia de la saga. Es decir: un mont&oacute;n de estad&iacute;sticas, armas y armaduras diferentes, construcci&oacute;n de materiales y hordas de demonios a los que aniquilar.</p>\r\n',2020,4,4,1),(4,'Bloodstained: Curse of the Moon','<p>Curse of the Moon es un spin-off de Bloodstained: Ritual of the Night que forma parte de las metas adicionales anunciadas durante la campa&ntilde;a de Kickstarter de este &uacute;ltimo. Se trata de una aventura 2D con scroll lateral y un estilo 8-bit que recuerda a los Castlevania originales, y que corre bajo el desarrollo de Inti Creates bajo la supervisi&oacute;n de Koji Igarashi.<br />\r\n<br />\r\nEn Bloodstained: Curse of the Moon jugaremos como Zangetsu, un asesino de demonios que tendr&aacute; que forjar nuevas amistades por el camino y que se unir&aacute;n a su grupo como personajes jugables. Al combinar las habilidades de cada uno, desbloquearemos nuevos caminos para cada escenario; pero la elecci&oacute;n de compa&ntilde;eros tiene sus consecuencias, y podr&iacute;an afectar directamente a la dificultad del juego o incluso a sus finales.</p>\r\n\r\n<p><strong>Car&aacute;cteristicas:</strong></p>\r\n\r\n<ul>\r\n	<li><strong>Tambi&eacute;n para:</strong> PC,&nbsp;PS4,&nbsp;Nintendo Switch,&nbsp;3DS,&nbsp;Vita</li>\r\n	<li><strong>Desarrollador: </strong>Inti-Creates</li>\r\n	<li><strong>Editor:</strong> Inti Creates</li>\r\n	<li><strong>G&eacute;nero:</strong> Acci&oacute;n,&nbsp;Acci&oacute;n y aventura,&nbsp;Plataformas&nbsp;(Fantas&iacute;a,&nbsp;Vampiros&nbsp;y&nbsp;Retro)</li>\r\n	<li><strong>Jugadores:</strong> 1</li>\r\n	<li><strong>Duraci&oacute;n:</strong> 6 horas</li>\r\n	<li><strong>Idioma:</strong> Textos en ingl&eacute;s y voces en japon&eacute;s</li>\r\n	<li><strong>Lanzamiento:</strong> 6 de junio de 2018</li>\r\n</ul>\r\n',2018,2,2,1),(5,'Grand Theft Auto V','<p><strong>GTA 5</strong> es la quinta entrega de la exitosa saga de videojuegos sandbox desarrollada por Rockstar Games, Grand Theft Auto. Con millones de ventas a sus espaldas y uno de los mundos abiertos m&aacute;s ricos hasta la fecha, Grand Theft Auto V transporta al jugador a Los Santos, una extensa y soleada metr&oacute;polis en declive que lucha por mantenerse a flote en una era de incertidumbre econ&oacute;mica y realities baratos que referencia de una forma par&oacute;dica a la Los &Aacute;ngeles de nuestro tiempo.</p>\r\n\r\n<p>Y es que GTA 5 combina historia y jugabilidad de una nueva forma vista en la serie. Los jugadores entran y salen repetidamente de las vidas de los tres personajes, participando en todos los aspectos de la historia entrelazada del juego. Un mundo abierto gigantesco repleto de posibilidades y experiencias: desde atracos, persecuciones policiales, carreras y tiroteos, hasta actividades m&aacute;s pintorescas como saltar en paraca&iacute;das, jugar al tenis o al golf entre otros. Adem&aacute;s el t&iacute;tulo de Rockstar incluye un potente modo multijugador llamado GTA Online, un juego de <strong>mundo abierto</strong> din&aacute;mico y persistente para 16 jugadores (30 en PS4, Xbox One y PC) que comparte el contenido y la mec&aacute;nica con Grand Theft Auto V, pero que se expande con nuevos contenidos adicionales de forma continua.</p>\r\n\r\n<p><strong>Car&aacute;cteristicas:</strong></p>\r\n\r\n<ul>\r\n	<li><strong>Tambi&eacute;n para: </strong>PS4, Xbox One, PS3, Xbox 360</li>\r\n	<li><strong>Desarrollador:</strong> RockStar Games</li>\r\n	<li><strong>Editor:</strong> RockStar Games</li>\r\n	<li><strong>G&eacute;nero:</strong> Acci&oacute;n, Acci&oacute;n y aventura, Shooter (Polic&iacute;aco y Thriller y Mafia)</li>\r\n	<li><strong>Jugadores:</strong> 1-30 (Competitivo: GTA online / Cooperativo: GTA online)</li>\r\n	<li><strong>Duraci&oacute;n:</strong> 35-80 horas + multijugador</li>\r\n	<li><strong>Idioma:</strong> Textos en espa&ntilde;ol y voces en ingl&eacute;s</li>\r\n</ul>\r\n',2015,1,4,1),(6,'DOOM Eternal','<p>DOOM Eternal es la secuela directa del galardonado Doom (2016) desarrollado por id Software, donde se busca ofrecer la mejor combinaci&oacute;n de velocidad y potencia de fuego, dando todo un salto adelante en el mundo del combate en primera persona en avance continuo. En DOOM Eternal el jugador debe tomar el papel del Asesino de la Muerte (DOOM Slayer) y regresar para vengarse de las fuerzas del infierno en una entrega donde hay nuevos demonios y cl&aacute;sicos as&iacute; como armas y habilidades potentes y novedosas. DOOM Eternal nos lleva a luchar por diferentes dimensiones.</p>\r\n\r\n<p><strong>Car&aacute;cteristicas:</strong></p>\r\n\r\n<ul>\r\n	<li><strong>Tambi&eacute;n para: </strong>PS4, Xbox One, Nintendo Switch, Stadia</li>\r\n	<li><strong>Desarrollador:</strong> id Software</li>\r\n	<li><strong>Editor:</strong> Bethesda Softworks</li>\r\n	<li><strong>G&eacute;nero:</strong> Acci&oacute;n, Shooter, Primera persona (FPS) (Apocal&iacute;ptico, Aliens y Ciencia ficci&oacute;n)</li>\r\n	<li><strong>Jugadores:</strong> 1 (Competitivo: S&iacute; / Cooperativo: No)</li>\r\n	<li><strong>Duraci&oacute;n: </strong>18-20 horas</li>\r\n	<li><strong>Idioma:</strong> Textos en espa&ntilde;ol y voces en espa&ntilde;ol</li>\r\n	<li><strong>Lanzamiento:</strong> 20 de marzo de 2020</li>\r\n</ul>\r\n',2020,1,4,1),(7,'Ooblets','<p>Harvest Moon, Pok&eacute;mon, Animal Crossing y una amplia creatividad de sus autores son los ingredientes para crear Ooblets, un videojuego de gesti&oacute;n y simulaci&oacute;n de una granja (cultivo y cosecha de plantas) para poder tener los productos necesarios en la alimentaci&oacute;n de unas peque&ntilde;as criaturas. Estas dan el nombre al juego, y pueden ser entrenadas y evolucionadas para combatir en un mundo abierto con entornos coloridos y diversos.</p>\r\n\r\n<p><strong>Car&aacute;cteristicas:</strong></p>\r\n\r\n<ul>\r\n	<li><strong>Tambi&eacute;n para:</strong> Xbox One</li>\r\n	<li><strong>Desarrollador:</strong> Glumberland</li>\r\n	<li><strong>Editor:</strong> Double Fine</li>\r\n	<li><strong>G&eacute;nero: </strong>Rol, Combate por turnos, Vida virtual (Fantas&iacute;a)</li>\r\n	<li><strong>Jugadores:</strong> 1</li>\r\n	<li><strong>Lanzamiento:</strong> Por determinar en Espa&ntilde;a</li>\r\n</ul>\r\n',2020,4,4,1),(8,'Sea of Stars','<p>Sea of Stars es un videojuego de rol por turnos inspirado por los grandes cl&aacute;sicos del g&eacute;nero que busca modernizarlos en t&eacute;rminos de mec&aacute;nicas de combate, exploraci&oacute;n, storytelling e interacci&oacute;n con el entorno con una historia cautivadora, nost&aacute;ligica, llena de giros inesperados ambientada en el mismo universo, aunque muchos a&ntilde;os atr&aacute;s, del t&iacute;tulo de acci&oacute;n y plataformas The Messenger. En Esea of Stars, en concreto, los dos hijos del Solsticio han de unir sus fuerzas para luchar con las monstruosas creaciones de un malvado alquimista conocido como The Fleshmancer.</p>\r\n\r\n<p><strong>Car&aacute;cteristicas:</strong></p>\r\n\r\n<ul>\r\n	<li><strong>Tambi&eacute;n para:</strong> PS5, Xbox Series, Nintendo Switch</li>\r\n	<li><strong>Desarrollador:</strong> Sabotage Studio</li>\r\n	<li><strong>Editor:</strong> Por determinar</li>\r\n	<li><strong>G&eacute;nero:</strong> Rol, Combate por turnos (Fantas&iacute;a y Retro)</li>\r\n	<li><strong>Jugadores: </strong>1</li>\r\n	<li><strong>Idioma: </strong>Textos en espa&ntilde;ol</li>\r\n	<li><strong>Lanzamiento:</strong> 2022 (Por determinar)</li>\r\n</ul>\r\n',2022,2,4,1),(9,'Crucible','<p>Crucible es un videojuego de acci&oacute;n-shooter por equipos ambientado en hostil mundo alien&iacute;gena que donde las decisiones del jugador tienen un rol destacado. Cada partida de Crucible apuesta por ser una lucha por la supervivencia y el control en el que hay que acabar con criaturas alien&iacute;genas, capturar objetivos y acechar a usuarios rivales para alzarse con la victoria.<br />\r\n<br />\r\nAl igual que otras producciones de Amazon Game Studios, Crucible cuenta elementos de mayor interacci&oacute;n con los espectadores a trav&eacute;s de plataformas de streaming <strong>como Twitch.</strong></p>\r\n\r\n<p><strong>Caracter&iacute;sticas:</strong></p>\r\n\r\n<ul>\r\n	<li><strong>Desarrollador:</strong> Relentless Studios</li>\r\n	<li><strong>Editor:</strong> Amazon</li>\r\n	<li><strong>G&eacute;nero:</strong> Acci&oacute;n, Supervivencia, Shooter (Ciencia ficci&oacute;n)</li>\r\n	<li><strong>Jugadores:</strong> 1-12 (Competitivo: Online / Cooperativo: Online)</li>\r\n	<li><strong>Idioma:</strong> Textos en espa&ntilde;ol y voces en espa&ntilde;ol e ingl&eacute;s</li>\r\n	<li><strong>Lanzamiento:</strong> 20 de mayo de 2020 (Pegi: +12)</li>\r\n</ul>\r\n',2020,1,4,1),(11,'Cyberpunk 2077','<p>Cyberpunk 2077, que sale a la venta en abril de 2020 para PC, PS4 y Xbox One, es un videojuego RPG de mundo abierto desarrollado por los creadores de The Witcher, CD Projekt Red, que se basa en un cl&aacute;sico juego de tablero llamado Cyberpunk 2020 y que es todo un cl&aacute;sico de los a&ntilde;os 80 firmado por Mike Pondsmith. Lo que tendremos con este t&iacute;tulo de rol es un lanzamiento oscuro, con un argumento maduro y complejo, enormes opciones de juego y un desarrollo de la acci&oacute;n abierto en el que las decisiones del jugador marcan el rumbo de la partida.</p>\r\n\r\n<p><strong>Caracter&iacute;sticas:</strong></p>\r\n\r\n<ul>\r\n	<li><strong>Tambi&eacute;n para: </strong>PS4, PS5, Xbox Series, Xbox One, Stadia</li>\r\n	<li><strong>Desarrollador:</strong> CD Projekt RED</li>\r\n	<li><strong>Editor:</strong> Bandai Namco</li>\r\n	<li><strong>G&eacute;nero: </strong>Rol, Acci&oacute;n RPG (Ciencia ficci&oacute;n y Cyberpunk)</li>\r\n	<li><strong>Idioma:</strong> Textos en espa&ntilde;ol y voces en espa&ntilde;ol</li>\r\n	<li><strong>Lanzamiento:</strong> 17 de septiembre de 2020 (Pegi: +18)</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n',2020,1,4,1),(12,'Mafia II: Edición Definitiva','<p>Mafia II: Edici&oacute;n Definitiva es una remasterizaci&oacute;n de la segunda entrega de la saga del crimen Mafia, que mueve los jugadores en esta ocasi&oacute;n hasta la Nueva York de los a&ntilde;os 40 y 50, aqu&iacute; llamada Empire Bay. El h&eacute;roe de guerra Vito Scaletta se mezcla con la mafia con la esperanza de pagar las deudas de su padre al mismo tiempo que intenta demostrar su val&iacute;a para ascender en la familia a base de cometer cr&iacute;menes cada vez mejor recompensados.</p>\r\n\r\n<p><strong>Caracter&iacute;sticas:</strong></p>\r\n\r\n<ul>\r\n	<li><strong>Tambi&eacute;n para:</strong> PS4, Xbox One, Stadia</li>\r\n	<li><strong>Desarrollador:</strong> Hangar 13</li>\r\n	<li><strong>Editor:</strong> 2K Games</li>\r\n	<li><strong>G&eacute;nero:</strong> Acci&oacute;n, Shooter, Acci&oacute;n y aventura (Mafia, Detectives, Polic&iacute;aco y Thriller y Romanos)</li>\r\n	<li><strong>Jugadores:</strong> 1</li>\r\n	<li><strong>Duraci&oacute;n:</strong> 12 horas (+ DLC y extras)</li>\r\n	<li><strong>Idioma:</strong> Textos en espa&ntilde;ol y voces en espa&ntilde;ol e ingl&eacute;s</li>\r\n	<li><strong>Lanzamiento: </strong>28 de agosto de 2020 (Pegi: +18)</li>\r\n</ul>\r\n',2020,3,4,1),(13,'World War Z','<p>World War Z es un videojuego de acci&oacute;n y disparos en tercera personal ideal para disfrute en cooperativo inspirado en la pel&iacute;cula de Paramount Pictures inspirado en la exitosa pel&iacute;cula de acci&oacute;n Guerra Mundial Z. As&iacute;, la producci&oacute;n de Saber Interactive asegura enfrentamientos contra unas enormes hordas de zombis.</p>\r\n\r\n<p><strong>Caracter&iacute;sticas:</strong></p>\r\n\r\n<ul>\r\n	<li><strong>Tambi&eacute;n para:</strong> PS4, Xbox One, Nintendo Switch</li>\r\n	<li><strong>Desarrollador: </strong>Saber Interactive</li>\r\n	<li><strong>Editor:</strong> Paramount Digital Entertainment</li>\r\n	<li><strong>G&eacute;nero:</strong> Acci&oacute;n, Shooter (Apocal&iacute;ptico, Terror, Gore y Zombies)</li>\r\n	<li><strong>Jugadores: </strong>1-6 (Competitivo: 2-6 Online / Cooperativo: 1-4 online)</li>\r\n	<li><strong>Duraci&oacute;n:</strong> Incalculable</li>\r\n	<li><strong>Idioma: </strong>Textos en espa&ntilde;ol y voces en ingl&eacute;s</li>\r\n	<li><strong>Lanzamiento: </strong>16 de abril de 2019 (Pegi: +18)</li>\r\n</ul>\r\n',2019,1,4,1),(14,'Resident Evil 3','<p>Resident Evil 3 Remake es, como su nombre indica, una adaptaci&oacute;n a los tiempos actuales de la tercera entrega num&eacute;rica de la saga survival-horror de Capcom. Con un estilo est&eacute;tico y jugable muy similar al del remake del segundo Resident Evil, esta revisi&oacute;n de Resident Evil 3 Nemesis nos devuelve a las calles de Raccoon City 20 a&ntilde;os despu&eacute;s del videojuego original.</p>\r\n\r\n<p><strong>Caracter&iacute;sticas:</strong></p>\r\n\r\n<ul>\r\n	<li><strong>Tambi&eacute;n para: </strong>PS4, Xbox One</li>\r\n	<li><strong>Tipo:</strong> Remake de Resident Evil 3: Nemesis</li>\r\n	<li><strong>Desarrollador:</strong> Capcom</li>\r\n	<li><strong>Editor:</strong> Capcom</li>\r\n	<li><strong>G&eacute;nero:</strong> Acci&oacute;n, Acci&oacute;n y aventura, Survival horror, Shooter (Zombies y Terror)</li>\r\n	<li><strong>Jugadores:</strong> 1 (Campa&ntilde;a) 5 (Resistance)</li>\r\n	<li><strong>Duraci&oacute;n:</strong> 4-5 horas + Resistance</li>\r\n	<li><strong>Idioma:</strong> Espa&ntilde;ol (voces y textos)</li>\r\n	<li><strong>Lanzamiento:</strong> 3 de abril de 2020 (Pegi: +18)</li>\r\n</ul>\r\n',2020,3,4,1),(15,'Maneater','<p>Convi&eacute;rtete en un tibur&oacute;n con Maneater, un videojuego de acci&oacute;n RPG donde el jugador ha de luchar por su supervivencia en un oc&eacute;ano abierto donde el peligro acecha constantemente. En Maneater, la &uacute;nica ayuda disponible para el usuario son su ingenio, las mand&iacute;bulas del tibur&oacute;n y su habilidad para evolucionar diferentes partes del cuerpo conforme se alimente de sus presas.<br />\r\n<br />\r\nEnfrentado a un cazador obsesionado con el protagonista de este juego de acci&oacute;n y rol, en Maneater no solo debes luchar contra otras criaturas marinas, sino tambi&eacute;n contra un ej&eacute;rcito de cazadores dispuestos a todo con tal de cobrarse su presa. Por fortuna para el tibur&oacute;n, puede crecer y adquirir nuevas habilidades especiales con las que defenderse de sus ataques mientras explora siete grandes zonas costeras con su propia fauna.</p>\r\n\r\n<p><strong>Caracter&iacute;sticas:</strong></p>\r\n\r\n<ul>\r\n	<li><strong>Tambi&eacute;n para:</strong> PC, PS4, Nintendo Switch</li>\r\n	<li><strong>Desarrollador:</strong> Blindside Interactive</li>\r\n	<li><strong>Editor:</strong> Tripwire Interactive</li>\r\n	<li><strong>G&eacute;nero: </strong>Rol, Acci&oacute;n RPG (Tiburones y Animales)</li>\r\n	<li><strong>Jugadores:</strong> 1</li>\r\n	<li><strong>Duraci&oacute;n: </strong>10-12 horas</li>\r\n	<li><strong>Idioma: </strong>Textos en espa&ntilde;ol y voces en espa&ntilde;ol e ingl&eacute;s</li>\r\n	<li><strong>Lanzamiento:</strong> 22 de mayo de 2020 (Pegi: +18)</li>\r\n</ul>\r\n',2020,1,2,3),(16,'Journey to the Savage Planet','<p>505 Games y Typhoon Studios presentan Journey to the Savage Planet, un videojuego de aventuras y exploraci&oacute;n en primera persona que nos propone recorrer un extra&ntilde;o y colorido mundo alien&iacute;gena con el fin de determinar si puede ser habitado por los humanos. Pero la supervivencia no se presenta como una tarea f&aacute;cil, obligando al usuario a escanear, disparar y recolectar flora y fauna para tratar de resolver el enorme rompecabezas que supone el planeta AR-Y 2. Por otra parte, Journey to the Savage Planet se define como una apuesta bastante optimista llena de c&oacute;micos momentos.</p>\r\n\r\n<p><strong>Caracter&iacute;sticas:</strong></p>\r\n\r\n<ul>\r\n	<li><strong>Tambi&eacute;n para:</strong> PC, PS4</li>\r\n	<li><strong>Desarrollador:</strong> Typhoon Games</li>\r\n	<li><strong>Editor:</strong> 505 Games</li>\r\n	<li><strong>G&eacute;nero: </strong>Acci&oacute;n, Acci&oacute;n y aventura (Ciencia ficci&oacute;n y Espacial)</li>\r\n	<li><strong>Jugadores:</strong> 1-2</li>\r\n	<li><strong>Duraci&oacute;n:</strong> 08-10 horas.</li>\r\n	<li><strong>Idioma:</strong> Textos en espa&ntilde;ol y voces en ingl&eacute;s</li>\r\n	<li><strong>Lanzamiento: </strong>30 de enero de 2020</li>\r\n</ul>\r\n',2020,3,2,3),(17,'Adventure Time: Pirates of the Enchiridion','<p>Adventure Time: Pirates of the Enchiridion (Hora de Aventuras: Piratas del Enchiridi&oacute;n) es un videojuego de acci&oacute;n y aventura con elementos RPG, basado en los c&eacute;lebres dibujos animados de televisi&oacute;n, donde Finn y Jake han de investigar por que el Pa&iacute;s de Ooo est&aacute; inundado. Como estos h&eacute;roes de protagonistas, los jugadores han de explorar los mares, buscar pistas ocultas, interrogar sospechosos muy chungos y luchar contra piratas para poder solucionar el misterio y salvar al mundo.<br />\r\n<br />\r\nAdventure Time: Pirates of the Enchiridion (Hora de Aventuras: Piratas del Enchiridi&oacute;n) es tambi&eacute;n un t&iacute;tulo de rol, y como tal permite mejorar los personajes de juego as&iacute; como usar objetos, pociones y habilidades para enfrentarse en fren&eacute;ticas batallas con un toque t&aacute;ctico.</p>\r\n\r\n<p><strong>Carcater&iacute;sticas:</strong></p>\r\n\r\n<ul>\r\n	<li><strong>Tambi&eacute;n para:</strong> PC, PS4, Nintendo Switch</li>\r\n	<li><strong>Desarrollador:</strong> Climax Studios</li>\r\n	<li><strong>Editor:</strong> Bandai Namco</li>\r\n	<li><strong>G&eacute;nero:</strong> Acci&oacute;n, Acci&oacute;n y aventura (Piratas, TV, Dibujos Animados y Humor)</li>\r\n	<li><strong>Jugadores:</strong> 1</li>\r\n	<li><strong>Idioma: </strong>Textos en espa&ntilde;ol y voces en ingl&eacute;s</li>\r\n	<li><strong>Lanzamiento:</strong> 20 de julio de 2018 (Pegi: +7)</li>\r\n</ul>\r\n',2018,3,2,3),(18,'Ruiner','<p>Una batalla cenital en la que el fuego y los disparos se al&iacute;an con el cyberpunk. Bienvenidos a Rengkok, una ciudad dominada por la corporaci&oacute;n Heaven en el a&ntilde;o 2091 y un universo futurista corrupto en el que pasaremos nuestras horas de acci&oacute;n desenfrenada. Tu hermano ha sido secuestrado y debes rescatarlo, no importa el precio. Ruiner es un videojuego de acci&oacute;n fren&eacute;tica con la m&uacute;sica de Susumo Hirasawa, compositor del anime Paprika.<br />\r\n<br />\r\nEn el t&iacute;tulo debemos combinar los reflejos incre&iacute;bles de nuestro protagonista, un soci&oacute;pata, que sin embargo tiene todo tipo de herramientas y un arsenal de leyenda para tratar de liberar a su familiar: un hacker capaz de liberar peligrosos secretos que pongan en peligro esta sociedad enferma que retrata con su mec&aacute;nica shooter este fastuoso e impactante Ruiner.</p>\r\n\r\n<p><strong>Caracter&iacute;sticas:</strong></p>\r\n\r\n<ul>\r\n	<li><strong>Tambi&eacute;n para:</strong> PC, PS4, Nintendo Switch, Mac, Linux</li>\r\n	<li><strong>Desarrollador:</strong> Reikon Games</li>\r\n	<li><strong>Editor:</strong> Devolver Digital</li>\r\n	<li><strong>G&eacute;nero:</strong> Acci&oacute;n, Shooter (Ciencia ficci&oacute;n)</li>\r\n	<li><strong>Jugadores:</strong> 1</li>\r\n	<li><strong>Duraci&oacute;n:</strong> 6-8 horas</li>\r\n	<li><strong>Idioma:</strong> Textos en espa&ntilde;ol y voces en ingl&eacute;s</li>\r\n	<li><strong>Lanzamiento:</strong> 26 de septiembre de 2017 (Pegi: +18)</li>\r\n</ul>\r\n',2017,1,2,3),(19,'The Division 2: Warlords of New York','<p>The Division 2: Warlords of New York es la expansi&oacute;n de A&ntilde;o 2 del estupendo loot shooter de Ubisoft, que lleva a los jugadores a explorar la zona de Manhattan, ahora controlada por el agente renegado Aaron Keener, m&aacute;s conocido como Vanguard. Tras ser abandonado a su suerte en la Zona Oscura, se pertrecha con armas qu&iacute;micas para sembrar el caos en la ciudad acompa&ntilde;ado de un s&eacute;quito de lugartenientes: Vivian Conley, Javier Kajika, James Dragov y Theo Parnell. Cada uno de ellos controla un distrito de la ciudad.</p>\r\n\r\n<p>Cuenta con una campa&ntilde;a llena de misiones de historia y objetivos secundarios que completar, adem&aacute;s de todos los contenidos que lleguen a trav&eacute;s de temporadas a lo largo del A&ntilde;o 2. Tambi&eacute;n marca el regreso de facciones enemigas como los Cleaners y los Rikers del primer juego, as&iacute; como de armas, artefactos y personajes conocidos.</p>\r\n\r\n<p><strong>Caracter&iacute;sticas:</strong></p>\r\n\r\n<ul>\r\n	<li><strong>Tambi&eacute;n para:</strong> PC, PS4</li>\r\n	<li><strong>Tipo:</strong> Expansi&oacute;n de The Division 2 (requerido)</li>\r\n	<li><strong>Desarrollador: </strong>UbiSoft</li>\r\n	<li><strong>Editor:</strong> Ubisoft</li>\r\n	<li><strong>G&eacute;nero:</strong> Acci&oacute;n, Shooter, Acci&oacute;n RPG (B&eacute;lico, Soldados y Fuerzas Especiales, Ciencia ficci&oacute;n, Apocal&iacute;ptico y Tom Clancy)</li>\r\n	<li><strong>Jugadores: </strong>1-8 (Competitivo: 2-4 online / Cooperativo: 8 online)</li>\r\n	<li><strong>Idioma: </strong>Textos en espa&ntilde;ol y voces en espa&ntilde;ol</li>\r\n	<li><strong>Lanzamiento:</strong> 3 de marzo de 2020 (Pegi: +18)</li>\r\n</ul>\r\n',2020,1,2,3),(20,'Battlezone: Gold Edition','<p>Disfruta de una explosiva campa&ntilde;a de ciencia ficci&oacute;n con soporte para cuatro jugadores en <strong>Battlezone: Gold Edition</strong>, la versi&oacute;n mejorada de este remake del cl&aacute;sico de Atari de principios de los ochenta que nos pone a los mandos de varios tanques, a los que podemos equipar con toda clase de armas para derrotar a los rivales.<br />\r\n<br />\r\nLa edici&oacute;n especial de Battlezone, un videojuego desarrollado por el estudio brit&aacute;nico Rebellion, autores de Alien vs . Predator y Sniper Elite, incluye todos los contenidos adicionales del original, incluyendo el Modo Cl&aacute;sico, que permite disfrutar de la acci&oacute;n como si de un juego de sal&oacute;n recreativo se tratase.</p>\r\n\r\n<p><strong>Caracter&iacute;sticas:</strong></p>\r\n\r\n<ul>\r\n	<li><strong>Tambi&eacute;n para: </strong>PC, PS4, Nintendo Switch</li>\r\n	<li><strong>Desarrollador:</strong> Rebellion</li>\r\n	<li><strong>Editor:</strong> Rebellion</li>\r\n	<li><strong>G&eacute;nero: </strong>Acci&oacute;n, Shooter (Ciencia ficci&oacute;n)</li>\r\n	<li><strong>Jugadores: </strong>1-4 (Cooperativo: S&iacute;, online)</li>\r\n	<li><strong>Idioma:</strong> Textos en espa&ntilde;ol y voces en ingl&eacute;s</li>\r\n	<li><strong>Lanzamiento: </strong>1 de mayo de 2018 (Pegi: +7)</li>\r\n</ul>\r\n',2018,1,2,3),(21,'Sword Art Online: Fatal Bullet','<p>Sword Art Online: Fatal Bullet es un videojuego de rol, acci&oacute;n y disparos en tercera persona basado en la conocida franquicia, donde los usuarios deben combatir en escenarios s&oacute;lidos y realista, m&aacute;s propios de una pel&iacute;cula de ciencia ficci&oacute;n futurista, contra desafiantes jefes en una historia supervisada por el creador de la saga.<br />\r\n<br />\r\nSword Art Online: Fatal Bullet dispone tambi&eacute;n de un modo multijugador competitivo 4c4, as&iacute; como misiones cooperativas, y garantiza al jugador una intensa experiencia inmersiva en el mundo de la novela original y el anime del popular VRMMO.</p>\r\n\r\n<p><strong>Caracter&iacute;sticas:</strong></p>\r\n\r\n<ul>\r\n	<li><strong>Tambi&eacute;n para:</strong> PC, PS4, Nintendo Switch</li>\r\n	<li><strong>Desarrollador:</strong> Dimps Corporation</li>\r\n	<li><strong>Editor: </strong>Bandai Namco</li>\r\n	<li><strong>G&eacute;nero:</strong> Acci&oacute;n, Shooter (Ciencia ficci&oacute;n, Anime y Manga)</li>\r\n	<li><strong>Jugadores:</strong> 1-8 (Competitivo: Online / Cooperativo: Online)</li>\r\n	<li><strong>Duraci&oacute;n:</strong> 30 horas (m&iacute;nimo)</li>\r\n	<li><strong>Idioma:</strong> Textos en espa&ntilde;ol y voces en japon&eacute;s</li>\r\n	<li><strong>Lanzamiento:</strong> 23 de febrero de 2018 (Pegi: +12)</li>\r\n</ul>\r\n',2018,2,2,3),(22,'Arslan: the Warriors of Legend','<p>Aventura de acci&oacute;n t&aacute;ctica basado en la novela &eacute;pica y posterior manga y anime The Heroes Legend of Arslan. En ella, se narra la historia de del joven pr&iacute;ncipe heredero de Pars, Arslan, que se ve forzado a salir de su reino cuando su padre, el rey, es traicionado y vencido, al tiempo que sus dominios resultan conquistados. El protagonista deber&aacute; reunir a sus pocos fieles compa&ntilde;eros para crear un ejercito con el que recuperar el trono.</p>\r\n\r\n<p><strong>Caracter&iacute;sticas:</strong></p>\r\n\r\n<ul>\r\n	<li><strong>Tambi&eacute;n para:</strong> PC, PS4, PS3</li>\r\n	<li><strong>Desarrollador:</strong> Omega Force</li>\r\n	<li><strong>Editor:</strong> Koei</li>\r\n	<li><strong>G&eacute;nero:</strong> Acci&oacute;n, Hack and Slash (Samurais)</li>\r\n	<li><strong>Jugadores:</strong> 1-2 (Cooperativo: S&iacute;, online y local)</li>\r\n	<li><strong>Duraci&oacute;n:</strong> 15 horas (m&iacute;nimo)</li>\r\n	<li><strong>Idioma:</strong> Textos en ingl&eacute;s y voces en japon&eacute;s</li>\r\n	<li><strong>Lanzamiento: </strong>12 de febrero de 2016</li>\r\n</ul>\r\n',2016,1,2,3),(23,'Riverbond','<p>Riverbond se presenta como un videojuego de acci&oacute;n y disparos con v&oacute;xeles y referencias a juegos independientes (Shovel Knight, Psychonauts, etc.) con mucho encanto en el cual no faltan exploraci&oacute;n de mazmorras. Como tal, la aventura lleva al usuario a emprender un viaje propia de la &eacute;poca de 16 bits en el que luchar contra monstruos, buscar tesoros y convertirse en todos unos h&eacute;roes. Todo ello, adem&aacute;s, incorporando un modo cooperativo para disfrute de hasta cuatro jugadores.</p>\r\n\r\n<p><strong>Caracter&iacute;sticas:</strong></p>\r\n\r\n<ul>\r\n	<li><strong>Tambi&eacute;n para:</strong> PC, PS4, Nintendo Switch</li>\r\n	<li><strong>Desarrollador:</strong> Cococucumber</li>\r\n	<li><strong>Editor: </strong>Cococucumber</li>\r\n	<li><strong>G&eacute;nero:</strong> Acci&oacute;n, Acci&oacute;n y aventura (Fantas&iacute;a, Magia y Mazmorras)</li>\r\n	<li><strong>Jugadores:</strong> 1-4</li>\r\n	<li><strong>Idioma:</strong> Textos en espa&ntilde;ol</li>\r\n	<li><strong>Lanzamiento: </strong>9 de junio de 2019</li>\r\n</ul>\r\n',2019,3,2,3),(24,'Call of Duty: Warzone','<p>Call of Duty: Warzone es el nombre del modo battle-royale independiente de Call of Duty: Modern Warfare que garantiza una experiencia de combate masiva en la que hasta 150 jugadores toman el papel de un veterano operador de nivel 1 y entran en el denso y extenso mundo de Verdansk, que aloja dos modos de juego diferentes: BR y Bot&iacute;n.<br />\r\n<br />\r\nEl primero es una evoluci&oacute;n de Blackout de Black Ops 4 y recupera algunos aspectos de este como el gulag, mientras que el segundo es una carrera por conseguir dinero colaborando con compa&ntilde;eros de escuadra. Ambos comparten numerosas novedades, como diferentes eventos o nuevas misiones esparcidas por el mapa, que van desde capturar una zona hasta acabar con una escuadra espec&iacute;fica.</p>\r\n\r\n<p><strong>Caracter&iacute;sticas:</strong></p>\r\n\r\n<ul>\r\n	<li><strong>Tambi&eacute;n para:</strong> PC, PS4</li>\r\n	<li><strong>Desarrollador:</strong> Infinity Ward</li>\r\n	<li><strong>Editor:</strong> Activision</li>\r\n	<li><strong>G&eacute;nero:</strong> Acci&oacute;n, Battle royale, Primera persona (FPS), Shooter (B&eacute;lico, Guerra moderna, Paramilitares y mercenarios y Soldados y Fuerzas Especiales)</li>\r\n	<li><strong>Jugadores:</strong> 1-150 (Competitivo: Online / Cooperativo: Online)</li>\r\n	<li><strong>Duraci&oacute;n:</strong> Multijugador incalculable</li>\r\n	<li><strong>Idioma: </strong>Textos en espa&ntilde;ol y voces en ingl&eacute;s</li>\r\n	<li><strong>Lanzamiento:</strong> 10 de marzo de 2020 (Pegi: +18)</li>\r\n</ul>\r\n',2020,1,2,3),(25,'The Last of Us 2','<p>The Last of Us 2 es un videojuego de acci&oacute;n y aventuras, con elementos de supervivencia, enmarcado en un mundo postapocal&iacute;ptico donde habitan unos seres infectados. Al igual que la primera parte, esta continuaci&oacute;n o Part II de The Last of Us busca hacerse fuerte en mec&aacute;nicas jugables como la exploraci&oacute;n o el combate con un fuerte elemento t&aacute;ctico, no s&oacute;lo plantando cara a los zombies y criaturas de pesadilla de su mundo de infectados, sino tambi&eacute;n ofreciendo resistencia a los humanos... Peores en algunos casos que las m&aacute;s infernales de las criaturas.<br />\r\n<br />\r\nEsta secuela de la premiada obra de Naughty Dog lanzada originalmente en 2013, promete una historia al nivel de sus personajes, de gran intensidad, desgarradora y emocional protagonizada por Ellie, aunque tambi&eacute;n hay partes jugables para Joel. Neil Druckmann, principal guionista del estudio creador de la serie Uncharted, ya ha prometido que la historia de The Last of Us: Part II girar&aacute; alrededor del odio, en contraposici&oacute;n a un juego original donde la tem&aacute;tica principal era el amor. The Last of Us 2 (TLoU2) es actualmente uno de los juegos m&aacute;s esperados de PS4 y PS4 Pro.</p>\r\n\r\n<p><strong>Caracter&iacute;sticas:</strong></p>\r\n\r\n<ul>\r\n	<li><strong>Desarrollador: </strong>Naughty Dog</li>\r\n	<li><strong>Editor:</strong> Sony</li>\r\n	<li><strong>G&eacute;nero: </strong>Acci&oacute;n, Acci&oacute;n y aventura (Apocal&iacute;ptico, Monstruos y Terror)</li>\r\n	<li><strong>Jugadores:</strong> 1</li>\r\n	<li><strong>Soporta:</strong> PS4 Pro</li>\r\n	<li><strong>Lanzamiento:</strong> 19 de junio de 2020 (Pegi: +18)</li>\r\n</ul>\r\n',2020,1,1,1),(26,'FIFA 20: Ultimate Team','<p>FIFA 20: Ultimate Team, tambi&eacute;n conocido simplemente como FUT 20 o FUT 2020, es el modo multijugador del simulador futbol&iacute;stico de EA Sports para la temporada 2020. Como viene siendo habitual, este a&ntilde;adido del videojuego deportivo invita a los jugadores a crear el equipo de sus sue&ntilde;os en base a la consecuci&oacute;n de tarjetas virtuales y monedas.</p>\r\n\r\n<p>Entre las novedades m&aacute;s destacadas de FUT 20 o FIFA Ultimate Team 20 se incluyen nuevas experiencias sociales, una nueva gesti&oacute;n de equipos m&aacute;s simplificada, Amistosos FUT: la nueva plataforma para jugar a FUT con amigos en modo local u online; Sistema de objetivos redefinido.</p>\r\n\r\n<p><strong>Caracter&iacute;sticas:</strong></p>\r\n\r\n<ul>\r\n	<li><strong>Tambi&eacute;n para:</strong> PC, Xbox One, Nintendo Switch</li>\r\n	<li><strong>Tipo:</strong> Servicios / Extras de FIFA 20 (requerido)</li>\r\n	<li><strong>Desarrollador: </strong>EA Sports</li>\r\n	<li><strong>Editor:</strong> EA Sports</li>\r\n	<li><strong>G&eacute;nero:</strong> Deportes, F&uacute;tbol</li>\r\n	<li><strong>Idioma:</strong> Textos en espa&ntilde;ol y voces en espa&ntilde;ol</li>\r\n	<li><strong>Lanzamiento: </strong>27 de septiembre de 2019 (Pegi: +3)</li>\r\n</ul>\r\n',2020,1,1,1),(27,'Persona 5: Royal','<p>Persona 5: Royal es la nueva versi&oacute;n del JRPG de Atlus de 2016, una aventura que nos pone al mando de los Ladrones Fantasma de Corazones, un grupo de h&eacute;roes inadaptados, que se adentran en el Metaverso para robar los deseos distorsionados de la gente, y curar a una sociedad moderna corrompida.<br />\r\n<br />\r\nUna edici&oacute;n definitiva cargada de contenido, con dos personajes nuevos y un cap&iacute;tulo adicional de la trama que ampl&iacute;an la aventura con m&aacute;s horas, as&iacute; como nuevas mec&aacute;nicas de juego, nuevas ubicaciones con actividades, y multitud de mejoras en aspectos como la exploraci&oacute;n, el combate y el d&iacute;a a d&iacute;a de nuestro personaje.</p>\r\n\r\n<p><strong>Caractr&iacute;sticas:</strong></p>\r\n\r\n<ul>\r\n	<li><strong>Desarrollador:</strong> P-Studio</li>\r\n	<li><strong>Editor:</strong> Atlus</li>\r\n	<li><strong>G&eacute;nero:</strong> Rol, Combate por turnos (Manga)</li>\r\n	<li><strong>Jugadores: </strong>Jugadores: 1 Red: 1</li>\r\n	<li><strong>Duraci&oacute;n:</strong> 90-120 horas</li>\r\n	<li><strong>Idioma: </strong>Textos en espa&ntilde;ol, ingl&eacute;s, franc&eacute;s, alem&aacute;n, italiano y voces en ingl&eacute;s y japon&eacute;s</li>\r\n	<li><strong>Lanzamiento:</strong> 31 de marzo de 2020 - 31 de octubre de 2019 (en jap&oacute;n)</li>\r\n</ul>\r\n',2020,1,1,1),(28,'Control','<p>Conocido anteriormente con el nombre en clave &quot;P7&quot;, Control es un videojuego de los creadores de Max Payne y Alan Wake, una aventura de acci&oacute;n en tercera persona que combina los disparos caracter&iacute;sticos de Remedy con habilidades sobrenaturales y un universo sandbox o de mundo abierto. Control se desarrolla en un mundo &uacute;nico y en cambio constante que yuxtapone nuestra realidad tan familiar con lo extra&ntilde;o e inexplicable.<br />\r\n<br />\r\nDespu&eacute;s de que una agencia secreta en Nueva York haya sido invadida por una amenaza de otro mundo, los jugadores asumen en Control el papel de Jesse Faden, el nuevo Director que lucha por recuperar el Control. El t&iacute;tulo desaf&iacute;a a los jugadores a dominar una combinaci&oacute;n de habilidades sobrenaturales, cargas modificables y entornos reactivos mientras lucha por mundos profundos y misteriosos.</p>\r\n\r\n<p><strong>Caracter&iacute;sticas:</strong></p>\r\n\r\n<ul>\r\n	<li><strong>Tambi&eacute;n para:</strong> PC, Xbox One</li>\r\n	<li><strong>Desarrollador:</strong> Remedy Entertainment</li>\r\n	<li><strong>Editor:</strong> 505 Games</li>\r\n	<li><strong>G&eacute;nero:</strong> Acci&oacute;n, Acci&oacute;n y aventura (Paranormal, Polic&iacute;aco y Thriller y Ciencia ficci&oacute;n)</li>\r\n	<li><strong>Jugadores: </strong>1</li>\r\n	<li><strong>Duraci&oacute;n: </strong>15 horas</li>\r\n	<li><strong>Idioma:</strong> Textos en espa&ntilde;ol y voces en espa&ntilde;ol / ingl&eacute;s</li>\r\n	<li><strong>Lanzamiento:</strong> 27 de agosto de 2019 (Pegi: +18)</li>\r\n</ul>\r\n',2019,3,1,1),(29,'Sekiro: Shadows Die Twice','<p>Sekiro: Shadows Die Twice es un juego de acci&oacute;n y aventuras en tercera persona con elementos de rol con el inconfundible estilo del estudio responsable de Dark Souls y Bloodborne. Los autores de Dark Souls y Activision parecen recuperar del olvido la m&iacute;tica serie Tenchu para adentrarnos en el mundo de finales de 1500, la era Sengoku en Jap&oacute;n; un periodo brutal y sangriento en constante conflicto entre la vida y la muerte.</p>\r\n\r\n<p>From Software nos pone con Sekiro: Shadows Die Twice a los mandos de un guerrero de noble coraz&oacute;n, cuya misi&oacute;n es rescatar a su amo, un joven se&ntilde;or, al tiempo que busca la venganza sobre su archienemigo.</p>\r\n\r\n<p><strong>Caracter&iacute;sicas:</strong></p>\r\n\r\n<ul>\r\n	<li><strong>Tambi&eacute;n para:</strong> PC, Xbox One</li>\r\n	<li><strong>Desarrollador:</strong> FromSoftware</li>\r\n	<li><strong>Editor: </strong>Activision</li>\r\n	<li><strong>G&eacute;nero:</strong> Acci&oacute;n, Acci&oacute;n y aventura (Fantas&iacute;a, Jap&oacute;n Feudal, Ninjas, Samurais y Monstruos)</li>\r\n	<li><strong>Jugadores:</strong> 1</li>\r\n	<li><strong>Duraci&oacute;n:</strong> 40 horas (m&iacute;nimo)</li>\r\n	<li><strong>Idioma:</strong> Textos en espa&ntilde;ol y voces en espa&ntilde;ol / japon&eacute;s</li>\r\n	<li><strong>Lanzamiento:</strong> 22 de marzo de 2019 (Pegi: +18)</li>\r\n</ul>\r\n',2019,2,1,1),(30,'God of War','<p>V&iacute;deojuego de la saga God of War que responde al escueto nombre de God of War, y que traslada su f&oacute;rmula jugable desde la antigua Grecia de las aventuras de Kratos a una ambientaci&oacute;n n&oacute;rdica de lo m&aacute;s llamativa donde retorna su carism&aacute;tico protagonista en una historia de padre e hijo que promete recuperar una parte de la humanidad perdida del espartano gracias a la presencia de su v&aacute;stago, de nombre Atreus, y que es parte capital de la campa&ntilde;a individual, como siempre, punto fundamental del atractivo de esta legendaria serie de hack and slash con contextos mitol&oacute;gicos tras de s&iacute;. De hecho, y tras el experimento del on-line de God of War Ascension, desde Sony se ha garantizado que en esta entrega no habr&aacute; elemento multijugador.</p>\r\n\r\n<p>El t&iacute;tulo no pierde ni un &aacute;pice de la violencia que ha caracterizado a la IP hasta la fecha, y mezcla con enorme fluidez potentes secuencias de car&aacute;cter cinem&aacute;tico con escenas puramente in-game caracterizadas por una visceralidad descomunal.</p>\r\n\r\n<p><strong>Caracter&iacute;sticas:</strong></p>\r\n\r\n<ul>\r\n	<li><strong>Desarrollador:</strong> Sony Santa Monica</li>\r\n	<li><strong>Editor:</strong> Sony</li>\r\n	<li><strong>G&eacute;nero:</strong> Acci&oacute;n, Acci&oacute;n y aventura, Hack and Slash (Fantas&iacute;a y Antigua Grecia)</li>\r\n	<li><strong>Jugadores: </strong>1</li>\r\n	<li><strong>Duraci&oacute;n:</strong> 20-25 horas (m&iacute;nimo)</li>\r\n	<li><strong>Idioma:</strong> Textos en espa&ntilde;ol y voces en espa&ntilde;ol</li>\r\n	<li><strong>Lanzamiento:</strong> 20 de abril de 2018 (Pegi: +18)</li>\r\n</ul>\r\n',2018,2,1,1),(31,'Spider-Man','<p>Spiderman protagoniza este videojuego de acci&oacute;n desarrollado por Insomniac Games, los autores de Resistance y Ratchet &amp; Clank entre otros, en exclusiva para PS4. La historia de esta aventura es totalmente original y nos pone en el rol de un Peter Parker experimentado y maduro que debe lidiar con los problemas que suponen el tener que salvar Manhattan de los peores criminales o villanos y compatibilizarlo con su vida personal. De hecho, el trepamuros de Marvel se enfrenta a varios de sus peores enemigos, poniendo a pruebas las habilidades del alter-ego m&aacute;s acrob&aacute;tico de Parker.</p>\r\n\r\n<p><strong>Caracter&iacute;sticas:</strong></p>\r\n\r\n<ul>\r\n	<li><strong>Desarrollador:</strong> Insomniac Games</li>\r\n	<li><strong>Editor:</strong> Sony</li>\r\n	<li><strong>G&eacute;nero:</strong> Acci&oacute;n, Acci&oacute;n y aventura (C&oacute;mic, Superh&eacute;roes, Moderno y Superh&eacute;roes Marvel)</li>\r\n	<li><strong>Jugadores:</strong> 1</li>\r\n	<li><strong>Duraci&oacute;n:</strong> 16-18 horas (m&iacute;nimo)</li>\r\n	<li><strong>Soporta:</strong> PS4 Pro</li>\r\n	<li><strong>Idioma: </strong>Textos en espa&ntilde;ol y voces en espa&ntilde;ol</li>\r\n	<li><strong>Lanzamiento:</strong> 7 de septiembre de 2018 (Pegi: +16)</li>\r\n</ul>\r\n',2018,3,1,1),(32,'Mount & Blade II: Bannerlord','<p>Mount &amp; Blade II: Bannerlord es la secuela de Mount &amp; Blade, un videojuego o aventura medieval de acci&oacute;n, estrategia y rol creado por TaleWorlds que nos lleva al convulso mundo de los caballeros y los castillos. El t&iacute;tulo cuenta con multiugador y avances en la inteligencia artificial, la diplomacia, los asedios, interfaz redise&ntilde;ada, posibilidad de mods y nuevas facciones.<br />\r\n<br />\r\nEn Mount &amp; Blade 2 Bannerlord las batallas ser&aacute;n intensas y emocionantes como anta&ntilde;o, pero con un toque m&aacute;s realista, m&aacute;s cre&iacute;ble y potenciando las animaciones y la propia f&iacute;sica de las armas para que al golpear, o protegerse de un ataque, sientas que de verdad est&aacute;s en la piel de un caballero de la Edad Media. Incluso la climatolog&iacute;a afectar&aacute; a sus movimientos.</p>\r\n\r\n<p><strong>Caracter&iacute;sticas:</strong></p>\r\n\r\n<ul>\r\n	<li><strong>Tambi&eacute;n para:</strong> PC, Xbox One</li>\r\n	<li><strong>Desarrollador: </strong>Taleworlds Entertainment</li>\r\n	<li><strong>Editor: </strong>Taleworlds Entertainment</li>\r\n	<li><strong>G&eacute;nero:</strong> Estrategia, Turnos, Acci&oacute;n RPG (Medieval)</li>\r\n	<li><strong>Lanzamiento:</strong> Por determinar en Espa&ntilde;a</li>\r\n</ul>\r\n',2020,4,1,1),(33,'Shadow of the Tomb Raider','<p>La arque&oacute;loga m&aacute;s famosa del mundo del videojuego suma este 2018 la tercera entrega de su saga &#39;reboot&#39; iniciada en 2013 y continuada en 2015 con Rise of the Tomb Raider (trilog&iacute;a de la superviviente). Responde al nombre de Shadow of the Tomb Raider y supone el punto final a la historia de origen de Lara con un juego de acci&oacute;n y aventuras realmente notable y una Lara Croft m&aacute;s al l&iacute;mite que nunca.</p>\r\n\r\n<p><strong>Caracter&iacute;sticas:</strong></p>\r\n\r\n<ul>\r\n	<li><strong>Tambi&eacute;n para:</strong> PC, Xbox One</li>\r\n	<li><strong>Desarrollador:</strong> Eidos Montreal</li>\r\n	<li><strong>Editor: </strong>Square Enix</li>\r\n	<li><strong>G&eacute;nero:</strong> Acci&oacute;n, Acci&oacute;n y aventura (Mayas y Aztecas y Misterio)</li>\r\n	<li><strong>Duraci&oacute;n:</strong> 14-16 horas (m&iacute;nimo)</li>\r\n	<li><strong>Idioma:</strong> Textos en espa&ntilde;ol y voces en espa&ntilde;ol</li>\r\n	<li><strong>Lanzamiento: </strong>14 de septiembre de 2018</li>\r\n</ul>\r\n',2018,3,1,1),(34,'Bloodborne','<p>Bloodborne es un videojuego exclusivo para PS4 de los creadores de Demon&#39;s Souls y la trilog&iacute;a Dark Souls, FromSoftware. El videojuego nos traslada al siglo XIX, a una especie de oscuro y t&eacute;trico Londres victoriano donde encontraremos todos los ingredientes de la saga Souls: exploraci&oacute;n, un online distintivo y unos enfrentamientos a vida o muerte. La gran diferencia es que Bloodborne se orienta al combate ofensivo, arrebat&aacute;ndonos el escudo de entre las manos y oblig&aacute;ndonos a atacar con las numerosas armas de fuego y nuevos movimientos.</p>\r\n\r\n<p><strong>Caracter&iacute;sticas:</strong></p>\r\n\r\n<ul>\r\n	<li><strong>Desarrollador:</strong> FromSoftware</li>\r\n	<li><strong>Editor:</strong> Sony</li>\r\n	<li><strong>G&eacute;nero:</strong> Rol, Acci&oacute;n RPG (Fantas&iacute;a)</li>\r\n	<li><strong>Jugadores:</strong> 1-3 (Competitivo: 3 (online) / Cooperativo: 3 (online))</li>\r\n	<li><strong>Duraci&oacute;n:</strong> 40-60 horas (m&iacute;nimo) + multijgador</li>\r\n	<li><strong>Idioma: </strong>Textos en espa&ntilde;ol y voces en espa&ntilde;ol</li>\r\n	<li><strong>Lanzamiento:</strong> 25 de marzo de 2015 (Pegi: +16) - 5 de febrero de 2015 (en jap&oacute;n)</li>\r\n</ul>\r\n',2015,4,1,1),(35,'Uncharted 4: El Desenlace del Ladrón ','<p>Uncharted 4: El Desenlace del Ladr&oacute;n es un juego exclusivo de PS4 creado por Naughty Dog, y editado por Sony Interactive Entertainment. Un videojuego que viene a cerrar las aventuras del conocido buscador de tesoros tan conocido en consolas PlayStation. El t&iacute;tulo es una aventura de acci&oacute;n y exploraci&oacute;n en tercera persona protagonizada por Nathan Drake, que en esta entrega de la saga se plantea un dilema existencial tras todas las haza&ntilde;as vividas en los anteriores videojuegos. De hecho ahondamos en el pasado del h&eacute;roe, puesto que a lo largo de la campa&ntilde;a conocemos a su hermano Sam Drake, una de las grandes novedades y un punto de mucha importancia a la hora de ahondar en la fascinante g&eacute;nesis de este aut&eacute;ntico Indiana Jones de las videoconsolas.</p>\r\n\r\n<p>Acci&oacute;n, aventuras y plataformas con ritmo cinematogr&aacute;fico de manos de los creadores de The Last of Us y Crash Bandicoot, entre muchos otros, que eleva el list&oacute;n de espectacularidad de los juegos anteriores con un sinf&iacute;n de escenas de ritmo trepidante dispuestas a llevarnos al l&iacute;mite en tiroteos, acrobacias y secuencias de plataformas.</p>\r\n\r\n<p><strong>Caracter&iacute;sticas:</strong></p>\r\n\r\n<ul>\r\n	<li><strong>Desarrollador:</strong><a href=\"https://www.3djuegos.com/desarrollador/0f0f0f0/374/naughty-dog/\"><strong> </strong>Naughty Dog</a></li>\r\n	<li><strong>Editor:</strong><a href=\"https://www.3djuegos.com/distribuidor/0f0f0f0/145/sony/\"> Sony</a></li>\r\n	<li><strong>G&eacute;nero: </strong><a href=\"https://www.3djuegos.com/novedades/juegos-generos/juegos-ps4-accin/0f37f1f0/juegos-populares/\">Acci&oacute;n</a>, <a href=\"https://www.3djuegos.com/novedades/juegos-generos/juegos-ps4-accin-accin-y-aventura/0f37f1f4/juegos-populares/\">Acci&oacute;n y aventura</a>, <a href=\"https://www.3djuegos.com/novedades/juegos-generos/juegos-ps4-accin-shooter/0f37f1f5/juegos-populares/\">Shooter</a> (<a href=\"https://www.3djuegos.com/juegos-tematicas/0f0f2f0/juegos-modernos/\">Moderno</a>)</li>\r\n	<li><strong>Jugadores: </strong>1-10 (Competitivo: 2-10 online / Cooperativo: 1-3 online)</li>\r\n	<li><strong>Duraci&oacute;n:</strong> 16-18 horas (m&iacute;nimo) + multijugador incalculable</li>\r\n	<li><strong>Soporta: </strong><a href=\"https://www.3djuegos.com/26777/ps4-pro/\">PS4 Pro</a></li>\r\n	<li><strong>Idioma:</strong> Textos en espa&ntilde;ol y voces en espa&ntilde;ol</li>\r\n	<li><strong>Lanzamiento:</strong> 10 de mayo de 2016 (Pegi: +16)</li>\r\n</ul>\r\n',2016,1,1,1),(36,'Pokémon Espada / Pokémon Escudo','<p>Pok&eacute;mon Espada / Pok&eacute;mon Escudo es la nueva generaci&oacute;n, la octava ya, de aventuras de rol basadas en esta popular franquicia de Nintendo y Game Freak, siendo adem&aacute;s el primer videojuego de la serie principal que se estrena en una consola de sobremesa. Los aficionados de Nintendo Switch van a poder explorar una nueva regi&oacute;n que responde al nombre de Galar con el lanzamiento del juego en 2019.<br />\r\n<br />\r\nEl nuevo RPG de Pok&eacute;mon para Nintendo Switch (Pokemon Espada y Pokemon Escudo) respeta los fundamentos de la serie principal sin perder la oportunidad de introducir nuevas opciones y retos para sorprender a los jugadores. As&iacute;, se espera con este Pok&eacute;mon Sword / Pok&eacute;mon Shield una propuesta m&aacute;s enfocada al p&uacute;blico tradicional y exigente respecto al trabajo realizado en Pok&eacute;mon Let&#39;s Go, Pikachu! / Eevee!</p>\r\n\r\n<p><strong>Caracter&iacute;sticas:</strong></p>\r\n\r\n<ul>\r\n	<li><strong>Desarrollador:</strong> Game Freak</li>\r\n	<li><strong>Editor:</strong> Nintendo</li>\r\n	<li><strong>G&eacute;nero:</strong> Rol, Combate por turnos (Fantas&iacute;a)</li>\r\n	<li><strong>Jugadores:</strong> 1-4 (Competitivo: 2-4 local y online)</li>\r\n	<li><strong>Duraci&oacute;n: </strong>20-30 horas (m&iacute;nimo)</li>\r\n	<li><strong>Idioma:</strong> Textos en espa&ntilde;ol</li>\r\n	<li><strong>Lanzamiento:</strong> 15 de noviembre de 2019 (Pegi: +3)</li>\r\n</ul>\r\n',2019,2,3,1),(37,'LEGO Star Wars: The Skywalker Saga','<p>LEGO Star Wars: The Skywalker Saga se presenta con el atractivo de adaptar nueve episodios principales de Star Wars, la llamada saga de Skywalker. Lo har&aacute; en una entrega que, como es habitual en la franquicia, buscar&aacute; darle un tono divertido a todo lo que se narra en un videojuego que garantiza ser completamente nuevo. Es decir, no remasteriza entregas anteriores.<br />\r\n<br />\r\nAs&iacute;, LEGO Star Wars: The Skywalker Saga apuesta por ofrecer con su lanzamiento cientos de personajes y veh&iacute;culos de todas las pel&iacute;culas, los jugadores podr&aacute;n dejarse llevar por sus escenas favoritas de la serie de La guerra de las galaxias de una manera totalmente nueva que estar&aacute; repleta de divertidos momentos LEGO ideales para jugadores de todas las edades.</p>\r\n\r\n<p><strong>Caracter&iacute;sticas:</strong></p>\r\n\r\n<ul>\r\n	<li><strong>Tambi&eacute;n para:</strong> PC, PS4, Xbox One</li>\r\n	<li><strong>Desarrollador: </strong>TT Games</li>\r\n	<li><strong>Editor:</strong> Warner Bros.</li>\r\n	<li><strong>G&eacute;nero:</strong> Acci&oacute;n, Acci&oacute;n y aventura (Humor, Dibujos Animados y Espacial)</li>\r\n	<li><strong>Jugadores:</strong> 1</li>\r\n	<li><strong>Idioma:</strong> Textos en espa&ntilde;ol y voces en ingl&eacute;s</li>\r\n	<li><strong>Lanzamiento:</strong> 2020 (Por determinar) (Pegi: +3)</li>\r\n</ul>\r\n',2020,1,3,1),(38,'Doraemon: Story of Seasons','<p>Doraemon: Story of Seasons es un spin-off del popular manganime infantil (todo un fen&oacute;meno en Jap&oacute;n desde hace d&eacute;cadas) donde el gato c&oacute;smico del siglo XXII se une a Nobita, Shizuka, Takeshi y Tsuneo para descubrir la vida en una granja.</p>\r\n\r\n<p><br />\r\nEl resultado es un videojuego colorista y amable, influenciado por t&iacute;tulos como Harvest Moon o Animal Crossing. Nos invita a gestionar una granja, incluidos los animales y cultivos que hay en ella.</p>\r\n\r\n<p><br />\r\nEn Doraemon: Story of Seasons tambi&eacute;n hay tiempo para socializar con los vecinos y participar en minijuegos de caza de bichos y otras actividades, por supuesto, con la ayuda de los imaginativos artilugios que Doraemon guarda en su bolsillo m&aacute;gico.</p>\r\n\r\n<p><strong>Caracter&iacute;sticas:</strong></p>\r\n\r\n<ul>\r\n	<li><strong>Tambi&eacute;n para:</strong> PC, PS4</li>\r\n	<li><strong>Desarrollador:</strong> Brownie Brown</li>\r\n	<li><strong>Editor:</strong> Bandai Namco</li>\r\n	<li><strong>G&eacute;nero: </strong>Estrategia, Vida virtual, Gesti&oacute;n y tem&aacute;ticos (Granjas, Fantas&iacute;a y Animales)</li>\r\n	<li><strong>Jugadores: </strong>1</li>\r\n	<li><strong>Idioma:</strong> Textos en espa&ntilde;ol</li>\r\n	<li><strong>Lanzamiento:</strong> 10 de octubre de 2019 (Pegi: +3)</li>\r\n</ul>\r\n',2019,2,3,1),(39,'Zelda: Breath of the Wild','<p>El videojuego m&aacute;s grande en la historia de Nintendo, esta es la carta de presentaci&oacute;n de The Legend of Zelda: Breath of the Wild para Wii U y Switch, una &eacute;pica aventura que lleva la acci&oacute;n de esta veterana franquicia a un gigantesco mundo abierto que podemos explorar con total libertad. &iexcl;No hay l&iacute;mites! Link puede coger un caballo, o cualquier otra montura, y explorar la nueva Hyrule siguiendo el orden que desee el jugador, pues la historia ya no sigue un camino lineal.<br />\r\n<br />\r\nPuedes talar &aacute;rboles y abrir camino donde antes no lo hab&iacute;a, buscar materias primas y crear nuevos objetos, o buscar alimentos para sobrevivir a los peligros de este mundo de fantas&iacute;a que, una vez m&aacute;s, est&aacute; amenazado por las fuerzas del mal. Hay cien santuarios desperdigados por Hyrule, y otros tantos templos o mazmorras con retos m&aacute;s elaborados que requieren del uso de las nuevas habilidades y armas de un Link que, paso a paso, se vuelve un guerrero m&aacute;s poderoso en TLoZ: Breath of the Wild.</p>\r\n\r\n<p><strong>Caracter&iacute;sticas:</strong></p>\r\n\r\n<ul>\r\n	<li><strong>Tambi&eacute;n para:</strong> Wii U</li>\r\n	<li><strong>Desarrollador:</strong> Nintendo</li>\r\n	<li><strong>Editor:</strong> Nintendo</li>\r\n	<li><strong>G&eacute;nero: </strong>Acci&oacute;n, Acci&oacute;n y aventura (Fantas&iacute;a, Mazmorras y Magia)</li>\r\n	<li><strong>Jugadores:</strong> 1</li>\r\n	<li><strong>Duraci&oacute;n:</strong> 30-50 horas (s&oacute;lo las misiones principales)</li>\r\n	<li><strong>Idioma:</strong> Textos en espa&ntilde;ol y voces en espa&ntilde;ol</li>\r\n	<li><strong>Lanzamiento:</strong> 3 de marzo de 2017 (Pegi: +12)</li>\r\n</ul>\r\n',2017,1,3,1),(40,'Xenoblade Chronicles: Definitive Edition','<p>Con Xenoblade Chronicles los legendarios creadores de la serie Xenosaga regresan para traernos un RPG que tiene como tel&oacute;n de fondo una &eacute;pica lucha entre humanos y robots. Todo con la magia que s&oacute;lo el estudio Monolith Soft y su m&aacute;ximo responsable, Tetsuya Takahashi, saben otorgar a sus productos. En su paso a Nintendo Switch, Xenoblade Chronicles apuesta por una versi&oacute;n mejorada que incluye un renovado apartado gr&aacute;fico.</p>\r\n\r\n<p><strong>Caracter&iacute;sticas:</strong></p>\r\n\r\n<ul>\r\n	<li><strong>Tambi&eacute;n para:</strong> 3DS, Wii U, Wii</li>\r\n	<li><strong>Desarrollador:</strong> Monolith Soft</li>\r\n	<li><strong>Editor:</strong> Nintendo</li>\r\n	<li><strong>G&eacute;nero: </strong>Rol, Acci&oacute;n RPG (Ciencia ficci&oacute;n)</li>\r\n	<li><strong>Jugadores: </strong>1</li>\r\n	<li><strong>Idioma:</strong> Textos en espa&ntilde;ol y voces en ingl&eacute;s / japon&eacute;s</li>\r\n	<li><strong>Lanzamiento:</strong> 29 de mayo de 2020 (Pegi: +12)</li>\r\n</ul>\r\n',2020,4,3,1),(41,'Little Dragons Café','<p>Gestiona una cafeter&iacute;a y mientras&hellip; &iexcl;y cuida de un drag&oacute;n! en Little Dragons Caf&eacute;, un videojuego desarrollado por el creador de Harvest Moon que no se olvida de sus ra&iacute;ces. En la piel de dos j&oacute;venes hermanos, en este juego de Yasuhiro Wada debemos cultivar alimentos, pescar, y crear nuevas recetas para cocinar suculentos platos que satisfagan a los clientes de la cafeter&iacute;a en la que trabajan.<br />\r\n<br />\r\nMientras tanto, los protagonistas de Little Dragons Caf&eacute; deben cuidar de un peque&ntilde;o drag&oacute;n interactuando con &eacute;l, jugando y aliment&aacute;ndolo.</p>\r\n\r\n<p><strong>Caracter&iacute;sticas:</strong></p>\r\n\r\n<ul>\r\n	<li><strong>Tambi&eacute;n para: </strong>PC, PS4</li>\r\n	<li><strong>Desarrollador:</strong> Toybox Games</li>\r\n	<li><strong>Editor: </strong>Asys Games</li>\r\n	<li><strong>G&eacute;nero: </strong>Estrategia, Gesti&oacute;n y tem&aacute;ticos (Restaurantes, Cocinar, Dragones y Fantas&iacute;a)</li>\r\n	<li><strong>Jugadores:</strong> 1</li>\r\n	<li><strong>Idioma:</strong> Textos en espa&ntilde;ol</li>\r\n	<li><strong>Lanzamiento: </strong>4 de octubre de 2018 (Pegi: +3)</li>\r\n</ul>\r\n',2018,2,3,1),(42,'One Piece: Pirate Warriors 4','<p>Una vez m&aacute;s los h&eacute;roes y villanos de One Piece se re&uacute;nen en el campo de batalla para luchar y combatir sin descanso en este videojuego de acci&oacute;n musou desarrollado por los autores de Dynasty Warriors. Con m&aacute;s de 40 personajes disponibles, One Piece: Pirate Warriors 4 mejora su sistema de combate con novedades tan interesantes como los combos a&eacute;reos o golpes especiales que emulan las habilidades &uacute;nicas de Monkey D. Luffy, Sanji, Jinbei y muchos otros personajes salidos de las p&aacute;ginas del manga de Eiichiro Oda.<br />\r\n<br />\r\nPirate Warrios 4 nos permite revivir grandes batallas de la historia de One Piece como el asedio de Alabasta, o los m&aacute;s recientes arcos argumentales de Whole Cake y el Pa&iacute;s de Wano con Big Mom y Kaido como grandes enemigos. Frente a ellos debes luchar en solitario, o bien junto hasta cuatro amigos m&aacute;s gracias al cooperativo multijugador que incluye este videojuego de Omega Force y Bandai Namco para PC, Xbox One, PS4 y Nintendo Switch.</p>\r\n\r\n<p><strong>Caracter&iacute;sticas:</strong></p>\r\n\r\n<ul>\r\n	<li><strong>Tambi&eacute;n para:</strong> PC, PS4, Xbox One</li>\r\n	<li><strong>Desarrollador:</strong> Omega Force</li>\r\n	<li><strong>Editor: </strong>Bandai Namco</li>\r\n	<li><strong>G&eacute;nero:</strong> Acci&oacute;n, Acci&oacute;n y aventura (Piratas, Manga y Anime)</li>\r\n	<li><strong>Jugadores: </strong>2-4 (Competitivo: No / Cooperativo: S&iacute;)</li>\r\n	<li><strong>Duraci&oacute;n: </strong>12-15 horas (+extras y multijugador)</li>\r\n	<li><strong>Idioma: </strong>Textos en espa&ntilde;ol, voces en japon&eacute;s</li>\r\n	<li><strong>Lanzamiento: </strong>27 de marzo de 2020 (Pegi: +16)</li>\r\n</ul>\r\n',2020,1,3,1),(43,'SpongeBob SquarePants: Battle for Bikini Bottom','<p>Juega como Bob Esponja, Patricio o Arenita y usa sus habilidades &uacute;nicas en SpongeBob SquarePants: Battle for Bikini Bottom, el remake del cl&aacute;sico de culto basado en los personajes de Nickelodeon que invita a los usuarios a demostrar al malvado Plankton que el &uacute;nico crimen son sus hamburguesas. As&iacute;, los jugadores tienen como objetivo salvar el Fondo de Bikini de los robots locos, hacer puenting en ropa interior y disfrutar de un multijugador para dos personas entre otros atractivos.</p>\r\n\r\n<p><strong>Caracter&iacute;sticas:</strong></p>\r\n\r\n<ul>\r\n	<li><strong>Tambi&eacute;n para: </strong>PC, PS4, Xbox One</li>\r\n	<li><strong>Tipo: </strong>Remake</li>\r\n	<li><strong>Desarrollador: </strong>Puzzling Dream</li>\r\n	<li><strong>Editor:</strong> THQ Nordic</li>\r\n	<li><strong>G&eacute;nero: </strong>Acci&oacute;n, Plataformas (Dibujos Animados, Bob Esponja y TV)</li>\r\n	<li><strong>Jugadores:</strong> 1-2 (Cooperativo: Local y Online)</li>\r\n	<li><strong>Idioma: </strong>Textos en espa&ntilde;ol y voces en ingl&eacute;s</li>\r\n	<li><strong>Lanzamiento: </strong>23 de junio de 2020</li>\r\n</ul>\r\n',2020,1,3,1),(44,'Mario + Rabbids Kingdom Battle','<p>Mario + Rabbids Battle Kingdom (Mario X Rabbids) es un juego de rol y estrategia por turnos de Ubisoft para Nintendo Switch que utiliza el motor de juego de Ubisoft, Snowdrop Engine. El videojuego nos propone un tour o viaje al Reino Champi&ntilde;&oacute;n en modo de cooperativo local con todo el humor de las dos conocidas franquicias. Los jugadores eligen entre 8 personajes jugables: Mario, Luigi, Yoshi y la princesa Peach de la franquicia Mario, as&iacute; como sus versiones Rabbids.<br />\r\n<br />\r\nMario + Rabbids Battle Kingdom tiene gran sentido del humor y una puesta en escena fant&aacute;stica. Los combates requieren pensar antes de actuar, hay misiones cooperativas para 2 jugadores y podemos mejorar las habilidades de los personajes, combinarla para ejecutar movimientos &uacute;nicos, as&iacute; como modificar su equipo.</p>\r\n\r\n<p><strong>Caracter&iacute;sticas:</strong></p>\r\n\r\n<ul>\r\n	<li><strong>Desarrollador:</strong> Ubisoft Milan</li>\r\n	<li><strong>Editor:</strong> Ubisoft</li>\r\n	<li><strong>G&eacute;nero: </strong>Estrategia, Turnos (Humor)</li>\r\n	<li><strong>Jugadores:</strong> 1-2 (Cooperativo: 2 local)</li>\r\n	<li><strong>Duraci&oacute;n:</strong> 20 horas (m&iacute;nimo) + cooperativo</li>\r\n	<li><strong>Idioma:</strong> Textos en espa&ntilde;ol y voces en espa&ntilde;ol</li>\r\n	<li><strong>Lanzamiento:</strong> 29 de agosto de 2017 (Pegi: +7)</li>\r\n</ul>\r\n',2017,3,3,1),(45,'Dragon Quest XI S','<p>Dragon Quest XI: Ecos de un Pasado Perdido es el und&eacute;cimo episodio de una de las sagas de rol m&aacute;s m&iacute;ticas de Jap&oacute;n, Dragon Quest que permite jugar la misma historia en Nintendo 3DS, Nintendo Switch y PS4, y conmemora el 30 aniversario de la franquicia de Yuji Hori y Toriyama. En esta ocasi&oacute;n el JRPG est&aacute; protagonizado por un joven de 16 a&ntilde;os, que emprende un viaje para conocer la verdad sobre su destino en compa&ntilde;&iacute;a de un variopinto grupo de personajes. Entre las principales novedades o diferencias entre Dragon Quest 11 y entregas precedentes, destacan sus grandes entornos y mejoras en el combate, Zone, que potencia a aliados y monstruos, y Link, que encadena ataques de h&eacute;roes. La edici&oacute;n para Nintendo Switch incluye el mismo contenido que la versi&oacute;n original, pero se han a&ntilde;adido historias espec&iacute;ficas de distintos personajes, la opci&oacute;n de acelerar los combates, m&uacute;sica orquestal y la posibilidad del alternar entre ver el mundo en HD o al estilo retro de 16 bits.</p>\r\n\r\n<p><strong>Caracter&iacute;sticas:</strong></p>\r\n\r\n<ul>\r\n	<li><strong>Tambi&eacute;n para:</strong> PC, PS4, 3DS</li>\r\n	<li><strong>Desarrollador:</strong> Square Enix</li>\r\n	<li><strong>Editor: </strong>Square Enix</li>\r\n	<li><strong>G&eacute;nero:</strong> Rol, Combate por turnos (Fantas&iacute;a, Mazmorras, Magia y Dragones)</li>\r\n	<li><strong>Jugadores:</strong> 1</li>\r\n	<li><strong>Duraci&oacute;n:</strong> 60 horas (m&iacute;nimo)</li>\r\n	<li><strong>Idioma:</strong> Textos en espa&ntilde;ol y voces en ingl&eacute;s y japon&eacute;s</li>\r\n	<li><strong>Lanzamiento:</strong> 27 de septiembre de 2019 (Pegi: +12)</li>\r\n</ul>\r\n',2019,2,3,1),(46,'Civilization VI','<p>Una nueva era para la humanidad y su progreso en el mundo y m&aacute;s all&aacute;, en el videojuego <strong>Civilization VI</strong>. Estrategia por turnos y gesti&oacute;n de tu propio imperio y cultura a lo largo del mundo y la historia, en un videojuego de Firaxis y Sid Meier para PC que cuenta con la presencia de algunos de los l&iacute;deres pol&iacute;ticos m&aacute;s relevantes de distintas naciones como Felipe II de Espa&ntilde;a, Gandhi de la India, Pedro I de Rusia, Moctezuma de los Aztecas o Victoria del Reino Unido entre otros.<br />\r\n<br />\r\nLa sexta entrega de la saga incluye nuevas formas de interacci&oacute;n con el entorno, posibilita la expansi&oacute;n f&iacute;sica en el mapa, la investigaci&oacute;n activa de tecnolog&iacute;a y cultura para desbloquear nuevos potenciales, etc. Adem&aacute;s, los l&iacute;deres desarrollan su acci&oacute;n en funci&oacute;n de sus rasgos hist&oacute;ricos mientras intentan conseguir la victoria de una de las cinco maneras posibles. Un multijugador m&aacute;s amplio, y m&aacute;s facilidades a los usuarios novatos mediante tutoriales completan este Civilization 6.</p>\r\n\r\n<p><strong>Caracter&iacute;sticas:</strong></p>\r\n\r\n<ul>\r\n	<li><strong>Tambi&eacute;n para:</strong> PS4, Xbox One, Nintendo Switch, iOS</li>\r\n	<li><strong>Desarrollador: </strong>Firaxis Games</li>\r\n	<li><strong>Editor:</strong> 2K Games</li>\r\n	<li><strong>G&eacute;nero:</strong> Estrategia, Turnos, Gesti&oacute;n y tem&aacute;ticos (Hist&oacute;rico)</li>\r\n	<li><strong>Jugadores: </strong>1-12 (Competitivo: Si, online)</li>\r\n	<li><strong>Duraci&oacute;n:</strong> Incalculable</li>\r\n	<li><strong>Idioma: </strong>Textos en espa&ntilde;ol y voces en espa&ntilde;ol</li>\r\n	<li><strong>Lanzamiento:</strong> 21 de octubre de 2016 (Pegi: +12)</li>\r\n</ul>\r\n',2016,1,4,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `puntuacion`
--

LOCK TABLES `puntuacion` WRITE;
/*!40000 ALTER TABLE `puntuacion` DISABLE KEYS */;
INSERT INTO `puntuacion` VALUES (1,4,3,1),(3,5,5,1),(5,4,6,1),(6,3,7,1),(7,2,8,1),(8,4,9,1),(10,5,11,1),(11,3,12,1),(12,2,13,1),(13,1,14,1),(14,3,3,2),(16,3,5,2),(17,5,11,2),(18,5,15,1),(19,2,18,1),(20,1,19,1),(21,1,20,1),(22,2,22,1),(23,3,24,1),(24,3,4,1),(25,2,21,1),(26,3,16,1),(27,4,17,1),(28,3,23,1),(30,4,25,1),(31,2,26,1),(32,3,27,1),(33,5,29,1),(34,5,30,1),(35,4,28,1),(36,4,31,1),(37,5,33,1),(38,1,32,1),(39,5,37,1),(40,5,39,1),(41,3,42,1),(42,3,43,1),(43,5,36,1),(44,3,38,1),(45,2,41,1),(46,4,45,1),(47,5,2,1),(48,3,44,1),(49,4,40,1),(50,5,5,3),(51,5,6,3),(52,2,9,3),(53,5,11,3),(54,3,13,3),(55,2,46,3),(56,3,8,3),(57,4,12,3),(58,3,14,3),(59,4,3,3),(60,1,7,3),(61,5,15,3),(62,1,18,3),(63,3,19,3),(64,1,20,3),(65,3,22,3),(66,4,24,3),(67,3,4,3),(68,3,21,3),(69,4,16,3),(70,2,23,3),(71,5,37,3),(72,5,39,3),(73,3,42,3),(74,2,43,3),(75,5,36,3),(76,3,41,3),(77,5,40,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'cinti','Admin','123','images.jpg','cintia.349@gmail.com','25-05-2020 00:15:02',1),(2,'Cintia','Cintia93','123','a5fccbac3b974a8078db4b34daf9b418.png','cinthyaortiz.9328@gmail.com','22/05/2020 01:33:45',NULL),(3,'Federico','AdminFede','123','desconocido.txt','h3c.lol@gmail.com','28-06-2020 00:15:02',1);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-27  2:22:00
