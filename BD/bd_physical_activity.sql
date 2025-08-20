-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         8.0.41 - MySQL Community Server - GPL
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.6.0.6765
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para physical_activity
CREATE DATABASE IF NOT EXISTS `physical_activity` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `physical_activity`;

-- Volcando estructura para tabla physical_activity.history
CREATE TABLE IF NOT EXISTS `history` (
  `id_history` bigint NOT NULL AUTO_INCREMENT,
  `date_history` date NOT NULL,
  `id_activity` bigint NOT NULL DEFAULT (0),
  `id_type_activity` bigint NOT NULL DEFAULT (0),
  `id_users` bigint NOT NULL DEFAULT (0),
  PRIMARY KEY (`id_history`),
  KEY `id_activity` (`id_activity`),
  KEY `id_type_activity` (`id_type_activity`),
  KEY `id_users` (`id_users`),
  CONSTRAINT `id-activity` FOREIGN KEY (`id_activity`) REFERENCES `physical_activity` (`id_activity`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `id-users` FOREIGN KEY (`id_users`) REFERENCES `users` (`id_users`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `id_type_activity` FOREIGN KEY (`id_type_activity`) REFERENCES `type_activity` (`id_type`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla physical_activity.history: ~3 rows (aproximadamente)
INSERT INTO `history` (`id_history`, `date_history`, `id_activity`, `id_type_activity`, `id_users`) VALUES
	(1, '2025-08-20', 1, 1, 1),
	(2, '2023-10-16', 3, 3, 2),
	(3, '2025-07-28', 2, 4, 1);

-- Volcando estructura para tabla physical_activity.physical_activity
CREATE TABLE IF NOT EXISTS `physical_activity` (
  `id_activity` bigint NOT NULL AUTO_INCREMENT,
  `activity_date` date DEFAULT NULL,
  `duration` time DEFAULT NULL,
  `distance_traveled` double DEFAULT NULL,
  `calories_burned` double DEFAULT NULL,
  `id_type_activity` bigint DEFAULT NULL,
  PRIMARY KEY (`id_activity`),
  KEY `id_type_activity` (`id_type_activity`),
  CONSTRAINT `id-type-activity` FOREIGN KEY (`id_type_activity`) REFERENCES `type_activity` (`id_type`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla physical_activity.physical_activity: ~3 rows (aproximadamente)
INSERT INTO `physical_activity` (`id_activity`, `activity_date`, `duration`, `distance_traveled`, `calories_burned`, `id_type_activity`) VALUES
	(1, '2025-08-20', '04:15:45', 8.5, 6, 1),
	(2, '2025-08-20', '03:23:52', 5, 3, 6),
	(3, '2025-08-11', '02:16:58', 2, 1, 6);

-- Volcando estructura para tabla physical_activity.type_activity
CREATE TABLE IF NOT EXISTS `type_activity` (
  `id_type` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_type`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla physical_activity.type_activity: ~6 rows (aproximadamente)
INSERT INTO `type_activity` (`id_type`, `name`) VALUES
	(1, 'correr'),
	(2, 'caminar'),
	(3, 'nadar'),
	(4, 'ciclismo'),
	(5, 'pesas'),
	(6, 'trotar');

-- Volcando estructura para tabla physical_activity.users
CREATE TABLE IF NOT EXISTS `users` (
  `id_users` bigint NOT NULL AUTO_INCREMENT,
  `fullname` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_users`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla physical_activity.users: ~5 rows (aproximadamente)
INSERT INTO `users` (`id_users`, `fullname`, `email`, `password`) VALUES
	(1, 'Juan Garcia', 'juan123@gmail.com', 'juan123'),
	(2, 'Pepito perez', 'pepito@gmail.com', 'pepitop4343'),
	(3, 'Carlos Perea', 'carlosp@gmail.com', 'carlos324354'),
	(4, 'pedro estrada', 'pedro3223@gmail.com', 'p321321'),
	(5, 'Julio garcia', 'juliog3224@gmail.com', 'julio2343254');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
