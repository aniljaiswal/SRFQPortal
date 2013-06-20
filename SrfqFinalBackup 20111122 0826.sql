-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.1.40-community


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema srfq
--

CREATE DATABASE IF NOT EXISTS srfq;
USE srfq;

--
-- Definition of table `currency_master`
--

DROP TABLE IF EXISTS `currency_master`;
CREATE TABLE `currency_master` (
  `Currency_id` varchar(10) NOT NULL DEFAULT '',
  `Currency_desc` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`Currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `currency_master`
--

/*!40000 ALTER TABLE `currency_master` DISABLE KEYS */;
INSERT INTO `currency_master` (`Currency_id`,`Currency_desc`) VALUES 
 ('CI001','Rupees'),
 ('CI002','Dollar'),
 ('CI003','Yen'),
 ('CI004','Dinar'),
 ('CI005','Euro');
/*!40000 ALTER TABLE `currency_master` ENABLE KEYS */;


--
-- Definition of table `employee_master`
--

DROP TABLE IF EXISTS `employee_master`;
CREATE TABLE `employee_master` (
  `Emp_id` varchar(10) NOT NULL DEFAULT '',
  `Emp_Fname` varchar(45) NOT NULL DEFAULT '',
  `Emp_Lname` varchar(45) NOT NULL DEFAULT '',
  `Curren_Street_Address` varchar(45) NOT NULL DEFAULT '',
  `Current_City` varchar(30) NOT NULL DEFAULT '',
  `Current_State` varchar(30) NOT NULL DEFAULT '',
  `Current_Zipcode` varchar(10) NOT NULL DEFAULT '',
  `Current_Country` varchar(30) NOT NULL DEFAULT '',
  `Current_Phone1` varchar(13) NOT NULL DEFAULT '',
  `Current_Phone2` varchar(13) NOT NULL DEFAULT '',
  `Current_Mob` varchar(13) NOT NULL DEFAULT '',
  `Current_Fax` varchar(13) NOT NULL DEFAULT '',
  `Perm_Street_Address` varchar(45) NOT NULL DEFAULT '',
  `Perm_City` varchar(30) NOT NULL DEFAULT '',
  `Perm_State` varchar(30) NOT NULL DEFAULT '',
  `Perm_Zipcode` varchar(10) NOT NULL DEFAULT '',
  `Perm_Country` varchar(30) NOT NULL DEFAULT '',
  `Perm_Phone1` varchar(13) NOT NULL DEFAULT '',
  `Perm_Phone2` varchar(13) NOT NULL DEFAULT '',
  `Perm_Mob` varchar(13) NOT NULL DEFAULT '',
  `Perm_Fax` varchar(13) NOT NULL DEFAULT '',
  `Email_Id` varchar(45) NOT NULL DEFAULT '',
  `Date_Of_Joining` date NOT NULL DEFAULT '0000-00-00',
  `Date_Of_Leaving` date NOT NULL DEFAULT '0000-00-00',
  `Status_Id` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`Emp_id`),
  KEY `FK_Employee_Master_1` (`Status_Id`),
  CONSTRAINT `FK_Employee_Master_1` FOREIGN KEY (`Status_Id`) REFERENCES `status_master` (`Status_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee_master`
--

/*!40000 ALTER TABLE `employee_master` DISABLE KEYS */;
INSERT INTO `employee_master` (`Emp_id`,`Emp_Fname`,`Emp_Lname`,`Curren_Street_Address`,`Current_City`,`Current_State`,`Current_Zipcode`,`Current_Country`,`Current_Phone1`,`Current_Phone2`,`Current_Mob`,`Current_Fax`,`Perm_Street_Address`,`Perm_City`,`Perm_State`,`Perm_Zipcode`,`Perm_Country`,`Perm_Phone1`,`Perm_Phone2`,`Perm_Mob`,`Perm_Fax`,`Email_Id`,`Date_Of_Joining`,`Date_Of_Leaving`,`Status_Id`) VALUES 
 ('EMP001','George','Bush','54, Park Street','Dehradun','Uttarakhand','248001','India','9997238330','8128999909','9998887712','1234567890','B-4, New Jersy','Shimla','Himachal Pradesh','23455654','India','9997238330','9997788888','9991138330','9087654321','george123@gmail.com','2010-04-28','2011-03-21','ST001'),
 ('EMP002','Varun','Sharma','G-6, Sec-12','Noida','Uttrapradesh','129999','India','9997238331','8128999123','9998887999','1234567777','150-A, Ashok Vihar','Dehradun','Uttarakhand','23455666','India','9997238123','9997788334','8891138330','9567654321','varun86.doon@gmail.com','2009-04-28','2011-02-01','ST001'),
 ('EMP003','Shailendra','Sajwan','G-6, Sec-12','Noida','Uttrapradesh','129999','India','9876456712','8123452134','9997654387','1233456787','12-B,Basant Bihar','Dehradun','Uttrakhand','23123453','India','9876128756','9887765437','9876123465','9756123498','shailu@yahoo.co.in','2009-04-12','2011-04-01','ST002'),
 ('EMP004','Ankit','Srivastav','A-57,Sec-11','Noida','Uttrapradesh','123243','India','9896565745','8054767487','9898988754','1314343434','12-B,Jaunpur','Allahabad','Uttrapradesh','23243443','India','9897656554','8068769880','8138789483','9755458768','Ankit_sri@gmail.com','2008-06-24','2012-02-21','ST002'),
 ('EMP005','Dilip','Kumar','G-23,New Ashok Nagar','Noida','Uttrapradesh','132434','India','9765656887','8137836878','9897555765','1354542323','150-C Raipur','Dehradun','Uttrakhand','23244544','India','8765645465','9412365478','9013232788','9013433889','Dilip@yahoo.co.in','2009-08-12','2011-07-17','ST002');
/*!40000 ALTER TABLE `employee_master` ENABLE KEYS */;


--
-- Definition of table `employee_role_map`
--

DROP TABLE IF EXISTS `employee_role_map`;
CREATE TABLE `employee_role_map` (
  `Emp_id` varchar(10) NOT NULL DEFAULT '',
  `Role_id` varchar(10) NOT NULL DEFAULT '',
  KEY `FK_Employee_Role_Map_1` (`Emp_id`),
  KEY `FK_Employee_Role_Map_2` (`Role_id`),
  CONSTRAINT `FK_Employee_Role_Map_1` FOREIGN KEY (`Emp_id`) REFERENCES `employee_master` (`Emp_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_Employee_Role_Map_2` FOREIGN KEY (`Role_id`) REFERENCES `role_master` (`Role_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee_role_map`
--

/*!40000 ALTER TABLE `employee_role_map` DISABLE KEYS */;
INSERT INTO `employee_role_map` (`Emp_id`,`Role_id`) VALUES 
 ('EMP001','RL001'),
 ('EMP002','RL002'),
 ('EMP003','RL002'),
 ('EMP004','RL003'),
 ('EMP005','RL004');
/*!40000 ALTER TABLE `employee_role_map` ENABLE KEYS */;


--
-- Definition of table `financial_feedback_master`
--

DROP TABLE IF EXISTS `financial_feedback_master`;
CREATE TABLE `financial_feedback_master` (
  `Financ_Feedback_Id` varchar(10) NOT NULL DEFAULT '',
  `Supp_Quatation_Id` varchar(10) NOT NULL DEFAULT '',
  `Financ_GoodWill_Id` varchar(10) NOT NULL DEFAULT '',
  `Rating_Id` varchar(10) NOT NULL DEFAULT '',
  `Financ_Approved` enum('yes','no') NOT NULL DEFAULT 'yes',
  `Feedback` varchar(45) NOT NULL DEFAULT '',
  `Feedback_by` varchar(10) NOT NULL DEFAULT '',
  `FeedBackDate` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`Financ_Feedback_Id`),
  KEY `FK_Financial_Feedback_Master_1` (`Supp_Quatation_Id`),
  KEY `FK_Financial_Feedback_Master_2` (`Financ_GoodWill_Id`),
  KEY `FK_Financial_Feedback_Master_3` (`Rating_Id`),
  CONSTRAINT `FK_Financial_Feedback_Master_1` FOREIGN KEY (`Supp_Quatation_Id`) REFERENCES `supplier_quatation_master` (`Supp_Quatation_Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_financial_feedback_master_2` FOREIGN KEY (`Financ_GoodWill_Id`) REFERENCES `financial_goodwill_master` (`Financ_Goodwill_id`),
  CONSTRAINT `FK_Financial_Feedback_Master_3` FOREIGN KEY (`Rating_Id`) REFERENCES `rating_master` (`Rating_Id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `financial_feedback_master`
--

/*!40000 ALTER TABLE `financial_feedback_master` DISABLE KEYS */;
INSERT INTO `financial_feedback_master` (`Financ_Feedback_Id`,`Supp_Quatation_Id`,`Financ_GoodWill_Id`,`Rating_Id`,`Financ_Approved`,`Feedback`,`Feedback_by`,`FeedBackDate`) VALUES 
 ('','SQI002','FGI001','RAT001','yes','\r\n\r\n          ','','2011-11-16'),
 ('FFF019','SQI002','FGI001','RAT001','yes','sas\r\n\r\n          ','sudhir','2011-11-16'),
 ('zDXas','SQI002','FGI001','RAT001','yes','sdsad\r\n\r\n          ','asdas','2011-11-16');
/*!40000 ALTER TABLE `financial_feedback_master` ENABLE KEYS */;


--
-- Definition of table `financial_goodwill_master`
--

DROP TABLE IF EXISTS `financial_goodwill_master`;
CREATE TABLE `financial_goodwill_master` (
  `Financ_Goodwill_id` varchar(10) NOT NULL DEFAULT '',
  `Financ_Goodwill_desc` enum('Very Expensive','Expensive','Reasonable','Econmical','NewEntry') NOT NULL DEFAULT 'Very Expensive',
  PRIMARY KEY (`Financ_Goodwill_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `financial_goodwill_master`
--

/*!40000 ALTER TABLE `financial_goodwill_master` DISABLE KEYS */;
INSERT INTO `financial_goodwill_master` (`Financ_Goodwill_id`,`Financ_Goodwill_desc`) VALUES 
 ('FGI001','Very Expensive'),
 ('FGI002','Expensive'),
 ('FGI003','Reasonable'),
 ('FGI004','Econmical'),
 ('FGI005','NewEntry');
/*!40000 ALTER TABLE `financial_goodwill_master` ENABLE KEYS */;


--
-- Definition of table `login_detail`
--

DROP TABLE IF EXISTS `login_detail`;
CREATE TABLE `login_detail` (
  `User_id` varchar(10) NOT NULL DEFAULT '',
  `login_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  KEY `FK_login_detail_1` (`User_id`),
  CONSTRAINT `FK_login_detail_1` FOREIGN KEY (`User_id`) REFERENCES `user_master` (`User_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_detail`
--

/*!40000 ALTER TABLE `login_detail` DISABLE KEYS */;
INSERT INTO `login_detail` (`User_id`,`login_time`) VALUES 
 ('USR001','2011-11-21 09:46:14'),
 ('USR002','2011-11-21 09:37:05'),
 ('USR003','2011-05-07 01:12:39'),
 ('USR004','2011-05-06 10:23:15'),
 ('USR005','2011-11-21 09:37:30');
/*!40000 ALTER TABLE `login_detail` ENABLE KEYS */;


--
-- Definition of table `material_group_master`
--

DROP TABLE IF EXISTS `material_group_master`;
CREATE TABLE `material_group_master` (
  `Material_Group_Id` varchar(10) NOT NULL DEFAULT '',
  `Material_Group_Name` varchar(45) NOT NULL DEFAULT '',
  PRIMARY KEY (`Material_Group_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `material_group_master`
--

/*!40000 ALTER TABLE `material_group_master` DISABLE KEYS */;
INSERT INTO `material_group_master` (`Material_Group_Id`,`Material_Group_Name`) VALUES 
 ('MGI001','Tyres'),
 ('MGI002','Back Lamps'),
 ('MGI003','Dashboard'),
 ('MGI004','Seats'),
 ('MGI005','Electronics');
/*!40000 ALTER TABLE `material_group_master` ENABLE KEYS */;


--
-- Definition of table `material_master`
--

DROP TABLE IF EXISTS `material_master`;
CREATE TABLE `material_master` (
  `Material_Id` varchar(10) NOT NULL DEFAULT '',
  `Material_Desc` varchar(45) NOT NULL DEFAULT '',
  `Tech_desc` varchar(45) NOT NULL DEFAULT '',
  `Material_Group_Id` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`Material_Id`),
  KEY `FK_Material_Master_1` (`Material_Group_Id`),
  CONSTRAINT `FK_Material_Master_1` FOREIGN KEY (`Material_Group_Id`) REFERENCES `material_group_master` (`Material_Group_Id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `material_master`
--

/*!40000 ALTER TABLE `material_master` DISABLE KEYS */;
INSERT INTO `material_master` (`Material_Id`,`Material_Desc`,`Tech_desc`,`Material_Group_Id`) VALUES 
 ('MAT001','MRF Tyres','1600rpm','MGI001'),
 ('MAT002','Bosch Lamps','Great Reflectivity','MGI002'),
 ('MAT003','CEAT Tyres','1400rpm','MGI001'),
 ('MAT004','XYZ Dashboard','Nice Space','MGI003'),
 ('MAT005','Sony Speakers','Nice Sound','MGI005');
/*!40000 ALTER TABLE `material_master` ENABLE KEYS */;


--
-- Definition of table `material_tech_goodwill_master`
--

DROP TABLE IF EXISTS `material_tech_goodwill_master`;
CREATE TABLE `material_tech_goodwill_master` (
  `Material_Goodwill_Id` varchar(10) NOT NULL DEFAULT '',
  `Material_Goodwill_desc` enum('Excellent','Very Good','good','Average','Low','Very Low','New Entry') NOT NULL DEFAULT 'Excellent',
  PRIMARY KEY (`Material_Goodwill_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `material_tech_goodwill_master`
--

/*!40000 ALTER TABLE `material_tech_goodwill_master` DISABLE KEYS */;
INSERT INTO `material_tech_goodwill_master` (`Material_Goodwill_Id`,`Material_Goodwill_desc`) VALUES 
 ('MTGI001','Excellent'),
 ('MTGI002','Very Good'),
 ('MTGI003','good'),
 ('MTGI004','Average'),
 ('MTGI005','Low'),
 ('MTGI006','Very Low'),
 ('MTGI007','New Entry');
/*!40000 ALTER TABLE `material_tech_goodwill_master` ENABLE KEYS */;


--
-- Definition of table `organization_master`
--

DROP TABLE IF EXISTS `organization_master`;
CREATE TABLE `organization_master` (
  `Org_id` varchar(10) NOT NULL DEFAULT '',
  `Org_Name` varchar(100) NOT NULL DEFAULT '',
  `Org_Add` varchar(100) NOT NULL DEFAULT '',
  `State` varchar(20) NOT NULL DEFAULT '',
  `zipcode` varchar(10) NOT NULL DEFAULT '',
  `country` varchar(45) NOT NULL DEFAULT '',
  `phone1` varchar(13) NOT NULL DEFAULT '',
  `phone2` varchar(13) NOT NULL DEFAULT '',
  `fax` varchar(13) NOT NULL DEFAULT '',
  `mail` varchar(45) NOT NULL DEFAULT '',
  PRIMARY KEY (`Org_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `organization_master`
--

/*!40000 ALTER TABLE `organization_master` DISABLE KEYS */;
INSERT INTO `organization_master` (`Org_id`,`Org_Name`,`Org_Add`,`State`,`zipcode`,`country`,`phone1`,`phone2`,`fax`,`mail`) VALUES 
 ('ORG001','Volkswagen','Noida','UP','201301','India','9897064021','8132229701','1234567890','volkswagen@gmail.com'),
 ('ORG002','Hyundai','Dehradun','UK','248001','India','9897064078','8132229789','1234567878','hyundai@gmail.com'),
 ('ORG003','Maruti','New Delhi','Delhi','110000','India','9897064056','8138889789','1234567678','maruti@gmail.com'),
 ('ORG004','Daewoo','Jaipur','Rajasthan','100234','India','9897064567','9138889789','6784567678','daewoo@gmail.com'),
 ('ORG005','Ford','Lucknow','UP','300012','India','9897067889','9138889123','6784907678','ford@gmail.com');
/*!40000 ALTER TABLE `organization_master` ENABLE KEYS */;


--
-- Definition of table `quotation_analysis_initiation`
--

DROP TABLE IF EXISTS `quotation_analysis_initiation`;
CREATE TABLE `quotation_analysis_initiation` (
  `Supp_Quotation_Id` varchar(10) NOT NULL DEFAULT '',
  `Status_id` varchar(10) NOT NULL DEFAULT '',
  `Status_changed_By` varchar(45) NOT NULL DEFAULT '',
  `Status_changed_date` date NOT NULL DEFAULT '0000-00-00',
  `Remark` varchar(45) NOT NULL DEFAULT '',
  PRIMARY KEY (`Supp_Quotation_Id`),
  KEY `FK_Quotation_Analysis_Initiation_1` (`Status_id`),
  CONSTRAINT `FK_Quotation_Analysis_Initiation_1` FOREIGN KEY (`Status_id`) REFERENCES `status_master` (`Status_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quotation_analysis_initiation`
--

/*!40000 ALTER TABLE `quotation_analysis_initiation` DISABLE KEYS */;
/*!40000 ALTER TABLE `quotation_analysis_initiation` ENABLE KEYS */;


--
-- Definition of table `rating_master`
--

DROP TABLE IF EXISTS `rating_master`;
CREATE TABLE `rating_master` (
  `Rating_Id` varchar(10) NOT NULL DEFAULT '',
  `Rating_desc` enum('Very High','High','Average','Low','Very Low') NOT NULL DEFAULT 'Very High',
  PRIMARY KEY (`Rating_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rating_master`
--

/*!40000 ALTER TABLE `rating_master` DISABLE KEYS */;
INSERT INTO `rating_master` (`Rating_Id`,`Rating_desc`) VALUES 
 ('RAT001','Very High'),
 ('RAT002','High'),
 ('RAT003','Average'),
 ('RAT004','Low'),
 ('RAT005','Very Low');
/*!40000 ALTER TABLE `rating_master` ENABLE KEYS */;


--
-- Definition of table `requirement_analysis_initiation`
--

DROP TABLE IF EXISTS `requirement_analysis_initiation`;
CREATE TABLE `requirement_analysis_initiation` (
  `Req_id` varchar(100) NOT NULL DEFAULT '',
  `Status_id` varchar(45) NOT NULL DEFAULT '',
  `Status_changed_By` varchar(45) NOT NULL DEFAULT '',
  `Status_changed_date` date NOT NULL DEFAULT '0000-00-00',
  `Remark` varchar(45) NOT NULL DEFAULT '',
  PRIMARY KEY (`Req_id`),
  KEY `FK_Requirement_Analysis_Initiation_1` (`Status_id`),
  CONSTRAINT `FK_requirement_analysis_initiation_2` FOREIGN KEY (`Req_id`) REFERENCES `requirement_master` (`Req_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `requirement_analysis_initiation`
--

/*!40000 ALTER TABLE `requirement_analysis_initiation` DISABLE KEYS */;
INSERT INTO `requirement_analysis_initiation` (`Req_id`,`Status_id`,`Status_changed_By`,`Status_changed_date`,`Remark`) VALUES 
 ('REQ001','ST001','Ankit','2011-02-25','Not Recieved'),
 ('REQ002','ST001','Dilip','2011-02-12','Sample not up to the mark'),
 ('REQ003','ST001','Varun','2011-03-05','Need more time');
/*!40000 ALTER TABLE `requirement_analysis_initiation` ENABLE KEYS */;


--
-- Definition of table `requirement_master`
--

DROP TABLE IF EXISTS `requirement_master`;
CREATE TABLE `requirement_master` (
  `Req_id` varchar(10) NOT NULL DEFAULT '',
  `Material_Id` varchar(10) NOT NULL DEFAULT '',
  `Quantity` varchar(20) NOT NULL DEFAULT '',
  `unit_Id` varchar(10) NOT NULL DEFAULT '',
  `Req_posting_Opening_date` date NOT NULL DEFAULT '0000-00-00',
  `Req_posting_closing_date` date NOT NULL DEFAULT '0000-00-00',
  `Posted_by` varchar(45) NOT NULL DEFAULT '',
  `R_Priority_id` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`Req_id`),
  KEY `FK_requirement_master_2` (`unit_Id`),
  KEY `FK_requirement_master_3` (`R_Priority_id`),
  KEY `FK_requirement_master_1` (`Material_Id`),
  CONSTRAINT `FK_requirement_master_1` FOREIGN KEY (`Material_Id`) REFERENCES `material_master` (`Material_Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_requirement_master_2` FOREIGN KEY (`unit_Id`) REFERENCES `unit_measure_master` (`Unit_id`),
  CONSTRAINT `FK_requirement_master_3` FOREIGN KEY (`R_Priority_id`) REFERENCES `requirement_priority_master` (`R_Priority_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `requirement_master`
--

/*!40000 ALTER TABLE `requirement_master` DISABLE KEYS */;
INSERT INTO `requirement_master` (`Req_id`,`Material_Id`,`Quantity`,`unit_Id`,`Req_posting_Opening_date`,`Req_posting_closing_date`,`Posted_by`,`R_Priority_id`) VALUES 
 ('REQ001','MAT001','100','UI002','2011-01-02','2011-03-15','Ankit','RPI004'),
 ('REQ002','MAT002','150','UI002','2011-01-02','2011-02-12','Dilip','RPI002'),
 ('REQ003','MAT003','150','UI002','2011-02-15','2011-02-16','Varun','RPI003'),
 ('REQ004','MAT004','150','UI002','2011-03-01','2011-04-30','Shailenda','RPI003'),
 ('REQ005','MAT005','200','UI002','2011-03-05','2011-04-20','Ashok','RPI001');
/*!40000 ALTER TABLE `requirement_master` ENABLE KEYS */;


--
-- Definition of table `requirement_priority_master`
--

DROP TABLE IF EXISTS `requirement_priority_master`;
CREATE TABLE `requirement_priority_master` (
  `R_Priority_Id` varchar(10) NOT NULL DEFAULT '',
  `R_Priority_desc` enum('Normal','Average','High','Crucial') NOT NULL DEFAULT 'Normal',
  PRIMARY KEY (`R_Priority_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `requirement_priority_master`
--

/*!40000 ALTER TABLE `requirement_priority_master` DISABLE KEYS */;
INSERT INTO `requirement_priority_master` (`R_Priority_Id`,`R_Priority_desc`) VALUES 
 ('RPI001','Normal'),
 ('RPI002','Average'),
 ('RPI003','High'),
 ('RPI004','Crucial');
/*!40000 ALTER TABLE `requirement_priority_master` ENABLE KEYS */;


--
-- Definition of table `resource_master`
--

DROP TABLE IF EXISTS `resource_master`;
CREATE TABLE `resource_master` (
  `Resc_id` varchar(10) NOT NULL DEFAULT '',
  `Gorup_English` varchar(45) NOT NULL DEFAULT '',
  `Resc_Name_English` varchar(45) NOT NULL DEFAULT '',
  `Link` varchar(45) NOT NULL DEFAULT '',
  `Show_in_menu` varchar(45) NOT NULL DEFAULT '',
  PRIMARY KEY (`Resc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `resource_master`
--

/*!40000 ALTER TABLE `resource_master` DISABLE KEYS */;
INSERT INTO `resource_master` (`Resc_id`,`Gorup_English`,`Resc_Name_English`,`Link`,`Show_in_menu`) VALUES 
 ('','','','',''),
 ('RES001','Configuration Enterprise','','',''),
 ('RES002','Security','','',''),
 ('RES003','Request Specification','','',''),
 ('RES004','Configure Supplier','','',''),
 ('RES005','Quotation Posting','','','');
/*!40000 ALTER TABLE `resource_master` ENABLE KEYS */;


--
-- Definition of table `rfq_status_master`
--

DROP TABLE IF EXISTS `rfq_status_master`;
CREATE TABLE `rfq_status_master` (
  `RFQ_Status_id` varchar(10) NOT NULL DEFAULT '',
  `RFQ_Status_Remark` varchar(45) NOT NULL DEFAULT '',
  `RFQ_Status` enum('RFQCreated','RFQInprocess','RFQApproved','RFQFailed','Sampling Requisition') NOT NULL DEFAULT 'RFQCreated',
  `Weightage` varchar(45) NOT NULL DEFAULT '',
  PRIMARY KEY (`RFQ_Status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rfq_status_master`
--

/*!40000 ALTER TABLE `rfq_status_master` DISABLE KEYS */;
INSERT INTO `rfq_status_master` (`RFQ_Status_id`,`RFQ_Status_Remark`,`RFQ_Status`,`Weightage`) VALUES 
 ('RFQ001','Created on 01/02/2011','RFQCreated','High Priority'),
 ('RFQ002','RFQ has been given to suppliers','RFQInprocess','Normal Priority'),
 ('RFQ003','Forwarded to Technical Dept.','RFQApproved','High Priority'),
 ('RFQ004','Quotations not up to the mark','RFQFailed','High priority'),
 ('RFQ005','Send to admin','Sampling Requisition','High Priority');
/*!40000 ALTER TABLE `rfq_status_master` ENABLE KEYS */;


--
-- Definition of table `role_master`
--

DROP TABLE IF EXISTS `role_master`;
CREATE TABLE `role_master` (
  `Role_id` varchar(10) NOT NULL DEFAULT '',
  `Role_name` varchar(45) NOT NULL DEFAULT '',
  `Role_desc` varchar(45) NOT NULL DEFAULT '',
  `Org_id` varchar(10) NOT NULL DEFAULT '',
  `Status_id` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`Role_id`),
  KEY `FK_Role_Master_1` (`Org_id`),
  CONSTRAINT `FK_Role_Master_1` FOREIGN KEY (`Org_id`) REFERENCES `organization_master` (`Org_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role_master`
--

/*!40000 ALTER TABLE `role_master` DISABLE KEYS */;
INSERT INTO `role_master` (`Role_id`,`Role_name`,`Role_desc`,`Org_id`,`Status_id`) VALUES 
 ('RL001','Admin','Administrator','ORG001',''),
 ('RL002','Tech','Technical','ORG002',''),
 ('RL003','Finc','Finance','ORG003',''),
 ('RL004','Prod','Production','ORG004','');
/*!40000 ALTER TABLE `role_master` ENABLE KEYS */;


--
-- Definition of table `role_resource_map`
--

DROP TABLE IF EXISTS `role_resource_map`;
CREATE TABLE `role_resource_map` (
  `Role_Resource_Map_Id` varchar(10) NOT NULL DEFAULT '',
  `Role_id` varchar(10) NOT NULL DEFAULT '',
  `Resc_id` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`Role_Resource_Map_Id`),
  KEY `FK_Role_Resource_Map_1` (`Role_id`),
  KEY `FK_Role_Resource_Map_2` (`Resc_id`),
  CONSTRAINT `FK_Role_Resource_Map_1` FOREIGN KEY (`Role_id`) REFERENCES `role_master` (`Role_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_Role_Resource_Map_2` FOREIGN KEY (`Resc_id`) REFERENCES `resource_master` (`Resc_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role_resource_map`
--

/*!40000 ALTER TABLE `role_resource_map` DISABLE KEYS */;
INSERT INTO `role_resource_map` (`Role_Resource_Map_Id`,`Role_id`,`Resc_id`) VALUES 
 ('RRM002','RL002','RES002'),
 ('RRM003','RL003','RES003'),
 ('RRM004','RL004','RES004'),
 ('RRM005','RL002','RES002');
/*!40000 ALTER TABLE `role_resource_map` ENABLE KEYS */;


--
-- Definition of table `salutaion_master`
--

DROP TABLE IF EXISTS `salutaion_master`;
CREATE TABLE `salutaion_master` (
  `Salutation_id` varchar(10) NOT NULL DEFAULT '',
  `Salutation_desc` enum('Mr','Mrs','Miss') NOT NULL DEFAULT 'Mr',
  PRIMARY KEY (`Salutation_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salutaion_master`
--

/*!40000 ALTER TABLE `salutaion_master` DISABLE KEYS */;
INSERT INTO `salutaion_master` (`Salutation_id`,`Salutation_desc`) VALUES 
 ('SAL001','Mr'),
 ('SAL002','Miss'),
 ('SAL003','Mrs');
/*!40000 ALTER TABLE `salutaion_master` ENABLE KEYS */;


--
-- Definition of table `sample_admin_approval`
--

DROP TABLE IF EXISTS `sample_admin_approval`;
CREATE TABLE `sample_admin_approval` (
  `Sample_Admin_Approval_Id` varchar(10) NOT NULL DEFAULT '',
  `Supp_Quatation_Id` varchar(10) NOT NULL DEFAULT '',
  `Sample_Admin_Approved` enum('yes','no') NOT NULL DEFAULT 'yes',
  `Feedback` varchar(45) NOT NULL DEFAULT '',
  `Sample_Admin_Approved_By` varchar(10) NOT NULL DEFAULT '',
  `Date_on` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`Sample_Admin_Approval_Id`),
  KEY `FK_Sample_Admin_Approval_1` (`Supp_Quatation_Id`),
  CONSTRAINT `FK_Sample_Admin_Approval_1` FOREIGN KEY (`Supp_Quatation_Id`) REFERENCES `supplier_quatation_master` (`Supp_Quatation_Id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sample_admin_approval`
--

/*!40000 ALTER TABLE `sample_admin_approval` DISABLE KEYS */;
INSERT INTO `sample_admin_approval` (`Sample_Admin_Approval_Id`,`Supp_Quatation_Id`,`Sample_Admin_Approved`,`Feedback`,`Sample_Admin_Approved_By`,`Date_on`) VALUES 
 ('SAAI002','SQI002','yes','Good','Dilip','2011-03-18'),
 ('SAAI003','SQI003','yes','waiting for technical dept report','vARUN','2011-03-25');
/*!40000 ALTER TABLE `sample_admin_approval` ENABLE KEYS */;


--
-- Definition of table `sample_admin_request`
--

DROP TABLE IF EXISTS `sample_admin_request`;
CREATE TABLE `sample_admin_request` (
  `Sample_id` varchar(10) NOT NULL DEFAULT '',
  `Supp_Quatation_Id` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`Sample_id`),
  KEY `FK_Sample_Admin_Request_1` (`Supp_Quatation_Id`),
  CONSTRAINT `FK_Sample_Admin_Request_1` FOREIGN KEY (`Supp_Quatation_Id`) REFERENCES `supplier_quatation_master` (`Supp_Quatation_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sample_admin_request`
--

/*!40000 ALTER TABLE `sample_admin_request` DISABLE KEYS */;
INSERT INTO `sample_admin_request` (`Sample_id`,`Supp_Quatation_Id`) VALUES 
 ('SI001','SQI002'),
 ('SI5530429','SQI003'),
 ('SI002','SQI1070967');
/*!40000 ALTER TABLE `sample_admin_request` ENABLE KEYS */;


--
-- Definition of table `sample_demand_specfication`
--

DROP TABLE IF EXISTS `sample_demand_specfication`;
CREATE TABLE `sample_demand_specfication` (
  `Sample_Demand_id` varchar(10) NOT NULL DEFAULT '',
  `Sample_id` varchar(10) NOT NULL DEFAULT '',
  `Sample_Expected_Sending_Date` date NOT NULL DEFAULT '0000-00-00',
  `quantity` varchar(20) NOT NULL DEFAULT '',
  `unit_id` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`Sample_Demand_id`),
  KEY `FK_Sample_Demand_Specfication_1` (`Sample_id`),
  KEY `FK_Sample_Demand_Specfication_2` (`unit_id`),
  CONSTRAINT `FK_Sample_Demand_Specfication_1` FOREIGN KEY (`Sample_id`) REFERENCES `sample_admin_request` (`Sample_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_Sample_Demand_Specfication_2` FOREIGN KEY (`unit_id`) REFERENCES `unit_measure_master` (`Unit_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sample_demand_specfication`
--

/*!40000 ALTER TABLE `sample_demand_specfication` DISABLE KEYS */;
/*!40000 ALTER TABLE `sample_demand_specfication` ENABLE KEYS */;


--
-- Definition of table `sample_evaluation_master`
--

DROP TABLE IF EXISTS `sample_evaluation_master`;
CREATE TABLE `sample_evaluation_master` (
  `Sample_id` varchar(10) NOT NULL DEFAULT '',
  `TargetPrice` varchar(20) NOT NULL DEFAULT '',
  `SamplePrice` varchar(20) NOT NULL DEFAULT '',
  `Quality` varchar(20) NOT NULL DEFAULT '',
  `PartDiscripation` varchar(45) NOT NULL DEFAULT '',
  `PlaceForProducation` varchar(45) NOT NULL DEFAULT '',
  `PartLifeTime` varchar(45) NOT NULL DEFAULT '',
  `PartOptimazation` varchar(30) NOT NULL DEFAULT '',
  `Devision` varchar(45) NOT NULL DEFAULT '',
  KEY `FK_Sample_Evaluation_Master_1` (`Sample_id`),
  CONSTRAINT `FK_Sample_Evaluation_Master_1` FOREIGN KEY (`Sample_id`) REFERENCES `sample_admin_request` (`Sample_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sample_evaluation_master`
--

/*!40000 ALTER TABLE `sample_evaluation_master` DISABLE KEYS */;
INSERT INTO `sample_evaluation_master` (`Sample_id`,`TargetPrice`,`SamplePrice`,`Quality`,`PartDiscripation`,`PlaceForProducation`,`PartLifeTime`,`PartOptimazation`,`Devision`) VALUES 
 ('SI001','2000','2000','x','x','x','x','x','x'),
 ('SI002','2000','2000','Good','y','y','y','y','y');
/*!40000 ALTER TABLE `sample_evaluation_master` ENABLE KEYS */;


--
-- Definition of table `sample_fin_feedback_master`
--

DROP TABLE IF EXISTS `sample_fin_feedback_master`;
CREATE TABLE `sample_fin_feedback_master` (
  `Sample_id` varchar(10) NOT NULL DEFAULT '',
  `Supp_Quatation_Id` varchar(10) NOT NULL DEFAULT '',
  `Rating_Id` varchar(10) NOT NULL DEFAULT '',
  `Fin_Approved` enum('YES','NO') NOT NULL DEFAULT 'YES',
  `Feedback` varchar(45) NOT NULL DEFAULT '',
  `Feedback_By` varchar(45) NOT NULL DEFAULT '',
  `FeedBackDate` date NOT NULL DEFAULT '0000-00-00',
  KEY `FK_Sample_Fin_FeedBack_Master_1` (`Sample_id`),
  KEY `FK_Sample_Fin_FeedBack_Master_2` (`Supp_Quatation_Id`),
  KEY `FK_Sample_Fin_FeedBack_Master_3` (`Rating_Id`),
  CONSTRAINT `FK_Sample_Fin_FeedBack_Master_1` FOREIGN KEY (`Sample_id`) REFERENCES `sample_admin_request` (`Sample_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_Sample_Fin_FeedBack_Master_2` FOREIGN KEY (`Supp_Quatation_Id`) REFERENCES `supplier_quatation_master` (`Supp_Quatation_Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_Sample_Fin_FeedBack_Master_3` FOREIGN KEY (`Rating_Id`) REFERENCES `rating_master` (`Rating_Id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sample_fin_feedback_master`
--

/*!40000 ALTER TABLE `sample_fin_feedback_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `sample_fin_feedback_master` ENABLE KEYS */;


--
-- Definition of table `sample_financial_approval`
--

DROP TABLE IF EXISTS `sample_financial_approval`;
CREATE TABLE `sample_financial_approval` (
  `Sample_Financ_Approval_Id` varchar(10) NOT NULL DEFAULT '',
  `Supp_Quatation_Id` varchar(10) NOT NULL DEFAULT '',
  `Financ_Goodwill_id` varchar(10) NOT NULL DEFAULT '',
  `Rating_Id` varchar(10) NOT NULL DEFAULT '',
  `Sample_Financ_Approved` enum('yes','no') NOT NULL DEFAULT 'yes',
  `Feedback` varchar(45) NOT NULL DEFAULT '',
  `Sample_Financ_Approved_By` varchar(45) NOT NULL DEFAULT '',
  `Date_on` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`Sample_Financ_Approval_Id`),
  KEY `FK_Sample_Financial_Approval_1` (`Supp_Quatation_Id`),
  KEY `FK_Sample_Financial_Approval_2` (`Financ_Goodwill_id`),
  KEY `FK_Sample_Financial_Approval_3` (`Rating_Id`),
  CONSTRAINT `FK_Sample_Financial_Approval_1` FOREIGN KEY (`Supp_Quatation_Id`) REFERENCES `supplier_quatation_master` (`Supp_Quatation_Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_sample_financial_approval_2` FOREIGN KEY (`Financ_Goodwill_id`) REFERENCES `financial_goodwill_master` (`Financ_Goodwill_id`),
  CONSTRAINT `FK_Sample_Financial_Approval_3` FOREIGN KEY (`Rating_Id`) REFERENCES `rating_master` (`Rating_Id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sample_financial_approval`
--

/*!40000 ALTER TABLE `sample_financial_approval` DISABLE KEYS */;
INSERT INTO `sample_financial_approval` (`Sample_Financ_Approval_Id`,`Supp_Quatation_Id`,`Financ_Goodwill_id`,`Rating_Id`,`Sample_Financ_Approved`,`Feedback`,`Sample_Financ_Approved_By`,`Date_on`) VALUES 
 ('SFAI002','SQI002','FGI002','RAT005','no','quality not up to the mark','vijay','2011-03-25'),
 ('SFAI003','SQI003','FGI003','RAT001','yes','fforwarded to admin','amit','2011-03-28');
/*!40000 ALTER TABLE `sample_financial_approval` ENABLE KEYS */;


--
-- Definition of table `sample_operational_feedback`
--

DROP TABLE IF EXISTS `sample_operational_feedback`;
CREATE TABLE `sample_operational_feedback` (
  `Sample_id` varchar(10) NOT NULL DEFAULT '',
  `Supp_Quatation_Id` varchar(10) NOT NULL DEFAULT '',
  `Rating_Id` varchar(10) NOT NULL DEFAULT '',
  `op_Approved` enum('YES','NO') NOT NULL DEFAULT 'YES',
  `Feedback` varchar(45) NOT NULL DEFAULT '',
  `Feedback_By` varchar(45) NOT NULL DEFAULT '',
  `FeedBackDate` date NOT NULL DEFAULT '0000-00-00',
  KEY `FK_Sample_Operational_Feedback_1` (`Sample_id`),
  KEY `FK_Sample_Operational_Feedback_2` (`Supp_Quatation_Id`),
  KEY `FK_Sample_Operational_Feedback_3` (`Rating_Id`),
  CONSTRAINT `FK_Sample_Operational_Feedback_1` FOREIGN KEY (`Sample_id`) REFERENCES `sample_admin_request` (`Sample_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_Sample_Operational_Feedback_2` FOREIGN KEY (`Supp_Quatation_Id`) REFERENCES `supplier_quatation_master` (`Supp_Quatation_Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_Sample_Operational_Feedback_3` FOREIGN KEY (`Rating_Id`) REFERENCES `rating_master` (`Rating_Id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sample_operational_feedback`
--

/*!40000 ALTER TABLE `sample_operational_feedback` DISABLE KEYS */;
/*!40000 ALTER TABLE `sample_operational_feedback` ENABLE KEYS */;


--
-- Definition of table `sample_production_approval`
--

DROP TABLE IF EXISTS `sample_production_approval`;
CREATE TABLE `sample_production_approval` (
  `Sample_Production_Approval_Id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Supp_Quatation_Id` varchar(10) NOT NULL DEFAULT '',
  `Rating_Id` varchar(10) NOT NULL DEFAULT '',
  `Sample_Prod_Approved` varchar(45) NOT NULL DEFAULT '',
  `Feedback` varchar(45) NOT NULL DEFAULT '',
  `Sample_Prod_Approved_By` varchar(45) NOT NULL DEFAULT '',
  `Date_on` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`Sample_Production_Approval_Id`),
  KEY `FK_Sample_Production_Approval_1` (`Supp_Quatation_Id`),
  KEY `FK_Sample_Production_Approval_2` (`Rating_Id`),
  CONSTRAINT `FK_Sample_Production_Approval_1` FOREIGN KEY (`Supp_Quatation_Id`) REFERENCES `supplier_quatation_master` (`Supp_Quatation_Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_Sample_Production_Approval_2` FOREIGN KEY (`Rating_Id`) REFERENCES `rating_master` (`Rating_Id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sample_production_approval`
--

/*!40000 ALTER TABLE `sample_production_approval` DISABLE KEYS */;
/*!40000 ALTER TABLE `sample_production_approval` ENABLE KEYS */;


--
-- Definition of table `sample_requisition_acceptance`
--

DROP TABLE IF EXISTS `sample_requisition_acceptance`;
CREATE TABLE `sample_requisition_acceptance` (
  `sample_Requisition_id` varchar(10) NOT NULL DEFAULT '',
  `Supp_Quotoation_id` varchar(10) NOT NULL DEFAULT '',
  `Acceptance_status` enum('yes','no') NOT NULL DEFAULT 'yes',
  `Acceptance_date` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`sample_Requisition_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sample_requisition_acceptance`
--

/*!40000 ALTER TABLE `sample_requisition_acceptance` DISABLE KEYS */;
INSERT INTO `sample_requisition_acceptance` (`sample_Requisition_id`,`Supp_Quotoation_id`,`Acceptance_status`,`Acceptance_date`) VALUES 
 ('SRI001','SQI001','yes','2011-03-01'),
 ('SRI002','SQI002','yes','2011-03-05'),
 ('SRI003','SQI003','no','2011-03-06');
/*!40000 ALTER TABLE `sample_requisition_acceptance` ENABLE KEYS */;


--
-- Definition of table `sample_requisition_acceptance_details`
--

DROP TABLE IF EXISTS `sample_requisition_acceptance_details`;
CREATE TABLE `sample_requisition_acceptance_details` (
  `sample_req_id` varchar(10) NOT NULL DEFAULT '',
  `Sample_Expected_Sending_Date` date NOT NULL DEFAULT '0000-00-00',
  `quantity` varchar(45) NOT NULL DEFAULT '',
  `unit_id` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`sample_req_id`),
  KEY `FK_Sample_Requisition_Acceptance_Details_1` (`unit_id`),
  CONSTRAINT `FK_Sample_Requisition_Acceptance_Details_1` FOREIGN KEY (`unit_id`) REFERENCES `unit_measure_master` (`Unit_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sample_requisition_acceptance_details`
--

/*!40000 ALTER TABLE `sample_requisition_acceptance_details` DISABLE KEYS */;
INSERT INTO `sample_requisition_acceptance_details` (`sample_req_id`,`Sample_Expected_Sending_Date`,`quantity`,`unit_id`) VALUES 
 ('SRAI001','2011-03-15','100','UI002'),
 ('SRAI002','2011-04-01','150','UI002'),
 ('SRAI003','2011-04-03','200','UI002');
/*!40000 ALTER TABLE `sample_requisition_acceptance_details` ENABLE KEYS */;


--
-- Definition of table `sample_tech_approval`
--

DROP TABLE IF EXISTS `sample_tech_approval`;
CREATE TABLE `sample_tech_approval` (
  `Sample_Tech_Approval_Id` varchar(10) NOT NULL DEFAULT '',
  `Supp_Quatation_Id` varchar(10) NOT NULL DEFAULT '',
  `Material_Goodwill_id` varchar(10) NOT NULL DEFAULT '',
  `Rating_Id` varchar(45) NOT NULL DEFAULT '',
  `Sample_Tech_Approved` enum('yes','no') NOT NULL DEFAULT 'yes',
  `Feedback` varchar(45) NOT NULL DEFAULT '',
  `Sample_Tech_Approved_By` varchar(45) NOT NULL DEFAULT '',
  `Date_on` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`Sample_Tech_Approval_Id`),
  KEY `FK_Sample_Tech_Approval_1` (`Supp_Quatation_Id`),
  KEY `FK_Sample_Tech_Approval_2` (`Material_Goodwill_id`),
  KEY `FK_Sample_Tech_Approval_3` (`Rating_Id`),
  CONSTRAINT `FK_Sample_Tech_Approval_1` FOREIGN KEY (`Supp_Quatation_Id`) REFERENCES `supplier_quatation_master` (`Supp_Quatation_Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_Sample_Tech_Approval_2` FOREIGN KEY (`Material_Goodwill_id`) REFERENCES `material_tech_goodwill_master` (`Material_Goodwill_Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_Sample_Tech_Approval_3` FOREIGN KEY (`Rating_Id`) REFERENCES `rating_master` (`Rating_Id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sample_tech_approval`
--

/*!40000 ALTER TABLE `sample_tech_approval` DISABLE KEYS */;
INSERT INTO `sample_tech_approval` (`Sample_Tech_Approval_Id`,`Supp_Quatation_Id`,`Material_Goodwill_id`,`Rating_Id`,`Sample_Tech_Approved`,`Feedback`,`Sample_Tech_Approved_By`,`Date_on`) VALUES 
 (' sds','SQI003','MTGI002','RAT002','yes',' dsd',' dsds','2011-11-15'),
 ('STA0632573','SQI1070967','MTGI003','RAT002','yes','abc','SHAILENDRA SAJWAN','2011-05-05'),
 ('STAI002','SQI002','MTGI002','RAT003','yes','Quality not up to the mark','SHAILENDRA SAJWAN','2011-05-03'),
 ('STAI003','SQI003','MTGI003','RAT001','yes','Optimum performance','Varun','2011-03-25');
/*!40000 ALTER TABLE `sample_tech_approval` ENABLE KEYS */;


--
-- Definition of table `sample_tech_feedback_master`
--

DROP TABLE IF EXISTS `sample_tech_feedback_master`;
CREATE TABLE `sample_tech_feedback_master` (
  `Sample_id` varchar(10) NOT NULL DEFAULT '',
  `Supp_Quatation_Id` varchar(10) NOT NULL DEFAULT '',
  `Rating_Id` varchar(10) NOT NULL DEFAULT '',
  `Tech_Approved` enum('YES','NO') NOT NULL DEFAULT 'YES',
  `Feedback` varchar(45) NOT NULL DEFAULT '',
  `Feedback_by` varchar(45) NOT NULL DEFAULT '',
  `FeedBackDate` date NOT NULL DEFAULT '0000-00-00',
  KEY `FK_Sample_Tech_FeedBAck_Master_1` (`Sample_id`),
  KEY `FK_Sample_Tech_FeedBAck_Master_2` (`Supp_Quatation_Id`),
  CONSTRAINT `FK_Sample_Tech_FeedBAck_Master_1` FOREIGN KEY (`Sample_id`) REFERENCES `sample_admin_request` (`Sample_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_Sample_Tech_FeedBAck_Master_2` FOREIGN KEY (`Supp_Quatation_Id`) REFERENCES `supplier_quatation_master` (`Supp_Quatation_Id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sample_tech_feedback_master`
--

/*!40000 ALTER TABLE `sample_tech_feedback_master` DISABLE KEYS */;
INSERT INTO `sample_tech_feedback_master` (`Sample_id`,`Supp_Quatation_Id`,`Rating_Id`,`Tech_Approved`,`Feedback`,`Feedback_by`,`FeedBackDate`) VALUES 
 ('SI001','SQI002','RAT002','YES','good quality\r\n','SHAILENDRA SAJWAN','2011-05-03'),
 ('SI002','SQI1070967','RAT003','NO','Average','GEORGE BUSH','2011-05-07'),
 ('SI002','SQI003','RAT002','YES',' aSa',' SAS','2011-11-11'),
 ('SI001','SQI002','RAT001','YES','good','sudhir ','2011-11-16'),
 ('SI001','SQI002','RAT001','YES','good','sudhir ','2011-11-16'),
 ('SI001','SQI002','RAT001','YES','good','sudhir ','2011-11-16');
/*!40000 ALTER TABLE `sample_tech_feedback_master` ENABLE KEYS */;


--
-- Definition of table `status_master`
--

DROP TABLE IF EXISTS `status_master`;
CREATE TABLE `status_master` (
  `Status_id` varchar(10) NOT NULL DEFAULT '',
  `Status_desc` enum('Active','InActive') DEFAULT NULL,
  PRIMARY KEY (`Status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_master`
--

/*!40000 ALTER TABLE `status_master` DISABLE KEYS */;
INSERT INTO `status_master` (`Status_id`,`Status_desc`) VALUES 
 ('ST001','Active'),
 ('ST002','InActive');
/*!40000 ALTER TABLE `status_master` ENABLE KEYS */;


--
-- Definition of table `supplier_contact_master`
--

DROP TABLE IF EXISTS `supplier_contact_master`;
CREATE TABLE `supplier_contact_master` (
  `Contact_person_id` varchar(10) NOT NULL DEFAULT '',
  `Supp_id` varchar(10) NOT NULL DEFAULT '',
  `Salutation_id` varchar(10) NOT NULL DEFAULT '',
  `Contact_person_fname` varchar(30) NOT NULL DEFAULT '',
  `Contact_person_lname` varchar(30) NOT NULL DEFAULT '',
  `Contact_person_function` varchar(30) NOT NULL DEFAULT '',
  `Contact_person_phone` int(10) unsigned NOT NULL DEFAULT '0',
  `Contact_person_email` varchar(50) NOT NULL DEFAULT '',
  `termsandcondition` varchar(60) NOT NULL DEFAULT '',
  PRIMARY KEY (`Contact_person_id`),
  KEY `FK_Supplier_Contact_Master_1` (`Salutation_id`),
  CONSTRAINT `FK_Supplier_Contact_Master_1` FOREIGN KEY (`Salutation_id`) REFERENCES `salutaion_master` (`Salutation_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_supplier_contact_master_2` FOREIGN KEY (`Salutation_id`) REFERENCES `salutaion_master` (`Salutation_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier_contact_master`
--

/*!40000 ALTER TABLE `supplier_contact_master` DISABLE KEYS */;
INSERT INTO `supplier_contact_master` (`Contact_person_id`,`Supp_id`,`Salutation_id`,`Contact_person_fname`,`Contact_person_lname`,`Contact_person_function`,`Contact_person_phone`,`Contact_person_email`,`termsandcondition`) VALUES 
 ('CPI001','SI001','SAL001','Vivek','Chauhan','',4294967295,'vivek@gmail.com',''),
 ('CPI002','SI002','SAL002','Vinay','Joshi','',4294967295,'vinay01joshi@gmail',''),
 ('CPI003','SI003','SAL003','Subodh','Deoli','',4294967295,'subdeo86@gmail',''),
 ('CPI004','SI004','SAL001','Shailendra','Sajwan','',4294967295,'shailendra@gmail.com',''),
 ('CPI005','SI005','SAL002','Varun','Sharma','',4294967295,'varun86.doon@gmail.com','');
/*!40000 ALTER TABLE `supplier_contact_master` ENABLE KEYS */;


--
-- Definition of table `supplier_goodwill_master`
--

DROP TABLE IF EXISTS `supplier_goodwill_master`;
CREATE TABLE `supplier_goodwill_master` (
  `Goodwill_Id` varchar(10) NOT NULL DEFAULT '',
  `Goodwill_desc` enum('Hot','Warm','Cold') NOT NULL DEFAULT 'Hot',
  PRIMARY KEY (`Goodwill_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier_goodwill_master`
--

/*!40000 ALTER TABLE `supplier_goodwill_master` DISABLE KEYS */;
INSERT INTO `supplier_goodwill_master` (`Goodwill_Id`,`Goodwill_desc`) VALUES 
 ('SGI001','Hot'),
 ('SGI002','Warm'),
 ('SGI003','Cold');
/*!40000 ALTER TABLE `supplier_goodwill_master` ENABLE KEYS */;


--
-- Definition of table `supplier_history`
--

DROP TABLE IF EXISTS `supplier_history`;
CREATE TABLE `supplier_history` (
  `supp_hid` varchar(35) NOT NULL,
  `supp_name` varchar(45) NOT NULL,
  `contact_person_fname` varchar(45) NOT NULL,
  `contact_person_lname` varchar(45) NOT NULL,
  `contact_person_function` varchar(45) NOT NULL,
  `contact_person_phone` varchar(45) NOT NULL,
  `contact_person_email` varchar(45) NOT NULL,
  `termsandcondition` varchar(45) NOT NULL,
  `tech_feedback` varchar(45) NOT NULL,
  `fin_feedback` varchar(45) NOT NULL,
  `op_feedback` varchar(45) NOT NULL,
  PRIMARY KEY (`supp_hid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier_history`
--

/*!40000 ALTER TABLE `supplier_history` DISABLE KEYS */;
INSERT INTO `supplier_history` (`supp_hid`,`supp_name`,`contact_person_fname`,`contact_person_lname`,`contact_person_function`,`contact_person_phone`,`contact_person_email`,`termsandcondition`,`tech_feedback`,`fin_feedback`,`op_feedback`) VALUES 
 ('S101','V. K. Mehta','Virendra','Mehta','Supplier','9586215472','vkmehta01@gmail.com','XXXXXXXXXXXXXXXXXXXXX','Excellent','Expensive','Good'),
 ('S102','R. K. Pandey','Rakesh','Pandey','Supplier','9587456321','rkpandu@yahoo.com','XXXXXXXXXXXXXXXXXXXXXX','Good','Average','Better');
/*!40000 ALTER TABLE `supplier_history` ENABLE KEYS */;


--
-- Definition of table `supplier_master`
--

DROP TABLE IF EXISTS `supplier_master`;
CREATE TABLE `supplier_master` (
  `Supp_id` varchar(10) NOT NULL DEFAULT '',
  `Supp_name` varchar(45) NOT NULL DEFAULT '',
  `Supp_status_id` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`Supp_id`),
  KEY `FK_Supplier_Master_1` (`Supp_status_id`),
  CONSTRAINT `FK_Supplier_Master_1` FOREIGN KEY (`Supp_status_id`) REFERENCES `supplier_status_master` (`Supp_status_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier_master`
--

/*!40000 ALTER TABLE `supplier_master` DISABLE KEYS */;
INSERT INTO `supplier_master` (`Supp_id`,`Supp_name`,`Supp_status_id`) VALUES 
 ('SI001','Multix','SSI001'),
 ('SI002','Best','SSI002'),
 ('SI003','ESS-ELL','SSI002'),
 ('SI004','Arsh Enterprises','SSI001'),
 ('SI005','Times Suppliers','SSI001');
/*!40000 ALTER TABLE `supplier_master` ENABLE KEYS */;


--
-- Definition of table `supplier_quatation_master`
--

DROP TABLE IF EXISTS `supplier_quatation_master`;
CREATE TABLE `supplier_quatation_master` (
  `Supp_Quatation_Id` varchar(10) NOT NULL DEFAULT '',
  `Supp_id` varchar(10) NOT NULL DEFAULT '',
  `Req_id` varchar(10) NOT NULL DEFAULT '',
  `Proposedcost` varchar(45) NOT NULL DEFAULT '',
  `Currency_Id` varchar(10) NOT NULL DEFAULT '',
  `Unit_id` varchar(10) NOT NULL DEFAULT '',
  `Tech_Specification` varchar(45) NOT NULL DEFAULT '',
  `Remarks` varchar(45) NOT NULL DEFAULT '',
  `Tech_Feedback_status` enum('Pending','Done') NOT NULL DEFAULT 'Pending',
  `Financ_Feedback_status` enum('Pending','Done') NOT NULL DEFAULT 'Pending',
  PRIMARY KEY (`Supp_Quatation_Id`),
  KEY `FK_Supplier_Quatation_Master_1` (`Supp_id`),
  KEY `FK_Supplier_Quatation_Master_2` (`Req_id`),
  KEY `FK_Supplier_Quatation_Master_3` (`Currency_Id`),
  KEY `FK_Supplier_Quatation_Master_4` (`Unit_id`),
  CONSTRAINT `FK_Supplier_Quatation_Master_1` FOREIGN KEY (`Supp_id`) REFERENCES `supplier_master` (`Supp_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_Supplier_Quatation_Master_2` FOREIGN KEY (`Req_id`) REFERENCES `requirement_master` (`Req_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_Supplier_Quatation_Master_3` FOREIGN KEY (`Currency_Id`) REFERENCES `currency_master` (`Currency_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_Supplier_Quatation_Master_4` FOREIGN KEY (`Unit_id`) REFERENCES `unit_measure_master` (`Unit_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier_quatation_master`
--

/*!40000 ALTER TABLE `supplier_quatation_master` DISABLE KEYS */;
INSERT INTO `supplier_quatation_master` (`Supp_Quatation_Id`,`Supp_id`,`Req_id`,`Proposedcost`,`Currency_Id`,`Unit_id`,`Tech_Specification`,`Remarks`,`Tech_Feedback_status`,`Financ_Feedback_status`) VALUES 
 ('SQI002','SI002','REQ002','21000','CI003','UI002','Great Reflectivity','Good lamps','Pending','Done'),
 ('SQI003','SI003','REQ003','21000','CI003','UI002','1600rpm','Optimum performance','Done','Done'),
 ('SQI005','SI002','REQ003','2200','CI003','UI002','Great Reflectivity','Good lamps','Pending','Pending'),
 ('SQI1070967','SI002','REQ001','21000','CI001','UI002','dsdsds','ddsds','Done','Pending'),
 ('SQI3223916','SI004','REQ001','2100','CI002','UI003','abc','xyz','Pending','Pending');
/*!40000 ALTER TABLE `supplier_quatation_master` ENABLE KEYS */;


--
-- Definition of table `supplier_status_master`
--

DROP TABLE IF EXISTS `supplier_status_master`;
CREATE TABLE `supplier_status_master` (
  `Supp_status_id` varchar(10) NOT NULL DEFAULT '',
  `Supp_status_desc` enum('External','Internal') NOT NULL DEFAULT 'External',
  PRIMARY KEY (`Supp_status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier_status_master`
--

/*!40000 ALTER TABLE `supplier_status_master` DISABLE KEYS */;
INSERT INTO `supplier_status_master` (`Supp_status_id`,`Supp_status_desc`) VALUES 
 ('SSI001','Internal'),
 ('SSI002','External');
/*!40000 ALTER TABLE `supplier_status_master` ENABLE KEYS */;


--
-- Definition of table `technical_feedback_master`
--

DROP TABLE IF EXISTS `technical_feedback_master`;
CREATE TABLE `technical_feedback_master` (
  `Tech_Feedback_Id` varchar(10) NOT NULL DEFAULT '',
  `Supp_Quatation_Id` varchar(10) NOT NULL DEFAULT '',
  `Material_Goodwill_id` varchar(10) NOT NULL DEFAULT '',
  `Rating_Id` varchar(10) NOT NULL DEFAULT '',
  `Tech_Approved` enum('yes','no') NOT NULL DEFAULT 'yes',
  `Feedback` varchar(45) NOT NULL DEFAULT '',
  `Feedback_By` varchar(10) NOT NULL DEFAULT '',
  `FeedBackDate` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`Tech_Feedback_Id`),
  KEY `FK_Technical_Feedback_Master_1` (`Supp_Quatation_Id`),
  KEY `FK_Technical_Feedback_Master_2` (`Material_Goodwill_id`),
  KEY `FK_Technical_Feedback_Master_3` (`Rating_Id`),
  CONSTRAINT `FK_Technical_Feedback_Master_1` FOREIGN KEY (`Supp_Quatation_Id`) REFERENCES `supplier_quatation_master` (`Supp_Quatation_Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_Technical_Feedback_Master_2` FOREIGN KEY (`Material_Goodwill_id`) REFERENCES `material_tech_goodwill_master` (`Material_Goodwill_Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_Technical_Feedback_Master_3` FOREIGN KEY (`Rating_Id`) REFERENCES `rating_master` (`Rating_Id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `technical_feedback_master`
--

/*!40000 ALTER TABLE `technical_feedback_master` DISABLE KEYS */;
INSERT INTO `technical_feedback_master` (`Tech_Feedback_Id`,`Supp_Quatation_Id`,`Material_Goodwill_id`,`Rating_Id`,`Tech_Approved`,`Feedback`,`Feedback_By`,`FeedBackDate`) VALUES 
 ('asd','SQI002','MTGI002','RAT001','yes','qasdsa','dsad','2011-11-16'),
 ('TFI003','SQI003','MTGI004','RAT004','no','Poor Output','xyz','2011-05-02'),
 ('TFI4783166','SQI1070967','MTGI003','RAT002','yes','Good performance','xyz','2011-05-02'),
 ('zasds','SQI003','MTGI001','RAT001','yes','ada','dadsa','2011-11-16');
/*!40000 ALTER TABLE `technical_feedback_master` ENABLE KEYS */;


--
-- Definition of table `unit_measure_master`
--

DROP TABLE IF EXISTS `unit_measure_master`;
CREATE TABLE `unit_measure_master` (
  `Unit_id` varchar(10) NOT NULL DEFAULT '',
  `Unit_of_Measure` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`Unit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `unit_measure_master`
--

/*!40000 ALTER TABLE `unit_measure_master` DISABLE KEYS */;
INSERT INTO `unit_measure_master` (`Unit_id`,`Unit_of_Measure`) VALUES 
 ('UI001','Kg'),
 ('UI002','Units'),
 ('UI003','Gallons'),
 ('UI004','Quintal'),
 ('UI005','Litre');
/*!40000 ALTER TABLE `unit_measure_master` ENABLE KEYS */;


--
-- Definition of table `user_master`
--

DROP TABLE IF EXISTS `user_master`;
CREATE TABLE `user_master` (
  `User_id` varchar(10) NOT NULL DEFAULT '',
  `Emp_id` varchar(10) NOT NULL DEFAULT '',
  `Login_name` varchar(30) NOT NULL DEFAULT '',
  `Password` varchar(100) NOT NULL,
  PRIMARY KEY (`User_id`),
  KEY `FK_User_Master_1` (`Emp_id`),
  CONSTRAINT `FK_User_Master_1` FOREIGN KEY (`Emp_id`) REFERENCES `employee_master` (`Emp_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_master`
--

/*!40000 ALTER TABLE `user_master` DISABLE KEYS */;
INSERT INTO `user_master` (`User_id`,`Emp_id`,`Login_name`,`Password`) VALUES 
 ('USR001','EMP001','hpes1','d033e22ae348aeb5660fc2140aec35850c4da997'),
 ('USR002','EMP002','hpes2','51ea0e09501ffaa8f04dcd6ce6c38b9e27bf539c'),
 ('USR003','EMP003','hpes3','d68f5768e2c6ddbc394f06c14c4becc242e8d331'),
 ('USR004','EMP004','hpes4','0586e9e4344e8d03ea07f8d8e2bd514955a78ef1'),
 ('USR005','EMP005','hpes5','4cb8475e29e9700b8431cd431ca5595c4b5fb176');
/*!40000 ALTER TABLE `user_master` ENABLE KEYS */;


--
-- Definition of table `user_resource_map`
--

DROP TABLE IF EXISTS `user_resource_map`;
CREATE TABLE `user_resource_map` (
  `User_id` varchar(10) NOT NULL DEFAULT '',
  `Resc_id` varchar(10) NOT NULL DEFAULT '',
  KEY `FK_User_Resource_Map_1` (`User_id`),
  KEY `FK_User_Resource_Map_2` (`Resc_id`),
  CONSTRAINT `FK_User_Resource_Map_1` FOREIGN KEY (`User_id`) REFERENCES `user_master` (`User_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_User_Resource_Map_2` FOREIGN KEY (`Resc_id`) REFERENCES `resource_master` (`Resc_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_resource_map`
--

/*!40000 ALTER TABLE `user_resource_map` DISABLE KEYS */;
INSERT INTO `user_resource_map` (`User_id`,`Resc_id`) VALUES 
 ('USR001','RES001'),
 ('USR002','RES002'),
 ('USR003','RES003'),
 ('USR004','RES004'),
 ('USR005','RES005');
/*!40000 ALTER TABLE `user_resource_map` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
