/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50718
Source Host           : localhost:3306
Source Database       : seckill

Target Server Type    : MYSQL
Target Server Version : 50718
File Encoding         : 65001

Date: 2018-09-14 23:43:23
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for seckill
-- ----------------------------
DROP TABLE IF EXISTS `seckill`;
CREATE TABLE `seckill` (
  `seckill_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '商品库存id',
  `name` varchar(120) NOT NULL COMMENT '商品名称',
  `number` int(11) NOT NULL COMMENT '库存数量',
  `start_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '秒杀开始时间',
  `end_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '秒杀结束时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建秒杀时间',
  `id` int(11) DEFAULT NULL,
  PRIMARY KEY (`seckill_id`),
  KEY `idx_start_time` (`start_time`),
  KEY `idx_end_time` (`end_time`),
  KEY `idx_create_time` (`create_time`)
) ENGINE=InnoDB AUTO_INCREMENT=1010 DEFAULT CHARSET=utf8 COMMENT='秒杀库存表';

-- ----------------------------
-- Records of seckill
-- ----------------------------
INSERT INTO `seckill` VALUES ('1000', '1800元秒杀ipad2', '187', '2018-01-27 00:00:00', '2018-02-04 00:00:00', '2018-01-24 12:08:51', '1');
INSERT INTO `seckill` VALUES ('1001', '300元秒杀小米5', '300', '2018-01-29 00:00:00', '2018-03-11 00:00:00', '2018-01-24 12:08:51', '1');
INSERT INTO `seckill` VALUES ('1002', '200元秒杀红米', '181', '2018-01-29 00:00:00', '2018-02-02 00:00:00', '2018-01-24 12:08:51', '1');
INSERT INTO `seckill` VALUES ('1003', '1000元秒杀iphone8', '396', '2018-01-29 00:00:00', '2018-02-04 00:00:00', '2018-01-24 12:08:51', '1');
INSERT INTO `seckill` VALUES ('1004', '1元秒杀大众汽车', '5000', '2018-01-20 20:59:55', '2018-01-28 21:00:00', '2018-01-24 21:00:03', '1');
INSERT INTO `seckill` VALUES ('1006', '1000元秒杀iphone6', '100', '2018-01-27 00:00:00', '2016-02-07 00:00:00', '2018-01-24 21:03:38', '1');
INSERT INTO `seckill` VALUES ('1007', '800元秒杀ipad', '200', '2018-02-04 00:00:00', '2018-01-27 00:00:00', '2018-01-24 21:03:38', '1');
INSERT INTO `seckill` VALUES ('1008', '6600元秒杀mac book pro', '300', '2018-01-31 00:00:00', '2018-02-04 00:00:00', '2018-01-24 21:03:38', '1');
INSERT INTO `seckill` VALUES ('1009', '7000元秒杀iMac', '400', '2018-01-04 00:00:00', '2018-01-26 00:00:00', '2018-01-24 21:03:38', '1');

-- ----------------------------
-- Table structure for success_killed
-- ----------------------------
DROP TABLE IF EXISTS `success_killed`;
CREATE TABLE `success_killed` (
  `seckill_id` bigint(20) NOT NULL COMMENT '秒杀商品id',
  `user_phone` bigint(20) NOT NULL COMMENT '用户手机号',
  `state` tinyint(4) NOT NULL DEFAULT '-1' COMMENT '状态表示：-1 无效 0 成功 1 已付款',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`seckill_id`,`user_phone`),
  KEY `idx_create_time` (`create_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='秒杀成功明细表';

-- ----------------------------
-- Records of success_killed
-- ----------------------------
INSERT INTO `success_killed` VALUES ('1000', '15123045228', '0', '2018-01-27 20:30:34');
INSERT INTO `success_killed` VALUES ('1004', '13368364394', '0', '2018-01-27 20:33:44');
