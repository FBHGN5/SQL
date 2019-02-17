/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50558
Source Host           : localhost:3306
Source Database       : url

Target Server Type    : MYSQL
Target Server Version : 50558
File Encoding         : 65001

Date: 2019-02-06 10:30:47
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for myblog
-- ----------------------------
DROP TABLE IF EXISTS `myblog`;
CREATE TABLE `myblog` (
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of myblog
-- ----------------------------
INSERT INTO `myblog` VALUES ('分享生活，留住感动', 'http://www.zfkkj.top:8081/', '4', '2018-04-25 17:37:44');
INSERT INTO `myblog` VALUES ('在线购物', 'http://www.zfkkj.top:8080/', '5', '2018-04-25 17:37:46');
INSERT INTO `myblog` VALUES ('Redis在windows下安装过程 - 坚持的孤独 - 博客园', 'http://www.cnblogs.com/M-LittleBird/p/5902850.html', '7', '2018-04-25 17:37:48');
INSERT INTO `myblog` VALUES ('您的访问请求被拒绝 - ITeye技术社区', 'http://michaelye1988.iteye.com/blog/1653599', '9', '2018-04-25 17:37:50');
INSERT INTO `myblog` VALUES ('CSS3 渐变 | 菜鸟教程', 'http://www.runoob.com/css3/css3-gradients.html', '10', '2018-04-25 17:37:51');
INSERT INTO `myblog` VALUES ('Bootstrap 教程 | 菜鸟教程', 'http://www.runoob.com/bootstrap/bootstrap-tutorial.html', '11', '2018-04-25 17:37:52');
INSERT INTO `myblog` VALUES ('ECharts Demo', 'http://echarts.baidu.com/examples/', '12', '2018-04-25 17:37:52');
INSERT INTO `myblog` VALUES ('js数组与字符串的相互转换方法_javascript技巧_脚本之家', 'http://www.jb51.net/article/52038.htm', '13', '2018-04-25 17:37:53');
INSERT INTO `myblog` VALUES ('哔哩哔哩 (゜-゜)つロ 干杯~-bilibili', 'https://www.bilibili.com/', '15', '2018-04-25 17:37:55');
INSERT INTO `myblog` VALUES ('jQuery插件库-收集最全最新最好的jQuery插件', 'http://www.jq22.com/', '16', '2018-04-25 17:38:02');
INSERT INTO `myblog` VALUES ('吾爱破解 - LCG - LSG|安卓破解|病毒分析|破解软件|www.52pojie.cn ', 'https://www.52pojie.cn/', '20', '2018-04-29 10:31:39');
INSERT INTO `myblog` VALUES ('2018全国大学生软件测试大赛', 'http://www.mooctest.org/#/', '24', '2018-05-26 20:48:09');
INSERT INTO `myblog` VALUES ('w3cschool - 学编程，从w3cschool开始', 'https://www.w3cschool.cn/', '25', '2018-06-01 16:39:50');
INSERT INTO `myblog` VALUES ('慕课网-程序员的梦工厂', 'https://www.imooc.com/', '27', '2018-06-13 19:11:18');
INSERT INTO `myblog` VALUES ('Maven引入本地Jar包并打包进War包中 - CSDN博客', 'https://blog.csdn.net/upshi/article/details/69948505', '51', '2018-07-10 22:57:41');
INSERT INTO `myblog` VALUES ('git push代码到远程服务器 - CSDN博客', 'https://blog.csdn.net/sinat_28729797/article/details/48709205', '53', '2018-09-14 23:00:23');
INSERT INTO `myblog` VALUES ('JPA 注解 OneToMany和ManyToOne - a4562116的博客 - CSDN博客', 'https://blog.csdn.net/a4562116/article/details/47087171', '57', '2018-10-24 17:41:42');
INSERT INTO `myblog` VALUES ('h2pl (How_2_Play_Life) · GitHub', 'https://github.com/h2pl', '58', '2018-10-26 02:24:40');
INSERT INTO `myblog` VALUES ('得自由', 'https://devpnss.com/my/index/', '59', '2018-11-06 18:38:55');
INSERT INTO `myblog` VALUES ('java实现短信验证码5分钟有效时间_java_脚本之家', 'https://www.jb51.net/article/143803.htm', '60', '2018-11-12 19:22:14');
INSERT INTO `myblog` VALUES ('员工工资管理系统', 'https://fbhgn5.github.io/Bootstrap-manger/admin.html', '61', '2018-11-27 15:29:23');
INSERT INTO `myblog` VALUES ('如何用Ps将模糊图片变清晰_电脑软件_百度经验', 'https://jingyan.baidu.com/album/ca41422f0b7c8e1eae99edb0.html?picindex=5', '62', '2019-01-14 20:37:48');
INSERT INTO `myblog` VALUES ('微尘导航_综合性精品网址导航大全', 'https://vip.cococo.online/', '63', '2019-01-16 19:46:05');
INSERT INTO `myblog` VALUES ('WIN10怎么彻底关闭win10的更新（家庭版笔记本）_百度经验', 'https://jingyan.baidu.com/article/636f38bb9f7b29d6b84610cf.html', '64', '2019-01-23 15:17:06');

-- ----------------------------
-- Table structure for zhao_pin
-- ----------------------------
DROP TABLE IF EXISTS `zhao_pin`;
CREATE TABLE `zhao_pin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zhao_pin
-- ----------------------------
INSERT INTO `zhao_pin` VALUES ('17', '2018-09-07 22:21:04', '猪八戒网-校园招聘', '	https://campus.zbj.com/');
INSERT INTO `zhao_pin` VALUES ('3', '2018-09-07 22:16:55', '中移物联网有限公司网申系统--招聘详细', 'http://iotchinamobile.zhiye.com/zpdetail/390167969');
INSERT INTO `zhao_pin` VALUES ('8', '2018-09-07 22:16:55', '京东校园招聘首页', 'http://campus.jd.com/home');
INSERT INTO `zhao_pin` VALUES ('9', '2018-09-07 22:16:55', '美团点评招聘官网', 'https://campus.meituan.com/resume-edit');
INSERT INTO `zhao_pin` VALUES ('10', '2018-09-07 22:16:55', '成都尼毕鲁科技股份有限公司 - 加入我们', 'http://campus.tap4fun.com/#/?anchorName=007&sourceToken=&_k=mi6rlf');
INSERT INTO `zhao_pin` VALUES ('11', '2018-09-07 22:16:55', '2019新华三和紫光华智联合招聘', 'http://campus.51job.com/H3C/job.html');
INSERT INTO `zhao_pin` VALUES ('15', '2018-09-07 22:16:55', '智者四海（北京）技术有限公司 - 加入我们', 'https://app.mokahr.com/campus_apply/zhihu');
INSERT INTO `zhao_pin` VALUES ('16', '2018-09-07 22:16:55', '剑指Offer_编程题_牛客网', 'https://www.nowcoder.com/ta/coding-interviews');
