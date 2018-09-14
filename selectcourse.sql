/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50718
Source Host           : localhost:3306
Source Database       : selectcourse

Target Server Type    : MYSQL
Target Server Version : 50718
File Encoding         : 65001

Date: 2018-09-14 23:43:19
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `course_name` varchar(255) NOT NULL,
  `course_id` int(11) NOT NULL AUTO_INCREMENT,
  `teacher_name` varchar(255) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `classroom` varchar(255) NOT NULL,
  `number` int(11) NOT NULL,
  `start_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `end_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`course_id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('高等数学1233', '1', '邹桔林', '1', '2', '444', '2018-04-08 13:47:37', '2018-04-08 13:47:37', '2018-04-08 13:47:37');
INSERT INTO `course` VALUES ('地理', '2', '邹桔林', '1', '3122', '10', '2018-04-08 13:47:37', '2018-04-08 13:47:37', '2018-04-08 13:47:37');
INSERT INTO `course` VALUES ('高等数学', '3', '邹桔林', '1', '2', '444', '2018-04-08 13:47:37', '2018-04-08 13:47:37', '2018-04-08 13:47:37');
INSERT INTO `course` VALUES ('产权', '4', '邹桔林', '1', '111', '10', '2018-04-08 13:47:37', '2018-04-08 13:47:37', '2018-04-08 13:47:37');
INSERT INTO `course` VALUES ('2', '5', '邹桔林', '1', '2', '2', '2018-04-08 13:47:37', '2018-04-08 13:47:37', '2018-04-08 13:47:37');
INSERT INTO `course` VALUES ('语文', '6', '邹桔林', '1', '111', '10', '2018-04-08 13:47:38', '2018-04-08 13:47:38', '2018-04-08 13:47:38');
INSERT INTO `course` VALUES ('恋爱心理学', '7', '邹桔林', '1', '111', '10', '2018-04-08 13:47:38', '2018-04-08 13:47:38', '2018-04-08 13:47:38');
INSERT INTO `course` VALUES ('体育赛事赏析', '8', '邹桔林', '1', '111\r\n111\r\n111\r\n111\r\n111\r\n111\r\n111', '10', '2018-04-08 13:47:38', '2018-04-08 13:47:38', '2018-04-08 13:47:38');
INSERT INTO `course` VALUES ('大学生情商培养', '9', '邹桔林', '1', '111', '10', '2018-04-08 13:47:38', '2018-04-08 13:47:38', '2018-04-08 13:47:38');
INSERT INTO `course` VALUES ('会计职业入门与操作1', '10', '邹桔林', '1', '111', '10', '2018-04-08 13:47:38', '2018-04-08 13:47:38', '2018-04-08 13:47:38');
INSERT INTO `course` VALUES ('会计职业入门与操作2', '11', '邹桔林', '1', '111', '10', '2018-04-08 13:47:38', '2018-04-08 13:47:38', '2018-04-08 13:47:38');
INSERT INTO `course` VALUES ('会计职业入门与操作3', '12', '邹桔林', '1', '111', '10', '2018-04-08 13:47:38', '2018-04-08 13:47:38', '2018-04-08 13:47:38');
INSERT INTO `course` VALUES ('会计职业入门与操作4', '13', '邹桔林', '1', '111', '10', '2018-04-08 13:47:38', '2018-04-08 13:47:38', '2018-04-08 13:47:38');
INSERT INTO `course` VALUES ('养生与美容', '14', '邹桔林', '1', '111', '10', '2018-04-08 13:47:38', '2018-04-08 13:47:38', '2018-04-08 13:47:38');
INSERT INTO `course` VALUES ('《走遍中国》', '15', '邹桔林', '1', '111', '100', '2018-04-08 13:47:38', '2018-04-08 13:47:38', '2018-04-08 13:47:38');
INSERT INTO `course` VALUES ('期货入门', '16', '邹桔林', '1', '111', '100', '2018-04-08 13:47:38', '2018-04-08 13:47:38', '2018-04-08 13:47:38');
INSERT INTO `course` VALUES ('世界经典电影赏析', '17', '邹桔林', '1', '111', '10', '2018-04-08 13:47:38', '2018-04-08 13:47:38', '2018-04-08 13:47:38');
INSERT INTO `course` VALUES (' 职业院校学生常见心理问题识别与案例分析  ', '18', '邹桔林', '1', '111', '10', '2018-04-08 13:47:38', '2018-04-08 13:47:38', '2018-04-08 13:47:38');
INSERT INTO `course` VALUES ('职业院校学生常见心理问题识别与案例分析 ', '19', '邹桔林', '1', '111', '10', '2018-04-08 13:47:38', '2018-04-08 13:47:38', '2018-04-08 13:47:38');
INSERT INTO `course` VALUES ('常用工具软件应用', '20', '邹桔林', '1', '111', '10', '2018-04-08 13:47:41', '2018-04-08 13:47:41', '2018-04-08 13:47:41');
INSERT INTO `course` VALUES ('广告策划与创意', '21', '邹桔林', '1', '111', '10', '2018-04-08 13:47:41', '2018-04-08 13:47:41', '2018-04-08 13:47:41');
INSERT INTO `course` VALUES ('沟通艺术', '22', '邹桔林', '1', '111', '10', '2018-04-08 13:47:41', '2018-04-08 13:47:41', '2018-04-08 13:47:41');
INSERT INTO `course` VALUES ('创意策划与实践', '23', '邹桔林', '1', '111', '10', '2018-04-08 13:47:41', '2018-04-08 13:47:41', '2018-04-08 13:47:41');
INSERT INTO `course` VALUES ('影视欣赏', '24', '邹桔林', '1', '111', '10', '2018-04-08 13:47:41', '2018-04-08 13:47:41', '2018-04-08 13:47:41');
INSERT INTO `course` VALUES ('创新思维能力训练', '25', '邹桔林', '1', '111', '10', '2018-04-08 13:47:41', '2018-04-08 13:47:41', '2018-04-08 13:47:41');
INSERT INTO `course` VALUES ('恋爱心理学', '26', '邹桔林', '1', '111', '10', '2018-04-08 13:47:41', '2018-04-08 13:47:41', '2018-04-08 13:47:41');
INSERT INTO `course` VALUES ('体育赛事赏析', '27', '邹桔林', '1', '111\r\n111\r\n111\r\n111\r\n111\r\n111\r\n111', '10', '2018-04-08 13:47:41', '2018-04-08 13:47:41', '2018-04-08 13:47:41');
INSERT INTO `course` VALUES ('大学生情商培养', '28', '邹桔林', '1', '111', '10', '2018-04-08 13:47:41', '2018-04-08 13:47:41', '2018-04-08 13:47:41');
INSERT INTO `course` VALUES ('会计职业入门与操作1', '29', '邹桔林', '1', '111', '10', '2018-04-08 13:47:43', '2018-04-08 13:47:43', '2018-04-08 13:47:43');
INSERT INTO `course` VALUES ('会计职业入门与操作2', '30', '邹桔林', '1', '111', '10', '2018-04-08 13:47:43', '2018-04-08 13:47:43', '2018-04-08 13:47:43');
INSERT INTO `course` VALUES ('会计职业入门与操作3', '31', '邹桔林', '1', '111', '100', '2018-04-08 13:47:43', '2018-04-08 13:47:43', '2018-04-08 13:47:43');
INSERT INTO `course` VALUES ('会计职业入门与操作4', '32', '邹桔林', '1', '111', '100', '2018-04-08 13:47:43', '2018-04-08 13:47:43', '2018-04-08 13:47:43');
INSERT INTO `course` VALUES ('养生与美容', '33', '邹桔林', '1', '111', '111', '2018-04-08 13:47:43', '2018-04-08 13:47:43', '2018-04-08 13:47:43');
INSERT INTO `course` VALUES ('《走遍中国》', '34', '邹桔林', '1', '111', '111', '2018-04-08 13:47:43', '2018-04-08 13:47:43', '2018-04-08 13:47:43');
INSERT INTO `course` VALUES ('期货入门', '35', '邹桔林', '1', '111', '10', '2018-04-08 13:47:43', '2018-04-08 13:47:43', '2018-04-08 13:47:43');
INSERT INTO `course` VALUES ('世界经典电影赏析', '36', '邹桔林', '1', '111', '10', '2018-04-08 13:47:44', '2018-04-08 13:47:44', '2018-04-08 13:47:44');
INSERT INTO `course` VALUES (' 职业院校学生常见心理问题识别与案例分析  ', '37', '邹桔林', '1', '111', '10', '2018-04-08 13:47:44', '2018-04-08 13:47:44', '2018-04-08 13:47:44');
INSERT INTO `course` VALUES ('英剧与社会文化研究', '38', '邹桔林', '1', '111', '10', '2018-04-08 13:47:44', '2018-04-08 13:47:44', '2018-04-08 13:47:44');
INSERT INTO `course` VALUES ('心理氧吧初体验', '53', '邹桔林', '1', '111', '10', '2018-04-08 13:47:44', '2018-04-08 13:47:44', '2018-04-08 13:47:44');
INSERT INTO `course` VALUES ('线性代数', '54', '邹桔林', '1', '111', '10', '2018-04-08 13:47:47', '2018-04-08 13:47:47', '2018-04-08 13:47:47');
INSERT INTO `course` VALUES ('数学建模', '55', '2', '2', '111', '10', '2018-04-08 13:47:53', '2018-04-08 13:47:53', '2018-04-08 13:47:53');
INSERT INTO `course` VALUES ('趣味数学', '56', '2', '2', '111', '10', '2018-04-08 13:47:57', '2018-04-08 13:47:57', '2018-04-08 13:47:57');
INSERT INTO `course` VALUES ('生物的奥秘', '57', '2', '2', '111', '10', '2018-04-08 13:48:01', '2018-04-08 13:48:01', '2018-04-08 13:48:01');
INSERT INTO `course` VALUES ('民俗文化艺术鉴赏', '58', '2', '2', '111', '10', '2018-04-08 13:48:01', '2018-04-08 13:48:01', '2018-04-08 13:48:01');
INSERT INTO `course` VALUES ('英剧与社会文化研究', '59', '2', '2', '111', '10', '2018-04-08 13:48:01', '2018-04-08 13:48:01', '2018-04-08 13:48:01');
INSERT INTO `course` VALUES ('心理氧吧初体验', '60', '2', '2', '111\r\n111\r\n111\r\n111\r\n111\r\n111\r\n111', '10', '2018-04-08 13:48:01', '2018-04-08 13:48:01', '2018-04-08 13:48:01');
INSERT INTO `course` VALUES ('线性代数', '61', '2', '2', '111', '10', '2018-04-08 13:48:01', '2018-04-08 13:48:01', '2018-04-08 13:48:01');
INSERT INTO `course` VALUES ('数学建模', '62', '2', '2', '111', '10', '2018-04-08 13:48:01', '2018-04-08 13:48:01', '2018-04-08 13:48:01');
INSERT INTO `course` VALUES ('趣味数学', '63', '2', '2', '111', '100', '2018-04-08 13:48:01', '2018-04-08 13:48:01', '2018-04-08 13:48:01');
INSERT INTO `course` VALUES ('生物的奥秘', '64', '2', '2', '111', '100', '2018-04-08 13:48:01', '2018-04-08 13:48:01', '2018-04-08 13:48:01');

-- ----------------------------
-- Table structure for login
-- ----------------------------
DROP TABLE IF EXISTS `login`;
CREATE TABLE `login` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `state` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of login
-- ----------------------------
INSERT INTO `login` VALUES ('1', '1', '2', '邹', '2018-03-07 12:39:51');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `course_name` varchar(255) NOT NULL,
  `course_id` int(11) NOT NULL,
  `course_teacher` varchar(255) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `classroom` varchar(255) NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('29', '3', 'dddd', '高等数学1233', '1', '邹桔林', '1', '2', '2018-04-08 13:48:16');
INSERT INTO `student` VALUES ('30', '3', 'dddd', '地理', '2', '邹桔林', '1', '3122', '2018-04-08 13:48:16');
INSERT INTO `student` VALUES ('31', '3', 'dddd', '高等数学', '3', '邹桔林', '1', '2', '2018-04-08 13:48:16');
INSERT INTO `student` VALUES ('32', '3', 'dddd', '产权', '4', '邹桔林', '1', '111', '2018-04-08 13:48:17');
INSERT INTO `student` VALUES ('33', '3', 'dddd', '生物的奥秘', '64', '2', '2', '111', '2018-04-08 13:48:20');

-- ----------------------------
-- Table structure for test
-- ----------------------------
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test` (
  `username` varchar(20) NOT NULL,
  `id` int(11) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of test
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `username` varchar(12) NOT NULL,
  `password` varchar(20) NOT NULL,
  `state` int(11) NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '1', '2', '2018-03-19 21:32:04', '邹桔林');
INSERT INTO `user` VALUES ('2', '1', '2', '2018-04-03 13:27:18', '123');
INSERT INTO `user` VALUES ('3', '12', '1', '2018-04-03 13:42:45', 'dddd');
INSERT INTO `user` VALUES ('5', '12', '1', '2018-04-03 13:34:46', 'dddd');
INSERT INTO `user` VALUES ('52', '12', '1', '2018-04-03 13:35:39', 'dddd');
