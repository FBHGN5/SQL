/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50718
Source Host           : localhost:3306
Source Database       : blog

Target Server Type    : MYSQL
Target Server Version : 50718
File Encoding         : 65001

Date: 2018-10-12 12:00:57
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for hibernate_sequence
-- ----------------------------
DROP TABLE IF EXISTS `hibernate_sequence`;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hibernate_sequence
-- ----------------------------
INSERT INTO `hibernate_sequence` VALUES ('1');

-- ----------------------------
-- Table structure for myblog
-- ----------------------------
DROP TABLE IF EXISTS `myblog`;
CREATE TABLE `myblog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `title` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of myblog
-- ----------------------------
INSERT INTO `myblog` VALUES ('4', '2018-07-06 21:52:54', '2', '2');
INSERT INTO `myblog` VALUES ('2', '2018-07-06 21:48:49', '1', '1');
INSERT INTO `myblog` VALUES ('3', null, '1', '1');
INSERT INTO `myblog` VALUES ('5', '2018-07-06 21:52:54', '22', '22');
INSERT INTO `myblog` VALUES ('6', '2018-07-06 21:52:54', null, null);
INSERT INTO `myblog` VALUES ('7', '2018-07-06 21:52:54', null, null);
INSERT INTO `myblog` VALUES ('8', '2018-07-06 21:52:55', null, null);
INSERT INTO `myblog` VALUES ('9', '2018-07-06 21:52:55', null, null);
INSERT INTO `myblog` VALUES ('10', '2018-07-06 21:52:56', null, null);
INSERT INTO `myblog` VALUES ('11', null, '1', '1');

-- ----------------------------
-- Table structure for role_permission
-- ----------------------------
DROP TABLE IF EXISTS `role_permission`;
CREATE TABLE `role_permission` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `role_id` int(20) DEFAULT NULL,
  `permission_id` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role_permission
-- ----------------------------
INSERT INTO `role_permission` VALUES ('1', '1', '1');
INSERT INTO `role_permission` VALUES ('2', '1', '2');
INSERT INTO `role_permission` VALUES ('3', '1', '3');
INSERT INTO `role_permission` VALUES ('4', '2', '2');
INSERT INTO `role_permission` VALUES ('5', '2', '3');
INSERT INTO `role_permission` VALUES ('6', '3', '3');
INSERT INTO `role_permission` VALUES ('7', '4', '4');
INSERT INTO `role_permission` VALUES ('8', '4', '4');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(16) NOT NULL,
  `birth` date DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `regTime` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', '123', '2016-12-26', 'male', '34343@qw.com', '1', '2017-03-18 12:53:39');
INSERT INTO `user` VALUES ('2', '张三', '123', '2017-03-21', 'male', '2132@123', '1', '2014-03-18 22:53:39');
INSERT INTO `user` VALUES ('3', '李四', '123', '2017-03-06', 'male', 'trytyt@wqew', '1', '2011-03-18 22:53:39');
INSERT INTO `user` VALUES ('4', '王五', '123', '2018-03-08', 'Female', '1232132@123.com', '1', '2018-03-18 22:53:39');
INSERT INTO `user` VALUES ('5', '李白', '123', '2018-03-23', 'Female', '232434@123.com', '1', '2018-03-18 22:53:39');
INSERT INTO `user` VALUES ('6', 'Andrew', '123', '2017-03-21', 'male', '2132@123', '1', '2014-03-18 22:53:39');
INSERT INTO `user` VALUES ('7', 'Lili', '123', '2017-03-06', 'male', 'trytyt@wqew', '0', '2011-03-18 22:53:39');
INSERT INTO `user` VALUES ('8', 'jack', '123', '2018-03-08', 'Female', '1232132@123.com', '0', '2018-03-18 22:53:39');
INSERT INTO `user` VALUES ('9', 'lucy', '123', '2018-03-23', 'Female', '232434@123.com', '0', '2018-03-18 22:53:39');
INSERT INTO `user` VALUES ('10', 'Mike', '123', '2017-03-21', 'male', '2132@123', '0', '2014-03-18 22:53:39');
INSERT INTO `user` VALUES ('11', 'Man', '123', '2017-03-06', 'male', 'trytyt@wqew', '1', '2011-03-18 22:53:39');
INSERT INTO `user` VALUES ('12', 'Chilton', '123', '2018-03-08', 'Female', '1232132@123.com', '0', '2018-03-18 22:53:39');
INSERT INTO `user` VALUES ('13', 'Micheal', '123', '2018-03-23', 'Female', '232434@123.com', '0', '2018-03-18 22:53:39');
INSERT INTO `user` VALUES ('15', 'tom', '123adqwe', '2018-09-05', '女', '18986940541@163.com', '1', '2018-09-06 12:41:09');
INSERT INTO `user` VALUES ('16', 'adminwqewe', '123', '2018-09-07', '女', 'qweqe@123.com', '1', '2018-09-06 15:50:12');

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(20) DEFAULT NULL,
  `role_id` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=246 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES ('198', '1', '1');
INSERT INTO `user_role` VALUES ('199', '1', '2');
INSERT INTO `user_role` VALUES ('200', '1', '3');
INSERT INTO `user_role` VALUES ('223', '3', '4');
INSERT INTO `user_role` VALUES ('224', '3', '3');
INSERT INTO `user_role` VALUES ('225', '3', '6');
INSERT INTO `user_role` VALUES ('226', '3', '7');
INSERT INTO `user_role` VALUES ('227', '3', '8');
INSERT INTO `user_role` VALUES ('228', '3', '9');
INSERT INTO `user_role` VALUES ('237', '2', '2');
INSERT INTO `user_role` VALUES ('238', '2', '3');
INSERT INTO `user_role` VALUES ('239', '2', '4');
INSERT INTO `user_role` VALUES ('240', '2', '5');
INSERT INTO `user_role` VALUES ('241', '4', '3');
INSERT INTO `user_role` VALUES ('242', '5', '3');
INSERT INTO `user_role` VALUES ('243', '6', '3');
INSERT INTO `user_role` VALUES ('244', '15', '3');
INSERT INTO `user_role` VALUES ('245', '16', '3');
