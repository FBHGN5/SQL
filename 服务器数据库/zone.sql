/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50558
Source Host           : localhost:3306
Source Database       : zone

Target Server Type    : MYSQL
Target Server Version : 50558
File Encoding         : 65001

Date: 2018-11-06 17:39:51
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for album
-- ----------------------------
DROP TABLE IF EXISTS `album`;
CREATE TABLE `album` (
  `username` varchar(255) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `infor` varchar(255) NOT NULL,
  `caption` varchar(255) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of album
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `state` int(12) NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('0402', '0402', '鱼@←_←', '/resource/image/zone/100.png', '1', '1', '2018-04-12 16:24:43');
INSERT INTO `user` VALUES ('1', '1', '鱼@←_←', '/resource/image/zone/100.png', '1', '1', '2018-04-12 16:22:45');

-- ----------------------------
-- Table structure for word
-- ----------------------------
DROP TABLE IF EXISTS `word`;
CREATE TABLE `word` (
  `username` varchar(255) NOT NULL,
  `word` varchar(255) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of word
-- ----------------------------
INSERT INTO `word` VALUES ('0402', '1.txt', '37', '2018-04-18 21:31:18');
INSERT INTO `word` VALUES ('1', '2.txt', '38', '2018-05-02 22:40:47');
INSERT INTO `word` VALUES ('1', '3.txt', '39', '2018-05-02 22:40:53');
INSERT INTO `word` VALUES ('0402', '4.txt', '40', '2018-05-06 17:33:44');
