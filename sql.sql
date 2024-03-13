/*
SQLyog Community v13.1.6 (64 bit)
MySQL - 5.7.9 : Database - hr_management
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`hr_management` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `hr_management`;

/*Table structure for table `attendance` */

DROP TABLE IF EXISTS `attendance`;

CREATE TABLE `attendance` (
  `attendance_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) DEFAULT NULL,
  `hr_id` int(100) DEFAULT NULL,
  `in_time` varchar(100) DEFAULT NULL,
  `out_time` varchar(100) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`attendance_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

/*Data for the table `attendance` */

insert  into `attendance`(`attendance_id`,`employee_id`,`hr_id`,`in_time`,`out_time`,`date`) values 
(1,1,1,'17:37','17:38','2023-02-16'),
(2,1,1,'23:32','23:32','2023-02-16'),
(4,1,1,'0','0','2023-09-01'),
(5,3,1,'09:00','06:00','2023-08-31'),
(6,1,1,'09:00','06:00','2023-08-26'),
(7,3,1,'09:00','06:00','2023-08-26'),
(8,4,1,'09:00','06:00','2023-08-26'),
(9,1,1,'09:00','06:00','2023-08-31'),
(10,3,1,'0','0','2023-08-17'),
(11,4,1,'09:00','06:00','2023-08-17');

/*Table structure for table `benefits` */

DROP TABLE IF EXISTS `benefits`;

CREATE TABLE `benefits` (
  `benefits_id` int(11) NOT NULL AUTO_INCREMENT,
  `designation_id` int(11) DEFAULT NULL,
  `benefits` varchar(100) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`benefits_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `benefits` */

insert  into `benefits`(`benefits_id`,`designation_id`,`benefits`,`description`) values 
(1,1,'dfghjkl;','asdtyuio');

/*Table structure for table `designation` */

DROP TABLE IF EXISTS `designation`;

CREATE TABLE `designation` (
  `designation_id` int(11) NOT NULL AUTO_INCREMENT,
  `designation` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`designation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `designation` */

insert  into `designation`(`designation_id`,`designation`) values 
(1,'sdfghjkl;'),
(2,'sdfghjkl;');

/*Table structure for table `employee` */

DROP TABLE IF EXISTS `employee`;

CREATE TABLE `employee` (
  `employee_id` int(11) NOT NULL AUTO_INCREMENT,
  `login_id` int(11) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `place` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `qualification` varchar(100) DEFAULT NULL,
  `salary` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`employee_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `employee` */

insert  into `employee`(`employee_id`,`login_id`,`first_name`,`last_name`,`place`,`phone`,`email`,`qualification`,`salary`) values 
(1,11,'werty','werty1','aserty1','1234567891','qwert1@gmail.com','bca1',NULL),
(3,12,'user','qwerty','kerala','02345678907','student@gmail.com','mca',NULL),
(4,13,'res','hsgda','ernakaulam','2345678907','student@gmail.com','bca','10000');

/*Table structure for table `event` */

DROP TABLE IF EXISTS `event`;

CREATE TABLE `event` (
  `event_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `venu` varchar(100) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `event` */

insert  into `event`(`event_id`,`title`,`venu`,`date`,`description`,`status`) values 
(1,'asdfgh','wertyu1','2023-02-26','qwerasdfgh1','participants');

/*Table structure for table `feedback` */

DROP TABLE IF EXISTS `feedback`;

CREATE TABLE `feedback` (
  `feedback_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) DEFAULT NULL,
  `feedback` varchar(100) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`feedback_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `feedback` */

insert  into `feedback`(`feedback_id`,`employee_id`,`feedback`,`date`) values 
(1,1,'bad','2023-02-16');

/*Table structure for table `hr` */

DROP TABLE IF EXISTS `hr`;

CREATE TABLE `hr` (
  `hr_id` int(11) NOT NULL AUTO_INCREMENT,
  `login_id` int(11) DEFAULT NULL,
  `fname` varchar(100) DEFAULT NULL,
  `lname` varchar(100) DEFAULT NULL,
  `place` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `qualification` varchar(100) DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `gender` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`hr_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `hr` */

insert  into `hr`(`hr_id`,`login_id`,`fname`,`lname`,`place`,`phone`,`email`,`qualification`,`dob`,`gender`) values 
(1,8,'user1',' qwerty 1',' kerala1',' 023456789','student1@gmail.com','  mca','2023-02-01','female'),
(3,14,'fds','dzf','jhfx','4687468446','student@gmail.com','34','2023-08-26','male');

/*Table structure for table `leaveapplication` */

DROP TABLE IF EXISTS `leaveapplication`;

CREATE TABLE `leaveapplication` (
  `leave_app_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) DEFAULT NULL,
  `applied_date` varchar(100) DEFAULT NULL,
  `applied_to_date` varchar(100) DEFAULT NULL,
  `no_of_days` varchar(100) DEFAULT NULL,
  `reason` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`leave_app_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `leaveapplication` */

insert  into `leaveapplication`(`leave_app_id`,`employee_id`,`applied_date`,`applied_to_date`,`no_of_days`,`reason`,`status`) values 
(1,1,'2023-02-25','2023-03-03','30','reason','reject'),
(4,1,'2023-03-10','2023-02-27','3','reasons','Accept'),
(5,1,'2023-02-24','2023-02-26','3','2','pending');

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `login_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `usertype` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`login_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

/*Data for the table `login` */

insert  into `login`(`login_id`,`username`,`password`,`usertype`) values 
(1,'admin','admin','admin'),
(10,'helloasdfgh','ASDFGH','EMPLOYEE'),
(9,'sdfghasdfg','asdfghjk','hr'),
(8,'hai','hai','hr'),
(11,'emp','emp','employee'),
(12,'e','e','employee'),
(13,'res','res','employee'),
(14,'teacher','ea','pending');

/*Table structure for table `notification` */

DROP TABLE IF EXISTS `notification`;

CREATE TABLE `notification` (
  `notification_id` int(11) NOT NULL AUTO_INCREMENT,
  `notification` varchar(100) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`notification_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `notification` */

insert  into `notification`(`notification_id`,`notification`,`date`) values 
(1,'asdfgh','2023-02-16'),
(2,'good','2023-08-17');

/*Table structure for table `overtime` */

DROP TABLE IF EXISTS `overtime`;

CREATE TABLE `overtime` (
  `overtime_id` int(11) NOT NULL AUTO_INCREMENT,
  `extra_hour` varchar(100) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`overtime_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `overtime` */

insert  into `overtime`(`overtime_id`,`extra_hour`,`date`,`employee_id`) values 
(7,'2','2023-08-17',4),
(6,'0','2023-08-17',3),
(5,'2','2023-08-31',1);

/*Table structure for table `participants` */

DROP TABLE IF EXISTS `participants`;

CREATE TABLE `participants` (
  `participants_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) DEFAULT NULL,
  `event_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`participants_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `participants` */

insert  into `participants`(`participants_id`,`employee_id`,`event_id`) values 
(1,1,1);

/*Table structure for table `salary` */

DROP TABLE IF EXISTS `salary`;

CREATE TABLE `salary` (
  `pay_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) DEFAULT NULL,
  `hr_id` varchar(100) DEFAULT NULL,
  `basic_salary` varchar(100) DEFAULT NULL,
  `house_rent` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`pay_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `salary` */

insert  into `salary`(`pay_id`,`employee_id`,`hr_id`,`basic_salary`,`house_rent`) values 
(1,1,'50000','10000','qwsertyuilnb'),
(2,4,'1','10400','2023-01');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
