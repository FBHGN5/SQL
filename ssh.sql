/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50718
Source Host           : localhost:3306
Source Database       : ssh

Target Server Type    : MYSQL
Target Server Version : 50718
File Encoding         : 65001

Date: 2018-07-16 22:50:17
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for department
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department` (
  `did` int(11) NOT NULL AUTO_INCREMENT,
  `dname` varchar(20) DEFAULT NULL,
  `ddesc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`did`)
) ENGINE=InnoDB AUTO_INCREMENT=7123 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of department
-- ----------------------------
INSERT INTO `department` VALUES ('7112', 'ddd', 'dddd');
INSERT INTO `department` VALUES ('7113', '11111', '11111');
INSERT INTO `department` VALUES ('7114', '111', '111');
INSERT INTO `department` VALUES ('7115', '111', '1111');
INSERT INTO `department` VALUES ('7116', '111111', '11111');
INSERT INTO `department` VALUES ('7117', '28-609', '28-609');
INSERT INTO `department` VALUES ('7118', 'ddddddddd', 'dddddddddd');
INSERT INTO `department` VALUES ('7122', '啧啧啧啧啧啧', '走着走着');

-- ----------------------------
-- Table structure for employee
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee` (
  `eid` int(11) NOT NULL AUTO_INCREMENT,
  `ename` varchar(20) DEFAULT NULL,
  `sex` varchar(20) DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  `joinDate` timestamp NULL DEFAULT NULL,
  `eno` varchar(20) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `dno` int(11) DEFAULT NULL,
  PRIMARY KEY (`eid`),
  KEY `FK_fcr4kbsnt6c84hvcd3jg3usue` (`dno`),
  CONSTRAINT `FK_fcr4kbsnt6c84hvcd3jg3usue` FOREIGN KEY (`dno`) REFERENCES `department` (`did`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of employee
-- ----------------------------
INSERT INTO `employee` VALUES ('1', '1', '1', '2018-03-18 00:00:00', '2018-03-18 00:00:00', '1', '11111111', '1', '7112');
INSERT INTO `employee` VALUES ('3', '11111111', '男', '2018-03-18 00:00:00', '2018-03-18 00:00:00', '1', '1', '1', '7117');
INSERT INTO `employee` VALUES ('6', 'd', '男', '2018-03-18 00:00:00', '2018-03-18 00:00:00', 'd', 'd', 'd', '7115');
INSERT INTO `employee` VALUES ('7', '2018-03-18	', '男', '2018-03-18 00:00:00', '2018-03-18 00:00:00', '2018-03-18	', '2018-03-18	', '2018-03-18	', '7113');
