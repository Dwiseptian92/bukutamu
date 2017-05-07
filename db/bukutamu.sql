/*
SQLyog Ultimate v11.2 (64 bit)
MySQL - 5.6.20 : Database - bukutamu
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`bukutamu` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `bukutamu`;

/*Table structure for table `tamu` */

DROP TABLE IF EXISTS `tamu`;

CREATE TABLE `tamu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_ktp` int(11) DEFAULT NULL,
  `nama` varchar(200) DEFAULT NULL,
  `perusahaan` varchar(200) DEFAULT NULL,
  `pic` varchar(200) DEFAULT NULL,
  `no_telp` int(11) DEFAULT NULL,
  `keperluan` text,
  `tgl_jam_masuk` datetime DEFAULT NULL,
  `tgl_jam_keluar` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tamu` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;