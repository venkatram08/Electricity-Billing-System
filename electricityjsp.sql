create database electricityjsp;

use electricityjsp;

CREATE TABLE `admin` (
  `email` varchar(50) NOT NULL,
  `password` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`email`)
);

INSERT INTO `admin` VALUES ('admin','admin');

CREATE TABLE `customer` (
  `customerid` int NOT NULL AUTO_INCREMENT,
  `customername` varchar(50) DEFAULT NULL,
  `contact` varchar(10) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`customerid`),
  UNIQUE KEY `email` (`email`)
);

INSERT INTO `customer` VALUES (3,'Rohit','7852369811','rohit@gmail.com','12345','Patna','Patna','Bihar'),(4,'Mohit','7852369850','mohit@gmail.com','14520','Delhi','Delhi','UP'),(6,'Anuj Tawar','9636256345','anuj@gmail.com','anuj123','Bhopal','Bhopal','MP'),(7,'Ashutosh ','7896453645','ashu@gmail.com','ashu@123','Odisha','Odisha','Chattisgarh');

CREATE TABLE `connection` (
  `connectionid` varchar(10) NOT NULL,
  `customerid` int DEFAULT NULL,
  `connectiontype` varchar(20) DEFAULT NULL,
  `connectionstartdate` varchar(50) DEFAULT NULL,
  `occupation` varchar(50) DEFAULT NULL,
  `connectionload` varchar(50) DEFAULT NULL,
  `plotno` varchar(100) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `pincode` varchar(10) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`connectionid`)
);

INSERT INTO `connection` VALUES ('1402504527',5,'Residential','2021-10-10','Student','150','106','Ranchi','452130','Ranchi','Jharkhand','ddhsgdsghsgs'),('3692581470',6,'Residential','2020-11-11','Business','145','107','Bhopal','462021','Bhopal','MP','You connection is done now enjoy it.'),('7878878100',7,'Residential','2021-01-15','Job','100','110','Odisha','784512','Odisha','Chattishgarh','You Connection are Start Now'),('7896541452',3,'Commercial','2021-11-05','Business','50','105','Patna','802301','Patna','Bihar','sdnsdsd');

CREATE TABLE `bill` (
  `billid` int NOT NULL AUTO_INCREMENT,
  `connectionid` varchar(10) DEFAULT NULL,
  `billformonth` varchar(50) DEFAULT NULL,
  `currentreading` varchar(10) DEFAULT NULL,
  `previousreading` varchar(10) DEFAULT NULL,
  `totalunit` varchar(10) DEFAULT NULL,
  `chargeperunit` varchar(10) DEFAULT NULL,
  `finalamount` varchar(50) DEFAULT NULL,
  `duedate` varchar(50) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`billid`)
);

INSERT INTO `bill` VALUES (2,'1402504527','Nov','450','120','330','5','1650','2021-11-20','paid'),(3,'3210145210','Sep','550','140','410','5','2050','2021-11-13','paid'),(4,'3692581470','Sep','780','100','680','10','6800','2021-11-13','Not Paid'),(5,'7878878100','Jan','1025','450','575','8','4600','2021-11-12','Not Paid');

