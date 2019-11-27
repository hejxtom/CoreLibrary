/*
SQLyog Ultimate v12.5.0 (64 bit)
MySQL - 5.7.18-log : Database - ssm_studentword
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssm_studentword` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssm_studentword`;

/*Table structure for table `tbl_class` */

DROP TABLE IF EXISTS `tbl_class`;

CREATE TABLE `tbl_class` (
  `class_id` int(255) NOT NULL AUTO_INCREMENT,
  `class_name` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`class_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `tbl_class` */

insert  into `tbl_class`(`class_id`,`class_name`) values 
(1,'软件1717'),
(2,'软件1718'),
(3,'软件1719');

/*Table structure for table `tbl_edit` */

DROP TABLE IF EXISTS `tbl_edit`;

CREATE TABLE `tbl_edit` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `word_id` varchar(1000) DEFAULT NULL,
  `stus_id` varchar(1000) DEFAULT NULL,
  `edit` varchar(1000) DEFAULT NULL,
  `test` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

/*Data for the table `tbl_edit` */

insert  into `tbl_edit`(`id`,`word_id`,`stus_id`,`edit`,`test`) values 
(37,'13','1','T','平时作业.txt'),
(38,'13','55','T','ssm-crud.rar');

/*Table structure for table `tbl_student` */

DROP TABLE IF EXISTS `tbl_student`;

CREATE TABLE `tbl_student` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `stu_id` varchar(1000) DEFAULT NULL,
  `stu_name` varchar(1000) DEFAULT NULL,
  `sex` varchar(500) DEFAULT NULL,
  `age` varchar(255) DEFAULT NULL,
  `phone` varchar(1000) DEFAULT NULL,
  `stu_user` varchar(1000) DEFAULT NULL,
  `stu_pass` varchar(1000) DEFAULT NULL,
  `class_id` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `stu_cla` (`class_id`),
  CONSTRAINT `stu_cla` FOREIGN KEY (`class_id`) REFERENCES `tbl_class` (`class_id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;

/*Data for the table `tbl_student` */

insert  into `tbl_student`(`id`,`stu_id`,`stu_name`,`sex`,`age`,`phone`,`stu_user`,`stu_pass`,`class_id`) values 
(1,'2017000006','8320cb','M','20','13999999991','aaaaaa','123456',1),
(2,'2017000007','028d66','M','20','13999999999','028d67','123457',2),
(3,'2017000008','466398','M','20','13999999999','466398','123456',3),
(4,'2017000009','86b179','M','20','13999999999','86b179','123456',3),
(5,'2017000011','3c51211','M','20','13999999999','3c51211','123457',3),
(6,'2017000012','c47e212','M','20','13999999999','c47e212','123456',3),
(7,'2017000013','a5f3f13','M','20','13999999999','a5f3f13','123456',2),
(8,'2017000014','b15c814','M','20','13999999999','b15c814','123456',2),
(9,'2017000015','c60fb15','M','20','13999999999','c60fb15','123456',2),
(10,'2017000016','f108b16','M','20','13999999999','f108b16','123456',1),
(11,'2017000017','a940317','M','20','13999999999','a940317','123456',1),
(12,'2017000018','58b7418','M','20','13999999999','58b7418','123456',1),
(13,'2017000019','76ab319','M','20','13999999999','76ab319','123456',1),
(14,'2017000020','bfea220','M','20','13999999999','bfea220','123456',1),
(15,'2017000021','09ccb21','M','20','13999999999','09ccb21','123456',1),
(16,'2017000022','bfdc022','M','20','13999999999','bfdc022','123456',1),
(17,'2017000023','bbd9e23','M','20','13999999999','bbd9e23','123456',1),
(18,'2017000024','0db9024','M','20','13999999999','0db9024','123456',1),
(19,'2017000025','b269a25','M','20','13999999999','b269a25','123456',1),
(20,'2017000026','f4db826','M','20','13999999999','f4db826','123456',1),
(21,'2017000027','0cc0c27','M','20','13999999999','0cc0c27','123456',1),
(22,'2017000028','c18b228','M','20','13999999999','c18b228','123456',1),
(23,'2017000029','4eac729','M','20','13999999999','4eac729','123456',1),
(24,'2017000030','75e6e30','M','20','13999999999','75e6e30','123456',1),
(25,'2017000031','f3ac331','M','20','13999999999','f3ac331','123456',1),
(26,'2017000032','9925a32','M','20','13999999999','9925a32','123456',1),
(27,'2017000033','b182933','M','20','13999999999','b182933','123456',1),
(28,'2017000034','12aba34','M','20','13999999999','12aba34','123456',1),
(29,'2017000035','c580735','M','20','13999999999','c580735','123456',1),
(30,'2017000036','f167136','M','20','13999999999','f167136','123456',1),
(31,'2017000037','ccc8537','M','20','13999999999','ccc8537','123456',1),
(32,'2017000038','cccbc38','M','20','13999999999','cccbc38','123456',1),
(33,'2017000039','8ca5139','M','20','13999999999','8ca5139','123456',1),
(34,'2017000040','68be940','M','20','13999999999','68be940','123456',1),
(35,'2017000041','bdf6241','M','20','13999999999','bdf6241','123456',1),
(36,'2017000042','34f9042','M','20','13999999999','34f9042','123456',1),
(37,'2017000043','9fbad43','M','20','13999999999','9fbad43','123456',1),
(38,'2017000044','5516844','M','20','13999999999','5516844','123456',1),
(39,'2017000045','7c61245','M','20','13999999999','7c61245','123456',1),
(40,'2017000046','fb2d046','M','20','13999999999','fb2d046','123456',1),
(42,'2017010189','tom','M','20','13999999911','wwwwww','123456',1),
(46,'2017070189','qwerty','M','20','13999999911','qwerty','123456',1),
(47,'2017090189','uiopas','M','20','13999999911','uiopas','123456',1),
(48,'2017110189','zxcvbn','M','20','13999999911','zxcvbn','123456',1),
(49,'2017040189','asdfgh','M','20','13999999911','asdfgh','123456',2),
(50,'2017120189','eeeeee','M','20','13999999911','eeeeee','123456',2),
(51,'2017130869','fffeee','F','20','13999999911','fffeee','123456',1),
(52,'2017090869','qqqppp','M','20','13999999922','qqqppp','123456',1),
(53,'2017090669','mmmnnn','M','20','13999999911','mmmnnn','mmmnnn',1),
(54,'2017111169','rrrttt','M','20','13999999911','rrrttt','rrrttt',3),
(55,'2017222269','uuuiii','M','20','13999999911','uuuiii','uuuiii',1);

/*Table structure for table `tbl_sys` */

DROP TABLE IF EXISTS `tbl_sys`;

CREATE TABLE `tbl_sys` (
  `sys_id` int(255) NOT NULL AUTO_INCREMENT,
  `sys_user` varchar(1000) DEFAULT NULL,
  `sys_pass` varchar(1000) DEFAULT NULL,
  `word_id` int(255) DEFAULT NULL,
  PRIMARY KEY (`sys_id`),
  KEY `sys_word` (`word_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `tbl_sys` */

insert  into `tbl_sys`(`sys_id`,`sys_user`,`sys_pass`,`word_id`) values 
(1,'admin','admin',1);

/*Table structure for table `tbl_word` */

DROP TABLE IF EXISTS `tbl_word`;

CREATE TABLE `tbl_word` (
  `word_id` int(255) NOT NULL AUTO_INCREMENT,
  `word_name` varchar(1000) DEFAULT NULL,
  `class_id` int(255) DEFAULT NULL,
  PRIMARY KEY (`word_id`),
  KEY `word_class` (`class_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

/*Data for the table `tbl_word` */

insert  into `tbl_word`(`word_id`,`word_name`,`class_id`) values 
(13,'平时作业',1),
(14,'毕业设计',2);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
