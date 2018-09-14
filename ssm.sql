/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50718
Source Host           : localhost:3306
Source Database       : ssm

Target Server Type    : MYSQL
Target Server Version : 50718
File Encoding         : 65001

Date: 2018-07-16 22:50:26
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for black_list
-- ----------------------------
DROP TABLE IF EXISTS `black_list`;
CREATE TABLE `black_list` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `black_user_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of black_list
-- ----------------------------

-- ----------------------------
-- Table structure for commodity_classification
-- ----------------------------
DROP TABLE IF EXISTS `commodity_classification`;
CREATE TABLE `commodity_classification` (
  `Classify_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Good_kinds_Name` varchar(50) DEFAULT '',
  `Upper_ID` int(11) DEFAULT '0',
  `Upper_Name` varchar(50) DEFAULT '',
  `Description` varchar(100) DEFAULT '',
  PRIMARY KEY (`Classify_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of commodity_classification
-- ----------------------------
INSERT INTO `commodity_classification` VALUES ('1', 'Furniture', '0', '', 'TopFloor');
INSERT INTO `commodity_classification` VALUES ('2', 'HomeTextiles', '0', '', 'TopFloor');
INSERT INTO `commodity_classification` VALUES ('3', 'HomeFurniture', '1', 'Furniture', 'MiddleLayer:Furniture>HomeFurniture');
INSERT INTO `commodity_classification` VALUES ('15', 'High-lowBed', '3', 'HomeFurniture', 'GroundFloor:Furniture>HomeFurniture>High-lowBed');
INSERT INTO `commodity_classification` VALUES ('16', 'LeatherBed', '3', 'HomeFurniture', 'GroundFloor:Furniture>HomeFurniture>LeatherBed');

-- ----------------------------
-- Table structure for commodity_list
-- ----------------------------
DROP TABLE IF EXISTS `commodity_list`;
CREATE TABLE `commodity_list` (
  `Good_ID` varchar(50) NOT NULL DEFAULT '',
  `Classify_ID` int(11) DEFAULT '0',
  `Classify_Description` varchar(150) DEFAULT '',
  `Good_Brand` varchar(50) DEFAULT '',
  `Good_Name` varchar(200) DEFAULT '',
  `Good_Price` varchar(50) DEFAULT '',
  `Store_Add` varchar(100) DEFAULT '',
  `Monthsale_Num` int(11) DEFAULT '0',
  `Color_Classification` varchar(500) DEFAULT '',
  `Comment_Num` int(11) DEFAULT '0',
  `Good_AfterRate` varchar(50) DEFAULT '',
  `IndustryCompare` varchar(50) DEFAULT '',
  `Good_Link` varchar(100) DEFAULT '',
  `Store_Name` varchar(100) DEFAULT '',
  `Store_Link` varchar(100) DEFAULT '',
  `Good_Hot` int(11) DEFAULT '0',
  `Store_Age` varchar(50) DEFAULT '',
  `Seller_Credit` varchar(50) DEFAULT '',
  `Ishas_License` int(11) DEFAULT '0',
  `DescriptionSituation` double DEFAULT '0',
  `ServiceAttitude` double DEFAULT '0',
  `LogisticsService` double DEFAULT '0',
  `Size` varchar(200) DEFAULT '',
  PRIMARY KEY (`Good_ID`),
  KEY `FK_Commodity_list_Commodity_classification` (`Classify_ID`),
  KEY `classify_index` (`Classify_Description`),
  CONSTRAINT `commodity_list_ibfk_1` FOREIGN KEY (`Classify_ID`) REFERENCES `commodity_classification` (`Classify_ID`),
  CONSTRAINT `commodity_list_ibfk_2` FOREIGN KEY (`Classify_ID`) REFERENCES `commodity_classification` (`Classify_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of commodity_list
-- ----------------------------
INSERT INTO `commodity_list` VALUES ('tb10025584930', '15', 'GroundFloor:Furniture>HomeFurniture>High-lowBed', '一品木舍', '广州榉木家具-进口榉木-双层床-上下床-子母床-高低床-', '2600.00 - 3228.00', '广东省广州市', '0', '上1.0+下1.2+无抽屉、上1.2+下1.5+无抽屉、上1.0+下1.2+抽屉、1.2+下1.5+有抽屉、', '0', '0.00%', '-4.25%', 'http://item.taobao.com/item.html?id=10025584930', '一品木舍家具', 'https://shop65772677.taobao.com', '22', '无', '2个蓝钻', '0', '3.6', '4.3', '4.3', '无');
INSERT INTO `commodity_list` VALUES ('tb10025819846', '16', 'LeatherBed', '无', '商品床-进口', '', '', '0', '', '0', '', '', '', '', '', '0', '', '', '0', '0', '0', '0', '');
INSERT INTO `commodity_list` VALUES ('tb10085076695', '16', 'LeatherBed', '无', '商品床', '', '', '0', '', '0', '', '', '', '', '', '0', '', '', '0', '0', '0', '0', '');
INSERT INTO `commodity_list` VALUES ('tb10085076696', '15', 'GroundFloor:Furniture>HomeFurniture>High-lowBed', '无', '特价促销实木上下床松木床双层床员工床宿舍床公寓床子母床上下铺', '750.00 - 1200.00', '北京北京市', '0', '上下90*1.9、上90 下1.2、上90 下1.5、上1.2下1.5、上下1.2、', '0', '0.00%', '-4.23%', 'http://item.taobao.com/item.html?id=10085076696', '欣隆家具', 'https://xinlongjiaj.taobao.com', '1', '无', '3个红心', '0', '4.8', '4.8', '5', '无');
INSERT INTO `commodity_list` VALUES ('tb10165274856', '15', 'GroundFloor:Furniture>HomeFurniture>TVCabinet', '红甲天', '可伸缩液晶电视机柜 dsg电视柜组合现代 时尚简约机顶盒架视听柜', '50.00-159.00', '江苏省徐州市', '14', '白色800*300、黑胡桃色800*300、白枫木色800*300、黑色800*300、白色800*400、黑胡桃色800*400、白枫木色800*400、黑色800*400、白色1000*400、黑胡桃色1000*400、白枫木色1000*400、黑色1000*400、白色1200*400、黑胡桃色1200*400、白枫木色1200*400、黑色1200*400、浅胡桃色800*300、浅胡桃色800*400、浅胡桃色1000*400、浅胡桃色1200*400、', '172', '无', '无', 'https://detail.tmall.com/item.htm?id=10165274856', '红甲天旗舰店', 'https://hongjiatian.tmall.com', '3933', '天猫7年店', '无', '1', '4.7', '4.7', '4.6', '无');
INSERT INTO `commodity_list` VALUES ('tb10187076912', '16', 'GroundFloor:Furniture>HomeFurniture>LeatherBed', '泊宁馨品', '真皮床双人床1.8米简约时尚软床田园床1米8皮艺床榻榻米婚床N42', '2660.00 - 2720.00', '广东省佛山市', '1', '真皮、', '1', '0.00%', '-4.25%', 'http://item.taobao.com/item.html?id=10187076912', '百合家具店', 'https://baihejiajudian.taobao.com', '47', '无', '3个蓝钻', '0', '4.9', '4.9', '4.9', '无');
INSERT INTO `commodity_list` VALUES ('tb10341993306', '1', 'GroundFloor:Furniture>HomeFurniture>TeaTable', '5i57.CN/吾爱吾妻', '高档 布艺绣花桌旗 时尚简约现代 欧式田园茶几桌布-电视柜盖布', '11.00', '北京北京市', '1461', '6732#浅粉（首图款）、6850#、729新#（推荐款）、1011新款#绣花、511#暗红', '9866', '5.10%', '+0.76%', 'http://item.taobao.com/item.html?id=10341993306', '吾爱吾妻品牌家居 金牌卖家', 'https://5i57.taobao.com', '48846', '无', '1个黄冠', '0', '4.8', '4.8', '4.8', '无');
INSERT INTO `commodity_list` VALUES ('tb10345192027', '15', 'GroundFloor:Furniture>HomeFurniture>Sofa', '居色', '布艺沙发北欧宜家亚麻棉麻布艺沙发组合可拆洗简约现代日式贵妃', '3780.00', '广东省佛山市', '8', '组合1（4米长，1米8宽）、组合2（3米3长，1米8宽）、三位+贵妃+双护手双位、双位2米1、', '62', '12.35%', '+8.10%', 'http://item.taobao.com/item.html?id=10345192027', '居色家具', 'https://jusejiaju.taobao.com', '6362', '无', '4个蓝钻', '0', '4.9', '4.9', '4.8', '无');
INSERT INTO `commodity_list` VALUES ('tb10368549832', '16', 'GroundFloor:Furniture>HomeFurniture>Table', '鸿兴', '特价 实木餐桌 宜家桌子 折叠餐桌 小户型伸缩 餐桌组合橡木桌椅', '148.00 - 1270.00', '广东省广州市', '21', '长方形餐桌115#春茶色（无椅、长方形餐桌115#棕色（无椅、椭圆餐台112#春茶色（无椅、椭圆餐桌112#棕色（无椅、餐椅012#春茶色、餐椅012#棕色、椭圆形餐桌春茶色（一桌四椅）、椭圆形餐桌棕色（一桌四椅）、长方形餐桌春茶色（一桌四椅）、长方形餐桌棕色（一桌四椅）、', '59', '0.00%', '-4.25%', 'http://item.taobao.com/item.html?id=10368549832', '顺联家私', 'https://shunlian.taobao.com', '15893', '无', '4个蓝钻', '0', '4.9', '4.8', '4.9', '无');
INSERT INTO `commodity_list` VALUES ('tb10415641616', '1', 'Furniture', '无', '测试内连接', '', '', '0', '', '0', '', '', '', '', '', '0', '', '', '0', '0', '0', '0', '');
INSERT INTO `commodity_list` VALUES ('tb10469849352', '15', 'GroundFloor:Furniture>HomeFurniture>Desk', '无', '包邮现货简约现代小户型宜家折叠伸缩餐桌餐桌书桌特价板式餐台', '499.00 - 580.00', '北京北京市', '0', '小 珍珠白现生产、小 白枫色【现生产】、大 红樱桃色【现货】、大 珍珠白现生产、小 黑橡色【现货】、大 胡桃木色【现货】、小 浅胡桃木色现生产、小 红樱桃色【现货】、大 浮雕白色【现货】、大 浅胡桃木色现生产、小 胡桃木色 现生产、小 浮雕白色【现货】、小 波士顿黑胡桃木色现生产、大 白枫色【现货】、大 波士顿黑胡桃木色现生产、大 黑橡色【现货】、', '3', '16.67%', '+12.42%', 'http://item.taobao.com/item.html?id=10469849352', '简约时尚家居家具', 'https://knsyg.taobao.com', '53651', '无', '2个蓝冠', '0', '4.6', '4.6', '4.5', '无');
INSERT INTO `commodity_list` VALUES ('tb10470693068', '16', 'GroundFloor:Furniture>HomeFurniture>LeatherBed', '泊宁馨品', '时尚榻榻米真皮床皮艺双人床1.8米田园床软床软体床婚床头层牛皮', '2793.60', '广东省佛山市', '0', '头层牛皮、', '0', '0.00%', '-4.25%', 'http://item.taobao.com/item.html?id=10470693068', '百合家具店', 'https://baihejiajudian.taobao.com', '4', '无', '3个蓝钻', '0', '4.9', '4.9', '4.9', '无');
INSERT INTO `commodity_list` VALUES ('tb10569001077', '15', 'GroundFloor:Furniture>HomeFurniture>ShoeBox', '皇海家具', '定制 特价鞋柜实木简约现代烤漆换鞋凳门厅玄关柜简易多层超薄鞋架包邮', '319.00', '河北省', '4', '两抽屉印花、一抽屉印花、一抽屉无花、两抽屉无花、', '90', '7.04%', '+2.80%', 'http://item.taobao.com/item.html?id=10569001077', '河北金河家具基地', 'https://jinhejiaju.taobao.com', '3648', '无', '2个蓝冠', '0', '4.8', '4.8', '4.7', '无');
INSERT INTO `commodity_list` VALUES ('tb10574008722', '15', 'GroundFloor:Furniture>HomeFurniture>ComputerDesk', '三升', '烤漆彩绘电脑桌台式家用台式机特价简易简约书桌办公桌写字台桌子', '98.00', '江苏省其他/other', '27', '水墨荷竹（1.2米）、格林童话（1米长）、静心（1米长）、爱心树（1.2米长）、玫瑰之约（1.2米长）、荷塘美景（1米长）、爱心树（1米长）、白紫荆花（1.2米长）、黑紫荆花（1米长）、白紫荆花（1米长）、紫水晶（1米长）、幽香清远（1米长）、亚光白紫荆花（90厘米长）、黑紫荆花（1.2米长）、夏日沙滩（1米长）、玫瑰之约（1米长）、蒲公英（1米长）、动感蘑菇（1.2米长）、山水如画（1.2米长）、青花瓷（1.2米长）、品味人生（1.2米长）、', '2446', '4.65%', '+0.40%', 'http://item.taobao.com/item.html?id=10574008722', '三升电脑桌批发', 'https://sanson.taobao.com', '34281', '无', '4个蓝冠', '0', '4.6', '4.7', '4.6', '无');
INSERT INTO `commodity_list` VALUES ('tb10584007989', '16', 'GroundFloor:Furniture>HomeFurniture>ShoeBox', '那帕', '威廉时期康弗尔小镇家具 美式乡村实木家具 全实木三门鞋柜K801B', '3126.00', '广东省东莞市', '0', '金丝楸木色、胡桃色、', '7', '4.35%', '+0.12%', 'http://item.taobao.com/item.html?id=10584007989', '那帕家居', 'https://k1860.taobao.com', '191', '无', '1个蓝冠', '0', '4.9', '4.9', '4.9', '无');
INSERT INTO `commodity_list` VALUES ('tb10614456461', '3', 'HomeFurniture', '无', '家居', '', '', '0', '', '0', '', '', '', '', '', '0', '', '', '0', '0', '0', '0', '');

-- ----------------------------
-- Table structure for gag
-- ----------------------------
DROP TABLE IF EXISTS `gag`;
CREATE TABLE `gag` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `gag_time` date DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `gag_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gag
-- ----------------------------
INSERT INTO `gag` VALUES ('1', '2017-05-05 16:08:47', '2017-05-05', '5');

-- ----------------------------
-- Table structure for score
-- ----------------------------
DROP TABLE IF EXISTS `score`;
CREATE TABLE `score` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `change_type` varchar(255) DEFAULT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `score` int(11) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `score_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of score
-- ----------------------------
INSERT INTO `score` VALUES ('1', 'value1', '2017-05-05 20:59:46', '1', '1');
INSERT INTO `score` VALUES ('2', 'value2', '2017-03-31 17:03:30', '2', null);
INSERT INTO `score` VALUES ('3', 'value3', '2017-03-31 17:05:06', '3', null);
INSERT INTO `score` VALUES ('4', '充钱', '2017-03-31 17:05:59', '10', null);
INSERT INTO `score` VALUES ('5', '充钱', '2017-03-31 17:06:10', '10', null);
INSERT INTO `score` VALUES ('6', '充钱钱', '2017-03-31 17:06:24', '10', null);
INSERT INTO `score` VALUES ('7', '充钱钱', '2017-03-31 17:30:24', '10', null);
INSERT INTO `score` VALUES ('8', '充钱钱', '2017-03-31 17:31:25', '10', null);
INSERT INTO `score` VALUES ('9', '充钱钱', '2017-03-31 18:40:58', '10', null);
INSERT INTO `score` VALUES ('10', '充钱钱', '2017-03-31 19:22:04', '10', null);
INSERT INTO `score` VALUES ('11', '玩游戏', '2017-03-31 20:01:34', '10', null);
INSERT INTO `score` VALUES ('12', '玩游戏', '2017-03-31 20:13:45', '10', null);
INSERT INTO `score` VALUES ('13', '玩游戏', '2017-03-31 20:13:53', '10', null);
INSERT INTO `score` VALUES ('14', '玩游戏', '2017-03-31 20:17:17', '10', null);
INSERT INTO `score` VALUES ('15', '玩游戏', '2017-03-31 20:36:52', '10', null);
INSERT INTO `score` VALUES ('16', '玩游戏', '2017-03-31 20:36:56', '10', null);
INSERT INTO `score` VALUES ('17', '充钱钱', '2017-04-01 16:32:09', '10', '1');
INSERT INTO `score` VALUES ('18', 'bb', '2017-04-02 13:39:29', '20', '1');
INSERT INTO `score` VALUES ('19', 'bb', '2017-04-02 13:41:15', '20', '1');
INSERT INTO `score` VALUES ('20', 'bb', '2017-04-02 13:41:28', '20', '1');
INSERT INTO `score` VALUES ('21', 'bb', '2017-04-03 23:22:19', '20', '1');
INSERT INTO `score` VALUES ('22', 'bb', '2017-04-03 23:23:11', '20', '1');
INSERT INTO `score` VALUES ('23', 'bb', '2017-04-03 23:24:07', '20', '2');
INSERT INTO `score` VALUES ('24', 'bb', '2017-04-03 23:26:04', '20', '2');
INSERT INTO `score` VALUES ('25', 'bb', '2017-04-03 23:28:02', '20', '2');
INSERT INTO `score` VALUES ('26', 'bb', '2017-04-03 23:30:09', '20', '2');
INSERT INTO `score` VALUES ('27', 'bb', '2017-04-03 23:31:23', '20', '2');
INSERT INTO `score` VALUES ('28', 'bb', '2017-04-03 23:32:45', '20', '2');
INSERT INTO `score` VALUES ('29', 'bb', '2017-04-03 23:34:38', '20', '3');
INSERT INTO `score` VALUES ('31', 'bb', '2017-04-03 23:42:00', '20', '3');
INSERT INTO `score` VALUES ('35', 'bb', '2017-04-03 23:56:32', '20', '3');
INSERT INTO `score` VALUES ('38', 'bb', '2017-04-05 15:26:36', '20', '2');
INSERT INTO `score` VALUES ('39', 'bb', '2017-04-05 15:45:05', '20', '3');
INSERT INTO `score` VALUES ('41', 'bb', '2017-04-05 15:57:53', '20', '3');
INSERT INTO `score` VALUES ('44', 'bb', '2017-04-05 16:22:22', '20', '5');
INSERT INTO `score` VALUES ('46', 'bb', '2017-04-05 19:53:17', '20', '3');
INSERT INTO `score` VALUES ('49', 'bb', '2017-04-05 20:04:26', '20', '3');
INSERT INTO `score` VALUES ('50', 'bb', '2017-04-05 20:06:38', '20', '3');
INSERT INTO `score` VALUES ('53', 'bb', '2017-04-05 20:32:37', '20', '3');
INSERT INTO `score` VALUES ('55', 'bb', '2017-04-05 20:41:33', '20', '3');
INSERT INTO `score` VALUES ('56', 'bb', '2017-04-05 20:46:05', '20', '3');
INSERT INTO `score` VALUES ('57', 'bb', '2017-04-05 20:48:31', '20', '3');
INSERT INTO `score` VALUES ('58', 'bb', '2017-04-05 20:51:45', '20', '6');
INSERT INTO `score` VALUES ('59', 'bb', '2017-04-05 20:54:09', '20', '6');
INSERT INTO `score` VALUES ('60', 'bb', '2017-04-05 20:54:56', '20', '6');
INSERT INTO `score` VALUES ('61', '充钱钱', '2017-04-06 19:33:10', '10', '1');
INSERT INTO `score` VALUES ('62', 'bb', '2017-04-08 17:17:53', '20', '3');
INSERT INTO `score` VALUES ('63', 'bb', '2017-04-08 17:18:18', '20', '5');
INSERT INTO `score` VALUES ('64', 'bb', '2017-04-08 17:19:49', '20', '5');
INSERT INTO `score` VALUES ('65', '吃饭', '2017-05-04 21:37:40', '10', '1');
INSERT INTO `score` VALUES ('66', '吃饭', '2017-05-04 21:54:48', '10', '1');
INSERT INTO `score` VALUES ('67', '喝茶', '2017-05-04 21:54:48', '10', '1');
INSERT INTO `score` VALUES ('68', '吃饭', '2017-05-05 10:23:01', '10', '1');
INSERT INTO `score` VALUES ('69', '喝茶', '2017-05-05 10:23:01', '10', '1');
INSERT INTO `score` VALUES ('70', '喝茶', '2017-05-05 10:23:01', '10', '1');
INSERT INTO `score` VALUES ('71', '吃饭', '2017-05-05 10:39:58', '10', '1');
INSERT INTO `score` VALUES ('72', '吃饭', '2017-05-05 19:05:38', '10', '1');
INSERT INTO `score` VALUES ('73', '喝茶', '2017-05-05 19:05:38', '10', '1');
INSERT INTO `score` VALUES ('74', '喝茶', '2017-05-05 19:05:38', '10', '1');
INSERT INTO `score` VALUES ('75', '喝茶', '2017-05-10 22:27:30', '10', '1');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `account` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `pay_money` bigint(20) NOT NULL DEFAULT '0',
  `country` varchar(255) DEFAULT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `score` bigint(20) NOT NULL DEFAULT '0',
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '89564', null, '0', null, '2017-04-01 16:25:36', '80', null, null, '广东省', null, null);
INSERT INTO `user` VALUES ('2', '123456', null, '0', 'China', '2017-04-02 11:37:09', '140', null, null, '北京市', null, null);
INSERT INTO `user` VALUES ('3', '489486', null, '0', '中国', '2017-04-02 11:38:56', '200', null, null, '北京市', null, null);
INSERT INTO `user` VALUES ('5', '18945198', null, '0', '中国', '2017-04-02 17:24:49', '140', null, null, '广东省', null, null);
INSERT INTO `user` VALUES ('6', '489156', null, '0', null, '2017-04-02 21:07:16', '120', null, null, '广东省', null, null);
