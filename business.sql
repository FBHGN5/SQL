/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50718
Source Host           : localhost:3306
Source Database       : business

Target Server Type    : MYSQL
Target Server Version : 50718
File Encoding         : 65001

Date: 2018-09-14 23:43:43
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for customer
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `money` double DEFAULT NULL,
  `phone` varchar(255) NOT NULL DEFAULT '123123123',
  `birthday` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `my_index` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of customer
-- ----------------------------
INSERT INTO `customer` VALUES ('5', '八戒222', '123', '222', '15123', '1996-12-29');
INSERT INTO `customer` VALUES ('6', '桔', '1', '8888888', '14123123123', '1996-12-29');
INSERT INTO `customer` VALUES ('8', 'robot5', '1', '120', '222', '1996-12-29');
INSERT INTO `customer` VALUES ('9', 'robot6', '1', '1', '222', '1996-12-29');
INSERT INTO `customer` VALUES ('10', 'robot7', '1', '1', '123123123', '1996-12-29');
INSERT INTO `customer` VALUES ('11', 'robot8', '1', '111', '123123123', '1996-12-29');
INSERT INTO `customer` VALUES ('17', 'robot9', '123', '222', '123123123', '1996-12-29');
INSERT INTO `customer` VALUES ('20', '唐僧', '123456', '11111', '152', '1996-12-29');
INSERT INTO `customer` VALUES ('21', '悟空', '1234567', '1', '1', '1996-12-29');
INSERT INTO `customer` VALUES ('25', '西海龙王', '123', '11111', '2131231', '1996-12-29');
INSERT INTO `customer` VALUES ('26', '唐僧', '123', '11111', '2131231', '1996-12-29');
INSERT INTO `customer` VALUES ('27', '唐僧', '123', '11111', '2131231', '1996-12-29');
INSERT INTO `customer` VALUES ('28', '唐僧', '123', '11111', '2131231', '1996-12-29');
INSERT INTO `customer` VALUES ('29', '唐僧', '123', '11111', '2131231', '1996-12-29');
INSERT INTO `customer` VALUES ('31', '唐僧', '123', '11111', '2131231', '1996-12-29');
INSERT INTO `customer` VALUES ('32', '唐僧', '123', '11111', '2131231', '1996-12-29');
INSERT INTO `customer` VALUES ('33', '唐僧', '123', '11111', '2131231', '1996-12-29');
INSERT INTO `customer` VALUES ('34', '唐僧', '123', '11111', '2131231', '1996-12-29');
INSERT INTO `customer` VALUES ('35', '唐僧', '123', '11111', '2131231', '1996-12-29');
INSERT INTO `customer` VALUES ('37', 'zjl', '123', '10000', '1111111', '1996-12-29');
INSERT INTO `customer` VALUES ('38', '中山', '123', '10000', '213', '1996-12-29');
INSERT INTO `customer` VALUES ('39', '唐僧', '123', '11111', '2131231', '2018-07-31');
INSERT INTO `customer` VALUES ('40', '唐僧', '123', '11111', '2131231', '2018-07-31');
INSERT INTO `customer` VALUES ('41', '唐僧2', '123', '11111', '2131231', '1996-12-29');
INSERT INTO `customer` VALUES ('42', '唐僧2', '123', '11111', '2131231', '1997-09-27');
INSERT INTO `customer` VALUES ('43', '唐僧2', '123', '11111', '2131231', '1996-12-29');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `snu` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `stime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `cid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`cid`) REFERENCES `customer` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('1', '103', '2.00', '2018-07-20 09:00:31', '5');
INSERT INTO `orders` VALUES ('2', '2222', '222.00', '2018-07-19 15:49:48', '5');
INSERT INTO `orders` VALUES ('3', '103315', '2.00', '2018-07-19 14:18:33', '5');
INSERT INTO `orders` VALUES ('4', '20180701', '222.00', '2018-07-20 09:00:37', '6');
INSERT INTO `orders` VALUES ('5', '103315', '2.00', '2018-07-19 15:49:52', '6');
INSERT INTO `orders` VALUES ('6', '2222', '222.00', '2018-07-19 14:18:35', '6');
INSERT INTO `orders` VALUES ('7', '20187301420', '5000.00', '2018-07-30 15:17:00', '5');
INSERT INTO `orders` VALUES ('8', '20187301420', '15000.00', '2018-07-30 15:17:02', '5');
INSERT INTO `orders` VALUES ('9', '20187301420', '15000.00', '2018-07-30 15:17:04', '5');
INSERT INTO `orders` VALUES ('10', '20187301420', '15000.00', '2018-07-30 15:17:06', '5');
INSERT INTO `orders` VALUES ('11', '20187301420', '15000.00', '2018-07-30 15:17:07', '5');
INSERT INTO `orders` VALUES ('12', '20187301420', '15000.00', '2018-07-30 15:17:09', '5');
INSERT INTO `orders` VALUES ('13', '20180730143913280', '15000.00', '2018-07-30 15:17:12', '5');
INSERT INTO `orders` VALUES ('14', '20180730155025399', '1111.00', '2018-07-30 15:51:11', '6');
INSERT INTO `orders` VALUES ('15', '20180730155147029', '1111.00', '2018-07-30 15:52:18', '6');
INSERT INTO `orders` VALUES ('16', '20180730161747422', '1.00', '2018-07-30 16:17:47', '8');
INSERT INTO `orders` VALUES ('17', '20180730161800233', '1.00', '2018-07-30 16:18:00', '8');
INSERT INTO `orders` VALUES ('18', '20180730162714794', '15000.00', '2018-07-30 16:27:14', '5');
INSERT INTO `orders` VALUES ('19', '20180730162838885', '1111111.00', '2018-07-30 16:28:38', '6');
INSERT INTO `orders` VALUES ('20', '1111', '11.11', '2018-08-05 10:55:15', '5');
INSERT INTO `orders` VALUES ('21', '1111', '11.11', null, '5');

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pname` varchar(255) DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES ('1', '日系潮人街头工装夹克浮世绘翻领风衣外套港风复古教练夹克男女秋', '1', '22');
INSERT INTO `products` VALUES ('2', '2017秋冬装新款韩版羊绒双面呢子大衣女茧型短款小个子毛呢外套', '22', '22');
INSERT INTO `products` VALUES ('3', '潮牌休闲运动风套头加厚夹克男秋冬季情侣夹棉连帽夹克刺绣宽松款', '1', '22');
INSERT INTO `products` VALUES ('4', '2017秋冬装新款韩国玫红色翻领喇叭袖阿尔巴卡手工双面羊绒大衣女', '22', '22');
INSERT INTO `products` VALUES ('5', '2017冬装新款韩版女装宽松显瘦中长款毛呢大衣茧型格子毛呢外套女', '1', '22');
INSERT INTO `products` VALUES ('6', '2018春秋季男士加厚百搭毛呢连帽外套青年韩版潮流宽松休闲夹克男', '22', '22');
INSERT INTO `products` VALUES ('7', '皮鞋', '1111', '111');
INSERT INTO `products` VALUES ('8', '大米', '123', null);
INSERT INTO `products` VALUES ('9', '水', '312', null);
INSERT INTO `products` VALUES ('10', '笔记本', '3123', null);
INSERT INTO `products` VALUES ('11', '火腿肠', '2312', null);
INSERT INTO `products` VALUES ('12', '味精', '111', null);
INSERT INTO `products` VALUES ('13', '菜刀', '1111', null);
INSERT INTO `products` VALUES ('14', '钻石', '1111111', null);
INSERT INTO `products` VALUES ('15', '瓜子', '5', null);

-- ----------------------------
-- Table structure for pro_ord
-- ----------------------------
DROP TABLE IF EXISTS `pro_ord`;
CREATE TABLE `pro_ord` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL,
  `oid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `oid` (`oid`),
  CONSTRAINT `pro_ord_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `products` (`id`),
  CONSTRAINT `pro_ord_ibfk_2` FOREIGN KEY (`oid`) REFERENCES `orders` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pro_ord
-- ----------------------------
INSERT INTO `pro_ord` VALUES ('1', '1', '1');
INSERT INTO `pro_ord` VALUES ('2', '3', '2');
INSERT INTO `pro_ord` VALUES ('3', '5', '3');
INSERT INTO `pro_ord` VALUES ('4', '2', '4');
INSERT INTO `pro_ord` VALUES ('5', '4', '5');
INSERT INTO `pro_ord` VALUES ('6', '6', '6');
INSERT INTO `pro_ord` VALUES ('7', '7', '1');
INSERT INTO `pro_ord` VALUES ('8', '7', '1');
INSERT INTO `pro_ord` VALUES ('9', '7', '1');
INSERT INTO `pro_ord` VALUES ('10', '7', '1');
INSERT INTO `pro_ord` VALUES ('11', '7', '14');
INSERT INTO `pro_ord` VALUES ('12', '7', '15');
INSERT INTO `pro_ord` VALUES ('13', '5', '16');
INSERT INTO `pro_ord` VALUES ('14', '5', '17');
INSERT INTO `pro_ord` VALUES ('15', '7', '1');
INSERT INTO `pro_ord` VALUES ('16', '14', '19');
