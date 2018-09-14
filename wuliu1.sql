/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50718
Source Host           : localhost:3306
Source Database       : wuliu1

Target Server Type    : MYSQL
Target Server Version : 50718
File Encoding         : 65001

Date: 2018-07-16 22:51:01
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tb_carmessage
-- ----------------------------
DROP TABLE IF EXISTS `tb_carmessage`;
CREATE TABLE `tb_carmessage` (
  `Code` int(11) NOT NULL AUTO_INCREMENT,
  `TradeMark` varchar(20) DEFAULT NULL,
  `Brand` varchar(50) DEFAULT NULL,
  `Style` varchar(30) DEFAULT NULL,
  `CarLoad` varchar(10) DEFAULT NULL,
  `UsedTime` varchar(50) DEFAULT NULL,
  `DriverName` varchar(30) DEFAULT NULL,
  `DriverTime` varchar(50) DEFAULT NULL,
  `LicenceStyle` varchar(50) DEFAULT NULL,
  `LicenceNumber` varchar(50) DEFAULT NULL,
  `TranspotStyle` varchar(50) DEFAULT NULL,
  `LinkMan` varchar(50) DEFAULT NULL,
  `LinkPhone` varchar(30) DEFAULT NULL,
  `Remark` varchar(100) DEFAULT NULL,
  `IssueDate` datetime DEFAULT NULL,
  `UserName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_carmessage
-- ----------------------------
INSERT INTO `tb_carmessage` VALUES ('2', '111', 'cess', '1111', '1', '11', '测试特', '11', 'A', '1111', '短途', '111', '111', '                                test', '2018-07-04 00:00:00', 'zsf');

-- ----------------------------
-- Table structure for tb_customer
-- ----------------------------
DROP TABLE IF EXISTS `tb_customer`;
CREATE TABLE `tb_customer` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(20) DEFAULT NULL,
  `Password` varchar(16) DEFAULT NULL,
  `Phone` varchar(50) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `pow` int(11) DEFAULT '1' COMMENT '权限',
  `Question` varchar(50) DEFAULT NULL,
  `Result` varchar(50) DEFAULT NULL,
  `IssueDate` datetime DEFAULT NULL,
  `Email` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_customer
-- ----------------------------
INSERT INTO `tb_customer` VALUES ('1', 'szm', '123456', '1234567', 'man', '2', '1', '1', '2018-07-04 00:00:00', '1231@qq.com');
INSERT INTO `tb_customer` VALUES ('2', 'wanghao', '111111', '111111', 'moman', '1', 'test', 'test', '2018-07-16 20:20:52', '1111@qq.com');
INSERT INTO `tb_customer` VALUES ('3', 'wjh', '111111', '111111', 'man', '1', 'test', 'test', '2018-07-04 00:00:00', '1111@qq.com');

-- ----------------------------
-- Table structure for tb_enterprise
-- ----------------------------
DROP TABLE IF EXISTS `tb_enterprise`;
CREATE TABLE `tb_enterprise` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `EnterpriseSort` varchar(50) DEFAULT NULL,
  `EnterpriseName` varchar(100) DEFAULT NULL,
  `Operation` varchar(50) DEFAULT NULL,
  `WordArea` varchar(50) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `Phone` varchar(20) DEFAULT NULL,
  `LinkMan` varchar(30) DEFAULT NULL,
  `HandSet` varchar(30) DEFAULT NULL,
  `Fax` varchar(50) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Http` varchar(50) DEFAULT NULL,
  `Intro` varchar(200) DEFAULT NULL,
  `IssueDate` datetime DEFAULT NULL,
  `UserName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_enterprise
-- ----------------------------
INSERT INTO `tb_enterprise` VALUES ('2', '11', '测试', '11', '11', '111', '11', '11', '11', '11', '11', '11', '11', '2018-07-04 00:00:00', 'zsf');

-- ----------------------------
-- Table structure for tb_goodsmsgs
-- ----------------------------
DROP TABLE IF EXISTS `tb_goodsmsgs`;
CREATE TABLE `tb_goodsmsgs` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `GoodsStyle` varchar(50) DEFAULT NULL,
  `GoodsName` varchar(100) DEFAULT NULL,
  `GoodsNumber` varchar(50) DEFAULT NULL,
  `GoodsUnit` varchar(50) DEFAULT NULL,
  `StartProvince` varchar(100) DEFAULT NULL,
  `StartCity` varchar(20) DEFAULT NULL,
  `EndProvince` varchar(30) DEFAULT NULL,
  `EndCity` varchar(30) DEFAULT NULL,
  `Style` varchar(50) DEFAULT NULL,
  `TransportTime` varchar(50) DEFAULT NULL,
  `Phone` varchar(50) DEFAULT NULL,
  `Link` varchar(200) DEFAULT NULL,
  `IssueDate` datetime DEFAULT NULL,
  `Remark` varchar(255) DEFAULT NULL,
  `Request` varchar(50) DEFAULT NULL,
  `UserName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_goodsmsgs
-- ----------------------------
INSERT INTO `tb_goodsmsgs` VALUES ('3', '水果', '水果干', '1', '1', '重庆', '重庆', '四川', '四川', '快速', '2017-02-03', '1', '1', '2018-07-04 00:00:00', '测试', '测试', 'zsf');

-- ----------------------------
-- Table structure for tb_knowledge
-- ----------------------------
DROP TABLE IF EXISTS `tb_knowledge`;
CREATE TABLE `tb_knowledge` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(50) DEFAULT NULL,
  `Content` varchar(255) DEFAULT NULL,
  `style` varchar(50) DEFAULT NULL,
  `IssueDate` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_knowledge
-- ----------------------------
INSERT INTO `tb_knowledge` VALUES ('3', '欧静', '发达地方', '放大放大时', '2018-07-04 00:00:00');

-- ----------------------------
-- Table structure for tb_logistics
-- ----------------------------
DROP TABLE IF EXISTS `tb_logistics`;
CREATE TABLE `tb_logistics` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(50) DEFAULT NULL,
  `Content` varchar(255) DEFAULT NULL,
  `Author` varchar(50) DEFAULT NULL,
  `IssueDate` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_logistics
-- ----------------------------
INSERT INTO `tb_logistics` VALUES ('12', '东方闪电是多少', '   对方水电费', '对方水电费', '2018-07-04 00:00:00');
INSERT INTO `tb_logistics` VALUES ('14', 'asdasd', 'asdasd', 'asd', '2018-07-07 00:00:00');

-- ----------------------------
-- Table structure for tb_placard
-- ----------------------------
DROP TABLE IF EXISTS `tb_placard`;
CREATE TABLE `tb_placard` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(50) DEFAULT NULL,
  `Content` varchar(255) DEFAULT NULL,
  `Author` varchar(20) DEFAULT NULL,
  `IssueDate` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_placard
-- ----------------------------
INSERT INTO `tb_placard` VALUES ('3', '第二条公告', '   测试', 'zsf', '2018-07-04 00:00:00');
