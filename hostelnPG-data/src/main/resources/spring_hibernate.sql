/*
SQLyog Job Agent Version 8.14 Copyright(c) Webyog Softworks Pvt. Ltd. All Rights Reserved.


MySQL - 5.1.30-community : Database - spring_hibernate
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`spring_hibernate` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `spring_hibernate`;

/*Table structure for table `area` */

DROP TABLE IF EXISTS `area`;

CREATE TABLE `area` (
  `area_id` int(11) NOT NULL AUTO_INCREMENT,
  `area_name` varchar(255) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`area_id`)
) ENGINE=InnoDB AUTO_INCREMENT=204 DEFAULT CHARSET=latin1;

/*Data for the table `area` */

insert  into `area`(`area_id`,`area_name`,`city_id`) values (201,'vijaynagar',1),(202,'geeta Bhawan',1),(203,'Palasia',1);

/*Table structure for table `city` */

DROP TABLE IF EXISTS `city`;

CREATE TABLE `city` (
  `city_id` int(11) NOT NULL AUTO_INCREMENT,
  `city_name` varchar(255) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`city_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `city` */

insert  into `city`(`city_id`,`city_name`,`country_id`) values (1,'indore',2),(2,'bhopal',2),(3,'NY',1),(4,'new jercey',1);

/*Table structure for table `country` */

DROP TABLE IF EXISTS `country`;

CREATE TABLE `country` (
  `country_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `country` */

insert  into `country`(`country_id`,`country_name`) values (1,'U.S'),(2,'India');

/*Table structure for table `countrylist` */

DROP TABLE IF EXISTS `countrylist`;

CREATE TABLE `countrylist` (
  `country_id` int(20) DEFAULT NULL,
  `country_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `countrylist` */

insert  into `countrylist`(`country_id`,`country_name`) values (1,'India'),(2,'U.S');

/*Table structure for table `hostelnpg` */

DROP TABLE IF EXISTS `hostelnpg`;

CREATE TABLE `hostelnpg` (
  `hostel_id` int(11) NOT NULL AUTO_INCREMENT,
  `Area` varchar(255) DEFAULT NULL,
  `accommodation_type` varchar(255) DEFAULT NULL,
  `City` varchar(255) DEFAULT NULL,
  `Country` varchar(255) DEFAULT NULL,
  `hostel_gender` varchar(255) DEFAULT NULL,
  `hostel_name` varchar(255) DEFAULT NULL,
  `sharing_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`hostel_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `hostelnpg` */

insert  into `hostelnpg`(`hostel_id`,`Area`,`accommodation_type`,`City`,`Country`,`hostel_gender`,`hostel_name`,`sharing_type`) values (1,'palasia','Hostel','indore','India','Male','ShreeNarayan Seva','YES'),(2,'Geeta Bhawan','PG','indore','India','Male','AS Hostel','NO'),(3,'Annpurna','Hostel','bhopal','India','Female','Shakti Hostel','NO');

/*Table structure for table `registration` */

DROP TABLE IF EXISTS `registration`;

CREATE TABLE `registration` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `usertype` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `registration` */

insert  into `registration`(`userid`,`email`,`firstname`,`lastname`,`mobile`,`password`,`usertype`) values (1,'abhi@gmail.com','abhishek','chouhan','2','123',NULL),(2,'prasoon@gmail.com','prasoon','singh','1','321',NULL),(3,'abhi@gmail.com','abhishek','chouhan','7896541230','34555','HostelSeeker'),(4,'somil@gmail.com','somil','jain','9874562030','dfnsd','ServiceProvider');

/*Table structure for table `registration_userdetails` */

DROP TABLE IF EXISTS `registration_userdetails`;

CREATE TABLE `registration_userdetails` (
  `registration_userid` int(11) NOT NULL,
  `userDetails_ID` int(11) NOT NULL,
  UNIQUE KEY `userDetails_ID` (`userDetails_ID`),
  KEY `FK60263591E230EB4E` (`registration_userid`),
  KEY `FK60263591EB67D8BC` (`userDetails_ID`),
  CONSTRAINT `FK60263591E230EB4E` FOREIGN KEY (`registration_userid`) REFERENCES `registration` (`userid`),
  CONSTRAINT `FK60263591EB67D8BC` FOREIGN KEY (`userDetails_ID`) REFERENCES `userdetails` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `registration_userdetails` */

/*Table structure for table `userdetails` */

DROP TABLE IF EXISTS `userdetails`;

CREATE TABLE `userdetails` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `mobile` bigint(20) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `ID` int(11) NOT NULL,
  `expertise` varchar(255) DEFAULT NULL,
  `qualification` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `userdetails` */

insert  into `userdetails`(`userid`,`email`,`firstname`,`lastname`,`mobile`,`password`,`ID`,`expertise`,`qualification`) values (1,'abhi','abhishek','chouhan',92626,'123',0,NULL,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
