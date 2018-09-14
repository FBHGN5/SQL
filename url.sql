/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50718
Source Host           : localhost:3306
Source Database       : url

Target Server Type    : MYSQL
Target Server Version : 50718
File Encoding         : 65001

Date: 2018-09-14 23:41:26
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
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of myblog
-- ----------------------------
INSERT INTO `myblog` VALUES ('40道Java基础常见面试题及详细答案 - Java团长 - 博客园', 'https://www.cnblogs.com/java1024/p/8926864.html', '2', '2018-04-25 17:37:41');
INSERT INTO `myblog` VALUES ('Java - 网站分类 - 博客园', 'https://www.cnblogs.com/cate/java/', '3', '2018-04-25 17:37:43');
INSERT INTO `myblog` VALUES ('分享生活，留住感动', 'http://www.zfkkj.top:8081/', '4', '2018-04-25 17:37:44');
INSERT INTO `myblog` VALUES ('在线购物', 'http://www.zfkkj.top:8080/', '5', '2018-04-25 17:37:46');
INSERT INTO `myblog` VALUES ('Java面试题全集（上） - ImportNew', 'http://www.importnew.com/22083.html', '6', '2018-04-25 17:37:47');
INSERT INTO `myblog` VALUES ('Redis在windows下安装过程 - 坚持的孤独 - 博客园', 'http://www.cnblogs.com/M-LittleBird/p/5902850.html', '7', '2018-04-25 17:37:48');
INSERT INTO `myblog` VALUES ('Eclipse 安装spring插件spring tool suite(STS)_百度经验', 'https://jingyan.baidu.com/article/219f4bf798e0cfde442d3831.html', '8', '2018-04-25 17:37:49');
INSERT INTO `myblog` VALUES ('您的访问请求被拒绝 - ITeye技术社区', 'http://michaelye1988.iteye.com/blog/1653599', '9', '2018-04-25 17:37:50');
INSERT INTO `myblog` VALUES ('CSS3 渐变 | 菜鸟教程', 'http://www.runoob.com/css3/css3-gradients.html', '10', '2018-04-25 17:37:51');
INSERT INTO `myblog` VALUES ('Bootstrap 教程 | 菜鸟教程', 'http://www.runoob.com/bootstrap/bootstrap-tutorial.html', '11', '2018-04-25 17:37:52');
INSERT INTO `myblog` VALUES ('ECharts Demo', 'http://echarts.baidu.com/examples/', '12', '2018-04-25 17:37:52');
INSERT INTO `myblog` VALUES ('js数组与字符串的相互转换方法_javascript技巧_脚本之家', 'http://www.jb51.net/article/52038.htm', '13', '2018-04-25 17:37:53');
INSERT INTO `myblog` VALUES ('心悦俱乐部DNF游戏专区-腾讯游戏', 'http://xinyue.qq.com/act/pc/a20170410zqsj/index.shtml', '14', '2018-04-25 17:37:54');
INSERT INTO `myblog` VALUES ('哔哩哔哩 (゜-゜)つロ 干杯~-bilibili', 'https://www.bilibili.com/', '15', '2018-04-25 17:37:55');
INSERT INTO `myblog` VALUES ('jQuery插件库-收集最全最新最好的jQuery插件', 'http://www.jq22.com/', '16', '2018-04-25 17:38:02');
INSERT INTO `myblog` VALUES ('.:::::::重庆邮电大学教务在线网站:::::::.', 'http://jwzx.cqupt.edu.cn/', '17', '2018-04-25 17:38:05');
INSERT INTO `myblog` VALUES ('吾爱破解 - LCG - LSG|安卓破解|病毒分析|破解软件|www.52pojie.cn ', 'https://www.52pojie.cn/', '20', '2018-04-29 10:31:39');
INSERT INTO `myblog` VALUES ('Java数据结构和算法（七）——链表 - YSOcean - 博客园', 'https://www.cnblogs.com/ysocean/p/7928988.html', '21', '2018-05-07 15:10:20');
INSERT INTO `myblog` VALUES ('2018全国大学生软件测试大赛', 'http://www.mooctest.org/#/', '24', '2018-05-26 20:48:09');
INSERT INTO `myblog` VALUES ('w3cschool - 学编程，从w3cschool开始', 'https://www.w3cschool.cn/', '25', '2018-06-01 16:39:50');
INSERT INTO `myblog` VALUES ('慕课网-程序员的梦工厂', 'https://www.imooc.com/', '27', '2018-06-13 19:11:18');
INSERT INTO `myblog` VALUES ('首页', 'http://www.zfkkj.top:8082/index', '35', '2018-07-10 14:06:25');
INSERT INTO `myblog` VALUES ('Maven引入本地Jar包并打包进War包中 - CSDN博客', 'https://blog.csdn.net/upshi/article/details/69948505', '51', '2018-07-10 22:57:41');

-- ----------------------------
-- Table structure for zhao_pin
-- ----------------------------
DROP TABLE IF EXISTS `zhao_pin`;
CREATE TABLE `zhao_pin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zhao_pin
-- ----------------------------
INSERT INTO `zhao_pin` VALUES ('2', '猪八戒网-校园招聘', 'https://campus.zbj.com/', '2018-09-07 21:48:19');
INSERT INTO `zhao_pin` VALUES ('3', '中移物联网有限公司网申系统--招聘详细', 'http://iotchinamobile.zhiye.com/zpdetail/390167969', '2018-09-07 22:13:12');
INSERT INTO `zhao_pin` VALUES ('4', '深圳市锐明技术股份有限公司网申系统--首页', 'http://streamax.zhiye.com/', '2018-09-07 22:15:32');
INSERT INTO `zhao_pin` VALUES ('5', '应届校招 | 同程艺龙校园招聘', 'http://promotion.elong.com/index/cn/campus/yjszp.html?type=zpgw', '2018-09-07 22:15:32');
INSERT INTO `zhao_pin` VALUES ('8', '京东校园招聘首页', 'http://campus.jd.com/home', '2018-09-07 22:15:32');
INSERT INTO `zhao_pin` VALUES ('7', '中兴通讯全球招聘门户', 'http://job.zte.com.cn/', '2018-09-07 22:15:32');
INSERT INTO `zhao_pin` VALUES ('9', '美团点评招聘官网', 'https://campus.meituan.com/resume-edit', '2018-09-07 22:15:32');
INSERT INTO `zhao_pin` VALUES ('10', '成都尼毕鲁科技股份有限公司 - 加入我们', 'http://campus.tap4fun.com/#/?anchorName=007&sourceToken=&_k=mi6rlf', '2018-09-07 22:15:32');
INSERT INTO `zhao_pin` VALUES ('11', '2019新华三和紫光华智联合招聘', 'http://campus.51job.com/H3C/job.html', '2018-09-07 22:15:32');
INSERT INTO `zhao_pin` VALUES ('12', '360企业安全集团2019校园招聘-最新校招职位', 'http://chrcmp.chinahr.com/pages/360safe/jobs/#header', '2018-09-07 22:15:32');
INSERT INTO `zhao_pin` VALUES ('13', '', 'http://zhaopin.fiberhome.com/', '2018-09-07 22:15:32');
INSERT INTO `zhao_pin` VALUES ('14', '    顺丰科技', 'http://campus.sf-tech.com.cn/campusRecruitment/Jobinner1.html?p=32207860789', '2018-09-07 22:15:32');
INSERT INTO `zhao_pin` VALUES ('15', '智者四海（北京）技术有限公司 - 加入我们', 'https://app.mokahr.com/campus_apply/zhihu', '2018-09-07 22:15:32');
INSERT INTO `zhao_pin` VALUES ('20', '剑指Offer_编程题_牛客网', 'https://www.nowcoder.com/ta/coding-interviews', '2018-09-07 22:15:40');
INSERT INTO `zhao_pin` VALUES ('18', '', '', '2018-09-07 22:15:05');
