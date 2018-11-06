/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50718
Source Host           : localhost:3306
Source Database       : zone

Target Server Type    : MYSQL
Target Server Version : 50718
File Encoding         : 65001

Date: 2018-10-12 12:02:37
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of album
-- ----------------------------
INSERT INTO `album` VALUES ('0402', '/resource/image/album/3C514EC1FEDBBBC7553D3ABDF9E8E990.jpg', '夜晚回家', '重邮', '7', '2018-04-12 17:36:51');
INSERT INTO `album` VALUES ('0402', '/resource/image/album/5_BigPic.png', '二次元', '二次元', '8', '2018-04-12 17:36:52');
INSERT INTO `album` VALUES ('0402', '/resource/image/album/491A2E75942CBDDF85B431E6B7C74997.jpg', '萌萌哒', '你的照片', '9', '2018-04-12 17:36:53');
INSERT INTO `album` VALUES ('0402', '/resource/image/album/2909F0991C4CF0495FA373C4C1E28647.jpg', '萌萌哒的鱼', '你的照片', '10', '2018-04-12 17:36:54');
INSERT INTO `album` VALUES ('0402', '/resource/image/album/5721809EB34EFCDAA2F2D767B38FE8FC.jpg', 'overlord里面的雅儿贝德', '雅儿贝德', '11', '2018-04-12 17:36:55');
INSERT INTO `album` VALUES ('0402', '/resource/image/album/EAC10A780EDC9D593050223E16CBA593.jpg', '鱼鱼鱼', '你', '12', '2018-04-12 17:36:55');
INSERT INTO `album` VALUES ('0402', '/resource/image/album/7464A7E4CA1AE5739C10003BE9D6C259.jpg', '萌萌哒的鱼', '你的照片', '13', '2018-04-12 17:36:57');
INSERT INTO `album` VALUES ('1', '/resource/image/album/3381.jpg', '12312', '312', '14', '2018-04-13 14:04:10');
INSERT INTO `album` VALUES ('1', '/resource/image/album/226411.jpg', '123', '123', '15', '2018-04-13 14:04:29');

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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of word
-- ----------------------------
INSERT INTO `word` VALUES ('1', '1.txt', '8', '2018-04-13 13:58:10');
INSERT INTO `word` VALUES ('1', '2.txt', '9', '2018-04-13 13:58:19');
INSERT INTO `word` VALUES ('1', '3.txt', '10', '2018-04-13 14:00:00');
INSERT INTO `word` VALUES ('1', '4.txt', '11', '2018-04-13 14:00:56');
INSERT INTO `word` VALUES ('0402', '5.txt', '12', '2018-04-13 14:01:33');
INSERT INTO `word` VALUES ('1', '6.txt', '13', '2018-07-30 18:09:31');
INSERT INTO `word` VALUES ('1', '7.txt', '14', '2018-07-30 19:32:56');
INSERT INTO `word` VALUES ('1', '8.txt', '15', '2018-07-30 19:35:40');
INSERT INTO `word` VALUES ('1', '9.txt', '16', '2018-07-30 19:35:51');
