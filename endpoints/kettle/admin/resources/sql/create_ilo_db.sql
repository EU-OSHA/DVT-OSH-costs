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

-- Volcando estructura para tabla osha_dvt_ilo.tool
DROP TABLE IF EXISTS `tool`;
CREATE TABLE IF NOT EXISTS `tool` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla osha_dvt_ilo.tool: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tool` DISABLE KEYS */;
/*!40000 ALTER TABLE `tool` ENABLE KEYS */;

-- Volcando estructura para tabla osha_dvt_ilo.dataset
DROP TABLE IF EXISTS `dataset`;
CREATE TABLE IF NOT EXISTS `dataset` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '0',
  `source` varchar(100) NOT NULL DEFAULT '0',
  `date_from` date DEFAULT NULL,
  `date_to` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla osha_dvt_ilo.dataset: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `dataset` DISABLE KEYS */;
/*!40000 ALTER TABLE `dataset` ENABLE KEYS */;

-- Volcando estructura para tabla osha_dvt_ilo.section
DROP TABLE IF EXISTS `section`;
CREATE TABLE IF NOT EXISTS `section` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tool_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Tool_ID` (`tool_id`),
  CONSTRAINT `Tool_ID` FOREIGN KEY (`Tool_ID`) REFERENCES `tool` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla osha_dvt_ilo.section: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `section` DISABLE KEYS */;
/*!40000 ALTER TABLE `section` ENABLE KEYS */;

-- Volcando estructura para tabla osha_dvt_ilo.chart
DROP TABLE IF EXISTS `chart`;
CREATE TABLE IF NOT EXISTS `chart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `section_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `section_id` (`section_id`),
  CONSTRAINT `section_id` FOREIGN KEY (`section_id`) REFERENCES `section` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla osha_dvt_ilo.chart: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `chart` DISABLE KEYS */;
/*!40000 ALTER TABLE `chart` ENABLE KEYS */;

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
  CONSTRAINT `literal_section_id` FOREIGN KEY (`section_id`) REFERENCES `section` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla osha_dvt_ilo.literal: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `literal` DISABLE KEYS */;
/*!40000 ALTER TABLE `literal` ENABLE KEYS */;

-- Volcando estructura para tabla osha_dvt_ilo.country_group
DROP TABLE IF EXISTS `country_group`;
CREATE TABLE IF NOT EXISTS `country_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `literal_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(100) NOT NULL,
  `short_name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `country_group_literal_id` (`literal_id`),
  CONSTRAINT `country_group_literal_id` FOREIGN KEY (`literal_id`) REFERENCES `literal` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla osha_dvt_ilo.country_group: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `country_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `country_group` ENABLE KEYS */;

-- Volcando estructura para tabla osha_dvt_ilo.glossary
DROP TABLE IF EXISTS `glossary`;
CREATE TABLE IF NOT EXISTS `glossary` (
  `term_literal_id` int(11) NOT NULL,
  `description_literal_id` int(11) NOT NULL,
  PRIMARY KEY (`term_literal_id`,`description_literal_id`),
  KEY `description_literal_id` (`description_literal_id`),
  CONSTRAINT `description_literal_id` FOREIGN KEY (`description_literal_id`) REFERENCES `literal` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `term_literal_id` FOREIGN KEY (`term_literal_id`) REFERENCES `literal` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla osha_dvt_ilo.glossary: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `glossary` DISABLE KEYS */;
/*!40000 ALTER TABLE `glossary` ENABLE KEYS */;

-- Volcando estructura para tabla osha_dvt_ilo.indicator
DROP TABLE IF EXISTS `indicator`;
CREATE TABLE IF NOT EXISTS `indicator` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `literal_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `indicator_literal_id` (`literal_id`),
  CONSTRAINT `indicator_literal_id` FOREIGN KEY (`literal_id`) REFERENCES `literal` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla osha_dvt_ilo.indicator: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `indicator` DISABLE KEYS */;
/*!40000 ALTER TABLE `indicator` ENABLE KEYS */;

-- Volcando estructura para tabla osha_dvt_ilo.indicators_in_dataset
DROP TABLE IF EXISTS `indicators_in_dataset`;
CREATE TABLE IF NOT EXISTS `indicators_in_dataset` (
  `indicator_id` int(11) NOT NULL,
  `dataset_id` int(11) NOT NULL,
  PRIMARY KEY (`indicator_id`,`dataset_id`),
  KEY `indicator_dataset_dataset_id` (`dataset_id`),
  CONSTRAINT `indicator_dataset_dataset_id` FOREIGN KEY (`dataset_id`) REFERENCES `dataset` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `indicator_dataset_indicator_id` FOREIGN KEY (`indicator_id`) REFERENCES `indicator` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla osha_dvt_ilo.indicators_in_dataset: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `indicators_in_dataset` DISABLE KEYS */;
/*!40000 ALTER TABLE `indicators_in_dataset` ENABLE KEYS */;

-- Volcando estructura para tabla osha_dvt_ilo.indicators_by_chart
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

-- Volcando datos para la tabla osha_dvt_ilo.indicators_by_chart: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `indicators_by_chart` DISABLE KEYS */;
/*!40000 ALTER TABLE `indicators_by_chart` ENABLE KEYS */;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla osha_dvt_ilo.nuts: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `nuts` DISABLE KEYS */;
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

-- Volcando datos para la tabla osha_dvt_ilo.nuts_by_country_group: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `nuts_by_country_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `nuts_by_country_group` ENABLE KEYS */;

-- Volcando estructura para tabla osha_dvt_ilo.split_currency
DROP TABLE IF EXISTS `split_currency`;
CREATE TABLE IF NOT EXISTS `split_currency` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `literal_id` int(11) NOT NULL,
  `symbol` char(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `currency_literal_id` (`literal_id`),
  CONSTRAINT `currency_literal_id` FOREIGN KEY (`literal_id`) REFERENCES `literal` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla osha_dvt_ilo.split_currency: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `split_currency` DISABLE KEYS */;
/*!40000 ALTER TABLE `split_currency` ENABLE KEYS */;

-- Volcando estructura para tabla osha_dvt_ilo.split_illness
DROP TABLE IF EXISTS `split_illness`;
CREATE TABLE IF NOT EXISTS `split_illness` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `literal_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `illness_literal_id` (`literal_id`),
  CONSTRAINT `illness_literal_id` FOREIGN KEY (`literal_id`) REFERENCES `literal` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla osha_dvt_ilo.split_illness: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `split_illness` DISABLE KEYS */;
/*!40000 ALTER TABLE `split_illness` ENABLE KEYS */;

-- Volcando estructura para tabla osha_dvt_ilo.split_subindicator
DROP TABLE IF EXISTS `split_subindicator`;
CREATE TABLE IF NOT EXISTS `split_subindicator` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `literal_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `subindicator_literal_id` (`literal_id`),
  CONSTRAINT `subindicator_literal_id` FOREIGN KEY (`literal_id`) REFERENCES `literal` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla osha_dvt_ilo.split_subindicator: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `split_subindicator` DISABLE KEYS */;
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

-- Volcando datos para la tabla osha_dvt_ilo.term_synonym: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `term_synonym` DISABLE KEYS */;
/*!40000 ALTER TABLE `term_synonym` ENABLE KEYS */;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla osha_dvt_ilo.translation: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `translation` DISABLE KEYS */;
/*!40000 ALTER TABLE `translation` ENABLE KEYS */;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla osha_dvt_ilo.profile: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `profile` DISABLE KEYS */;
/*!40000 ALTER TABLE `profile` ENABLE KEYS */;

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
  CONSTRAINT `value_dataset_id` FOREIGN KEY (`dataset_id`) REFERENCES `dataset` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `value_indicator_id` FOREIGN KEY (`indicator_id`) REFERENCES `indicator` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `value_profile_id` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla osha_dvt_ilo.value: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `value` DISABLE KEYS */;
/*!40000 ALTER TABLE `value` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
