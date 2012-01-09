/*
Navicat MySQL Data Transfer

Source Server         : DashboardServere
Source Server Version : 50516
Source Host           : 20.198.58.23:3306
Source Database       : dashboard

Target Server Type    : MYSQL
Target Server Version : 50516
File Encoding         : 65001

Date: 2012-01-09 12:49:53
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `account`
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `vertical` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `account` (`vertical`),
  CONSTRAINT `account` FOREIGN KEY (`vertical`) REFERENCES `vertical` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of account
-- ----------------------------
INSERT INTO `account` VALUES ('1', '1', 'DuPont');
INSERT INTO `account` VALUES ('2', '1', 'Scana');
INSERT INTO `account` VALUES ('3', '1', 'BHP Billiton');
INSERT INTO `account` VALUES ('4', '1', 'Rio Tinto');
INSERT INTO `account` VALUES ('5', '1', 'Invista');
INSERT INTO `account` VALUES ('6', '1', 'Chevron');

-- ----------------------------
-- Table structure for `appreciation`
-- ----------------------------
DROP TABLE IF EXISTS `appreciation`;
CREATE TABLE `appreciation` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `team` int(20) NOT NULL,
  `appreciation_for` varchar(100) DEFAULT NULL,
  `appreciation` varchar(1000) DEFAULT NULL,
  `appreciated_by` varchar(200) DEFAULT NULL,
  `relevance` varchar(50) DEFAULT NULL,
  `monthid` int(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `appr_team` (`team`),
  CONSTRAINT `appr_team` FOREIGN KEY (`team`) REFERENCES `team` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of appreciation
-- ----------------------------
INSERT INTO `appreciation` VALUES ('1', '1', 'Kapil appreciated by Stuart Rhood for providing all the information related to SSAE16 Audit.', 'Kapil, It is good when CPMT documentation is available and accurate!', 'Portfolio Mgr', 'High', '24139');
INSERT INTO `appreciation` VALUES ('2', '1', 'Kapil\'s Team appreciated by Rajeev Sinha for the Quiz initiative in the team.', 'It\'s a pleasure to observe the team bonding and \"DuPont before Self\" attitude. Keep up the spirit !', 'Rajeev Sinha', 'High', '24139');
INSERT INTO `appreciation` VALUES ('3', '1', 'Kapil appreciated by Piyush Gupta for his efforts for Operational Excellence initiative.', 'Murali, you and Kapil are the backbone for OE initiative', 'Piyush Gupta', 'Medium', '24139');
INSERT INTO `appreciation` VALUES ('4', '1', 'Ruchin appreciated by Avtar,Virag and Bhuvnesh for building up C3 portal for CENR Leadership team   ', null, 'Vertical Head', 'High', '24139');
INSERT INTO `appreciation` VALUES ('5', '1', 'Raghu', 'Good job, raghu. Logan was happy with all our changes. ', 'Client', 'High', '24139');
INSERT INTO `appreciation` VALUES ('6', '1', 'Raju', 'Thanks for the quick response to the reporting issues', 'Client', 'High', '24139');
INSERT INTO `appreciation` VALUES ('7', '1', 'Nagesh - Completing Paycalculator application', 'Nagesh,  Dave is quite happy and conveyed his happiness to be able to test the application soon after he sent the data. Thank you for doing this change for the time critical deadline of the application.', 'Customer', 'Medium', '24139');
INSERT INTO `appreciation` VALUES ('8', '1', 'Prakash -Completing a report based on Course Assignment Grouping and Courses.', 'OMG!!!!  Thank You Very Much....\r\n\r\nI\'ll check to see if anything is missing.\r\n\r\nOnce again, Thank You.', 'Customer', 'High', '24139');
INSERT INTO `appreciation` VALUES ('9', '1', 'Prakash -A course was deleted by the TLM administrator. Responded and got that back very quickly.', 'I just wanted to say Thank you to you and whoever else is responsible for the new report CAG course list report.   This report is very much needed and awesome.  It will save us a boatload of time. \r\n\r\nKeep up the great work!  :^)', 'Customer', 'High', '24139');
INSERT INTO `appreciation` VALUES ('10', '1', 'Prakash', 'Hurricane Irene had a possible impact. So monitored the sites related to EIMS and ensured that everything is fine.', 'Customer', 'High', '24139');
INSERT INTO `appreciation` VALUES ('11', '1', 'Atiya Parween - Fixing up some issues related to access.', 'Atiya, I\'m so sorry taking so long to respond. \r\nThe access is OK!. \r\nThank you a lot.', 'Customer', 'Medium', '24139');
INSERT INTO `appreciation` VALUES ('12', '1', 'Eurolog Team', 'Appreciated by Maurice for the good coordination and updates during the interlog Cat2 issue.', 'Client', 'High', '24139');
INSERT INTO `appreciation` VALUES ('13', '1', 'Babu Mannar', 'Appreciated by David and Yoery for the new EDI warehouse(STS and Kuehne+Nagel) successful set up deployment in MB.', 'Client', 'High', '24139');
INSERT INTO `appreciation` VALUES ('14', '1', 'Raja Rao', 'Thank you very much for completing this in a timely manner.', 'Dispatcher', 'High', '24139');
INSERT INTO `appreciation` VALUES ('15', '1', 'Raja Rao', 'Thanks for your support on this task - everything looks great.', 'Client', 'High', '24139');
INSERT INTO `appreciation` VALUES ('16', '1', 'Srikanth Badveli and Brahmaiah Manam', 'Appreciate all the hard work you guys put in to make Independence day a special day for \'Chandra Rajeswararao Foundation Old age Home\'. The sacrifices you made by spending your personal time towards a cause is exemplary.', 'Manager', 'Medium', '24139');
INSERT INTO `appreciation` VALUES ('17', '1', 'Kiran - Support during Hurricane', 'George,Madhu, Bhanu, Kiren, Weiwei and Tom\r\n\r\nI\'ll add my thanks and appreciation for your conscientiousness and support over this past weekend. All applications resources were part of this area being \"green\" throughout the recent hurricane.\r\nThanks for a job well done!\r\n\r\nBeth Jackson', 'Beth and Vishal', 'High', '24139');
INSERT INTO `appreciation` VALUES ('18', '1', 'Mainframe Team - Awards rolled out for successful completion of DR 2011', null, 'Dispatcher', 'High', '24139');
INSERT INTO `appreciation` VALUES ('19', '1', 'Hemanth Alapati', 'Thanks, all for your efforts -- I approve closing out the PQR.', 'Client', 'High', '24140');
INSERT INTO `appreciation` VALUES ('20', '1', 'Srikanth Badvel', 'Hi Srikanth …Done a  good job by uploading rare skill in KM Asset.Its a good knowledge asset for DuPont', 'Lead', 'Medium', '24140');
INSERT INTO `appreciation` VALUES ('21', '1', 'Kalyani Balabadra', 'Excellent Work !!! Keep up the good work !', 'Lead', 'Medium', '24140');
INSERT INTO `appreciation` VALUES ('22', '1', 'Amiti Chauhan', 'Amit ... Your commitment towards work is highly appreciated. Keep the Spirits High!!', 'Lead', 'Medium', '24140');
INSERT INTO `appreciation` VALUES ('23', '1', 'Amiti Chauhan', 'Good morning Amit,\r\nThanks a lot for your confirmation and for the efforts done to have the GL 2029 accesses ready for today.', 'Client', 'High', '24140');
INSERT INTO `appreciation` VALUES ('24', '1', 'Kiran', 'stopping and restarting the eConnect/Ex Station systems Many Thanks to George, Madhu, Bhanu, Kiran and Weiwei (and anyone I may have missed) for your efforts this weekend in stopping and restarting the eConnect/Ex Station systems.  DuPont is very appreciative of our support to help prevent problems due to the hurricane.  I appreciate your responsive over the weekend when I\'m sure you all had your own concerns with the weather.\r\n\r\nThanks again,\r\nTom ', 'Client & Manager', 'High', '24140');
INSERT INTO `appreciation` VALUES ('25', '1', 'Atiya', 'This is regarding the EPRS report change. User appreciated your work. Thanks again for making the change.', 'Customer', 'High', '24140');
INSERT INTO `appreciation` VALUES ('26', '1', 'Prakash', 'For fixing up an issue related to a Japanese user\'s login  and help the user to complete the courses within the time.  \"Prakash\r\n\r\nI have logged in the site and confirmed.\r\nI\'m really appreciated for your support.\r\n\r\nBest regards\r\nMasaki Fuji\"\r\n', 'Customer', 'High', '24140');
INSERT INTO `appreciation` VALUES ('27', '1', 'Prakash', 'For Identifying and moving all the sql related objects to Visual Source Safe. The task was scheduled for 56 hours but completed it ', 'Customer', 'High', '24140');
INSERT INTO `appreciation` VALUES ('28', '1', 'Babu', 'Appreciated by Yoery for the new EDI warehouse (JOHNSTON) successful set up and deployment in MB.', 'Client', 'High', '24140');
INSERT INTO `appreciation` VALUES ('29', '1', 'Prabhakar', 'Appreciated by Noelia Onsite backup Dispatcher for an analysis done on CAT2 PQR\'s', 'Dispatcher', 'Medium', '24140');
INSERT INTO `appreciation` VALUES ('30', '1', 'Murali', 'Received appreciation on custom SP work', 'Client', 'High', '24140');
INSERT INTO `appreciation` VALUES ('31', '1', 'Tabrez', 'We would like to thank you personally for the significant effort and commitment you demonstrated to support the CMMI Program which has resulted in a successful assessment and achievement of CMMI Level 3 DEV (Applications Development). This is a very important milestone for CSC in terms of driving continuous operational business excellence, contract retention and it positions CSC for future growth.\r\n\r\nThe attached certificate will be a reminder of this achievement and your contribution.\r\n', 'Director', 'High', '24140');
INSERT INTO `appreciation` VALUES ('32', '1', 'Kapil and his team', 'Appreciated by Senior Management in resolving CPMT outage before SLA Expired.', 'Application Director', 'High', '24140');
INSERT INTO `appreciation` VALUES ('33', '1', 'Kapil and his team', 'Appreciated by Application Director for reducing the Mean Time to Repair (MTR) rate for his team\'s cat 4 PQRs from 10 to 2 days.', 'Application Director', 'High', '24140');
INSERT INTO `appreciation` VALUES ('34', '1', 'Ruchin', 'Appreciated by Avtar,Virag and Bhuvnesh for building', 'Vertical head', 'High', '24140');
INSERT INTO `appreciation` VALUES ('35', '2', 'Sridhar Sakamuri', 'Appreciation on successful migration of Avanti Prod.', 'Client', 'High', '24141');
INSERT INTO `appreciation` VALUES ('36', '5', 'Ruchin', 'Appreciated by onsite Project Manager and Java Architectt for resolving a critical outage.', 'Onsite Project Manager', 'High', '24141');
INSERT INTO `appreciation` VALUES ('37', '5', 'Ruchin', ' Nominated as DuPonter of the  Quarter for the second quarter', 'Account Manager', 'High', '24141');
INSERT INTO `appreciation` VALUES ('38', '3', 'Raju', 'I really appreciate you taking the lead and moving the request forward. Great service thanks again.', 'Client', 'Medium', '24141');
INSERT INTO `appreciation` VALUES ('39', '3', 'Durga Narasimha', 'Thank you for all efforts in handling the month end process during HOLIDAY ', 'Dispatcher', 'Medium', '24141');
INSERT INTO `appreciation` VALUES ('40', '3', 'Vasu Jetty', 'Many thanks to you and the whole team for your efforts over the past months to make this migration successful!  I know it took a good deal of planning, coordination and communication to make things work and the successful results speak for themselves.', 'Onsite', 'Medium', '24141');
INSERT INTO `appreciation` VALUES ('41', '4', 'Ravinder Parsawar', 'Fast turn around and great Job by Ravi for making the changes on a last ', 'Customer', 'Medium', '24141');
INSERT INTO `appreciation` VALUES ('42', '4', 'Babu Mannar', 'Appreciated by David Latorre for the new EDI warehouse (KNLUXWH) successful set up and deployment in MB.', 'Client', 'High', '24141');
INSERT INTO `appreciation` VALUES ('43', '4', 'Prakash Krishnamurthy', 'Hello Prakash,Thanks, seen it was working this morning.  If there is items that I can do and try to fix it, let me know, I have no problems doing this.  I can look at some basic things but right now don\'t know alot what to look for when troubleshooting.The script notifying us is a great idea.', 'Customer', 'Medium', '24141');
INSERT INTO `appreciation` VALUES ('44', '1', 'Kalyani Balabadra', 'Great work,thanks', 'Onsite Manager', 'Medium', '24141');
INSERT INTO `appreciation` VALUES ('45', '1', 'Kalyani Balabadra', 'Your quick turnaround to deliver stuff is really impeccable. Keep up the Good work.', 'Onsite Manager', 'Medium', '24141');
INSERT INTO `appreciation` VALUES ('46', '2', 'Murali Kamjula', 'Thank you Murali for your long hours and hard work to resolve the VTRS11 issue.', 'Onsite Manager', 'Medium', '24142');
INSERT INTO `appreciation` VALUES ('47', '2', 'Murali Kamjula', 'Thank you Murali for your long hours and hard work to resolve the VTRS11 issue.     Thank you again for all your help. .', 'Customer, Onsite Manager', 'High', '24142');
INSERT INTO `appreciation` VALUES ('48', '2', 'Sridhar Sakamuri', 'Thank you to you and your team, the Avanti move to Production was successful this morning.  We couldn\'t have done it without the help from Max, Sridhar, and Alex.  Thanks again. ', 'Customer, Jay M Faulkner ', 'High', '24132');
INSERT INTO `appreciation` VALUES ('49', '2', 'Alamgir Khan', 'Good job !', 'Onsite Lead', 'Medium', '24142');
INSERT INTO `appreciation` VALUES ('50', '1', 'Kalyani Balabadra', 'Good Work, Thanks', 'Manager', 'Medium', '24142');
INSERT INTO `appreciation` VALUES ('51', '1', 'Srikanth Badveli', 'Great work, thanks', 'manager', 'Medium', '24142');
INSERT INTO `appreciation` VALUES ('53', '1', 'Kiran Kumar Amara', 'Thanks you both for the updates and completing the task on time.', 'Client', 'High', '24142');
INSERT INTO `appreciation` VALUES ('54', '1', 'Kiran Kumar Amara', 'Good Job, Thanks Bill', 'Architect', 'High', '24142');
INSERT INTO `appreciation` VALUES ('55', '3', 'Vara Prasad', 'Hi Vara   Big difference!!   Yes it looks good.  I compared to \'Pending\' hires on SPI page. ', 'Kathy Cortese', 'Medium', '24142');
INSERT INTO `appreciation` VALUES ('56', '5', 'Namita Soni', 'Thanks for working with production deployment and a job well done', 'Client', 'High', '24132');
INSERT INTO `appreciation` VALUES ('57', '5', 'Namita Soni', 'Thanks for working with production deployment and a job well done Namita', 'Client', 'High', '24142');
INSERT INTO `appreciation` VALUES ('58', '1', 'Suchi Khanna', 'Great work in creating team reports with filters and delivering the weekly customized reports.', 'SDM', 'Medium', '24132');
INSERT INTO `appreciation` VALUES ('59', '1', 'Atreya Das', 'A Huge Thanks to Atreya and team for the hardwork and efforts put in for maing this event a grand success.Terrific Job', 'Peer', 'Medium', '24132');
INSERT INTO `appreciation` VALUES ('61', '4', 'Babu Mannar', 'I would also like to thank all team members especially  in Russia for their extended effort in the evening. ', 'Yoery Van_Gorp Client', 'High', '24142');
INSERT INTO `appreciation` VALUES ('62', '4', 'Nagesh Kacham', ' In spite of multiple access issues and last minute late decisions from our side, you are able to meet the deadline. Thanks a lot and appreciate your dedication on this. I cannot thank you and your team enough for making this happen.', 'Sharath Mukkamala - System Integrator', 'High', '24142');
INSERT INTO `appreciation` VALUES ('63', '4', 'Prakash Krishnamurthy', 'yes, thank you!!!!  you have done a great job... ', 'Jorge Martinez Soto', 'High', '24142');
INSERT INTO `appreciation` VALUES ('64', '4', 'Prakash Krishnamurthy', 'Thank you Prakash! Supervisors saved the first new report today and there was not problem.', 'Jorge Martinez Soto', 'High', '24142');
INSERT INTO `appreciation` VALUES ('65', '4', 'Prakash Krishnamurthy', 'Thanks for making my life happy. I really appreciate your patience for tracking my communication.', 'Prasad Adari - Customer', 'Medium', '24142');
INSERT INTO `appreciation` VALUES ('66', '4', 'Prakash Krishnamurthy', 'Thank you once again for your involvement with my issue.', 'Greg Bennett (Customer)', 'High', '24142');
INSERT INTO `appreciation` VALUES ('67', '4', 'Prabhakar Ethirajan', 'Got Apprication from Onsite team for testing Interlog during deployment on weekend.', 'Noelia - EMEA CSC', 'Medium', '24142');
INSERT INTO `appreciation` VALUES ('68', '5', 'Kapil Gupta', 'Automation for Operational Excellence dashboard', 'Avtar Mahajan', 'High', '24143');
INSERT INTO `appreciation` VALUES ('69', '1', 'Murali Mohan Siddojigari', 'Appreciated for work on Operational Excellence', 'Avtar Mahajan', 'High', '24143');
INSERT INTO `appreciation` VALUES ('70', '11', 'Sakthivel Mahtiyazhagan', 'Good Job Sakthi!!! I appreciate you doing further analysis', 'Satish Kudaravalli', 'High', '24144');
INSERT INTO `appreciation` VALUES ('71', '3', 'Pavan Manuguri', 'Very quick in response and extremely helpful in resolving the issue.', 'Client', 'High', '24143');
INSERT INTO `appreciation` VALUES ('72', '3', 'Samba', 'I greatly appreciate the dedication and fine work we receive from our AgDocBase (documentum) support team', 'Client', 'High', '24143');
INSERT INTO `appreciation` VALUES ('73', '3', 'Vara', 'Thank you for sharing your learnings !', 'Client', 'Medium', '24143');
INSERT INTO `appreciation` VALUES ('74', '3', 'Raghu', 'The ultimate tester didn\'t find anything.  Great work !', 'Client', 'High', '24143');

-- ----------------------------
-- Table structure for `assessment_programs`
-- ----------------------------
DROP TABLE IF EXISTS `assessment_programs`;
CREATE TABLE `assessment_programs` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `team` int(20) NOT NULL,
  `knowledge` int(20) DEFAULT '0',
  `process` int(20) DEFAULT '0',
  `technical` int(20) DEFAULT '0',
  `monthid` int(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `assess_month_team` (`team`,`monthid`) USING BTREE,
  CONSTRAINT `assess_team` FOREIGN KEY (`team`) REFERENCES `team` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of assessment_programs
-- ----------------------------
INSERT INTO `assessment_programs` VALUES ('1', '1', '4', '4', '4', '24135');
INSERT INTO `assessment_programs` VALUES ('2', '2', '4', '3', '4', '24135');
INSERT INTO `assessment_programs` VALUES ('3', '3', '2', '2', '2', '24135');
INSERT INTO `assessment_programs` VALUES ('4', '4', '4', '4', '4', '24135');
INSERT INTO `assessment_programs` VALUES ('5', '5', '3', '4', '3', '24135');
INSERT INTO `assessment_programs` VALUES ('6', '1', '4', '4', '4', '24139');
INSERT INTO `assessment_programs` VALUES ('7', '2', '4', '4', '4', '24139');
INSERT INTO `assessment_programs` VALUES ('8', '3', '4', '4', '4', '24139');
INSERT INTO `assessment_programs` VALUES ('9', '4', '4', '4', '4', '24139');
INSERT INTO `assessment_programs` VALUES ('10', '5', '4', '4', '4', '24139');
INSERT INTO `assessment_programs` VALUES ('11', '1', '4', '4', '4', '24140');
INSERT INTO `assessment_programs` VALUES ('12', '2', '4', '4', '4', '24140');
INSERT INTO `assessment_programs` VALUES ('13', '3', '4', '4', '4', '24140');
INSERT INTO `assessment_programs` VALUES ('14', '4', '4', '4', '4', '24140');
INSERT INTO `assessment_programs` VALUES ('15', '5', '4', '4', '4', '24140');
INSERT INTO `assessment_programs` VALUES ('21', '1', '4', '4', '4', '24141');
INSERT INTO `assessment_programs` VALUES ('22', '2', '4', '4', '4', '24141');
INSERT INTO `assessment_programs` VALUES ('23', '3', '4', '4', '4', '24141');
INSERT INTO `assessment_programs` VALUES ('24', '4', '4', '4', '4', '24141');
INSERT INTO `assessment_programs` VALUES ('25', '5', '4', '4', '4', '24141');
INSERT INTO `assessment_programs` VALUES ('26', '2', '4', '4', '4', '24142');
INSERT INTO `assessment_programs` VALUES ('27', '1', '4', '4', '4', '24142');
INSERT INTO `assessment_programs` VALUES ('28', '3', '4', '4', '4', '24142');
INSERT INTO `assessment_programs` VALUES ('29', '5', '4', '4', '4', '24142');
INSERT INTO `assessment_programs` VALUES ('30', '4', '4', '4', '4', '24142');
INSERT INTO `assessment_programs` VALUES ('31', '1', '4', '4', '3', '24143');

-- ----------------------------
-- Table structure for `attrition`
-- ----------------------------
DROP TABLE IF EXISTS `attrition`;
CREATE TABLE `attrition` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `account` int(10) NOT NULL,
  `attrition_num` int(10) NOT NULL,
  `opening_head_count` int(10) NOT NULL,
  `closing_head_count` int(10) NOT NULL,
  `monthid` int(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `monthacc` (`monthid`,`account`) USING BTREE,
  KEY `acctatt` (`account`),
  CONSTRAINT `acctatt` FOREIGN KEY (`account`) REFERENCES `account` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of attrition
-- ----------------------------
INSERT INTO `attrition` VALUES ('1', '1', '3', '86', '83', '24123');
INSERT INTO `attrition` VALUES ('2', '1', '0', '83', '83', '24124');
INSERT INTO `attrition` VALUES ('3', '1', '3', '83', '84', '24125');
INSERT INTO `attrition` VALUES ('4', '1', '1', '84', '80', '24126');
INSERT INTO `attrition` VALUES ('5', '1', '0', '80', '76', '24127');
INSERT INTO `attrition` VALUES ('6', '1', '2', '76', '72', '24128');
INSERT INTO `attrition` VALUES ('7', '1', '4', '72', '75', '24129');
INSERT INTO `attrition` VALUES ('8', '1', '3', '75', '73', '24130');
INSERT INTO `attrition` VALUES ('9', '1', '0', '73', '75', '24131');
INSERT INTO `attrition` VALUES ('10', '1', '1', '75', '73', '24132');
INSERT INTO `attrition` VALUES ('11', '1', '0', '73', '71', '24133');
INSERT INTO `attrition` VALUES ('12', '1', '2', '72', '73', '24134');
INSERT INTO `attrition` VALUES ('13', '1', '2', '76', '75', '24135');
INSERT INTO `attrition` VALUES ('14', '1', '4', '75', '75', '24136');
INSERT INTO `attrition` VALUES ('15', '1', '3', '75', '71', '24137');
INSERT INTO `attrition` VALUES ('16', '1', '0', '71', '71', '24138');
INSERT INTO `attrition` VALUES ('17', '1', '0', '71', '71', '24139');
INSERT INTO `attrition` VALUES ('18', '1', '1', '71', '72', '24140');
INSERT INTO `attrition` VALUES ('19', '1', '1', '72', '73', '24141');
INSERT INTO `attrition` VALUES ('20', '1', '0', '73', '74', '24142');
INSERT INTO `attrition` VALUES ('21', '1', '1', '72', '73', '24143');

-- ----------------------------
-- Table structure for `authorities`
-- ----------------------------
DROP TABLE IF EXISTS `authorities`;
CREATE TABLE `authorities` (
  `username` varchar(50) NOT NULL,
  `authority` varchar(50) NOT NULL DEFAULT 'ROLE_USER',
  `account` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of authorities
-- ----------------------------
INSERT INTO `authorities` VALUES ('admin', 'ROLE_USER', null);
INSERT INTO `authorities` VALUES ('amahajan5', 'ROLE_USER', null);
INSERT INTO `authorities` VALUES ('asehgal2', 'ROLE_USER', null);
INSERT INTO `authorities` VALUES ('bchhibar', 'ROLE_USER', null);
INSERT INTO `authorities` VALUES ('bmannar', 'ROLE_USER', null);
INSERT INTO `authorities` VALUES ('hvoruganti', 'ROLE_USER', null);
INSERT INTO `authorities` VALUES ('kamara2', 'ROLE_USER', null);
INSERT INTO `authorities` VALUES ('kappalakanak', 'ROLE_USER', null);
INSERT INTO `authorities` VALUES ('kgupta4', 'ROLE_USER', null);
INSERT INTO `authorities` VALUES ('kmallampalli', 'ROLE_USER', null);
INSERT INTO `authorities` VALUES ('ksanthiya', 'ROLE_USER', null);
INSERT INTO `authorities` VALUES ('lvempati2', 'ROLE_USER', null);
INSERT INTO `authorities` VALUES ('mharidasan', 'ROLE_USER', null);
INSERT INTO `authorities` VALUES ('mkamjula', 'ROLE_USER', null);
INSERT INTO `authorities` VALUES ('msiddojigari', 'ROLE_USER', null);
INSERT INTO `authorities` VALUES ('nkacham2', 'ROLE_USER', null);
INSERT INTO `authorities` VALUES ('pgupta29', 'ROLE_USER', null);
INSERT INTO `authorities` VALUES ('pkrishnamur2', 'ROLE_USER', null);
INSERT INTO `authorities` VALUES ('rakula', 'ROLE_USER', null);
INSERT INTO `authorities` VALUES ('rkohli5', 'ROLE_USER', null);
INSERT INTO `authorities` VALUES ('rparitala', 'ROLE_USER', null);
INSERT INTO `authorities` VALUES ('rsinha24', 'ROLE_USER', null);
INSERT INTO `authorities` VALUES ('sguduri', 'ROLE_USER', null);
INSERT INTO `authorities` VALUES ('skothandara4', 'ROLE_USER', null);
INSERT INTO `authorities` VALUES ('smamidi', 'ROLE_USER', null);
INSERT INTO `authorities` VALUES ('srao23', 'ROLE_USER', null);
INSERT INTO `authorities` VALUES ('ssethi2', 'ROLE_USER', null);
INSERT INTO `authorities` VALUES ('staparia', 'ROLE_USER', null);
INSERT INTO `authorities` VALUES ('tquazi', 'ROLE_USER', null);
INSERT INTO `authorities` VALUES ('vbansal7', 'ROLE_USER', null);
INSERT INTO `authorities` VALUES ('vbhargava2', 'ROLE_USER', null);
INSERT INTO `authorities` VALUES ('vchalapati2', 'ROLE_USER', null);
INSERT INTO `authorities` VALUES ('vhathi', 'ROLE_USER', null);
INSERT INTO `authorities` VALUES ('vvundi', 'ROLE_USER', null);

-- ----------------------------
-- Table structure for `backfill_management`
-- ----------------------------
DROP TABLE IF EXISTS `backfill_management`;
CREATE TABLE `backfill_management` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `account` int(10) NOT NULL,
  `novient` varchar(20) DEFAULT NULL,
  `emp_serving_notice` varchar(200) DEFAULT NULL,
  `last_working_date` varchar(30) DEFAULT NULL,
  `replacement_date` varchar(30) DEFAULT NULL,
  `replacement_identified` varchar(300) DEFAULT NULL,
  `status` varchar(1000) DEFAULT NULL,
  `monthid` int(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `backacc` (`account`),
  CONSTRAINT `backacc` FOREIGN KEY (`account`) REFERENCES `account` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of backfill_management
-- ----------------------------
INSERT INTO `backfill_management` VALUES ('1', '1', '275877', 'Chandra S Cherukuri', 'May 6, 2011', '', 'No', 'No bench candidate available. Interviewing external candidates', '24135');
INSERT INTO `backfill_management` VALUES ('2', '1', '285008', 'Anil Kumar Agrawal', 'May 20, 2011', null, 'No', 'No bench candidate available. Interviewing external candidates', '24135');
INSERT INTO `backfill_management` VALUES ('3', '1', '340321', 'Menaka', '', 'Sep 30, 2011', 'No', 'Need to find a junior mainframe profile for a release from the Team. Requirement sent to RMG', '24139');
INSERT INTO `backfill_management` VALUES ('4', '1', '333478', 'Sriram Srinivas', 'Sep 26, 2011', 'Sep 27, 2011', 'Yes', 'New resource(Sajja vamsi Krishna) will onboard on 5th Sep', '24139');
INSERT INTO `backfill_management` VALUES ('5', '1', '336687', 'Hemanth Patel', '', '', 'No', 'Replacement not identified, in process', '24139');
INSERT INTO `backfill_management` VALUES ('6', '1', '340321', 'Menaka', '', 'Sep 30, 2011', 'No', 'Need to find a junior mainframe profile for a release from the Team. Requirement sent to RMG', '24140');
INSERT INTO `backfill_management` VALUES ('7', '1', '333478', 'Sriram Srinivas', 'Sep 23, 2011', 'Sep 19, 2011', 'Yes', 'Sajja vamsi Krishna New resource billing started from 19th Sep 2011', '24140');
INSERT INTO `backfill_management` VALUES ('8', '1', '336687', 'Hemanth Patel', '', '', 'No', 'Replacement not identified In process', '24140');
INSERT INTO `backfill_management` VALUES ('9', '1', 'NA', 'Atiya Parween', 'Nov 11, 2011', 'Nov 12, 2011', 'Yes', 'Waiting for Onsite counterpart to accept the GET Resource - Gowtham Raja (@Chennai). KT is going on.', '24140');
INSERT INTO `backfill_management` VALUES ('10', '1', '345145', 'Suman ', '', 'Oct 31, 2011', 'Yes', 'Suman has opted for Release and we are working on the replacement. Sent the profiles to onsite for further process. Waiting for Helene\'s updates. Onsite is fine with Aparna.', '24140');
INSERT INTO `backfill_management` VALUES ('11', '1', '290846', 'No', '', '', 'No', 'Resource Idenfied - Hiring in process', '24140');
INSERT INTO `backfill_management` VALUES ('12', '1', '298963', 'No', '', '', 'No', 'Oracle / SQL - New position', '24140');
INSERT INTO `backfill_management` VALUES ('13', '1', '347431', 'No', '', '', 'No', 'Mohammed S Ahmed\'s  CSC position in process', '24140');
INSERT INTO `backfill_management` VALUES ('14', '1', '336687', 'No', '', '', 'Yes', 'Joining Date is 5th Dec,2011	', '24141');
INSERT INTO `backfill_management` VALUES ('15', '1', '290846', 'No', '', '', 'Yes', 'Joined CSC on 31st Oct, 2011	', '24141');
INSERT INTO `backfill_management` VALUES ('16', '1', '298963', 'No', '', '', 'No', 'Oracle / SQL - New position, In Process	', '24141');
INSERT INTO `backfill_management` VALUES ('17', '1', '345145', 'No', '', 'Oct 31, 2011', 'No', 'Suman gave GRS KT to Aparna Pattnaik(Replacement for Suman) and she started billing from 31st Oct 2011.', '24141');
INSERT INTO `backfill_management` VALUES ('18', '1', ' 340321', 'Yes', 'Dec 9, 2011	', 'Dec 11, 2011', 'Yes', 'Replacement undergoing KT and is billable from 1-Nov-2011', '24141');
INSERT INTO `backfill_management` VALUES ('19', '1', 'NA', 'No', '', 'Nov 12, 2011', 'Yes', 'Waiting for Onsite counterpart to accept the GET Resource - Gowtham Raja (@Chennai). KT is going on. She will continue with the team  	', '24141');
INSERT INTO `backfill_management` VALUES ('20', '1', '336687', 'Hemanth (RIM) replacemen', 'Dec 16, 2011', 'Dec 19, 2011', 'Yes', 'Billing Start date is 19-Dec-2011', '24142');
INSERT INTO `backfill_management` VALUES ('21', '1', '298963', 'New position for both SQL and Oracle', '', '', 'Yes', 'DOJ 08/12/2011', '24142');
INSERT INTO `backfill_management` VALUES ('22', '1', '369897 ', 'Yes', 'Jan 2, 2012', '', 'Yes', 'Offer needs to be rolled out', '24132');
INSERT INTO `backfill_management` VALUES ('23', '1', '375246', 'Yes', 'Jan 16, 2012', '', 'No', 'Resource team is in search of profiles', '24142');
INSERT INTO `backfill_management` VALUES ('24', '1', '381569', 'Yes - Jayashree Anbazhaghan', 'Jan 20, 2012', 'Jan 1, 2012', 'Yes', 'Ongoing. Offer is being rolled out. Expecting the candidate to join at the earliest.', '24142');
INSERT INTO `backfill_management` VALUES ('25', '1', '381646', 'No', 'No', 'Jan 15, 2012', 'Yes', 'KT is going on.', '24142');
INSERT INTO `backfill_management` VALUES ('26', '1', '34301', 'Yes', 'Jan 20, 2012', 'Jan 21, 2012', 'No', 'going for External hiring', '24143');

-- ----------------------------
-- Table structure for `billing`
-- ----------------------------
DROP TABLE IF EXISTS `billing`;
CREATE TABLE `billing` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `team` int(10) NOT NULL,
  `head_count` int(10) NOT NULL,
  `offshore_billing_hc` int(10) DEFAULT '0',
  `onshore_billing_hc` int(10) DEFAULT '0',
  `loss_of_billing_avg_hc` int(10) DEFAULT '0',
  `partial_billing` int(10) DEFAULT '0',
  `emanage_sap_disc` int(10) unsigned zerofill DEFAULT '0000000000',
  `open_demand_replacement` int(10) unsigned zerofill DEFAULT '0000000000',
  `open_demand_new` int(10) unsigned zerofill DEFAULT '0000000000',
  `demand_forecast_replacement` int(10) unsigned zerofill DEFAULT '0000000000',
  `demand_forecast_new` int(10) unsigned zerofill DEFAULT '0000000000',
  `mts` int(10) unsigned zerofill DEFAULT '0000000000',
  `incomplete_etes` int(10) unsigned zerofill DEFAULT '0000000000',
  `max_possible_billing_hrs` decimal(10,2) unsigned zerofill DEFAULT '00000000.00',
  `billed_hrs` decimal(10,2) unsigned zerofill DEFAULT '00000000.00',
  `grade_mix` int(10) unsigned zerofill DEFAULT '0000000000',
  `monthid` int(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `billmonth` (`monthid`,`team`) USING BTREE,
  KEY `billingteam` (`team`),
  CONSTRAINT `billingteam` FOREIGN KEY (`team`) REFERENCES `team` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of billing
-- ----------------------------
INSERT INTO `billing` VALUES ('2', '1', '23', '23', '0', '0', '0', '0000000002', '0000000001', '0000000001', '0000000001', '0000000000', '0000000000', '0000000000', '00001032.00', '00000995.00', '0000000011', '24135');
INSERT INTO `billing` VALUES ('6', '3', '15', '15', '0', '0', '0', '0000000000', '0000000001', '0000000000', '0000000001', '0000000001', '0000000000', '0000000000', '00000675.00', '00000597.00', '0000000008', '24135');
INSERT INTO `billing` VALUES ('7', '2', '8', '8', '0', '0', '0', '0000000001', '0000000000', '0000000001', '0000000000', '0000000001', '0000000000', '0000000000', '00000360.00', '00000380.50', '0000000002', '24135');
INSERT INTO `billing` VALUES ('8', '4', '14', '14', '0', '0', '0', '0000000000', '0000000001', '0000000000', '0000000001', '0000000000', '0000000000', '0000000000', '00000630.00', '00000523.00', '0000000005', '24135');
INSERT INTO `billing` VALUES ('9', '5', '14', '13', '0', '0', '0', '0000000000', '0000000000', '0000000000', '0000000000', '0000000000', '0000000000', '0000000000', '00000585.00', '00000511.50', '0000000007', '24135');
INSERT INTO `billing` VALUES ('10', '1', '22', '20', '0', '0', '0', '0000000000', '0000000001', '0000000000', '0000000001', '0000000000', '0000000000', '0000000000', '00000990.00', '00000956.00', '0000000009', '24139');
INSERT INTO `billing` VALUES ('11', '3', '16', '14', '2', '0', '0', '0000000000', '0000000000', '0000000000', '0000000000', '0000000000', '0000000000', '0000000001', '00000720.00', '00000706.50', '0000000008', '24139');
INSERT INTO `billing` VALUES ('12', '2', '8', '8', '0', '0', '0', '0000000000', '0000000001', '0000000001', '0000000001', '0000000001', '0000000000', '0000000000', '00000360.00', '00000389.00', '0000000003', '24139');
INSERT INTO `billing` VALUES ('13', '4', '12', '12', '0', '0', '0', '0000000000', '0000000000', '0000000002', '0000000000', '0000000002', '0000000000', '0000000001', '00000540.00', '00000510.00', '0000000005', '24139');
INSERT INTO `billing` VALUES ('14', '5', '12', '12', '0', '0', '0', '0000000000', '0000000001', '0000000000', '0000000001', '0000000000', '0000000000', '0000000000', '00000540.00', '00000486.50', '0000000005', '24139');
INSERT INTO `billing` VALUES ('15', '1', '23', '21', '1', '0', '0', '0000000000', '0000000000', '0000000000', '0000000000', '0000000000', '0000000000', '0000000001', '00000990.00', '00000990.00', '0000000009', '24140');
INSERT INTO `billing` VALUES ('16', '2', '8', '8', '0', '0', '0', '0000000000', '0000000000', '0000000002', '0000000001', '0000000002', '0000000000', '0000000000', '00000360.00', '00000405.00', '0000000003', '24140');
INSERT INTO `billing` VALUES ('17', '3', '16', '16', '0', '0', '0', '0000000000', '0000000000', '0000000000', '0000000000', '0000000000', '0000000000', '0000000000', '00000720.00', '00000648.00', '0000000008', '24140');
INSERT INTO `billing` VALUES ('18', '4', '12', '12', '0', '0', '0', '0000000000', '0000000001', '0000000001', '0000000001', '0000000001', '0000000000', '0000000000', '00000540.00', '00000508.50', '0000000005', '24140');
INSERT INTO `billing` VALUES ('19', '5', '12', '11', '1', '0', '0', '0000000000', '0000000002', '0000000000', '0000000002', '0000000000', '0000000000', '0000000001', '00000540.00', '00000508.50', '0000000006', '24140');
INSERT INTO `billing` VALUES ('20', '1', '22', '22', '0', '0', '0', '0000000000', '0000000000', '0000000000', '0000000000', '0000000000', '0000000000', '0000000000', '00000990.00', '00000619.00', '0000000009', '24141');
INSERT INTO `billing` VALUES ('21', '2', '8', '8', '0', '0', '0', '0000000000', '0000000001', '0000000002', '0000000001', '0000000002', '0000000000', '0000000000', '00000360.00', '00000322.50', '0000000003', '24141');
INSERT INTO `billing` VALUES ('22', '3', '16', '16', '0', '0', '0', '0000000000', '0000000000', '0000000001', '0000000000', '0000000001', '0000000000', '0000000000', '00000720.00', '00000486.00', '0000000008', '24141');
INSERT INTO `billing` VALUES ('23', '4', '13', '12', '0', '0', '0', '0000000000', '0000000000', '0000000001', '0000000000', '0000000001', '0000000000', '0000000000', '00000540.00', '00000367.00', '0000000005', '24141');
INSERT INTO `billing` VALUES ('24', '5', '12', '12', '0', '0', '0', '0000000000', '0000000000', '0000000000', '0000000000', '0000000000', '0000000000', '0000000000', '00000540.00', '00000332.00', '0000000006', '24141');
INSERT INTO `billing` VALUES ('25', '1', '22', '22', '0', '0', '0', '0000000000', '0000000000', '0000000000', '0000000000', '0000000000', '0000000000', '0000000000', '00000990.00', '00000921.00', '0000000009', '24142');
INSERT INTO `billing` VALUES ('26', '3', '16', '16', '0', '0', '0', '0000000000', '0000000000', '0000000000', '0000000000', '0000000000', '0000000000', '0000000000', '00000720.00', '00000690.50', '0000000008', '24142');
INSERT INTO `billing` VALUES ('28', '4', '12', '12', '0', '0', '0', '0000000000', '0000000001', '0000000000', '0000000001', '0000000000', '0000000000', '0000000000', '00000540.00', '00000474.00', '0000000005', '24142');
INSERT INTO `billing` VALUES ('29', '5', '13', '13', '0', '0', '0', '0000000000', '0000000000', '0000000000', '0000000000', '0000000000', '0000000000', '0000000000', '00000585.00', '00000550.50', '0000000007', '24142');
INSERT INTO `billing` VALUES ('30', '2', '9', '9', '0', '0', '0', '0000000000', '0000000002', '0000000001', '0000000002', '0000000001', '0000000000', '0000000000', '00000405.00', '00000437.50', '0000000004', '24142');

-- ----------------------------
-- Table structure for `contribution_to_top10`
-- ----------------------------
DROP TABLE IF EXISTS `contribution_to_top10`;
CREATE TABLE `contribution_to_top10` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `team` int(20) NOT NULL,
  `name_of_contributor` varchar(100) DEFAULT NULL,
  `position_in_top10` int(20) DEFAULT NULL,
  `monthid` int(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `top_team` (`team`),
  CONSTRAINT `top_team` FOREIGN KEY (`team`) REFERENCES `team` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of contribution_to_top10
-- ----------------------------
INSERT INTO `contribution_to_top10` VALUES ('1', '1', 'asdasd', '1', '24135');
INSERT INTO `contribution_to_top10` VALUES ('2', '2', 'XYZ', '2', '24135');
INSERT INTO `contribution_to_top10` VALUES ('3', '2', '2', '0', '24142');
INSERT INTO `contribution_to_top10` VALUES ('4', '1', 'Brahmaiah manam', '2', '24142');
INSERT INTO `contribution_to_top10` VALUES ('5', '1', 'kiran kumar', '2', '24143');

-- ----------------------------
-- Table structure for `csat`
-- ----------------------------
DROP TABLE IF EXISTS `csat`;
CREATE TABLE `csat` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `team` int(20) NOT NULL,
  `description` varchar(100) NOT NULL,
  `rating` varchar(100) NOT NULL,
  `monthid` int(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `csat_team` (`team`),
  CONSTRAINT `csat_team` FOREIGN KEY (`team`) REFERENCES `team` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of csat
-- ----------------------------
INSERT INTO `csat` VALUES ('1', '1', 'Annual Feedback', 'Good', '24135');
INSERT INTO `csat` VALUES ('2', '2', 'Annual Feedback', 'Average', '24135');
INSERT INTO `csat` VALUES ('3', '3', 'Annual Feedback', 'Good', '24135');
INSERT INTO `csat` VALUES ('4', '4', 'Annual Feedback', 'Good', '24135');
INSERT INTO `csat` VALUES ('5', '5', 'Annual Feedback', 'Good', '24135');
INSERT INTO `csat` VALUES ('6', '1', 'Feedback from Bhuvnesh', 'Good', '24139');
INSERT INTO `csat` VALUES ('7', '2', 'Feedback from Bhuvnesh', 'Good', '24139');
INSERT INTO `csat` VALUES ('8', '3', 'Feedback from Bhuvnesh', 'Good', '24139');
INSERT INTO `csat` VALUES ('9', '4', 'Feedback from Bhuvnesh', 'Good', '24139');
INSERT INTO `csat` VALUES ('10', '5', 'Feedback from Bhuvnesh', 'Good', '24139');
INSERT INTO `csat` VALUES ('11', '1', 'Feedback from Bhuvnesh', 'Good', '24140');
INSERT INTO `csat` VALUES ('12', '2', 'Feedback from Bhuvnesh', 'Good', '24140');
INSERT INTO `csat` VALUES ('13', '3', 'Feedback from Bhuvnesh', 'Good', '24140');
INSERT INTO `csat` VALUES ('14', '4', 'Feedback from Bhuvnesh', 'Good', '24140');
INSERT INTO `csat` VALUES ('15', '5', 'Feedback from Bhuvnesh', 'Good', '24140');
INSERT INTO `csat` VALUES ('16', '1', 'Feedback from Bhuvnesh		', 'Good', '24141');
INSERT INTO `csat` VALUES ('17', '2', 'Feedback from Bhuvnesh		', 'Good', '24141');
INSERT INTO `csat` VALUES ('18', '3', 'Feedback from Bhuvnesh		', 'Good', '24141');
INSERT INTO `csat` VALUES ('19', '4', 'Feedback from Bhuvnesh	', 'Good', '24141');
INSERT INTO `csat` VALUES ('20', '5', 'Feedback from Bhuvnesh		', 'Good', '24141');
INSERT INTO `csat` VALUES ('21', '1', 'Annual Feedback', 'Good', '24142');
INSERT INTO `csat` VALUES ('22', '3', 'feedback from Bhuvnesh', 'Good', '24142');
INSERT INTO `csat` VALUES ('23', '4', 'Feedback from onsite / offshore', 'Good', '24142');
INSERT INTO `csat` VALUES ('24', '2', 'Feedback from Bhuvnesh', 'Good', '24142');
INSERT INTO `csat` VALUES ('25', '5', 'Feedback from Bhuvnesh', 'Good', '24142');
INSERT INTO `csat` VALUES ('26', '1', 'Feedback from Bhuvnesh', 'Good', '24143');

-- ----------------------------
-- Table structure for `escalations`
-- ----------------------------
DROP TABLE IF EXISTS `escalations`;
CREATE TABLE `escalations` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `escalation` varchar(500) NOT NULL,
  `status` varchar(100) DEFAULT NULL,
  `assigned_to` varchar(100) DEFAULT NULL,
  `days_open` int(10) DEFAULT NULL,
  `account` int(10) NOT NULL,
  `monthid` int(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `escacc` (`account`),
  CONSTRAINT `escacc` FOREIGN KEY (`account`) REFERENCES `account` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of escalations
-- ----------------------------
INSERT INTO `escalations` VALUES ('1', 'Risk : No Bench for DuPont Account. Attrition is 25%', 'Open', 'Bhuvnesh', '60', '1', '24135');
INSERT INTO `escalations` VALUES ('2', 'Issues- Low Salary', 'Open', 'Bhuvnesh', null, '1', '24135');
INSERT INTO `escalations` VALUES ('3', 'Loss of Key People due to Attrition', 'Open', 'Bhuvnesh', '30', '1', '24135');
INSERT INTO `escalations` VALUES ('4', 'No Onsite opportunity', 'Open', 'Bhuvnesh', null, '1', '24135');
INSERT INTO `escalations` VALUES ('5', 'Issues- Low Salary', 'Open', 'Bhuvnesh', null, '1', '24139');
INSERT INTO `escalations` VALUES ('6', 'Loss of Key People due to Attrition', 'Open', 'Bhuvnesh', '30', '1', '24139');
INSERT INTO `escalations` VALUES ('7', 'Issues _ No long term Onsite opportunity', 'Open', 'Bhuvnesh', null, '1', '24139');
INSERT INTO `escalations` VALUES ('8', 'Issues- Low Salary', 'Open', 'Bhuvnesh', null, '1', '24140');
INSERT INTO `escalations` VALUES ('9', 'Loss of Key People due to Attrition', 'Open', 'Bhuvnesh', '60', '1', '24140');
INSERT INTO `escalations` VALUES ('10', 'Issues _ No long term Onsite opportunity', 'Open', 'Bhuvnesh', null, '1', '24140');
INSERT INTO `escalations` VALUES ('11', 'Issues- Low Salary		', 'Open', 'Bhuvnesh', null, '1', '24141');
INSERT INTO `escalations` VALUES ('12', 'Loss of Key People due to Attrition		', 'Open', 'Bhuvnesh', '30', '1', '24141');
INSERT INTO `escalations` VALUES ('13', 'Issues _ No long term Onsite opportunity		', 'Open', 'Bhuvnesh', null, '1', '24141');
INSERT INTO `escalations` VALUES ('14', 'Issues- Low Salary		', 'Open', 'Bhuvnesh', null, '1', '24142');
INSERT INTO `escalations` VALUES ('15', 'Loss of Key People due to Attrition		', 'Open', 'Bhuvnesh', '30', '1', '24142');
INSERT INTO `escalations` VALUES ('16', 'Issues _ No long term Onsite opportunity		', 'Open', 'Bhuvnesh', null, '1', '24142');
INSERT INTO `escalations` VALUES ('17', 'Loss of FTE due to increased target billable hours		', 'Open', 'Bhuvnesh', null, '1', '24142');
INSERT INTO `escalations` VALUES ('18', 'Increase in attrition due to stoping of Retention Bonus		', 'Open', 'Bhuvnesh', null, '1', '24142');

-- ----------------------------
-- Table structure for `improve_initi`
-- ----------------------------
DROP TABLE IF EXISTS `improve_initi`;
CREATE TABLE `improve_initi` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `account` int(20) NOT NULL,
  `name_of_prog` varchar(100) NOT NULL,
  `primary_team` varchar(100) DEFAULT NULL,
  `owner` varchar(100) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `start_score` varchar(30) DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `desired_score` varchar(30) DEFAULT NULL,
  `num_ppl_affected` int(20) DEFAULT NULL,
  `internal_training_conducted` varchar(20) DEFAULT NULL,
  `prog_desc` varchar(200) DEFAULT NULL,
  `monthid` int(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `impro_acc` (`account`),
  CONSTRAINT `impro_acc` FOREIGN KEY (`account`) REFERENCES `account` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of improve_initi
-- ----------------------------
INSERT INTO `improve_initi` VALUES ('1', '1', 'CMMI Training', 'Dupont Team', 'CSC US', '2010-12-01', '5', '2011-07-31', '7', '71', 'Yes', 'CMMI Training for scheduled audit', '24135');
INSERT INTO `improve_initi` VALUES ('2', '1', 'Quiz for ITIL', 'DAE + Service Ctrl', 'Kapil', '2011-07-01', '6', '2011-09-30', '8', '12', 'Yes', null, '24139');
INSERT INTO `improve_initi` VALUES ('3', '1', 'Session on Cloud Computing', 'DAE + Service Ctrl', 'Kapil', '2011-07-01', '3', '2011-10-31', '7', '12', 'Yes', null, '24139');
INSERT INTO `improve_initi` VALUES ('4', '1', 'Wiki Restructuring', 'DAE', 'Kapil', '2011-07-01', '5', '2011-08-31', '8', '8', 'Yes', null, '24139');
INSERT INTO `improve_initi` VALUES ('5', '1', 'Backup Plan', 'DuPont Team', 'CSC India', '2011-06-01', '4', '2011-08-15', '7', '16', 'Yes', 'KT in progress', '24139');
INSERT INTO `improve_initi` VALUES ('6', '1', 'Outage Process Improvement', 'Eurolog Team', 'Prakash', '2011-08-01', '3', '2011-08-31', '8', '5', 'No', 'Potential outages are identified and acted upon qucikly to avoid the business impact.', '24139');
INSERT INTO `improve_initi` VALUES ('7', '1', 'Techie thrusday\'s Quiz', 'Mainframe Team', 'Vishal', '2011-08-01', '5', '2011-08-31', '8', '18', 'No', 'Weekly Quiz', '24139');
INSERT INTO `improve_initi` VALUES ('8', '1', 'ITIL Awarenes trainings', 'DuPont Team', 'CSC India', '2011-08-01', '5', '2011-08-15', '8', '71', 'No', null, '24139');
INSERT INTO `improve_initi` VALUES ('9', '1', 'Quiz for ITIL', 'DAE + Service Ctrl', 'Kapil', '2011-07-01', '6', '2011-09-30', '8', '12', 'Yes', '', '24140');
INSERT INTO `improve_initi` VALUES ('10', '1', 'Session on Cloud Computing', 'DAE + Service Ctrl', 'Kapil', '2011-07-01', '3', '2011-10-31', '7', '12', 'Yes', '', '24140');
INSERT INTO `improve_initi` VALUES ('11', '1', 'ITIL Awarenes trainings', 'DuPont Team', 'CSC India', '2011-08-01', '5', '2011-09-15', '8', '71', 'No', '', '24140');
INSERT INTO `improve_initi` VALUES ('12', '1', 'Spanish Language Training', 'Econnect Team', 'Vishal', '2011-09-12', '0', '2011-09-23', '3', '3', 'Yes', null, '24140');
INSERT INTO `improve_initi` VALUES ('13', '1', 'Outage Process Improvement', 'Eurolog Team', 'Prakash', '2011-08-01', '3', '2011-11-30', '8', '5', 'No', 'Potential outages are identified and acted upon qucikly to avoid the business impact.', '24140');
INSERT INTO `improve_initi` VALUES ('14', '1', 'Techie thrusday\'s Quiz', 'Mainframe Team', 'Vishal', '2011-09-01', '5', '2011-09-30', '8', '18', 'No', 'Weekly Quiz', '24140');
INSERT INTO `improve_initi` VALUES ('15', '1', 'Session on Cloud Computing	', 'DAE + Service Ctrl', 'Kapil', '2011-07-01', '3', '2011-10-31', '7', '12', 'Yes', '', '24141');
INSERT INTO `improve_initi` VALUES ('16', '1', 'REXX Training	', 'Legacy team', 'Vishal', '2011-10-12', '5', '2011-10-18', '7', '17', 'Yes', 'REXX Training', '24141');
INSERT INTO `improve_initi` VALUES ('17', '1', 'Techie Thursday\'s Quiz	', 'Legacy team', 'Vishal', '2011-10-01', '5', '2011-10-31', '7', '21', 'No', 'Weekly Quiz on mainframe ', '24141');
INSERT INTO `improve_initi` VALUES ('18', '1', 'Outage Process Improvement	', 'Eurolog Team', 'Prakash', '2011-08-01', '3', '2011-11-30', '8', '5', 'No', 'Potential outages are identified and acted upon qucikly to avoid the business impact.   Outages must be communicated and  escalated in a timely manner as established on this procedure    ', '24141');
INSERT INTO `improve_initi` VALUES ('19', '1', 'ITIL Quiz', 'Kapil', 'Kapil', '2011-09-01', '6', '2012-03-31', '8', '12', 'No', 'Quiz on Sametime to enhance knowledge on sametime', '24142');
INSERT INTO `improve_initi` VALUES ('20', '1', 'Technical Presentation', 'Legacy Team', 'Srikanth BAdveli', '2011-11-12', '5', '2011-11-18', '7', '21', 'Yes', 'Editing Characters in Cobol program', '24142');
INSERT INTO `improve_initi` VALUES ('21', '1', 'Techie Thursday\'s Quiz	', 'Legacy', 'Kalyani', '2011-11-01', '5', '2011-11-30', '7', '21', 'Yes', 'Weekly quiz on Mainframe technology', '24142');
INSERT INTO `improve_initi` VALUES ('22', '1', 'General Presentation', 'DuPont Chennai', 'Prakash Krishnamurthy', '2011-11-01', '5', '2011-11-30', '9', '12', 'No', 'Bomb Detection Technique', '24142');
INSERT INTO `improve_initi` VALUES ('23', '1', 'Technical Presentation', 'DuPont Chennai', 'Prakash Krishnamurthy', '2011-11-01', '2', '2011-11-30', '10', '12', 'No', 'LaTeX document ', '24142');
INSERT INTO `improve_initi` VALUES ('24', '2', 'Snack & Learn Sessions', '', '', '2011-12-20', '', '2011-12-23', '', '10', 'No', 'Overview of HP tools, QTP, SPRINTER, ALM', '24143');
INSERT INTO `improve_initi` VALUES ('25', '1', 'Techie Thursday Quiz', 'Legacy Team', 'Vishal', '2012-01-13', '3', '2012-01-31', '6', '20', 'Yes', 'Weekly Quiz on Mainframes', '24143');

-- ----------------------------
-- Table structure for `incident`
-- ----------------------------
DROP TABLE IF EXISTS `incident`;
CREATE TABLE `incident` (
  `id` int(10) NOT NULL,
  `team` int(10) NOT NULL,
  `month` int(10) NOT NULL,
  `cat1-2-count` int(10) DEFAULT NULL,
  `cat1-2-success` int(10) DEFAULT NULL,
  `cat1-2-fail` int(10) DEFAULT NULL,
  `cat3-count` int(10) DEFAULT NULL,
  `cat3-success` int(10) DEFAULT NULL,
  `cat3-fail` int(10) DEFAULT NULL,
  `cat4-count` int(10) DEFAULT NULL,
  `cat4-success` int(10) DEFAULT NULL,
  `cat4-fail` int(10) DEFAULT NULL,
  `cat5-count` int(10) DEFAULT NULL,
  `cat5-success` int(10) DEFAULT NULL,
  `cat5-fail` int(10) DEFAULT NULL,
  `monthid` int(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `teammonth` (`team`,`monthid`) USING BTREE,
  CONSTRAINT `incidentteam` FOREIGN KEY (`team`) REFERENCES `team` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of incident
-- ----------------------------

-- ----------------------------
-- Table structure for `innovation`
-- ----------------------------
DROP TABLE IF EXISTS `innovation`;
CREATE TABLE `innovation` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `team` int(20) NOT NULL,
  `avg_hc` int(20) unsigned NOT NULL DEFAULT '0',
  `inno_submitted` int(20) unsigned DEFAULT '0',
  `inno_qualified` int(20) unsigned DEFAULT '0',
  `manhrs_of_qualified_inno` int(20) unsigned DEFAULT '0',
  `monthid` int(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `inno_month_team` (`team`,`monthid`) USING BTREE,
  CONSTRAINT `inno_team` FOREIGN KEY (`team`) REFERENCES `team` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of innovation
-- ----------------------------
INSERT INTO `innovation` VALUES ('1', '1', '23', '0', '0', '0', '24135');
INSERT INTO `innovation` VALUES ('2', '2', '8', '2', '1', '30', '24135');
INSERT INTO `innovation` VALUES ('3', '3', '15', '0', '0', '0', '24135');
INSERT INTO `innovation` VALUES ('4', '4', '14', '1', '0', '10', '24135');
INSERT INTO `innovation` VALUES ('5', '5', '13', '0', '0', '0', '24135');
INSERT INTO `innovation` VALUES ('6', '1', '22', '0', '0', '0', '24139');
INSERT INTO `innovation` VALUES ('7', '2', '8', '1', '1', '20', '24139');
INSERT INTO `innovation` VALUES ('8', '3', '16', '0', '0', '0', '24139');
INSERT INTO `innovation` VALUES ('9', '4', '12', '0', '0', '0', '24139');
INSERT INTO `innovation` VALUES ('10', '5', '12', '0', '0', '0', '24139');
INSERT INTO `innovation` VALUES ('11', '1', '22', '0', '0', '0', '24140');
INSERT INTO `innovation` VALUES ('12', '2', '8', '1', '1', '20', '24140');
INSERT INTO `innovation` VALUES ('13', '3', '16', '0', '0', '0', '24140');
INSERT INTO `innovation` VALUES ('14', '4', '12', '1', '0', '0', '24140');
INSERT INTO `innovation` VALUES ('15', '5', '12', '0', '0', '0', '24140');
INSERT INTO `innovation` VALUES ('16', '1', '22', '0', '0', '0', '24141');
INSERT INTO `innovation` VALUES ('17', '2', '8', '0', '0', '0', '24141');
INSERT INTO `innovation` VALUES ('18', '3', '16', '0', '0', '0', '24141');
INSERT INTO `innovation` VALUES ('19', '4', '13', '1', '0', '0', '24141');
INSERT INTO `innovation` VALUES ('20', '5', '12', '0', '0', '0', '24141');
INSERT INTO `innovation` VALUES ('21', '5', '13', '0', '0', '0', '24142');
INSERT INTO `innovation` VALUES ('22', '3', '16', '0', '0', '0', '24142');
INSERT INTO `innovation` VALUES ('23', '4', '12', '1', '1', '10', '24142');
INSERT INTO `innovation` VALUES ('24', '1', '22', '0', '0', '0', '24142');
INSERT INTO `innovation` VALUES ('25', '2', '9', '0', '0', '0', '24142');
INSERT INTO `innovation` VALUES ('26', '1', '22', '2', '1', '10', '24144');

-- ----------------------------
-- Table structure for `km_scorecard`
-- ----------------------------
DROP TABLE IF EXISTS `km_scorecard`;
CREATE TABLE `km_scorecard` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `team` int(20) NOT NULL,
  `numKMContrib` int(20) DEFAULT '0',
  `qualTop10` int(20) DEFAULT '0',
  `hc` int(20) DEFAULT NULL,
  `monthid` int(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `km_team_month` (`team`,`monthid`) USING BTREE,
  CONSTRAINT `km_team` FOREIGN KEY (`team`) REFERENCES `team` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of km_scorecard
-- ----------------------------
INSERT INTO `km_scorecard` VALUES ('1', '1', '1', '0', '23', '24135');
INSERT INTO `km_scorecard` VALUES ('2', '2', '2', '0', '8', '24135');
INSERT INTO `km_scorecard` VALUES ('3', '3', '1', '0', '15', '24135');
INSERT INTO `km_scorecard` VALUES ('4', '4', '4', '0', '14', '24135');
INSERT INTO `km_scorecard` VALUES ('5', '5', '0', '0', '13', '24135');
INSERT INTO `km_scorecard` VALUES ('6', '1', '2', '0', '22', '24139');
INSERT INTO `km_scorecard` VALUES ('7', '2', '6', '0', '8', '24139');
INSERT INTO `km_scorecard` VALUES ('8', '3', '2', '0', '16', '24139');
INSERT INTO `km_scorecard` VALUES ('9', '4', '3', '0', '12', '24139');
INSERT INTO `km_scorecard` VALUES ('10', '5', '0', '0', '12', '24139');
INSERT INTO `km_scorecard` VALUES ('11', '1', '7', '0', '22', '24140');
INSERT INTO `km_scorecard` VALUES ('12', '2', '0', '0', '8', '24140');
INSERT INTO `km_scorecard` VALUES ('13', '3', '3', '0', '16', '24140');
INSERT INTO `km_scorecard` VALUES ('14', '4', '2', '0', '12', '24140');
INSERT INTO `km_scorecard` VALUES ('15', '5', '0', '0', '12', '24140');
INSERT INTO `km_scorecard` VALUES ('16', '1', '0', '0', '22', '24141');
INSERT INTO `km_scorecard` VALUES ('17', '2', '0', '0', '8', '24141');
INSERT INTO `km_scorecard` VALUES ('18', '3', '0', '0', '16', '24141');
INSERT INTO `km_scorecard` VALUES ('19', '4', '4', '0', '13', '24141');
INSERT INTO `km_scorecard` VALUES ('20', '5', '0', '0', '12', '24141');
INSERT INTO `km_scorecard` VALUES ('22', '5', '0', '0', '13', '24142');
INSERT INTO `km_scorecard` VALUES ('23', '4', '3', '0', '12', '24142');
INSERT INTO `km_scorecard` VALUES ('24', '1', '0', '0', '22', '24142');
INSERT INTO `km_scorecard` VALUES ('25', '2', '0', '0', '9', '24142');
INSERT INTO `km_scorecard` VALUES ('26', '3', '1', '0', '16', '24142');
INSERT INTO `km_scorecard` VALUES ('27', '1', '22', '0', '23', '24143');

-- ----------------------------
-- Table structure for `margins`
-- ----------------------------
DROP TABLE IF EXISTS `margins`;
CREATE TABLE `margins` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `team` int(10) NOT NULL,
  `revenue` decimal(10,2) DEFAULT NULL,
  `cost` decimal(10,2) DEFAULT NULL,
  `monthid` int(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `marmonthteam` (`monthid`,`team`) USING BTREE,
  KEY `marteam` (`team`),
  CONSTRAINT `marteam` FOREIGN KEY (`team`) REFERENCES `team` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of margins
-- ----------------------------
INSERT INTO `margins` VALUES ('1', '1', '108451.23', '57183.00', '24135');
INSERT INTO `margins` VALUES ('2', '3', '72913.02', '37515.37', '24135');
INSERT INTO `margins` VALUES ('3', '5', '56827.46', '28424.37', '24135');
INSERT INTO `margins` VALUES ('4', '4', '60913.90', '31554.25', '24135');
INSERT INTO `margins` VALUES ('5', '2', '41583.69', '22786.75', '24135');
INSERT INTO `margins` VALUES ('6', '1', '109002.21', '58867.13', '24139');
INSERT INTO `margins` VALUES ('7', '2', '44675.30', '24115.88', '24139');
INSERT INTO `margins` VALUES ('8', '3', '81942.97', '42449.88', '24139');
INSERT INTO `margins` VALUES ('9', '4', '61388.36', '33307.50', '24139');
INSERT INTO `margins` VALUES ('10', '5', '55388.80', '28628.63', '24139');
INSERT INTO `margins` VALUES ('11', '1', '139704.04', '75191.88', '24140');
INSERT INTO `margins` VALUES ('12', '2', '57011.13', '30736.13', '24140');
INSERT INTO `margins` VALUES ('13', '3', '97431.63', '50230.13', '24140');
INSERT INTO `margins` VALUES ('14', '4', '73387.48', '40076.50', '24140');
INSERT INTO `margins` VALUES ('15', '5', '72407.96', '36842.88', '24140');
INSERT INTO `margins` VALUES ('16', '1', '96289.88', '51864.75', '24141');
INSERT INTO `margins` VALUES ('17', '2', '54690.89', '30160.85', '24141');
INSERT INTO `margins` VALUES ('18', '3', '70412.18', '37581.33', '24141');
INSERT INTO `margins` VALUES ('19', '4', '61198.57', '33892.10', '24141');
INSERT INTO `margins` VALUES ('20', '5', '54684.77', '27385.63', '24141');
INSERT INTO `margins` VALUES ('21', '1', '109415.45', '58745.63', '24142');
INSERT INTO `margins` VALUES ('22', '3', '78912.58', '40811.13', '24142');
INSERT INTO `margins` VALUES ('23', '2', '47629.16', '25966.25', '24142');
INSERT INTO `margins` VALUES ('24', '4', '60362.92', '32929.50', '24142');
INSERT INTO `margins` VALUES ('25', '5', '62582.15', '31024.25', '24142');

-- ----------------------------
-- Table structure for `months`
-- ----------------------------
DROP TABLE IF EXISTS `months`;
CREATE TABLE `months` (
  `id` int(10) NOT NULL,
  `month` int(10) NOT NULL,
  `year` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique months` (`month`,`year`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of months
-- ----------------------------
INSERT INTO `months` VALUES ('10', '1', '2011');
INSERT INTO `months` VALUES ('22', '1', '2012');
INSERT INTO `months` VALUES ('11', '2', '2011');
INSERT INTO `months` VALUES ('0', '3', '2010');
INSERT INTO `months` VALUES ('12', '3', '2011');
INSERT INTO `months` VALUES ('1', '4', '2010');
INSERT INTO `months` VALUES ('13', '4', '2011');
INSERT INTO `months` VALUES ('2', '5', '2010');
INSERT INTO `months` VALUES ('14', '5', '2011');
INSERT INTO `months` VALUES ('3', '6', '2010');
INSERT INTO `months` VALUES ('15', '6', '2011');
INSERT INTO `months` VALUES ('4', '7', '2010');
INSERT INTO `months` VALUES ('16', '7', '2011');
INSERT INTO `months` VALUES ('5', '8', '2010');
INSERT INTO `months` VALUES ('17', '8', '2011');
INSERT INTO `months` VALUES ('6', '9', '2010');
INSERT INTO `months` VALUES ('18', '9', '2011');
INSERT INTO `months` VALUES ('7', '10', '2010');
INSERT INTO `months` VALUES ('19', '10', '2011');
INSERT INTO `months` VALUES ('8', '11', '2010');
INSERT INTO `months` VALUES ('20', '11', '2011');
INSERT INTO `months` VALUES ('9', '12', '2010');
INSERT INTO `months` VALUES ('21', '12', '2011');

-- ----------------------------
-- Table structure for `month_def`
-- ----------------------------
DROP TABLE IF EXISTS `month_def`;
CREATE TABLE `month_def` (
  `month_num` int(10) NOT NULL,
  `month` varchar(10) NOT NULL,
  PRIMARY KEY (`month_num`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of month_def
-- ----------------------------
INSERT INTO `month_def` VALUES ('1', 'Jan');
INSERT INTO `month_def` VALUES ('2', 'Feb');
INSERT INTO `month_def` VALUES ('3', 'Mar');
INSERT INTO `month_def` VALUES ('4', 'Apr');
INSERT INTO `month_def` VALUES ('5', 'May');
INSERT INTO `month_def` VALUES ('6', 'Jun');
INSERT INTO `month_def` VALUES ('7', 'Jul');
INSERT INTO `month_def` VALUES ('8', 'Aug');
INSERT INTO `month_def` VALUES ('9', 'Sep');
INSERT INTO `month_def` VALUES ('10', 'Oct');
INSERT INTO `month_def` VALUES ('11', 'Nov');
INSERT INTO `month_def` VALUES ('12', 'Dec');

-- ----------------------------
-- Table structure for `new_order_closed`
-- ----------------------------
DROP TABLE IF EXISTS `new_order_closed`;
CREATE TABLE `new_order_closed` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `team` int(20) NOT NULL,
  `type` varchar(100) NOT NULL,
  `effort` varchar(50) NOT NULL,
  `description` varchar(300) NOT NULL,
  `status` varchar(100) DEFAULT NULL,
  `monthid` int(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `new_order_team` (`team`),
  CONSTRAINT `new_order_team` FOREIGN KEY (`team`) REFERENCES `team` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of new_order_closed
-- ----------------------------
INSERT INTO `new_order_closed` VALUES ('1', '2', 'Project', '9', 'extra Billing on TORS9', null, '24135');
INSERT INTO `new_order_closed` VALUES ('2', '2', 'IBM Project', '10', 'IBM Extranet work', null, '24135');
INSERT INTO `new_order_closed` VALUES ('3', '5', 'Support Services', '1 FTE', 'New position offshored in Eservices team (Prashant Thombre)', null, '24135');
INSERT INTO `new_order_closed` VALUES ('4', '1', 'Project', '40', 'ICAN stylesheet project ', null, '24135');
INSERT INTO `new_order_closed` VALUES ('5', '4', 'WIF EUD05652', '40', 'MB New warehouse set up Project', null, '24139');
INSERT INTO `new_order_closed` VALUES ('6', '2', 'Project', '25', 'New Server Build', null, '24139');
INSERT INTO `new_order_closed` VALUES ('7', '2', 'Project', '20', 'TPGUPI server installation,PDS Reports', 'Completed', '24140');
INSERT INTO `new_order_closed` VALUES ('8', '2', 'Project', '15', 'Custom package creation & PDS Report ', 'Completed', '24141');
INSERT INTO `new_order_closed` VALUES ('9', '4', 'Development', '40 Hrs', 'WIF EUD05809  - Lehnkering new EDI warehouse set up in Germany for CPP in MB and Log2000 Database', 'Completed', '24142');

-- ----------------------------
-- Table structure for `representation_in_csc`
-- ----------------------------
DROP TABLE IF EXISTS `representation_in_csc`;
CREATE TABLE `representation_in_csc` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `account` int(10) NOT NULL,
  `team` int(10) DEFAULT NULL,
  `name_of_forum` varchar(100) DEFAULT NULL,
  `resource` varchar(200) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `support_required` varchar(500) DEFAULT NULL,
  `monthid` int(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `repacc` (`account`),
  KEY `repteam` (`team`),
  CONSTRAINT `repacc` FOREIGN KEY (`account`) REFERENCES `account` (`id`),
  CONSTRAINT `repteam` FOREIGN KEY (`team`) REFERENCES `team` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of representation_in_csc
-- ----------------------------
INSERT INTO `representation_in_csc` VALUES ('1', '1', '5', 'Samskruthi', 'Ruchin', 'Completed', 'Ruchin has done anchoring', '24135');
INSERT INTO `representation_in_csc` VALUES ('2', '1', '1', 'TT competition @ Noida', 'Vishal/Lalit', 'Completed', '1st runner up  from NOIDA', '24135');
INSERT INTO `representation_in_csc` VALUES ('3', '1', '5', 'Leadership summit at NOIDA', 'Ruchin /Bhuvensh', 'Completed', 'coordinated the Leadership summit at NOIDA', '24135');
INSERT INTO `representation_in_csc` VALUES ('4', '1', '4', 'Interview panel for .Net weekend drive', 'Nagesh', 'Completed', null, '24139');
INSERT INTO `representation_in_csc` VALUES ('5', '1', '1', 'Binergy - Aug 15th Celebrations ', 'Srikanth & Brahmaiah ', 'Completed', null, '24139');
INSERT INTO `representation_in_csc` VALUES ('6', '1', '1', 'Techie Thrusday\'s News letter', 'Kalyani', 'Completed', null, '24139');
INSERT INTO `representation_in_csc` VALUES ('7', '1', '1', 'Techie Thrusday\'s News letter', 'Kalyani', 'Completed', null, '24140');
INSERT INTO `representation_in_csc` VALUES ('8', '1', '4', 'Yoga Sessions', 'Thamaraiselvi', 'Ongoing', 'Every Friday, she takes a session for 6-8 girls teaching the yogic exercises, apart from her work. Members from various projects join this ', '24140');
INSERT INTO `representation_in_csc` VALUES ('9', '1', '4', 'Interview panel for .Net weekend drive @ Chennai', 'Prakash Krishnamurthy', 'Completed', 'The weekend drive saw many candidates that it took around 8:30 PM to complete all the candidates.', '24140');
INSERT INTO `representation_in_csc` VALUES ('10', '1', '4', 'IBM Cloud Certification Architecture V1 		', 'Thamaraiselvi & Prakash', 'Completed', 'Cleared the exam	', '24141');
INSERT INTO `representation_in_csc` VALUES ('11', '1', '4', 'News Letter for October 		', 'Suman/Prabhu & Prakash', 'Ongoing', 'Released News Letter for the Quarter	', '24141');
INSERT INTO `representation_in_csc` VALUES ('12', '1', '4', 'DuPonter of the Quarter 		', 'Prabhakar Ethirajan', 'Completed', '', '24141');
INSERT INTO `representation_in_csc` VALUES ('13', '1', '1', 'Techie Thrusday\'s News letter		', 'Kalyani', 'Ongoing', '', '24141');
INSERT INTO `representation_in_csc` VALUES ('14', '1', '1', 'CSC Toastmasters Club		', 'Brahmaiah', 'Completed', '', '24141');
INSERT INTO `representation_in_csc` VALUES ('15', '1', '1', 'CSC Toast Masters club', 'Brahmaiah', 'Completed', '', '24142');
INSERT INTO `representation_in_csc` VALUES ('16', '1', '1', 'Techie Thursdays News letter', 'Kalyani balabadra', 'Completed', '', '24142');
INSERT INTO `representation_in_csc` VALUES ('17', '1', '4', 'Panel for recruiting members for SOCGEN team.', 'Prakash Krishnamurthy', 'Ongoing', '', '24142');
INSERT INTO `representation_in_csc` VALUES ('18', '1', '4', 'Security Bulletin', 'ALL', 'Completed', '', '24142');
INSERT INTO `representation_in_csc` VALUES ('19', '1', '4', 'CSC Holiday ecard', 'Prakash Krishamurthy, Gowtham Raja', 'Completed', '', '24142');

-- ----------------------------
-- Table structure for `resource_rotation`
-- ----------------------------
DROP TABLE IF EXISTS `resource_rotation`;
CREATE TABLE `resource_rotation` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `account` int(10) NOT NULL,
  `statistics` varchar(10) DEFAULT '0',
  `groupTxt` varchar(200) DEFAULT NULL,
  `monthid` int(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `resourceacc` (`account`),
  CONSTRAINT `resourceacc` FOREIGN KEY (`account`) REFERENCES `account` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of resource_rotation
-- ----------------------------
INSERT INTO `resource_rotation` VALUES ('1', '1', '34%', 'Employees working in the same job for more than 24 months', '24135');
INSERT INTO `resource_rotation` VALUES ('2', '1', '7%', 'Employees undergone job rotation', '24135');
INSERT INTO `resource_rotation` VALUES ('3', '1', '0', '# of emp moved across Team', '24135');
INSERT INTO `resource_rotation` VALUES ('4', '1', '0', '# of emp moved across DuPont', '24135');
INSERT INTO `resource_rotation` VALUES ('5', '1', '0', '# of emp moved across Telecom', '24135');
INSERT INTO `resource_rotation` VALUES ('6', '1', '2', '# of emp moved across TCG & CENR', '24135');
INSERT INTO `resource_rotation` VALUES ('7', '1', '49%', 'Employees working in the same job for more than 24 months', '24139');
INSERT INTO `resource_rotation` VALUES ('8', '1', '1%', 'Employees undergone job rotation', '24139');
INSERT INTO `resource_rotation` VALUES ('9', '1', '0', '# of emp moved across Team', '24139');
INSERT INTO `resource_rotation` VALUES ('10', '1', '2', '# of emp moved across DuPont', '24139');
INSERT INTO `resource_rotation` VALUES ('11', '1', '0', '# of emp moved across Telecom', '24139');
INSERT INTO `resource_rotation` VALUES ('12', '1', '0', '# of emp moved across TCG & CENR', '24139');
INSERT INTO `resource_rotation` VALUES ('13', '1', '49%', 'Employees working in the same job for more than 24 months', '24140');
INSERT INTO `resource_rotation` VALUES ('14', '1', '0%', 'Employees undergone job rotation', '24140');
INSERT INTO `resource_rotation` VALUES ('15', '1', '49%', 'Employees working in the same job for more than 24 months	', '24141');
INSERT INTO `resource_rotation` VALUES ('16', '1', '1%', 'Employees undergone job rotation	', '24141');
INSERT INTO `resource_rotation` VALUES ('17', '1', '0', '# of emp moved across Team	', '24141');
INSERT INTO `resource_rotation` VALUES ('18', '1', '2', '# of emp moved across DuPont	', '24141');
INSERT INTO `resource_rotation` VALUES ('19', '1', '0', '# of emp moved across Telecom	', '24141');
INSERT INTO `resource_rotation` VALUES ('20', '1', '0', '# of emp moved across TCG & CENR	', '24141');
INSERT INTO `resource_rotation` VALUES ('21', '1', '45.95%', 'Employees working in the same job for more than 24 months', '24142');
INSERT INTO `resource_rotation` VALUES ('22', '1', '1.35%', 'Employees undergone job rotation', '24142');
INSERT INTO `resource_rotation` VALUES ('23', '1', '0', '# of emp moved across Team', '24142');
INSERT INTO `resource_rotation` VALUES ('24', '1', '1', '# of emp moved across DuPont', '24142');
INSERT INTO `resource_rotation` VALUES ('25', '1', '0', '# of emp moved across Telecom', '24142');
INSERT INTO `resource_rotation` VALUES ('26', '1', '1', '# of emp moved across TCG & CENR', '24142');

-- ----------------------------
-- Table structure for `sla`
-- ----------------------------
DROP TABLE IF EXISTS `sla`;
CREATE TABLE `sla` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `sla` decimal(20,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sla
-- ----------------------------

-- ----------------------------
-- Table structure for `sla_adherence`
-- ----------------------------
DROP TABLE IF EXISTS `sla_adherence`;
CREATE TABLE `sla_adherence` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `team` int(20) NOT NULL,
  `sev12` int(20) DEFAULT NULL,
  `sev12success` int(20) DEFAULT NULL,
  `sev3` int(20) DEFAULT NULL,
  `sev3success` int(20) DEFAULT NULL,
  `sev4` int(20) DEFAULT NULL,
  `sev4success` int(20) DEFAULT NULL,
  `sev5` int(20) DEFAULT NULL,
  `sev5success` int(20) DEFAULT NULL,
  `sev12sla` double(20,2) DEFAULT NULL,
  `sev3sla` double(20,2) DEFAULT NULL,
  `sev4sla` double(20,2) DEFAULT NULL,
  `sev5sla` double(20,2) DEFAULT NULL,
  `monthid` int(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sla_team_month` (`team`,`monthid`) USING BTREE,
  CONSTRAINT `sla_team` FOREIGN KEY (`team`) REFERENCES `team` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sla_adherence
-- ----------------------------
INSERT INTO `sla_adherence` VALUES ('1', '1', '0', '0', '0', '0', '71', '71', '40', '40', '100.00', '98.27', '98.28', '99.02', '24135');
INSERT INTO `sla_adherence` VALUES ('2', '2', '0', '0', '3', '3', '27', '27', '102', '102', '100.00', '98.27', '98.28', '99.02', '24135');
INSERT INTO `sla_adherence` VALUES ('3', '3', '0', '0', '0', '0', '1', '1', '18', '18', '100.00', '98.27', '98.28', '99.02', '24135');
INSERT INTO `sla_adherence` VALUES ('4', '4', '3', '3', '16', '16', '72', '72', '37', '37', '100.00', '98.27', '98.28', '99.02', '24135');
INSERT INTO `sla_adherence` VALUES ('5', '5', '0', '0', '3', '3', '11', '11', '69', '69', '100.00', '98.27', '98.28', '99.02', '24135');
INSERT INTO `sla_adherence` VALUES ('6', '1', '0', '0', '0', '0', '146', '146', '38', '38', '100.00', '98.27', '98.27', '99.02', '24139');
INSERT INTO `sla_adherence` VALUES ('7', '2', '0', '0', '3', '3', '26', '26', '82', '82', '100.00', '98.27', '98.28', '99.02', '24139');
INSERT INTO `sla_adherence` VALUES ('8', '3', '0', '0', '0', '0', '6', '6', '134', '134', '100.00', '98.27', '98.28', '99.02', '24139');
INSERT INTO `sla_adherence` VALUES ('9', '4', '0', '0', '16', '16', '73', '73', '52', '52', '100.00', '98.27', '98.28', '99.02', '24139');
INSERT INTO `sla_adherence` VALUES ('10', '5', '2', '2', '1', '1', '10', '10', '107', '107', '100.00', '98.27', '98.28', '99.02', '24139');
INSERT INTO `sla_adherence` VALUES ('11', '1', '0', '0', '0', '0', '167', '167', '49', '49', '100.00', '98.27', '98.28', '99.02', '24140');
INSERT INTO `sla_adherence` VALUES ('12', '2', '0', '0', '1', '1', '15', '15', '73', '73', '100.00', '98.27', '98.28', '99.02', '24140');
INSERT INTO `sla_adherence` VALUES ('13', '3', '0', '0', '0', '0', '13', '13', '123', '123', '100.00', '98.27', '98.28', '99.02', '24140');
INSERT INTO `sla_adherence` VALUES ('14', '4', '0', '0', '24', '22', '104', '104', '40', '40', '100.00', '98.27', '98.28', '99.02', '24140');
INSERT INTO `sla_adherence` VALUES ('15', '5', '2', '2', '1', '1', '10', '10', '107', '107', '100.00', '98.27', '98.28', '99.02', '24140');
INSERT INTO `sla_adherence` VALUES ('16', '1', '0', '0', '0', '0', '124', '124', '44', '44', '100.00', '98.27', '99.28', '99.02', '24141');
INSERT INTO `sla_adherence` VALUES ('17', '2', '0', '0', '3', '3', '21', '21', '63', '63', '100.00', '98.27', '99.28', '99.02', '24141');
INSERT INTO `sla_adherence` VALUES ('18', '3', '0', '0', '0', '0', '3', '3', '131', '131', '100.00', '98.27', '99.28', '99.02', '24141');
INSERT INTO `sla_adherence` VALUES ('19', '4', '0', '0', '19', '19', '76', '76', '32', '32', '100.00', '98.27', '99.28', '99.02', '24141');
INSERT INTO `sla_adherence` VALUES ('20', '5', '0', '0', '2', '2', '3', '3', '79', '79', '100.00', '98.27', '99.28', '99.02', '24141');
INSERT INTO `sla_adherence` VALUES ('21', '2', '0', '0', '3', '3', '32', '32', '73', '73', '100.00', '98.27', '99.28', '99.02', '24142');
INSERT INTO `sla_adherence` VALUES ('26', '3', '0', '0', '0', '0', '5', '5', '101', '101', '100.00', '98.27', '99.28', '99.02', '24142');
INSERT INTO `sla_adherence` VALUES ('27', '5', '0', '0', '5', '5', '14', '14', '108', '108', '100.00', '98.27', '99.28', '99.02', '24142');
INSERT INTO `sla_adherence` VALUES ('28', '1', '0', '0', '0', '0', '193', '193', '25', '25', '100.00', '98.27', '99.28', '99.02', '24142');
INSERT INTO `sla_adherence` VALUES ('29', '4', '0', '0', '20', '20', '126', '126', '82', '82', '100.00', '98.27', '99.28', '99.02', '24142');

-- ----------------------------
-- Table structure for `team`
-- ----------------------------
DROP TABLE IF EXISTS `team`;
CREATE TABLE `team` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `account` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `disp_order` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `teamacc` (`account`),
  CONSTRAINT `teamacc` FOREIGN KEY (`account`) REFERENCES `account` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of team
-- ----------------------------
INSERT INTO `team` VALUES ('1', '1', 'Team (Vishal)', '1');
INSERT INTO `team` VALUES ('2', '1', 'Team (Satish)', '3');
INSERT INTO `team` VALUES ('3', '1', 'Team (Krishna)', '2');
INSERT INTO `team` VALUES ('4', '1', 'Team (Prakash)', '4');
INSERT INTO `team` VALUES ('5', '1', 'Team (Kapil)', '5');
INSERT INTO `team` VALUES ('6', '3', 'GSAP', '1');
INSERT INTO `team` VALUES ('7', '3', 'Documentum', '2');
INSERT INTO `team` VALUES ('8', '3', 'MES', '3');
INSERT INTO `team` VALUES ('9', '3', 'Legacy Apps', '4');
INSERT INTO `team` VALUES ('10', '5', 'Team Invista', '1');
INSERT INTO `team` VALUES ('11', '2', 'Team Scana', '1');
INSERT INTO `team` VALUES ('12', '4', 'Team RioTinto', '1');
INSERT INTO `team` VALUES ('13', '6', 'Team Chevron', '1');

-- ----------------------------
-- Table structure for `team_building`
-- ----------------------------
DROP TABLE IF EXISTS `team_building`;
CREATE TABLE `team_building` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `account` int(10) NOT NULL,
  `activity` varchar(200) NOT NULL,
  `resource_impacted` int(10) DEFAULT NULL,
  `impact` varchar(20) DEFAULT NULL,
  `monthid` int(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `teambacc` (`account`),
  CONSTRAINT `teambacc` FOREIGN KEY (`account`) REFERENCES `account` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of team_building
-- ----------------------------
INSERT INTO `team_building` VALUES ('1', '1', 'Fun at Telecom Vertical(Ruchin)', '400', 'High', '24135');
INSERT INTO `team_building` VALUES ('2', '1', 'Video and Newsletter (Atreya)', '80', 'High', '24135');
INSERT INTO `team_building` VALUES ('3', '1', 'TownHall for DuPont', '80', 'High', '24135');
INSERT INTO `team_building` VALUES ('4', '1', 'Accolades Distribution', '80', 'High', '24135');
INSERT INTO `team_building` VALUES ('5', '1', 'Pizza Party @ Noida', '16', 'Medium', '24135');
INSERT INTO `team_building` VALUES ('6', '1', 'Quiz on ITIL', '12', 'Medium', '24139');
INSERT INTO `team_building` VALUES ('7', '1', 'Team participated in Yoga session conducted by Thamarai', '7', 'High', '24139');
INSERT INTO `team_building` VALUES ('8', '1', '\"Snacks at Dusk time\" @ Chennai', '9', 'High', '24139');
INSERT INTO `team_building` VALUES ('9', '1', 'Pizza party - Satish Team', '11', 'High', '24139');
INSERT INTO `team_building` VALUES ('10', '1', 'Techie Thrusday\'s Quiz', '25', 'High', '24139');
INSERT INTO `team_building` VALUES ('11', '1', 'FunWeek@Chennai / Hyderabad various activities filled in for the week - General Presentation, Humorous Speech, Cubicle Decoration, Online Quiz and Fun show.', '9', 'High', '24140');
INSERT INTO `team_building` VALUES ('12', '1', '\"Snacks at Dusk time\" @ Chennai', '9', 'High', '24140');
INSERT INTO `team_building` VALUES ('13', '1', 'Techie Thrusday\'s Quiz', '18', 'High', '24140');
INSERT INTO `team_building` VALUES ('14', '1', 'Team Lunch @ 45 Jubilee Hills - Krishna Team', '16', 'High', '24140');
INSERT INTO `team_building` VALUES ('15', '1', 'Team Lunch - Legacy Team', '16', 'High', '24140');
INSERT INTO `team_building` VALUES ('16', '1', 'Cloud Computing session		', '12', 'Medium', '24141');
INSERT INTO `team_building` VALUES ('17', '1', 'Team Lunch @ Food N I		', '16', 'Medium', '24141');
INSERT INTO `team_building` VALUES ('18', '1', 'Team lunch at Hyderabad		', '21', 'High', '24141');
INSERT INTO `team_building` VALUES ('19', '1', 'Ethnic day celebrations at Hyderabad, Noida & Chennai		', '73', 'High', '24141');
INSERT INTO `team_building` VALUES ('20', '1', '\"Snacks at Dusk time\" @ Chennai		', '9', 'High', '24141');
INSERT INTO `team_building` VALUES ('25', '1', 'Noida Team Outing', '11', 'High', '24142');
INSERT INTO `team_building` VALUES ('26', '1', 'DuPont Utsav at Hyderabad', '51', 'High', '24142');
INSERT INTO `team_building` VALUES ('27', '1', 'Techie Thrusday\'s Quiz		', '25', 'High', '24142');
INSERT INTO `team_building` VALUES ('28', '1', 'Team Lunch at GRT Raddisson', '8', 'High', '24142');
INSERT INTO `team_building` VALUES ('29', '1', 'General Presentation on Bomb Detection Technique by Gowtham', '12', 'High', '24142');
INSERT INTO `team_building` VALUES ('30', '1', 'Technical Presentation on Latex by Prabhu Pushpanathan', '12', 'High', '24142');
INSERT INTO `team_building` VALUES ('31', '1', 'Snacks at Dusk Time @ Chennai', '9', 'High', '24142');

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `enabled` bit(1) NOT NULL,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('admin', 'admin', '', 'Tabrez Quazi');
INSERT INTO `users` VALUES ('amahajan5', 'amahajan5', '', 'Avtar Mahajan');
INSERT INTO `users` VALUES ('asehgal2', 'asehgal2', '', 'Ajay Sehgal');
INSERT INTO `users` VALUES ('bchhibar', 'bchhibar', '', 'Bhuvnesh Chhibar');
INSERT INTO `users` VALUES ('bmannar', 'bmannar', '', 'Babu Mannar');
INSERT INTO `users` VALUES ('hvoruganti', 'hvoruganti', '', 'Hari K Voruganti');
INSERT INTO `users` VALUES ('kamara2', 'kamara2', '', 'Kiran Kumar Amara');
INSERT INTO `users` VALUES ('kappalakanak', 'kappalakanak', '', 'Krishna Rao A');
INSERT INTO `users` VALUES ('kgupta4', 'kgupta4', '', 'Kapil Gupta');
INSERT INTO `users` VALUES ('kmallampalli', 'kmallampalli', '', 'Kameshwar Prasad Mallampalli');
INSERT INTO `users` VALUES ('ksanthiya', 'ksanthiya', '', 'Kathiravan Santhiya');
INSERT INTO `users` VALUES ('lvempati2', 'lvempati2', '', 'Lalitha Manohar Vempati');
INSERT INTO `users` VALUES ('mharidasan', 'mharidasan', '', 'Manoj Haridasan');
INSERT INTO `users` VALUES ('mkamjula', 'mkamjula', '', 'Murali Mohan Kamjula');
INSERT INTO `users` VALUES ('msiddojigari', 'msiddojigari', '', 'Murali Mohan Siddojigari');
INSERT INTO `users` VALUES ('nkacham2', 'nkacham2', '', 'Nagesh Kacham');
INSERT INTO `users` VALUES ('pgupta29', 'pgupta29', '', 'Piyush Gupta');
INSERT INTO `users` VALUES ('pkrishnamur2', 'pkrishnamur2', '', 'Prakash Krishnamurthy');
INSERT INTO `users` VALUES ('rakula', 'rakula', '', 'RaviKumar Akula');
INSERT INTO `users` VALUES ('rkohli5', 'rkohli5', '', 'Ruchin Kohli');
INSERT INTO `users` VALUES ('rparitala', 'rparitala', '', 'Raja Rao Paritala');
INSERT INTO `users` VALUES ('rsinha24', 'rsinha24', '', 'Rajeev Sinha');
INSERT INTO `users` VALUES ('sguduri', 'sguduri', '', 'Sree Veena Guduri');
INSERT INTO `users` VALUES ('skothandara4', 'skothandara4', '', 'Srinivasan K Kothandaraman');
INSERT INTO `users` VALUES ('smamidi', 'smamidi', '', 'Samba Siva R Mamidi');
INSERT INTO `users` VALUES ('srao23', 'srao23', '', 'Srikanth Rao');
INSERT INTO `users` VALUES ('ssethi2', 'ssethi2', '', 'Sampada Sethi');
INSERT INTO `users` VALUES ('staparia', 'staparia', '', 'Shyam Sunder Taparia');
INSERT INTO `users` VALUES ('tquazi', 'tquazi', '', 'Tabrez Nadeem');
INSERT INTO `users` VALUES ('vbansal7', 'vbansal7', '', 'Vishal Bansal');
INSERT INTO `users` VALUES ('vbhargava2', 'vbhargava2', '', 'Vishal Bhargava');
INSERT INTO `users` VALUES ('vchalapati2', 'vchalapati2', '', 'Veera Venkata Rajesh');
INSERT INTO `users` VALUES ('vhathi', 'vhathi', '', 'Virag A Hathi');
INSERT INTO `users` VALUES ('vvundi', 'vvundi', '', 'Venkata Satish Bapan Vundi');

-- ----------------------------
-- Table structure for `user_team`
-- ----------------------------
DROP TABLE IF EXISTS `user_team`;
CREATE TABLE `user_team` (
  `username` varchar(255) NOT NULL,
  `team_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`username`,`team_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user_team
-- ----------------------------
INSERT INTO `user_team` VALUES ('admin', '1');
INSERT INTO `user_team` VALUES ('kamara2', '1');
INSERT INTO `user_team` VALUES ('smamidi', '3');
INSERT INTO `user_team` VALUES ('tquazi', '1');
INSERT INTO `user_team` VALUES ('tquazi', '2');
INSERT INTO `user_team` VALUES ('tquazi', '3');
INSERT INTO `user_team` VALUES ('tquazi', '4');

-- ----------------------------
-- Table structure for `utilization`
-- ----------------------------
DROP TABLE IF EXISTS `utilization`;
CREATE TABLE `utilization` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `team` int(10) NOT NULL,
  `utilization` int(10) DEFAULT '0',
  `ad_hours_devl` int(10) DEFAULT '0',
  `ams_hours_maint` int(10) DEFAULT '0',
  `obf_hours` int(10) DEFAULT '0',
  `value_adds` int(10) DEFAULT '0',
  `idle_hours` int(10) DEFAULT '0',
  `monthid` int(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `utilteammonth` (`monthid`,`team`) USING BTREE,
  KEY `utilteam` (`team`),
  CONSTRAINT `utilteam` FOREIGN KEY (`team`) REFERENCES `team` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of utilization
-- ----------------------------
INSERT INTO `utilization` VALUES ('1', '1', '100', '0', '100', '0', '0', '0', '24135');
INSERT INTO `utilization` VALUES ('2', '2', '100', '0', '100', '0', '0', '0', '24135');
INSERT INTO `utilization` VALUES ('3', '3', '100', '0', '100', '0', '0', '0', '24135');
INSERT INTO `utilization` VALUES ('4', '4', '100', '0', '100', '0', '0', '0', '24135');
INSERT INTO `utilization` VALUES ('5', '5', '100', '0', '100', '0', '0', '0', '24135');
INSERT INTO `utilization` VALUES ('6', '1', '100', '0', '100', '0', '0', '0', '24140');
INSERT INTO `utilization` VALUES ('7', '2', '100', '0', '100', '0', '0', '0', '24140');
INSERT INTO `utilization` VALUES ('8', '3', '100', '0', '100', '0', '0', '0', '24140');
INSERT INTO `utilization` VALUES ('9', '4', '100', '0', '100', '0', '0', '0', '24140');
INSERT INTO `utilization` VALUES ('10', '5', '100', '0', '100', '0', '0', '0', '24140');
INSERT INTO `utilization` VALUES ('11', '1', '100', '0', '100', '0', '0', '0', '24141');
INSERT INTO `utilization` VALUES ('12', '2', '100', '0', '100', '0', '0', '0', '24141');
INSERT INTO `utilization` VALUES ('13', '3', '100', '0', '100', '0', '0', '0', '24141');
INSERT INTO `utilization` VALUES ('14', '4', '100', '0', '100', '0', '0', '0', '24141');
INSERT INTO `utilization` VALUES ('15', '5', '100', '0', '100', '0', '0', '0', '24141');
INSERT INTO `utilization` VALUES ('16', '1', '100', '0', '100', '0', '0', '0', '24142');
INSERT INTO `utilization` VALUES ('17', '2', '100', '0', '100', '0', '0', '0', '24142');
INSERT INTO `utilization` VALUES ('18', '3', '100', '0', '100', '0', '0', '0', '24142');
INSERT INTO `utilization` VALUES ('19', '4', '100', '0', '100', '0', '0', '0', '24142');
INSERT INTO `utilization` VALUES ('20', '5', '100', '0', '100', '0', '0', '0', '24142');
INSERT INTO `utilization` VALUES ('21', '2', '100', '0', '100', '0', '0', '0', '24132');

-- ----------------------------
-- Table structure for `vertical`
-- ----------------------------
DROP TABLE IF EXISTS `vertical`;
CREATE TABLE `vertical` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of vertical
-- ----------------------------
INSERT INTO `vertical` VALUES ('1', 'CENR');

-- ----------------------------
-- Table structure for `vertical_init`
-- ----------------------------
DROP TABLE IF EXISTS `vertical_init`;
CREATE TABLE `vertical_init` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `account` int(20) NOT NULL,
  `name_of_init` varchar(200) NOT NULL,
  `sponsor` varchar(200) DEFAULT NULL,
  `key_contributors` varchar(200) DEFAULT NULL,
  `remarks` varchar(1000) DEFAULT NULL,
  `monthid` int(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `verti_acco` (`account`),
  CONSTRAINT `verti_acco` FOREIGN KEY (`account`) REFERENCES `account` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of vertical_init
-- ----------------------------
INSERT INTO `vertical_init` VALUES ('1', '1', 'Operational Excellence', 'Piyush Gupta', 'Vishal, Murali', null, '24135');
INSERT INTO `vertical_init` VALUES ('2', '1', 'DA Audit', 'Bhuvnesh', 'Kapil, Krishna and Lalit', null, '24135');
INSERT INTO `vertical_init` VALUES ('3', '1', 'Weekly / Monthly Acount updates', 'Bhuvnesh', 'Kapil', null, '24135');
INSERT INTO `vertical_init` VALUES ('4', '1', 'Doug visit at all locations', 'Douglas R Rice', 'Douglas R Rice', null, '24135');
INSERT INTO `vertical_init` VALUES ('5', '1', 'DA Audit', 'Bhuvnesh', 'Kapil, Krishna and Lalit', null, '24139');
INSERT INTO `vertical_init` VALUES ('6', '1', 'Weekly / Monthly Acount updates', 'Piyush', 'Kapil,Ruchin', null, '24139');
INSERT INTO `vertical_init` VALUES ('7', '1', 'Sales and RFP', 'Avtar', 'Bhuvnesh, Vishal, Ruchin', null, '24139');
INSERT INTO `vertical_init` VALUES ('8', '1', 'Operational Excellence', 'Piyush', 'Kapil, Murali, Vishal', null, '24139');
INSERT INTO `vertical_init` VALUES ('9', '1', 'CENR Communication', 'Bhuvnesh', 'Namita, Atreya,Suman', null, '24139');
INSERT INTO `vertical_init` VALUES ('10', '1', 'Quaterly newsletter', 'Bhuvnesh', 'Dheeraj,Deepshikha,Atreya', null, '24139');
INSERT INTO `vertical_init` VALUES ('11', '1', 'Performance Tracker Online Tool', 'Bhuvnesh/Rajeev', 'Tabrez', null, '24139');
INSERT INTO `vertical_init` VALUES ('12', '1', 'CENR Landscaping', 'Manju Pandey', 'Nagesh & Vishal', null, '24139');
INSERT INTO `vertical_init` VALUES ('13', '1', 'News Letter', 'Editorial Team', 'Suman, Prabhu and Prakash', null, '24139');
INSERT INTO `vertical_init` VALUES ('14', '1', 'PQR Dashboard', 'Bhuvnesh', 'Kapil Gupta/ Nagesh Kacham/Ravinder Parsawar', null, '24139');
INSERT INTO `vertical_init` VALUES ('15', '1', 'Dashboard', 'Bhuvnesh', 'Vishal,Kiran & Murali', null, '24139');
INSERT INTO `vertical_init` VALUES ('16', '1', 'Oncall + off hour Invoicing ', 'Bhuvnesh', 'Kiran', null, '24139');
INSERT INTO `vertical_init` VALUES ('17', '1', 'Rejuvenate', 'Avtar', 'Bhuvnesh', null, '24139');
INSERT INTO `vertical_init` VALUES ('18', '1', 'Creation of online resource dashboard', 'Bhuvnesh', 'Vishal,Raghu,Jyothirmayee', null, '24139');
INSERT INTO `vertical_init` VALUES ('19', '1', 'Action Log for CENR Vertical', 'Rajeev', 'Vishal Bansal, Bhuvnesh Chhibar', null, '24139');
INSERT INTO `vertical_init` VALUES ('20', '1', 'Weekly Account Sales updates for vertical', 'Piyush', 'Vishal Bansal', null, '24139');
INSERT INTO `vertical_init` VALUES ('21', '1', 'DA Audit', 'Bhuvnesh', 'Kapil, Krishna and Lalit', null, '24140');
INSERT INTO `vertical_init` VALUES ('22', '1', 'Weekly / Monthly Acount updates', 'Piyush', 'Ruchin', null, '24140');
INSERT INTO `vertical_init` VALUES ('23', '1', 'Sales and RFP', 'Avtar', 'Bhuvnesh, Vishal, Ruchin', null, '24140');
INSERT INTO `vertical_init` VALUES ('24', '1', 'Operational Excellence', 'Piyush', 'Kapil, Murali, Vishal, Krishna & Raja', null, '24140');
INSERT INTO `vertical_init` VALUES ('25', '1', 'CENR Communication	', 'Bhuvnesh', 'Namita, Atreya,Suman', null, '24140');
INSERT INTO `vertical_init` VALUES ('26', '1', 'Quaterly newsletter	', 'Bhuvnesh', 'Dheeraj,Deepshikha,Atreya', null, '24140');
INSERT INTO `vertical_init` VALUES ('27', '1', 'Performance Tracker Online Tool	', 'Bhuvnesh/Rajeev', 'Tabrez', null, '24140');
INSERT INTO `vertical_init` VALUES ('28', '1', 'CENR Landscaping	', 'Manju Pandey', 'Nagesh& Vishal', null, '24140');
INSERT INTO `vertical_init` VALUES ('29', '1', 'News Letter	', 'Editorial Team', 'Suman, Prabhu and Prakash', null, '24140');
INSERT INTO `vertical_init` VALUES ('30', '1', 'PQR Dashboard	', 'Bhuvnesh', 'Kapil Gupta/ Nagesh Kacham/Ravinder Parsawar', null, '24140');
INSERT INTO `vertical_init` VALUES ('31', '1', 'Dashboard	', 'Bhuvnesh', 'Vishal,Kiran & Murali', null, '24140');
INSERT INTO `vertical_init` VALUES ('32', '1', 'Oncall + off hour Invoicing 	', 'Bhuvnesh', 'Kiran', null, '24140');
INSERT INTO `vertical_init` VALUES ('33', '1', 'Rejuvenate	', 'Avtar', 'Bhuvnesh', null, '24140');
INSERT INTO `vertical_init` VALUES ('34', '1', 'Creation of online resource dashboard	', 'Bhuvnesh', 'Vishal,Raghu,Jyothirmayee', null, '24140');
INSERT INTO `vertical_init` VALUES ('35', '1', 'Action Log for CENR Vertical	', 'Rajeev', 'Vishal Bansal, Bhuvnesh Chhibar', null, '24140');
INSERT INTO `vertical_init` VALUES ('36', '1', 'Weekly Account Sales updates for vertical	', 'Piyush', 'Vishal Bansal  ', null, '24140');
INSERT INTO `vertical_init` VALUES ('37', '1', 'CSC Initiative on Information Security Audit	', 'Avatar Mahajan', 'Krishna, Raja', null, '24140');
INSERT INTO `vertical_init` VALUES ('38', '1', 'OE Automation Project	', 'Kapil', 'Ravinder / Prakash', null, '24140');
INSERT INTO `vertical_init` VALUES ('39', '1', 'Implementation of Six Sigma Project for MICS Application', 'Bhuvnesh/Krishna', 'Pavan Manuguri', '', '24141');
INSERT INTO `vertical_init` VALUES ('40', '1', 'Krishna\'s Visit to Client Office @DuPont Hyd', 'Bhuvnesh', 'Krishna', '', '24141');
INSERT INTO `vertical_init` VALUES ('41', '1', 'DA Audit	', 'Bhuvnesh', 'Kapil, Krishna and Lalit', '', '24141');
INSERT INTO `vertical_init` VALUES ('42', '1', 'Weekly / Monthly Acount updates	', 'Piyush', 'Ruchin', '', '24141');
INSERT INTO `vertical_init` VALUES ('43', '1', 'Sales and RFP	', 'Avtar', 'Bhuvnesh, Vishal, Ruchin', '', '24141');
INSERT INTO `vertical_init` VALUES ('44', '1', 'Operational Excellence	', 'Piyush', 'Kapil, Murali, Vishal, Krishna & Raja', '', '24141');
INSERT INTO `vertical_init` VALUES ('45', '1', 'CENR Communication	', 'Bhuvnesh', 'Namita, Atreya,Suman', '', '24141');
INSERT INTO `vertical_init` VALUES ('46', '1', 'Quaterly newsletter	', 'Bhuvnesh', 'Dheeraj,Deepshikha,Atreya', '', '24141');
INSERT INTO `vertical_init` VALUES ('47', '1', 'Performance Tracker Online Tool	', 'Bhuvnesh/Rajeev', 'Tabrez', '', '24141');
INSERT INTO `vertical_init` VALUES ('48', '1', 'CENR Landscaping	', 'Manju Pandey', 'Nagesh& Vishal', '', '24141');
INSERT INTO `vertical_init` VALUES ('49', '1', 'News Letter', 'Editorial Team', 'Suman, Prabhu and Prakash', '', '24141');
INSERT INTO `vertical_init` VALUES ('50', '1', 'PQR Dashboard', 'Bhuvnesh', 'Kapil Gupta/ Nagesh Kacham/Ravinder Parsawar', '', '24141');
INSERT INTO `vertical_init` VALUES ('51', '1', 'Dashboard	', 'Bhuvnesh', 'Vishal,Kiran & Murali', '', '24141');
INSERT INTO `vertical_init` VALUES ('52', '1', 'Oncall + off hour Invoicing 	', 'Bhuvnesh', 'Kiran', '', '24141');
INSERT INTO `vertical_init` VALUES ('53', '1', 'Rejuvenate	', 'Avtar', 'Bhuvnesh', '', '24141');
INSERT INTO `vertical_init` VALUES ('54', '1', 'Creation of online resource dashboard	', 'Bhuvnesh', 'Vishal,Raghu,Jyothirmayee', '', '24141');
INSERT INTO `vertical_init` VALUES ('55', '1', 'Action Log for CENR Vertical	', 'Rajeev', 'Vishal Bansal, Bhuvnesh Chhibar', '', '24141');
INSERT INTO `vertical_init` VALUES ('56', '1', 'Weekly Account Sales updates for vertical	', 'Piyush', 'Vishal Bansal  ', '', '24141');
INSERT INTO `vertical_init` VALUES ('57', '1', 'CSC Initiative on Information Security Audit	', 'Avatar Mahajan', 'Krishna, Raja', '', '24141');
INSERT INTO `vertical_init` VALUES ('58', '1', 'OE Automation Project	', 'Kapil', 'Ravinder / Prakash', '', '24141');
INSERT INTO `vertical_init` VALUES ('59', '1', 'DA Audit', 'Bhuvnesh', 'Kapil, Krishna and Lalit', 'Ongoing', '24142');
INSERT INTO `vertical_init` VALUES ('60', '1', 'Weekly / Monthly Acount updates', 'Piyush', 'Murali, Kapil and Ruchin', 'Ongoing', '24142');
INSERT INTO `vertical_init` VALUES ('61', '1', 'Sales and RFP', 'Avtar', 'Bhuvnesh, Vishal, Ruchin', 'Ongoing', '24142');
INSERT INTO `vertical_init` VALUES ('62', '1', 'Operational Excellence', 'Piyush', 'Murali, Vishal, Krishna,Kiran,Rajesh & Raja', 'Ongoing', '24142');
INSERT INTO `vertical_init` VALUES ('63', '1', 'CENR Communication', 'Bhuvnesh', 'Namita, Atreya,Suman', 'Ongoing', '24142');
INSERT INTO `vertical_init` VALUES ('64', '1', 'Quaterly newsletter', 'Bhuvnesh', 'Dheeraj,Deepshikha,Atreya', 'Ongoing', '24142');
INSERT INTO `vertical_init` VALUES ('65', '1', 'Performance Tracker Online Tool', 'Bhuvnesh/Rajeev', 'Tabrez', null, '24142');
INSERT INTO `vertical_init` VALUES ('66', '1', 'CENR Landscaping', 'Manju Pandey', 'Nagesh,Vishal & Ruchin', 'Ongoing', '24142');
INSERT INTO `vertical_init` VALUES ('67', '1', 'News Letter', 'Editorial Team', 'Suman, Prabhu and Prakash', 'Ongoing', '24142');
INSERT INTO `vertical_init` VALUES ('68', '1', 'PQR Dashboard', 'Bhuvnesh', 'Kapil Gupta/ Nagesh Kacham/Ravinder Parsawar', 'Ongoing', '24142');
INSERT INTO `vertical_init` VALUES ('69', '1', 'Dashboard', 'Bhuvnesh', 'Vishal,Kiran & Murali', 'Ongoing', '24142');
INSERT INTO `vertical_init` VALUES ('70', '1', 'Oncall + off hour Invoicing ', 'Bhuvnesh', 'Kiran', 'Ongoing', '24142');
INSERT INTO `vertical_init` VALUES ('71', '1', 'Rejuvenate', 'Avtar', 'Bhuvnesh', 'Ongoing', '24142');
INSERT INTO `vertical_init` VALUES ('72', '1', 'Creation of online resource dashboard', 'Bhuvnesh', 'Vishal,Raghu,Jyothirmayee', 'Ongoing', '24142');
INSERT INTO `vertical_init` VALUES ('73', '1', 'Action Log for CENR Vertical', 'Rajeev', 'Vishal Bansal, Bhuvnesh Chhibar', 'Ongoing', '24142');
INSERT INTO `vertical_init` VALUES ('74', '1', 'Weekly Account Sales updates for vertical', 'Piyush', 'Vishal Bansal  ', 'Ongoing', '24142');
INSERT INTO `vertical_init` VALUES ('75', '1', 'CSC Initiative on Information Security Audit', 'Avatar Mahajan', 'Krishna, Raja', 'Completed', '24142');
INSERT INTO `vertical_init` VALUES ('76', '1', 'OE Automation Project', 'Kapil', 'Ravinder / Prakash & Murali', 'Ongoing', '24142');
INSERT INTO `vertical_init` VALUES ('77', '1', 'Implementation of Six Sigma Project for MICS Application', 'Bhuvnesh/Krishna', 'Pavan Manuguri', 'Ongoing', '24142');
INSERT INTO `vertical_init` VALUES ('78', '1', 'Dupont UTSAV', 'Bhuvnesh/Vishal', 'Kiran,Brahmaiah & Murali', 'New', '24142');
INSERT INTO `vertical_init` VALUES ('80', '1', 'ISMS Audit', 'Avatar Mahajan', 'Krishna & Raja', 'ISMS Audit completed in Hyderabad', '24142');
