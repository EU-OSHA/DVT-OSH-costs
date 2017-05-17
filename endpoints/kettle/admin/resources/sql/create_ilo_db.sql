----------------
--  Database  --
----------------
DROP DATABASE IF EXISTS `osha_dvt_ilo`;
CREATE DATABASE IF NOT EXISTS `osha_dvt_ilo` character set "utf8";
USE `osha_dvt_ilo`;


--------------
--  Tables  --
--------------
DROP TABLE IF EXISTS `charts`;
CREATE TABLE IF NOT EXISTS `charts` (
  `CHART_ID` double DEFAULT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  `RELATED_CHARTS` varchar(255) DEFAULT NULL,
  `INDICATOR_ID` double DEFAULT NULL,
  `CHART_SHORT_TITLE` varchar(255) DEFAULT NULL,
  `CHART_LONG_TITLE` varchar(255) DEFAULT NULL,
  `CARROUSEL_TITLE` varchar(255) DEFAULT NULL,
  `VISUALISED` bit(1) DEFAULT NULL,
  `RELATED_MESSAGE` varchar(1000) DEFAULT NULL,
  `RELATED_MESSAGE_EURO` varchar(1000) DEFAULT NULL,
  `X_AXIS` varchar(255) DEFAULT NULL,
  `Y_AXIS` varchar(255) DEFAULT NULL,
  `Y_AXIS_EURO` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `fact_figures`;
CREATE TABLE IF NOT EXISTS `fact_figures` (
  `INDICATOR_ID` smallint(6) DEFAULT NULL,
  `SPLIT_1` varchar(255) DEFAULT NULL,
  `SPLIT_2` varchar(255) DEFAULT NULL,
  `SPLIT_3` varchar(255) DEFAULT NULL,
  `STATUS` varchar(255) DEFAULT NULL,
  `GLOBAL_ESTIMATE` double DEFAULT NULL,
  `HIGH` double DEFAULT NULL,
  `AFRO` double DEFAULT NULL,
  `AMRO` double DEFAULT NULL,
  `EMRO` double DEFAULT NULL,
  `EURO` double DEFAULT NULL,
  `SEARO` double DEFAULT NULL,
  `WPRO` double DEFAULT NULL,
  `EU28` double DEFAULT NULL,
  `Bulgaria` double DEFAULT NULL,
  `Croatia` double DEFAULT NULL,
  `Czech Republic` double DEFAULT NULL,
  `Estonia` double DEFAULT NULL,
  `Hungary` double DEFAULT NULL,
  `Latvia` double DEFAULT NULL,
  `Lithuania` double DEFAULT NULL,
  `Poland` double DEFAULT NULL,
  `Romania` double DEFAULT NULL,
  `Slovakia` double DEFAULT NULL,
  `Austria` double DEFAULT NULL,
  `Belgium` double DEFAULT NULL,
  `Cyprus` double DEFAULT NULL,
  `Denmark` double DEFAULT NULL,
  `Finland` double DEFAULT NULL,
  `France` double DEFAULT NULL,
  `Germany` double DEFAULT NULL,
  `Greece` double DEFAULT NULL,
  `Ireland` double DEFAULT NULL,
  `Italy` double DEFAULT NULL,
  `Luxembourg` double DEFAULT NULL,
  `Malta` double DEFAULT NULL,
  `Netherlands` double DEFAULT NULL,
  `Portugal` double DEFAULT NULL,
  `Slovenia` double DEFAULT NULL,
  `Spain` double DEFAULT NULL,
  `Sweden` double DEFAULT NULL,
  `United Kingdom` double DEFAULT NULL,
  `Iceland` double DEFAULT NULL,
  `Norway` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `glossary`;
CREATE TABLE IF NOT EXISTS `glossary` (
  `TERM_ID` double DEFAULT NULL,
  `TERM_NAME` varchar(255) DEFAULT NULL,
  `DESCRIPTION` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `indicators`;
CREATE TABLE IF NOT EXISTS `indicators` (
  `INDICATOR_ID` double DEFAULT NULL,
  `INDICATOR_NAME` varchar(255) DEFAULT NULL,
  `SOURCE` varchar(255) DEFAULT NULL,
  `YEAR` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `regions_countries`;
CREATE TABLE IF NOT EXISTS `regions_countries` (
  `ID` int(11) DEFAULT NULL,
  `REGION` varchar(255) DEFAULT NULL,
  `COUNTRY` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
