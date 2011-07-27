/*
MySQL Data Transfer
Source Host: 127.0.0.1
Source Database: dashboard
Target Host: 127.0.0.1
Target Database: dashboard
Date: 7/27/2011 3:56:08 PM
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for account
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `vertical` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `account` (`vertical`),
  CONSTRAINT `account` FOREIGN KEY (`vertical`) REFERENCES `vertical` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for appreciation
-- ----------------------------
DROP TABLE IF EXISTS `appreciation`;
CREATE TABLE `appreciation` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `team` int(20) NOT NULL,
  `month` int(20) NOT NULL,
  `appreciation_for` varchar(100) DEFAULT NULL,
  `appreciation` varchar(1000) DEFAULT NULL,
  `appreciated_by` varchar(200) DEFAULT NULL,
  `relevance` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `appr_team` (`team`),
  KEY `appr_month` (`month`),
  CONSTRAINT `appr_month` FOREIGN KEY (`month`) REFERENCES `months` (`id`),
  CONSTRAINT `appr_team` FOREIGN KEY (`team`) REFERENCES `team` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for assessment_programs
-- ----------------------------
DROP TABLE IF EXISTS `assessment_programs`;
CREATE TABLE `assessment_programs` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `team` int(20) NOT NULL,
  `month` int(20) NOT NULL,
  `knowledge` int(20) DEFAULT NULL,
  `process` int(20) DEFAULT NULL,
  `technical` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `assess_month_team` (`team`,`month`),
  KEY `assess_month` (`month`),
  CONSTRAINT `assess_month` FOREIGN KEY (`month`) REFERENCES `months` (`id`),
  CONSTRAINT `assess_team` FOREIGN KEY (`team`) REFERENCES `team` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for attrition
-- ----------------------------
DROP TABLE IF EXISTS `attrition`;
CREATE TABLE `attrition` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `month` int(10) NOT NULL,
  `account` int(10) NOT NULL,
  `attrition_num` int(10) NOT NULL,
  `opening_head_count` int(10) NOT NULL,
  `closing_head_count` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `monthacc` (`month`,`account`),
  KEY `acctatt` (`account`),
  CONSTRAINT `acctatt` FOREIGN KEY (`account`) REFERENCES `account` (`id`),
  CONSTRAINT `monthatt` FOREIGN KEY (`month`) REFERENCES `months` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for backfill_management
-- ----------------------------
DROP TABLE IF EXISTS `backfill_management`;
CREATE TABLE `backfill_management` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `account` int(10) NOT NULL,
  `month` int(10) NOT NULL,
  `novient` varchar(20) DEFAULT NULL,
  `emp_serving_notice` varchar(200) DEFAULT NULL,
  `last_working_date` varchar(30) DEFAULT NULL,
  `replacement_date` varchar(30) DEFAULT NULL,
  `replacement_identified` varchar(300) DEFAULT NULL,
  `status` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `backacc` (`account`),
  KEY `backmonth` (`month`),
  CONSTRAINT `backacc` FOREIGN KEY (`account`) REFERENCES `account` (`id`),
  CONSTRAINT `backmonth` FOREIGN KEY (`month`) REFERENCES `months` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for billing
-- ----------------------------
DROP TABLE IF EXISTS `billing`;
CREATE TABLE `billing` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `month` int(10) NOT NULL,
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
  PRIMARY KEY (`id`),
  UNIQUE KEY `billmonth` (`month`,`team`),
  KEY `billingteam` (`team`),
  CONSTRAINT `billingmon` FOREIGN KEY (`month`) REFERENCES `months` (`id`),
  CONSTRAINT `billingteam` FOREIGN KEY (`team`) REFERENCES `team` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for contribution_to_top10
-- ----------------------------
DROP TABLE IF EXISTS `contribution_to_top10`;
CREATE TABLE `contribution_to_top10` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `team` int(20) NOT NULL,
  `month` int(20) NOT NULL,
  `name_of_contributor` varchar(100) DEFAULT NULL,
  `position_in_top10` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `top_month` (`month`),
  KEY `top_team` (`team`),
  CONSTRAINT `top_month` FOREIGN KEY (`month`) REFERENCES `months` (`id`),
  CONSTRAINT `top_team` FOREIGN KEY (`team`) REFERENCES `team` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for csat
-- ----------------------------
DROP TABLE IF EXISTS `csat`;
CREATE TABLE `csat` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `month` int(20) NOT NULL,
  `team` int(20) NOT NULL,
  `description` varchar(100) NOT NULL,
  `rating` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `csat_month` (`month`),
  KEY `csat_team` (`team`),
  CONSTRAINT `csat_month` FOREIGN KEY (`month`) REFERENCES `months` (`id`),
  CONSTRAINT `csat_team` FOREIGN KEY (`team`) REFERENCES `team` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for escalations
-- ----------------------------
DROP TABLE IF EXISTS `escalations`;
CREATE TABLE `escalations` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `escalation` varchar(500) NOT NULL,
  `status` varchar(100) DEFAULT NULL,
  `assigned_to` varchar(100) DEFAULT NULL,
  `days_open` int(10) DEFAULT NULL,
  `account` int(10) NOT NULL,
  `month` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `escmonth` (`month`),
  KEY `escacc` (`account`),
  CONSTRAINT `escacc` FOREIGN KEY (`account`) REFERENCES `account` (`id`),
  CONSTRAINT `escmonth` FOREIGN KEY (`month`) REFERENCES `months` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for improve_initi
-- ----------------------------
DROP TABLE IF EXISTS `improve_initi`;
CREATE TABLE `improve_initi` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `account` int(20) NOT NULL,
  `month` int(20) NOT NULL,
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
  PRIMARY KEY (`id`),
  KEY `impro_acc` (`account`),
  KEY `impro_month` (`month`),
  CONSTRAINT `impro_acc` FOREIGN KEY (`account`) REFERENCES `account` (`id`),
  CONSTRAINT `impro_month` FOREIGN KEY (`month`) REFERENCES `months` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for incident
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
  PRIMARY KEY (`id`),
  UNIQUE KEY `teammonth` (`team`,`month`),
  KEY `incidentmonth` (`month`),
  CONSTRAINT `incidentmonth` FOREIGN KEY (`month`) REFERENCES `months` (`id`),
  CONSTRAINT `incidentteam` FOREIGN KEY (`team`) REFERENCES `team` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for innovation
-- ----------------------------
DROP TABLE IF EXISTS `innovation`;
CREATE TABLE `innovation` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `team` int(20) NOT NULL,
  `month` int(20) NOT NULL,
  `avg_hc` int(20) NOT NULL,
  `inno_submitted` int(20) DEFAULT NULL,
  `inno_qualified` int(20) DEFAULT NULL,
  `manhrs_of_qualified_inno` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `inno_month_team` (`team`,`month`),
  KEY `inno_month` (`month`),
  CONSTRAINT `inno_month` FOREIGN KEY (`month`) REFERENCES `months` (`id`),
  CONSTRAINT `inno_team` FOREIGN KEY (`team`) REFERENCES `team` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for km_scorecard
-- ----------------------------
DROP TABLE IF EXISTS `km_scorecard`;
CREATE TABLE `km_scorecard` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `team` int(20) NOT NULL,
  `month` int(20) NOT NULL,
  `numKMContrib` int(20) DEFAULT NULL,
  `qualTop10` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `km_team_month` (`team`,`month`),
  KEY `km_month` (`month`),
  CONSTRAINT `km_month` FOREIGN KEY (`month`) REFERENCES `months` (`id`),
  CONSTRAINT `km_team` FOREIGN KEY (`team`) REFERENCES `team` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for margins
-- ----------------------------
DROP TABLE IF EXISTS `margins`;
CREATE TABLE `margins` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `month` int(10) NOT NULL,
  `team` int(10) NOT NULL,
  `revenue` decimal(10,2) DEFAULT NULL,
  `cost` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `marmonthteam` (`month`,`team`),
  KEY `marteam` (`team`),
  CONSTRAINT `marmonth` FOREIGN KEY (`month`) REFERENCES `months` (`id`),
  CONSTRAINT `marteam` FOREIGN KEY (`team`) REFERENCES `team` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for month_def
-- ----------------------------
DROP TABLE IF EXISTS `month_def`;
CREATE TABLE `month_def` (
  `month_num` int(10) NOT NULL,
  `month` varchar(10) NOT NULL,
  PRIMARY KEY (`month_num`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for months
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
-- Table structure for new_order_closed
-- ----------------------------
DROP TABLE IF EXISTS `new_order_closed`;
CREATE TABLE `new_order_closed` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `team` int(20) NOT NULL,
  `month` int(20) NOT NULL,
  `type` varchar(100) NOT NULL,
  `effort` varchar(50) NOT NULL,
  `description` varchar(300) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `new_order_team` (`team`),
  KEY `new_order_month` (`month`),
  CONSTRAINT `new_order_month` FOREIGN KEY (`month`) REFERENCES `months` (`id`),
  CONSTRAINT `new_order_team` FOREIGN KEY (`team`) REFERENCES `team` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for representation_in_csc
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
  `month` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `repacc` (`account`),
  KEY `repteam` (`team`),
  KEY `repmonth` (`month`),
  CONSTRAINT `repacc` FOREIGN KEY (`account`) REFERENCES `account` (`id`),
  CONSTRAINT `repmonth` FOREIGN KEY (`month`) REFERENCES `months` (`id`),
  CONSTRAINT `repteam` FOREIGN KEY (`team`) REFERENCES `team` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for resource_rotation
-- ----------------------------
DROP TABLE IF EXISTS `resource_rotation`;
CREATE TABLE `resource_rotation` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `month` int(10) NOT NULL,
  `account` int(10) NOT NULL,
  `statistics` varchar(10) DEFAULT '0',
  `groupTxt` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `resourceacc` (`account`),
  KEY `resourcemon` (`month`),
  CONSTRAINT `resourceacc` FOREIGN KEY (`account`) REFERENCES `account` (`id`),
  CONSTRAINT `resourcemon` FOREIGN KEY (`month`) REFERENCES `months` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for sla
-- ----------------------------
DROP TABLE IF EXISTS `sla`;
CREATE TABLE `sla` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `sla` decimal(20,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for sla_adherence
-- ----------------------------
DROP TABLE IF EXISTS `sla_adherence`;
CREATE TABLE `sla_adherence` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `team` int(20) NOT NULL,
  `month` int(20) NOT NULL,
  `sev1-2` int(20) DEFAULT NULL,
  `sev1-2-success` int(20) DEFAULT NULL,
  `sev1-2-fail` int(20) DEFAULT NULL,
  `sev-3` int(20) DEFAULT NULL,
  `sev-3-success` int(20) DEFAULT NULL,
  `sev-3-fail` int(20) DEFAULT NULL,
  `sev-4` int(20) DEFAULT NULL,
  `sev-4-success` int(20) DEFAULT NULL,
  `sev-4-fail` int(20) DEFAULT NULL,
  `sev-5` int(20) DEFAULT NULL,
  `sev-5-success` int(20) DEFAULT NULL,
  `sev-5-fail` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sla_team_month` (`team`,`month`),
  KEY `sla_month` (`month`),
  CONSTRAINT `sla_month` FOREIGN KEY (`month`) REFERENCES `months` (`id`),
  CONSTRAINT `sla_team` FOREIGN KEY (`team`) REFERENCES `team` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for team
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for team_building
-- ----------------------------
DROP TABLE IF EXISTS `team_building`;
CREATE TABLE `team_building` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `month` int(10) NOT NULL,
  `account` int(10) NOT NULL,
  `activity` varchar(200) NOT NULL,
  `resource_impacted` int(10) DEFAULT NULL,
  `impact` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `teambacc` (`account`),
  KEY `teambmonth` (`month`),
  CONSTRAINT `teambacc` FOREIGN KEY (`account`) REFERENCES `account` (`id`),
  CONSTRAINT `teambmonth` FOREIGN KEY (`month`) REFERENCES `months` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for utilization
-- ----------------------------
DROP TABLE IF EXISTS `utilization`;
CREATE TABLE `utilization` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `month` int(10) NOT NULL,
  `team` int(10) NOT NULL,
  `utilization` int(10) DEFAULT '0',
  `ad_hours_devl` int(10) DEFAULT '0',
  `ams_hours_maint` int(10) DEFAULT '0',
  `obf_hours` int(10) DEFAULT '0',
  `value_adds` int(10) DEFAULT '0',
  `idle_hours` int(10) DEFAULT '0',
  `utilization_month1` int(10) DEFAULT '0',
  `utilization_month2` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `utilteammonth` (`month`,`team`),
  KEY `utilteam` (`team`),
  CONSTRAINT `utilmonth` FOREIGN KEY (`month`) REFERENCES `months` (`id`),
  CONSTRAINT `utilteam` FOREIGN KEY (`team`) REFERENCES `team` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for vertical
-- ----------------------------
DROP TABLE IF EXISTS `vertical`;
CREATE TABLE `vertical` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for vertical_init
-- ----------------------------
DROP TABLE IF EXISTS `vertical_init`;
CREATE TABLE `vertical_init` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `account` int(20) NOT NULL,
  `month` int(20) NOT NULL,
  `name_of_init` varchar(200) NOT NULL,
  `sponsor` varchar(200) DEFAULT NULL,
  `key_contributors` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `verti_acco` (`account`),
  KEY `verti_month` (`month`),
  CONSTRAINT `verti_acco` FOREIGN KEY (`account`) REFERENCES `account` (`id`),
  CONSTRAINT `verti_month` FOREIGN KEY (`month`) REFERENCES `months` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `account` VALUES ('1', '1', 'DuPont');
INSERT INTO `attrition` VALUES ('1', '1', '1', '3', '86', '83');
INSERT INTO `attrition` VALUES ('2', '2', '1', '0', '83', '83');
INSERT INTO `attrition` VALUES ('3', '3', '1', '3', '83', '84');
INSERT INTO `attrition` VALUES ('4', '4', '1', '1', '84', '80');
INSERT INTO `attrition` VALUES ('5', '5', '1', '0', '80', '76');
INSERT INTO `attrition` VALUES ('6', '6', '1', '2', '76', '72');
INSERT INTO `attrition` VALUES ('7', '7', '1', '4', '72', '75');
INSERT INTO `attrition` VALUES ('8', '8', '1', '3', '75', '73');
INSERT INTO `attrition` VALUES ('9', '9', '1', '0', '73', '75');
INSERT INTO `attrition` VALUES ('10', '10', '1', '1', '75', '73');
INSERT INTO `attrition` VALUES ('11', '11', '1', '0', '73', '71');
INSERT INTO `attrition` VALUES ('12', '12', '1', '2', '72', '73');
INSERT INTO `attrition` VALUES ('13', '13', '1', '0', '73', '74');
INSERT INTO `backfill_management` VALUES ('1', '1', '13', '275877', 'Chandra S Cherukuri', '6-May-2011', '', 'None', 'No bench candidate available. Interviewing external candidates');
INSERT INTO `backfill_management` VALUES ('2', '1', '13', '285008', 'Anil Kumar Agrawal', '20-May-2011', null, 'None', 'No bench candidate available. Interviewing external candidates');
INSERT INTO `billing` VALUES ('2', '13', '1', '23', '23', '0', '0', '0', '0000000002', '0000000001', '0000000001', '0000000001', '0000000000', '0000000000', '0000000000', '00001032.00', '00000995.00', '0000000011');
INSERT INTO `billing` VALUES ('6', '13', '3', '15', '15', '0', '0', '0', '0000000000', '0000000001', '0000000000', '0000000001', '0000000001', '0000000000', '0000000000', '00000675.00', '00000597.00', '0000000008');
INSERT INTO `billing` VALUES ('7', '13', '2', '8', '8', '0', '0', '0', '0000000001', '0000000000', '0000000001', '0000000000', '0000000001', '0000000000', '0000000000', '00000360.00', '00000380.50', '0000000002');
INSERT INTO `billing` VALUES ('8', '13', '4', '14', '14', '0', '0', '0', '0000000000', '0000000001', '0000000000', '0000000001', '0000000000', '0000000000', '0000000000', '00000630.00', '00000523.00', '0000000005');
INSERT INTO `billing` VALUES ('9', '13', '5', '14', '13', '0', '0', '0', '0000000000', '0000000000', '0000000000', '0000000000', '0000000000', '0000000000', '0000000000', '00000585.00', '00000511.50', '0000000007');
INSERT INTO `escalations` VALUES ('1', 'Risk : No Bench for DuPont Account. Attrition is 25%', 'Open', 'Bhuvnesh', '60', '1', '13');
INSERT INTO `escalations` VALUES ('2', 'Issues- Low Salary', 'Open', 'Bhuvnesh', null, '1', '13');
INSERT INTO `escalations` VALUES ('3', 'Loss of Key People due to Attrition', 'Open', 'Bhuvnesh', '30', '1', '13');
INSERT INTO `escalations` VALUES ('4', 'No Onsite opportunity', 'Open', 'Bhuvnesh', null, '1', '13');
INSERT INTO `margins` VALUES ('1', '13', '1', '108451.23', '57183.00');
INSERT INTO `margins` VALUES ('2', '13', '3', '72913.02', '37515.37');
INSERT INTO `margins` VALUES ('3', '13', '5', '56827.46', '28424.37');
INSERT INTO `margins` VALUES ('4', '13', '4', '60913.90', '31554.25');
INSERT INTO `margins` VALUES ('5', '13', '2', '41583.69', '22786.75');
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
INSERT INTO `months` VALUES ('10', '1', '2011');
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
INSERT INTO `representation_in_csc` VALUES ('1', '1', '5', 'Samskruthi', 'Ruchin', null, 'Ruchin has done anchoring', '13');
INSERT INTO `representation_in_csc` VALUES ('2', '1', '1', 'TT competition @ Noida', 'Vishal/Lalit', null, '1st runner up  from NOIDA', '13');
INSERT INTO `representation_in_csc` VALUES ('3', '1', '5', 'Leadership summit at NOIDA', 'Ruchin /Bhuvensh', null, 'coordinated the Leadership summit at NOIDA', '13');
INSERT INTO `resource_rotation` VALUES ('1', '13', '1', '34%', 'Employees working in the same job for more than 24 months');
INSERT INTO `resource_rotation` VALUES ('2', '13', '1', '7%', 'Employees undergone job rotation');
INSERT INTO `resource_rotation` VALUES ('3', '13', '1', '0', '# of emp moved across Team');
INSERT INTO `resource_rotation` VALUES ('4', '13', '1', '0', '# of emp moved across DuPont');
INSERT INTO `resource_rotation` VALUES ('5', '13', '1', '0', '# of emp moved across Telecom');
INSERT INTO `resource_rotation` VALUES ('6', '13', '1', '2', '# of emp moved across TCG & CENR');
INSERT INTO `team` VALUES ('1', '1', 'Team (Vishal)', '1');
INSERT INTO `team` VALUES ('2', '1', 'Team (Satish)', '3');
INSERT INTO `team` VALUES ('3', '1', 'Team (Krishna)', '2');
INSERT INTO `team` VALUES ('4', '1', 'Team (Prakash)', '4');
INSERT INTO `team` VALUES ('5', '1', 'Team (Kapil)', '5');
INSERT INTO `team_building` VALUES ('1', '13', '1', 'Fun at Telecom Vertical(Ruchin)', '400', 'High');
INSERT INTO `team_building` VALUES ('2', '13', '1', 'Video and Newsletter (Atreya)', '80', 'High');
INSERT INTO `team_building` VALUES ('3', '13', '1', 'TownHall for DuPont', '80', 'High');
INSERT INTO `team_building` VALUES ('4', '13', '1', 'Accolades Distribution', '80', 'High');
INSERT INTO `team_building` VALUES ('5', '13', '1', 'Pizza Party @ Noida', '16', 'Medium');
INSERT INTO `utilization` VALUES ('1', '13', '1', '100', '0', '100', '0', '0', '0', '100', '100');
INSERT INTO `utilization` VALUES ('2', '13', '2', '100', '0', '100', '0', '0', '0', '100', '100');
INSERT INTO `utilization` VALUES ('3', '13', '3', '100', '0', '100', '0', '0', '0', '100', '100');
INSERT INTO `utilization` VALUES ('4', '13', '4', '100', '0', '100', '0', '0', '0', '100', '100');
INSERT INTO `utilization` VALUES ('5', '13', '5', '100', '0', '100', '0', '0', '0', '100', '100');
INSERT INTO `vertical` VALUES ('1', 'CENR');
