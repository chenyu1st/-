/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50168
Source Host           : localhost:3306
Source Database       : guangbo

Target Server Type    : MYSQL
Target Server Version : 50168
File Encoding         : 65001

Date: 2018-10-17 19:48:14
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for checktable
-- ----------------------------
DROP TABLE IF EXISTS `checktable`;
CREATE TABLE `checktable` (
  `sid` char(6) NOT NULL,
  `score1` char(6) DEFAULT NULL,
  `score2` char(6) DEFAULT NULL,
  `time` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`sid`),
  CONSTRAINT `checktable_ibfk_1` FOREIGN KEY (`sid`) REFERENCES `student` (`Sid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of checktable
-- ----------------------------
INSERT INTO `checktable` VALUES ('1', '5', '35', '2018-08-17');
INSERT INTO `checktable` VALUES ('2', '0', '0', '0');
INSERT INTO `checktable` VALUES ('3', '0', '0', '0');

-- ----------------------------
-- Table structure for stg
-- ----------------------------
DROP TABLE IF EXISTS `stg`;
CREATE TABLE `stg` (
  `Sid` char(6) NOT NULL,
  `Tid` char(6) NOT NULL,
  `gread` int(3) DEFAULT NULL,
  PRIMARY KEY (`Tid`,`Sid`),
  KEY `Sid` (`Sid`),
  CONSTRAINT `stg_ibfk_1` FOREIGN KEY (`Sid`) REFERENCES `student` (`Sid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stg
-- ----------------------------
INSERT INTO `stg` VALUES ('1', '1', null);
INSERT INTO `stg` VALUES ('2', '2', null);
INSERT INTO `stg` VALUES ('3', '3', null);
INSERT INTO `stg` VALUES ('4', '4', null);

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `Sid` char(6) NOT NULL,
  `Sname` varchar(8) NOT NULL,
  `Ssex` char(2) DEFAULT NULL,
  `Sage` smallint(6) DEFAULT NULL,
  `Stel` char(11) DEFAULT NULL,
  `Saddress` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`Sid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('1', '宇神', '男', '22', '18671223739', '湖北孝感');
INSERT INTO `student` VALUES ('2', '悦儿', '女', '20', '520520520', '湖北潜江');
INSERT INTO `student` VALUES ('3', '坤狗', '男', '26', '18888888888', '湖北荆州');
INSERT INTO `student` VALUES ('4', '星狗', '男', '17', '13333333333', '湖北监利');

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `Tid` char(6) NOT NULL,
  `Tname` varchar(20) NOT NULL,
  PRIMARY KEY (`Tid`),
  CONSTRAINT `teacher_ibfk_1` FOREIGN KEY (`Tid`) REFERENCES `stg` (`Tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('1', '剑圣');
INSERT INTO `teacher` VALUES ('2', '索拉卡');
INSERT INTO `teacher` VALUES ('3', '巨魔');
INSERT INTO `teacher` VALUES ('4', '婕拉');

-- ----------------------------
-- Table structure for test
-- ----------------------------
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` longtext,
  `a` longtext,
  `b` longtext,
  `c` longtext,
  `d` longtext,
  `answer` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of test
-- ----------------------------
INSERT INTO `test` VALUES ('1', '问题1', '1', '2', '3', '4', 'A');
INSERT INTO `test` VALUES ('2', '问题2', '5', '6', '7', '8', 'B');
INSERT INTO `test` VALUES ('3', '问题3', '9', '10', '11', '12', 'C');
INSERT INTO `test` VALUES ('4', '问题4', '13', '14', '15', '16', 'D');
INSERT INTO `test` VALUES ('5', '问题5', '17', '18', '19', '20', 'A');
INSERT INTO `test` VALUES ('6', '问题6', '21', '22', '23', '24', 'B');
INSERT INTO `test` VALUES ('7', '问题7', '25', '26', '27', '28', 'C');
INSERT INTO `test` VALUES ('8', '问题8', '29', '30', '31', '32', 'D');
INSERT INTO `test` VALUES ('9', '问题9', '33', '34', '35', '36', 'A');
INSERT INTO `test` VALUES ('10', '问题10', '37', '38', '39', '40', 'B');
