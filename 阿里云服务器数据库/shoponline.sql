/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50558
Source Host           : localhost:3306
Source Database       : shoponline

Target Server Type    : MYSQL
Target Server Version : 50558
File Encoding         : 65001

Date: 2019-02-06 10:29:58
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for buycar
-- ----------------------------
DROP TABLE IF EXISTS `buycar`;
CREATE TABLE `buycar` (
  `img` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `number` int(11) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `kucun` int(12) NOT NULL,
  `hotid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`,`kucun`),
  KEY `number` (`number`),
  KEY `num` (`kucun`),
  CONSTRAINT `num` FOREIGN KEY (`kucun`) REFERENCES `hotsale` (`number`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of buycar
-- ----------------------------
INSERT INTO `buycar` VALUES ('/resources/img/c-g.jpg', '潮牌休闲运动风套头加厚夹克男秋冬季情侣夹棉连帽夹克刺绣宽松款', '745', '123456', '1', '35', '2018-04-08 13:30:05', '84', '3');
INSERT INTO `buycar` VALUES ('/resources/img/c-e.jpg', '2017冬装新款韩版女装宽松显瘦中长款毛呢大衣茧型格子毛呢外套女', '1452', '123456', '1', '36', '2018-04-08 13:30:08', '9822', '5');
INSERT INTO `buycar` VALUES ('/resources/img/c-i.jpg', '正品△韩国代购 早春款气质轻熟风优雅小格纹褶皱收腰风衣长外套', '1451', '123456', '1', '37', '2018-04-08 13:30:12', '100', '7');

-- ----------------------------
-- Table structure for hotsale
-- ----------------------------
DROP TABLE IF EXISTS `hotsale`;
CREATE TABLE `hotsale` (
  `username` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL COMMENT '商品名',
  `price` int(11) NOT NULL DEFAULT '500' COMMENT '商品价格',
  `img` varchar(255) CHARACTER SET latin1 NOT NULL COMMENT '图片地址',
  `id` int(12) NOT NULL AUTO_INCREMENT COMMENT 'id编号',
  `number` int(12) NOT NULL,
  `wimg` varchar(255) NOT NULL COMMENT '展示商品的图片地址',
  `bimg` varchar(255) NOT NULL COMMENT '展示大图放大镜',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `buycarimg` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`,`number`),
  KEY `name` (`name`),
  KEY `number` (`number`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hotsale
-- ----------------------------
INSERT INTO `hotsale` VALUES ('123456', '日系潮人街头工装夹克浮世绘翻领风衣外套港风复古教练夹克男女秋', '555', '/resources/img/c-c.jpg', '1', '5551', '/resources/img/c-cw.jpg', '/resources/img/c.jpg', '2018-03-17 13:20:20', '/resources/img/c-c.jpg');
INSERT INTO `hotsale` VALUES ('123456', '2017秋冬装新款韩版羊绒双面呢子大衣女茧型短款小个子毛呢外套', '600', '/resources/img/c-b.jpg', '2', '33', '/resources/img/c-bw.jpg', '/resources/img/b.jpg', '2018-03-16 16:56:11', '/resources/img/c-b.jpg');
INSERT INTO `hotsale` VALUES ('123456', '潮牌休闲运动风套头加厚夹克男秋冬季情侣夹棉连帽夹克刺绣宽松款', '745', '/resources/img/c-g.jpg', '3', '84', '/resources/img/c-gw.jpg', '/resources/img/g.jpg', '2018-03-14 17:36:44', '/resources/img/c-g.jpg');
INSERT INTO `hotsale` VALUES ('123456', '2017秋冬装新款韩国玫红色翻领喇叭袖阿尔巴卡手工双面羊绒大衣女', '1415', '/resources/img/c-z.jpg', '4', '1094', '/resources/img/c-zw.jpg', '/resources/img/z.jpg', '2018-03-14 17:36:49', '/resources/img/c-z.jpg');
INSERT INTO `hotsale` VALUES ('123456', '2017冬装新款韩版女装宽松显瘦中长款毛呢大衣茧型格子毛呢外套女', '1452', '/resources/img/c-e.jpg', '5', '9822', '/resources/img/c-ew.jpg', '/resources/img/e.jpg', '2018-03-14 17:36:56', '/resources/img/c-e.jpg');
INSERT INTO `hotsale` VALUES ('123456', '2018春秋季男士加厚百搭毛呢连帽外套青年韩版潮流宽松休闲夹克男', '1452', '/resources/img/c-h.jpg', '6', '101', '/resources/img/c-hw.jpg', '/resources/img/h.jpg', '2018-03-14 17:36:59', '/resources/img/c-h.jpg');
INSERT INTO `hotsale` VALUES ('123456', '正品△韩国代购 早春款气质轻熟风优雅小格纹褶皱收腰风衣长外套', '1451', '/resources/img/c-i.jpg', '7', '100', '/resources/img/c-iw.jpg', '/resources/img/i.jpg', '2018-03-14 17:37:03', '/resources/img/c-i.jpg');
INSERT INTO `hotsale` VALUES ('123456', '登竣 现代简约电脑椅家用椅子书房桌椅办公椅学习椅游戏椅电竞椅', '333', '/resources/img/c-j.jpg', '8', '101', '/resources/img/c-jw.jpg', '/resources/img/j.jpg', '2018-03-14 17:37:06', '/resources/img/c-j.jpg');
INSERT INTO `hotsale` VALUES ('123456', '从你的全世界路过张嘉佳电影原著青春励志文学都市励志小说畅销书籍', '200', '/resources/img/c-k.jpg', '9', '101', '/resources/img/1.jpg', '/resources/img/111.jpg', '2018-03-14 17:37:09', '/resources/img/c-k.jpg');
INSERT INTO `hotsale` VALUES ('123456', '文艺复古套装女秋装特大码宽松布艺印花七分袖衬衫休闲九分裤两件', '500', '/resources/img/c-x.jpg', '10', '111', '/resources/img/c-xw.jpg', '/resources/img/x.jpg', '2018-03-14 17:37:12', '/resources/img/c-x.jpg');
INSERT INTO `hotsale` VALUES ('123456', 'adidasi', '255', '/resources/img/1959640656.jpg', '11', '255', '/resources/img/1959640656.jpg', '/resources/img/1959640656.jpg', '2018-03-24 16:27:27', '/resources/img/1959640656.jpg');
INSERT INTO `hotsale` VALUES ('1', '扫黑', '1', '/resources/img/1 .png', '12', '1', '/resources/img/1 .png', '/resources/img/1 .png', '2018-10-18 21:49:52', '/resources/img/7.png');

-- ----------------------------
-- Table structure for orderlist
-- ----------------------------
DROP TABLE IF EXISTS `orderlist`;
CREATE TABLE `orderlist` (
  `img` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL COMMENT '注意这个是商品总价格！！！',
  `username` varchar(255) NOT NULL,
  `number` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `creat_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `hotid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orderlist
-- ----------------------------
INSERT INTO `orderlist` VALUES ('1', '小大叔', '1', '1', '1', '1', '2018-03-20 22:31:13', '1');
INSERT INTO `orderlist` VALUES ('1', '小二', '1', '1', '11', '111', '2018-03-20 22:32:47', '11');
INSERT INTO `orderlist` VALUES ('2', '小大', '2', '1', '22', '2', '2018-03-20 22:33:21', '22');
INSERT INTO `orderlist` VALUES ('22', '小打算打打', '22', '1', '22', '22', '2018-03-20 22:33:24', '222');
INSERT INTO `orderlist` VALUES ('/resources/img/c-b.jpg', '2017秋冬装新款韩版羊绒双面呢子大衣女茧型短款小个子毛呢外套', '600', '123456', '1', '33', '2018-04-08 13:31:20', '2');
INSERT INTO `orderlist` VALUES ('/resources/img/c-c.jpg', '日系潮人街头工装夹克浮世绘翻领风衣外套港风复古教练夹克男女秋', '555', '123456', '1', '34', '2018-04-08 13:31:20', '1');

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT '3',
  `price` int(11) DEFAULT '3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('1', '12', '292');
INSERT INTO `product` VALUES ('2', '22', '302');
INSERT INTO `product` VALUES ('3', '32', '312');
INSERT INTO `product` VALUES ('4', '224', '322');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `username` varchar(10) NOT NULL DEFAULT '123456' COMMENT 'y用户名',
  `password` varchar(30) NOT NULL DEFAULT '123456' COMMENT '密码',
  `state` int(255) NOT NULL DEFAULT '0' COMMENT '用户状态：0正常,1封号,2管理员',
  `phone` varchar(255) NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '账户创建时间',
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '2', '0', '1', '2018-03-23 18:42:29');
INSERT INTO `user` VALUES ('10', '123', '0', '957', '2018-03-24 12:07:45');
INSERT INTO `user` VALUES ('11', '11', '0', '5', '2018-03-23 19:15:20');
INSERT INTO `user` VALUES ('111', '1', '0', '1512223045228', '2018-03-23 19:32:12');
INSERT INTO `user` VALUES ('11111', '1', '0', '111', '2018-03-24 11:48:47');
INSERT INTO `user` VALUES ('123', '123', '0', '123', '2018-03-23 19:36:20');
INSERT INTO `user` VALUES ('1231', '21312', '0', '6', '2018-03-23 19:15:21');
INSERT INTO `user` VALUES ('1234', '123', '0', '12344444', '2018-03-23 20:31:06');
INSERT INTO `user` VALUES ('12344', '1', '0', '15123045228', '2018-03-23 19:25:34');
INSERT INTO `user` VALUES ('123456', '123456', '2', '2', '2018-04-05 18:24:53');
INSERT INTO `user` VALUES ('dd', '1', '0', '3', '2018-03-23 19:15:17');
INSERT INTO `user` VALUES ('zj2l', '123', '0', '4', '2018-03-23 19:15:18');
