-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.1.21-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win32
-- HeidiSQL Versión:             9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Volcando estructura de base de datos para osha_dvt_ilo
DROP DATABASE IF EXISTS `osha_dvt_ilo`;
CREATE DATABASE IF NOT EXISTS `osha_dvt_ilo` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `osha_dvt_ilo`;

-- Volcando estructura para tabla osha_dvt_ilo.chart
DROP TABLE IF EXISTS `chart`;
CREATE TABLE IF NOT EXISTS `chart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `section_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `section_id` (`section_id`),
  CONSTRAINT `section_id` FOREIGN KEY (`section_id`) REFERENCES `section` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla osha_dvt_ilo.chart: ~21 rows (aproximadamente)
/*!40000 ALTER TABLE `chart` DISABLE KEYS */;
INSERT INTO `chart` (`id`, `section_id`, `name`) VALUES
	(1, 1, NULL);
INSERT INTO `chart` (`id`, `section_id`, `name`) VALUES
	(2, 1, NULL);
INSERT INTO `chart` (`id`, `section_id`, `name`) VALUES
	(3, 1, NULL);
INSERT INTO `chart` (`id`, `section_id`, `name`) VALUES
	(4, 1, NULL);
INSERT INTO `chart` (`id`, `section_id`, `name`) VALUES
	(5, 1, NULL);
INSERT INTO `chart` (`id`, `section_id`, `name`) VALUES
	(6, 1, NULL);
INSERT INTO `chart` (`id`, `section_id`, `name`) VALUES
	(7, 1, NULL);
INSERT INTO `chart` (`id`, `section_id`, `name`) VALUES
	(8, 1, NULL);
INSERT INTO `chart` (`id`, `section_id`, `name`) VALUES
	(9, 1, NULL);
INSERT INTO `chart` (`id`, `section_id`, `name`) VALUES
	(10, 1, NULL);
INSERT INTO `chart` (`id`, `section_id`, `name`) VALUES
	(11, 2, NULL);
INSERT INTO `chart` (`id`, `section_id`, `name`) VALUES
	(12, 2, NULL);
INSERT INTO `chart` (`id`, `section_id`, `name`) VALUES
	(13, 2, NULL);
INSERT INTO `chart` (`id`, `section_id`, `name`) VALUES
	(14, 2, NULL);
INSERT INTO `chart` (`id`, `section_id`, `name`) VALUES
	(15, 2, NULL);
INSERT INTO `chart` (`id`, `section_id`, `name`) VALUES
	(16, 3, NULL);
INSERT INTO `chart` (`id`, `section_id`, `name`) VALUES
	(17, 3, NULL);
INSERT INTO `chart` (`id`, `section_id`, `name`) VALUES
	(18, 3, NULL);
INSERT INTO `chart` (`id`, `section_id`, `name`) VALUES
	(19, 3, NULL);
INSERT INTO `chart` (`id`, `section_id`, `name`) VALUES
	(20, 3, NULL);
INSERT INTO `chart` (`id`, `section_id`, `name`) VALUES
	(21, 4, NULL);
/*!40000 ALTER TABLE `chart` ENABLE KEYS */;

-- Volcando estructura para tabla osha_dvt_ilo.country_group
DROP TABLE IF EXISTS `country_group`;
CREATE TABLE IF NOT EXISTS `country_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `literal_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(100) NOT NULL,
  `short_name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `country_group_literal_id` (`literal_id`),
  CONSTRAINT `country_group_literal_id` FOREIGN KEY (`literal_id`) REFERENCES `literal` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla osha_dvt_ilo.country_group: ~9 rows (aproximadamente)
/*!40000 ALTER TABLE `country_group` DISABLE KEYS */;
INSERT INTO `country_group` (`id`, `literal_id`, `name`, `short_name`) VALUES
	(1, 256, 'High income countries', 'HIGH');
INSERT INTO `country_group` (`id`, `literal_id`, `name`, `short_name`) VALUES
	(2, 257, 'Low-and middle-income countries of the African Region', 'AFRO');
INSERT INTO `country_group` (`id`, `literal_id`, `name`, `short_name`) VALUES
	(3, 258, 'Low-and middle-income countries of the Americas', 'AMRO');
INSERT INTO `country_group` (`id`, `literal_id`, `name`, `short_name`) VALUES
	(4, 259, 'Low-and middle-income countries of the Eastern Mediterranean Region', 'EMRO');
INSERT INTO `country_group` (`id`, `literal_id`, `name`, `short_name`) VALUES
	(5, 260, 'Low-and middle-income countries of the European Region', 'EURO');
INSERT INTO `country_group` (`id`, `literal_id`, `name`, `short_name`) VALUES
	(6, 261, 'Low-and middle-income countries of the South-East Asia Region', 'SEARO');
INSERT INTO `country_group` (`id`, `literal_id`, `name`, `short_name`) VALUES
	(7, 262, 'Low-and middle-income countries of the Western Pacific Region', 'WPRO');
INSERT INTO `country_group` (`id`, `literal_id`, `name`, `short_name`) VALUES
	(8, 263, 'GLOBAL', 'GLOBAL');
INSERT INTO `country_group` (`id`, `literal_id`, `name`, `short_name`) VALUES
	(9, 264, 'EU28', 'EU28');
/*!40000 ALTER TABLE `country_group` ENABLE KEYS */;

-- Volcando estructura para tabla osha_dvt_ilo.dataset
DROP TABLE IF EXISTS `dataset`;
CREATE TABLE IF NOT EXISTS `dataset` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '0',
  `source` varchar(100) NOT NULL DEFAULT '0',
  `date_from` date DEFAULT NULL,
  `date_to` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla osha_dvt_ilo.dataset: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `dataset` DISABLE KEYS */;
INSERT INTO `dataset` (`id`, `name`, `source`, `date_from`, `date_to`) VALUES
	(1, 'ILO_DATA', 'JT', '2017-01-01', NULL);
INSERT INTO `dataset` (`id`, `name`, `source`, `date_from`, `date_to`) VALUES
	(2, 'ILO_DATA', 'FIOH', '2017-01-01', NULL);
/*!40000 ALTER TABLE `dataset` ENABLE KEYS */;

-- Volcando estructura para tabla osha_dvt_ilo.glossary
DROP TABLE IF EXISTS `glossary`;
CREATE TABLE IF NOT EXISTS `glossary` (
  `term_literal_id` int(11) NOT NULL,
  `description_literal_id` int(11) NOT NULL,
  PRIMARY KEY (`term_literal_id`,`description_literal_id`),
  KEY `description_literal_id` (`description_literal_id`),
  CONSTRAINT `description_literal_id` FOREIGN KEY (`description_literal_id`) REFERENCES `literal` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `term_literal_id` FOREIGN KEY (`term_literal_id`) REFERENCES `literal` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla osha_dvt_ilo.glossary: ~16 rows (aproximadamente)
/*!40000 ALTER TABLE `glossary` DISABLE KEYS */;
INSERT INTO `glossary` (`term_literal_id`, `description_literal_id`) VALUES
	(10256, 10257);
INSERT INTO `glossary` (`term_literal_id`, `description_literal_id`) VALUES
	(10261, 10262);
INSERT INTO `glossary` (`term_literal_id`, `description_literal_id`) VALUES
	(10266, 10267);
INSERT INTO `glossary` (`term_literal_id`, `description_literal_id`) VALUES
	(10271, 10272);
INSERT INTO `glossary` (`term_literal_id`, `description_literal_id`) VALUES
	(10276, 10277);
INSERT INTO `glossary` (`term_literal_id`, `description_literal_id`) VALUES
	(10281, 10282);
INSERT INTO `glossary` (`term_literal_id`, `description_literal_id`) VALUES
	(10286, 10287);
INSERT INTO `glossary` (`term_literal_id`, `description_literal_id`) VALUES
	(10291, 10292);
INSERT INTO `glossary` (`term_literal_id`, `description_literal_id`) VALUES
	(10296, 10297);
INSERT INTO `glossary` (`term_literal_id`, `description_literal_id`) VALUES
	(10301, 10302);
INSERT INTO `glossary` (`term_literal_id`, `description_literal_id`) VALUES
	(10306, 10307);
INSERT INTO `glossary` (`term_literal_id`, `description_literal_id`) VALUES
	(10311, 10312);
INSERT INTO `glossary` (`term_literal_id`, `description_literal_id`) VALUES
	(10316, 10317);
INSERT INTO `glossary` (`term_literal_id`, `description_literal_id`) VALUES
	(10321, 10322);
INSERT INTO `glossary` (`term_literal_id`, `description_literal_id`) VALUES
	(10326, 10327);
INSERT INTO `glossary` (`term_literal_id`, `description_literal_id`) VALUES
	(10331, 10332);
/*!40000 ALTER TABLE `glossary` ENABLE KEYS */;

-- Volcando estructura para tabla osha_dvt_ilo.indicator
DROP TABLE IF EXISTS `indicator`;
CREATE TABLE IF NOT EXISTS `indicator` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `literal_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `indicator_literal_id` (`literal_id`),
  CONSTRAINT `indicator_literal_id` FOREIGN KEY (`literal_id`) REFERENCES `literal` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla osha_dvt_ilo.indicator: ~26 rows (aproximadamente)
/*!40000 ALTER TABLE `indicator` DISABLE KEYS */;
INSERT INTO `indicator` (`id`, `name`, `literal_id`) VALUES
	(1, 'Total cost of the work-related injuries and illnesses (billions of USD/€) Global', 1);
INSERT INTO `indicator` (`id`, `name`, `literal_id`) VALUES
	(2, 'Total cost of the work-related injuries and illnesses (billions of USD/€) EU28', 2);
INSERT INTO `indicator` (`id`, `name`, `literal_id`) VALUES
	(3, 'Mortality: Fatal cases resulting from work-related injuries and illnesses Global', 3);
INSERT INTO `indicator` (`id`, `name`, `literal_id`) VALUES
	(4, 'Mortality: Fatal cases resulting from work-related injuries and illnesses EU28', 4);
INSERT INTO `indicator` (`id`, `name`, `literal_id`) VALUES
	(5, 'DALY - Global (millions of years)', 5);
INSERT INTO `indicator` (`id`, `name`, `literal_id`) VALUES
	(6, 'DALY  EU28 (millions of years)', 6);
INSERT INTO `indicator` (`id`, `name`, `literal_id`) VALUES
	(7, 'Distribution of mortality by illness group (%) Global', 7);
INSERT INTO `indicator` (`id`, `name`, `literal_id`) VALUES
	(8, 'Distribution of mortality by illness group (%) EU28', 8);
INSERT INTO `indicator` (`id`, `name`, `literal_id`) VALUES
	(9, 'Distribution of DALY by illness group (%) Global', 9);
INSERT INTO `indicator` (`id`, `name`, `literal_id`) VALUES
	(10, 'Distribution of DALY by illness group (%) EU28', 10);
INSERT INTO `indicator` (`id`, `name`, `literal_id`) VALUES
	(11, 'Mortality-fatal cases per 100.000 workers in WHO regions', 11);
INSERT INTO `indicator` (`id`, `name`, `literal_id`) VALUES
	(12, 'YLL per 100.000 workers in WHO regions', 12);
INSERT INTO `indicator` (`id`, `name`, `literal_id`) VALUES
	(13, 'Comparison of Years of Life Lost (YLL) and Years Lived with Disability (YLD) in WHO regions', 13);
INSERT INTO `indicator` (`id`, `name`, `literal_id`) VALUES
	(14, 'DALY per 100.000 workers in WHO regions', 14);
INSERT INTO `indicator` (`id`, `name`, `literal_id`) VALUES
	(15, 'Contribution to GDP loss (%) in WHO regions', 15);
INSERT INTO `indicator` (`id`, `name`, `literal_id`) VALUES
	(16, 'YLL per 100.000 workers in EU28', 16);
INSERT INTO `indicator` (`id`, `name`, `literal_id`) VALUES
	(17, 'YLD per 100.000 workers in EU28', 17);
INSERT INTO `indicator` (`id`, `name`, `literal_id`) VALUES
	(18, 'Total GDP workyears lost (%) in EU28', 18);
INSERT INTO `indicator` (`id`, `name`, `literal_id`) VALUES
	(19, 'Injuries contribution to GDP workyears lost (%) in EU28', 19);
INSERT INTO `indicator` (`id`, `name`, `literal_id`) VALUES
	(20, 'Illnesses contribution to GDP workyears lost (%) in EU28', 20);
INSERT INTO `indicator` (`id`, `name`, `literal_id`) VALUES
	(21, 'Distribution of mortality by illness group (%) in WHO regions', 21);
INSERT INTO `indicator` (`id`, `name`, `literal_id`) VALUES
	(22, 'Distribution of DALY by illness group (%) in WHO regions', 22);
INSERT INTO `indicator` (`id`, `name`, `literal_id`) VALUES
	(23, 'DALY per 100.000 workers in EU28', 23);
INSERT INTO `indicator` (`id`, `name`, `literal_id`) VALUES
	(24, 'Ranking of DALY per 100.000 workers in the EU28', 24);
INSERT INTO `indicator` (`id`, `name`, `literal_id`) VALUES
	(25, 'YLL distribution by illnesses group in EU28', 25);
INSERT INTO `indicator` (`id`, `name`, `literal_id`) VALUES
	(26, 'DALY per 100.000 workers resulting from main work-related illnesses groups in WHO regions', 26);
/*!40000 ALTER TABLE `indicator` ENABLE KEYS */;

-- Volcando estructura para tabla osha_dvt_ilo.indicators_by_chart
DROP TABLE IF EXISTS `indicators_by_chart`;
CREATE TABLE IF NOT EXISTS `indicators_by_chart` (
  `chart_id` int(11) NOT NULL,
  `indicator_id` int(11) NOT NULL,
  `dataset_id` int(11) NOT NULL,
  PRIMARY KEY (`chart_id`,`indicator_id`,`dataset_id`),
  KEY `indicators_chart_indicator_id` (`indicator_id`),
  KEY `indicators_chart_dataset_id` (`dataset_id`),
  CONSTRAINT `indicators_chart_chart_id` FOREIGN KEY (`chart_id`) REFERENCES `chart` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `indicators_chart_dataset_id` FOREIGN KEY (`dataset_id`) REFERENCES `dataset` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `indicators_chart_indicator_id` FOREIGN KEY (`indicator_id`) REFERENCES `indicator` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla osha_dvt_ilo.indicators_by_chart: ~21 rows (aproximadamente)
/*!40000 ALTER TABLE `indicators_by_chart` DISABLE KEYS */;
INSERT INTO `indicators_by_chart` (`chart_id`, `indicator_id`, `dataset_id`) VALUES
	(1, 1, 1);
INSERT INTO `indicators_by_chart` (`chart_id`, `indicator_id`, `dataset_id`) VALUES
	(2, 2, 2);
INSERT INTO `indicators_by_chart` (`chart_id`, `indicator_id`, `dataset_id`) VALUES
	(3, 3, 1);
INSERT INTO `indicators_by_chart` (`chart_id`, `indicator_id`, `dataset_id`) VALUES
	(4, 4, 2);
INSERT INTO `indicators_by_chart` (`chart_id`, `indicator_id`, `dataset_id`) VALUES
	(5, 5, 1);
INSERT INTO `indicators_by_chart` (`chart_id`, `indicator_id`, `dataset_id`) VALUES
	(6, 6, 2);
INSERT INTO `indicators_by_chart` (`chart_id`, `indicator_id`, `dataset_id`) VALUES
	(7, 7, 1);
INSERT INTO `indicators_by_chart` (`chart_id`, `indicator_id`, `dataset_id`) VALUES
	(8, 8, 2);
INSERT INTO `indicators_by_chart` (`chart_id`, `indicator_id`, `dataset_id`) VALUES
	(9, 9, 1);
INSERT INTO `indicators_by_chart` (`chart_id`, `indicator_id`, `dataset_id`) VALUES
	(10, 10, 2);
INSERT INTO `indicators_by_chart` (`chart_id`, `indicator_id`, `dataset_id`) VALUES
	(11, 11, 1);
INSERT INTO `indicators_by_chart` (`chart_id`, `indicator_id`, `dataset_id`) VALUES
	(12, 12, 1);
INSERT INTO `indicators_by_chart` (`chart_id`, `indicator_id`, `dataset_id`) VALUES
	(13, 13, 1);
INSERT INTO `indicators_by_chart` (`chart_id`, `indicator_id`, `dataset_id`) VALUES
	(14, 14, 1);
INSERT INTO `indicators_by_chart` (`chart_id`, `indicator_id`, `dataset_id`) VALUES
	(15, 15, 1);
INSERT INTO `indicators_by_chart` (`chart_id`, `indicator_id`, `dataset_id`) VALUES
	(16, 23, 2);
INSERT INTO `indicators_by_chart` (`chart_id`, `indicator_id`, `dataset_id`) VALUES
	(17, 24, 2);
INSERT INTO `indicators_by_chart` (`chart_id`, `indicator_id`, `dataset_id`) VALUES
	(18, 24, 2);
INSERT INTO `indicators_by_chart` (`chart_id`, `indicator_id`, `dataset_id`) VALUES
	(19, 24, 2);
INSERT INTO `indicators_by_chart` (`chart_id`, `indicator_id`, `dataset_id`) VALUES
	(20, 24, 2);
INSERT INTO `indicators_by_chart` (`chart_id`, `indicator_id`, `dataset_id`) VALUES
	(21, 26, 1);
/*!40000 ALTER TABLE `indicators_by_chart` ENABLE KEYS */;

-- Volcando estructura para tabla osha_dvt_ilo.indicators_in_dataset
DROP TABLE IF EXISTS `indicators_in_dataset`;
CREATE TABLE IF NOT EXISTS `indicators_in_dataset` (
  `indicator_id` int(11) NOT NULL,
  `dataset_id` int(11) NOT NULL,
  PRIMARY KEY (`indicator_id`,`dataset_id`),
  KEY `indicator_dataset_dataset_id` (`dataset_id`),
  CONSTRAINT `indicator_dataset_dataset_id` FOREIGN KEY (`dataset_id`) REFERENCES `dataset` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `indicator_dataset_indicator_id` FOREIGN KEY (`indicator_id`) REFERENCES `indicator` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla osha_dvt_ilo.indicators_in_dataset: ~26 rows (aproximadamente)
/*!40000 ALTER TABLE `indicators_in_dataset` DISABLE KEYS */;
INSERT INTO `indicators_in_dataset` (`indicator_id`, `dataset_id`) VALUES
	(1, 1);
INSERT INTO `indicators_in_dataset` (`indicator_id`, `dataset_id`) VALUES
	(2, 2);
INSERT INTO `indicators_in_dataset` (`indicator_id`, `dataset_id`) VALUES
	(3, 1);
INSERT INTO `indicators_in_dataset` (`indicator_id`, `dataset_id`) VALUES
	(4, 2);
INSERT INTO `indicators_in_dataset` (`indicator_id`, `dataset_id`) VALUES
	(5, 1);
INSERT INTO `indicators_in_dataset` (`indicator_id`, `dataset_id`) VALUES
	(6, 2);
INSERT INTO `indicators_in_dataset` (`indicator_id`, `dataset_id`) VALUES
	(7, 1);
INSERT INTO `indicators_in_dataset` (`indicator_id`, `dataset_id`) VALUES
	(8, 2);
INSERT INTO `indicators_in_dataset` (`indicator_id`, `dataset_id`) VALUES
	(9, 1);
INSERT INTO `indicators_in_dataset` (`indicator_id`, `dataset_id`) VALUES
	(10, 2);
INSERT INTO `indicators_in_dataset` (`indicator_id`, `dataset_id`) VALUES
	(11, 1);
INSERT INTO `indicators_in_dataset` (`indicator_id`, `dataset_id`) VALUES
	(12, 1);
INSERT INTO `indicators_in_dataset` (`indicator_id`, `dataset_id`) VALUES
	(13, 1);
INSERT INTO `indicators_in_dataset` (`indicator_id`, `dataset_id`) VALUES
	(14, 1);
INSERT INTO `indicators_in_dataset` (`indicator_id`, `dataset_id`) VALUES
	(15, 1);
INSERT INTO `indicators_in_dataset` (`indicator_id`, `dataset_id`) VALUES
	(16, 2);
INSERT INTO `indicators_in_dataset` (`indicator_id`, `dataset_id`) VALUES
	(17, 2);
INSERT INTO `indicators_in_dataset` (`indicator_id`, `dataset_id`) VALUES
	(18, 2);
INSERT INTO `indicators_in_dataset` (`indicator_id`, `dataset_id`) VALUES
	(19, 2);
INSERT INTO `indicators_in_dataset` (`indicator_id`, `dataset_id`) VALUES
	(20, 2);
INSERT INTO `indicators_in_dataset` (`indicator_id`, `dataset_id`) VALUES
	(21, 1);
INSERT INTO `indicators_in_dataset` (`indicator_id`, `dataset_id`) VALUES
	(22, 1);
INSERT INTO `indicators_in_dataset` (`indicator_id`, `dataset_id`) VALUES
	(23, 2);
INSERT INTO `indicators_in_dataset` (`indicator_id`, `dataset_id`) VALUES
	(24, 2);
INSERT INTO `indicators_in_dataset` (`indicator_id`, `dataset_id`) VALUES
	(25, 2);
INSERT INTO `indicators_in_dataset` (`indicator_id`, `dataset_id`) VALUES
	(26, 1);
/*!40000 ALTER TABLE `indicators_in_dataset` ENABLE KEYS */;

-- Volcando estructura para tabla osha_dvt_ilo.literal
DROP TABLE IF EXISTS `literal`;
CREATE TABLE IF NOT EXISTS `literal` (
  `id` int(11) NOT NULL,
  `chart_id` int(11) DEFAULT '0',
  `section_id` int(11) DEFAULT '0',
  `type` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `literal_chart_id` (`chart_id`),
  KEY `literal_section_id` (`section_id`),
  CONSTRAINT `literal_chart_id` FOREIGN KEY (`chart_id`) REFERENCES `chart` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `literal_section_id` FOREIGN KEY (`section_id`) REFERENCES `section` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla osha_dvt_ilo.literal: ~576 rows (aproximadamente)
/*!40000 ALTER TABLE `literal` DISABLE KEYS */;
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(1, NULL, NULL, 'INDICATOR_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(2, NULL, NULL, 'INDICATOR_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(3, NULL, NULL, 'INDICATOR_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(4, NULL, NULL, 'INDICATOR_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(5, NULL, NULL, 'INDICATOR_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(6, NULL, NULL, 'INDICATOR_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(7, NULL, NULL, 'INDICATOR_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(8, NULL, NULL, 'INDICATOR_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(9, NULL, NULL, 'INDICATOR_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10, NULL, NULL, 'INDICATOR_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(11, NULL, NULL, 'INDICATOR_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(12, NULL, NULL, 'INDICATOR_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(13, NULL, NULL, 'INDICATOR_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(14, NULL, NULL, 'INDICATOR_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(15, NULL, NULL, 'INDICATOR_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(16, NULL, NULL, 'INDICATOR_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(17, NULL, NULL, 'INDICATOR_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(18, NULL, NULL, 'INDICATOR_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(19, NULL, NULL, 'INDICATOR_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(20, NULL, NULL, 'INDICATOR_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(21, NULL, NULL, 'INDICATOR_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(22, NULL, NULL, 'INDICATOR_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(23, NULL, NULL, 'INDICATOR_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(24, NULL, NULL, 'INDICATOR_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(25, NULL, NULL, 'INDICATOR_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(26, NULL, NULL, 'INDICATOR_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(27, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(28, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(29, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(30, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(31, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(32, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(33, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(34, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(35, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(36, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(37, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(38, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(39, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(40, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(41, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(42, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(43, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(44, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(45, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(46, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(47, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(48, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(49, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(50, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(51, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(52, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(53, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(54, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(55, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(56, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(57, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(58, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(59, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(60, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(61, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(62, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(63, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(64, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(65, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(66, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(67, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(68, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(69, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(70, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(71, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(72, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(73, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(74, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(75, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(76, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(77, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(78, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(79, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(80, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(81, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(82, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(83, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(84, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(85, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(86, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(87, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(88, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(89, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(90, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(91, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(92, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(93, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(94, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(95, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(96, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(97, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(98, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(99, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(100, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(101, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(102, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(103, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(104, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(105, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(106, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(107, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(108, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(109, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(110, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(111, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(112, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(113, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(114, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(115, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(116, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(117, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(118, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(119, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(120, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(121, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(122, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(123, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(124, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(125, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(126, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(127, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(128, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(129, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(130, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(131, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(132, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(133, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(134, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(135, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(136, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(137, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(138, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(139, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(140, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(141, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(142, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(143, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(144, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(145, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(146, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(147, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(148, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(149, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(150, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(151, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(152, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(153, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(154, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(155, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(156, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(157, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(158, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(159, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(160, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(161, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(162, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(163, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(164, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(165, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(166, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(167, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(168, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(169, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(170, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(171, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(172, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(173, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(174, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(175, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(176, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(177, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(178, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(179, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(180, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(181, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(182, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(183, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(184, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(185, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(186, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(187, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(188, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(189, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(190, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(191, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(192, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(193, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(194, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(195, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(196, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(197, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(198, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(199, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(200, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(201, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(202, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(203, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(204, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(205, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(206, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(207, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(208, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(209, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(210, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(211, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(212, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(213, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(214, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(215, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(216, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(217, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(218, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(219, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(220, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(221, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(222, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(223, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(224, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(225, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(226, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(227, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(228, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(229, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(230, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(231, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(232, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(233, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(234, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(235, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(236, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(237, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(238, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(239, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(240, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(241, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(242, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(243, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(244, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(245, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(246, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(247, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(248, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(249, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(250, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(251, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(252, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(253, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(254, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(255, NULL, NULL, 'NUTS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(256, NULL, NULL, 'WHO_REGIONS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(257, NULL, NULL, 'WHO_REGIONS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(258, NULL, NULL, 'WHO_REGIONS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(259, NULL, NULL, 'WHO_REGIONS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(260, NULL, NULL, 'WHO_REGIONS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(261, NULL, NULL, 'WHO_REGIONS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(262, NULL, NULL, 'WHO_REGIONS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(263, NULL, NULL, 'WHO_REGIONS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(264, NULL, NULL, 'WHO_REGIONS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(265, NULL, NULL, 'SPLIT_CURRENCY_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(266, NULL, NULL, 'SPLIT_CURRENCY_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(267, NULL, NULL, 'SPLIT_ILLNESS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(268, NULL, NULL, 'SPLIT_ILLNESS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(269, NULL, NULL, 'SPLIT_ILLNESS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(270, NULL, NULL, 'SPLIT_ILLNESS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(271, NULL, NULL, 'SPLIT_ILLNESS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(272, NULL, NULL, 'SPLIT_ILLNESS_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(273, NULL, NULL, 'SPLIT_SUBINDICATOR_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(274, NULL, NULL, 'SPLIT_SUBINDICATOR_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(275, NULL, NULL, 'SPLIT_SUBINDICATOR_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(276, NULL, NULL, 'SPLIT_SUBINDICATOR_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(277, NULL, NULL, 'SPLIT_SUBINDICATOR_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(278, NULL, NULL, 'SPLIT_SUBINDICATOR_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(279, NULL, NULL, 'SPLIT_SUBINDICATOR_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(280, NULL, NULL, 'SPLIT_SUBINDICATOR_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(281, NULL, NULL, 'SPLIT_SUBINDICATOR_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(282, NULL, NULL, 'SPLIT_SUBINDICATOR_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(283, NULL, NULL, 'SPLIT_SUBINDICATOR_NAME');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10001, NULL, 5, 'MENU_ITEM');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10002, NULL, 5, 'MENU_ITEM');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10004, NULL, 5, 'MENU_ITEM');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10005, NULL, 5, 'MENU_ITEM');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10006, NULL, 5, 'MENU_ITEM');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10007, NULL, 6, 'FOOTER_ITEM');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10008, NULL, 6, 'FOOTER_ITEM');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10009, NULL, 6, 'FOOTER_ITEM');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10010, NULL, 6, 'FOOTER_ITEM');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10011, NULL, 6, 'FOOTER_ITEM');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10012, NULL, 1, 'OTHER_LITERAL');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10013, NULL, 1, 'OTHER_LITERAL');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10014, NULL, 1, 'SHORT_TITLE');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10015, NULL, 1, 'LONG_TITLE');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10016, NULL, 1, 'RELATED_MESSAGE_$');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10017, NULL, 1, 'RELATED_MESSAGE_€');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10018, NULL, 1, 'SHORT_TITLE');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10019, NULL, 1, 'LONG_TITLE');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10020, NULL, 1, 'RELATED_MESSAGE');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10021, NULL, 1, 'SHORT_TITLE');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10022, NULL, 1, 'LONG_TITLE');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10023, NULL, 1, 'RELATED_MESSAGE');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10024, NULL, 1, 'LITERAL_AXIS');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10025, NULL, 1, 'LITERAL_AXIS');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10026, NULL, 1, 'SHORT_TITLE');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10027, NULL, 1, 'LONG_TITLE');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10028, NULL, 1, 'TITLE');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10029, NULL, 1, 'OTHER_LITERAL');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10030, NULL, 1, 'SHORT_TITLE');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10031, NULL, 1, 'LONG_TITLE');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10033, NULL, 1, 'RELATED_MESSAGE');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10037, NULL, 2, 'SECTION_TITLE');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10038, NULL, 2, 'INTRO');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10040, NULL, 2, 'CARROUSEL_TITLE');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10041, NULL, 2, 'CARROUSEL_TITLE');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10042, NULL, 2, 'CARROUSEL_TITLE');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10043, NULL, 2, 'CARROUSEL_TITLE');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10044, NULL, 2, 'OTHER_LITERAL');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10046, NULL, 2, 'BUTTON');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10047, NULL, 2, 'SHORT_TITLE');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10048, NULL, 2, 'LONG_TITLE');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10049, NULL, 2, 'RELATED_MESSAGE');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10050, NULL, 2, 'SHORT_TITLE');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10051, NULL, 2, 'LONG_TITLE');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10052, NULL, 2, 'RELATED_MESSAGE');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10053, NULL, 2, 'SHORT_TITLE');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10054, NULL, 2, 'LONG_TITLE');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10055, NULL, 2, 'RELATED_MESSAGE');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10056, NULL, 2, 'SHORT_TITLE');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10057, NULL, 2, 'LONG_TITLE');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10058, NULL, 2, 'RELATED_MESSAGE');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10068, NULL, 1, 'BUTTON');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10088, NULL, 3, 'SECTION_TITLE');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10089, NULL, 3, 'BUTTON');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10091, NULL, 3, 'SECTION_SUBTITLE');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10092, NULL, 3, 'RELATED_MESSAGE');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10093, NULL, 3, 'SHORT_TITLE');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10094, NULL, 3, 'LONG_TITLE');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10095, NULL, 7, 'SUBSECTION_TITLE');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10096, NULL, 7, 'CARROUSEL_TITLE');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10097, NULL, 7, 'CARROUSEL_TITLE');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10098, NULL, 7, 'CARROUSEL_TITLE');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10099, NULL, 7, 'CARROUSEL_TITLE');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10100, NULL, 7, 'SHORT_TITLE');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10101, NULL, 7, 'LONG_TITLE');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10102, NULL, 7, 'RELATED_MESSAGE');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10103, NULL, 7, 'SHORT_TITLE');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10104, NULL, 7, 'LONG_TITLE');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10105, NULL, 7, 'RELATED_MESSAGE');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10106, NULL, 7, 'SHORT_TITLE');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10107, NULL, 7, 'LONG_TITLE');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10108, NULL, 7, 'RELATED_MESSAGE');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10109, NULL, 7, 'SHORT_TITLE');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10110, NULL, 7, 'LONG_TITLE');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10111, NULL, 7, 'RELATED_MESSAGE');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10112, NULL, 8, 'SECTION_SUBTITLE');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10113, NULL, 1, 'LITERAL_AXIS');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10114, NULL, 1, 'LITERAL_AXIS');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10115, NULL, 1, 'LITERAL_AXIS');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10116, NULL, 1, 'LITERAL_AXIS');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10117, NULL, 2, 'LITERAL_AXIS');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10118, NULL, 2, 'LITERAL_AXIS');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10125, NULL, 7, 'LITERAL_AXIS');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10126, NULL, 7, 'LITERAL_AXIS');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10127, NULL, 7, 'LITERAL_AXIS');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10128, NULL, 7, 'LITERAL_AXIS');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10129, NULL, 3, 'LEGEND');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10130, NULL, 3, 'LEGEND');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10131, NULL, 3, 'LEGEND');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10132, NULL, 3, 'LEGEND');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10133, NULL, 3, 'LEGEND');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10134, NULL, 9, 'OTHER_LITERAL');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10135, NULL, 9, 'OTHER_LITERAL');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10136, NULL, 9, 'OTHER_LITERAL');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10137, NULL, 5, 'MENU_ITEM');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10138, NULL, 4, 'SECTION_TITLE');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10139, NULL, 4, 'SECTION_SUBTITLE');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10140, NULL, 4, 'RELATED_MESSAGE');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10141, NULL, 4, 'SHORT_TITLE');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10142, NULL, 4, 'LONG_TITLE');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10143, NULL, 1, 'BUTTON');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10144, NULL, 5, 'MENU_ITEM');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10145, NULL, 10, 'OTHER_LITERAL');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10146, NULL, 11, 'HYPERLINK');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10147, NULL, 11, '');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10148, NULL, 11, '');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10149, NULL, 12, 'HEADER_ITEM');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10150, NULL, 12, 'TOOLTIP');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10151, NULL, 12, 'TOOLTIP');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10152, NULL, 12, 'TOOLTIP');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10153, NULL, 12, 'TOOLTIP');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10154, NULL, 12, 'OTHER_ITEM');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10155, NULL, 12, 'TOOLTIP');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10156, NULL, 12, 'TOOLTIP');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10157, NULL, 12, 'TOOLTIP');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10158, NULL, 12, 'TOOLTIP');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10159, NULL, 12, 'OTHER_ITEM');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10160, NULL, 12, 'HEADER_ITEM');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10161, NULL, 12, 'TOOLTIP');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10162, NULL, 12, 'HEADER_TITLE');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10163, NULL, 12, 'TOOLTIP');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10164, NULL, 12, 'LOGO_TITLE');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10165, NULL, 12, 'OTHER_ITEM');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10166, NULL, 12, 'OTHER_ITEM');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10167, NULL, 12, 'TOOLTIP');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10168, NULL, 6, 'OTHER_ITEM');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10169, NULL, 6, 'TOOLTIP');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10170, NULL, 6, 'OTHER_ITEM');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10171, NULL, 6, 'OTHER_ITEM');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10172, NULL, 6, 'OTHER_ITEM');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10173, NULL, 6, 'OTHER_ITEM');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10174, NULL, 6, 'OTHER_ITEM');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10175, NULL, 6, 'OTHER_ITEM');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10176, NULL, 6, 'FOOTER_ITEM');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10177, NULL, 6, 'TOOLTIP');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10178, NULL, 6, 'OTHER_ITEM');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10179, NULL, 6, 'TOOLTIP');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10180, NULL, 6, 'OTHER_ITEM');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10181, NULL, 6, 'TOOLTIP');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10182, NULL, 6, 'OTHER_ITEM');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10183, NULL, 6, 'TOOLTIP');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10184, NULL, 6, 'OTHER_ITEM');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10185, NULL, 6, 'TOOLTIP');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10186, NULL, 1, 'OTHER_LITERAL');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10187, NULL, 1, 'OTHER_LITERAL');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10188, NULL, 1, 'TOOLTIP');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10189, NULL, 1, 'OTHER_LITERAL');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10190, NULL, 1, 'OTHER_LITERAL');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10191, NULL, 2, 'SECTION_TITLE');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10192, NULL, 2, 'OTHER_LITERAL');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10193, NULL, 2, 'TOOLTIP');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10194, NULL, 4, 'OTHER_LITERAL');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10195, NULL, 4, 'OTHER_LITERAL');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10196, NULL, 13, 'SECTION_TITLE');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10197, NULL, 13, 'SUBSECTION_TITLE');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10198, NULL, 13, 'SUBSECTION_TITLE');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10199, NULL, 13, 'SUBSECTION_TITLE');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10200, NULL, 13, 'RELATED_MESSAGE');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10201, NULL, 13, 'RELATED_MESSAGE');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10202, NULL, 13, 'RELATED_MESSAGE');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10203, NULL, 13, 'OTHER_LITERAL');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10204, NULL, 14, 'SECTION_TITLE');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10205, NULL, 14, 'SUBSECTION_TITLE');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10206, NULL, 14, 'SUBSECTION_TITLE');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10207, NULL, 14, 'SUBSECTION_TITLE');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10208, NULL, 14, 'SUBSECTION_TITLE');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10209, NULL, 14, 'SUBSECTION_TITLE');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10210, NULL, 14, 'SUBSECTION_TITLE');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10211, NULL, 14, 'SUBSECTION_TITLE');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10212, NULL, 14, 'SUBSECTION_TITLE');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10213, NULL, 14, 'SUBSECTION_TITLE');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10214, NULL, 14, 'SUBSECTION_TITLE');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10215, NULL, 14, 'SUBSECTION_TITLE');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10216, NULL, 14, 'SUBSECTION_TITLE');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10217, NULL, 14, 'RELATED_MESSAGE');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10218, NULL, 14, 'RELATED_MESSAGE');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10219, NULL, 14, 'RELATED_MESSAGE');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10220, NULL, 14, 'RELATED_MESSAGE');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10221, NULL, 14, 'RELATED_MESSAGE');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10222, NULL, 14, 'RELATED_MESSAGE');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10223, NULL, 14, 'RELATED_MESSAGE');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10224, NULL, 14, 'RELATED_MESSAGE');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10225, NULL, 14, 'RELATED_MESSAGE');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10226, NULL, 14, 'RELATED_MESSAGE');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10227, NULL, 14, 'RELATED_MESSAGE');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10228, NULL, 14, 'RELATED_MESSAGE');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10229, NULL, 14, 'RELATED_MESSAGE');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10230, NULL, 14, 'RELATED_MESSAGE');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10231, NULL, 14, 'RELATED_MESSAGE');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10232, NULL, 14, 'RELATED_MESSAGE');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10233, NULL, 14, 'RELATED_MESSAGE');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10234, NULL, 14, 'RELATED_MESSAGE');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10235, NULL, 14, 'RELATED_MESSAGE');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10236, NULL, 15, 'SECTION_TITLE');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10237, NULL, 15, 'SUBSECTION_TITLE');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10238, NULL, 15, 'SUBSECTION_TITLE');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10239, NULL, 15, 'RELATED_MESSAGE');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10240, NULL, 15, 'RELATED_MESSAGE');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10241, NULL, 10, 'RELATED_MESSAGE');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10242, NULL, 8, 'SECTION_TITLE');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10243, NULL, 8, 'OTHER_LITERAL');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10244, NULL, 9, 'OTHER_LITERAL');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10245, NULL, 9, 'OTHER_LITERAL');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10246, NULL, 9, 'OTHER_LITERAL');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10247, NULL, 9, 'OTHER_LITERAL');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10248, NULL, 9, 'OTHER_LITERAL');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10249, NULL, 9, 'COOKIES_ITEM');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10250, NULL, 9, 'COOKIES_ITEM');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10251, NULL, 9, 'COOKIES_ITEM');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10252, NULL, 9, 'COOKIES_ITEM');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10253, NULL, 9, 'COOKIES_ITEM');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10254, NULL, 9, 'COOKIES_ITEM');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10255, NULL, 3, 'OTHER _LITERAL');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10256, NULL, 8, 'GLOSSARY_TERM');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10257, NULL, 8, 'GLOSSARY_DESCRIPTION');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10258, NULL, 8, 'GLOSSARY_SYNONYM');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10259, NULL, 8, 'GLOSSARY_SYNONYM');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10260, NULL, 8, 'GLOSSARY_SYNONYM');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10261, NULL, 8, 'GLOSSARY_TERM');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10262, NULL, 8, 'GLOSSARY_DESCRIPTION');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10263, NULL, 8, 'GLOSSARY_SYNONYM');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10264, NULL, 8, 'GLOSSARY_SYNONYM');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10265, NULL, 8, 'GLOSSARY_SYNONYM');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10266, NULL, 8, 'GLOSSARY_TERM');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10267, NULL, 8, 'GLOSSARY_DESCRIPTION');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10268, NULL, 8, 'GLOSSARY_SYNONYM');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10269, NULL, 8, 'GLOSSARY_SYNONYM');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10270, NULL, 8, 'GLOSSARY_SYNONYM');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10271, NULL, 8, 'GLOSSARY_TERM');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10272, NULL, 8, 'GLOSSARY_DESCRIPTION');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10273, NULL, 8, 'GLOSSARY_SYNONYM');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10274, NULL, 8, 'GLOSSARY_SYNONYM');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10275, NULL, 8, 'GLOSSARY_SYNONYM');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10276, NULL, 8, 'GLOSSARY_TERM');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10277, NULL, 8, 'GLOSSARY_DESCRIPTION');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10278, NULL, 8, 'GLOSSARY_SYNONYM');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10279, NULL, 8, 'GLOSSARY_SYNONYM');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10280, NULL, 8, 'GLOSSARY_SYNONYM');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10281, NULL, 8, 'GLOSSARY_TERM');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10282, NULL, 8, 'GLOSSARY_DESCRIPTION');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10283, NULL, 8, 'GLOSSARY_SYNONYM');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10284, NULL, 8, 'GLOSSARY_SYNONYM');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10285, NULL, 8, 'GLOSSARY_SYNONYM');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10286, NULL, 8, 'GLOSSARY_TERM');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10287, NULL, 8, 'GLOSSARY_DESCRIPTION');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10288, NULL, 8, 'GLOSSARY_SYNONYM');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10289, NULL, 8, 'GLOSSARY_SYNONYM');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10290, NULL, 8, 'GLOSSARY_SYNONYM');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10291, NULL, 8, 'GLOSSARY_TERM');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10292, NULL, 8, 'GLOSSARY_DESCRIPTION');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10293, NULL, 8, 'GLOSSARY_SYNONYM');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10294, NULL, 8, 'GLOSSARY_SYNONYM');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10295, NULL, 8, 'GLOSSARY_SYNONYM');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10296, NULL, 8, 'GLOSSARY_TERM');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10297, NULL, 8, 'GLOSSARY_DESCRIPTION');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10298, NULL, 8, 'GLOSSARY_SYNONYM');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10299, NULL, 8, 'GLOSSARY_SYNONYM');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10300, NULL, 8, 'GLOSSARY_SYNONYM');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10301, NULL, 8, 'GLOSSARY_TERM');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10302, NULL, 8, 'GLOSSARY_DESCRIPTION');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10303, NULL, 8, 'GLOSSARY_SYNONYM');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10304, NULL, 8, 'GLOSSARY_SYNONYM');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10305, NULL, 8, 'GLOSSARY_SYNONYM');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10306, NULL, 8, 'GLOSSARY_TERM');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10307, NULL, 8, 'GLOSSARY_DESCRIPTION');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10308, NULL, 8, 'GLOSSARY_SYNONYM');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10309, NULL, 8, 'GLOSSARY_SYNONYM');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10310, NULL, 8, 'GLOSSARY_SYNONYM');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10311, NULL, 8, 'GLOSSARY_TERM');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10312, NULL, 8, 'GLOSSARY_DESCRIPTION');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10313, NULL, 8, 'GLOSSARY_SYNONYM');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10314, NULL, 8, 'GLOSSARY_SYNONYM');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10315, NULL, 8, 'GLOSSARY_SYNONYM');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10316, NULL, 8, 'GLOSSARY_TERM');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10317, NULL, 8, 'GLOSSARY_DESCRIPTION');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10318, NULL, 8, 'GLOSSARY_SYNONYM');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10319, NULL, 8, 'GLOSSARY_SYNONYM');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10320, NULL, 8, 'GLOSSARY_SYNONYM');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10321, NULL, 8, 'GLOSSARY_TERM');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10322, NULL, 8, 'GLOSSARY_DESCRIPTION');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10323, NULL, 8, 'GLOSSARY_SYNONYM');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10324, NULL, 8, 'GLOSSARY_SYNONYM');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10325, NULL, 8, 'GLOSSARY_SYNONYM');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10326, NULL, 8, 'GLOSSARY_TERM');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10327, NULL, 8, 'GLOSSARY_DESCRIPTION');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10328, NULL, 8, 'GLOSSARY_SYNONYM');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10329, NULL, 8, 'GLOSSARY_SYNONYM');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10330, NULL, 8, 'GLOSSARY_SYNONYM');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10331, NULL, 8, 'GLOSSARY_TERM');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10332, NULL, 8, 'GLOSSARY_DESCRIPTION');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10333, NULL, 8, 'GLOSSARY_SYNONYM');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10334, NULL, 8, 'GLOSSARY_SYNONYM');
INSERT INTO `literal` (`id`, `chart_id`, `section_id`, `type`) VALUES
	(10335, NULL, 8, 'GLOSSARY_SYNONYM');
/*!40000 ALTER TABLE `literal` ENABLE KEYS */;

-- Volcando estructura para tabla osha_dvt_ilo.nuts
DROP TABLE IF EXISTS `nuts`;
CREATE TABLE IF NOT EXISTS `nuts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_code` varchar(2) NOT NULL,
  `literal_id` int(11) NOT NULL,
  `level` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `nuts_literal_id` (`literal_id`),
  CONSTRAINT `nuts_literal_id` FOREIGN KEY (`literal_id`) REFERENCES `literal` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=230 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla osha_dvt_ilo.nuts: ~229 rows (aproximadamente)
/*!40000 ALTER TABLE `nuts` DISABLE KEYS */;
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(1, 'AF', 27, 0, 'Afghanistan');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(2, 'AL', 28, 0, 'Albania');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(3, 'DZ', 29, 0, 'Algeria');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(4, 'AS', 30, 0, 'American Samoa');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(5, 'AD', 31, 0, 'Andorra');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(6, 'AO', 32, 0, 'Angola');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(7, 'AI', 33, 0, 'Anguilla');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(8, 'AG', 34, 0, 'Antigua and Barbuda');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(9, 'AR', 35, 0, 'Argentina');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(10, 'AM', 36, 0, 'Armenia');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(11, 'AW', 37, 0, 'Aruba');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(12, 'AU', 38, 0, 'Australia');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(13, 'AT', 39, 0, 'Austria');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(14, 'AZ', 40, 0, 'Azerbaijan');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(15, 'BS', 41, 0, 'Bahamas');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(16, 'BH', 42, 0, 'Bahrain');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(17, 'BD', 43, 0, 'Bangladesh');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(18, 'BB', 44, 0, 'Barbados');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(19, 'BY', 45, 0, 'Belarus');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(20, 'BE', 46, 0, 'Belgium');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(21, 'BZ', 47, 0, 'Belize');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(22, 'BJ', 48, 0, 'Benin');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(23, 'BM', 49, 0, 'Bermuda');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(24, 'BT', 50, 0, 'Bhutan');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(25, 'BO', 51, 0, 'Bolivia');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(26, 'BA', 52, 0, 'Bosnia and Herzegovina');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(27, 'BW', 53, 0, 'Botswana');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(28, 'BZ', 54, 0, 'Brazil');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(29, 'BN', 55, 0, 'Brunei Darussalam');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(30, 'BG', 56, 0, 'Bulgaria');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(31, 'BF', 57, 0, 'Burkina Faso');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(32, 'BI', 58, 0, 'Burundi');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(33, 'KH', 59, 0, 'Cambodia');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(34, 'VM', 60, 0, 'Cameroon');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(35, 'VA', 61, 0, 'Canada');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(36, 'CV', 62, 0, 'Cape Verde');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(37, 'KY', 63, 0, 'Cayman Islands');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(38, 'CF', 64, 0, 'Central African Republic');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(39, 'TD', 65, 0, 'Chad');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(40, 'CL', 66, 0, 'Chile');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(41, 'CN', 67, 0, 'China');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(42, 'CO', 68, 0, 'Colombia');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(43, 'KM', 69, 0, 'Comoros');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(44, 'CD', 70, 0, 'Congo, Democratic Republic of the');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(45, 'CG', 71, 0, 'Congo, Republic of');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(46, 'CK', 72, 0, 'Cook Islands');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(47, 'CR', 73, 0, 'Costa Rica');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(48, 'CI', 74, 0, 'Côte d\'Ivoire');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(49, 'HR', 75, 0, 'Croatia');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(50, 'CU', 76, 0, 'Cuba');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(51, 'CY', 77, 0, 'Cyprus');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(52, 'CZ', 78, 0, 'Czech Republic');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(53, 'DK', 79, 0, 'Denmark');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(54, 'DJ', 80, 0, 'Djibouti');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(55, 'DM', 81, 0, 'Dominica');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(56, 'DO', 82, 0, 'Dominican Republic');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(57, 'EC', 83, 0, 'Ecuador');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(58, 'EG', 84, 0, 'Egypt');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(59, 'SV', 85, 0, 'El Salvador');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(60, 'GQ', 86, 0, 'Equatorial Guinea');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(61, 'ER', 87, 0, 'Eritrea');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(62, 'EE', 88, 0, 'Estonia');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(63, 'ET', 89, 0, 'Ethiopia');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(64, 'FK', 90, 0, 'Falkland Islands (Malvinas)');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(65, 'FO', 91, 0, 'Faroe Islands');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(66, 'FJ', 92, 0, 'Fiji');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(67, 'FI', 93, 0, 'Finland');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(68, 'FR', 94, 0, 'France');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(69, 'GF', 95, 0, 'French Guiana');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(70, 'PF', 96, 0, 'French Polynesia');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(71, 'GA', 97, 0, 'Gabon');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(72, 'GM', 98, 0, 'Gambia');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(73, 'GE', 99, 0, 'Georgia');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(74, 'DE', 100, 0, 'Germany');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(75, 'GH', 101, 0, 'Ghana');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(76, 'GI', 102, 0, 'Gibraltar');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(77, 'GR', 103, 0, 'Greece');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(78, 'GL', 104, 0, 'Greenland');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(79, 'GD', 105, 0, 'Grenada');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(80, 'GP', 106, 0, 'Guadeloupe');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(81, 'GU', 107, 0, 'Guam');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(82, 'GT', 108, 0, 'Guatemala');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(83, '', 109, 0, 'Guernsey');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(84, 'GN', 110, 0, 'Guinea');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(85, 'GW', 111, 0, 'Guinea-Bissau');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(86, 'GY', 112, 0, 'Guyana');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(87, 'HT', 113, 0, 'Haiti');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(88, 'HN', 114, 0, 'Honduras');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(89, 'HK', 115, 0, 'Hong Kong, China');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(90, 'HU', 116, 0, 'Hungary');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(91, 'IS', 117, 0, 'Iceland');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(92, 'IN', 118, 0, 'India');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(93, 'IN', 119, 0, 'Indonesia');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(94, 'IR', 120, 0, 'Iran, Islamic Rep. Of');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(95, 'IQ', 121, 0, 'Iraq');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(96, 'IE', 122, 0, 'Ireland');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(97, '', 123, 0, 'Isle of Man');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(98, 'IL', 124, 0, 'Israel');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(99, 'IT', 125, 0, 'Italy');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(100, 'JM', 126, 0, 'Jamaica');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(101, 'JP', 127, 0, 'Japan');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(102, '', 128, 0, 'Jersey');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(103, 'JO', 129, 0, 'Jordan');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(104, 'KZ', 130, 0, 'Kazakhstan');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(105, 'KE', 131, 0, 'Kenya');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(106, 'KI', 132, 0, 'Kiribati');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(107, 'KP', 133, 0, 'Korea, Dem. People\'s Rep. Of');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(108, 'KR', 134, 0, 'Korea, Republic of');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(109, 'KW', 135, 0, 'Kuwait');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(110, 'KG', 136, 0, 'Kyrgyzstan');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(111, 'LA', 137, 0, 'Lao People\'s Dem. Rep.');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(112, 'LV', 138, 0, 'Latvia');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(113, 'LB', 139, 0, 'Lebanon');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(114, 'LS', 140, 0, 'Lesotho');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(115, 'LR', 141, 0, 'Liberia');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(116, 'LY', 142, 0, 'Libyan Arab Jamahiriya');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(117, 'LI', 143, 0, 'Liechtenstein');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(118, 'LT', 144, 0, 'Lithuania');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(119, 'LU', 145, 0, 'Luxembourg');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(120, 'MO', 146, 0, 'Macau, China');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(121, 'MK', 147, 0, 'Macedonia, The former Yugoslav Rep. of');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(122, 'MG', 148, 0, 'Madagascar');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(123, 'MW', 149, 0, 'Malawi');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(124, 'MY', 150, 0, 'Malaysia');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(125, 'MV', 151, 0, 'Maldives');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(126, 'ML', 152, 0, 'Mali');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(127, 'MT', 153, 0, 'Malta');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(128, 'MH', 154, 0, 'Marshall Islands');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(129, 'MQ', 155, 0, 'Martinique');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(130, 'MR', 156, 0, 'Mauritania');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(131, 'MU', 157, 0, 'Mauritius');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(132, 'YT', 158, 0, 'Mayotte');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(133, 'MX', 159, 0, 'Mexico');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(134, 'FM', 160, 0, 'Micronesia');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(135, 'MD', 161, 0, 'Moldova, Republic of');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(136, 'MC', 162, 0, 'Monaco');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(137, 'MN', 163, 0, 'Mongolia');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(138, '', 164, 0, 'Montenegro');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(139, 'MS', 165, 0, 'Montserrat');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(140, 'MA', 166, 0, 'Morocco');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(141, 'MZ', 167, 0, 'Mozambique');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(142, 'MM', 168, 0, 'Myanmar (Burma)');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(143, 'NA', 169, 0, 'Namibia');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(144, 'NR', 170, 0, 'Nauru');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(145, 'NP', 171, 0, 'Nepal');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(146, 'NL', 172, 0, 'Netherlands');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(147, 'AN', 173, 0, 'Netherlands Antilles');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(148, 'NC', 174, 0, 'New Caledonia');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(149, 'NZ', 175, 0, 'New Zealand');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(150, 'NI', 176, 0, 'Nicaragua');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(151, 'NE', 177, 0, 'Niger');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(152, 'NG', 178, 0, 'Nigeria');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(153, 'NU', 179, 0, 'Niue');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(154, 'NF', 180, 0, 'Norfolk Island');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(155, 'MP', 181, 0, 'Northern Mariana Islands');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(156, 'NO', 182, 0, 'Norway');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(157, 'OM', 183, 0, 'Oman');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(158, 'PK', 184, 0, 'Pakistan');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(159, 'PW', 185, 0, 'Palau');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(160, 'PA', 186, 0, 'Panama');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(161, 'PG', 187, 0, 'Papua New Guinea');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(162, 'PY', 188, 0, 'Paraguay');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(163, 'PE', 189, 0, 'Peru');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(164, 'PH', 190, 0, 'Philippines');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(165, 'PL', 191, 0, 'Poland');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(166, 'PT', 192, 0, 'Portugal');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(167, 'PR', 193, 0, 'Puerto Rico');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(168, 'QA', 194, 0, 'Qatar');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(169, 'RE', 195, 0, 'Réunion');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(170, 'RO', 196, 0, 'Romania');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(171, 'RU', 197, 0, 'Russian Federation');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(172, 'RW', 198, 0, 'Rwanda');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(173, 'SH', 199, 0, 'Saint Helena, Ascension, and Tristan Da Cunha');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(174, 'KN', 200, 0, 'Saint Kitts and Nevis');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(175, 'LC', 201, 0, 'Saint Lucia');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(176, 'PM', 202, 0, 'Saint Pierre and Miquelon');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(177, 'VC', 203, 0, 'Saint Vincent and the Grenadines');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(178, 'WS', 204, 0, 'Samoa');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(179, 'SM', 205, 0, 'San Marino');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(180, 'ST', 206, 0, 'Sao Tome and Principe');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(181, 'SA', 207, 0, 'Saudi Arabia');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(182, 'SN', 208, 0, 'Senegal');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(183, 'RS', 209, 0, 'Serbia');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(184, 'SC', 210, 0, 'Seychelles');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(185, 'SL', 211, 0, 'Sierra Leone');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(186, 'SG', 212, 0, 'Singapore');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(187, 'SK', 213, 0, 'Slovakia');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(188, 'SI', 214, 0, 'Slovenia');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(189, 'SB', 215, 0, 'Solomon Islands');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(190, 'SO', 216, 0, 'Somalia');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(191, 'ZA', 217, 0, 'South Africa');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(192, 'ES', 218, 0, 'Spain');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(193, 'LK', 219, 0, 'Sri Lanka');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(194, 'SD', 220, 0, 'Sudan, The Republic of');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(195, 'SR', 221, 0, 'Suriname');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(196, 'SZ', 222, 0, 'Swaziland');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(197, 'SE', 223, 0, 'Sweden');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(198, 'CH', 224, 0, 'Switzerland');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(199, 'SY', 225, 0, 'Syrian Arab Republic');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(200, 'TW', 226, 0, 'Taiwan, China');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(201, 'TJ', 227, 0, 'Tajikistan');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(202, 'TZ', 228, 0, 'Tanzania, United Republic of');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(203, 'TH', 229, 0, 'Thailand');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(204, 'TP', 230, 0, 'Timor-Leste');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(205, 'TG', 231, 0, 'Togo');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(206, 'TK', 232, 0, 'Tokelau');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(207, 'TO', 233, 0, 'Tonga');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(208, 'TT', 234, 0, 'Trinidad and Tobago');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(209, 'TN', 235, 0, 'Tunisia');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(210, 'TR', 236, 0, 'Turkey');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(211, 'TM', 237, 0, 'Turkmenistan');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(212, 'TC', 238, 0, 'Turks and Caicos Islands');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(213, 'TV', 239, 0, 'Tuvalu');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(214, 'UG', 240, 0, 'Uganda');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(215, 'UA', 241, 0, 'Ukraine');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(216, 'AE', 242, 0, 'United Arab Emirates');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(217, 'GB', 243, 0, 'United Kingdom');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(218, 'US', 244, 0, 'United States');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(219, 'UY', 245, 0, 'Uruguay');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(220, 'UZ', 246, 0, 'Uzbekistan');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(221, 'VU', 247, 0, 'Vanuatu');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(222, 'VE', 248, 0, 'Venezuela, Bolivarian Rep. of');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(223, 'VN', 249, 0, 'Vietnam');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(224, 'VQ', 250, 0, 'Virgin Islands, U.S.');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(225, 'WF', 251, 0, 'Wallis and Futuna');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(226, '', 252, 0, 'West Bank & Gaza Strip');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(227, 'YW', 253, 0, 'Yemen');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(228, 'ZM', 254, 0, 'Zambia');
INSERT INTO `nuts` (`id`, `country_code`, `literal_id`, `level`, `name`) VALUES
	(229, 'ZW', 255, 0, 'Zimbabwe');
/*!40000 ALTER TABLE `nuts` ENABLE KEYS */;

-- Volcando estructura para tabla osha_dvt_ilo.nuts_by_country_group
DROP TABLE IF EXISTS `nuts_by_country_group`;
CREATE TABLE IF NOT EXISTS `nuts_by_country_group` (
  `nuts_id` int(11) NOT NULL,
  `country_group_id` int(11) NOT NULL,
  PRIMARY KEY (`nuts_id`,`country_group_id`),
  KEY `nuts_country_group_country_group_id` (`country_group_id`),
  CONSTRAINT `nuts_country_group_country_group_id` FOREIGN KEY (`country_group_id`) REFERENCES `country_group` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `nuts_country_group_nuts_id` FOREIGN KEY (`nuts_id`) REFERENCES `nuts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla osha_dvt_ilo.nuts_by_country_group: ~229 rows (aproximadamente)
/*!40000 ALTER TABLE `nuts_by_country_group` DISABLE KEYS */;
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(1, 4);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(2, 5);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(3, 2);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(4, 7);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(5, 1);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(6, 2);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(7, 3);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(8, 3);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(9, 3);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(10, 5);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(11, 3);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(12, 1);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(13, 1);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(14, 5);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(15, 1);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(16, 1);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(17, 6);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(18, 3);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(19, 5);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(20, 1);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(21, 3);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(22, 2);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(23, 3);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(24, 6);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(25, 3);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(26, 5);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(27, 2);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(28, 3);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(29, 1);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(30, 5);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(31, 2);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(32, 2);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(33, 7);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(34, 2);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(35, 1);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(36, 2);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(37, 3);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(38, 2);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(39, 2);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(40, 3);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(41, 7);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(42, 3);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(43, 2);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(44, 2);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(45, 2);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(46, 7);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(47, 3);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(48, 2);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(49, 5);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(50, 3);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(51, 1);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(52, 5);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(53, 1);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(54, 4);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(55, 3);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(56, 3);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(57, 3);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(58, 4);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(59, 3);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(60, 2);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(61, 2);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(62, 5);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(63, 2);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(64, 3);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(65, 3);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(66, 7);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(67, 1);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(68, 1);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(69, 3);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(70, 7);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(71, 2);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(72, 2);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(73, 5);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(74, 1);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(75, 2);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(76, 5);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(77, 1);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(78, 1);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(79, 3);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(80, 3);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(81, 7);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(82, 3);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(83, 1);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(84, 2);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(85, 2);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(86, 3);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(87, 3);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(88, 3);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(89, 7);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(90, 5);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(91, 1);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(92, 6);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(93, 6);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(94, 4);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(95, 4);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(96, 1);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(97, 1);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(98, 1);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(99, 1);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(100, 3);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(101, 1);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(102, 1);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(103, 4);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(104, 5);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(105, 2);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(106, 7);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(107, 6);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(108, 1);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(109, 1);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(110, 5);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(111, 7);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(112, 5);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(113, 4);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(114, 2);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(115, 2);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(116, 4);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(117, 1);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(118, 5);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(119, 1);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(120, 7);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(121, 5);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(122, 2);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(123, 2);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(124, 7);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(125, 6);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(126, 2);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(127, 1);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(128, 7);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(129, 3);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(130, 2);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(131, 2);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(132, 2);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(133, 3);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(134, 7);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(135, 5);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(136, 1);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(137, 7);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(138, 5);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(139, 3);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(140, 4);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(141, 2);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(142, 6);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(143, 2);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(144, 7);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(145, 6);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(146, 1);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(147, 3);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(148, 7);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(149, 1);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(150, 3);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(151, 2);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(152, 2);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(153, 7);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(154, 7);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(155, 7);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(156, 1);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(157, 4);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(158, 4);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(159, 7);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(160, 3);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(161, 7);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(162, 3);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(163, 3);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(164, 7);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(165, 5);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(166, 1);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(167, 3);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(168, 1);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(169, 2);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(170, 5);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(171, 5);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(172, 2);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(173, 2);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(174, 3);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(175, 3);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(176, 3);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(177, 3);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(178, 7);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(179, 1);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(180, 2);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(181, 1);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(182, 2);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(183, 5);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(184, 2);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(185, 2);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(186, 1);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(187, 5);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(188, 1);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(189, 7);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(190, 4);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(191, 2);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(192, 1);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(193, 6);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(194, 4);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(195, 3);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(196, 2);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(197, 1);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(198, 1);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(199, 4);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(200, 7);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(201, 5);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(202, 2);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(203, 6);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(204, 6);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(205, 2);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(206, 7);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(207, 7);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(208, 3);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(209, 4);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(210, 5);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(211, 5);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(212, 3);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(213, 7);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(214, 2);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(215, 5);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(216, 1);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(217, 1);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(218, 1);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(219, 3);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(220, 5);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(221, 7);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(222, 3);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(223, 7);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(224, 1);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(225, 7);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(226, 4);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(227, 4);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(228, 2);
INSERT INTO `nuts_by_country_group` (`nuts_id`, `country_group_id`) VALUES
	(229, 2);
/*!40000 ALTER TABLE `nuts_by_country_group` ENABLE KEYS */;

-- Volcando estructura para tabla osha_dvt_ilo.profile
DROP TABLE IF EXISTS `profile`;
CREATE TABLE IF NOT EXISTS `profile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nuts_id` int(11) DEFAULT NULL,
  `country_group_id` int(11) DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `illness_id` int(11) DEFAULT NULL,
  `subindicator_id` int(11) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `profile_nuts_id` (`nuts_id`),
  KEY `profile_country_group_id` (`country_group_id`),
  KEY `profile_currency_id` (`currency_id`),
  KEY `profile_illness_id` (`illness_id`),
  KEY `profile_subindicator_id` (`subindicator_id`),
  CONSTRAINT `profile_country_group_id` FOREIGN KEY (`country_group_id`) REFERENCES `country_group` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `profile_currency_id` FOREIGN KEY (`currency_id`) REFERENCES `split_currency` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `profile_illness_id` FOREIGN KEY (`illness_id`) REFERENCES `split_illness` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `profile_nuts_id` FOREIGN KEY (`nuts_id`) REFERENCES `nuts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `profile_subindicator_id` FOREIGN KEY (`subindicator_id`) REFERENCES `split_subindicator` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=508 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla osha_dvt_ilo.profile: ~432 rows (aproximadamente)
/*!40000 ALTER TABLE `profile` DISABLE KEYS */;
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(1, 30, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(2, 49, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(3, 52, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(4, 62, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(5, 90, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(6, 112, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(7, 118, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(8, 165, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(9, 170, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(10, 187, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(11, 13, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(12, 20, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(13, 51, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(14, 53, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(15, 67, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(16, 68, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(17, 74, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(18, 77, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(19, 96, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(20, 99, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(21, 119, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(22, 127, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(23, 146, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(24, 166, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(25, 188, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(26, 192, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(27, 197, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(28, 217, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(29, 91, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(30, 156, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(31, 30, NULL, NULL, 2, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(32, 49, NULL, NULL, 2, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(33, 52, NULL, NULL, 2, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(34, 62, NULL, NULL, 2, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(35, 90, NULL, NULL, 2, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(36, 112, NULL, NULL, 2, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(37, 118, NULL, NULL, 2, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(38, 165, NULL, NULL, 2, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(39, 170, NULL, NULL, 2, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(40, 187, NULL, NULL, 2, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(41, 13, NULL, NULL, 2, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(42, 20, NULL, NULL, 2, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(43, 51, NULL, NULL, 2, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(44, 53, NULL, NULL, 2, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(45, 67, NULL, NULL, 2, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(46, 68, NULL, NULL, 2, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(47, 74, NULL, NULL, 2, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(48, 77, NULL, NULL, 2, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(49, 96, NULL, NULL, 2, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(50, 99, NULL, NULL, 2, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(51, 119, NULL, NULL, 2, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(52, 127, NULL, NULL, 2, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(53, 146, NULL, NULL, 2, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(54, 166, NULL, NULL, 2, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(55, 188, NULL, NULL, 2, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(56, 192, NULL, NULL, 2, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(57, 197, NULL, NULL, 2, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(58, 217, NULL, NULL, 2, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(59, 91, NULL, NULL, 2, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(60, 156, NULL, NULL, 2, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(61, 30, NULL, NULL, 4, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(62, 49, NULL, NULL, 4, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(63, 52, NULL, NULL, 4, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(64, 62, NULL, NULL, 4, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(65, 90, NULL, NULL, 4, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(66, 112, NULL, NULL, 4, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(67, 118, NULL, NULL, 4, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(68, 165, NULL, NULL, 4, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(69, 170, NULL, NULL, 4, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(70, 187, NULL, NULL, 4, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(71, 13, NULL, NULL, 4, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(72, 20, NULL, NULL, 4, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(73, 51, NULL, NULL, 4, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(74, 53, NULL, NULL, 4, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(75, 67, NULL, NULL, 4, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(76, 68, NULL, NULL, 4, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(77, 74, NULL, NULL, 4, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(78, 77, NULL, NULL, 4, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(79, 96, NULL, NULL, 4, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(80, 99, NULL, NULL, 4, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(81, 119, NULL, NULL, 4, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(82, 127, NULL, NULL, 4, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(83, 146, NULL, NULL, 4, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(84, 166, NULL, NULL, 4, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(85, 188, NULL, NULL, 4, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(86, 192, NULL, NULL, 4, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(87, 197, NULL, NULL, 4, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(88, 217, NULL, NULL, 4, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(89, 91, NULL, NULL, 4, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(90, 156, NULL, NULL, 4, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(91, 30, NULL, NULL, 3, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(92, 49, NULL, NULL, 3, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(93, 52, NULL, NULL, 3, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(94, 62, NULL, NULL, 3, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(95, 90, NULL, NULL, 3, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(96, 112, NULL, NULL, 3, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(97, 118, NULL, NULL, 3, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(98, 165, NULL, NULL, 3, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(99, 170, NULL, NULL, 3, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(100, 187, NULL, NULL, 3, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(101, 13, NULL, NULL, 3, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(102, 20, NULL, NULL, 3, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(103, 51, NULL, NULL, 3, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(104, 53, NULL, NULL, 3, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(105, 67, NULL, NULL, 3, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(106, 68, NULL, NULL, 3, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(107, 74, NULL, NULL, 3, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(108, 77, NULL, NULL, 3, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(109, 96, NULL, NULL, 3, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(110, 99, NULL, NULL, 3, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(111, 119, NULL, NULL, 3, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(112, 127, NULL, NULL, 3, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(113, 146, NULL, NULL, 3, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(114, 166, NULL, NULL, 3, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(115, 188, NULL, NULL, 3, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(116, 192, NULL, NULL, 3, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(117, 197, NULL, NULL, 3, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(118, 217, NULL, NULL, 3, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(119, 91, NULL, NULL, 3, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(120, 156, NULL, NULL, 3, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(121, 30, NULL, NULL, 5, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(122, 49, NULL, NULL, 5, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(123, 52, NULL, NULL, 5, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(124, 62, NULL, NULL, 5, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(125, 90, NULL, NULL, 5, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(126, 112, NULL, NULL, 5, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(127, 118, NULL, NULL, 5, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(128, 165, NULL, NULL, 5, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(129, 170, NULL, NULL, 5, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(130, 187, NULL, NULL, 5, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(131, 13, NULL, NULL, 5, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(132, 20, NULL, NULL, 5, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(133, 51, NULL, NULL, 5, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(134, 53, NULL, NULL, 5, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(135, 67, NULL, NULL, 5, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(136, 68, NULL, NULL, 5, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(137, 74, NULL, NULL, 5, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(138, 77, NULL, NULL, 5, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(139, 96, NULL, NULL, 5, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(140, 99, NULL, NULL, 5, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(141, 119, NULL, NULL, 5, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(142, 127, NULL, NULL, 5, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(143, 146, NULL, NULL, 5, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(144, 166, NULL, NULL, 5, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(145, 188, NULL, NULL, 5, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(146, 192, NULL, NULL, 5, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(147, 197, NULL, NULL, 5, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(148, 217, NULL, NULL, 5, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(149, 91, NULL, NULL, 5, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(150, 156, NULL, NULL, 5, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(151, 30, NULL, NULL, 6, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(152, 49, NULL, NULL, 6, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(153, 52, NULL, NULL, 6, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(154, 62, NULL, NULL, 6, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(155, 90, NULL, NULL, 6, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(156, 112, NULL, NULL, 6, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(157, 118, NULL, NULL, 6, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(158, 165, NULL, NULL, 6, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(159, 170, NULL, NULL, 6, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(160, 187, NULL, NULL, 6, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(161, 13, NULL, NULL, 6, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(162, 20, NULL, NULL, 6, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(163, 51, NULL, NULL, 6, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(164, 53, NULL, NULL, 6, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(165, 67, NULL, NULL, 6, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(166, 68, NULL, NULL, 6, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(167, 74, NULL, NULL, 6, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(168, 77, NULL, NULL, 6, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(169, 96, NULL, NULL, 6, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(170, 99, NULL, NULL, 6, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(171, 119, NULL, NULL, 6, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(172, 127, NULL, NULL, 6, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(173, 146, NULL, NULL, 6, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(174, 166, NULL, NULL, 6, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(175, 188, NULL, NULL, 6, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(176, 192, NULL, NULL, 6, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(177, 197, NULL, NULL, 6, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(178, 217, NULL, NULL, 6, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(179, 91, NULL, NULL, 6, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(180, 156, NULL, NULL, 6, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(181, 30, NULL, NULL, 1, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(182, 49, NULL, NULL, 1, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(183, 52, NULL, NULL, 1, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(184, 62, NULL, NULL, 1, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(185, 90, NULL, NULL, 1, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(186, 112, NULL, NULL, 1, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(187, 118, NULL, NULL, 1, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(188, 165, NULL, NULL, 1, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(189, 170, NULL, NULL, 1, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(190, 187, NULL, NULL, 1, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(191, 13, NULL, NULL, 1, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(192, 20, NULL, NULL, 1, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(193, 51, NULL, NULL, 1, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(194, 53, NULL, NULL, 1, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(195, 67, NULL, NULL, 1, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(196, 68, NULL, NULL, 1, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(197, 74, NULL, NULL, 1, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(198, 77, NULL, NULL, 1, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(199, 96, NULL, NULL, 1, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(200, 99, NULL, NULL, 1, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(201, 119, NULL, NULL, 1, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(202, 127, NULL, NULL, 1, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(203, 146, NULL, NULL, 1, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(204, 166, NULL, NULL, 1, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(205, 188, NULL, NULL, 1, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(206, 192, NULL, NULL, 1, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(207, 197, NULL, NULL, 1, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(208, 217, NULL, NULL, 1, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(209, 91, NULL, NULL, 1, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(210, 156, NULL, NULL, 1, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(211, 30, NULL, NULL, 2, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(212, 49, NULL, NULL, 2, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(213, 52, NULL, NULL, 2, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(214, 62, NULL, NULL, 2, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(215, 90, NULL, NULL, 2, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(216, 112, NULL, NULL, 2, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(217, 118, NULL, NULL, 2, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(218, 165, NULL, NULL, 2, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(219, 170, NULL, NULL, 2, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(220, 187, NULL, NULL, 2, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(221, 13, NULL, NULL, 2, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(222, 20, NULL, NULL, 2, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(223, 51, NULL, NULL, 2, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(224, 53, NULL, NULL, 2, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(225, 67, NULL, NULL, 2, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(226, 68, NULL, NULL, 2, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(227, 74, NULL, NULL, 2, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(228, 77, NULL, NULL, 2, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(229, 96, NULL, NULL, 2, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(230, 99, NULL, NULL, 2, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(231, 119, NULL, NULL, 2, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(232, 127, NULL, NULL, 2, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(233, 146, NULL, NULL, 2, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(234, 166, NULL, NULL, 2, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(235, 188, NULL, NULL, 2, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(236, 192, NULL, NULL, 2, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(237, 197, NULL, NULL, 2, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(238, 217, NULL, NULL, 2, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(239, 91, NULL, NULL, 2, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(240, 156, NULL, NULL, 2, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(241, 30, NULL, NULL, 4, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(242, 49, NULL, NULL, 4, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(243, 52, NULL, NULL, 4, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(244, 62, NULL, NULL, 4, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(245, 90, NULL, NULL, 4, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(246, 112, NULL, NULL, 4, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(247, 118, NULL, NULL, 4, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(248, 165, NULL, NULL, 4, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(249, 170, NULL, NULL, 4, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(250, 187, NULL, NULL, 4, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(251, 13, NULL, NULL, 4, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(252, 20, NULL, NULL, 4, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(253, 51, NULL, NULL, 4, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(254, 53, NULL, NULL, 4, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(255, 67, NULL, NULL, 4, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(256, 68, NULL, NULL, 4, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(257, 74, NULL, NULL, 4, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(258, 77, NULL, NULL, 4, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(259, 96, NULL, NULL, 4, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(260, 99, NULL, NULL, 4, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(261, 119, NULL, NULL, 4, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(262, 127, NULL, NULL, 4, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(263, 146, NULL, NULL, 4, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(264, 166, NULL, NULL, 4, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(265, 188, NULL, NULL, 4, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(266, 192, NULL, NULL, 4, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(267, 197, NULL, NULL, 4, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(268, 217, NULL, NULL, 4, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(269, 91, NULL, NULL, 4, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(270, 156, NULL, NULL, 4, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(271, 30, NULL, NULL, 3, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(272, 49, NULL, NULL, 3, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(273, 52, NULL, NULL, 3, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(274, 62, NULL, NULL, 3, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(275, 90, NULL, NULL, 3, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(276, 112, NULL, NULL, 3, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(277, 118, NULL, NULL, 3, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(278, 165, NULL, NULL, 3, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(279, 170, NULL, NULL, 3, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(280, 187, NULL, NULL, 3, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(281, 13, NULL, NULL, 3, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(282, 20, NULL, NULL, 3, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(283, 51, NULL, NULL, 3, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(284, 53, NULL, NULL, 3, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(285, 67, NULL, NULL, 3, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(286, 68, NULL, NULL, 3, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(287, 74, NULL, NULL, 3, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(288, 77, NULL, NULL, 3, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(289, 96, NULL, NULL, 3, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(290, 99, NULL, NULL, 3, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(291, 119, NULL, NULL, 3, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(292, 127, NULL, NULL, 3, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(293, 146, NULL, NULL, 3, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(294, 166, NULL, NULL, 3, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(295, 188, NULL, NULL, 3, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(296, 192, NULL, NULL, 3, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(297, 197, NULL, NULL, 3, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(298, 217, NULL, NULL, 3, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(299, 91, NULL, NULL, 3, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(300, 156, NULL, NULL, 3, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(301, 30, NULL, NULL, 5, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(302, 49, NULL, NULL, 5, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(303, 52, NULL, NULL, 5, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(304, 62, NULL, NULL, 5, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(305, 90, NULL, NULL, 5, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(306, 112, NULL, NULL, 5, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(307, 118, NULL, NULL, 5, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(308, 165, NULL, NULL, 5, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(309, 170, NULL, NULL, 5, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(310, 187, NULL, NULL, 5, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(311, 13, NULL, NULL, 5, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(312, 20, NULL, NULL, 5, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(313, 51, NULL, NULL, 5, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(314, 53, NULL, NULL, 5, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(315, 67, NULL, NULL, 5, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(316, 68, NULL, NULL, 5, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(317, 74, NULL, NULL, 5, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(318, 77, NULL, NULL, 5, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(319, 96, NULL, NULL, 5, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(320, 99, NULL, NULL, 5, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(321, 119, NULL, NULL, 5, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(322, 127, NULL, NULL, 5, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(323, 146, NULL, NULL, 5, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(324, 166, NULL, NULL, 5, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(325, 188, NULL, NULL, 5, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(326, 192, NULL, NULL, 5, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(327, 197, NULL, NULL, 5, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(328, 217, NULL, NULL, 5, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(329, 91, NULL, NULL, 5, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(330, 156, NULL, NULL, 5, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(331, 30, NULL, NULL, 6, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(332, 49, NULL, NULL, 6, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(333, 52, NULL, NULL, 6, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(334, 62, NULL, NULL, 6, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(335, 90, NULL, NULL, 6, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(336, 112, NULL, NULL, 6, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(337, 118, NULL, NULL, 6, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(338, 165, NULL, NULL, 6, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(339, 170, NULL, NULL, 6, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(340, 187, NULL, NULL, 6, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(341, 13, NULL, NULL, 6, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(342, 20, NULL, NULL, 6, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(343, 51, NULL, NULL, 6, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(344, 53, NULL, NULL, 6, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(345, 67, NULL, NULL, 6, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(346, 68, NULL, NULL, 6, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(347, 74, NULL, NULL, 6, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(348, 77, NULL, NULL, 6, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(349, 96, NULL, NULL, 6, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(350, 99, NULL, NULL, 6, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(351, 119, NULL, NULL, 6, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(352, 127, NULL, NULL, 6, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(353, 146, NULL, NULL, 6, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(354, 166, NULL, NULL, 6, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(355, 188, NULL, NULL, 6, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(356, 192, NULL, NULL, 6, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(357, 197, NULL, NULL, 6, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(358, 217, NULL, NULL, 6, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(359, 91, NULL, NULL, 6, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(360, 156, NULL, NULL, 6, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(361, NULL, 8, 2, NULL, 1, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(362, NULL, 8, 2, NULL, 2, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(363, NULL, 8, 1, NULL, 1, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(364, NULL, 8, 1, NULL, 2, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(365, NULL, 9, 2, NULL, 1, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(366, NULL, 9, 2, NULL, 2, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(367, NULL, 9, 1, NULL, 1, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(368, NULL, 9, 1, NULL, 2, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(369, NULL, 8, NULL, NULL, 3, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(370, NULL, 8, NULL, NULL, 4, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(371, NULL, 9, NULL, NULL, 3, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(372, NULL, 9, NULL, NULL, 4, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(373, NULL, 8, NULL, NULL, 5, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(374, NULL, 8, NULL, NULL, 6, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(375, NULL, 8, NULL, NULL, 7, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(376, NULL, 9, NULL, NULL, 5, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(377, NULL, 9, NULL, NULL, 6, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(378, NULL, 9, NULL, NULL, 7, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(379, NULL, 8, NULL, 2, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(380, NULL, 8, NULL, 3, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(381, NULL, 8, NULL, 5, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(382, NULL, 8, NULL, 6, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(383, NULL, 9, NULL, 2, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(384, NULL, 9, NULL, 3, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(385, NULL, 9, NULL, 5, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(386, NULL, 9, NULL, 6, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(387, NULL, 8, NULL, 4, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(388, NULL, 9, NULL, 4, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(389, NULL, 1, NULL, NULL, 3, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(390, NULL, 2, NULL, NULL, 3, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(391, NULL, 3, NULL, NULL, 3, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(392, NULL, 4, NULL, NULL, 3, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(393, NULL, 5, NULL, NULL, 3, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(394, NULL, 6, NULL, NULL, 3, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(395, NULL, 7, NULL, NULL, 3, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(396, NULL, 1, NULL, NULL, 4, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(397, NULL, 2, NULL, NULL, 4, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(398, NULL, 3, NULL, NULL, 4, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(399, NULL, 4, NULL, NULL, 4, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(400, NULL, 5, NULL, NULL, 4, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(401, NULL, 6, NULL, NULL, 4, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(402, NULL, 7, NULL, NULL, 4, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(403, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(404, NULL, 2, NULL, NULL, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(405, NULL, 3, NULL, NULL, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(406, NULL, 4, NULL, NULL, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(407, NULL, 5, NULL, NULL, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(408, NULL, 6, NULL, NULL, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(409, NULL, 7, NULL, NULL, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(410, NULL, 9, NULL, NULL, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(411, NULL, 1, NULL, NULL, 8, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(412, NULL, 2, NULL, NULL, 8, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(413, NULL, 3, NULL, NULL, 8, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(414, NULL, 4, NULL, NULL, 8, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(415, NULL, 5, NULL, NULL, 8, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(416, NULL, 6, NULL, NULL, 8, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(417, NULL, 7, NULL, NULL, 8, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(418, NULL, 9, NULL, NULL, 8, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(419, NULL, 1, NULL, NULL, 9, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(420, NULL, 2, NULL, NULL, 9, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(421, NULL, 3, NULL, NULL, 9, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(422, NULL, 4, NULL, NULL, 9, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(423, NULL, 5, NULL, NULL, 9, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(424, NULL, 6, NULL, NULL, 9, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(425, NULL, 7, NULL, NULL, 9, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(426, NULL, 9, NULL, NULL, 9, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(427, NULL, 9, NULL, 1, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(428, NULL, 9, NULL, 2, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(429, NULL, 9, NULL, 4, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(430, NULL, 9, NULL, 3, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(431, NULL, 9, NULL, 5, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(432, NULL, 9, NULL, 6, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(433, NULL, 1, NULL, 2, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(434, NULL, 2, NULL, 2, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(435, NULL, 3, NULL, 2, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(436, NULL, 4, NULL, 2, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(437, NULL, 5, NULL, 2, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(438, NULL, 6, NULL, 2, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(439, NULL, 7, NULL, 2, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(440, NULL, 1, NULL, 4, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(441, NULL, 2, NULL, 4, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(442, NULL, 3, NULL, 4, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(443, NULL, 4, NULL, 4, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(444, NULL, 5, NULL, 4, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(445, NULL, 6, NULL, 4, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(446, NULL, 7, NULL, 4, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(447, NULL, 1, NULL, 3, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(448, NULL, 2, NULL, 3, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(449, NULL, 3, NULL, 3, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(450, NULL, 4, NULL, 3, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(451, NULL, 5, NULL, 3, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(452, NULL, 6, NULL, 3, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(453, NULL, 7, NULL, 3, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(454, NULL, 1, NULL, 5, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(455, NULL, 2, NULL, 5, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(456, NULL, 3, NULL, 5, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(457, NULL, 4, NULL, 5, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(458, NULL, 5, NULL, 5, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(459, NULL, 6, NULL, 5, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(460, NULL, 7, NULL, 5, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(461, NULL, 1, NULL, 6, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(462, NULL, 2, NULL, 6, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(463, NULL, 3, NULL, 6, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(464, NULL, 4, NULL, 6, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(465, NULL, 5, NULL, 6, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(466, NULL, 6, NULL, 6, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(467, NULL, 7, NULL, 6, NULL, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(468, NULL, 8, NULL, 2, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(469, NULL, 1, NULL, 2, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(470, NULL, 2, NULL, 2, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(471, NULL, 3, NULL, 2, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(472, NULL, 4, NULL, 2, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(473, NULL, 5, NULL, 2, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(474, NULL, 6, NULL, 2, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(475, NULL, 7, NULL, 2, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(476, NULL, 8, NULL, 4, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(477, NULL, 1, NULL, 4, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(478, NULL, 2, NULL, 4, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(479, NULL, 3, NULL, 4, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(480, NULL, 4, NULL, 4, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(481, NULL, 5, NULL, 4, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(482, NULL, 6, NULL, 4, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(483, NULL, 7, NULL, 4, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(484, NULL, 8, NULL, 3, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(485, NULL, 1, NULL, 3, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(486, NULL, 2, NULL, 3, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(487, NULL, 3, NULL, 3, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(488, NULL, 4, NULL, 3, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(489, NULL, 5, NULL, 3, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(490, NULL, 6, NULL, 3, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(491, NULL, 7, NULL, 3, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(492, NULL, 8, NULL, 5, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(493, NULL, 1, NULL, 5, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(494, NULL, 2, NULL, 5, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(495, NULL, 3, NULL, 5, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(496, NULL, 4, NULL, 5, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(497, NULL, 5, NULL, 5, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(498, NULL, 6, NULL, 5, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(499, NULL, 7, NULL, 5, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(500, NULL, 8, NULL, 6, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(501, NULL, 1, NULL, 6, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(502, NULL, 2, NULL, 6, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(503, NULL, 3, NULL, 6, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(504, NULL, 4, NULL, 6, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(505, NULL, 5, NULL, 6, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(506, NULL, 6, NULL, 6, 11, NULL);
INSERT INTO `profile` (`id`, `nuts_id`, `country_group_id`, `currency_id`, `illness_id`, `subindicator_id`, `year`) VALUES
	(507, NULL, 7, NULL, 6, 11, NULL);
/*!40000 ALTER TABLE `profile` ENABLE KEYS */;

-- Volcando estructura para tabla osha_dvt_ilo.section
DROP TABLE IF EXISTS `section`;
CREATE TABLE IF NOT EXISTS `section` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tool_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Tool_ID` (`tool_id`),
  CONSTRAINT `Tool_ID` FOREIGN KEY (`tool_id`) REFERENCES `tool` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla osha_dvt_ilo.section: ~15 rows (aproximadamente)
/*!40000 ALTER TABLE `section` DISABLE KEYS */;
INSERT INTO `section` (`id`, `tool_id`, `name`) VALUES
	(1, 1, 'HOMEPAGE');
INSERT INTO `section` (`id`, `tool_id`, `name`) VALUES
	(2, 1, 'WHO_REGIONS');
INSERT INTO `section` (`id`, `tool_id`, `name`) VALUES
	(3, 1, 'EU_ILLNESSES');
INSERT INTO `section` (`id`, `tool_id`, `name`) VALUES
	(4, 1, 'WHO_ILLNESSES');
INSERT INTO `section` (`id`, `tool_id`, `name`) VALUES
	(5, 1, 'MENU');
INSERT INTO `section` (`id`, `tool_id`, `name`) VALUES
	(6, 1, 'FOOTER');
INSERT INTO `section` (`id`, `tool_id`, `name`) VALUES
	(7, 1, 'EU_DALY_COMPARISON');
INSERT INTO `section` (`id`, `tool_id`, `name`) VALUES
	(8, 1, 'GLOSSARY');
INSERT INTO `section` (`id`, `tool_id`, `name`) VALUES
	(9, 1, 'GENERAL');
INSERT INTO `section` (`id`, `tool_id`, `name`) VALUES
	(10, 1, 'ABOUT_THE_ESTIMATES');
INSERT INTO `section` (`id`, `tool_id`, `name`) VALUES
	(11, 1, '');
INSERT INTO `section` (`id`, `tool_id`, `name`) VALUES
	(12, 1, 'HEADER');
INSERT INTO `section` (`id`, `tool_id`, `name`) VALUES
	(13, 1, 'Accessibility');
INSERT INTO `section` (`id`, `tool_id`, `name`) VALUES
	(14, 1, 'Privacy_Notice');
INSERT INTO `section` (`id`, `tool_id`, `name`) VALUES
	(15, 1, 'Legal_Notice');
/*!40000 ALTER TABLE `section` ENABLE KEYS */;

-- Volcando estructura para tabla osha_dvt_ilo.split_currency
DROP TABLE IF EXISTS `split_currency`;
CREATE TABLE IF NOT EXISTS `split_currency` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `literal_id` int(11) NOT NULL,
  `symbol` char(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `currency_literal_id` (`literal_id`),
  CONSTRAINT `currency_literal_id` FOREIGN KEY (`literal_id`) REFERENCES `literal` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla osha_dvt_ilo.split_currency: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `split_currency` DISABLE KEYS */;
INSERT INTO `split_currency` (`id`, `literal_id`, `symbol`) VALUES
	(1, 265, '$');
INSERT INTO `split_currency` (`id`, `literal_id`, `symbol`) VALUES
	(2, 266, '€');
/*!40000 ALTER TABLE `split_currency` ENABLE KEYS */;

-- Volcando estructura para tabla osha_dvt_ilo.split_illness
DROP TABLE IF EXISTS `split_illness`;
CREATE TABLE IF NOT EXISTS `split_illness` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `literal_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `illness_literal_id` (`literal_id`),
  CONSTRAINT `illness_literal_id` FOREIGN KEY (`literal_id`) REFERENCES `literal` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla osha_dvt_ilo.split_illness: ~6 rows (aproximadamente)
/*!40000 ALTER TABLE `split_illness` DISABLE KEYS */;
INSERT INTO `split_illness` (`id`, `literal_id`) VALUES
	(1, 267);
INSERT INTO `split_illness` (`id`, `literal_id`) VALUES
	(2, 268);
INSERT INTO `split_illness` (`id`, `literal_id`) VALUES
	(3, 269);
INSERT INTO `split_illness` (`id`, `literal_id`) VALUES
	(4, 270);
INSERT INTO `split_illness` (`id`, `literal_id`) VALUES
	(5, 271);
INSERT INTO `split_illness` (`id`, `literal_id`) VALUES
	(6, 272);
/*!40000 ALTER TABLE `split_illness` ENABLE KEYS */;

-- Volcando estructura para tabla osha_dvt_ilo.split_subindicator
DROP TABLE IF EXISTS `split_subindicator`;
CREATE TABLE IF NOT EXISTS `split_subindicator` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `literal_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `subindicator_literal_id` (`literal_id`),
  CONSTRAINT `subindicator_literal_id` FOREIGN KEY (`literal_id`) REFERENCES `literal` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla osha_dvt_ilo.split_subindicator: ~11 rows (aproximadamente)
/*!40000 ALTER TABLE `split_subindicator` DISABLE KEYS */;
INSERT INTO `split_subindicator` (`id`, `literal_id`) VALUES
	(1, 273);
INSERT INTO `split_subindicator` (`id`, `literal_id`) VALUES
	(2, 274);
INSERT INTO `split_subindicator` (`id`, `literal_id`) VALUES
	(3, 275);
INSERT INTO `split_subindicator` (`id`, `literal_id`) VALUES
	(4, 276);
INSERT INTO `split_subindicator` (`id`, `literal_id`) VALUES
	(5, 277);
INSERT INTO `split_subindicator` (`id`, `literal_id`) VALUES
	(6, 278);
INSERT INTO `split_subindicator` (`id`, `literal_id`) VALUES
	(7, 279);
INSERT INTO `split_subindicator` (`id`, `literal_id`) VALUES
	(8, 280);
INSERT INTO `split_subindicator` (`id`, `literal_id`) VALUES
	(9, 281);
INSERT INTO `split_subindicator` (`id`, `literal_id`) VALUES
	(10, 282);
INSERT INTO `split_subindicator` (`id`, `literal_id`) VALUES
	(11, 283);
/*!40000 ALTER TABLE `split_subindicator` ENABLE KEYS */;

-- Volcando estructura para tabla osha_dvt_ilo.term_synonym
DROP TABLE IF EXISTS `term_synonym`;
CREATE TABLE IF NOT EXISTS `term_synonym` (
  `term_literal_id` int(11) NOT NULL,
  `synonym_literal_id` int(11) NOT NULL,
  PRIMARY KEY (`term_literal_id`,`synonym_literal_id`),
  KEY `term_synonym_synonym_id` (`synonym_literal_id`),
  CONSTRAINT `term_synonym_synonym_id` FOREIGN KEY (`synonym_literal_id`) REFERENCES `literal` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `term_synonym_term_id` FOREIGN KEY (`term_literal_id`) REFERENCES `literal` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla osha_dvt_ilo.term_synonym: ~48 rows (aproximadamente)
/*!40000 ALTER TABLE `term_synonym` DISABLE KEYS */;
INSERT INTO `term_synonym` (`term_literal_id`, `synonym_literal_id`) VALUES
	(10256, 10258);
INSERT INTO `term_synonym` (`term_literal_id`, `synonym_literal_id`) VALUES
	(10256, 10259);
INSERT INTO `term_synonym` (`term_literal_id`, `synonym_literal_id`) VALUES
	(10256, 10260);
INSERT INTO `term_synonym` (`term_literal_id`, `synonym_literal_id`) VALUES
	(10261, 10263);
INSERT INTO `term_synonym` (`term_literal_id`, `synonym_literal_id`) VALUES
	(10261, 10264);
INSERT INTO `term_synonym` (`term_literal_id`, `synonym_literal_id`) VALUES
	(10261, 10265);
INSERT INTO `term_synonym` (`term_literal_id`, `synonym_literal_id`) VALUES
	(10266, 10268);
INSERT INTO `term_synonym` (`term_literal_id`, `synonym_literal_id`) VALUES
	(10266, 10269);
INSERT INTO `term_synonym` (`term_literal_id`, `synonym_literal_id`) VALUES
	(10266, 10270);
INSERT INTO `term_synonym` (`term_literal_id`, `synonym_literal_id`) VALUES
	(10271, 10273);
INSERT INTO `term_synonym` (`term_literal_id`, `synonym_literal_id`) VALUES
	(10271, 10274);
INSERT INTO `term_synonym` (`term_literal_id`, `synonym_literal_id`) VALUES
	(10271, 10275);
INSERT INTO `term_synonym` (`term_literal_id`, `synonym_literal_id`) VALUES
	(10276, 10278);
INSERT INTO `term_synonym` (`term_literal_id`, `synonym_literal_id`) VALUES
	(10276, 10279);
INSERT INTO `term_synonym` (`term_literal_id`, `synonym_literal_id`) VALUES
	(10276, 10280);
INSERT INTO `term_synonym` (`term_literal_id`, `synonym_literal_id`) VALUES
	(10281, 10283);
INSERT INTO `term_synonym` (`term_literal_id`, `synonym_literal_id`) VALUES
	(10281, 10284);
INSERT INTO `term_synonym` (`term_literal_id`, `synonym_literal_id`) VALUES
	(10281, 10285);
INSERT INTO `term_synonym` (`term_literal_id`, `synonym_literal_id`) VALUES
	(10286, 10288);
INSERT INTO `term_synonym` (`term_literal_id`, `synonym_literal_id`) VALUES
	(10286, 10289);
INSERT INTO `term_synonym` (`term_literal_id`, `synonym_literal_id`) VALUES
	(10286, 10290);
INSERT INTO `term_synonym` (`term_literal_id`, `synonym_literal_id`) VALUES
	(10291, 10293);
INSERT INTO `term_synonym` (`term_literal_id`, `synonym_literal_id`) VALUES
	(10291, 10294);
INSERT INTO `term_synonym` (`term_literal_id`, `synonym_literal_id`) VALUES
	(10291, 10295);
INSERT INTO `term_synonym` (`term_literal_id`, `synonym_literal_id`) VALUES
	(10296, 10298);
INSERT INTO `term_synonym` (`term_literal_id`, `synonym_literal_id`) VALUES
	(10296, 10299);
INSERT INTO `term_synonym` (`term_literal_id`, `synonym_literal_id`) VALUES
	(10296, 10300);
INSERT INTO `term_synonym` (`term_literal_id`, `synonym_literal_id`) VALUES
	(10301, 10303);
INSERT INTO `term_synonym` (`term_literal_id`, `synonym_literal_id`) VALUES
	(10301, 10304);
INSERT INTO `term_synonym` (`term_literal_id`, `synonym_literal_id`) VALUES
	(10301, 10305);
INSERT INTO `term_synonym` (`term_literal_id`, `synonym_literal_id`) VALUES
	(10306, 10308);
INSERT INTO `term_synonym` (`term_literal_id`, `synonym_literal_id`) VALUES
	(10306, 10309);
INSERT INTO `term_synonym` (`term_literal_id`, `synonym_literal_id`) VALUES
	(10306, 10310);
INSERT INTO `term_synonym` (`term_literal_id`, `synonym_literal_id`) VALUES
	(10311, 10313);
INSERT INTO `term_synonym` (`term_literal_id`, `synonym_literal_id`) VALUES
	(10311, 10314);
INSERT INTO `term_synonym` (`term_literal_id`, `synonym_literal_id`) VALUES
	(10311, 10315);
INSERT INTO `term_synonym` (`term_literal_id`, `synonym_literal_id`) VALUES
	(10316, 10318);
INSERT INTO `term_synonym` (`term_literal_id`, `synonym_literal_id`) VALUES
	(10316, 10319);
INSERT INTO `term_synonym` (`term_literal_id`, `synonym_literal_id`) VALUES
	(10316, 10320);
INSERT INTO `term_synonym` (`term_literal_id`, `synonym_literal_id`) VALUES
	(10321, 10323);
INSERT INTO `term_synonym` (`term_literal_id`, `synonym_literal_id`) VALUES
	(10321, 10324);
INSERT INTO `term_synonym` (`term_literal_id`, `synonym_literal_id`) VALUES
	(10321, 10325);
INSERT INTO `term_synonym` (`term_literal_id`, `synonym_literal_id`) VALUES
	(10326, 10328);
INSERT INTO `term_synonym` (`term_literal_id`, `synonym_literal_id`) VALUES
	(10326, 10329);
INSERT INTO `term_synonym` (`term_literal_id`, `synonym_literal_id`) VALUES
	(10326, 10330);
INSERT INTO `term_synonym` (`term_literal_id`, `synonym_literal_id`) VALUES
	(10331, 10333);
INSERT INTO `term_synonym` (`term_literal_id`, `synonym_literal_id`) VALUES
	(10331, 10334);
INSERT INTO `term_synonym` (`term_literal_id`, `synonym_literal_id`) VALUES
	(10331, 10335);
/*!40000 ALTER TABLE `term_synonym` ENABLE KEYS */;

-- Volcando estructura para tabla osha_dvt_ilo.tool
DROP TABLE IF EXISTS `tool`;
CREATE TABLE IF NOT EXISTS `tool` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla osha_dvt_ilo.tool: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `tool` DISABLE KEYS */;
INSERT INTO `tool` (`id`, `name`) VALUES
	(1, 'osha_dvt_ilo');
/*!40000 ALTER TABLE `tool` ENABLE KEYS */;

-- Volcando estructura para tabla osha_dvt_ilo.translation
DROP TABLE IF EXISTS `translation`;
CREATE TABLE IF NOT EXISTS `translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `literal_id` int(11) NOT NULL DEFAULT '0',
  `language` varchar(2) NOT NULL DEFAULT 'EN',
  `is_default` tinyint(4) NOT NULL DEFAULT '0',
  `text` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `translation_literal_id` (`literal_id`),
  CONSTRAINT `translation_literal_id` FOREIGN KEY (`literal_id`) REFERENCES `literal` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=577 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla osha_dvt_ilo.translation: ~576 rows (aproximadamente)
/*!40000 ALTER TABLE `translation` DISABLE KEYS */;
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(1, 1, 'EN', 1, 'Total cost of the work-related injuries and illnesses (billions of USD/€) Global');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(2, 2, 'EN', 1, 'Total cost of the work-related injuries and illnesses (billions of USD/€) EU28');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(3, 3, 'EN', 1, 'Mortality: Fatal cases resulting from work-related injuries and illnesses Global');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(4, 4, 'EN', 1, 'Mortality: Fatal cases resulting from work-related injuries and illnesses EU28');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(5, 5, 'EN', 1, 'DALY - Global (millions of years)');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(6, 6, 'EN', 1, 'DALY  EU28 (millions of years)');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(7, 7, 'EN', 1, 'Distribution of mortality by illness group (%) Global');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(8, 8, 'EN', 1, 'Distribution of mortality by illness group (%) EU28');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(9, 9, 'EN', 1, 'Distribution of DALY by illness group (%) Global');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(10, 10, 'EN', 1, 'Distribution of DALY by illness group (%) EU28');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(11, 11, 'EN', 1, 'Mortality-fatal cases per 100.000 workers in WHO regions');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(12, 12, 'EN', 1, 'YLL per 100.000 workers in WHO regions');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(13, 13, 'EN', 1, 'Comparison of Years of Life Lost (YLL) and Years Lived with Disability (YLD) in WHO regions');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(14, 14, 'EN', 1, 'DALY per 100.000 workers in WHO regions');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(15, 15, 'EN', 1, 'Contribution to GDP loss (%) in WHO regions');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(16, 16, 'EN', 1, 'YLL per 100.000 workers in EU28');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(17, 17, 'EN', 1, 'YLD per 100.000 workers in EU28');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(18, 18, 'EN', 1, 'Total GDP workyears lost (%) in EU28');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(19, 19, 'EN', 1, 'Injuries contribution to GDP workyears lost (%) in EU28');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(20, 20, 'EN', 1, 'Illnesses contribution to GDP workyears lost (%) in EU28');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(21, 21, 'EN', 1, 'Distribution of mortality by illness group (%) in WHO regions');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(22, 22, 'EN', 1, 'Distribution of DALY by illness group (%) in WHO regions');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(23, 23, 'EN', 1, 'DALY per 100.000 workers in EU28');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(24, 24, 'EN', 1, 'Ranking of DALY per 100.000 workers in the EU28');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(25, 25, 'EN', 1, 'YLL distribution by illnesses group in EU28');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(26, 26, 'EN', 1, 'DALY per 100.000 workers resulting from main work-related illnesses groups in WHO regions');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(27, 10001, 'EN', 1, 'Global estimates');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(28, 10002, 'EN', 1, 'EU estimates');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(29, 10004, 'EN', 1, 'Analysis by illness');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(30, 10005, 'EN', 1, 'Glossary');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(31, 10006, 'EN', 1, 'About the estimates');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(32, 10007, 'EN', 1, 'Site map');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(33, 10008, 'EN', 1, 'Privacy notice');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(34, 10009, 'EN', 1, 'Legal notice');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(35, 10010, 'EN', 1, 'Accessibility');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(36, 10011, 'EN', 1, 'Contact us');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(37, 10012, 'EN', 1, 'Global estimate');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(38, 10013, 'EN', 1, 'EU28 estimate');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(39, 10014, 'EN', 1, 'Cost to society of work-related injury and illness');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(40, 10015, 'EN', 1, 'Cost to society of work-related injury and illness');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(41, 10016, 'EN', 1, 'Work-related injuries and illnesses result in the loss of 3.9% of all work-years globally and 3.3% of those in the EU, equivalent to a cost of  approximately 2,966 billion and 528 billion, respectively.<br/>Source: ILO, 2017');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(42, 10017, 'EN', 1, 'Work-related injuries and illnesses result in the loss of 3.9% of all work-years globally and 3.3% of those in the EU, equivalent to a cost of  approximately 2,680 billion and 476 billion, respectively.<br/>Source: ILO, 2017');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(43, 10018, 'EN', 1, 'Mortality: deaths resulting from work-related injury and illness (number of fatalities)');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(44, 10019, 'EN', 1, 'Mortality: deaths resulting from work-related injury and illness (number of fatalities)');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(45, 10020, 'EN', 1, 'Work-related illnesses account for 86% of all deaths related to work globally and 98% in the EU.<br/>Sources: ILO, 2017 and Eurostat, 2014 (fatal injuries in EU).');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(46, 10021, 'EN', 1, 'DALY (disability-adjusted life years) lost due to work-related injury and illness (millions of years)');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(47, 10022, 'EN', 1, 'DALY (disability-adjusted life years) lost due to work-related injury and illness (millions of years)');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(48, 10023, 'EN', 1, 'In total, 123.3 million DALY are lost globally as a result of work-related injury and illness and 7,1 million in the EU. 67.8 million of these are years of life lost due to fatal injury or illness (3.4 million in the EU) and 55.5 million are lived with disability (3.7 million in the EU).<br/>Source: ILO, 2017');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(49, 10024, 'EN', 1, 'YLL');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(50, 10025, 'EN', 1, 'YLD');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(51, 10026, 'EN', 1, 'Percentage of all work-related deaths');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(52, 10027, 'EN', 1, 'Percentage of all work-related deaths');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(53, 10028, 'EN', 1, 'What are the main work-related illnesses and injuries resulting in death and in DALY?');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(54, 10029, 'EN', 1, '* Deaths due to MSDs are included in `Other´ illnesses');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(55, 10030, 'EN', 1, 'Percentage of all work-related DALY');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(56, 10031, 'EN', 1, 'Percentage of all work-related DALY');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(57, 10033, 'EN', 1, 'Circulatory illnesses are the biggest killer globally. Also, Circulatory illnesses have the highest DALY (Years of Life Lost or Years Lived with Disability). In the EU, Cancer is the biggest killer and also, it has the highest DALY (Years of Life Lost or Years Lived with Disability) in the EU.<br/>Source: ILO, 2017');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(58, 10037, 'EN', 1, 'WHO regions and EU28 average comparison');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(59, 10038, 'EN', 1, 'In HIGH and AMRO the cost of non-fatal work-related injury and illness is higher than the fatal ones. Consequently, the number of Years Lived with Disability (YLD) is higher than the Years of Life Lost (YLL).');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(60, 10040, 'EN', 1, 'Mortality');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(61, 10041, 'EN', 1, 'Years of life lost');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(62, 10042, 'EN', 1, 'Years of Life Lost vs Years Lived with Disability');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(63, 10043, 'EN', 1, 'Total cost');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(64, 10044, 'EN', 1, 'What <a href=\'javascript:\' data-toggle=\'modal\' data-target=\'#modalChart\' data-ng-click=\'modal("slide",$index)\'>region</a> is each country in?');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(65, 10046, 'EN', 1, 'See more about work-related illnesses groups in the WHO regions');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(66, 10047, 'EN', 1, 'Mortality: deaths per 100,000 workers');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(67, 10048, 'EN', 1, 'Mortality: deaths per 100,000 workers');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(68, 10049, 'EN', 1, 'The mortality rate (deaths resulting from work-related injury and illness per 100,000 workers) ranges from 57 cases in AMRO to 109 cases in EURO per 100,000 workers (93 in the EU28). 77%-98% are due to work-related illness.<br/>Sources: ILO, 2017 and Eurostat, 2014 (fatal injuries in EU)');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(69, 10050, 'EN', 1, 'Years of Life Lost (YLL) resulting from fatal cases per 100,000 workers');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(70, 10051, 'EN', 1, 'Years of Life Lost (YLL) resulting from fatal cases per 100,000 workers');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(71, 10052, 'EN', 1, 'The rate of Years of Life Lost (YLL per 100,000 workers) due to work-related injury and illness ranges from 1,264 years in AMRO to 2,775 years in SEARO per 100.000 workers (1,570 in the EU28).<br/>Source: ILO, 2017');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(72, 10053, 'EN', 1, 'Total years lost: Comparison of Years of Life Lost (YLL) and Years Lived with Disability (YLD)');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(73, 10054, 'EN', 1, 'Total years lost: Comparison of Years of Life Lost (YLL) and Years Lived with Disability (YLD)');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(74, 10055, 'EN', 1, 'In HIGH and AMRO, more years are lived with disability (YLD) than are lost due to early death (YLL). In the EU28, YLD accounts for 52% and YLL for 48%.<br/>Source: ILO, 2017');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(75, 10056, 'EN', 1, 'Cost to society in terms of DALY rate (years per 100,000 workers) and in terms of contribution to work-years lost expressed as percentage equivalent of total GDP (%)');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(76, 10057, 'EN', 1, 'Cost to society in terms of DALY rate (years per 100,000 workers) and in terms of contribution to work-years lost expressed as percentage equivalent of total GDP (%)');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(77, 10058, 'EN', 1, 'Disability Adjusted Life Years (DALY) is the sum of Years of Life Lost (YLL) due to work-related death and Years Lived with Disability (YLD) due to work-related injury and illness. DALY rate (years per 100.000 workers) varies from 3,273 years in HIGH to 4,397 years in SEARO (3,258 in the EU28). \r\nThe total cost can be expressed as DALY rate or contribution to work-years lost expressed as percentage equivalent of total GDP (%). In this sense, the workyears loss ranges from 3.27% in HIGH to 4.40% in SEARO (3.26% in the EU28).<br/>Source: ILO, 2017');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(78, 10068, 'EN', 1, 'See more about work-related illnesses groups in the EU countries');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(79, 10088, 'EN', 1, 'Analysis by causes in the EU');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(80, 10089, 'EN', 1, 'Find out more the comparison of the DALY by illness group');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(81, 10091, 'EN', 1, 'Main work-related illnesses and DALY (Years of life lost and lived with disability) per 100,000 workers');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(82, 10092, 'EN', 1, 'In the majority of the EU28 and Iceland and Norway, the main part of the cost is due to cancer, followed by musculoskeletal disorders (MSD). More information about the impact of each illness group by country will be analysed in this section.<br/>Source: EU-OSHA, 2017');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(83, 10093, 'EN', 1, 'DALY');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(84, 10094, 'EN', 1, 'DALY');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(85, 10095, 'EN', 1, 'Comparison of the DALY per illness group in the EU');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(86, 10096, 'EN', 1, 'All work-related illnesses and injuries');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(87, 10097, 'EN', 1, 'Cancer');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(88, 10098, 'EN', 1, 'MSD');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(89, 10099, 'EN', 1, 'Circulatory');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(90, 10100, 'EN', 1, 'Years of life lost and lived with disability (DALY) resulting from the main work-related illnesses groups');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(91, 10101, 'EN', 1, 'Years of life lost and lived with disability (DALY) resulting from the main work-related illnesses groups');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(92, 10102, 'EN', 1, 'Disability Adjusted Life Years (DALY) is the sum of Years of Life Lost (YLL) due to work-related death and Years Lived with Disability (YLD) due to work-related injury and illness. DALY rate (years per 100.000 workers) varies from 2,703 years in Malta to 3,655 years in Bulgaria (3,258 in the EU28).<br/>Source: EU-OSHA, 2017');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(93, 10103, 'EN', 1, 'Years of life lost and lived with disability (DALY) resulting from the main work-related illnesses groups');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(94, 10104, 'EN', 1, 'Years of life lost and lived with disability (DALY) resulting from the main work-related illnesses groups');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(95, 10105, 'EN', 1, 'Disability Adjusted Life Years (DALY) is the sum of Years of Life Lost (YLL) due to work-related death and Years Lived with Disability (YLD) due to work-related injury and illness. DALY rate (years per 100.000 workers) resulting from Cancer varies from 642 years in United Kingdom to 1,219 years in Romania (815 in the EU28).<br/>Source: EU-OSHA, 2017');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(96, 10106, 'EN', 1, 'Years of life lost and lived with disability (DALY) resulting from the main work-related illnesses groups');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(97, 10107, 'EN', 1, 'Years of life lost and lived with disability (DALY) resulting from the main work-related illnesses groups');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(98, 10108, 'EN', 1, 'Disability Adjusted Life Years (DALY) is the sum of Years of Life Lost (YLL) due to work-related death and Years Lived with Disability (YLD) due to work-related injury and illness. DALY rate (years per 100.000 workers) resulting from MSD varies from 369 years in Malta to 841 years in Portugal (478 in the EU28).<br/>Source: EU-OSHA, 2017');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(99, 10109, 'EN', 1, 'Years of life lost and lived with disability (DALY) resulting from the main work-related illnesses groups');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(100, 10110, 'EN', 1, 'Years of life lost and lived with disability (DALY) resulting from the main work-related illnesses groups');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(101, 10111, 'EN', 1, 'Disability Adjusted Life Years (DALY) is the sum of Years of Life Lost (YLL) due to work-related death and Years Lived with Disability (YLD) due to work-related injury and illness. DALY rate (years per 100.000 workers) resulting from Circulatory diseases varies from 325 years in Sweden to 689 years in Cyprus (400 in the EU28).<br/>Source: EU-OSHA, 2017');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(102, 10112, 'EN', 1, 'In this section some of the terms used in the descriptions presented in the tool are described.');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(103, 10113, 'EN', 1, 'Billion $');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(104, 10114, 'EN', 1, 'Billion €');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(105, 10115, 'EN', 1, 'Billion $');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(106, 10116, 'EN', 1, 'Billion €');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(107, 10117, 'EN', 1, 'Fatal cases');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(108, 10118, 'EN', 1, 'YLL');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(109, 10125, 'EN', 1, 'DALY per 100,000 workers');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(110, 10126, 'EN', 1, 'DALY per 100,000 workers');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(111, 10127, 'EN', 1, 'DALY per 100,000 workers');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(112, 10128, 'EN', 1, 'DALY per 100,000 workers');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(113, 10129, 'EN', 1, 'Cancer');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(114, 10130, 'EN', 1, 'MSD');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(115, 10131, 'EN', 1, 'Circulatory');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(116, 10132, 'EN', 1, 'Injuries');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(117, 10133, 'EN', 1, 'Others');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(118, 10134, 'EN', 1, 'Click on each value on the legend to hide/show in on the chart');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(119, 10135, 'EN', 1, 'OSH costs - Data Visualisation Tool - European Agency for Safety and Health at Work');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(120, 10136, 'EN', 1, 'Page not found');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(121, 10137, 'EN', 1, 'Analysis by illness');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(122, 10138, 'EN', 1, 'Analysis by causes in the WHO regions');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(123, 10139, 'EN', 1, 'Main work-related illnesses and DALY (Years of life lost and lived with disability) per 100,000 workers');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(124, 10140, 'EN', 1, 'In the majority of the WHO regions, the main part of the cost is due to circulatory illnesses, whereas in AFRO is due to musculoskeletal disorders (MSD) and in the HIGH income countries is due to cancer. More information about the impact of each illness group by region will be analysed in this section.<br/>Source: ILO, 2017');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(125, 10141, 'EN', 1, 'DALY');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(126, 10142, 'EN', 1, 'DALY');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(127, 10143, 'EN', 1, 'See more about work-related illnesses groups in the WHO regions');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(128, 10144, 'EN', 1, 'Global regions');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(129, 10145, 'EN', 1, 'The target was to identify the economic costs of poor or non-existing measures on safety and health in order to provide further incentives to reduce exposures and hazardous factors and conditions at work. This would contribute also to a more balanced public and private policies and on the urgency of measures to be taken. Ideally it would support in setting priorities in our quest for zero harm at work. The outcome was expected to be  a percentage of Gross Domestic Product (GDP) and monetary values originating from neglected safety and health measure by region, country, and by selected injuries, illnesses or disorders at work. Please download the following document for more information about the background, objectives, methods and contributors.');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(130, 10146, 'EN', 1, '<a data-toggle="modal" data-target="#modalChart" data-ng-click="modal(\'slide\',$index)">region</a>');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(131, 10147, 'EN', 1, 'DALY per 100,000 workers');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(132, 10148, 'EN', 1, 'NOTE: the figures are in English and uses commas for thousands and dots for decimals. If you have your computer in other language, please go to advanced options in Excel, and change the system separators to view the data properly.');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(133, 10149, 'EN', 1, 'Share this on:');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(134, 10150, 'EN', 1, 'Share this on Twitter');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(135, 10151, 'EN', 1, 'Share this on Facebook');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(136, 10152, 'EN', 1, 'Share this on LinkedIn');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(137, 10153, 'EN', 1, 'Share this on Google +');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(138, 10154, 'EN', 1, 'Print');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(139, 10155, 'EN', 1, 'Print page');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(140, 10156, 'EN', 1, 'Smaller text');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(141, 10157, 'EN', 1, 'Optimized defaults');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(142, 10158, 'EN', 1, 'Bigger text');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(143, 10159, 'EN', 1, 'Toggle navigation');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(144, 10160, 'EN', 1, 'Home');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(145, 10161, 'EN', 1, 'Access to Home page');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(146, 10162, 'EN', 1, 'The economics of occupational safety and health – the value of OSH to society');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(147, 10163, 'EN', 1, 'European Agency for Safety and Health at Work webpage');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(148, 10164, 'EN', 1, 'European Agency for Safety and Health at Work');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(149, 10165, 'EN', 1, 'Submenu social networks and print');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(150, 10166, 'EN', 1, 'Social networks menu');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(151, 10167, 'EN', 1, 'Google translate');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(152, 10168, 'EN', 1, 'RSS');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(153, 10169, 'EN', 1, 'Go to website');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(154, 10170, 'EN', 1, 'International Labour Organization');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(155, 10171, 'EN', 1, 'International Commission on Occupational Health');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(156, 10172, 'EN', 1, 'WSH institute');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(157, 10173, 'EN', 1, 'Finnish Institute of Occupational Health');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(158, 10174, 'EN', 1, 'Ministry of Social Affairs and Health Finland');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(159, 10175, 'EN', 1, 'European Agency for Safety and Health at Work');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(160, 10176, 'EN', 1, 'an agency of the European Union');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(161, 10177, 'EN', 1, 'EU OSHA in Twitter');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(162, 10178, 'EN', 1, 'Twitter');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(163, 10179, 'EN', 1, 'EU OSHA Facebook Page');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(164, 10180, 'EN', 1, 'Facebook');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(165, 10181, 'EN', 1, 'Follow EU OSHA in LinkedIn');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(166, 10182, 'EN', 1, 'Linkedin');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(167, 10183, 'EN', 1, 'EU OSHA channel in Youtube');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(168, 10184, 'EN', 1, 'Youtube');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(169, 10185, 'EN', 1, 'EU OSHA Flickr');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(170, 10186, 'EN', 1, 'Previous');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(171, 10187, 'EN', 1, 'Next');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(172, 10188, 'EN', 1, 'View larger image');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(173, 10189, 'EN', 1, 'Want to know more about what the data means?');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(174, 10190, 'EN', 1, '<a target=\'_blank\' href=\'https://osha.europa.eu/en/tools-and-publications/publications/international-comparison-cost-work-related-accidents-and/view\'>Read article</a> (pdf) about the economics of OSH');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(175, 10191, 'EN', 1, 'Global regions');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(176, 10192, 'EN', 1, 'Info');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(177, 10193, 'EN', 1, 'Open Region Map');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(178, 10194, 'EN', 1, 'GLOBAL');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(179, 10195, 'EN', 1, 'EU28');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(180, 10196, 'EN', 1, 'Accessibility');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(181, 10197, 'EN', 1, 'Access keys');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(182, 10198, 'EN', 1, 'Available access keys');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(183, 10199, 'EN', 1, 'Using access keys in different web browsers');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(184, 10200, 'EN', 1, '<p>Access keys are a navigation device enabling you to get around this web site using your keyboard.</p><p>In-depth information about access keys can be found at <a class=\'external\' target=\'_blank\' href=\'http://www.w3.org/TR/WCAG10-HTML-TECHS/#link-accesskey\'>W3C Accessibility Guidelines</a>.</p>');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(185, 10201, 'EN', 1, '<p>This site uses a setup that closely matches most international recommendations on access keys. These are:</p><ul><li>H - Home</li><li>Global Estimates<ul><li>G - Global estimates </li><li>N - Analysis by causes in the WHO regions</li></ul></li><li>EU estimates<ul><li>I - Analysis by illness</li></ul></li><li>O - Glossary</li><li>T - About the estimates</li><li>M - Site map</li><li>U - Contact Us</li><li>A - Accessibility</li><li>P - Privacy Policy</li><li>L - Legal Notice</li></ul>');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(186, 10202, 'EN', 1, '<table><thead><tr><th>Browser</th><th>Windows</th><th>Linux</th><th>Mac</th></tr></thead><tbody><tr><td>Internet explorer</td><td>[Alt] + accesskey</td><td>N/A</td><td></td></tr><tr><td>Chrome</td><td>[Alt] + accesskey</td><td>[Alt] + accesskey</td><td>[Control] [Alt] + accesskey</td></tr><tr><td>Firefox</td><td>[Alt][Shift] + accesskey</td><td>[Alt][Shift] + accesskey</td><td>[Control] [Alt] + accesskey</td></tr><tr><td>Safari</td><td>[Alt] + accesskey</td><td>N/A</td><td>[Control] [Alt] + accesskey</td></tr><tr><td>Opera</td><td colspan=\'3\'><p>[Opera 15 or newer: [Alt] + accesskey</p><p>Opera 12.1 or older: [Shift] [Esc] + accesskey</p></td></tr></tbody></table>');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(187, 10203, 'EN', 1, 'Accessibility info');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(188, 10204, 'EN', 1, 'Privacy notice');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(189, 10205, 'EN', 1, 'Organizational part of the Agency entrusted with the processing of personal data');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(190, 10206, 'EN', 1, 'Purpose of processing');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(191, 10207, 'EN', 1, 'Type of data processed');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(192, 10208, 'EN', 1, 'Legal basis');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(193, 10209, 'EN', 1, 'Lawfulness of processing');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(194, 10210, 'EN', 1, 'Data recipients');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(195, 10211, 'EN', 1, 'Cookies');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(196, 10212, 'EN', 1, 'The data subject’s rights');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(197, 10213, 'EN', 1, 'Information on the conservation period of data');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(198, 10214, 'EN', 1, 'Security measures');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(199, 10215, 'EN', 1, 'Request for information');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(200, 10216, 'EN', 1, 'Recourse to the EDPS');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(201, 10217, 'EN', 1, 'Andrew Smith, Head of Communication and Promotion Unit');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(202, 10218, 'EN', 1, 'For the purpose of producing anonymous statistics on the use of this website, log files are created for each access to the website, containing the following aggregated data: total number of visits, countries of the users, duration of sessions, and the path followed by the users during the sessions.');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(203, 10219, 'EN', 1, 'Those log files contain the following information:');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(204, 10220, 'EN', 1, '<ul><li>The user’s IP address</li><li>The date and time when the user’s request to access the website reached the web server</li>  <li>The requested URL</li><li>The HTTP return code served to the requester (the user)</li><li>The requester’s processing time</li><li>The requester’s user agent string.</li></ul>');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(205, 10221, 'EN', 1, 'Council Regulation (EC) No. 2062/94 of 18/07/1994 establishing the European Agency for Safety and Health at Work and subsequent amendments.');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(206, 10222, 'EN', 1, '<p>The processing is based on Article 5(a) of <a class=\'external\' target=\'_blank\' href=\'http://eur-lex.europa.eu/LexUriServ/LexUriServ.do?uri=OJ:L:2001:008:0001:0022:en:PDF\'>Regulation (EC) No. 45/2001 of the European Parliament and the Council of 18 December 2000 on the protection of individuals with regard to the processing of personal data by the Community institutions and bodies and on the free movement of such data</a> (hereinafter, Regulation (EC) No. 45/2001).</p>');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(207, 10223, 'EN', 1, 'Access to the personal data is granted on the basis of the role and responsibilities of the subjects involved (“need to know” principle):');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(208, 10224, 'EN', 1, '<ul><li>Duly appointed EU-OSHA staff</li><li>External provider hosting EU-OSHA’s server</li><li>Legal Service, Civil Service Tribunal, the European Data Protection Supervisor, the European Anti-Fraud Office (OLAF), the European Ombudsman, the Court of Auditors, the Internal Audit Service, if applicable.</li></ul>');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(209, 10225, 'EN', 1, '<p>All the recipients mentioned above are bound by <a class=\'external\' target=\'_blank\' href=\'http://eur-lex.europa.eu/LexUriServ/LexUriServ.do?uri=OJ:L:2001:008:0001:0022:en:PDF\'>Regulation (EC) Nº 45/2001 of the European Parliament and of the Council of 18 December 2000</a> on the protection of individuals with regard to the processing of personal data by the Community institutions and bodies and on the free movement of such data. EU-OSHA will not disclose personal data to third parties. EU-OSHA will not divulge personal data for direct marketing for commercial purposes.</p>');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(210, 10226, 'EN', 1, '<p>This website will set temporary session cookies whenever you visit the site. These cookies are needed to allow the session. They will be deleted when you close your browser session. The user’s IP address is not stored in any cookie. Cookies have a unique ID to identify the sessions which is completely anonymous for the purpose of enabling the session.</p><p>This website uses <strong>Piwik</strong>, a software to generate web statistics, that is entirely hosted in EU-OSHA’s servers, located in the European Union. Piwik will store cookies in your computer, but no personal data will be collected. An anonymous ID will enable piwik to identify your session, but this ID is meaningless to anybody else, and it cannot be used to identify an individual user.</p><p><strong>If you do not want EU-OSHA to track your activity through Piwik, you can opt-out from Piwik by clicking in the box below.</strong></p>');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(211, 10227, 'EN', 1, 'You may choose not to have a unique web analytics cookie identification number assigned to your computer to avoid the aggregation and analysis of data collected on this website.<br>To make that choice, please click below to receive an opt-out cookie');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(212, 10228, 'EN', 1, 'You are currently opted in. Click here to opt out.');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(213, 10229, 'EN', 1, 'Opt-out complete; your visits to this website will not be recorded by the Web Analytics tool.<br>Note that if you clear your cookies, delete the opt-out cookie, or if you change computers or Web browsers, you will need to perform the opt-out procedure again.');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(214, 10230, 'EN', 1, 'You are currently opted out. Click here to opt in');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(215, 10231, 'EN', 1, '<p>Data subjects have the right to access, rectify and block their information (in case of inaccuracy of data), request their cancellation and object about their processing on the cases foreseen in Articles 13,14,15, 16 and 18 of Regulation (EC) N. 45/2001.</p><p>Should you have queries or complaints regarding the collecting, processing or use of your personal data, please contact us at: <a href=\'mailto:information@osha.europa.eu\'>information@osha.europa.eu</a>, including in the subject the words “data protection”.</p>');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(216, 10232, 'EN', 1, '<p>The information contained in the log files are kept for 2 years in EU-OSHA’s server hosted by an external provider located in the European Union.</p><p>Data for the creation of anonymous statistical reports will be kept for a longer period.</p>');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(217, 10233, 'EN', 1, '<p>We take appropriate security measures to protect against unauthorised access to or unauthorised alteration, disclosure or destruction of data. These include internal reviews of our data collection, storage and processing practices and security measures, including appropriate encryption of communication and physical security measures to guard against unauthorised access to systems where we store personal data.</p>');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(218, 10234, 'EN', 1, '<p>For any further information regarding the handling of their personal data, data subjects can address their request to EU-OSHA Data Protection Officer at: <a href=\'mailto:dpo@osha.europa.eu\'>dpo@osha.europa.eu</a>.</p>');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(219, 10235, 'EN', 1, '<p>Data subjects are entitled to make recourse to the European Data Protection Supervisor: <a class=\'external\' target=\'_blank\' href=\'http://www.edps.europa.eu/\'>http://www.edps.europa.eu</a>, should they consider that the processing operations do not comply with Regulation (EC) No. 45/2001.</p>');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(220, 10236, 'EN', 1, 'Legal notice');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(221, 10237, 'EN', 1, 'Disclaimer');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(222, 10238, 'EN', 1, 'Copyright notice');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(223, 10239, 'EN', 1, '<p>The European Agency for Safety and Health at Work\'s maintains this website to enhance public access to information about its activities and as a tool to access information on occupational safety and health. Our goal is to keep this information timely and accurate. If errors are brought to our attention, we will try to correct them. However, the Agency accepts no responsibility or liability whatsoever with regard to the information on this site.</p><p>This information is:</p><ul><li>of a general nature only and is not intended to address the specific circumstances of any particular individual or entity;</li><li>not necessarily comprehensive, complete, accurate or up to date;</li><li>sometimes linked to external sites over which the Agency has no control and for which the Agency assumes no responsibility;</li><li>not professional or legal advice (if you need specific advice, you should always consult a suitably qualified professional).</li></ul><p>It is our goal to minimise disruption caused by technical errors. However some data or information on our site may have been created or structured in files or formats that are not error-free and we cannot guarantee that our service will not be interrupted or otherwise affected by such problems. The Agency accepts no responsibility with regard to such problems incurred as a result of using this site or any linked external sites.</p><p>This disclaimer is not intended to limit the liability of the Agency in contravention of any requirements laid down in applicable national law nor to exclude its liability for matters which may not be excluded under that law.</p><p>Translation provided by the Translation Centre (CdT, Luxembourg), based on an English original text.</p>');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(224, 10240, 'EN', 1, '<p>© European Agency for Safety and Health at Work</p><p>Reproduction is authorised, provided the source is acknowledged, save where otherwise stated.</p><p>Where prior permission must be obtained for the reproduction or use of textual and multimedia information (sound, images, software, etc.), such permission shall cancel the above-mentioned general permission and shall clearly indicate any restrictions on use.</p>');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(225, 10241, 'EN', 1, 'About the Tool');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(226, 10242, 'EN', 1, 'Glossary');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(227, 10243, 'EN', 1, 'Search for a word by term name or description');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(228, 10244, 'EN', 1, 'Select the country');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(229, 10245, 'EN', 1, 'Region');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(230, 10246, 'EN', 1, 'Region code WHO regions and World Bank income categories');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(231, 10247, 'EN', 1, 'More information about');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(232, 10248, 'EN', 1, 'WHO Regions');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(233, 10249, 'EN', 1, 'The EU-OSHA website uses cookies to gather information necessary for browsing the website, in accordance with the EU-OSHA privacy notice.');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(234, 10250, 'EN', 1, 'By clicking on any link in the EU-OSHA web pages you are giving your consent for the use of cookies.');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(235, 10251, 'EN', 1, 'No, give me more info');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(236, 10252, 'EN', 1, 'Ok, I agree');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(237, 10253, 'EN', 1, 'Due to the nature of this visualisation we cannot ensure a satisfactory user experience for small screens.');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(238, 10254, 'EN', 1, 'Close');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(239, 10255, 'EN', 1, 'EU28');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(240, 10256, 'EN', 1, 'Work-related illnesses');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(241, 10257, 'EN', 1, 'A work-related illness is any illness contracted primarily as a result of an exposure to risk factors arising from work activity. Work-related illnesses have multiple causes, where factors in the work environment may play a role, together with other risk factors, in the development of such illness.');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(242, 10258, 'EN', 1, 'illnesses');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(243, 10259, 'EN', 1, 'illness');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(244, 10260, 'EN', 1, 'work-related illness');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(245, 10261, 'EN', 1, 'Cancer');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(246, 10262, 'EN', 1, 'Cancer includes the following illnesses: Lip oral cavity cancer, nasopharynx cancer, other pharynx cancer, esophageal cancer, stomach cancer, colon and rectum cancer, liver cancer, gallbladder and biliary tract cancer, pancreatic cancer, larynx cancer, tracheal, broncus and lung cancer, malignant skin melanoma, non-melona skin cancer, breast cancer, cervical cancer, uterine cancer, ovarian cancer, prostate cancer, testicular cancer, kidney cancer, bladder cancer, brain and nervous system cancer, thyroid cancer, mesothelioma, hodgkin lymphoma, non-hodgkin lymphoma, multiple myeloma, leukemia and other neoplasms.');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(247, 10263, 'EN', 1, 'cancer');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(248, 10264, 'EN', 1, '');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(249, 10265, 'EN', 1, '');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(250, 10266, 'EN', 1, 'Musculoskeletal Disorders (MSDs)');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(251, 10267, 'EN', 1, 'MSD includes the following illnesses: Rheumatoid arthritis, osteoarthritis, low back pain, neck pain, gout and other musculoskeletal disorders.');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(252, 10268, 'EN', 1, 'MSDs');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(253, 10269, 'EN', 1, 'musculoskeletal disorders (MSD)');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(254, 10270, 'EN', 1, '');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(255, 10271, 'EN', 1, 'Circulatory illnesses');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(256, 10272, 'EN', 1, 'Circulatory illnesses includes the following illnesses: Ischemic heart disease, ischemic stroke and hemorrhagic stroke.');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(257, 10273, 'EN', 1, 'circulatory illnesses');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(258, 10274, 'EN', 1, '');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(259, 10275, 'EN', 1, '');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(260, 10276, 'EN', 1, 'Work-related injuries');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(261, 10277, 'EN', 1, 'An accident at work is defined as a discrete occurrence in the course of work which leads to physical or mental harm. This includes cases of acute poisoning and wilful acts of other persons, as well as accidents occurring during work but off the company’s premises, even those caused by third parties. It excludes deliberate self-inflicted injuries, accidents on the way to and from work (commuting accidents), accidents having only a medical origin and occupational diseases.');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(262, 10278, 'EN', 1, 'work-related injury');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(263, 10279, 'EN', 1, 'injury');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(264, 10280, 'EN', 1, '');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(265, 10281, 'EN', 1, 'YLL (Years of Life Lost)');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(266, 10282, 'EN', 1, 'YLL (Years of Life Lost) correspond to the number of deaths multiplied by the standard life expectancy at the age at which death occurs.');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(267, 10283, 'EN', 1, 'years of life lost');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(268, 10284, 'EN', 1, 'Years of Life Lost');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(269, 10285, 'EN', 1, 'YLL');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(270, 10286, 'EN', 1, 'YLD (Years Lived with Disability)');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(271, 10287, 'EN', 1, 'To estimate the YLD (Years Lived with Disability) for a particular cause in a particular time period, the number of incident cases in that period is multiplied by the average duration of the illness and a weight factor that reflects the severity of the disease on a scale from 0 (perfect health) to 1 (dead).');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(272, 10288, 'EN', 1, 'lived with disability');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(273, 10289, 'EN', 1, 'Years Lived with Disability');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(274, 10290, 'EN', 1, 'YLD');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(275, 10291, 'EN', 1, 'DALY (Disability Adjusted Life Years)');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(276, 10292, 'EN', 1, 'DALY (Disability Adjusted Life Years) for an illness or health condition are calculated as the sum of the YLL (Years of Life Lost) due to premature mortality in the population and the YLD (Years Lived with Disability) for people living with the health condition or its consequences.');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(277, 10293, 'EN', 1, 'DALY');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(278, 10294, 'EN', 1, '');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(279, 10295, 'EN', 1, '');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(280, 10296, 'EN', 1, 'HIGH countries');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(281, 10297, 'EN', 1, 'This WHO region includes High income countries: Andorra, Australia, Austria, Bahamas, Bahrain, Belgium, Brunei Darussalam, Canada, Cyprus, Denmark, Faroe Island, Finland, France, Germany, Greece, Greenland, Guernsey, Iceland, Ireland, Isle of Man, Israel, Italy, Japan, Jersey, Korea, Republic of Kuwait, Liechtenstein, Luxembourg, Malta, Monaco, Netherlands, New Zealand, Norway, Portugal, Qatar, San Marino, Saudi Arabia, Singapore, Slovenia, Spain, Sweden, Switzerland, United Arab Emirates, United Kingdom, United States\nAnd Virgin Islands.');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(282, 10298, 'EN', 1, 'HIGH');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(283, 10299, 'EN', 1, '');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(284, 10300, 'EN', 1, '');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(285, 10301, 'EN', 1, 'AFRO countries');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(286, 10302, 'EN', 1, 'This WHO region includes the following countries: Algeria, Angola, Benin, Botswana, Burkina Faso, Burundi, Cameroon, Cape Verde\nCentral African Republic, Chad, Comoros, Congo, Democratic Republic of the Congo, Republic of Côte d\'Ivoire, Equatorial Guinea, Eritrea, Ethiopia, Gabon, Gambia, Ghana, Guinea, Guinea-Bissau, Kenya, Lesotho, Liberia, Madagascar, Malawi, Mali, Mauritania, Mauritius, Mayotte, Mozambique, Namibia, Niger, Nigeria, Réunion, Rwanda, Saint Helena, Ascension, and Tristan Da Cunha, Sao Tome and Principe, Senegal, Seychelles, Sierra Leone, South Africa, Swaziland, Tanzania, United Republic of Togo, Uganda, Zambia and Zimbabwe.');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(287, 10303, 'EN', 1, 'AFRO');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(288, 10304, 'EN', 1, '');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(289, 10305, 'EN', 1, '');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(290, 10306, 'EN', 1, 'AMRO countries');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(291, 10307, 'EN', 1, 'This WHO region includes the following countries: Anguilla, Antigua and Barbuda, Argentina, Aruba, Barbados, Belize, Bermuda, Bolivia, Brazil, Cayman Islands, Chile, Colombia, Costa Rica, Cuba, Dominica, Dominican Republic, Ecuador, El Salvador, Falkland Islands (Malvinas), French Guiana , Grenada, Guadeloupe, Guatemala, Guyana, Haiti, Honduras, Jamaica, Martinique, Mexico, Montserrat, Netherlands Antilles, Nicaragua, Panama, Paraguay, Peru, Puerto Rico, Saint Kitts and Nevis, Saint Lucia, Saint Pierre and Miquelon, Saint Vincent and the Grenadines, Suriname, Trinidad and Tobago, Turks and Caicos Islands, Uruguay and Venezuela.');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(292, 10308, 'EN', 1, 'AMRO');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(293, 10309, 'EN', 1, '');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(294, 10310, 'EN', 1, '');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(295, 10311, 'EN', 1, 'EMRO countries');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(296, 10312, 'EN', 1, 'This WHO region includes the following countries: Afghanistan, Djibouti, Egypt, Iran, Islamic Rep. Of Iraq, Jordan, Lebanon, Libyan Arab Jamahiriya, Morocco, Oman, Pakistan, Somalia, Sudan, The Republic of Syrian Arab Republic, Tunisia, West Bank & Gaza Strip and Yemen.');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(297, 10313, 'EN', 1, 'EMRO');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(298, 10314, 'EN', 1, '');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(299, 10315, 'EN', 1, '');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(300, 10316, 'EN', 1, 'EURO countries');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(301, 10317, 'EN', 1, 'This WHO region includes the following countries: Albania, Armenia, Azerbaijan, Belarus, Bosnia and Herzegovina, Bulgaria, Croatia, Czech Republic, Estonia, Georgia, Gibraltar, Hungary, Kazakhstan, Kyrgyzstan, Latvia, Lithuania, Macedonia, The former Yugoslav Rep. Of Moldova, Republic of\nMontenegro, Poland, Romania, Russian Federation, Serbia, Slovakia, Tajikistan, Turkey, Turkmenistan, Ukraine and Uzbekistan.');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(302, 10318, 'EN', 1, 'EURO');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(303, 10319, 'EN', 1, '');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(304, 10320, 'EN', 1, '');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(305, 10321, 'EN', 1, 'SEARO countries');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(306, 10322, 'EN', 1, 'This WHO region includes the following countries: Bangladesh, Bhutan, India, Indonesia, Dem. People\'s Rep. Of Korea, Maldives, Myanmar (Burma), Nepal, Sri Lanka, Thailand and Timor-Leste.');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(307, 10323, 'EN', 1, 'SEARO');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(308, 10324, 'EN', 1, '');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(309, 10325, 'EN', 1, '');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(310, 10326, 'EN', 1, 'WPRO countries');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(311, 10327, 'EN', 1, 'This WHO region includes the following countries: American Samoa, Cambodia, China, Cook Islands, Fiji, French Polynesia, Guam, Hong Kong (China), Kiribati, Lao People\'s Dem. Rep., Macau (China), Malaysia, Marshall Islands, Micronesia, Mongolia, Nauru, New Caledonia, Niue, Norfolk Island, Northern Mariana Islands, Palau, Papua New Guinea, Philippines, Samoa, Solomon Islands, Taiwan (China), Tokelau, Tonga, Tuvalu, Vanuatu, Vietnam and Wallis and Futuna.');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(312, 10328, 'EN', 1, 'WPRO');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(313, 10329, 'EN', 1, '');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(314, 10330, 'EN', 1, '');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(315, 10331, 'EN', 1, 'Billion');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(316, 10332, 'EN', 1, '1,000,000,000, i.e. one thousand million, or 109 (ten to the ninth power), as defined on the short scale. This is now generally the meaning in both British and American English. As exchange rate between € and $ the 2016 average value provided by the European Central Bank has been used.');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(317, 10333, 'EN', 1, '');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(318, 10334, 'EN', 1, '');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(319, 10335, 'EN', 1, '');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(320, 27, 'EN', 1, 'Afghanistan');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(321, 28, 'EN', 1, 'Albania');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(322, 29, 'EN', 1, 'Algeria');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(323, 30, 'EN', 1, 'American Samoa');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(324, 31, 'EN', 1, 'Andorra');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(325, 32, 'EN', 1, 'Angola');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(326, 33, 'EN', 1, 'Anguilla');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(327, 34, 'EN', 1, 'Antigua and Barbuda');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(328, 35, 'EN', 1, 'Argentina');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(329, 36, 'EN', 1, 'Armenia');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(330, 37, 'EN', 1, 'Aruba');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(331, 38, 'EN', 1, 'Australia');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(332, 39, 'EN', 1, 'Austria');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(333, 40, 'EN', 1, 'Azerbaijan');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(334, 41, 'EN', 1, 'Bahamas');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(335, 42, 'EN', 1, 'Bahrain');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(336, 43, 'EN', 1, 'Bangladesh');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(337, 44, 'EN', 1, 'Barbados');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(338, 45, 'EN', 1, 'Belarus');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(339, 46, 'EN', 1, 'Belgium');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(340, 47, 'EN', 1, 'Belize');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(341, 48, 'EN', 1, 'Benin');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(342, 49, 'EN', 1, 'Bermuda');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(343, 50, 'EN', 1, 'Bhutan');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(344, 51, 'EN', 1, 'Bolivia');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(345, 52, 'EN', 1, 'Bosnia and Herzegovina');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(346, 53, 'EN', 1, 'Botswana');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(347, 54, 'EN', 1, 'Brazil');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(348, 55, 'EN', 1, 'Brunei Darussalam');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(349, 56, 'EN', 1, 'Bulgaria');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(350, 57, 'EN', 1, 'Burkina Faso');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(351, 58, 'EN', 1, 'Burundi');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(352, 59, 'EN', 1, 'Cambodia');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(353, 60, 'EN', 1, 'Cameroon');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(354, 61, 'EN', 1, 'Canada');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(355, 62, 'EN', 1, 'Cape Verde');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(356, 63, 'EN', 1, 'Cayman Islands');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(357, 64, 'EN', 1, 'Central African Republic');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(358, 65, 'EN', 1, 'Chad');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(359, 66, 'EN', 1, 'Chile');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(360, 67, 'EN', 1, 'China');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(361, 68, 'EN', 1, 'Colombia');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(362, 69, 'EN', 1, 'Comoros');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(363, 70, 'EN', 1, 'Congo, Democratic Republic of the');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(364, 71, 'EN', 1, 'Congo, Republic of');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(365, 72, 'EN', 1, 'Cook Islands');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(366, 73, 'EN', 1, 'Costa Rica');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(367, 74, 'EN', 1, 'Côte d\'Ivoire');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(368, 75, 'EN', 1, 'Croatia');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(369, 76, 'EN', 1, 'Cuba');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(370, 77, 'EN', 1, 'Cyprus');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(371, 78, 'EN', 1, 'Czech Republic');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(372, 79, 'EN', 1, 'Denmark');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(373, 80, 'EN', 1, 'Djibouti');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(374, 81, 'EN', 1, 'Dominica');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(375, 82, 'EN', 1, 'Dominican Republic');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(376, 83, 'EN', 1, 'Ecuador');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(377, 84, 'EN', 1, 'Egypt');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(378, 85, 'EN', 1, 'El Salvador');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(379, 86, 'EN', 1, 'Equatorial Guinea');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(380, 87, 'EN', 1, 'Eritrea');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(381, 88, 'EN', 1, 'Estonia');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(382, 89, 'EN', 1, 'Ethiopia');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(383, 90, 'EN', 1, 'Falkland Islands (Malvinas)');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(384, 91, 'EN', 1, 'Faroe Islands');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(385, 92, 'EN', 1, 'Fiji');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(386, 93, 'EN', 1, 'Finland');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(387, 94, 'EN', 1, 'France');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(388, 95, 'EN', 1, 'French Guiana');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(389, 96, 'EN', 1, 'French Polynesia');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(390, 97, 'EN', 1, 'Gabon');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(391, 98, 'EN', 1, 'Gambia');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(392, 99, 'EN', 1, 'Georgia');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(393, 100, 'EN', 1, 'Germany');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(394, 101, 'EN', 1, 'Ghana');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(395, 102, 'EN', 1, 'Gibraltar');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(396, 103, 'EN', 1, 'Greece');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(397, 104, 'EN', 1, 'Greenland');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(398, 105, 'EN', 1, 'Grenada');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(399, 106, 'EN', 1, 'Guadeloupe');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(400, 107, 'EN', 1, 'Guam');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(401, 108, 'EN', 1, 'Guatemala');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(402, 109, 'EN', 1, 'Guernsey');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(403, 110, 'EN', 1, 'Guinea');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(404, 111, 'EN', 1, 'Guinea-Bissau');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(405, 112, 'EN', 1, 'Guyana');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(406, 113, 'EN', 1, 'Haiti');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(407, 114, 'EN', 1, 'Honduras');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(408, 115, 'EN', 1, 'Hong Kong, China');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(409, 116, 'EN', 1, 'Hungary');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(410, 117, 'EN', 1, 'Iceland');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(411, 118, 'EN', 1, 'India');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(412, 119, 'EN', 1, 'Indonesia');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(413, 120, 'EN', 1, 'Iran, Islamic Rep. Of');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(414, 121, 'EN', 1, 'Iraq');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(415, 122, 'EN', 1, 'Ireland');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(416, 123, 'EN', 1, 'Isle of Man');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(417, 124, 'EN', 1, 'Israel');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(418, 125, 'EN', 1, 'Italy');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(419, 126, 'EN', 1, 'Jamaica');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(420, 127, 'EN', 1, 'Japan');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(421, 128, 'EN', 1, 'Jersey');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(422, 129, 'EN', 1, 'Jordan');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(423, 130, 'EN', 1, 'Kazakhstan');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(424, 131, 'EN', 1, 'Kenya');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(425, 132, 'EN', 1, 'Kiribati');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(426, 133, 'EN', 1, 'Korea, Dem. People\'s Rep. Of');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(427, 134, 'EN', 1, 'Korea, Republic of');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(428, 135, 'EN', 1, 'Kuwait');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(429, 136, 'EN', 1, 'Kyrgyzstan');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(430, 137, 'EN', 1, 'Lao People\'s Dem. Rep.');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(431, 138, 'EN', 1, 'Latvia');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(432, 139, 'EN', 1, 'Lebanon');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(433, 140, 'EN', 1, 'Lesotho');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(434, 141, 'EN', 1, 'Liberia');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(435, 142, 'EN', 1, 'Libyan Arab Jamahiriya');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(436, 143, 'EN', 1, 'Liechtenstein');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(437, 144, 'EN', 1, 'Lithuania');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(438, 145, 'EN', 1, 'Luxembourg');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(439, 146, 'EN', 1, 'Macau, China');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(440, 147, 'EN', 1, 'Macedonia, The former Yugoslav Rep. of');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(441, 148, 'EN', 1, 'Madagascar');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(442, 149, 'EN', 1, 'Malawi');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(443, 150, 'EN', 1, 'Malaysia');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(444, 151, 'EN', 1, 'Maldives');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(445, 152, 'EN', 1, 'Mali');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(446, 153, 'EN', 1, 'Malta');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(447, 154, 'EN', 1, 'Marshall Islands');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(448, 155, 'EN', 1, 'Martinique');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(449, 156, 'EN', 1, 'Mauritania');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(450, 157, 'EN', 1, 'Mauritius');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(451, 158, 'EN', 1, 'Mayotte');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(452, 159, 'EN', 1, 'Mexico');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(453, 160, 'EN', 1, 'Micronesia');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(454, 161, 'EN', 1, 'Moldova, Republic of');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(455, 162, 'EN', 1, 'Monaco');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(456, 163, 'EN', 1, 'Mongolia');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(457, 164, 'EN', 1, 'Montenegro');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(458, 165, 'EN', 1, 'Montserrat');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(459, 166, 'EN', 1, 'Morocco');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(460, 167, 'EN', 1, 'Mozambique');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(461, 168, 'EN', 1, 'Myanmar (Burma)');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(462, 169, 'EN', 1, 'Namibia');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(463, 170, 'EN', 1, 'Nauru');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(464, 171, 'EN', 1, 'Nepal');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(465, 172, 'EN', 1, 'Netherlands');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(466, 173, 'EN', 1, 'Netherlands Antilles');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(467, 174, 'EN', 1, 'New Caledonia');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(468, 175, 'EN', 1, 'New Zealand');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(469, 176, 'EN', 1, 'Nicaragua');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(470, 177, 'EN', 1, 'Niger');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(471, 178, 'EN', 1, 'Nigeria');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(472, 179, 'EN', 1, 'Niue');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(473, 180, 'EN', 1, 'Norfolk Island');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(474, 181, 'EN', 1, 'Northern Mariana Islands');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(475, 182, 'EN', 1, 'Norway');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(476, 183, 'EN', 1, 'Oman');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(477, 184, 'EN', 1, 'Pakistan');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(478, 185, 'EN', 1, 'Palau');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(479, 186, 'EN', 1, 'Panama');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(480, 187, 'EN', 1, 'Papua New Guinea');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(481, 188, 'EN', 1, 'Paraguay');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(482, 189, 'EN', 1, 'Peru');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(483, 190, 'EN', 1, 'Philippines');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(484, 191, 'EN', 1, 'Poland');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(485, 192, 'EN', 1, 'Portugal');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(486, 193, 'EN', 1, 'Puerto Rico');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(487, 194, 'EN', 1, 'Qatar');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(488, 195, 'EN', 1, 'Réunion');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(489, 196, 'EN', 1, 'Romania');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(490, 197, 'EN', 1, 'Russian Federation');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(491, 198, 'EN', 1, 'Rwanda');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(492, 199, 'EN', 1, 'Saint Helena, Ascension, and Tristan Da Cunha');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(493, 200, 'EN', 1, 'Saint Kitts and Nevis');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(494, 201, 'EN', 1, 'Saint Lucia');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(495, 202, 'EN', 1, 'Saint Pierre and Miquelon');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(496, 203, 'EN', 1, 'Saint Vincent and the Grenadines');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(497, 204, 'EN', 1, 'Samoa');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(498, 205, 'EN', 1, 'San Marino');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(499, 206, 'EN', 1, 'Sao Tome and Principe');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(500, 207, 'EN', 1, 'Saudi Arabia');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(501, 208, 'EN', 1, 'Senegal');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(502, 209, 'EN', 1, 'Serbia');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(503, 210, 'EN', 1, 'Seychelles');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(504, 211, 'EN', 1, 'Sierra Leone');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(505, 212, 'EN', 1, 'Singapore');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(506, 213, 'EN', 1, 'Slovakia');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(507, 214, 'EN', 1, 'Slovenia');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(508, 215, 'EN', 1, 'Solomon Islands');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(509, 216, 'EN', 1, 'Somalia');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(510, 217, 'EN', 1, 'South Africa');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(511, 218, 'EN', 1, 'Spain');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(512, 219, 'EN', 1, 'Sri Lanka');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(513, 220, 'EN', 1, 'Sudan, The Republic of');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(514, 221, 'EN', 1, 'Suriname');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(515, 222, 'EN', 1, 'Swaziland');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(516, 223, 'EN', 1, 'Sweden');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(517, 224, 'EN', 1, 'Switzerland');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(518, 225, 'EN', 1, 'Syrian Arab Republic');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(519, 226, 'EN', 1, 'Taiwan, China');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(520, 227, 'EN', 1, 'Tajikistan');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(521, 228, 'EN', 1, 'Tanzania, United Republic of');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(522, 229, 'EN', 1, 'Thailand');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(523, 230, 'EN', 1, 'Timor-Leste');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(524, 231, 'EN', 1, 'Togo');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(525, 232, 'EN', 1, 'Tokelau');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(526, 233, 'EN', 1, 'Tonga');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(527, 234, 'EN', 1, 'Trinidad and Tobago');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(528, 235, 'EN', 1, 'Tunisia');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(529, 236, 'EN', 1, 'Turkey');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(530, 237, 'EN', 1, 'Turkmenistan');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(531, 238, 'EN', 1, 'Turks and Caicos Islands');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(532, 239, 'EN', 1, 'Tuvalu');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(533, 240, 'EN', 1, 'Uganda');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(534, 241, 'EN', 1, 'Ukraine');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(535, 242, 'EN', 1, 'United Arab Emirates');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(536, 243, 'EN', 1, 'United Kingdom');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(537, 244, 'EN', 1, 'United States');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(538, 245, 'EN', 1, 'Uruguay');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(539, 246, 'EN', 1, 'Uzbekistan');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(540, 247, 'EN', 1, 'Vanuatu');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(541, 248, 'EN', 1, 'Venezuela, Bolivarian Rep. of');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(542, 249, 'EN', 1, 'Vietnam');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(543, 250, 'EN', 1, 'Virgin Islands, U.S.');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(544, 251, 'EN', 1, 'Wallis and Futuna');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(545, 252, 'EN', 1, 'West Bank & Gaza Strip');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(546, 253, 'EN', 1, 'Yemen');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(547, 254, 'EN', 1, 'Zambia');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(548, 255, 'EN', 1, 'Zimbabwe');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(549, 256, 'EN', 1, 'High income countries');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(550, 257, 'EN', 1, 'Low-and middle-income countries of the African Region');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(551, 258, 'EN', 1, 'Low-and middle-income countries of the Americas');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(552, 259, 'EN', 1, 'Low-and middle-income countries of the Eastern Mediterranean Region');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(553, 260, 'EN', 1, 'Low-and middle-income countries of the European Region');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(554, 261, 'EN', 1, 'Low-and middle-income countries of the South-East Asia Region');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(555, 262, 'EN', 1, 'Low-and middle-income countries of the Western Pacific Region');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(556, 263, 'EN', 1, 'GLOBAL');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(557, 264, 'EN', 1, 'EU28');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(558, 265, 'EN', 1, 'Dollar');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(559, 266, 'EN', 1, 'Euro');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(560, 267, 'EN', 1, 'All');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(561, 268, 'EN', 1, 'Cancer');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(562, 269, 'EN', 1, 'Circulatory');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(563, 270, 'EN', 1, 'MSD');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(564, 271, 'EN', 1, 'Injuries');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(565, 272, 'EN', 1, 'Others');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(566, 273, 'EN', 1, 'Cost non-fatal cases');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(567, 274, 'EN', 1, 'Cost fatal cases');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(568, 275, 'EN', 1, 'Fatal work-related illnesses');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(569, 276, 'EN', 1, 'Fatal work-related injuries');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(570, 277, 'EN', 1, 'Years lived with disability (YLD)-Non fatal injuries and illnesses');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(571, 278, 'EN', 1, 'Years of life lost (YLL)-Fatal illnesses');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(572, 279, 'EN', 1, 'Years of life lost (YLL)-Fatal injuries');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(573, 280, 'EN', 1, 'YLL-Fatal injuries and illnesses per 100.000 workers');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(574, 281, 'EN', 1, 'YLD-non fatal injuries and illnesses per 100.000 workers');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(575, 282, 'EN', 1, 'Number of cases');
INSERT INTO `translation` (`id`, `literal_id`, `language`, `is_default`, `text`) VALUES
	(576, 283, 'EN', 1, '%');
/*!40000 ALTER TABLE `translation` ENABLE KEYS */;

-- Volcando estructura para tabla osha_dvt_ilo.value
DROP TABLE IF EXISTS `value`;
CREATE TABLE IF NOT EXISTS `value` (
  `dataset_id` int(11) NOT NULL,
  `indicator_id` int(11) NOT NULL,
  `profile_id` int(11) NOT NULL,
  `value` double NOT NULL,
  PRIMARY KEY (`dataset_id`,`indicator_id`,`profile_id`),
  KEY `value_indicator_id` (`indicator_id`),
  KEY `value_profile_id` (`profile_id`),
  CONSTRAINT `value_dataset_id` FOREIGN KEY (`dataset_id`) REFERENCES `dataset` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `value_indicator_id` FOREIGN KEY (`indicator_id`) REFERENCES `indicator` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `value_profile_id` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla osha_dvt_ilo.value: ~681 rows (aproximadamente)
/*!40000 ALTER TABLE `value` DISABLE KEYS */;
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 1, 361, 1335.862917473);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 1, 362, 1630.274284954);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 1, 363, 1206.85058946);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 1, 364, 1472.828877906);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 3, 369, 2403965);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 3, 370, 380500.38074209);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 5, 373, 55.517784015);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 5, 374, 49.224393157);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 5, 375, 18.528977682);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 7, 379, 26.949837377);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 7, 380, 28.312317776);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 7, 381, 13.665114437);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 7, 382, 31.072730409);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 9, 379, 12.353477444);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 9, 380, 17.205682424);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 9, 381, 10.892319769);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 9, 382, 44.590534308);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 9, 387, 14.957986055);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 11, 371, 91.69777904);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 11, 372, 1.720742342);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 11, 389, 89.04838776);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 11, 390, 61.891674827);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 11, 391, 49.553859221);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 11, 392, 81.738324365);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 11, 393, 102.41110879);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 11, 394, 89.536109809);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 11, 395, 66.947702);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 11, 396, 2.258638434);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 11, 397, 18.849839109);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 11, 398, 7.2028902);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 11, 399, 13.147570031);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 11, 400, 6.934716473);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 11, 401, 16.301224396);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 11, 402, 13.800959365);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 12, 403, 1441.8523412);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 12, 404, 2439.1637983);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 12, 405, 1263.5506841);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 12, 406, 2689.9198391);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 12, 407, 2613.1225796);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 12, 408, 2774.958553);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 12, 409, 2003.4884572);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 12, 410, 1569.893662736);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 13, 411, 44.059576772);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 13, 412, 61.025922407);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 13, 413, 34.012749813);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 13, 414, 65.748850183);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 13, 415, 70.638604805);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 13, 416, 63.106467243);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 13, 417, 50.352111405);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 13, 418, 48.189120866);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 13, 419, 55.940423228);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 13, 420, 38.974077593);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 13, 421, 65.987250187);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 13, 422, 34.251149817);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 13, 423, 29.361395195);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 13, 424, 36.893532757);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 13, 425, 49.647888595);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 13, 426, 51.810879134);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 14, 403, 3272.5061083);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 14, 404, 3996.9306519);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 14, 405, 3714.9324622);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 14, 406, 4091.2043809);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 14, 407, 3699.2839635);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 14, 408, 4397.2649306);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 14, 409, 3978.9561972);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 14, 410, 3257.776100722);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 15, 403, 3.272506108);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 15, 404, 3.996930652);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 15, 405, 3.714932462);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 15, 406, 4.091204381);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 15, 407, 3.699283964);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 15, 408, 4.397264931);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 15, 409, 3.978956197);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 15, 410, 3.257776101);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 26, 379, 486.756890114);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 26, 380, 677.945502153);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 26, 381, 429.183743687);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 26, 382, 1756.974900983);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 26, 383, 814.672814753);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 26, 384, 400.081868932);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 26, 385, 375.707214729);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 26, 386, 1189.758708301);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 26, 387, 589.380828826);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 26, 388, 477.555494007);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 26, 428, 25.007022876);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 26, 429, 14.658941537);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 26, 430, 12.280827674);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 26, 431, 11.53262849);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 26, 432, 36.520579423);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 26, 433, 717.87978477);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 26, 434, 257.72104793);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 26, 435, 388.69393077);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 26, 436, 441.5827994);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 26, 437, 720.25001699);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 26, 438, 341.62453216);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 26, 439, 559.12701563);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 26, 440, 381.16855056);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 26, 441, 618.13624829);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 26, 442, 457.45604552);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 26, 443, 759.91869583);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 26, 444, 581.49835297);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 26, 445, 757.26496609);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 26, 446, 557.31007128);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 26, 447, 421.04309944);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 26, 448, 504.93736008);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 26, 449, 438.54423958);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 26, 450, 867.99502511);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 26, 451, 1264.3139971);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 26, 452, 912.16890205);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 26, 453, 587.34107802);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 26, 454, 264.33543978);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 26, 455, 543.67077692);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 26, 456, 668.25079395);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 26, 457, 658.62204516);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 26, 458, 597.81803007);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 26, 459, 475.22569767);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 26, 460, 284.25438416);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 26, 461, 1488.0792338);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 26, 462, 2072.4652187);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 26, 463, 1761.9874524);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 26, 464, 1363.0858154);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 26, 465, 535.40356633);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 26, 466, 1910.9808326);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 26, 467, 1990.9236481);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 26, 468, 12.353477444);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 26, 469, 21.936698084);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 26, 470, 6.447973967);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 26, 471, 10.463014731);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 26, 472, 10.793467114);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 26, 473, 19.469984573);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 26, 474, 7.76902319);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 26, 475, 14.052102811);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 26, 476, 14.957986055);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 26, 477, 11.647603945);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 26, 478, 15.465273284);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 26, 479, 12.313980137);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 26, 480, 18.574449602);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 26, 481, 15.719213737);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 26, 482, 17.221272269);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 26, 483, 14.006438967);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 26, 484, 17.205682424);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 26, 485, 12.86607528);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 26, 486, 12.633127869);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 26, 487, 11.804904774);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 26, 488, 21.216124747);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 26, 489, 34.17726267);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 26, 490, 20.744006023);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 26, 491, 14.761184816);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 26, 492, 10.892319769);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 26, 493, 8.077462074);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 26, 494, 13.6022069);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 26, 495, 17.988235338);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 26, 496, 16.098487972);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 26, 497, 16.160371466);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 26, 498, 10.807301929);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 26, 499, 7.143943539);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 26, 500, 44.590534308);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 26, 501, 45.472160617);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 26, 502, 51.85141798);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 26, 503, 47.42986502);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 26, 504, 33.317470566);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 26, 505, 14.473167554);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 26, 506, 43.458396589);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(1, 26, 507, 50.036329868);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 2, 365, 288.596302271);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 2, 366, 239.071014445);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 2, 367, 260.113837108);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 2, 368, 215.476353713);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 4, 371, 200209.262844779);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 4, 372, 3757);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 6, 376, 3.685255);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 6, 377, 3.256319231);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 6, 378, 0.171323796);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 8, 383, 52.120039861);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 8, 384, 24.249999198);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 8, 385, 1.841971289);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 8, 386, 21.787989652);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 10, 383, 25.007022876);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 10, 384, 12.280827674);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 10, 385, 11.53262849);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 10, 386, 36.520579423);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 10, 388, 14.658941537);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 16, 1, 2619.5781936);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 16, 2, 1966.9647553);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 16, 3, 2087.1969199);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 16, 4, 1939.9955522);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 16, 5, 2411.9059658);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 16, 6, 2311.2839948);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 16, 7, 2148.1597198);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 16, 8, 2182.3089332);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 16, 9, 1988.9833322);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 16, 10, 2333.6463158);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 16, 11, 1555.0648141);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 16, 12, 1395.8366414);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 16, 13, 1436.0978202);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 16, 14, 1511.7039877);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 16, 15, 1432.9121549);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 16, 16, 1529.5393775);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 16, 17, 1441.6203046);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 16, 18, 1392.1923737);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 16, 19, 1507.507028);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 16, 20, 1350.0954242);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 16, 21, 1627.9828311);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 16, 22, 1452.5746385);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 16, 23, 1357.3288974);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 16, 24, 1504.3692556);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 16, 25, 1639.7058061);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 16, 26, 1518.376986);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 16, 27, 1367.4309158);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 16, 28, 1260.5104885);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 16, 29, 1405.0370169);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 16, 30, 1434.1108999);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 16, 410, 1569.893662736);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 17, 1, 1035.0788436);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 17, 2, 1040.2572458);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 17, 3, 825.57177131);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 17, 4, 794.89309898);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 17, 5, 878.2816888);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 17, 6, 1018.8097943);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 17, 7, 982.11206001);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 17, 8, 1045.1993691);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 17, 9, 1412.5143233);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 17, 10, 889.99665545);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 17, 11, 2033.1347983);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 17, 12, 1796.6079644);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 17, 13, 1846.235372);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 17, 14, 1940.4579057);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 17, 15, 1892.9319033);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 17, 16, 1973.0328878);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 17, 17, 1892.4485586);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 17, 18, 1791.6751478);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 17, 19, 1962.4440701);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 17, 20, 1737.0894565);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 17, 21, 2208.6367898);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 17, 22, 1250.6961389);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 17, 23, 1769.4755836);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 17, 24, 1931.916119);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 17, 25, 2077.7501811);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 17, 26, 1978.3785717);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 17, 27, 1788.4175377);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 17, 28, 1641.4712483);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 17, 29, 1855.3336109);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 17, 30, 1878.6137553);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 17, 410, 1687.882437986);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 18, 1, 3.654657037);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 18, 2, 3.007222001);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 18, 3, 2.912768691);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 18, 4, 2.734888651);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 18, 5, 3.290187655);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 18, 6, 3.330093789);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 18, 7, 3.13027178);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 18, 8, 3.227508302);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 18, 9, 3.401497656);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 18, 10, 3.223642971);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 18, 11, 3.588199612);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 18, 12, 3.192444606);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 18, 13, 3.282333192);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 18, 14, 3.452161893);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 18, 15, 3.325844058);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 18, 16, 3.502572265);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 18, 17, 3.334068863);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 18, 18, 3.183867521);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 18, 19, 3.469951098);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 18, 20, 3.087184881);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 18, 21, 3.836619621);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 18, 22, 2.703270778);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 18, 23, 3.126804481);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 18, 24, 3.436285375);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 18, 25, 3.717455987);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 18, 26, 3.496755558);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 18, 27, 3.155848453);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 18, 28, 2.901981737);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 18, 29, 3.260370628);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 18, 30, 3.312724655);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 18, 410, 3.257776101);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 19, 1, 0.24884843);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 19, 2, 0.115965457);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 19, 3, 0.150512272);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 19, 4, 0.16143479);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 19, 5, 0.125613343);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 19, 6, 0.304267519);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 19, 7, 0.272721958);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 19, 8, 0.114798917);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 19, 9, 0.233746326);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 19, 10, 0.110279232);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 19, 11, 0.328799593);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 19, 12, 0.121883364);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 19, 13, 0.147080097);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 19, 14, 0.149768431);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 19, 15, 0.07803921);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 19, 16, 0.237982505);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 19, 17, 0.130100403);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 19, 18, 0.082018369);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 19, 19, 0.260154491);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 19, 20, 0.240760213);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 19, 21, 0.449585373);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 19, 22, 0.194255613);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 19, 23, 0.058932792);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 19, 24, 0.357911209);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 19, 25, 0.278121137);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 19, 26, 0.17256287);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 19, 27, 0.088312996);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 19, 28, 0.082720025);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 19, 29, 0.242539284);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 19, 30, 0.246679393);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 19, 410, 0.162833342);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 20, 1, 3.405808608);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 20, 2, 2.891256544);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 20, 3, 2.762256419);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 20, 4, 2.573453862);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 20, 5, 3.164574311);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 20, 6, 3.02582627);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 20, 7, 2.857549821);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 20, 8, 3.112709385);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 20, 9, 3.16775133);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 20, 10, 3.11336374);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 20, 11, 3.25940002);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 20, 12, 3.070561242);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 20, 13, 3.135253096);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 20, 14, 3.302393463);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 20, 15, 3.247804848);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 20, 16, 3.264589761);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 20, 17, 3.20396846);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 20, 18, 3.101849153);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 20, 19, 3.209796607);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 20, 20, 2.846424668);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 20, 21, 3.387034248);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 20, 22, 2.509015164);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 20, 23, 3.067871689);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 20, 24, 3.078374165);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 20, 25, 3.43933485);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 20, 26, 3.324192688);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 20, 27, 3.067535458);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 20, 28, 2.819261712);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 20, 29, 3.017831344);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 20, 30, 3.066045262);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 20, 410, 3.094942759);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 31, 1200.4169985);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 32, 1067.9089056);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 33, 913.45570499);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 34, 889.49627728);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 35, 1007.7732573);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 36, 1179.5559015);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 37, 1080.2087348);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 38, 1047.3183248);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 39, 1219.2303752);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 40, 1115.3843192);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 41, 789.58272055);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 42, 707.17284087);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 43, 884.3012694);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 44, 775.91704749);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 45, 751.40935708);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 46, 776.50363839);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 47, 711.31747121);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 48, 735.55279562);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 49, 847.88692186);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 50, 710.70026506);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 51, 727.91123031);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 52, 706.39405682);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 53, 715.61590958);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 54, 1010.5776838);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 55, 938.4664152);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 56, 974.00568244);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 57, 700.71747329);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 58, 641.70597723);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 59, 741.57686599);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 60, 688.10370777);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 61, 517.48892533);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 62, 517.48892533);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 63, 517.48892533);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 64, 517.48892533);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 65, 517.48892533);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 66, 517.48892533);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 67, 517.48892533);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 68, 517.48892533);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 69, 517.48892533);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 70, 517.48892533);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 71, 426.23477648);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 72, 435.66310925);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 73, 593.31403364);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 74, 451.52573597);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 75, 416.34766263);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 76, 371.93507448);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 77, 510.69859774);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 78, 774.54329506);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 79, 424.97831653);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 80, 439.66210181);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 81, 381.61644951);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 82, 368.94331315);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 83, 422.84321463);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 84, 840.61362374);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 85, 592.02792626);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 86, 524.31308449);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 87, 381.25102156);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 88, 432.44813724);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 89, 463.90765766);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 90, 403.30046448);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 91, 454.01356881);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 92, 474.69158955);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 93, 402.13566334);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 94, 411.53294732);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 95, 418.63704936);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 96, 533.37083741);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 97, 512.26303382);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 98, 475.8274628);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 99, 480.16222115);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 100, 490.11275576);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 101, 352.85092878);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 102, 370.13925049);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 103, 689.31009325);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 104, 384.95766277);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 105, 387.82080245);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 106, 369.64421318);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 107, 352.91669477);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 108, 522.00443837);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 109, 444.69355361);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 110, 350.51034485);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 111, 374.36474833);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 112, 374.63816361);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 113, 407.58806577);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 114, 436.62565026);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 115, 420.82385828);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 116, 476.46578809);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 117, 324.77072749);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 118, 387.94387307);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 119, 380.24438311);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 120, 343.10525865);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 121, 515.18251438);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 122, 569.95173158);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 123, 440.17252714);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 124, 419.56697666);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 125, 270.30930556);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 126, 514.62538641);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 127, 739.7483689);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 128, 464.01571079);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 129, 758.14089082);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 130, 367.13618827);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 131, 648.24956772);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 132, 117.8803831);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 133, 859.03848564);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 134, 287.74635187);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 135, 294.61815118);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 136, 211.45447256);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 137, 273.2680187);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 138, 364.63348704);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 139, 837.2448323);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 140, 617.94350382);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 141, 119.53447013);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 142, 595.81213484);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 143, 242.51661654);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 144, 743.53142152);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 145, 520.07794409);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 146, 614.51760284);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 147, 217.09487537);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 148, 132.0184479);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 149, 281.23505397);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 150, 354.52226697);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 151, 967.55503017);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 152, 377.18084913);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 153, 639.51587045);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 154, 496.80352456);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 155, 1075.979117);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 156, 585.05273839);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 157, 280.56271696);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 158, 722.85787856);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 159, 426.47524301);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 160, 733.52078262);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 161, 1371.2816189);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 162, 1561.5890221);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 163, 256.36931022);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 164, 1552.0150953);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 165, 1475.6480849);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 166, 1773.0348666);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 167, 1485.8680808);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 168, 787.13350544);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 169, 915.14747377);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 170, 968.36866517);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 171, 2233.1927226);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 172, 657.48310904);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 173, 1338.2406745);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 174, 404.93699534);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 175, 1246.0598433);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 176, 907.45339981);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 177, 1532.0143558);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 178, 1307.8653013);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 179, 1393.406667);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 180, 1523.6929573);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 211, 32.846228423);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 212, 35.511475546);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 213, 31.360392871);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 214, 32.524039942);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 215, 30.629658947);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 216, 35.421101513);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 217, 34.508464784);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 218, 32.449748434);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 219, 35.843928136);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 220, 34.600119467);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 221, 22.004983162);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 222, 22.1514522);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 223, 26.941240198);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 224, 22.476264771);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 225, 22.593042365);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 226, 22.169525126);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 227, 21.334816418);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 228, 23.102493764);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 229, 24.435125969);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 230, 23.020981655);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 231, 18.972723445);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 232, 26.13108767);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 233, 22.886493669);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 234, 29.409015073);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 235, 25.244856118);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 236, 27.854554497);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 237, 22.203774472);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 238, 22.112681452);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 239, 22.745170739);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 240, 20.771533387);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 241, 14.15971239);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 242, 17.208204952);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 243, 17.766221083);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 244, 18.921754826);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 245, 15.728249561);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 246, 15.539770292);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 247, 16.53175704);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 248, 16.033697728);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 249, 15.213561135);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 250, 16.052923042);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 251, 11.878792222);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 252, 13.646692834);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 253, 18.075984335);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 254, 13.079506405);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 255, 12.518556353);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 256, 10.618912225);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 257, 15.317577971);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 258, 24.327120705);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 259, 12.247386332);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 260, 14.241521606);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 261, 9.946684509);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 262, 13.648033938);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 263, 13.523174129);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 264, 24.462858351);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 265, 15.925620325);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 266, 14.994273287);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 267, 12.080777236);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 268, 14.901821461);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 269, 14.228678596);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 270, 12.174282696);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 271, 12.422877556);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 272, 15.785053094);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 273, 13.805959414);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 274, 15.047521118);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 275, 12.723804637);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 276, 16.016691156);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 277, 16.364810146);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 278, 14.742873395);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 279, 14.116200268);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 280, 15.203692225);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 281, 9.833648261);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 282, 11.59422625);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 283, 21.000613067);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 284, 11.15120538);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 285, 11.660823408);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 286, 10.553507114);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 287, 10.585165132);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 288, 16.395293926);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 289, 12.815556791);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 290, 11.35372057);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 291, 9.757671735);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 292, 13.858699126);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 293, 13.035291086);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 294, 12.706326823);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 295, 11.320210911);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 296, 13.625939252);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 297, 10.291074882);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 298, 13.368239646);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 299, 11.662612216);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 300, 10.357192171);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 301, 14.09660357);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 302, 18.952765421);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 303, 15.111825682);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 304, 15.341281865);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 305, 8.215619713);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 306, 15.453780554);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 307, 23.632081204);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 308, 14.376902159);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 309, 22.288443727);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 310, 11.388860105);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 311, 18.066151211);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 312, 3.692480141);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 313, 26.171580865);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 314, 8.335250801);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 315, 8.858447541);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 316, 6.037119481);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 317, 8.196231989);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 318, 11.452533266);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 319, 24.128433186);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 320, 20.016407429);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 321, 3.115619528);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 322, 22.040416366);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 323, 7.756053121);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 324, 21.637650557);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 325, 13.990157406);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 326, 17.573936545);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 327, 6.879128658);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 328, 4.549251507);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 329, 8.625861476);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 330, 10.7018332);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 331, 26.474578061);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 332, 12.542500986);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 333, 21.95560095);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 334, 18.16540225);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 335, 32.702667142);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 336, 17.568656484);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 337, 8.962886826);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 338, 22.396778284);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 339, 12.537866734);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 340, 22.754405161);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 341, 38.216425144);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 342, 48.915148575);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 343, 7.810581535);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 344, 44.957772643);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 345, 44.369130334);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 346, 50.620936054);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 347, 44.56620849);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 348, 24.722558339);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 349, 26.373497721);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 350, 31.367368739);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 351, 58.207300782);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 352, 24.3217629);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 353, 42.798987996);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 354, 11.784149196);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 355, 33.51915524);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 356, 25.951296419);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 357, 48.545244753);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 358, 45.068005934);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 359, 42.737676974);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 360, 45.995158546);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 383, 814.672814753);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 384, 400.081868932);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 385, 375.707214729);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 386, 1189.758708301);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 388, 477.555494007);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 428, 25.007022876);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 429, 14.658941537);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 430, 12.280827674);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 431, 11.53262849);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 23, 432, 36.520579423);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 24, 31, 1200.4169985);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 24, 32, 1067.9089056);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 24, 33, 913.45570499);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 24, 34, 889.49627728);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 24, 35, 1007.7732573);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 24, 36, 1179.5559015);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 24, 37, 1080.2087348);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 24, 38, 1047.3183248);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 24, 39, 1219.2303752);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 24, 40, 1115.3843192);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 24, 41, 789.58272055);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 24, 42, 707.17284087);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 24, 43, 884.3012694);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 24, 44, 775.91704749);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 24, 45, 751.40935708);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 24, 46, 776.50363839);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 24, 47, 711.31747121);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 24, 48, 735.55279562);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 24, 49, 847.88692186);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 24, 50, 710.70026506);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 24, 51, 727.91123031);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 24, 52, 706.39405682);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 24, 53, 715.61590958);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 24, 54, 1010.5776838);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 24, 55, 938.4664152);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 24, 56, 974.00568244);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 24, 57, 700.71747329);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 24, 58, 641.70597723);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 24, 59, 741.57686599);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 24, 60, 688.10370777);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 24, 61, 517.48892533);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 24, 62, 517.48892533);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 24, 63, 517.48892533);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 24, 64, 517.48892533);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 24, 65, 517.48892533);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 24, 66, 517.48892533);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 24, 67, 517.48892533);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 24, 68, 517.48892533);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 24, 69, 517.48892533);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 24, 70, 517.48892533);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 24, 71, 426.23477648);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 24, 72, 435.66310925);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 24, 73, 593.31403364);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 24, 74, 451.52573597);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 24, 75, 416.34766263);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 24, 76, 371.93507448);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 24, 77, 510.69859774);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 24, 78, 774.54329506);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 24, 79, 424.97831653);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 24, 80, 439.66210181);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 24, 81, 381.61644951);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 24, 82, 368.94331315);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 24, 83, 422.84321463);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 24, 84, 840.61362374);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 24, 85, 592.02792626);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 24, 86, 524.31308449);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 24, 87, 381.25102156);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 24, 88, 432.44813724);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 24, 89, 463.90765766);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 24, 90, 403.30046448);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 24, 91, 454.01356881);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 24, 92, 474.69158955);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 24, 93, 402.13566334);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 24, 94, 411.53294732);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 24, 95, 418.63704936);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 24, 96, 533.37083741);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 24, 97, 512.26303382);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 24, 98, 475.8274628);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 24, 99, 480.16222115);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 24, 100, 490.11275576);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 24, 101, 352.85092878);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 24, 102, 370.13925049);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 24, 103, 689.31009325);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 24, 104, 384.95766277);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 24, 105, 387.82080245);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 24, 106, 369.64421318);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 24, 107, 352.91669477);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 24, 108, 522.00443837);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 24, 109, 444.69355361);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 24, 110, 350.51034485);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 24, 111, 374.36474833);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 24, 112, 374.63816361);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 24, 113, 407.58806577);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 24, 114, 436.62565026);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 24, 115, 420.82385828);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 24, 116, 476.46578809);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 24, 117, 324.77072749);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 24, 118, 387.94387307);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 24, 119, 380.24438311);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 24, 120, 343.10525865);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 24, 181, 3654.6570372);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 24, 182, 3007.2220011);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 24, 183, 2912.7686912);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 24, 184, 2734.8886512);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 24, 185, 3290.1876546);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 24, 186, 3330.0937891);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 24, 187, 3130.2717798);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 24, 188, 3227.5083022);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 24, 189, 3401.4976555);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 24, 190, 3223.6429712);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 24, 191, 3588.1996124);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 24, 192, 3192.4446058);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 24, 193, 3282.3331921);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 24, 194, 3452.1618934);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 24, 195, 3325.8440583);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 24, 196, 3502.5722652);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 24, 197, 3334.0688632);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 24, 198, 3183.8675215);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 24, 199, 3469.9510981);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 24, 200, 3087.1848807);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 24, 201, 3836.6196209);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 24, 202, 2703.2707775);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 24, 203, 3126.804481);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 24, 204, 3436.2853747);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 24, 205, 3717.4559871);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 24, 206, 3496.7555577);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 24, 207, 3155.8484535);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 24, 208, 2901.9817367);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 24, 209, 3260.3706278);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 24, 210, 3312.7246552);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 24, 383, 814.672814753);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 24, 384, 400.081868932);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 24, 388, 477.555494007);
INSERT INTO `value` (`dataset_id`, `indicator_id`, `profile_id`, `value`) VALUES
	(2, 24, 427, 3257.776100722);
/*!40000 ALTER TABLE `value` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
