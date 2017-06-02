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
  `nama` varchar(200) DEFAULT NULL,
  `perusahaan` varchar(200) DEFAULT NULL,
  `pic` varchar(200) DEFAULT NULL,
  `no_telp` int(11) DEFAULT NULL,
  `keperluan` text,
  `tgl_jam_masuk` datetime DEFAULT NULL,
  `tgl_jam_keluar` datetime DEFAULT NULL,
  `status_check` enum('1','0') DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `tamu` */

insert  into `tamu`(`id`,`nama`,`perusahaan`,`pic`,`no_telp`,`keperluan`,`tgl_jam_masuk`,`tgl_jam_keluar`,`status_check`) values (8,'Septian Dwijoko','UT','Septian',123,'123','2017-06-02 14:26:02','0000-00-00 00:00:00','1');

/*Table structure for table `test_event` */

DROP TABLE IF EXISTS `test_event`;

CREATE TABLE `test_event` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tgl_jam_keluar` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `test_event` */

insert  into `test_event`(`id`,`tgl_jam_keluar`) values (1,'2017-06-02 09:58:54'),(2,'2017-06-02 09:59:54'),(3,'2017-06-02 10:00:54'),(4,'2017-06-02 10:01:53'),(5,'2017-06-02 10:02:53'),(6,'2017-06-02 10:03:53'),(7,'2017-06-02 10:04:53'),(8,'2017-06-02 10:05:53');

/*!50106 set global event_scheduler = 1*/;

/* Event structure for event `auto_checkout` */

/*!50106 DROP EVENT IF EXISTS `auto_checkout`*/;

DELIMITER $$

/*!50106 CREATE DEFINER=`root`@`localhost` EVENT `auto_checkout` ON SCHEDULE EVERY 1 DAY STARTS '2017-06-02 23:00:00' ON COMPLETION NOT PRESERVE ENABLE DO UPDATE tamu
SET tgl_jam_keluar = NOW(), status_check = '0'
WHERE status_check = '1' */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
