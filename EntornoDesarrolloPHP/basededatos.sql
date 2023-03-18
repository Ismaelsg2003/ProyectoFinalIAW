-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.10.2-MariaDB-1:10.10.2+maria~ubu2204 - mariadb.org binary distribution
-- SO del servidor:              debian-linux-gnu
-- HeidiSQL Versión:             12.3.0.6589
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para database
CREATE DATABASE IF NOT EXISTS `database` /*!40100 DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci */;
USE `database`;

-- Volcando estructura para tabla database.Productos
CREATE TABLE IF NOT EXISTS `Productos` (
  `id_producto` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL DEFAULT '',
  `descripcion` varchar(255) NOT NULL DEFAULT '',
  `precio` int(11) NOT NULL DEFAULT 0,
  `procedencia` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_producto`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Volcando datos para la tabla database.Productos: ~8 rows (aproximadamente)
INSERT INTO `Productos` (`id_producto`, `nombre`, `descripcion`, `precio`, `procedencia`) VALUES
	(27, 'PcSobremesa', 'Ryzen 5 5600/16GB/500GB SSD/RTX 3060', 1200, 1),
	(28, 'Portatil', 'Ryzen 5 5600/16GB/500GB SSD/RTX 3060', 970, 0),
	(29, 'iPhone 14', 'Apple iPhone 14 Pro Max 128GB Negro Espacial Libre', 1350, 1),
	(30, 'ZFlip4', 'Samsung Galaxy Z Flip4 8/128GB Lila + Cargador de Pared 25W', 1100, 0),
	(31, 'LogitechBrio', 'Logitech Brio Webcam 4k UltraHD', 180, 1),
	(32, 'PackPerifericosRazer', 'Razer Power Up Bundle V2 Cynosa Lite + Gigantus V2 Large + DeathAdder Essential + BlackShark V2 X', 100, 1),
	(33, 'LogitechG402', 'Logitech G402 Hyperion Fury FPS Gaming', 57, 1),
	(34, 'RTX3060', 'Zotac Gaming GeForce RTX 3060 Twin Edge LHR 12GB GDDR6', 350, 0);

-- Volcando estructura para tabla database.Users
CREATE TABLE IF NOT EXISTS `Users` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `nombreusuario` varchar(50) NOT NULL DEFAULT '0',
  `contrasenausuario` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Volcando datos para la tabla database.Users: ~1 rows (aproximadamente)
INSERT INTO `Users` (`id_usuario`, `nombreusuario`, `contrasenausuario`) VALUES
	(1, 'admin', 'admin');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
