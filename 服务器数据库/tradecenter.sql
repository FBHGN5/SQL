/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50558
Source Host           : localhost:3306
Source Database       : tradecenter

Target Server Type    : MYSQL
Target Server Version : 50558
File Encoding         : 65001

Date: 2018-11-06 17:38:56
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for baojia
-- ----------------------------
DROP TABLE IF EXISTS `baojia`;
CREATE TABLE `baojia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `price` varchar(255) NOT NULL,
  `number` int(11) NOT NULL,
  `bid` int(11) NOT NULL COMMENT 'bid和uid只能有一个',
  `check_level` int(11) NOT NULL,
  `unit_price` varchar(10) DEFAULT NULL COMMENT '煤单价',
  `transport_price` varchar(10) DEFAULT NULL COMMENT '运输单价',
  `create_area` varchar(255) DEFAULT NULL,
  `send_area` varchar(255) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `id` (`id`),
  KEY `bid` (`bid`),
  CONSTRAINT `baojia_ibfk_2` FOREIGN KEY (`bid`) REFERENCES `buyinfo` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of baojia
-- ----------------------------
INSERT INTO `baojia` VALUES ('10', 'MzAwMA==', '10', '4', '2', 'MTAw', 'MjAw', '重庆', '怀来', '2018-08-21 16:00:41');
INSERT INTO `baojia` VALUES ('11', 'NjU0MA==', '12', '4', '2', 'NTAw', 'NDU=', '河南', '河北', '2018-08-21 17:25:03');
INSERT INTO `baojia` VALUES ('12', 'NjQwMDA=', '100', '2', '3', 'NjAw', 'NDA=', '湖南', '湖北', '2018-08-23 16:39:42');
INSERT INTO `baojia` VALUES ('13', 'NTk1MDA=', '100', '1', '3', 'NTU1', 'NDA=', '四川', '北京', '2018-08-16 11:18:09');
INSERT INTO `baojia` VALUES ('14', 'OA==', '1', '1', '3', 'Mg==', 'Mg==', '2', '2', '2018-08-16 11:18:09');
INSERT INTO `baojia` VALUES ('15', 'MjE1MA==', '5', '1', '3', 'NDIw', 'MTA=', '大同', '江西', '2018-08-21 17:26:26');
INSERT INTO `baojia` VALUES ('16', 'ODAwMDA=', '100', '9', '1', 'NTAw', 'MzAw', '河南', '广告', '2018-08-21 17:14:09');
INSERT INTO `baojia` VALUES ('18', 'NzIwNQ==', '11', '8', '2', 'NTU1', 'MTAw', '河南', '河北', '2018-08-22 09:30:16');
INSERT INTO `baojia` VALUES ('19', 'MzMzMDAw', '555', '13', '2', 'NTAw', 'MTAw', '河南', '河北', '2018-08-23 11:03:23');
INSERT INTO `baojia` VALUES ('21', 'MjQ2NDI=', '111', '22', '3', 'MTEx', 'MTEx', '111', '111', '2018-08-24 09:13:35');
INSERT INTO `baojia` VALUES ('23', 'MjQ2NjQy', '1111', '21', '2', 'MTEx', 'MTEx', '11', '111', '2018-08-24 09:12:40');

-- ----------------------------
-- Table structure for baojia_gys
-- ----------------------------
DROP TABLE IF EXISTS `baojia_gys`;
CREATE TABLE `baojia_gys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bjid` int(11) NOT NULL,
  `gid` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `gid` (`gid`),
  KEY `baojia_gys_ibfk_1` (`bjid`),
  CONSTRAINT `baojia_gys_ibfk_1` FOREIGN KEY (`bjid`) REFERENCES `baojia` (`id`) ON DELETE CASCADE,
  CONSTRAINT `baojia_gys_ibfk_2` FOREIGN KEY (`gid`) REFERENCES `gys` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of baojia_gys
-- ----------------------------
INSERT INTO `baojia_gys` VALUES ('10', '10', '1');
INSERT INTO `baojia_gys` VALUES ('11', '11', '1');
INSERT INTO `baojia_gys` VALUES ('12', '12', '1');
INSERT INTO `baojia_gys` VALUES ('13', '13', '1');
INSERT INTO `baojia_gys` VALUES ('14', '14', '2');
INSERT INTO `baojia_gys` VALUES ('15', '15', '1');
INSERT INTO `baojia_gys` VALUES ('16', '16', '1');
INSERT INTO `baojia_gys` VALUES ('18', '18', '1');
INSERT INTO `baojia_gys` VALUES ('19', '19', '1');
INSERT INTO `baojia_gys` VALUES ('21', '21', '1');
INSERT INTO `baojia_gys` VALUES ('23', '23', '1');

-- ----------------------------
-- Table structure for baojia_users
-- ----------------------------
DROP TABLE IF EXISTS `baojia_users`;
CREATE TABLE `baojia_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bid` int(11) DEFAULT NULL,
  `uid` int(11) NOT NULL,
  `check_advice` varchar(255) NOT NULL,
  `check_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `bid` (`bid`),
  CONSTRAINT `baojia_users_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `users` (`id`),
  CONSTRAINT `baojia_users_ibfk_2` FOREIGN KEY (`bid`) REFERENCES `buyinfo` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of baojia_users
-- ----------------------------
INSERT INTO `baojia_users` VALUES ('1', '1', '5', '确认', '2018-08-14 11:00:41');
INSERT INTO `baojia_users` VALUES ('2', '1', '2', '确认', '2018-08-14 11:01:06');
INSERT INTO `baojia_users` VALUES ('3', '4', '5', '已中标', '2018-08-14 11:21:42');
INSERT INTO `baojia_users` VALUES ('4', '4', '5', '酷酷酷', '2018-08-16 10:18:38');
INSERT INTO `baojia_users` VALUES ('5', '1', '5', 'ok', '2018-08-16 11:17:15');
INSERT INTO `baojia_users` VALUES ('6', '1', '2', 'ok', '2018-08-16 11:17:40');
INSERT INTO `baojia_users` VALUES ('7', '2', '5', '报价成功', '2018-08-20 15:07:46');
INSERT INTO `baojia_users` VALUES ('8', '2', '2', '通过', '2018-08-21 14:17:32');
INSERT INTO `baojia_users` VALUES ('9', '1', '5', '5/2018/2/21/14/43', '2018-08-21 14:43:29');
INSERT INTO `baojia_users` VALUES ('10', '1', '2', '2/2018/8/21/14/44', '2018-08-21 14:45:00');
INSERT INTO `baojia_users` VALUES ('11', '8', '5', '5/8/21/14/50', '2018-08-21 14:50:56');
INSERT INTO `baojia_users` VALUES ('12', '4', '2', '', '2018-08-21 16:00:41');
INSERT INTO `baojia_users` VALUES ('13', '9', '5', 'zzz', '2018-08-21 17:14:09');
INSERT INTO `baojia_users` VALUES ('14', '13', '5', '', '2018-08-21 17:19:51');
INSERT INTO `baojia_users` VALUES ('15', '4', '2', '恭喜你，中标了', '2018-08-21 17:25:03');
INSERT INTO `baojia_users` VALUES ('16', '8', '2', '中标', '2018-08-22 09:30:16');
INSERT INTO `baojia_users` VALUES ('17', '13', '2', '7777777', '2018-08-23 11:03:23');
INSERT INTO `baojia_users` VALUES ('18', '22', '5', '11', '2018-08-23 14:29:14');
INSERT INTO `baojia_users` VALUES ('19', '22', '2', '1', '2018-08-23 15:25:05');
INSERT INTO `baojia_users` VALUES ('20', '23', '5', '333', '2018-08-23 16:32:37');
INSERT INTO `baojia_users` VALUES ('21', '23', '2', '1111', '2018-08-23 16:32:56');
INSERT INTO `baojia_users` VALUES ('22', '21', '5', '11111', '2018-08-23 17:07:42');
INSERT INTO `baojia_users` VALUES ('23', '21', '2', '1111', '2018-08-24 09:12:40');

-- ----------------------------
-- Table structure for buyinfo
-- ----------------------------
DROP TABLE IF EXISTS `buyinfo`;
CREATE TABLE `buyinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '存放采购单id',
  `uid` int(11) NOT NULL,
  `check_level` int(255) NOT NULL COMMENT '-2驳回-1保存0审核中1一级审核2二级审核',
  `end_time` date NOT NULL,
  `create_company` varchar(255) NOT NULL,
  `sno` varchar(255) NOT NULL,
  `create_person` varchar(255) DEFAULT NULL,
  `sign_person` varchar(255) NOT NULL,
  `create_time` date NOT NULL,
  `type1` varchar(255) NOT NULL,
  `type2` varchar(255) DEFAULT NULL,
  `number` int(11) NOT NULL,
  `transport` varchar(255) NOT NULL,
  `high_price` decimal(10,2) NOT NULL,
  `low_price` decimal(10,2) NOT NULL,
  `explains` varchar(255) DEFAULT NULL,
  `pay_type` varchar(255) NOT NULL,
  `baojia_price` decimal(10,2) NOT NULL,
  `agree_price` decimal(10,2) NOT NULL,
  `stime` date NOT NULL,
  `etime` date NOT NULL,
  `Applicant` varchar(255) NOT NULL,
  `place` varchar(255) NOT NULL,
  `calculate_type` varchar(255) NOT NULL,
  `checkgoods_type` varchar(255) NOT NULL,
  `hot1` varchar(255) NOT NULL,
  `air` varchar(255) NOT NULL,
  `hot2` varchar(255) NOT NULL,
  `remark` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  CONSTRAINT `buyinfo_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of buyinfo
-- ----------------------------
INSERT INTO `buyinfo` VALUES ('1', '1', '3', '2019-08-14', '2', '2-2018-08-14', 'robot1', '2', '2018-08-14', '烟煤', '原煤', '21', '火车', '23.00', '2.00', '23', '23', '12.00', '121.00', '2018-08-14', '2018-08-14', '21', '', '一票结算', '到厂验收', '23', '1', '1', '1');
INSERT INTO `buyinfo` VALUES ('2', '1', '2', '2018-08-18', '23', '23-2018-08-09', 'robot1', '2', '2018-08-09', '烟煤', '其它', '1', '火车', '1.00', '1.00', '1', '1', '-1.00', '-1.00', '2018-08-14', '2018-08-14', '32', '32', '一票结算', '到厂验收', '23', '1', '1', '1');
INSERT INTO `buyinfo` VALUES ('3', '7', '2', '2018-08-18', '2', '2-2018-08-14', '机器人1号', '2', '2018-08-14', '烟煤', '原煤', '2', '火车', '2.00', '2.00', '2', '2', '-1.00', '-1.00', '2018-08-14', '2018-08-14', '1', '2', '一票结算', '到厂验收', '32', '213', '1', '1');
INSERT INTO `buyinfo` VALUES ('4', '1', '2', '2018-08-18', '怀来', '怀来-2018-08-14', 'robot1', '小红', '2018-08-14', '烟煤', '原煤', '50', '火车', '1000.00', '100.00', '报价在100到1000之间', '现金', '10.00', '10.00', '2018-08-20', '2018-08-25', '小明', '重庆', '一票结算', '到厂验收', '1', '2', '3', '渣渣辉');
INSERT INTO `buyinfo` VALUES ('5', '1', '2', '2018-08-20', '鸿翔大厦', '20180820145239680', '机器人1号', '古天乐', '2018-08-15', '其它', '其它', '233', '其他', '1500.00', '500.00', '吱吱吱吱吱吱吱', '冥币', '50.00', '50.00', '2018-08-21', '2018-08-22', '渣渣辉', '怀来', '其他', '港口第三方验收', '20', '20', '20', '我是陈小春，是兄弟就来砍我');
INSERT INTO `buyinfo` VALUES ('6', '1', '-2', '2018-08-19', '鸿翔', '20180820145513883', '机器人1号', '00', '2018-08-15', '烟煤', '原煤', '0', '火车', '0.00', '0.00', '0000', '00000', '0.00', '0.00', '2018-08-20', '2018-08-21', '000', '00', '一票结算', '到厂验收', '00', '00', '00', '0000');
INSERT INTO `buyinfo` VALUES ('7', '1', '2', '2018-08-14', '鸿翔大厦', '20180820145632227', '机器人1号', '小红', '2018-08-10', '烟煤', '原煤', '233', '火车', '77.00', '77.00', '00000000', '22222222222', '21.00', '121.00', '2018-08-20', '2018-08-13', '小明', '333333', '一票结算', '到厂验收', '21', '125', '45', '4555555555555');
INSERT INTO `buyinfo` VALUES ('8', '1', '3', '2018-08-23', '鸿翔大厦', '20180820145743727', '机器人1号', '小红', '2018-08-18', '烟煤', '原煤', '233', '火车', '774.00', '11.00', '000000000', '00000000', '10.00', '10.00', '2018-08-20', '2018-08-24', '小明', '777', '一票结算', '到厂验收', '1', '2', '3', '0000000000');
INSERT INTO `buyinfo` VALUES ('9', '1', '3', '2018-08-25', '花果山电厂', '20180821140228404', '机器人1号', '唐僧', '2018-08-21', '烟煤', '原煤', '5', '火车', '0.50', '0.00', '最高限价0.5元/卡.吨，无最低限价要求', '', '10.00', '10.00', '2018-09-05', '2018-09-15', '悟空', '花果山', '一票结算', '到厂验收', '5500', '0.5', '5000', '无');
INSERT INTO `buyinfo` VALUES ('10', '1', '2', '2018-08-21', '鸿翔大厦', '20180821140515452', '机器人1号', '小红', '2018-08-14', '烟煤', '原煤', '11', '火车', '1000.00', '741.00', 'gzfdhf', 'gsdfgd', '10.00', '10.00', '2018-08-21', '2018-08-22', '小明', '怀来', '一票结算', '到厂验收', '1', '20', '45', '2333333333');
INSERT INTO `buyinfo` VALUES ('11', '1', '2', '2018-08-21', '鸿翔大厦', '20180821142754841', '机器人1号', '小红', '2018-08-07', '烟煤', '原煤', '233', '火车', '1000.00', '77.00', '21111111111', '12333333', '10.00', '10.00', '2018-08-22', '2018-08-22', '小明', '777', '一票结算', '到厂验收', '1', '57', '000000000', '122222222222');
INSERT INTO `buyinfo` VALUES ('12', '1', '2', '2018-08-23', '鸿翔大厦', '20180821143053338', '机器人1号', '432', '2018-08-07', '烟煤', '原煤', '100', '火车', '1000.00', '100.00', '11111', '11111111', '10.00', '10.00', '2018-05-10', '2018-08-24', '777', '怀来', '一票结算', '到厂验收', '20', '00', '45', '1222222');
INSERT INTO `buyinfo` VALUES ('13', '1', '3', '2018-08-22', '鸿翔大厦', '20180821151134797', '机器人1号', '777', '2018-08-13', '烟煤', '原煤', '77', '火车', '77.00', '77.00', '77', '77', '7.00', '7.00', '2018-08-21', '2018-08-23', '777', '777', '一票结算', '到厂验收', '7', '7', '7', '77');
INSERT INTO `buyinfo` VALUES ('14', '1', '-2', '2018-08-22', 'null', '20180822103143969', '机器人1号', 'null', '2018-08-17', '烟煤', '原煤', '1', '火车', '10.00', '1.00', 'null', 'null', '-1.00', '-1.00', '2018-08-21', '2018-08-22', 'null', 'null', '一票结算', '到厂验收', '1', '1', '1', 'null');
INSERT INTO `buyinfo` VALUES ('15', '1', '2', '2018-08-22', 'null', '20180822111914757', '机器人1号', 'null', '2018-08-08', '烟煤', '原煤', '11', '汽车', '133.00', '1.00', 'null', 'null', '-1.00', '-1.00', '2018-08-20', '2018-08-22', 'null', 'null', '煤款税票', '到厂第三方验收', '1', '1', '1', 'null');
INSERT INTO `buyinfo` VALUES ('16', '1', '2', '2018-08-23', 'null', '20180823091748118', '机器人1号', 'null', '2018-08-08', '烟煤', '原煤', '1111', '船运', '1.00', '10.00', 'null', 'null', '-1.00', '-1.00', '2018-08-21', '2018-08-23', 'null', 'null', '其他', '到厂第三方验收', '1', '1', '1', 'null');
INSERT INTO `buyinfo` VALUES ('17', '1', '2', '2018-08-23', '12', '20180823093634971', '机器人1号', '12', '2018-08-08', '烟煤', '原煤', '123', '其他', '123.00', '2134.00', '213', '312', '123.00', '21.00', '2018-08-21', '2018-08-23', '12', '321', '二票结算', '到厂验收', '12', '23', '12', '21321');
INSERT INTO `buyinfo` VALUES ('18', '1', '2', '2018-08-23', '鸿翔大厦', '20180823094333813', '机器人1号', '小红', '2018-08-13', '烟煤', '原煤', '100', '火车', '1000.00', '11.00', 'zzzz', 'zzzzzzzzzzzz', '10.00', '75.00', '2018-08-23', '2018-08-24', '小明', '怀来', '一票结算', '到厂验收', '1', '3', '4', 'zzzzzzzzz');
INSERT INTO `buyinfo` VALUES ('19', '1', '2', '2018-08-23', '鸿翔大厦', '20180823094505548', '机器人1号', '古天乐', '2018-08-20', '烟煤', '原煤', '50', '汽车', '1000.00', '741.00', 'ddd', 'fffffffff', '50.00', '50.00', '2018-08-13', '2018-08-22', '渣渣辉', '重庆', '二票结算', '到厂验收', '5', '32.15', '24.5', 'gvhbb');
INSERT INTO `buyinfo` VALUES ('20', '1', '2', '2018-08-23', '1', '20180823095940933', '机器人1号', '1', '2018-08-01', '烟煤', '原煤', '1', '火车', '1.00', '1.00', '1', '1', '-1.00', '-1.00', '2018-08-24', '2018-08-25', '1', '1', '一票结算', '到厂验收', '1', '1', '1', '1');
INSERT INTO `buyinfo` VALUES ('21', '1', '3', '2018-08-31', '1', '20180823100237711', '机器人1号', '1', '2018-08-22', '烟煤', '原煤', '1', '火车', '1.00', '1.00', '1', '1', '-1.00', '-1.00', '2018-09-01', '2018-09-04', '1', '1', '一票结算', '到厂验收', '1', '1', '1', '1');
INSERT INTO `buyinfo` VALUES ('22', '1', '3', '2018-08-31', '11', '20180823142143887', '机器人1号', '1', '2018-08-23', '烟煤', '原煤', '1111', '火车', '11.00', '11.00', '111', '1111', '11.00', '11.00', '2018-09-01', '2018-09-04', '1', '111', '一票结算', '到厂验收', '11', '11', '11', '111');
INSERT INTO `buyinfo` VALUES ('23', '1', '3', '2018-08-31', '1123', '20180823143631956', '机器人1号', '321', '2018-08-23', '烟煤', '原煤', '21312', '火车', '321.00', '321.00', '321', '321', '-1.00', '-1.00', '2018-09-01', '2018-09-04', '321', '321', '一票结算', '到厂验收', '321', '321', '321', '321');
INSERT INTO `buyinfo` VALUES ('24', '1', '2', '2018-08-31', '111111', '20180823170617364', '机器人1号', '111', '2018-08-23', '烟煤', '原煤', '1111', '火车', '111.00', '111.00', '111', '111', '1.00', '1.00', '2018-09-01', '2018-09-04', '111111', '11111', '一票结算', '到厂验收', '1', '1', '1', '111');
INSERT INTO `buyinfo` VALUES ('25', '1', '1', '2018-08-31', '1', '20180824105220618', '机器人1号', '1', '2018-08-24', '烟煤', '原煤', '1', '火车', '1.00', '1.00', '1', '1', '-1.00', '-1.00', '2018-09-01', '2018-09-02', '1', '1', '一票结算', '到厂验收', '1', '1', '1', '1');

-- ----------------------------
-- Table structure for buyinfo_users
-- ----------------------------
DROP TABLE IF EXISTS `buyinfo_users`;
CREATE TABLE `buyinfo_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bid` int(11) DEFAULT NULL,
  `uid` int(11) NOT NULL,
  `check_advice` varchar(255) NOT NULL,
  `check_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `bid` (`bid`),
  CONSTRAINT `buyinfo_users_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `users` (`id`),
  CONSTRAINT `buyinfo_users_ibfk_2` FOREIGN KEY (`bid`) REFERENCES `buyinfo` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of buyinfo_users
-- ----------------------------
INSERT INTO `buyinfo_users` VALUES ('1', '1', '1', '--', '2018-08-14 10:52:05');
INSERT INTO `buyinfo_users` VALUES ('2', '2', '1', '--', '2018-08-14 10:52:40');
INSERT INTO `buyinfo_users` VALUES ('3', '3', '7', '--', '2018-08-14 10:53:38');
INSERT INTO `buyinfo_users` VALUES ('4', '1', '2', '确认', '2018-08-14 10:53:56');
INSERT INTO `buyinfo_users` VALUES ('5', '3', '2', '确认通过', '2018-08-14 10:54:02');
INSERT INTO `buyinfo_users` VALUES ('6', '2', '2', '确认通过', '2018-08-14 10:54:09');
INSERT INTO `buyinfo_users` VALUES ('7', '4', '1', '--', '2018-08-14 11:16:32');
INSERT INTO `buyinfo_users` VALUES ('8', '4', '2', '通过', '2018-08-14 11:16:53');
INSERT INTO `buyinfo_users` VALUES ('9', '5', '1', '--', '2018-08-20 14:52:39');
INSERT INTO `buyinfo_users` VALUES ('10', '6', '1', '--', '2018-08-20 14:55:13');
INSERT INTO `buyinfo_users` VALUES ('11', '7', '1', '--', '2018-08-20 14:56:32');
INSERT INTO `buyinfo_users` VALUES ('12', '8', '1', '--', '2018-08-20 14:57:43');
INSERT INTO `buyinfo_users` VALUES ('13', '8', '2', '000000', '2018-08-20 14:58:36');
INSERT INTO `buyinfo_users` VALUES ('14', '5', '2', '0000', '2018-08-20 14:58:43');
INSERT INTO `buyinfo_users` VALUES ('15', '6', '2', '000000000000', '2018-08-20 14:58:49');
INSERT INTO `buyinfo_users` VALUES ('16', '7', '2', '.。。。。。。。。。。。', '2018-08-20 14:58:58');
INSERT INTO `buyinfo_users` VALUES ('17', '9', '1', '--', '2018-08-21 14:02:28');
INSERT INTO `buyinfo_users` VALUES ('18', '9', '2', '', '2018-08-21 14:03:55');
INSERT INTO `buyinfo_users` VALUES ('19', '10', '1', '--', '2018-08-21 14:05:15');
INSERT INTO `buyinfo_users` VALUES ('20', '11', '1', '--', '2018-08-21 14:27:54');
INSERT INTO `buyinfo_users` VALUES ('21', '12', '1', '--', '2018-08-21 14:30:53');
INSERT INTO `buyinfo_users` VALUES ('22', '10', '2', '2018/8/21/14/33', '2018-08-21 14:33:19');
INSERT INTO `buyinfo_users` VALUES ('23', '13', '1', '--', '2018-08-21 15:11:34');
INSERT INTO `buyinfo_users` VALUES ('24', '13', '2', '', '2018-08-21 16:22:06');
INSERT INTO `buyinfo_users` VALUES ('25', '14', '1', '--', '2018-08-22 10:31:43');
INSERT INTO `buyinfo_users` VALUES ('26', '15', '1', '--', '2018-08-22 11:19:14');
INSERT INTO `buyinfo_users` VALUES ('27', '15', '2', 'null', '2018-08-22 11:19:34');
INSERT INTO `buyinfo_users` VALUES ('28', '11', '2', '111', '2018-08-22 15:32:45');
INSERT INTO `buyinfo_users` VALUES ('29', '16', '1', '--', '2018-08-23 09:17:48');
INSERT INTO `buyinfo_users` VALUES ('30', '16', '2', 'null', '2018-08-23 09:18:18');
INSERT INTO `buyinfo_users` VALUES ('31', '17', '1', '--', '2018-08-23 09:36:34');
INSERT INTO `buyinfo_users` VALUES ('32', '17', '2', '213', '2018-08-23 09:36:58');
INSERT INTO `buyinfo_users` VALUES ('33', '12', '2', '审核通过', '2018-08-23 09:41:19');
INSERT INTO `buyinfo_users` VALUES ('34', '18', '1', '--', '2018-08-23 09:43:33');
INSERT INTO `buyinfo_users` VALUES ('35', '19', '1', '--', '2018-08-23 09:45:05');
INSERT INTO `buyinfo_users` VALUES ('36', '19', '2', 'guo', '2018-08-23 09:45:29');
INSERT INTO `buyinfo_users` VALUES ('37', '18', '2', 'zzz', '2018-08-23 09:45:42');
INSERT INTO `buyinfo_users` VALUES ('38', '20', '1', '--', '2018-08-23 09:59:40');
INSERT INTO `buyinfo_users` VALUES ('39', '20', '2', '1', '2018-08-23 10:00:03');
INSERT INTO `buyinfo_users` VALUES ('40', '21', '1', '--', '2018-08-23 10:02:37');
INSERT INTO `buyinfo_users` VALUES ('41', '21', '2', '1', '2018-08-23 10:02:52');
INSERT INTO `buyinfo_users` VALUES ('42', '22', '1', '--', '2018-08-23 14:21:43');
INSERT INTO `buyinfo_users` VALUES ('43', '22', '2', '11', '2018-08-23 14:22:09');
INSERT INTO `buyinfo_users` VALUES ('44', '23', '1', '--', '2018-08-23 14:36:31');
INSERT INTO `buyinfo_users` VALUES ('45', '23', '2', '21312', '2018-08-23 14:36:48');
INSERT INTO `buyinfo_users` VALUES ('46', '24', '1', '--', '2018-08-23 17:06:17');
INSERT INTO `buyinfo_users` VALUES ('47', '24', '2', '1111', '2018-08-23 17:06:32');
INSERT INTO `buyinfo_users` VALUES ('48', '25', '1', '--', '2018-08-24 10:52:20');
INSERT INTO `buyinfo_users` VALUES ('49', '25', '2', '111', '2018-08-24 10:52:37');

-- ----------------------------
-- Table structure for gys
-- ----------------------------
DROP TABLE IF EXISTS `gys`;
CREATE TABLE `gys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `hot` varchar(255) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gys
-- ----------------------------
INSERT INTO `gys` VALUES ('1', '重庆供应商公司1', '4', '4', '4');
INSERT INTO `gys` VALUES ('2', '重庆供应商公司2', '4', '4', '6');
INSERT INTO `gys` VALUES ('11', '重庆供应商公司11', '4', '4', '10');

-- ----------------------------
-- Table structure for mes
-- ----------------------------
DROP TABLE IF EXISTS `mes`;
CREATE TABLE `mes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message` varchar(255) DEFAULT NULL,
  `receieveid` int(255) NOT NULL,
  `sendname` varchar(255) NOT NULL,
  `state` int(11) NOT NULL COMMENT '1表示已读，0表示未读',
  `send_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `receieveid` (`receieveid`),
  CONSTRAINT `mes_ibfk_1` FOREIGN KEY (`receieveid`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mes
-- ----------------------------
INSERT INTO `mes` VALUES ('11', '重庆邮电大学-2018-08-08-驳回', '1', 'robot2', '1', '2018-08-08 21:49:25');
INSERT INTO `mes` VALUES ('13', '重庆邮电大学-2018-08-08-321', '1', 'robot3', '1', '2018-08-09 08:47:02');
INSERT INTO `mes` VALUES ('14', '订单号为<span>重庆邮电大学-2018-08-08</span>的采购信息已经被上级驳回,驳回理由：驳回', '1', 'robot2', '1', '2018-08-09 08:51:18');
INSERT INTO `mes` VALUES ('15', '231', '2', '12', '1', '2018-08-10 10:18:17');
INSERT INTO `mes` VALUES ('17', '订单号为<span>131-2018-08-08</span>的采购信息已经被上级驳回,驳回理由：驳回', '4', '2', '1', '2018-08-10 10:34:48');
INSERT INTO `mes` VALUES ('18', '订单号为<span>123-2023-08-09</span>的采购信息已经被上级驳回,驳回理由：驳回', '4', '2', '1', '2018-08-10 10:34:48');
INSERT INTO `mes` VALUES ('19', '你对订单号为<span>重庆邮电大学-2018-08-08</span>的报价信息已经作废,作废理由：', '4', 'robot3', '1', '2018-08-10 17:04:24');
INSERT INTO `mes` VALUES ('20', '你对订单号为<span>131-2018-08-08</span>的报价信息已经作废,作废理由：货币不足', '4', 'robot3', '1', '2018-08-10 17:10:20');
INSERT INTO `mes` VALUES ('21', '你对订单号为<span>131-2018-08-08</span>的报价信息已经作废,作废理由：驳回', '4', 'robot3', '1', '2018-08-10 18:21:12');
INSERT INTO `mes` VALUES ('22', '你对订单号为<span>131-2018-08-08</span>的报价信息已经作废,作废理由：无', '4', 'robot3', '1', '2018-08-10 18:21:40');
INSERT INTO `mes` VALUES ('23', '你报价的订单号为<span>131-2018-08-08</span>已经中标!!', '4', 'robot3', '1', '2018-08-10 18:21:52');
INSERT INTO `mes` VALUES ('24', '你对订单号为<span>131-2018-08-08</span>的报价信息已经作废,作废理由：驳回', '4', '1', '1', '2018-08-10 20:37:54');
INSERT INTO `mes` VALUES ('25', '你对订单号为<span>131-2018-08-08</span>的报价信息已经作废,<span>保证金已自动返还账户！</span>作废理由：231', '4', 'robot3', '1', '2018-08-10 20:39:29');
INSERT INTO `mes` VALUES ('26', '你对订单号为<span>131-2018-08-08</span>的报价信息已经作废,<span>保证金已自动返还账户！</span>作废理由：ok', '4', 'robot3', '1', '2018-08-10 20:40:52');
INSERT INTO `mes` VALUES ('27', '你报价的订单号为<span>131-2018-08-08</span>已经中标!!', '4', 'robot3', '1', '2018-08-10 20:41:05');
INSERT INTO `mes` VALUES ('28', '你对订单号为<span>131-2018-08-08</span>的报价信息已经作废,<span>保证金已自动返还账户！</span>作废理由：132', '4', 'robot3', '1', '2018-08-10 21:05:29');
INSERT INTO `mes` VALUES ('29', '你对订单号为<span>131-2018-08-08</span>的报价信息已经作废,<span>保证金已自动返还账户！</span>作废理由：321', '4', 'robot3', '1', '2018-08-10 21:07:05');
INSERT INTO `mes` VALUES ('30', '你对订单号为<span>131-2018-08-08</span>的报价信息已经作废,<span>保证金已自动返还账户！</span>作废理由：32', '4', 'robot3', '1', '2018-08-10 21:08:56');
INSERT INTO `mes` VALUES ('31', '你对订单号为<span>131-2018-08-08</span>的报价信息已经作废,<span>保证金已自动返还账户！</span>作废理由：23', '4', 'robot3', '1', '2018-08-10 21:11:07');
INSERT INTO `mes` VALUES ('32', '你对订单号为<span>131-2018-08-08</span>的报价信息已经作废,<span>保证金已自动返还账户！</span>作废理由：23', '4', 'robot3', '1', '2018-08-10 21:11:14');
INSERT INTO `mes` VALUES ('33', '订单号为<span>重庆邮电大学-2018-08-08</span>的采购信息已经被上级驳回,驳回理由：驳回', '1', 'robot2', '1', '2018-08-12 12:35:15');
INSERT INTO `mes` VALUES ('34', '订单号为<span>重庆邮电大学-2018-08-12</span>的采购信息已经被上级驳回,驳回理由：驳回', '1', 'robot3', '1', '2018-08-12 12:37:27');
INSERT INTO `mes` VALUES ('35', '你对订单号为<span>重庆邮电大学-2018-08-12</span>的报价信息已经作废,<span>保证金已自动返还账户！</span>作废理由：驳回', '4', 'robot3', '1', '2018-08-12 13:58:08');
INSERT INTO `mes` VALUES ('36', '你对订单号为<span>重庆邮电大学-2018-08-12</span>的报价信息已经作废,<span>保证金已自动返还账户！</span>作废理由：驳回', '6', 'robot3', '1', '2018-08-12 13:58:08');
INSERT INTO `mes` VALUES ('37', '你报价的订单号为<span>重庆邮电大学-2018-08-08</span>已经中标!!', '4', 'robot3', '1', '2018-08-12 14:11:04');
INSERT INTO `mes` VALUES ('38', '你报价的订单号为<span>重庆邮电大学-2018-08-08</span>已经中标!!', '6', 'robot3', '1', '2018-08-12 14:11:04');
INSERT INTO `mes` VALUES ('39', '你对订单号为<span>重庆邮电大学-2018-08-08</span>的报价信息已经作废,<span>保证金已自动返还账户！</span>作废理由：供应数量不足！', '6', 'robot3', '1', '2018-08-12 14:11:12');
INSERT INTO `mes` VALUES ('40', '你报价的订单号为<span>重庆邮电大学-2018-08-12</span>已经中标!!', '4', 'robot3', '1', '2018-08-12 14:32:27');
INSERT INTO `mes` VALUES ('41', '你报价的订单号为<span>重庆邮电大学-2018-08-12</span>已经中标!!', '6', 'robot3', '1', '2018-08-12 14:32:27');
INSERT INTO `mes` VALUES ('42', '231', '2', '12', '1', '2018-08-12 16:35:46');
INSERT INTO `mes` VALUES ('43', '2312', '2', '12', '1', '2018-08-12 16:35:46');
INSERT INTO `mes` VALUES ('46', '你创建的订单号为<span>3-2018-08-01</span>的采购信息已经被上级驳回,驳回理由：驳回', '1', 'robot2', '1', '2018-08-13 10:50:10');
INSERT INTO `mes` VALUES ('47', '你报价的订单号为<span>重庆邮电大学-2018-08-08</span>已经中标!!', '4', 'robot3', '1', '2018-08-13 11:09:11');
INSERT INTO `mes` VALUES ('48', '你报价的订单号为<span>重庆邮电大学-2018-08-08</span>已经中标!!', '4', 'robot3', '1', '2018-08-13 11:25:19');
INSERT INTO `mes` VALUES ('49', '你报价的订单号为<span>1-2018-08-12</span>已经中标!!', '4', 'robot3', '1', '2018-08-13 11:25:27');
INSERT INTO `mes` VALUES ('50', '你报价的订单号为<span>重庆邮电大学-2018-08-08</span>已经中标!!系统已经自动退还冻结的保证金', '4', 'robot4', '1', '2018-08-13 22:42:51');
INSERT INTO `mes` VALUES ('52', '你报价的订单号为<span>重庆邮电大学-2018-08-08</span>已经中标!!系统已经自动退还冻结的保证金', '4', 'robot4', '1', '2018-08-13 22:43:33');
INSERT INTO `mes` VALUES ('53', '你的订单号为<span>重庆邮电大学-2018-08-08</span>已经有供应商报价成功!!系统已经自动缴纳履约保证金', '1', 'robot4', '1', '2018-08-13 22:43:33');
INSERT INTO `mes` VALUES ('54', '你报价的订单号为<span>重庆邮电大学-2018-08-08</span>已经中标!!系统已经自动退还冻结的保证金', '4', 'robot4', '1', '2018-08-13 22:45:22');
INSERT INTO `mes` VALUES ('55', '你的订单号为<span>重庆邮电大学-2018-08-08</span>已经有供应商报价成功!!系统已经自动缴纳履约保证金', '1', 'robot4', '1', '2018-08-13 22:45:35');
INSERT INTO `mes` VALUES ('56', '你报价的订单号为<span>重庆邮电大学-2018-08-08</span>已经中标!!系统已经自动退还冻结的保证金', '4', 'robot4', '1', '2018-08-13 22:51:39');
INSERT INTO `mes` VALUES ('58', '你报价的订单号为<span>重庆邮电大学-2018-08-08</span>已经中标!!系统已经自动退还冻结的保证金', '4', 'robot4', '1', '2018-08-13 22:55:06');
INSERT INTO `mes` VALUES ('59', '你的订单号为<span>重庆邮电大学-2018-08-08</span>已经有供应商报价成功!!系统已经自动缴纳履约保证金', '1', 'robot4', '1', '2018-08-13 22:55:06');
INSERT INTO `mes` VALUES ('60', '你报价的订单号为<span>重庆邮电大学-2018-08-08</span>已经中标!!系统已经自动退还冻结的保证金', '4', 'robot4', '1', '2018-08-13 22:56:03');
INSERT INTO `mes` VALUES ('61', '你的订单号为<span>重庆邮电大学-2018-08-08</span>已经有供应商报价成功!!系统已经自动缴纳履约保证金', '1', 'robot4', '1', '2018-08-13 22:56:03');
INSERT INTO `mes` VALUES ('62', '你报价的订单号为<span>重庆邮电大学-2018-08-08</span>已经中标!!系统已经自动退还冻结的保证金', '4', 'robot4', '1', '2018-08-13 22:56:17');
INSERT INTO `mes` VALUES ('63', '你的订单号为<span>重庆邮电大学-2018-08-08</span>已经有供应商报价成功!!系统已经自动缴纳履约保证金', '1', 'robot4', '1', '2018-08-13 22:56:17');
INSERT INTO `mes` VALUES ('64', '你报价的订单号为<span>重庆邮电大学-2018-08-08</span>已经中标!!系统已经自动退还冻结的保证金', '4', 'robot4', '1', '2018-08-13 23:00:05');
INSERT INTO `mes` VALUES ('65', '你的订单号为<span>重庆邮电大学-2018-08-08</span>已经有供应商报价成功!!系统已经自动缴纳履约保证金', '1', 'robot4', '1', '2018-08-13 23:00:11');
INSERT INTO `mes` VALUES ('66', '你报价的订单号为<span>重庆邮电大学-2018-08-08</span>已经中标!!系统已经自动退还冻结的保证金', '4', 'robot4', '1', '2018-08-13 23:02:56');
INSERT INTO `mes` VALUES ('67', '你的订单号为<span>重庆邮电大学-2018-08-08</span>已经有供应商报价成功!!系统已经自动缴纳履约保证金', '1', 'robot4', '1', '2018-08-13 23:02:56');
INSERT INTO `mes` VALUES ('68', '你报价的订单号为<span>重庆邮电大学-2018-08-08</span>已经中标!!系统已经自动退还冻结的保证金', '4', 'robot4', '1', '2018-08-13 23:03:33');
INSERT INTO `mes` VALUES ('69', '你的订单号为<span>重庆邮电大学-2018-08-08</span>已经有供应商报价成功!!系统已经自动缴纳履约保证金', '1', 'robot4', '1', '2018-08-13 23:03:33');
INSERT INTO `mes` VALUES ('70', '你报价的订单号为<span>重庆邮电大学-2018-08-08</span>已经中标!!系统已经自动退还冻结的保证金', '4', 'robot4', '1', '2018-08-13 23:04:24');
INSERT INTO `mes` VALUES ('71', '你的订单号为<span>重庆邮电大学-2018-08-08</span>已经有供应商报价成功!!系统已经自动缴纳履约保证金', '1', 'robot4', '1', '2018-08-13 23:04:24');
INSERT INTO `mes` VALUES ('72', '你报价的订单号为<span>重庆邮电大学-2018-08-08</span>已经中标!!系统已经自动退还冻结的保证金', '4', 'robot4', '1', '2018-08-13 23:05:12');
INSERT INTO `mes` VALUES ('73', '你的订单号为<span>重庆邮电大学-2018-08-08</span>已经有供应商报价成功!!系统已经自动缴纳履约保证金', '1', 'robot4', '1', '2018-08-13 23:05:12');
INSERT INTO `mes` VALUES ('74', '你报价的订单号为<span>重庆邮电大学-2018-08-08</span>已经中标!!系统已经自动退还冻结的保证金', '4', 'robot4', '1', '2018-08-13 23:06:58');
INSERT INTO `mes` VALUES ('75', '你的订单号为<span>重庆邮电大学-2018-08-08</span>已经有供应商报价成功!!系统已经自动缴纳履约保证金', '1', 'robot4', '1', '2018-08-13 23:06:58');
INSERT INTO `mes` VALUES ('76', '你报价的订单号为<span>重庆邮电大学-2018-08-08</span>已经中标!!系统已经自动退还冻结的保证金', '4', 'robot4', '1', '2018-08-13 23:07:51');
INSERT INTO `mes` VALUES ('77', '你的订单号为<span>重庆邮电大学-2018-08-08</span>已经有供应商报价成功!!系统已经自动缴纳履约保证金', '1', 'robot4', '1', '2018-08-13 23:07:51');
INSERT INTO `mes` VALUES ('78', '你报价的订单号为<span>重庆邮电大学-2018-08-08</span>已经中标!!系统已经自动退还冻结的保证金', '4', 'robot4', '1', '2018-08-13 23:07:59');
INSERT INTO `mes` VALUES ('79', '你的订单号为<span>重庆邮电大学-2018-08-08</span>已经有供应商报价成功!!系统已经自动缴纳履约保证金', '1', 'robot4', '1', '2018-08-13 23:07:59');
INSERT INTO `mes` VALUES ('80', '你报价的订单号为<span>重庆邮电大学-2018-08-08</span>已经中标!!系统已经自动退还冻结的保证金', '4', 'robot4', '1', '2018-08-13 23:08:24');
INSERT INTO `mes` VALUES ('82', '你报价的订单号为<span>重庆邮电大学-2018-08-08</span>已经中标!!系统已经自动退还冻结的保证金', '4', 'robot3', '1', '2018-08-13 23:22:01');
INSERT INTO `mes` VALUES ('83', '你的订单号为<span>重庆邮电大学-2018-08-08</span>已经有供应商报价成功!!系统已经自动缴纳履约保证金', '1', 'robot3', '1', '2018-08-13 23:22:01');
INSERT INTO `mes` VALUES ('92', '你报价的订单号为<span>重庆邮电大学-2018-08-08</span>已经中标!!系统已经自动退还冻结的保证金', '4', 'robot4', '1', '2018-08-13 23:35:15');
INSERT INTO `mes` VALUES ('98', '你报价的订单号为<span>重庆邮电大学-2018-08-08</span>已经中标!!系统已经自动退还冻结的保证金', '4', 'robot4', '1', '2018-08-13 23:44:52');
INSERT INTO `mes` VALUES ('103', '你报价的订单号为<span>重庆邮电大学-2018-08-08</span>已经中标!!系统已经自动退还冻结的保证金', '4', 'robot4', '1', '2018-08-13 23:57:10');
INSERT INTO `mes` VALUES ('104', '你报价的订单号为<span>131-2018-08-08</span>已经中标!!系统已经自动退还冻结的保证金', '6', 'robot4', '1', '2018-08-13 23:57:10');
INSERT INTO `mes` VALUES ('106', '你报价的订单号为<span>重庆邮电大学-2018-08-08</span>已经中标!!系统已经自动退还冻结的保证金', '4', 'robot4', '1', '2018-08-13 23:58:25');
INSERT INTO `mes` VALUES ('107', '你报价的订单号为<span>131-2018-08-08</span>已经中标!!系统已经自动退还冻结的保证金', '6', 'robot4', '1', '2018-08-13 23:58:25');
INSERT INTO `mes` VALUES ('109', '你对订单号为<span>2-2018-08-14</span>的报价信息已经作废,<span>保证金已自动返还账户！</span>作废理由：', '4', '机器人5号', '1', '2018-08-14 14:21:09');
INSERT INTO `mes` VALUES ('110', '你报价的订单号为<span>2-2018-08-14</span>已经中标!!系统已经自动退还冻结的保证金', '4', '机器人3号', '1', '2018-08-16 11:18:09');
INSERT INTO `mes` VALUES ('111', '你报价的订单号为<span>2-2018-08-14</span>已经中标!!系统已经自动退还冻结的保证金', '6', '机器人3号', '1', '2018-08-16 11:18:09');
INSERT INTO `mes` VALUES ('113', '你创建的订单号为<span>20180820145513883</span>的采购信息已经被上级驳回,驳回理由：2333333333333', '1', '机器人3号', '1', '2018-08-20 15:05:27');
INSERT INTO `mes` VALUES ('114', '你对订单号为<span>2-2018-08-14</span>的报价信息已经作废,<span>保证金已自动返还账户！</span>作废理由：11111111111', '4', '机器人5号', '1', '2018-08-20 15:08:22');
INSERT INTO `mes` VALUES ('115', '你对订单号为<span>20180820145743727</span>的报价信息已经作废,保证金<span>110.0元</span>已自动返还账户！作废理由：2222223', '4', '机器人5号', '1', '2018-08-21 14:48:06');
INSERT INTO `mes` VALUES ('116', '你报价的订单号为<span>2-2018-08-14</span>已经中标!!系统已经自动退还冻结的报价保证金<span>605.0</span>元', '4', '机器人3号', '1', '2018-08-21 17:26:26');
INSERT INTO `mes` VALUES ('117', '你的订单号为<span>2-2018-08-14</span>已经有供应商报价成功!!系统已经自动缴纳履约保证金<span>12705.0</span>元', '1', '机器人3号', '1', '2018-08-21 17:26:26');
INSERT INTO `mes` VALUES ('118', '你创建的订单号为<span>20180822103143969</span>的采购信息已经被上级驳回,驳回理由：null', '1', '机器人2号', '1', '2018-08-22 11:16:43');
INSERT INTO `mes` VALUES ('119', '你对订单号为<span>20180823100237711</span>的报价信息已经作废,保证金<span>0.0元</span>已自动返还账户！作废理由：22', '4', '机器人5号', '1', '2018-08-23 14:27:46');
INSERT INTO `mes` VALUES ('120', '你报价的订单号为<span>23-2018-08-09</span>已经中标!!系统已经自动退还冻结的报价保证金<span>0.0</span>元', '4', '机器人3号', '0', '2018-08-23 16:39:42');
INSERT INTO `mes` VALUES ('121', '你的订单号为<span>23-2018-08-09</span>已经有供应商报价成功!!系统已经自动缴纳履约保证金<span>12705.0</span>元', '1', '机器人3号', '1', '2018-08-23 16:39:42');
INSERT INTO `mes` VALUES ('122', '你对订单号为<span>20180823143631956</span>的报价信息已经作废,保证金<span>0.0元</span>已自动返还账户！作废理由：1321', '4', '机器人3号', '0', '2018-08-23 16:40:17');
INSERT INTO `mes` VALUES ('123', '你报价的订单号为<span>20180823142143887</span>已经中标!!系统已经自动退还冻结的报价保证金<span>1221.0</span>元', '4', '机器人3号', '0', '2018-08-24 09:13:35');
INSERT INTO `mes` VALUES ('124', '你的订单号为<span>20180823142143887</span>已经有供应商报价成功!!系统已经自动缴纳履约保证金<span>13926.0</span>元', '1', '机器人3号', '1', '2018-08-24 09:13:35');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `action` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('电厂创建', '1');
INSERT INTO `role` VALUES ('电厂审核', '2');
INSERT INTO `role` VALUES ('分子公司审批', '3');
INSERT INTO `role` VALUES ('阳光用户', '4');
INSERT INTO `role` VALUES ('分子公司审核', '5');

-- ----------------------------
-- Table structure for supplier
-- ----------------------------
DROP TABLE IF EXISTS `supplier`;
CREATE TABLE `supplier` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `coal_type` varchar(255) DEFAULT NULL,
  `Base_low_calorific_value` varchar(255) DEFAULT NULL,
  `air_dry_basis_moisture` varchar(255) DEFAULT NULL,
  `dry_base_high_calorific_value` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `delivery_method` varchar(255) DEFAULT NULL,
  `trading_locations` varchar(255) DEFAULT NULL,
  `release_end_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of supplier
-- ----------------------------
INSERT INTO `supplier` VALUES ('1', '烟煤', '5500', '10', '5000', '500', '10', '火车', '电厂煤场', '2018-08-09 23:08:59', null);
INSERT INTO `supplier` VALUES ('11', '原煤', '50', '10', '100', '500', '100', '火车', '广州', '2018-08-14 00:00:00', null);
INSERT INTO `supplier` VALUES ('12', '蜂窝煤', '20', '15', '5000', '600', '2000', '飞机', '英国', '2018-08-16 00:00:00', null);
INSERT INTO `supplier` VALUES ('13', '无烟煤', '', '', '', null, null, '', '', null, null);
INSERT INTO `supplier` VALUES ('14', '2', '2', '2', '2', '2', '22', '2', '2', '2018-08-16 00:00:00', null);
INSERT INTO `supplier` VALUES ('15', '褐煤', '30', '20', '1500', '800', '500', '火车', '天津', '2018-08-17 00:00:00', null);
INSERT INTO `supplier` VALUES ('16', '褐煤', '30', '10', '5000', '600', '100', '飞机', '英国', '2018-08-20 00:00:00', null);
INSERT INTO `supplier` VALUES ('17', '烟煤', '5500', '0.2', '5000', '500', '5', '船运', '山西大同', '2018-08-21 00:00:00', null);
INSERT INTO `supplier` VALUES ('18', '烟煤', '1', '1', '1', '1', '1', '1', '1', '2018-08-23 00:00:00', null);
INSERT INTO `supplier` VALUES ('19', '无烟煤', '4424', '234324', '424', '42423424', '2344', '244', '2424', '2018-09-10 00:00:00', null);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `money` decimal(10,2) NOT NULL,
  `freeze_money` decimal(10,2) NOT NULL,
  `freeze_money2` decimal(10,2) NOT NULL,
  `sno` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`),
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`rid`) REFERENCES `role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', '1', '1', '1', '机器人1号', '86074.00', '0.00', '13926.00', '1');
INSERT INTO `users` VALUES ('2', '2', '2', '2', '机器人2号', '100000.00', '0.00', '0.00', '1');
INSERT INTO `users` VALUES ('3', '3', '3', '3', '机器人3号', '100000.00', '0.00', '0.00', '1');
INSERT INTO `users` VALUES ('4', '4', '4', '4', '机器人4号', '94897.00', '5103.00', '0.00', null);
INSERT INTO `users` VALUES ('5', '5', '5', '5', '机器人5号', '100000.00', '0.00', '0.00', '1');
INSERT INTO `users` VALUES ('6', '4', '6', '6', '机器人6号', '100000.00', '0.00', '0.00', null);
INSERT INTO `users` VALUES ('7', '1', '7', '7', '机器人7号', '100000.00', '0.00', '0.00', '2');
INSERT INTO `users` VALUES ('8', '2', '8', '8', '机器人8号', '100000.00', '0.00', '0.00', '2');
INSERT INTO `users` VALUES ('9', '3', '9', '9', '机器人9号', '100000.00', '0.00', '0.00', '2');
INSERT INTO `users` VALUES ('10', '4', '10', '10', '机器人10号', '100000.00', '0.00', '0.00', null);
INSERT INTO `users` VALUES ('11', '5', '11', '11', '机器人11号', '100000.00', '0.00', '0.00', '2');
