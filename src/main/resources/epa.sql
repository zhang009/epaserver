/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : epa

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2020-05-07 10:04:01
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `chapter`
-- ----------------------------
DROP TABLE IF EXISTS `chapter`;
CREATE TABLE `chapter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(300) DEFAULT NULL,
  `courseId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `courseId` (`courseId`),
  CONSTRAINT `chapter_ibfk_1` FOREIGN KEY (`courseId`) REFERENCES `course` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chapter
-- ----------------------------
INSERT INTO `chapter` VALUES ('1', 'C数据类型', '6');
INSERT INTO `chapter` VALUES ('2', '简单的算术运算和表达式', '6');
INSERT INTO `chapter` VALUES ('3', '键盘输入和屏幕输出', '6');
INSERT INTO `chapter` VALUES ('4', '选择控制结构', '6');
INSERT INTO `chapter` VALUES ('5', '循环控制结构', '6');
INSERT INTO `chapter` VALUES ('6', '函数', '6');
INSERT INTO `chapter` VALUES ('7', '数组', '6');
INSERT INTO `chapter` VALUES ('8', '指针', '6');
INSERT INTO `chapter` VALUES ('9', '字符串', '6');
INSERT INTO `chapter` VALUES ('10', '指针和数组', '6');
INSERT INTO `chapter` VALUES ('11', '结构体和共用体', '6');
INSERT INTO `chapter` VALUES ('12', '文件操作', '6');
INSERT INTO `chapter` VALUES ('17', '第一章', '1');

-- ----------------------------
-- Table structure for `class`
-- ----------------------------
DROP TABLE IF EXISTS `class`;
CREATE TABLE `class` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '班级名称',
  `grade` char(5) DEFAULT NULL,
  `majorId` int(11) DEFAULT NULL COMMENT '专业id',
  `schoolId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of class
-- ----------------------------
INSERT INTO `class` VALUES ('1', 'RB软工卓越161', '2016', '2', '1');
INSERT INTO `class` VALUES ('2', 'RB软工卓越181', '2018', '2', '1');
INSERT INTO `class` VALUES ('3', 'RB软工卓越171', '2017', '2', '1');
INSERT INTO `class` VALUES ('4', 'RB软工卓越191', '2019', '2', '1');
INSERT INTO `class` VALUES ('5', 'RB软工网161', '2016', '1', '1');
INSERT INTO `class` VALUES ('6', 'RB软工网162', '2016', '1', '1');
INSERT INTO `class` VALUES ('7', 'RB软工网171', '2017', '1', '1');
INSERT INTO `class` VALUES ('8', 'RB软工网172', '2017', '1', '1');
INSERT INTO `class` VALUES ('9', 'RB软工网181', '2018', '1', '1');
INSERT INTO `class` VALUES ('10', 'RB软工网181', '2018', '1', '1');
INSERT INTO `class` VALUES ('11', 'RB软工网191', '2019', '1', '1');
INSERT INTO `class` VALUES ('12', 'RB软工网191', '2019', '1', '1');
INSERT INTO `class` VALUES ('14', 'RB软工互161', '2016', '3', '1');
INSERT INTO `class` VALUES ('15', 'RB软工互162', '2016', '3', '1');
INSERT INTO `class` VALUES ('16', 'RB软工互163', '2016', '3', '1');
INSERT INTO `class` VALUES ('17', 'RB软工互164', '2016', '3', '1');
INSERT INTO `class` VALUES ('18', 'RB软工互171', '2017', '3', '1');
INSERT INTO `class` VALUES ('19', 'RB软工互172', '2017', '3', '1');
INSERT INTO `class` VALUES ('20', 'RB软工互173', '2017', '3', '1');
INSERT INTO `class` VALUES ('21', 'RB软工互174', '2017', '3', '1');
INSERT INTO `class` VALUES ('22', 'RB软工互181', '2018', '3', '1');
INSERT INTO `class` VALUES ('23', 'RB软工互182', '2018', '3', '1');
INSERT INTO `class` VALUES ('24', 'RB软工互183', '2018', '3', '1');
INSERT INTO `class` VALUES ('25', 'RB软工互184', '2018', '3', '1');
INSERT INTO `class` VALUES ('26', 'RB软工互191', '2019', '3', '1');
INSERT INTO `class` VALUES ('27', 'RB软工互192', '2019', '3', '1');
INSERT INTO `class` VALUES ('28', 'RB软工互193', '2019', '3', '1');
INSERT INTO `class` VALUES ('29', 'RB软工互194', '2019', '3', '1');
INSERT INTO `class` VALUES ('30', 'RB软工金161', '2016', '4', '1');
INSERT INTO `class` VALUES ('31', 'RB软工金162', '2016', '4', '1');
INSERT INTO `class` VALUES ('32', 'RB软工金163', '2016', '4', '1');
INSERT INTO `class` VALUES ('33', 'RB软工金164', '2016', '4', '1');
INSERT INTO `class` VALUES ('34', 'RB软工金171', '2017', '4', '1');
INSERT INTO `class` VALUES ('35', 'RB软工金172', '2017', '4', '1');
INSERT INTO `class` VALUES ('36', 'RB软工金173', '2017', '4', '1');
INSERT INTO `class` VALUES ('37', 'RB软工金174', '2017', '4', '1');
INSERT INTO `class` VALUES ('38', 'RB软工金181', '2018', '4', '1');
INSERT INTO `class` VALUES ('39', 'RB软工金182', '2018', '4', '1');
INSERT INTO `class` VALUES ('40', 'RB软工金183', '2018', '4', '1');
INSERT INTO `class` VALUES ('41', 'RB软工金184', '2018', '4', '1');
INSERT INTO `class` VALUES ('42', 'RB软工金191', '2019', '4', '1');
INSERT INTO `class` VALUES ('43', 'RB软工金192', '2019', '4', '1');
INSERT INTO `class` VALUES ('44', 'RB软工金193', '2019', '4', '1');
INSERT INTO `class` VALUES ('45', 'RB软工金194', '2019', '4', '1');
INSERT INTO `class` VALUES ('46', 'RB软工移171', '2016', '5', '1');
INSERT INTO `class` VALUES ('47', 'RB软工移172', '2017', '5', '1');
INSERT INTO `class` VALUES ('48', 'RB软工移173', '2017', '5', '1');
INSERT INTO `class` VALUES ('49', 'RB软工移174', '2017', '5', '1');
INSERT INTO `class` VALUES ('50', 'RB软工移181', '2018', '5', '1');
INSERT INTO `class` VALUES ('51', 'RB软工移182', '2018', '5', '1');
INSERT INTO `class` VALUES ('52', 'RB软工移183', '2018', '5', '1');
INSERT INTO `class` VALUES ('53', 'RB软工移184', '2018', '5', '1');
INSERT INTO `class` VALUES ('54', 'RB软工移191', '2019', '5', '1');
INSERT INTO `class` VALUES ('55', 'RB软工移192', '2019', '5', '1');
INSERT INTO `class` VALUES ('56', 'RB软工移193', '2019', '5', '1');
INSERT INTO `class` VALUES ('57', 'RB软工移194', '2019', '5', '1');
INSERT INTO `class` VALUES ('58', 'RB软工数171', '2017', '6', '1');
INSERT INTO `class` VALUES ('59', 'RB软工数172', '2017', '6', '1');
INSERT INTO `class` VALUES ('60', 'RB软工数173', '2017', '6', '1');
INSERT INTO `class` VALUES ('61', 'RB软工数174', '2017', '6', '1');
INSERT INTO `class` VALUES ('62', 'RB软工数181', '2018', '6', '1');
INSERT INTO `class` VALUES ('63', 'RB软工数182', '2018', '6', '1');
INSERT INTO `class` VALUES ('64', 'RB软工数183', '2018', '6', '1');
INSERT INTO `class` VALUES ('65', 'RB软工数184', '2018', '6', '1');
INSERT INTO `class` VALUES ('66', 'RB软工数185', '2018', '6', '1');
INSERT INTO `class` VALUES ('67', 'RB软工数186', '2018', '6', '1');
INSERT INTO `class` VALUES ('68', 'RB软工数191', '2019', '6', '1');
INSERT INTO `class` VALUES ('69', 'RB软工数192', '2019', '6', '1');
INSERT INTO `class` VALUES ('70', 'RB软工数193', '2019', '6', '1');
INSERT INTO `class` VALUES ('71', 'RB软工数194', '2019', '6', '1');
INSERT INTO `class` VALUES ('72', 'RB软工数195', '2019', '6', '1');
INSERT INTO `class` VALUES ('73', 'RB软工数196', '2019', '6', '1');

-- ----------------------------
-- Table structure for `class_course`
-- ----------------------------
DROP TABLE IF EXISTS `class_course`;
CREATE TABLE `class_course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `courseId` int(11) NOT NULL,
  `classId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `class_course_ibfk_1` (`courseId`),
  KEY `class_course_ibfk_2` (`classId`),
  CONSTRAINT `class_course_ibfk_1` FOREIGN KEY (`courseId`) REFERENCES `course` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `class_course_ibfk_2` FOREIGN KEY (`classId`) REFERENCES `class` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of class_course
-- ----------------------------
INSERT INTO `class_course` VALUES ('3', '1', '5');
INSERT INTO `class_course` VALUES ('4', '2', '5');
INSERT INTO `class_course` VALUES ('5', '3', '5');
INSERT INTO `class_course` VALUES ('6', '4', '5');
INSERT INTO `class_course` VALUES ('7', '5', '6');
INSERT INTO `class_course` VALUES ('8', '6', '11');

-- ----------------------------
-- Table structure for `course`
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `term` varchar(200) DEFAULT NULL,
  `classId` int(11) DEFAULT NULL COMMENT '班级id',
  `majorId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `course_ibfk_1` (`classId`),
  CONSTRAINT `course_ibfk_1` FOREIGN KEY (`classId`) REFERENCES `class` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('1', 'RB概率论与数理统计', '2018-2019学年第二学期', '5', null);
INSERT INTO `course` VALUES ('2', '编译原理', '2018-2019学年第二学期', '5', null);
INSERT INTO `course` VALUES ('3', '局域网组网技术', '2018-2019学年第二学期', '5', null);
INSERT INTO `course` VALUES ('4', '网络安全技术', '2018-2019学年第二学期', '5', null);
INSERT INTO `course` VALUES ('5', '网络安全技术', '2018-2019学年第二学期', '6', null);
INSERT INTO `course` VALUES ('6', 'C语言程序设计', '2018-2019学年第一学期', '11', null);

-- ----------------------------
-- Table structure for `department`
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) DEFAULT NULL COMMENT '部门名称',
  `parentId` int(11) DEFAULT NULL,
  `depPath` varchar(255) DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT '1',
  `isParent` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of department
-- ----------------------------
INSERT INTO `department` VALUES ('1', '中原工学院', '-1', '.1', '1', '1');
INSERT INTO `department` VALUES ('2', '软件学院、数据科学与技术系', '1', '.1.2', '1', '0');
INSERT INTO `department` VALUES ('3', '计算机学院', '1', '.1.3', '1', '0');
INSERT INTO `department` VALUES ('4', '纺织学院', '1', '.1.4', '1', '0');
INSERT INTO `department` VALUES ('5', '外国语学院', '1', '.1.5', '1', '0');
INSERT INTO `department` VALUES ('6', '能源与环境学院', '1', '.1.6', '1', '0');
INSERT INTO `department` VALUES ('7', '机电学院', '1', '.1.7', '1', '0');
INSERT INTO `department` VALUES ('8', '电子信息学院', '1', '.1.8', '1', '0');
INSERT INTO `department` VALUES ('9', '材料与化工学院', '1', '.1.9', '1', '0');
INSERT INTO `department` VALUES ('10', '建筑工程学院', '1', '.1.10', '1', '0');
INSERT INTO `department` VALUES ('11', '服装学院', '1', '.1.11', '1', '0');
INSERT INTO `department` VALUES ('12', '艺术设计学院', '1', '.1.12', '1', '0');
INSERT INTO `department` VALUES ('13', '经济管理学院', '1', '.1.13', '1', '0');
INSERT INTO `department` VALUES ('14', '新闻与传播学院', '1', '.1.14', '1', '0');
INSERT INTO `department` VALUES ('15', '法学院、知识产权学院', '1', '.1.15', '1', '0');
INSERT INTO `department` VALUES ('16', '理学院', '1', '.1.16', '1', '0');
INSERT INTO `department` VALUES ('17', '马克思主义学院', '1', '.1.17', '1', '0');
INSERT INTO `department` VALUES ('18', '国际教育学院', '1', '.1.18', '1', '0');
INSERT INTO `department` VALUES ('19', '亚太国际学院', '1', '.1.19', '1', '0');
INSERT INTO `department` VALUES ('20', '中原彼得堡航空学院', '1', '.1.20', '1', '0');
INSERT INTO `department` VALUES ('21', '测试3', '1', '.1.21', '1', '0');

-- ----------------------------
-- Table structure for `fb_question`
-- ----------------------------
DROP TABLE IF EXISTS `fb_question`;
CREATE TABLE `fb_question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `knowIds` varchar(255) DEFAULT NULL,
  `stem` text NOT NULL,
  `answer` varchar(255) NOT NULL,
  `analysis` text,
  `teacherId` int(11) DEFAULT NULL,
  `checkTeacherId` int(11) DEFAULT NULL,
  `courseId` int(11) DEFAULT NULL,
  `chapterId` int(11) DEFAULT NULL,
  `dot` tinyint(4) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0代表未审核，1代表已通过，2代表拒绝',
  `updateTime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `chapterId` (`chapterId`),
  CONSTRAINT `fb_question_ibfk_1` FOREIGN KEY (`chapterId`) REFERENCES `chapter` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fb_question
-- ----------------------------
INSERT INTO `fb_question` VALUES ('1', '25', '结构化程序的三种基本结构为_____________、______________、_____________。', '顺序、选择、循环', '', '3', '3', '6', '4', '1', '0', null);
INSERT INTO `fb_question` VALUES ('2', '42', 'C语言程序中对文本文件的存取是以____________为单位进行的。', '字节', '', '3', '3', '6', '12', '1', '0', null);
INSERT INTO `fb_question` VALUES ('3', '17', '设x为int型变量，请写出一个关系表达式________ ，用以判断x同时为3和7的倍数时，关系表达式的值为真。', 'x%3==0&&x%7==0', '', '3', '3', '6', '2', '1', '0', null);

-- ----------------------------
-- Table structure for `joblevel`
-- ----------------------------
DROP TABLE IF EXISTS `joblevel`;
CREATE TABLE `joblevel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) DEFAULT NULL COMMENT '职称名称',
  `titleLevel` enum('正高级','副高级','中级','初级','员级') DEFAULT NULL,
  `createDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `enabled` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of joblevel
-- ----------------------------
INSERT INTO `joblevel` VALUES ('9', '教授', '正高级', '2020-01-11 00:00:00', '1');
INSERT INTO `joblevel` VALUES ('10', '副教授', '副高级', '2020-01-11 21:19:20', '1');
INSERT INTO `joblevel` VALUES ('12', '助教', '初级', '2020-01-11 21:35:39', '1');
INSERT INTO `joblevel` VALUES ('13', '讲师', '中级', '2020-01-11 00:00:00', '1');

-- ----------------------------
-- Table structure for `knows`
-- ----------------------------
DROP TABLE IF EXISTS `knows`;
CREATE TABLE `knows` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(300) DEFAULT NULL,
  `chapterId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `chapterId` (`chapterId`),
  CONSTRAINT `knows_ibfk_1` FOREIGN KEY (`chapterId`) REFERENCES `chapter` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of knows
-- ----------------------------
INSERT INTO `knows` VALUES ('14', '第一个知识点', '17');
INSERT INTO `knows` VALUES ('15', '常量与变量', '1');
INSERT INTO `knows` VALUES ('16', '变量的赋值和赋值运算符', '1');
INSERT INTO `knows` VALUES ('17', 'C运算符合表达式', '2');
INSERT INTO `knows` VALUES ('18', '宏常量', '2');
INSERT INTO `knows` VALUES ('19', '自动类型转换与强制类型转换运算符', '2');
INSERT INTO `knows` VALUES ('20', '数据的格式化屏幕输入输出', '3');
INSERT INTO `knows` VALUES ('21', '关系运算符与关系表达式', '4');
INSERT INTO `knows` VALUES ('22', '条件运算符和条件表达式', '4');
INSERT INTO `knows` VALUES ('23', '计数控制的循环', '5');
INSERT INTO `knows` VALUES ('24', '嵌套循环', '5');
INSERT INTO `knows` VALUES ('25', '条件控制循环', '5');
INSERT INTO `knows` VALUES ('26', '函数的定义', '6');
INSERT INTO `knows` VALUES ('27', '函数的递归调用和递归函数', '6');
INSERT INTO `knows` VALUES ('28', '变量的作用域和存储类型', '6');
INSERT INTO `knows` VALUES ('29', '模块化程序设计', '6');
INSERT INTO `knows` VALUES ('30', '一维数组的定义和初始化', '7');
INSERT INTO `knows` VALUES ('31', '二维数组的定义和初始化', '7');
INSERT INTO `knows` VALUES ('32', '排序和查找', '7');
INSERT INTO `knows` VALUES ('33', '变量的内存地址', '8');
INSERT INTO `knows` VALUES ('34', '指针变量的定义和初始化', '8');
INSERT INTO `knows` VALUES ('35', '字符串常量', '9');
INSERT INTO `knows` VALUES ('36', '字符串存储', '9');
INSERT INTO `knows` VALUES ('37', '字符指针', '9');
INSERT INTO `knows` VALUES ('38', '字符串处理函数', '9');
INSERT INTO `knows` VALUES ('39', '指针和一维数组的关系', '10');
INSERT INTO `knows` VALUES ('40', '指针和二维数组的关系', '10');
INSERT INTO `knows` VALUES ('41', '结构体定义和使用', '11');
INSERT INTO `knows` VALUES ('42', '文件的存储', '12');

-- ----------------------------
-- Table structure for `major`
-- ----------------------------
DROP TABLE IF EXISTS `major`;
CREATE TABLE `major` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `schoolId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of major
-- ----------------------------
INSERT INTO `major` VALUES ('1', '软件工程（网络软件开发方向）', '1');
INSERT INTO `major` VALUES ('2', '软件工程卓越班', '1');
INSERT INTO `major` VALUES ('3', '软件工程（互联网应用开发与优化方向）', '1');
INSERT INTO `major` VALUES ('4', '软件工程（金融软件开发方向）', '1');
INSERT INTO `major` VALUES ('5', '软件工程（移动互联网方向）', '1');
INSERT INTO `major` VALUES ('6', '软件工程（大数据方向）', '1');
INSERT INTO `major` VALUES ('7', '软件技术', '1');
INSERT INTO `major` VALUES ('8', '计算机应用技术（软件测试与维护方向）', '1');
INSERT INTO `major` VALUES ('9', '计算机信息管理（互联网营销方向）', '1');
INSERT INTO `major` VALUES ('10', '软件技术（移动应用开发方向）', '1');
INSERT INTO `major` VALUES ('12', '软件技术（软件测试技术方向）', '1');

-- ----------------------------
-- Table structure for `mc_option`
-- ----------------------------
DROP TABLE IF EXISTS `mc_option`;
CREATE TABLE `mc_option` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mcId` int(11) NOT NULL,
  `optionNum` int(11) NOT NULL COMMENT '选项排序号',
  `optionContent` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mc_option
-- ----------------------------
INSERT INTO `mc_option` VALUES ('1', '1', '1', '可以嵌套定义,不可以嵌套调用 ');
INSERT INTO `mc_option` VALUES ('2', '1', '2', '不可以嵌套定义,可以嵌套调用 ');
INSERT INTO `mc_option` VALUES ('3', '1', '3', '可以嵌套定义,也可以嵌套调用 ');
INSERT INTO `mc_option` VALUES ('4', '1', '4', '嵌套定义和嵌套调用都不允许 ');
INSERT INTO `mc_option` VALUES ('5', '2', '1', '用typedef可以定义各种类型名,但不能用来定义变量 ');
INSERT INTO `mc_option` VALUES ('6', '2', '2', '用typedef可以增加新类型 ');
INSERT INTO `mc_option` VALUES ('7', '2', '3', '用typedef只是将已存在的类型用一个新的名字来代表');
INSERT INTO `mc_option` VALUES ('8', '2', '4', '使用typedef便于程序的通用');
INSERT INTO `mc_option` VALUES ('9', '3', '1', '在switch语句中必须使用break语句 ');
INSERT INTO `mc_option` VALUES ('10', '3', '2', '语句只能用于switch语句 ');
INSERT INTO `mc_option` VALUES ('11', '3', '3', '在switch语句中,可以根据需要使用或不使用break语句 ');
INSERT INTO `mc_option` VALUES ('12', '3', '4', '语句是switch语句的一部分 ');

-- ----------------------------
-- Table structure for `mc_question`
-- ----------------------------
DROP TABLE IF EXISTS `mc_question`;
CREATE TABLE `mc_question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `knowIds` varchar(255) DEFAULT NULL,
  `stem` text NOT NULL,
  `answer` varchar(16) NOT NULL,
  `analysis` text,
  `checkTeacherId` int(11) DEFAULT NULL,
  `teacherId` int(11) DEFAULT NULL,
  `courseId` int(11) DEFAULT NULL,
  `chapterId` int(11) DEFAULT NULL,
  `dot` tinyint(4) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '0' COMMENT '0代表未审核，1代表已通过，2代表拒绝',
  `updateTime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `chapterId` (`chapterId`),
  CONSTRAINT `mc_question_ibfk_1` FOREIGN KEY (`chapterId`) REFERENCES `chapter` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mc_question
-- ----------------------------
INSERT INTO `mc_question` VALUES ('1', '26', 'C语言中的函数描述不正确的有().', 'ACD', '', '3', '3', '6', '6', '2', '0', null);
INSERT INTO `mc_question` VALUES ('2', '15', 'typedef的叙述正确的是().', 'ACD', '', '3', '3', '6', '1', '1', '0', null);
INSERT INTO `mc_question` VALUES ('3', '25', 'switch语句和break语句中描述错误的有().', 'ABD', '', '3', '3', '6', '5', '2', '0', null);

-- ----------------------------
-- Table structure for `menu`
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(64) DEFAULT NULL,
  `path` varchar(64) DEFAULT NULL,
  `component` varchar(64) DEFAULT NULL,
  `name` varchar(64) DEFAULT NULL,
  `iconCls` varchar(64) DEFAULT NULL,
  `keepAlive` tinyint(1) DEFAULT NULL,
  `requireAuth` tinyint(1) DEFAULT NULL,
  `parentId` int(11) DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `parentId` (`parentId`),
  CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`parentId`) REFERENCES `menu` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('1', '/', null, null, '所有', null, null, null, null, '1');
INSERT INTO `menu` VALUES ('2', '/', '/home', 'Home', '成绩管理', 'fa fa-user-circle-o', null, '1', '1', '1');
INSERT INTO `menu` VALUES ('3', '/', '/home', 'Home', '试题管理', 'fa fa-address-card-o', null, '1', '1', '1');
INSERT INTO `menu` VALUES ('4', '/', '/home', 'Home', '试卷管理', 'fa fa-money', null, '1', '1', '1');
INSERT INTO `menu` VALUES ('5', '/', '/home', 'Home', '试卷分析', 'fa fa-bar-chart', null, '1', '1', '1');
INSERT INTO `menu` VALUES ('6', '/', '/home', 'Home', '系统管理', 'fa fa-windows', null, '1', '1', '1');
INSERT INTO `menu` VALUES ('7', '/grade/input/**', '/gra/input', 'GraInput', '成绩录入', null, null, '1', '2', '1');
INSERT INTO `menu` VALUES ('8', '/grade/query/**', '/gra/query', 'GraQuery', '成绩查询', null, null, '1', '2', '1');
INSERT INTO `menu` VALUES ('9', '/question/input/**', '/que/input', 'QueInput', '试题录入', null, null, '1', '3', '1');
INSERT INTO `menu` VALUES ('10', '/question/query/**', '/que/query', 'QueQuery', '试题查询', null, null, '1', '3', '1');
INSERT INTO `menu` VALUES ('11', '/question/check/**', '/que/check', 'QueCheck', '试题审核', null, null, '1', '3', '1');
INSERT INTO `menu` VALUES ('14', '/exampaper/template/**', '/pap/template', 'PaperTem', '试卷模板管理', null, null, '1', '4', '1');
INSERT INTO `menu` VALUES ('15', '/exampaper/library/**', '/pap/library', 'PaperLib', '试卷库管理', null, null, '1', '4', '1');
INSERT INTO `menu` VALUES ('16', '/exampaper/create/**', '/pap/create', 'PaperCre', '试卷组建', null, null, '1', '4', '1');
INSERT INTO `menu` VALUES ('17', '/exampaper/check/**', '/pap/check', 'PaperCheck', '试卷审核', null, null, '1', '4', '1');
INSERT INTO `menu` VALUES ('19', '/analysis/all/**', '/ana/all', 'AnaAll', '试卷数据分析', null, null, '1', '5', '1');
INSERT INTO `menu` VALUES ('20', '/analysis/score/**', '/ana/score', 'StaScore', '试题数据分析', null, null, '1', '5', '1');
INSERT INTO `menu` VALUES ('21', '/analysis/personnel/**', '/ana/pers', 'StaPers', '成绩信息统计', null, null, '1', '5', '1');
INSERT INTO `menu` VALUES ('22', '/analysis/recored/**', '/ana/record', 'StaRecord', '学习效果分析', null, null, '1', '5', '1');
INSERT INTO `menu` VALUES ('23', '/system/user/**', '/sys/user', 'SysUserMan', '用户管理', null, null, '1', '6', '1');
INSERT INTO `menu` VALUES ('24', '/system/authority/**', '/sys/aut', 'SysAuth', '权限管理', null, null, '1', '6', '1');
INSERT INTO `menu` VALUES ('25', '/baseinfo/department/**', '/baseinfo/dep', 'BasDep', '部门管理', null, null, '1', '33', '1');
INSERT INTO `menu` VALUES ('26', '/baseinfo/class/**', '/baseinfo/class', 'BasClass', '班级管理', null, null, '1', '33', '1');
INSERT INTO `menu` VALUES ('27', '/baseinfo/datastructure/**', '/baseinfo/datastru', 'BasDataStru', '知识结构管理', null, null, '1', '33', '1');
INSERT INTO `menu` VALUES ('28', '/system/init/**', '/sys/init', 'SysInit', '初始化数据库', null, null, '1', '6', '0');
INSERT INTO `menu` VALUES ('33', '/', '/home', 'Home', '基础信息管理', 'fa fa-windows', null, '1', '1', '1');
INSERT INTO `menu` VALUES ('34', '/baseinfo/stu/**', '/baseinfo/stu', 'BasStu', '学生管理', null, null, '1', '33', '1');
INSERT INTO `menu` VALUES ('37', '/analysis/all/**', '/ana/scoredistribution', 'AnaScoreDistribution', '整体成绩分析', null, null, '1', '5', '1');
INSERT INTO `menu` VALUES ('38', '/analysis/all/**', '/ana/outstandingandpassrate', 'AnaOutstandingAndPassRate', '优秀率、及格率', null, null, '1', '5', '1');
INSERT INTO `menu` VALUES ('39', '/analysis/all/**', '/ana/anascoringrateofquestiontype', 'AnaScoringRateOfQuestionType', '题型得分率', null, null, '1', '5', '1');
INSERT INTO `menu` VALUES ('40', '/analysis/all/**', '/ana/anascoresofallchapters', 'AnaScoresOfAllChapters', '章节得分率', null, null, '1', '5', '1');
INSERT INTO `menu` VALUES ('41', '/analysis/all/**', '/ana/anascoreoftestpaperknowledgepoints', 'AnaScoreOfTestpaperKnowledgePoints', '知识点得分率', null, null, '1', '5', '1');

-- ----------------------------
-- Table structure for `menu_role`
-- ----------------------------
DROP TABLE IF EXISTS `menu_role`;
CREATE TABLE `menu_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mid` int(11) DEFAULT NULL,
  `rid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mid` (`mid`),
  KEY `rid` (`rid`),
  CONSTRAINT `menu_role_ibfk_1` FOREIGN KEY (`mid`) REFERENCES `menu` (`id`),
  CONSTRAINT `menu_role_ibfk_2` FOREIGN KEY (`rid`) REFERENCES `role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=348 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menu_role
-- ----------------------------
INSERT INTO `menu_role` VALUES ('288', '7', '3');
INSERT INTO `menu_role` VALUES ('289', '8', '3');
INSERT INTO `menu_role` VALUES ('290', '9', '3');
INSERT INTO `menu_role` VALUES ('292', '10', '3');
INSERT INTO `menu_role` VALUES ('293', '11', '3');
INSERT INTO `menu_role` VALUES ('294', '14', '3');
INSERT INTO `menu_role` VALUES ('295', '15', '3');
INSERT INTO `menu_role` VALUES ('296', '16', '3');
INSERT INTO `menu_role` VALUES ('297', '17', '3');
INSERT INTO `menu_role` VALUES ('298', '19', '3');
INSERT INTO `menu_role` VALUES ('299', '20', '3');
INSERT INTO `menu_role` VALUES ('300', '21', '3');
INSERT INTO `menu_role` VALUES ('301', '22', '3');
INSERT INTO `menu_role` VALUES ('302', '23', '3');
INSERT INTO `menu_role` VALUES ('303', '24', '3');
INSERT INTO `menu_role` VALUES ('304', '25', '3');
INSERT INTO `menu_role` VALUES ('305', '26', '3');
INSERT INTO `menu_role` VALUES ('306', '27', '3');
INSERT INTO `menu_role` VALUES ('307', '28', '3');
INSERT INTO `menu_role` VALUES ('308', '34', '3');
INSERT INTO `menu_role` VALUES ('309', '7', '1');
INSERT INTO `menu_role` VALUES ('310', '8', '1');
INSERT INTO `menu_role` VALUES ('311', '9', '1');
INSERT INTO `menu_role` VALUES ('312', '10', '1');
INSERT INTO `menu_role` VALUES ('313', '14', '1');
INSERT INTO `menu_role` VALUES ('314', '15', '1');
INSERT INTO `menu_role` VALUES ('315', '16', '1');
INSERT INTO `menu_role` VALUES ('316', '19', '1');
INSERT INTO `menu_role` VALUES ('317', '20', '1');
INSERT INTO `menu_role` VALUES ('318', '21', '1');
INSERT INTO `menu_role` VALUES ('319', '22', '1');
INSERT INTO `menu_role` VALUES ('320', '25', '1');
INSERT INTO `menu_role` VALUES ('321', '26', '1');
INSERT INTO `menu_role` VALUES ('322', '27', '1');
INSERT INTO `menu_role` VALUES ('323', '34', '1');
INSERT INTO `menu_role` VALUES ('324', '7', '2');
INSERT INTO `menu_role` VALUES ('325', '8', '2');
INSERT INTO `menu_role` VALUES ('326', '9', '2');
INSERT INTO `menu_role` VALUES ('327', '10', '2');
INSERT INTO `menu_role` VALUES ('328', '11', '2');
INSERT INTO `menu_role` VALUES ('329', '14', '2');
INSERT INTO `menu_role` VALUES ('330', '15', '2');
INSERT INTO `menu_role` VALUES ('331', '16', '2');
INSERT INTO `menu_role` VALUES ('332', '17', '2');
INSERT INTO `menu_role` VALUES ('333', '19', '2');
INSERT INTO `menu_role` VALUES ('334', '20', '2');
INSERT INTO `menu_role` VALUES ('335', '21', '2');
INSERT INTO `menu_role` VALUES ('336', '22', '2');
INSERT INTO `menu_role` VALUES ('337', '25', '2');
INSERT INTO `menu_role` VALUES ('338', '26', '2');
INSERT INTO `menu_role` VALUES ('339', '27', '2');
INSERT INTO `menu_role` VALUES ('340', '34', '2');
INSERT INTO `menu_role` VALUES ('343', '37', '3');
INSERT INTO `menu_role` VALUES ('344', '38', '3');
INSERT INTO `menu_role` VALUES ('345', '39', '3');
INSERT INTO `menu_role` VALUES ('346', '40', '3');
INSERT INTO `menu_role` VALUES ('347', '41', '3');

-- ----------------------------
-- Table structure for `paper_check`
-- ----------------------------
DROP TABLE IF EXISTS `paper_check`;
CREATE TABLE `paper_check` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `testPaperId` int(11) DEFAULT NULL,
  `testPaperType` int(11) DEFAULT NULL,
  `postTeacherId` int(11) DEFAULT NULL,
  `checkTeacherId` int(11) DEFAULT NULL,
  `checkStatus` int(11) DEFAULT NULL COMMENT '待审核：0，审核通过：1：审核拒绝：2',
  `refuseReason` varchar(255) DEFAULT NULL,
  `postTime` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `paper_check_ibfk_1` (`testPaperId`),
  CONSTRAINT `paper_check_ibfk_1` FOREIGN KEY (`testPaperId`) REFERENCES `test_paper` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of paper_check
-- ----------------------------
INSERT INTO `paper_check` VALUES ('2', '1', '0', '3', '10', '2', '2222', '2020-04-30');
INSERT INTO `paper_check` VALUES ('5', '1', '0', '10', '3', '1', null, null);

-- ----------------------------
-- Table structure for `qa_question`
-- ----------------------------
DROP TABLE IF EXISTS `qa_question`;
CREATE TABLE `qa_question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `knowIds` varchar(255) DEFAULT NULL,
  `stem` text NOT NULL,
  `answer` text NOT NULL,
  `analysis` text,
  `teacherId` int(11) DEFAULT NULL,
  `chapterId` int(11) DEFAULT NULL,
  `dot` int(11) DEFAULT NULL,
  `checkTeacherId` int(11) DEFAULT NULL COMMENT '审核教师ID',
  `courseId` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '试题状态，0代表未审核，1代表已通过，2代表拒绝',
  `updateTime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `chapterId` (`chapterId`),
  CONSTRAINT `qa_question_ibfk_1` FOREIGN KEY (`chapterId`) REFERENCES `chapter` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qa_question
-- ----------------------------
INSERT INTO `qa_question` VALUES ('1', '34@20', '指针数据类型与基本数据类型相比有哪些相同点和不同点，作为参数时有何不同', '面向过程的语言采用结构化程序设计思想：功能分解并逐步求精。把复杂的任务，分解成一系列小的功能、模块。可处理一些复杂的任务。缺点：数据与处理这些数据的方法的分离。重用性差。（数据和程序分开）                                            \n面向对象的程序设计的本质：引入对象，把数据与数据的处理过程当成一个整体。三大特性：封装与数据隐蔽，继承与重用，多态性1111111111111111111111111111111111111111111111111111111111111111111111111', '', '3', '8', '2', '3', '6', '0', '2020-04-22 18:38:41');

-- ----------------------------
-- Table structure for `question_check`
-- ----------------------------
DROP TABLE IF EXISTS `question_check`;
CREATE TABLE `question_check` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `questionId` int(11) NOT NULL COMMENT '试题id',
  `postTeacherId` int(11) NOT NULL COMMENT '提交试题教师id',
  `checkTeacherId` int(11) NOT NULL COMMENT '审核教师试题编号',
  `checkStatus` tinyint(4) DEFAULT '0' COMMENT '待审核：0，审核通过：1：审核拒绝：2',
  `questionType` varchar(8) DEFAULT NULL,
  `refuseReason` varchar(255) DEFAULT '' COMMENT '拒绝原因',
  `postTime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `question_check_ibfk_1` (`postTeacherId`),
  KEY `question_check_ibfk_2` (`checkTeacherId`),
  CONSTRAINT `question_check_ibfk_1` FOREIGN KEY (`postTeacherId`) REFERENCES `teacher` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `question_check_ibfk_2` FOREIGN KEY (`checkTeacherId`) REFERENCES `teacher` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of question_check
-- ----------------------------
INSERT INTO `question_check` VALUES ('1', '1', '10', '3', '1', 'sc', '', '2020-04-13 15:31:19');
INSERT INTO `question_check` VALUES ('2', '2', '10', '3', '1', 'sc', '', '2020-04-12 22:35:19');
INSERT INTO `question_check` VALUES ('3', '3', '10', '3', '1', 'sc', '', '2020-04-12 22:35:23');
INSERT INTO `question_check` VALUES ('4', '4', '10', '3', '1', 'sc', '', '2020-04-12 22:35:28');
INSERT INTO `question_check` VALUES ('5', '5', '10', '3', '1', 'sc', '', '2020-04-12 22:38:31');
INSERT INTO `question_check` VALUES ('6', '6', '10', '3', '1', 'sc', '', '2020-04-12 23:09:35');
INSERT INTO `question_check` VALUES ('7', '1', '10', '3', '1', 'fb', '', '2020-04-12 23:09:49');
INSERT INTO `question_check` VALUES ('8', '2', '10', '3', '2', 'fb', '士大夫', '2020-04-12 23:11:26');
INSERT INTO `question_check` VALUES ('9', '3', '10', '3', '2', 'fb', 'dfgdg', '2020-04-13 07:40:08');
INSERT INTO `question_check` VALUES ('10', '7', '10', '3', '1', 'sc', '', '2020-04-13 09:04:41');
INSERT INTO `question_check` VALUES ('11', '8', '10', '3', '1', 'sc', '', '2020-04-30 09:26:09');
INSERT INTO `question_check` VALUES ('12', '1', '10', '3', '0', 'qa', '', '2020-04-12 18:40:30');
INSERT INTO `question_check` VALUES ('13', '1', '10', '3', '0', 'tf', '', '2020-04-12 18:40:33');
INSERT INTO `question_check` VALUES ('14', '2', '10', '3', '0', 'tf', '', '2020-04-12 18:40:35');
INSERT INTO `question_check` VALUES ('15', '3', '10', '3', '0', 'tf', '', '2020-04-12 18:40:37');
INSERT INTO `question_check` VALUES ('16', '4', '10', '3', '0', 'tf', '', '2020-04-12 18:40:39');
INSERT INTO `question_check` VALUES ('17', '5', '10', '3', '0', 'tf', '', '2020-04-12 18:40:41');
INSERT INTO `question_check` VALUES ('18', '6', '10', '3', '0', 'tf', '', '2020-04-12 18:40:46');
INSERT INTO `question_check` VALUES ('19', '7', '10', '3', '0', 'tf', '', '2020-04-12 18:40:48');
INSERT INTO `question_check` VALUES ('20', '8', '11', '3', '0', 'tf', '', '2020-04-12 18:40:50');
INSERT INTO `question_check` VALUES ('21', '9', '10', '3', '0', 'tf', '', '2020-04-12 18:40:52');
INSERT INTO `question_check` VALUES ('22', '10', '3', '3', '2', 'tf', '777888', '2020-04-13 16:56:58');
INSERT INTO `question_check` VALUES ('23', '1', '10', '3', '0', 'mc', '', '2020-04-12 18:41:19');
INSERT INTO `question_check` VALUES ('24', '2', '3', '3', '0', 'mc', '', '2020-04-12 18:41:34');
INSERT INTO `question_check` VALUES ('25', '3', '3', '3', '0', 'mc', '', '2020-04-12 18:41:38');

-- ----------------------------
-- Table structure for `question_grade`
-- ----------------------------
DROP TABLE IF EXISTS `question_grade`;
CREATE TABLE `question_grade` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `studentGradeId` int(11) DEFAULT NULL,
  `questionScoreId` int(11) DEFAULT NULL COMMENT '对应试卷中小题分数的id',
  `queType` varchar(20) DEFAULT NULL,
  `sortNum` int(11) DEFAULT NULL,
  `queGrade` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `studentGradeId` (`studentGradeId`) USING BTREE,
  KEY `questionScoreId` (`questionScoreId`),
  CONSTRAINT `question_grade_ibfk_1` FOREIGN KEY (`studentGradeId`) REFERENCES `student_grade` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `question_grade_ibfk_2` FOREIGN KEY (`questionScoreId`) REFERENCES `question_score` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=893 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of question_grade
-- ----------------------------
INSERT INTO `question_grade` VALUES ('515', '32', '270', '单选题', '1', '1');
INSERT INTO `question_grade` VALUES ('516', '32', '271', '单选题', '2', '1');
INSERT INTO `question_grade` VALUES ('517', '32', '272', '单选题', '3', '1');
INSERT INTO `question_grade` VALUES ('518', '32', '273', '单选题', '4', '1');
INSERT INTO `question_grade` VALUES ('519', '32', '274', '单选题', '5', '1');
INSERT INTO `question_grade` VALUES ('520', '32', '275', '单选题', '6', '1');
INSERT INTO `question_grade` VALUES ('521', '32', '276', '单选题', '7', '1');
INSERT INTO `question_grade` VALUES ('522', '32', '277', '单选题', '8', '1');
INSERT INTO `question_grade` VALUES ('523', '32', '278', '单选题', '9', '1');
INSERT INTO `question_grade` VALUES ('524', '32', '279', '单选题', '10', '1');
INSERT INTO `question_grade` VALUES ('525', '32', '280', '多选题', '1', '2');
INSERT INTO `question_grade` VALUES ('526', '32', '281', '多选题', '2', '2');
INSERT INTO `question_grade` VALUES ('527', '32', '282', '多选题', '3', '2');
INSERT INTO `question_grade` VALUES ('528', '32', '283', '多选题', '4', '2');
INSERT INTO `question_grade` VALUES ('529', '32', '284', '多选题', '5', '2');
INSERT INTO `question_grade` VALUES ('530', '32', '285', '多选题', '6', '2');
INSERT INTO `question_grade` VALUES ('531', '32', '286', '多选题', '7', '2');
INSERT INTO `question_grade` VALUES ('532', '32', '287', '多选题', '8', '2');
INSERT INTO `question_grade` VALUES ('533', '32', '288', '多选题', '9', '2');
INSERT INTO `question_grade` VALUES ('534', '32', '289', '多选题', '10', '0');
INSERT INTO `question_grade` VALUES ('535', '32', '290', '简答题', '1', '10');
INSERT INTO `question_grade` VALUES ('536', '32', '291', '简答题', '2', '10');
INSERT INTO `question_grade` VALUES ('537', '32', '292', '简答题', '3', '10');
INSERT INTO `question_grade` VALUES ('538', '32', '293', '简答题', '4', '10');
INSERT INTO `question_grade` VALUES ('539', '32', '294', '简答题', '5', '0');
INSERT INTO `question_grade` VALUES ('540', '32', '295', '简答题', '6', '0');
INSERT INTO `question_grade` VALUES ('541', '32', '296', '简答题', '7', '10');
INSERT INTO `question_grade` VALUES ('542', '33', '270', '单选题', '1', '1');
INSERT INTO `question_grade` VALUES ('543', '33', '271', '单选题', '2', '1');
INSERT INTO `question_grade` VALUES ('544', '33', '272', '单选题', '3', '0');
INSERT INTO `question_grade` VALUES ('545', '33', '273', '单选题', '4', '1');
INSERT INTO `question_grade` VALUES ('546', '33', '274', '单选题', '5', '1');
INSERT INTO `question_grade` VALUES ('547', '33', '275', '单选题', '6', '1');
INSERT INTO `question_grade` VALUES ('548', '33', '276', '单选题', '7', '0');
INSERT INTO `question_grade` VALUES ('549', '33', '277', '单选题', '8', '1');
INSERT INTO `question_grade` VALUES ('550', '33', '278', '单选题', '9', '1');
INSERT INTO `question_grade` VALUES ('551', '33', '279', '单选题', '10', '1');
INSERT INTO `question_grade` VALUES ('552', '33', '280', '多选题', '1', '2');
INSERT INTO `question_grade` VALUES ('553', '33', '281', '多选题', '2', '2');
INSERT INTO `question_grade` VALUES ('554', '33', '282', '多选题', '3', '2');
INSERT INTO `question_grade` VALUES ('555', '33', '283', '多选题', '4', '2');
INSERT INTO `question_grade` VALUES ('556', '33', '284', '多选题', '5', '0');
INSERT INTO `question_grade` VALUES ('557', '33', '285', '多选题', '6', '0');
INSERT INTO `question_grade` VALUES ('558', '33', '286', '多选题', '7', '0');
INSERT INTO `question_grade` VALUES ('559', '33', '287', '多选题', '8', '0');
INSERT INTO `question_grade` VALUES ('560', '33', '288', '多选题', '9', '0');
INSERT INTO `question_grade` VALUES ('561', '33', '289', '多选题', '10', '0');
INSERT INTO `question_grade` VALUES ('562', '33', '290', '简答题', '1', '10');
INSERT INTO `question_grade` VALUES ('563', '33', '291', '简答题', '2', '10');
INSERT INTO `question_grade` VALUES ('564', '33', '292', '简答题', '3', '10');
INSERT INTO `question_grade` VALUES ('565', '33', '293', '简答题', '4', '10');
INSERT INTO `question_grade` VALUES ('566', '33', '294', '简答题', '5', '10');
INSERT INTO `question_grade` VALUES ('567', '33', '295', '简答题', '6', '10');
INSERT INTO `question_grade` VALUES ('568', '33', '296', '简答题', '7', '10');
INSERT INTO `question_grade` VALUES ('569', '34', '270', '单选题', '1', '1');
INSERT INTO `question_grade` VALUES ('570', '34', '271', '单选题', '2', '1');
INSERT INTO `question_grade` VALUES ('571', '34', '272', '单选题', '3', '1');
INSERT INTO `question_grade` VALUES ('572', '34', '273', '单选题', '4', '1');
INSERT INTO `question_grade` VALUES ('573', '34', '274', '单选题', '5', '0');
INSERT INTO `question_grade` VALUES ('574', '34', '275', '单选题', '6', '1');
INSERT INTO `question_grade` VALUES ('575', '34', '276', '单选题', '7', '1');
INSERT INTO `question_grade` VALUES ('576', '34', '277', '单选题', '8', '1');
INSERT INTO `question_grade` VALUES ('577', '34', '278', '单选题', '9', '1');
INSERT INTO `question_grade` VALUES ('578', '34', '279', '单选题', '10', '1');
INSERT INTO `question_grade` VALUES ('579', '34', '280', '多选题', '1', '0');
INSERT INTO `question_grade` VALUES ('580', '34', '281', '多选题', '2', '2');
INSERT INTO `question_grade` VALUES ('581', '34', '282', '多选题', '3', '2');
INSERT INTO `question_grade` VALUES ('582', '34', '283', '多选题', '4', '2');
INSERT INTO `question_grade` VALUES ('583', '34', '284', '多选题', '5', '2');
INSERT INTO `question_grade` VALUES ('584', '34', '285', '多选题', '6', '2');
INSERT INTO `question_grade` VALUES ('585', '34', '286', '多选题', '7', '2');
INSERT INTO `question_grade` VALUES ('586', '34', '287', '多选题', '8', '2');
INSERT INTO `question_grade` VALUES ('587', '34', '288', '多选题', '9', '2');
INSERT INTO `question_grade` VALUES ('588', '34', '289', '多选题', '10', '0');
INSERT INTO `question_grade` VALUES ('589', '34', '290', '简答题', '1', '10');
INSERT INTO `question_grade` VALUES ('590', '34', '291', '简答题', '2', '10');
INSERT INTO `question_grade` VALUES ('591', '34', '292', '简答题', '3', '10');
INSERT INTO `question_grade` VALUES ('592', '34', '293', '简答题', '4', '10');
INSERT INTO `question_grade` VALUES ('593', '34', '294', '简答题', '5', '5');
INSERT INTO `question_grade` VALUES ('594', '34', '295', '简答题', '6', '5');
INSERT INTO `question_grade` VALUES ('595', '34', '296', '简答题', '7', '0');
INSERT INTO `question_grade` VALUES ('596', '35', '270', '单选题', '1', '1');
INSERT INTO `question_grade` VALUES ('597', '35', '271', '单选题', '2', '1');
INSERT INTO `question_grade` VALUES ('598', '35', '272', '单选题', '3', '1');
INSERT INTO `question_grade` VALUES ('599', '35', '273', '单选题', '4', '1');
INSERT INTO `question_grade` VALUES ('600', '35', '274', '单选题', '5', '1');
INSERT INTO `question_grade` VALUES ('601', '35', '275', '单选题', '6', '1');
INSERT INTO `question_grade` VALUES ('602', '35', '276', '单选题', '7', '0');
INSERT INTO `question_grade` VALUES ('603', '35', '277', '单选题', '8', '0');
INSERT INTO `question_grade` VALUES ('604', '35', '278', '单选题', '9', '1');
INSERT INTO `question_grade` VALUES ('605', '35', '279', '单选题', '10', '0');
INSERT INTO `question_grade` VALUES ('606', '35', '280', '多选题', '1', '2');
INSERT INTO `question_grade` VALUES ('607', '35', '281', '多选题', '2', '0');
INSERT INTO `question_grade` VALUES ('608', '35', '282', '多选题', '3', '0');
INSERT INTO `question_grade` VALUES ('609', '35', '283', '多选题', '4', '0');
INSERT INTO `question_grade` VALUES ('610', '35', '284', '多选题', '5', '2');
INSERT INTO `question_grade` VALUES ('611', '35', '285', '多选题', '6', '2');
INSERT INTO `question_grade` VALUES ('612', '35', '286', '多选题', '7', '2');
INSERT INTO `question_grade` VALUES ('613', '35', '287', '多选题', '8', '2');
INSERT INTO `question_grade` VALUES ('614', '35', '288', '多选题', '9', '2');
INSERT INTO `question_grade` VALUES ('615', '35', '289', '多选题', '10', '2');
INSERT INTO `question_grade` VALUES ('616', '35', '290', '简答题', '1', '10');
INSERT INTO `question_grade` VALUES ('617', '35', '291', '简答题', '2', '10');
INSERT INTO `question_grade` VALUES ('618', '35', '292', '简答题', '3', '10');
INSERT INTO `question_grade` VALUES ('619', '35', '293', '简答题', '4', '10');
INSERT INTO `question_grade` VALUES ('620', '35', '294', '简答题', '5', '10');
INSERT INTO `question_grade` VALUES ('621', '35', '295', '简答题', '6', '10');
INSERT INTO `question_grade` VALUES ('622', '35', '296', '简答题', '7', '10');
INSERT INTO `question_grade` VALUES ('623', '36', '270', '单选题', '1', '1');
INSERT INTO `question_grade` VALUES ('624', '36', '271', '单选题', '2', '1');
INSERT INTO `question_grade` VALUES ('625', '36', '272', '单选题', '3', '1');
INSERT INTO `question_grade` VALUES ('626', '36', '273', '单选题', '4', '1');
INSERT INTO `question_grade` VALUES ('627', '36', '274', '单选题', '5', '1');
INSERT INTO `question_grade` VALUES ('628', '36', '275', '单选题', '6', '1');
INSERT INTO `question_grade` VALUES ('629', '36', '276', '单选题', '7', '1');
INSERT INTO `question_grade` VALUES ('630', '36', '277', '单选题', '8', '1');
INSERT INTO `question_grade` VALUES ('631', '36', '278', '单选题', '9', '1');
INSERT INTO `question_grade` VALUES ('632', '36', '279', '单选题', '10', '1');
INSERT INTO `question_grade` VALUES ('633', '36', '280', '多选题', '1', '0');
INSERT INTO `question_grade` VALUES ('634', '36', '281', '多选题', '2', '0');
INSERT INTO `question_grade` VALUES ('635', '36', '282', '多选题', '3', '0');
INSERT INTO `question_grade` VALUES ('636', '36', '283', '多选题', '4', '0');
INSERT INTO `question_grade` VALUES ('637', '36', '284', '多选题', '5', '0');
INSERT INTO `question_grade` VALUES ('638', '36', '285', '多选题', '6', '2');
INSERT INTO `question_grade` VALUES ('639', '36', '286', '多选题', '7', '2');
INSERT INTO `question_grade` VALUES ('640', '36', '287', '多选题', '8', '2');
INSERT INTO `question_grade` VALUES ('641', '36', '288', '多选题', '9', '2');
INSERT INTO `question_grade` VALUES ('642', '36', '289', '多选题', '10', '2');
INSERT INTO `question_grade` VALUES ('643', '36', '290', '简答题', '1', '10');
INSERT INTO `question_grade` VALUES ('644', '36', '291', '简答题', '2', '10');
INSERT INTO `question_grade` VALUES ('645', '36', '292', '简答题', '3', '10');
INSERT INTO `question_grade` VALUES ('646', '36', '293', '简答题', '4', '0');
INSERT INTO `question_grade` VALUES ('647', '36', '294', '简答题', '5', '10');
INSERT INTO `question_grade` VALUES ('648', '36', '295', '简答题', '6', '10');
INSERT INTO `question_grade` VALUES ('649', '36', '296', '简答题', '7', '10');
INSERT INTO `question_grade` VALUES ('650', '37', '270', '单选题', '1', '1');
INSERT INTO `question_grade` VALUES ('651', '37', '271', '单选题', '2', '1');
INSERT INTO `question_grade` VALUES ('652', '37', '272', '单选题', '3', '1');
INSERT INTO `question_grade` VALUES ('653', '37', '273', '单选题', '4', '1');
INSERT INTO `question_grade` VALUES ('654', '37', '274', '单选题', '5', '1');
INSERT INTO `question_grade` VALUES ('655', '37', '275', '单选题', '6', '1');
INSERT INTO `question_grade` VALUES ('656', '37', '276', '单选题', '7', '1');
INSERT INTO `question_grade` VALUES ('657', '37', '277', '单选题', '8', '1');
INSERT INTO `question_grade` VALUES ('658', '37', '278', '单选题', '9', '1');
INSERT INTO `question_grade` VALUES ('659', '37', '279', '单选题', '10', '0');
INSERT INTO `question_grade` VALUES ('660', '37', '280', '多选题', '1', '2');
INSERT INTO `question_grade` VALUES ('661', '37', '281', '多选题', '2', '2');
INSERT INTO `question_grade` VALUES ('662', '37', '282', '多选题', '3', '2');
INSERT INTO `question_grade` VALUES ('663', '37', '283', '多选题', '4', '2');
INSERT INTO `question_grade` VALUES ('664', '37', '284', '多选题', '5', '0');
INSERT INTO `question_grade` VALUES ('665', '37', '285', '多选题', '6', '2');
INSERT INTO `question_grade` VALUES ('666', '37', '286', '多选题', '7', '0');
INSERT INTO `question_grade` VALUES ('667', '37', '287', '多选题', '8', '0');
INSERT INTO `question_grade` VALUES ('668', '37', '288', '多选题', '9', '0');
INSERT INTO `question_grade` VALUES ('669', '37', '289', '多选题', '10', '0');
INSERT INTO `question_grade` VALUES ('670', '37', '290', '简答题', '1', '10');
INSERT INTO `question_grade` VALUES ('671', '37', '291', '简答题', '2', '10');
INSERT INTO `question_grade` VALUES ('672', '37', '292', '简答题', '3', '10');
INSERT INTO `question_grade` VALUES ('673', '37', '293', '简答题', '4', '0');
INSERT INTO `question_grade` VALUES ('674', '37', '294', '简答题', '5', '0');
INSERT INTO `question_grade` VALUES ('675', '37', '295', '简答题', '6', '0');
INSERT INTO `question_grade` VALUES ('676', '37', '296', '简答题', '7', '0');
INSERT INTO `question_grade` VALUES ('677', '38', '270', '单选题', '1', '1');
INSERT INTO `question_grade` VALUES ('678', '38', '271', '单选题', '2', '1');
INSERT INTO `question_grade` VALUES ('679', '38', '272', '单选题', '3', '1');
INSERT INTO `question_grade` VALUES ('680', '38', '273', '单选题', '4', '1');
INSERT INTO `question_grade` VALUES ('681', '38', '274', '单选题', '5', '1');
INSERT INTO `question_grade` VALUES ('682', '38', '275', '单选题', '6', '1');
INSERT INTO `question_grade` VALUES ('683', '38', '276', '单选题', '7', '1');
INSERT INTO `question_grade` VALUES ('684', '38', '277', '单选题', '8', '1');
INSERT INTO `question_grade` VALUES ('685', '38', '278', '单选题', '9', '1');
INSERT INTO `question_grade` VALUES ('686', '38', '279', '单选题', '10', '1');
INSERT INTO `question_grade` VALUES ('687', '38', '280', '多选题', '1', '2');
INSERT INTO `question_grade` VALUES ('688', '38', '281', '多选题', '2', '2');
INSERT INTO `question_grade` VALUES ('689', '38', '282', '多选题', '3', '2');
INSERT INTO `question_grade` VALUES ('690', '38', '283', '多选题', '4', '2');
INSERT INTO `question_grade` VALUES ('691', '38', '284', '多选题', '5', '2');
INSERT INTO `question_grade` VALUES ('692', '38', '285', '多选题', '6', '0');
INSERT INTO `question_grade` VALUES ('693', '38', '286', '多选题', '7', '0');
INSERT INTO `question_grade` VALUES ('694', '38', '287', '多选题', '8', '0');
INSERT INTO `question_grade` VALUES ('695', '38', '288', '多选题', '9', '0');
INSERT INTO `question_grade` VALUES ('696', '38', '289', '多选题', '10', '0');
INSERT INTO `question_grade` VALUES ('697', '38', '290', '简答题', '1', '10');
INSERT INTO `question_grade` VALUES ('698', '38', '291', '简答题', '2', '5');
INSERT INTO `question_grade` VALUES ('699', '38', '292', '简答题', '3', '4');
INSERT INTO `question_grade` VALUES ('700', '38', '293', '简答题', '4', '10');
INSERT INTO `question_grade` VALUES ('701', '38', '294', '简答题', '5', '10');
INSERT INTO `question_grade` VALUES ('702', '38', '295', '简答题', '6', '10');
INSERT INTO `question_grade` VALUES ('703', '38', '296', '简答题', '7', '10');
INSERT INTO `question_grade` VALUES ('704', '39', '270', '单选题', '1', '1');
INSERT INTO `question_grade` VALUES ('705', '39', '271', '单选题', '2', '1');
INSERT INTO `question_grade` VALUES ('706', '39', '272', '单选题', '3', '0');
INSERT INTO `question_grade` VALUES ('707', '39', '273', '单选题', '4', '0');
INSERT INTO `question_grade` VALUES ('708', '39', '274', '单选题', '5', '1');
INSERT INTO `question_grade` VALUES ('709', '39', '275', '单选题', '6', '1');
INSERT INTO `question_grade` VALUES ('710', '39', '276', '单选题', '7', '1');
INSERT INTO `question_grade` VALUES ('711', '39', '277', '单选题', '8', '1');
INSERT INTO `question_grade` VALUES ('712', '39', '278', '单选题', '9', '1');
INSERT INTO `question_grade` VALUES ('713', '39', '279', '单选题', '10', '1');
INSERT INTO `question_grade` VALUES ('714', '39', '280', '多选题', '1', '2');
INSERT INTO `question_grade` VALUES ('715', '39', '281', '多选题', '2', '2');
INSERT INTO `question_grade` VALUES ('716', '39', '282', '多选题', '3', '2');
INSERT INTO `question_grade` VALUES ('717', '39', '283', '多选题', '4', '2');
INSERT INTO `question_grade` VALUES ('718', '39', '284', '多选题', '5', '2');
INSERT INTO `question_grade` VALUES ('719', '39', '285', '多选题', '6', '2');
INSERT INTO `question_grade` VALUES ('720', '39', '286', '多选题', '7', '2');
INSERT INTO `question_grade` VALUES ('721', '39', '287', '多选题', '8', '2');
INSERT INTO `question_grade` VALUES ('722', '39', '288', '多选题', '9', '2');
INSERT INTO `question_grade` VALUES ('723', '39', '289', '多选题', '10', '2');
INSERT INTO `question_grade` VALUES ('724', '39', '290', '简答题', '1', '10');
INSERT INTO `question_grade` VALUES ('725', '39', '291', '简答题', '2', '10');
INSERT INTO `question_grade` VALUES ('726', '39', '292', '简答题', '3', '10');
INSERT INTO `question_grade` VALUES ('727', '39', '293', '简答题', '4', '10');
INSERT INTO `question_grade` VALUES ('728', '39', '294', '简答题', '5', '10');
INSERT INTO `question_grade` VALUES ('729', '39', '295', '简答题', '6', '10');
INSERT INTO `question_grade` VALUES ('730', '39', '296', '简答题', '7', '10');
INSERT INTO `question_grade` VALUES ('731', '40', '270', '单选题', '1', '1');
INSERT INTO `question_grade` VALUES ('732', '40', '271', '单选题', '2', '1');
INSERT INTO `question_grade` VALUES ('733', '40', '272', '单选题', '3', '1');
INSERT INTO `question_grade` VALUES ('734', '40', '273', '单选题', '4', '1');
INSERT INTO `question_grade` VALUES ('735', '40', '274', '单选题', '5', '1');
INSERT INTO `question_grade` VALUES ('736', '40', '275', '单选题', '6', '1');
INSERT INTO `question_grade` VALUES ('737', '40', '276', '单选题', '7', '1');
INSERT INTO `question_grade` VALUES ('738', '40', '277', '单选题', '8', '1');
INSERT INTO `question_grade` VALUES ('739', '40', '278', '单选题', '9', '0');
INSERT INTO `question_grade` VALUES ('740', '40', '279', '单选题', '10', '1');
INSERT INTO `question_grade` VALUES ('741', '40', '280', '多选题', '1', '2');
INSERT INTO `question_grade` VALUES ('742', '40', '281', '多选题', '2', '2');
INSERT INTO `question_grade` VALUES ('743', '40', '282', '多选题', '3', '2');
INSERT INTO `question_grade` VALUES ('744', '40', '283', '多选题', '4', '2');
INSERT INTO `question_grade` VALUES ('745', '40', '284', '多选题', '5', '2');
INSERT INTO `question_grade` VALUES ('746', '40', '285', '多选题', '6', '2');
INSERT INTO `question_grade` VALUES ('747', '40', '286', '多选题', '7', '2');
INSERT INTO `question_grade` VALUES ('748', '40', '287', '多选题', '8', '2');
INSERT INTO `question_grade` VALUES ('749', '40', '288', '多选题', '9', '2');
INSERT INTO `question_grade` VALUES ('750', '40', '289', '多选题', '10', '2');
INSERT INTO `question_grade` VALUES ('751', '40', '290', '简答题', '1', '2');
INSERT INTO `question_grade` VALUES ('752', '40', '291', '简答题', '2', '10');
INSERT INTO `question_grade` VALUES ('753', '40', '292', '简答题', '3', '10');
INSERT INTO `question_grade` VALUES ('754', '40', '293', '简答题', '4', '10');
INSERT INTO `question_grade` VALUES ('755', '40', '294', '简答题', '5', '10');
INSERT INTO `question_grade` VALUES ('756', '40', '295', '简答题', '6', '10');
INSERT INTO `question_grade` VALUES ('757', '40', '296', '简答题', '7', '0');
INSERT INTO `question_grade` VALUES ('758', '41', '270', '单选题', '1', '1');
INSERT INTO `question_grade` VALUES ('759', '41', '271', '单选题', '2', '1');
INSERT INTO `question_grade` VALUES ('760', '41', '272', '单选题', '3', '1');
INSERT INTO `question_grade` VALUES ('761', '41', '273', '单选题', '4', '1');
INSERT INTO `question_grade` VALUES ('762', '41', '274', '单选题', '5', '1');
INSERT INTO `question_grade` VALUES ('763', '41', '275', '单选题', '6', '1');
INSERT INTO `question_grade` VALUES ('764', '41', '276', '单选题', '7', '1');
INSERT INTO `question_grade` VALUES ('765', '41', '277', '单选题', '8', '1');
INSERT INTO `question_grade` VALUES ('766', '41', '278', '单选题', '9', '1');
INSERT INTO `question_grade` VALUES ('767', '41', '279', '单选题', '10', '1');
INSERT INTO `question_grade` VALUES ('768', '41', '280', '多选题', '1', '2');
INSERT INTO `question_grade` VALUES ('769', '41', '281', '多选题', '2', '2');
INSERT INTO `question_grade` VALUES ('770', '41', '282', '多选题', '3', '2');
INSERT INTO `question_grade` VALUES ('771', '41', '283', '多选题', '4', '2');
INSERT INTO `question_grade` VALUES ('772', '41', '284', '多选题', '5', '0');
INSERT INTO `question_grade` VALUES ('773', '41', '285', '多选题', '6', '0');
INSERT INTO `question_grade` VALUES ('774', '41', '286', '多选题', '7', '0');
INSERT INTO `question_grade` VALUES ('775', '41', '287', '多选题', '8', '0');
INSERT INTO `question_grade` VALUES ('776', '41', '288', '多选题', '9', '0');
INSERT INTO `question_grade` VALUES ('777', '41', '289', '多选题', '10', '0');
INSERT INTO `question_grade` VALUES ('778', '41', '290', '简答题', '1', '7');
INSERT INTO `question_grade` VALUES ('779', '41', '291', '简答题', '2', '10');
INSERT INTO `question_grade` VALUES ('780', '41', '292', '简答题', '3', '10');
INSERT INTO `question_grade` VALUES ('781', '41', '293', '简答题', '4', '10');
INSERT INTO `question_grade` VALUES ('782', '41', '294', '简答题', '5', '10');
INSERT INTO `question_grade` VALUES ('783', '41', '295', '简答题', '6', '10');
INSERT INTO `question_grade` VALUES ('784', '41', '296', '简答题', '7', '10');
INSERT INTO `question_grade` VALUES ('785', '42', '270', '单选题', '1', '1');
INSERT INTO `question_grade` VALUES ('786', '42', '271', '单选题', '2', '1');
INSERT INTO `question_grade` VALUES ('787', '42', '272', '单选题', '3', '1');
INSERT INTO `question_grade` VALUES ('788', '42', '273', '单选题', '4', '1');
INSERT INTO `question_grade` VALUES ('789', '42', '274', '单选题', '5', '1');
INSERT INTO `question_grade` VALUES ('790', '42', '275', '单选题', '6', '1');
INSERT INTO `question_grade` VALUES ('791', '42', '276', '单选题', '7', '1');
INSERT INTO `question_grade` VALUES ('792', '42', '277', '单选题', '8', '1');
INSERT INTO `question_grade` VALUES ('793', '42', '278', '单选题', '9', '1');
INSERT INTO `question_grade` VALUES ('794', '42', '279', '单选题', '10', '1');
INSERT INTO `question_grade` VALUES ('795', '42', '280', '多选题', '1', '2');
INSERT INTO `question_grade` VALUES ('796', '42', '281', '多选题', '2', '2');
INSERT INTO `question_grade` VALUES ('797', '42', '282', '多选题', '3', '2');
INSERT INTO `question_grade` VALUES ('798', '42', '283', '多选题', '4', '2');
INSERT INTO `question_grade` VALUES ('799', '42', '284', '多选题', '5', '2');
INSERT INTO `question_grade` VALUES ('800', '42', '285', '多选题', '6', '2');
INSERT INTO `question_grade` VALUES ('801', '42', '286', '多选题', '7', '2');
INSERT INTO `question_grade` VALUES ('802', '42', '287', '多选题', '8', '2');
INSERT INTO `question_grade` VALUES ('803', '42', '288', '多选题', '9', '2');
INSERT INTO `question_grade` VALUES ('804', '42', '289', '多选题', '10', '2');
INSERT INTO `question_grade` VALUES ('805', '42', '290', '简答题', '1', '10');
INSERT INTO `question_grade` VALUES ('806', '42', '291', '简答题', '2', '10');
INSERT INTO `question_grade` VALUES ('807', '42', '292', '简答题', '3', '0');
INSERT INTO `question_grade` VALUES ('808', '42', '293', '简答题', '4', '10');
INSERT INTO `question_grade` VALUES ('809', '42', '294', '简答题', '5', '10');
INSERT INTO `question_grade` VALUES ('810', '42', '295', '简答题', '6', '10');
INSERT INTO `question_grade` VALUES ('811', '42', '296', '简答题', '7', '10');
INSERT INTO `question_grade` VALUES ('812', '43', '270', '单选题', '1', '1');
INSERT INTO `question_grade` VALUES ('813', '43', '271', '单选题', '2', '1');
INSERT INTO `question_grade` VALUES ('814', '43', '272', '单选题', '3', '1');
INSERT INTO `question_grade` VALUES ('815', '43', '273', '单选题', '4', '1');
INSERT INTO `question_grade` VALUES ('816', '43', '274', '单选题', '5', '1');
INSERT INTO `question_grade` VALUES ('817', '43', '275', '单选题', '6', '1');
INSERT INTO `question_grade` VALUES ('818', '43', '276', '单选题', '7', '1');
INSERT INTO `question_grade` VALUES ('819', '43', '277', '单选题', '8', '1');
INSERT INTO `question_grade` VALUES ('820', '43', '278', '单选题', '9', '1');
INSERT INTO `question_grade` VALUES ('821', '43', '279', '单选题', '10', '1');
INSERT INTO `question_grade` VALUES ('822', '43', '280', '多选题', '1', '2');
INSERT INTO `question_grade` VALUES ('823', '43', '281', '多选题', '2', '2');
INSERT INTO `question_grade` VALUES ('824', '43', '282', '多选题', '3', '0');
INSERT INTO `question_grade` VALUES ('825', '43', '283', '多选题', '4', '0');
INSERT INTO `question_grade` VALUES ('826', '43', '284', '多选题', '5', '2');
INSERT INTO `question_grade` VALUES ('827', '43', '285', '多选题', '6', '2');
INSERT INTO `question_grade` VALUES ('828', '43', '286', '多选题', '7', '2');
INSERT INTO `question_grade` VALUES ('829', '43', '287', '多选题', '8', '2');
INSERT INTO `question_grade` VALUES ('830', '43', '288', '多选题', '9', '2');
INSERT INTO `question_grade` VALUES ('831', '43', '289', '多选题', '10', '0');
INSERT INTO `question_grade` VALUES ('832', '43', '290', '简答题', '1', '10');
INSERT INTO `question_grade` VALUES ('833', '43', '291', '简答题', '2', '0');
INSERT INTO `question_grade` VALUES ('834', '43', '292', '简答题', '3', '10');
INSERT INTO `question_grade` VALUES ('835', '43', '293', '简答题', '4', '10');
INSERT INTO `question_grade` VALUES ('836', '43', '294', '简答题', '5', '10');
INSERT INTO `question_grade` VALUES ('837', '43', '295', '简答题', '6', '10');
INSERT INTO `question_grade` VALUES ('838', '43', '296', '简答题', '7', '10');
INSERT INTO `question_grade` VALUES ('839', '44', '270', '单选题', '1', '1');
INSERT INTO `question_grade` VALUES ('840', '44', '271', '单选题', '2', '1');
INSERT INTO `question_grade` VALUES ('841', '44', '272', '单选题', '3', '1');
INSERT INTO `question_grade` VALUES ('842', '44', '273', '单选题', '4', '1');
INSERT INTO `question_grade` VALUES ('843', '44', '274', '单选题', '5', '1');
INSERT INTO `question_grade` VALUES ('844', '44', '275', '单选题', '6', '1');
INSERT INTO `question_grade` VALUES ('845', '44', '276', '单选题', '7', '1');
INSERT INTO `question_grade` VALUES ('846', '44', '277', '单选题', '8', '1');
INSERT INTO `question_grade` VALUES ('847', '44', '278', '单选题', '9', '1');
INSERT INTO `question_grade` VALUES ('848', '44', '279', '单选题', '10', '1');
INSERT INTO `question_grade` VALUES ('849', '44', '280', '多选题', '1', '2');
INSERT INTO `question_grade` VALUES ('850', '44', '281', '多选题', '2', '2');
INSERT INTO `question_grade` VALUES ('851', '44', '282', '多选题', '3', '2');
INSERT INTO `question_grade` VALUES ('852', '44', '283', '多选题', '4', '0');
INSERT INTO `question_grade` VALUES ('853', '44', '284', '多选题', '5', '0');
INSERT INTO `question_grade` VALUES ('854', '44', '285', '多选题', '6', '2');
INSERT INTO `question_grade` VALUES ('855', '44', '286', '多选题', '7', '2');
INSERT INTO `question_grade` VALUES ('856', '44', '287', '多选题', '8', '2');
INSERT INTO `question_grade` VALUES ('857', '44', '288', '多选题', '9', '0');
INSERT INTO `question_grade` VALUES ('858', '44', '289', '多选题', '10', '2');
INSERT INTO `question_grade` VALUES ('859', '44', '290', '简答题', '1', '10');
INSERT INTO `question_grade` VALUES ('860', '44', '291', '简答题', '2', '10');
INSERT INTO `question_grade` VALUES ('861', '44', '292', '简答题', '3', '10');
INSERT INTO `question_grade` VALUES ('862', '44', '293', '简答题', '4', '10');
INSERT INTO `question_grade` VALUES ('863', '44', '294', '简答题', '5', '0');
INSERT INTO `question_grade` VALUES ('864', '44', '295', '简答题', '6', '10');
INSERT INTO `question_grade` VALUES ('865', '44', '296', '简答题', '7', '6');
INSERT INTO `question_grade` VALUES ('866', '45', '270', '单选题', '1', '1');
INSERT INTO `question_grade` VALUES ('867', '45', '271', '单选题', '2', '1');
INSERT INTO `question_grade` VALUES ('868', '45', '272', '单选题', '3', '1');
INSERT INTO `question_grade` VALUES ('869', '45', '273', '单选题', '4', '1');
INSERT INTO `question_grade` VALUES ('870', '45', '274', '单选题', '5', '1');
INSERT INTO `question_grade` VALUES ('871', '45', '275', '单选题', '6', '1');
INSERT INTO `question_grade` VALUES ('872', '45', '276', '单选题', '7', '1');
INSERT INTO `question_grade` VALUES ('873', '45', '277', '单选题', '8', '1');
INSERT INTO `question_grade` VALUES ('874', '45', '278', '单选题', '9', '1');
INSERT INTO `question_grade` VALUES ('875', '45', '279', '单选题', '10', '1');
INSERT INTO `question_grade` VALUES ('876', '45', '280', '多选题', '1', '2');
INSERT INTO `question_grade` VALUES ('877', '45', '281', '多选题', '2', '2');
INSERT INTO `question_grade` VALUES ('878', '45', '282', '多选题', '3', '2');
INSERT INTO `question_grade` VALUES ('879', '45', '283', '多选题', '4', '2');
INSERT INTO `question_grade` VALUES ('880', '45', '284', '多选题', '5', '2');
INSERT INTO `question_grade` VALUES ('881', '45', '285', '多选题', '6', '2');
INSERT INTO `question_grade` VALUES ('882', '45', '286', '多选题', '7', '2');
INSERT INTO `question_grade` VALUES ('883', '45', '287', '多选题', '8', '2');
INSERT INTO `question_grade` VALUES ('884', '45', '288', '多选题', '9', '2');
INSERT INTO `question_grade` VALUES ('885', '45', '289', '多选题', '10', '2');
INSERT INTO `question_grade` VALUES ('886', '45', '290', '简答题', '1', '3');
INSERT INTO `question_grade` VALUES ('887', '45', '291', '简答题', '2', '10');
INSERT INTO `question_grade` VALUES ('888', '45', '292', '简答题', '3', '10');
INSERT INTO `question_grade` VALUES ('889', '45', '293', '简答题', '4', '10');
INSERT INTO `question_grade` VALUES ('890', '45', '294', '简答题', '5', '0');
INSERT INTO `question_grade` VALUES ('891', '45', '295', '简答题', '6', '0');
INSERT INTO `question_grade` VALUES ('892', '45', '296', '简答题', '7', '0');

-- ----------------------------
-- Table structure for `question_score`
-- ----------------------------
DROP TABLE IF EXISTS `question_score`;
CREATE TABLE `question_score` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `testPaperId` int(11) DEFAULT NULL,
  `questionId` int(11) DEFAULT NULL,
  `queType` varchar(20) DEFAULT NULL COMMENT '中文表示：如单选题',
  `sortNum` int(11) DEFAULT NULL COMMENT '试题排序号',
  `chapterId` int(11) DEFAULT NULL,
  `knowIds` varchar(255) DEFAULT NULL,
  `queScore` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `testPaperId` (`testPaperId`),
  CONSTRAINT `question_score_ibfk_1` FOREIGN KEY (`testPaperId`) REFERENCES `test_paper` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=427 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of question_score
-- ----------------------------
INSERT INTO `question_score` VALUES ('270', '19', null, '单选题', '1', '4', '17', '1');
INSERT INTO `question_score` VALUES ('271', '19', null, '单选题', '2', '6', '17@18@19', '1');
INSERT INTO `question_score` VALUES ('272', '19', null, '单选题', '3', '3', '20', '1');
INSERT INTO `question_score` VALUES ('273', '19', null, '单选题', '4', '2', '17@18@19', '1');
INSERT INTO `question_score` VALUES ('274', '19', null, '单选题', '5', '4', '17@18@19', '1');
INSERT INTO `question_score` VALUES ('275', '19', null, '单选题', '6', '4', '20', '1');
INSERT INTO `question_score` VALUES ('276', '19', null, '单选题', '7', '3', '20', '1');
INSERT INTO `question_score` VALUES ('277', '19', null, '单选题', '8', '5', '25', '1');
INSERT INTO `question_score` VALUES ('278', '19', null, '单选题', '9', '3', '22', '1');
INSERT INTO `question_score` VALUES ('279', '19', null, '单选题', '10', '5', '23@24@25', '1');
INSERT INTO `question_score` VALUES ('280', '19', null, '多选题', '1', '3', '20', '2');
INSERT INTO `question_score` VALUES ('281', '19', null, '多选题', '2', '3', '20', '2');
INSERT INTO `question_score` VALUES ('282', '19', null, '多选题', '3', '5', '17@18@19', '2');
INSERT INTO `question_score` VALUES ('283', '19', null, '多选题', '4', '2', '20', '2');
INSERT INTO `question_score` VALUES ('284', '19', null, '多选题', '5', '4', '20', '2');
INSERT INTO `question_score` VALUES ('285', '19', null, '多选题', '6', '7', '20', '2');
INSERT INTO `question_score` VALUES ('286', '19', null, '多选题', '7', '6', '35@36@37@38', '2');
INSERT INTO `question_score` VALUES ('287', '19', null, '多选题', '8', '3', '21@22', '2');
INSERT INTO `question_score` VALUES ('288', '19', null, '多选题', '9', '6', '21@22', '2');
INSERT INTO `question_score` VALUES ('289', '19', null, '多选题', '10', '7', '30@31@32', '2');
INSERT INTO `question_score` VALUES ('290', '19', null, '简答题', '1', '2', '17@18@19', '10');
INSERT INTO `question_score` VALUES ('291', '19', null, '简答题', '2', '3', '20', '10');
INSERT INTO `question_score` VALUES ('292', '19', null, '简答题', '3', '4', '20', '10');
INSERT INTO `question_score` VALUES ('293', '19', null, '简答题', '4', '5', '22', '10');
INSERT INTO `question_score` VALUES ('294', '19', null, '简答题', '5', '6', '29', '10');
INSERT INTO `question_score` VALUES ('295', '19', null, '简答题', '6', '7', '23@24@25', '10');
INSERT INTO `question_score` VALUES ('296', '19', null, '简答题', '7', '6', '29', '10');
INSERT INTO `question_score` VALUES ('297', '13', '6', '单选题', '1', '8', '34', '1');
INSERT INTO `question_score` VALUES ('298', '13', '6', '单选题', '2', '8', '34', '1');
INSERT INTO `question_score` VALUES ('299', '13', '7', '单选题', '3', '7', '30', '1');
INSERT INTO `question_score` VALUES ('300', '13', '7', '单选题', '4', '7', '30', '1');
INSERT INTO `question_score` VALUES ('301', '13', '2', '单选题', '5', '3', '20', '1');
INSERT INTO `question_score` VALUES ('302', '13', '2', '单选题', '6', '3', '20', '1');
INSERT INTO `question_score` VALUES ('303', '13', '8', '单选题', '7', '11', '41', '1');
INSERT INTO `question_score` VALUES ('304', '13', '5', '单选题', '8', '6', '26', '1');
INSERT INTO `question_score` VALUES ('305', '13', '5', '单选题', '9', '6', '26', '1');
INSERT INTO `question_score` VALUES ('306', '13', '2', '多选题', '1', '1', '15', '2');
INSERT INTO `question_score` VALUES ('307', '13', '2', '多选题', '2', '1', '15', '2');
INSERT INTO `question_score` VALUES ('308', '13', '2', '多选题', '3', '1', '15', '2');
INSERT INTO `question_score` VALUES ('309', '13', '1', '多选题', '4', '6', '26', '2');
INSERT INTO `question_score` VALUES ('310', '13', '1', '多选题', '5', '6', '26', '2');
INSERT INTO `question_score` VALUES ('311', '13', '1', '多选题', '6', '6', '26', '2');
INSERT INTO `question_score` VALUES ('312', '13', '3', '多选题', '7', '5', '25', '2');
INSERT INTO `question_score` VALUES ('313', '13', '3', '多选题', '8', '5', '25', '2');
INSERT INTO `question_score` VALUES ('314', '13', '3', '多选题', '9', '5', '25', '2');
INSERT INTO `question_score` VALUES ('315', '13', '1', '判断题', '1', '2', '17', '1');
INSERT INTO `question_score` VALUES ('316', '13', '1', '判断题', '2', '2', '17', '1');
INSERT INTO `question_score` VALUES ('317', '13', '1', '判断题', '3', '2', '17', '1');
INSERT INTO `question_score` VALUES ('318', '13', '10', '判断题', '4', '1', '15', '1');
INSERT INTO `question_score` VALUES ('319', '13', '5', '判断题', '5', '1', '16', '1');
INSERT INTO `question_score` VALUES ('320', '13', '5', '判断题', '6', '1', '16', '1');
INSERT INTO `question_score` VALUES ('321', '13', '8', '判断题', '7', '2', '17', '1');
INSERT INTO `question_score` VALUES ('322', '13', '8', '判断题', '8', '2', '17', '1');
INSERT INTO `question_score` VALUES ('323', '13', '9', '判断题', '9', '5', '25', '1');
INSERT INTO `question_score` VALUES ('324', '13', '7', '判断题', '10', '2', '19', '1');
INSERT INTO `question_score` VALUES ('325', '13', '7', '判断题', '11', '2', '19', '1');
INSERT INTO `question_score` VALUES ('326', '13', '2', '填空题', '1', '12', '42', '2');
INSERT INTO `question_score` VALUES ('327', '13', '3', '填空题', '2', '2', '17', '2');
INSERT INTO `question_score` VALUES ('328', '13', '1', '填空题', '3', '4', '25', '2');
INSERT INTO `question_score` VALUES ('329', '13', '1', '简答题', '1', '8', '34@20', '77');
INSERT INTO `question_score` VALUES ('330', '1', '1', '单选题', '1', '2', '20', '1');
INSERT INTO `question_score` VALUES ('331', '1', '2', '单选题', '2', '3', '20', '1');
INSERT INTO `question_score` VALUES ('332', '1', '2', '单选题', '3', '3', '20', '1');
INSERT INTO `question_score` VALUES ('333', '1', '2', '单选题', '4', '3', '20', '1');
INSERT INTO `question_score` VALUES ('334', '1', '3', '单选题', '5', '7', '30', '1');
INSERT INTO `question_score` VALUES ('335', '1', '3', '单选题', '6', '7', '30', '1');
INSERT INTO `question_score` VALUES ('336', '1', '4', '单选题', '7', '6', '26', '1');
INSERT INTO `question_score` VALUES ('337', '1', '5', '单选题', '8', '6', '26', '1');
INSERT INTO `question_score` VALUES ('338', '1', '5', '单选题', '9', '6', '26', '1');
INSERT INTO `question_score` VALUES ('339', '1', '5', '单选题', '10', '6', '26', '1');
INSERT INTO `question_score` VALUES ('340', '1', '1', '多选题', '1', '6', '26', '2');
INSERT INTO `question_score` VALUES ('341', '1', '1', '多选题', '2', '6', '26', '2');
INSERT INTO `question_score` VALUES ('342', '1', '1', '多选题', '3', '6', '26', '2');
INSERT INTO `question_score` VALUES ('343', '1', '1', '多选题', '4', '6', '26', '2');
INSERT INTO `question_score` VALUES ('344', '1', '1', '多选题', '5', '6', '26', '2');
INSERT INTO `question_score` VALUES ('345', '1', '2', '多选题', '6', '1', '15', '2');
INSERT INTO `question_score` VALUES ('346', '1', '2', '多选题', '7', '1', '15', '2');
INSERT INTO `question_score` VALUES ('347', '1', '2', '多选题', '8', '1', '15', '2');
INSERT INTO `question_score` VALUES ('348', '1', '2', '多选题', '9', '1', '15', '2');
INSERT INTO `question_score` VALUES ('349', '1', '2', '多选题', '10', '1', '15', '2');
INSERT INTO `question_score` VALUES ('350', '1', '3', '多选题', '11', '5', '25', '2');
INSERT INTO `question_score` VALUES ('351', '1', '3', '多选题', '12', '5', '25', '2');
INSERT INTO `question_score` VALUES ('352', '1', '3', '多选题', '13', '5', '25', '2');
INSERT INTO `question_score` VALUES ('353', '1', '3', '多选题', '14', '5', '25', '2');
INSERT INTO `question_score` VALUES ('354', '1', '3', '多选题', '15', '5', '25', '2');
INSERT INTO `question_score` VALUES ('355', '1', '1', '判断题', '1', '2', '17', '2');
INSERT INTO `question_score` VALUES ('356', '1', '1', '判断题', '2', '2', '17', '2');
INSERT INTO `question_score` VALUES ('357', '1', '1', '判断题', '3', '2', '17', '2');
INSERT INTO `question_score` VALUES ('358', '1', '1', '判断题', '4', '2', '17', '2');
INSERT INTO `question_score` VALUES ('359', '1', '1', '判断题', '5', '2', '17', '2');
INSERT INTO `question_score` VALUES ('360', '1', '2', '判断题', '6', '2', '17', '2');
INSERT INTO `question_score` VALUES ('361', '1', '3', '判断题', '7', '2', '17', '2');
INSERT INTO `question_score` VALUES ('362', '1', '4', '判断题', '8', '2', '17', '2');
INSERT INTO `question_score` VALUES ('363', '1', '4', '判断题', '9', '2', '17', '2');
INSERT INTO `question_score` VALUES ('364', '1', '1', '填空题', '1', '4', '25', '2');
INSERT INTO `question_score` VALUES ('365', '1', '2', '填空题', '2', '12', '42', '3');
INSERT INTO `question_score` VALUES ('366', '1', '3', '填空题', '3', '2', '17', '2');
INSERT INTO `question_score` VALUES ('367', '12', '3', '单选题', '1', '7', '30', '10');
INSERT INTO `question_score` VALUES ('368', '12', '3', '单选题', '2', '7', '30', '10');
INSERT INTO `question_score` VALUES ('369', '12', '3', '单选题', '3', '7', '30', '10');
INSERT INTO `question_score` VALUES ('370', '12', '6', '单选题', '4', '8', '34', '10');
INSERT INTO `question_score` VALUES ('371', '12', '6', '单选题', '5', '8', '34', '10');
INSERT INTO `question_score` VALUES ('372', '12', '6', '单选题', '6', '8', '34', '10');
INSERT INTO `question_score` VALUES ('373', '12', '7', '单选题', '7', '7', '30', '10');
INSERT INTO `question_score` VALUES ('374', '12', '7', '单选题', '8', '7', '30', '10');
INSERT INTO `question_score` VALUES ('375', '12', '7', '单选题', '9', '7', '30', '10');
INSERT INTO `question_score` VALUES ('376', '12', '3', '多选题', '1', '5', '25', '20');
INSERT INTO `question_score` VALUES ('377', '12', '3', '多选题', '2', '5', '25', '20');
INSERT INTO `question_score` VALUES ('378', '12', '3', '多选题', '3', '5', '25', '20');
INSERT INTO `question_score` VALUES ('379', '12', '3', '多选题', '4', '5', '25', '20');
INSERT INTO `question_score` VALUES ('380', '12', '3', '多选题', '5', '5', '25', '20');
INSERT INTO `question_score` VALUES ('381', '12', '3', '多选题', '6', '5', '25', '20');
INSERT INTO `question_score` VALUES ('382', '12', '3', '多选题', '7', '5', '25', '20');
INSERT INTO `question_score` VALUES ('383', '12', '3', '多选题', '8', '5', '25', '20');
INSERT INTO `question_score` VALUES ('384', '12', '3', '多选题', '9', '5', '25', '20');
INSERT INTO `question_score` VALUES ('385', '12', '2', '多选题', '10', '1', '15', '20');
INSERT INTO `question_score` VALUES ('386', '12', '2', '多选题', '11', '1', '15', '20');
INSERT INTO `question_score` VALUES ('387', '12', '2', '多选题', '12', '1', '15', '20');
INSERT INTO `question_score` VALUES ('388', '12', '2', '多选题', '13', '1', '15', '20');
INSERT INTO `question_score` VALUES ('389', '12', '2', '多选题', '14', '1', '15', '20');
INSERT INTO `question_score` VALUES ('390', '12', '2', '多选题', '15', '1', '15', '20');
INSERT INTO `question_score` VALUES ('391', '12', '2', '多选题', '16', '1', '15', '20');
INSERT INTO `question_score` VALUES ('392', '12', '2', '多选题', '17', '1', '15', '20');
INSERT INTO `question_score` VALUES ('393', '12', '2', '多选题', '18', '1', '15', '20');
INSERT INTO `question_score` VALUES ('394', '12', '1', '多选题', '19', '6', '26', '20');
INSERT INTO `question_score` VALUES ('395', '12', '1', '多选题', '20', '6', '26', '20');
INSERT INTO `question_score` VALUES ('396', '12', '1', '多选题', '21', '6', '26', '20');
INSERT INTO `question_score` VALUES ('397', '12', '1', '多选题', '22', '6', '26', '20');
INSERT INTO `question_score` VALUES ('398', '12', '1', '多选题', '23', '6', '26', '20');
INSERT INTO `question_score` VALUES ('399', '12', '1', '多选题', '24', '6', '26', '20');
INSERT INTO `question_score` VALUES ('400', '12', '1', '多选题', '25', '6', '26', '20');
INSERT INTO `question_score` VALUES ('401', '12', '1', '多选题', '26', '6', '26', '20');
INSERT INTO `question_score` VALUES ('402', '12', '1', '多选题', '27', '6', '26', '20');
INSERT INTO `question_score` VALUES ('403', '12', '5', '判断题', '1', '1', '16', '1');
INSERT INTO `question_score` VALUES ('404', '12', '5', '判断题', '2', '1', '16', '1');
INSERT INTO `question_score` VALUES ('405', '12', '5', '判断题', '3', '1', '16', '1');
INSERT INTO `question_score` VALUES ('406', '12', '1', '判断题', '4', '2', '17', '1');
INSERT INTO `question_score` VALUES ('407', '12', '1', '判断题', '5', '2', '17', '1');
INSERT INTO `question_score` VALUES ('408', '12', '1', '判断题', '6', '2', '17', '1');
INSERT INTO `question_score` VALUES ('409', '12', '1', '判断题', '7', '2', '17', '1');
INSERT INTO `question_score` VALUES ('410', '12', '1', '判断题', '8', '2', '17', '1');
INSERT INTO `question_score` VALUES ('411', '12', '1', '判断题', '9', '2', '17', '1');
INSERT INTO `question_score` VALUES ('412', '12', '1', '判断题', '10', '2', '17', '1');
INSERT INTO `question_score` VALUES ('413', '12', '1', '判断题', '11', '2', '17', '1');
INSERT INTO `question_score` VALUES ('414', '12', '1', '判断题', '12', '2', '17', '1');
INSERT INTO `question_score` VALUES ('415', '12', '7', '判断题', '13', '2', '19', '1');
INSERT INTO `question_score` VALUES ('416', '12', '7', '判断题', '14', '2', '19', '1');
INSERT INTO `question_score` VALUES ('417', '12', '7', '判断题', '15', '2', '19', '1');
INSERT INTO `question_score` VALUES ('418', '12', '6', '判断题', '16', '1', '16', '1');
INSERT INTO `question_score` VALUES ('419', '12', '4', '判断题', '17', '2', '17', '1');
INSERT INTO `question_score` VALUES ('420', '12', '4', '判断题', '18', '2', '17', '1');
INSERT INTO `question_score` VALUES ('421', '12', '4', '判断题', '19', '2', '17', '1');
INSERT INTO `question_score` VALUES ('422', '12', '8', '判断题', '20', '2', '17', '1');
INSERT INTO `question_score` VALUES ('423', '12', '8', '判断题', '21', '2', '17', '1');
INSERT INTO `question_score` VALUES ('424', '12', '8', '判断题', '22', '2', '17', '1');
INSERT INTO `question_score` VALUES ('425', '12', '2', '填空题', '1', '12', '42', '2');
INSERT INTO `question_score` VALUES ('426', '12', '1', '简答题', '1', '8', '34@20', '1');

-- ----------------------------
-- Table structure for `que_type`
-- ----------------------------
DROP TABLE IF EXISTS `que_type`;
CREATE TABLE `que_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of que_type
-- ----------------------------
INSERT INTO `que_type` VALUES ('1', '单选题');
INSERT INTO `que_type` VALUES ('2', '多选题');
INSERT INTO `que_type` VALUES ('3', '判断题');
INSERT INTO `que_type` VALUES ('4', '填空题');
INSERT INTO `que_type` VALUES ('5', '简答题');

-- ----------------------------
-- Table structure for `role`
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  `nameZh` varchar(64) DEFAULT NULL COMMENT '角色名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', 'ROLE_teacher', '任课教师');
INSERT INTO `role` VALUES ('2', 'ROLE_coursemanager', '课程负责人');
INSERT INTO `role` VALUES ('3', 'ROLE_admin', '系统管理员');

-- ----------------------------
-- Table structure for `school`
-- ----------------------------
DROP TABLE IF EXISTS `school`;
CREATE TABLE `school` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL COMMENT '学院名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of school
-- ----------------------------
INSERT INTO `school` VALUES ('1', '软件学院、数据科学与技术系');
INSERT INTO `school` VALUES ('2', '计算机学院');
INSERT INTO `school` VALUES ('4', '外国语学院');
INSERT INTO `school` VALUES ('5', '纺织学院');
INSERT INTO `school` VALUES ('6', '能源与环境学院');
INSERT INTO `school` VALUES ('7', '机电学院');
INSERT INTO `school` VALUES ('8', '电子信息学院');
INSERT INTO `school` VALUES ('9', '材料与化工学院');
INSERT INTO `school` VALUES ('10', '建筑工程学院');
INSERT INTO `school` VALUES ('11', '服装学院');
INSERT INTO `school` VALUES ('12', '艺术设计学院');
INSERT INTO `school` VALUES ('13', '经济管理学院');
INSERT INTO `school` VALUES ('14', '新闻与传播学院');
INSERT INTO `school` VALUES ('15', '法学院、知识产权学院');
INSERT INTO `school` VALUES ('16', '理学院');
INSERT INTO `school` VALUES ('17', '马克思主义学院');

-- ----------------------------
-- Table structure for `sc_question`
-- ----------------------------
DROP TABLE IF EXISTS `sc_question`;
CREATE TABLE `sc_question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `knowIds` varchar(255) DEFAULT NULL,
  `stem` text NOT NULL,
  `option1` text NOT NULL,
  `option2` text,
  `option3` text,
  `option4` text,
  `answer` varchar(8) DEFAULT NULL,
  `analysis` text,
  `teacherId` int(11) NOT NULL,
  `checkTeacherId` int(11) NOT NULL,
  `courseId` int(11) DEFAULT NULL,
  `chapterId` int(11) DEFAULT NULL,
  `dot` tinyint(4) DEFAULT NULL COMMENT '试题难度',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0代表未审核，1代表已通过，2代表拒绝',
  `updateTime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `chapterId` (`chapterId`),
  CONSTRAINT `sc_question_ibfk_1` FOREIGN KEY (`chapterId`) REFERENCES `chapter` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sc_question
-- ----------------------------
INSERT INTO `sc_question` VALUES ('1', '20', '执行以下程序段后的输出结果是______ 。', '11 10', '11 11', '10 11', '10 10', 'A', '无', '3', '3', '6', '2', '1', '0', null);
INSERT INTO `sc_question` VALUES ('2', '20', '以下程序的输出结果是_____。\n#include <stdio.h>\nvoid main(void)\n{\nint a = 7;\nfloat x = 2.5, y = 4.7;\nprintf(\"%f\", x+a%3*(int)(x+y)%2/4);\n }', '0', '2.75', '2', '2.5', 'D', '', '3', '3', '6', '3', '1', '0', null);
INSERT INTO `sc_question` VALUES ('3', '30', '以下关于数组的描述正确的是 ______。', '数组的大小是固定的，但可以有不同类型的数组元素。', '数组的大小是可变的，但所有的数组元改变可素必须是相同类型的元素。', '数组的大小是固定的，所有数组元素的数据类型必须相同。', '数组的大小是可变的，可以有不同类型的数组元素。', 'C', '', '3', '3', '6', '7', '1', '0', null);
INSERT INTO `sc_question` VALUES ('4', '26', '以下C语言中，对函数不正确的描述是________。', '当用数组名作形参时，形参数组使实参数组随之改变', '允许函数递归调用', '函数形参的作用范围只是局限于所定义的函数内', '函数定义必须在主调函数之前', 'D', '', '3', '3', '6', '6', '1', '0', null);
INSERT INTO `sc_question` VALUES ('5', '26', '函数调用:strcat(strcpy(str1,str2),str3)的功能是_______。', '将串str1复制到串str2中后再连接到串str3之后', '将串str1连接到串str2之后再复制到串str3之后', '将串str2复制到串str1中后再将串str3连接到串str1之后', '将串str2连接到串str1之后再将串str1复制到串str3中', 'A', '', '3', '3', '6', '6', '1', '0', null);
INSERT INTO `sc_question` VALUES ('6', '34', '若有语句：char *line[5];，以下叙述中正确的是______。', '定义line是一个数组，每个数组元素是一个类型为char的指针变量', '定义line是一个指针变量，该变量可以指向一个长度为5的字符型数组', '定义line是一个指针数组，语句中的*号称为间址运算符', '定义line是一个指向字符型函数的指针', 'A', '', '3', '3', '6', '8', '1', '0', null);
INSERT INTO `sc_question` VALUES ('7', '30', '程序设计中，若用数组名作为函数调用的实参，传递给形参的是______。', '数组第一个元素的值', '数组中全部元素的值', '数组元素的个数', '数组的首地址', 'D', '', '3', '3', '6', '7', '2', '0', null);
INSERT INTO `sc_question` VALUES ('8', '41', '设有以下说明语句\nstruct stu\n{ int a;    \n  float b;\n}stutype;\n则下面的叙述不正确的是_____ 。', 'struct是结构体类型的关键字', 'stu是用户定义的结构体类型名', 'stutype是用户定义的结构体类型名', 'a和b都是结构体成员名', 'C', '', '3', '3', '6', '11', '1', '0', null);

-- ----------------------------
-- Table structure for `semester`
-- ----------------------------
DROP TABLE IF EXISTS `semester`;
CREATE TABLE `semester` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of semester
-- ----------------------------
INSERT INTO `semester` VALUES ('1', '2018-2019学年第一学期');
INSERT INTO `semester` VALUES ('2', '2018-2019学年第二学期');
INSERT INTO `semester` VALUES ('3', '2019-2020学年第一学期');
INSERT INTO `semester` VALUES ('4', '2019-2020学年第二学期');

-- ----------------------------
-- Table structure for `student`
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `studentNum` varchar(20) DEFAULT NULL,
  `gender` char(4) DEFAULT NULL,
  `userface` varchar(255) DEFAULT NULL,
  `enabled` tinyint(4) DEFAULT '1',
  `classId` int(11) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `classId` (`classId`),
  CONSTRAINT `student_ibfk_1` FOREIGN KEY (`classId`) REFERENCES `class` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('2', '王晨雨', '201619040106', null, '201619040106', '男', null, '1', '5', null);
INSERT INTO `student` VALUES ('3', '张凯帆', '201619040139', null, '201619040139', '男', null, '1', '5', null);
INSERT INTO `student` VALUES ('4', '史晓松', '201619040117', null, '201619040117', '男', null, '1', '5', null);
INSERT INTO `student` VALUES ('5', '刘震', '201619040129', null, '201619040129', '男', null, '1', '5', null);
INSERT INTO `student` VALUES ('6', '魏汉文', '201619040140', null, '201619040140', '男', null, '1', '5', null);
INSERT INTO `student` VALUES ('7', '胡明乐', '201619040130', null, '201619040130', '男', null, '1', '5', null);
INSERT INTO `student` VALUES ('8', '杜思尧', '201619040108', null, '201619040108', '男', null, '1', '5', null);
INSERT INTO `student` VALUES ('9', '樊鑫', '201619040119', null, '201619040119', '男', null, '1', '5', null);
INSERT INTO `student` VALUES ('10', '袁野', '201619040131', null, '201619040131', '男', null, '1', '5', null);
INSERT INTO `student` VALUES ('11', '孙威', '201619040109', null, '201619040109', '男', null, '1', '5', null);
INSERT INTO `student` VALUES ('12', '岳鹏帆', '201619040120', null, '201619040120', '男', null, '1', '5', null);
INSERT INTO `student` VALUES ('13', '朱卫钢', '201619040132', null, '201619040132', '男', null, '1', '5', null);
INSERT INTO `student` VALUES ('14', '赵广', '201619040110', null, '201619040110', '男', null, '1', '5', null);
INSERT INTO `student` VALUES ('15', '李伟华', '201619040133', null, '201619040133', '男', null, '1', '5', null);
INSERT INTO `student` VALUES ('16', '赵晓阳', '201619040111', null, '201619040111', '男', null, '1', '5', null);
INSERT INTO `student` VALUES ('17', '曹媛媛', '201619040101', null, '201619040101', '女', null, '1', '5', null);
INSERT INTO `student` VALUES ('18', '谢天', '201619040134', null, '201619040134', '男', null, '1', '5', null);
INSERT INTO `student` VALUES ('19', '李无焱', '201619040112', null, '201619040112', '男', null, '1', '5', null);
INSERT INTO `student` VALUES ('20', '武佳琪', '201619040102', null, '201619040102', '男', null, '1', '5', null);
INSERT INTO `student` VALUES ('21', '杜圣', '201619040135', null, '201619040135', '男', null, '1', '5', null);
INSERT INTO `student` VALUES ('22', '梁超', '201619040113', null, '201619040113', '男', null, '1', '5', null);

-- ----------------------------
-- Table structure for `student_grade`
-- ----------------------------
DROP TABLE IF EXISTS `student_grade`;
CREATE TABLE `student_grade` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `studentNum` varchar(20) DEFAULT NULL COMMENT '学生学号',
  `studentName` varchar(20) DEFAULT NULL,
  `courseId` int(11) DEFAULT NULL,
  `testPaperId` int(11) DEFAULT NULL,
  `totalGrade` float DEFAULT NULL,
  `classId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student_grade
-- ----------------------------
INSERT INTO `student_grade` VALUES ('32', '201619040106', '王晨雨', '6', '19', '78', '5');
INSERT INTO `student_grade` VALUES ('33', '201619040139', '张凯帆', '6', '19', '86', '5');
INSERT INTO `student_grade` VALUES ('34', '201619040117', '史晓松', '6', '19', '75', '5');
INSERT INTO `student_grade` VALUES ('35', '201619040129', '刘震', '6', '19', '91', '5');
INSERT INTO `student_grade` VALUES ('36', '201619040140', '魏汉文', '6', '19', '80', '5');
INSERT INTO `student_grade` VALUES ('37', '201619040130', '胡明乐', '6', '19', '59', '5');
INSERT INTO `student_grade` VALUES ('38', '201619040108', '杜思尧', '6', '19', '79', '5');
INSERT INTO `student_grade` VALUES ('39', '201619040119', '樊鑫', '6', '19', '98', '5');
INSERT INTO `student_grade` VALUES ('40', '201619040101', '曹媛媛', '6', '19', '81', '5');
INSERT INTO `student_grade` VALUES ('41', '201619040109', '孙威', '6', '19', '85', '5');
INSERT INTO `student_grade` VALUES ('42', '201619040120', '岳鹏帆', '6', '19', '90', '5');
INSERT INTO `student_grade` VALUES ('43', '201619040133', '李伟华', '6', '19', '84', '5');
INSERT INTO `student_grade` VALUES ('44', '201619040111', '赵晓阳', '6', '19', '80', '5');
INSERT INTO `student_grade` VALUES ('45', '201619040112', '李无焱', '6', '19', '63', '5');

-- ----------------------------
-- Table structure for `teacher`
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'adminstratorID',
  `name` varchar(32) DEFAULT NULL COMMENT '姓名',
  `phone` char(11) DEFAULT NULL COMMENT '手机号码',
  `enabled` tinyint(1) DEFAULT '1',
  `username` varchar(255) DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `userface` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `departmentId` int(11) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `jobLevelId` int(11) DEFAULT NULL COMMENT '职称',
  `gender` char(4) DEFAULT NULL,
  `workID` char(12) DEFAULT NULL,
  `rId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `workid` (`workID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1556 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('3', '系统管理员', '18568887789', '1', 'admin', '$2a$10$ySG2lkvjFHY5O0./CPIE1OI8VJsuKYEzOYzqIa7AJR6sEgSzUFOAm', 'http://bpic.588ku.com/element_pic/01/40/00/64573ce2edc0728.jpg', null, '2', '123@qq.com', '9', '男', '0001', null);
INSERT INTO `teacher` VALUES ('10', '韩愈', '18568123666', '1', 'hanyu', '$2a$10$oE39aG10kB/rFu2vQeCJTu/V/v4n6DRR0f8WyXRiAYvBpmadoOBE.', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1517070040185&di=be0375e0c3db6c311b837b28c208f318&imgtype=0&src=http%3A%2F%2Fimg2.soyoung.com%2Fpost%2F20150213%2F6%2F20150213141918532.jpg', null, '2', '123@qq.com', '12', '男', '0003', null);
INSERT INTO `teacher` VALUES ('11', '柳宗元', '18568123377', '1', 'liuzongyuan', '$2a$10$oE39aG10kB/rFu2vQeCJTu/V/v4n6DRR0f8WyXRiAYvBpmadoOBE.', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1515233756&di=0856d923a0a37a87fd26604a2c871370&imgtype=jpg&er=1&src=http%3A%2F%2Fwww.qqzhi.com%2Fuploadpic%2F2014-09-27%2F041716704.jpg', null, '2', '123@qq.com', '9', '男', '0004', null);
INSERT INTO `teacher` VALUES ('12', '曾巩', '18568128888', '1', 'zenggong', '$2a$10$oE39aG10kB/rFu2vQeCJTu/V/v4n6DRR0f8WyXRiAYvBpmadoOBE.', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1517070040185&di=be0375e0c3db6c311b837b28c208f318&imgtype=0&src=http%3A%2F%2Fimg2.soyoung.com%2Fpost%2F20150213%2F6%2F20150213141918532.jpg', null, '2', '123@qq.com', '9', '男', '0005', null);
INSERT INTO `teacher` VALUES ('1540', '测试111', '18639694397', '1', '7878', null, null, null, '2', '123@qq.com', '9', '男', '7878', null);
INSERT INTO `teacher` VALUES ('1541', '测试222', '18639694397', '1', '9696', null, null, null, '2', '123@qq.com', '10', '男', '9696', null);
INSERT INTO `teacher` VALUES ('1542', '测试333', '18639694397', '1', '2525', null, null, null, '2', '123@qq.com', '12', '男', '2525', null);
INSERT INTO `teacher` VALUES ('1543', '测试444', '18639694397', '1', '3355', null, null, null, '2', '123@qq.com', '13', '男', '3355', null);
INSERT INTO `teacher` VALUES ('1544', '测试111', '18639694397', '1', '7811', null, null, null, '2', '123@qq.com', '9', '男', '7811', null);
INSERT INTO `teacher` VALUES ('1545', '测试222', '18639694397', '1', '9611', null, null, null, '2', '123@qq.com', '10', '男', '9611', null);
INSERT INTO `teacher` VALUES ('1546', '测试333', '18639694397', '1', '2511', null, null, null, '2', '123@qq.com', '12', '男', '2511', null);
INSERT INTO `teacher` VALUES ('1547', '测试444', '18639694397', '1', '3311', null, null, null, '2', '123@qq.com', '13', '男', '3311', null);
INSERT INTO `teacher` VALUES ('1548', '测试111', '18639694397', '1', '7822', null, null, null, '2', '123@qq.com', '9', '男', '7822', null);
INSERT INTO `teacher` VALUES ('1549', '测试222', '18639694397', '1', '9622', null, null, null, '2', '123@qq.com', '10', '男', '9622', null);
INSERT INTO `teacher` VALUES ('1550', '测试333', '18639694397', '1', '2522', null, null, null, '2', '123@qq.com', '12', '男', '2522', null);
INSERT INTO `teacher` VALUES ('1551', '测试444', '18639694397', '1', '3322', null, null, null, '2', '123@qq.com', '13', '男', '3322', null);
INSERT INTO `teacher` VALUES ('1552', '测试111', '18639694397', '1', '7833', null, null, null, '2', '123@qq.com', '9', '男', '7833', null);
INSERT INTO `teacher` VALUES ('1553', '测试222', '18639694397', '1', '9633', null, null, null, '2', '123@qq.com', '10', '男', '9633', null);
INSERT INTO `teacher` VALUES ('1554', '测试333', '18639694397', '1', '2533', null, null, null, '2', '123@qq.com', '12', '男', '2533', null);
INSERT INTO `teacher` VALUES ('1555', '测试444', '18639694397', '1', '3333', null, null, null, '2', '123@qq.com', '13', '男', '3333', null);

-- ----------------------------
-- Table structure for `teacher_role`
-- ----------------------------
DROP TABLE IF EXISTS `teacher_role`;
CREATE TABLE `teacher_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tid` int(11) DEFAULT NULL COMMENT 'admin的id',
  `rid` int(11) DEFAULT NULL COMMENT 'role的id',
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`),
  KEY `admin_role_ibfk_1` (`tid`),
  CONSTRAINT `teacher_role_ibfk_1` FOREIGN KEY (`tid`) REFERENCES `teacher` (`id`) ON DELETE CASCADE,
  CONSTRAINT `teacher_role_ibfk_2` FOREIGN KEY (`rid`) REFERENCES `role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher_role
-- ----------------------------
INSERT INTO `teacher_role` VALUES ('3', '10', '1');
INSERT INTO `teacher_role` VALUES ('4', '11', '2');
INSERT INTO `teacher_role` VALUES ('5', '12', '3');
INSERT INTO `teacher_role` VALUES ('18', '3', '3');
INSERT INTO `teacher_role` VALUES ('19', '3', '2');
INSERT INTO `teacher_role` VALUES ('24', '1540', '1');
INSERT INTO `teacher_role` VALUES ('25', '1541', '1');
INSERT INTO `teacher_role` VALUES ('26', '1542', '1');
INSERT INTO `teacher_role` VALUES ('27', '1543', '1');
INSERT INTO `teacher_role` VALUES ('28', '1544', '1');
INSERT INTO `teacher_role` VALUES ('29', '1545', '1');
INSERT INTO `teacher_role` VALUES ('30', '1546', '1');
INSERT INTO `teacher_role` VALUES ('31', '1547', '1');
INSERT INTO `teacher_role` VALUES ('32', '1548', '1');
INSERT INTO `teacher_role` VALUES ('33', '1549', '1');
INSERT INTO `teacher_role` VALUES ('34', '1550', '1');
INSERT INTO `teacher_role` VALUES ('35', '1551', '1');
INSERT INTO `teacher_role` VALUES ('36', '1552', '1');
INSERT INTO `teacher_role` VALUES ('37', '1553', '1');
INSERT INTO `teacher_role` VALUES ('38', '1554', '1');
INSERT INTO `teacher_role` VALUES ('39', '1555', '1');

-- ----------------------------
-- Table structure for `testpaper_class`
-- ----------------------------
DROP TABLE IF EXISTS `testpaper_class`;
CREATE TABLE `testpaper_class` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `testPaperId` int(11) DEFAULT NULL,
  `classId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `testPaperId` (`testPaperId`),
  KEY `classId` (`classId`),
  CONSTRAINT `testpaper_class_ibfk_1` FOREIGN KEY (`testPaperId`) REFERENCES `test_paper` (`id`),
  CONSTRAINT `testpaper_class_ibfk_2` FOREIGN KEY (`classId`) REFERENCES `class` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of testpaper_class
-- ----------------------------
INSERT INTO `testpaper_class` VALUES ('1', '12', '5');
INSERT INTO `testpaper_class` VALUES ('2', '19', '5');

-- ----------------------------
-- Table structure for `test_paper`
-- ----------------------------
DROP TABLE IF EXISTS `test_paper`;
CREATE TABLE `test_paper` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL COMMENT '试卷名称（如：期末考试）',
  `schoolId` int(11) DEFAULT NULL COMMENT '学院id',
  `majorId` int(11) DEFAULT NULL COMMENT '专业id',
  `semester` varchar(200) DEFAULT NULL COMMENT '学年学期（中文）',
  `createTime` date DEFAULT NULL,
  `updateTime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `courseId` int(11) DEFAULT NULL,
  `chapterIds` varchar(255) DEFAULT NULL,
  `knowIds` varchar(255) DEFAULT NULL,
  `postTeacherId` int(11) DEFAULT NULL,
  `checkTeacherId` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL COMMENT '试卷状态，通过审核1，未审核0，拒绝2',
  `paperType` int(50) DEFAULT NULL COMMENT '试卷种类，自动组卷或者手动组卷，0代表手动组卷，1代表自动组卷',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注信息',
  `totalScore` float DEFAULT NULL,
  `passScore` float DEFAULT NULL,
  `queTypes` varchar(200) DEFAULT NULL COMMENT '试题类型，中文表示：单选题@多选题@......',
  `isTemplate` int(11) DEFAULT '0' COMMENT '是否为试卷模板，1表示是，0表示否',
  `dot` float DEFAULT NULL COMMENT '试卷难度',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of test_paper
-- ----------------------------
INSERT INTO `test_paper` VALUES ('1', '期末测试', '1', '1', '2018-2019学年第一学期', '2020-04-24', '2020-04-29 22:31:32', '6', '2@3@7@6@1@5@4@12@8', '', '3', '3', '0', '0', '', '36', '36', '单选题@多选题@判断题@填空题@', '0', null);
INSERT INTO `test_paper` VALUES ('12', '自动测试222', '1', '1', '2018-2019学年第一学期', '2020-05-02', null, '6', '', '15@16@17@18@19@20@21@22@23@24@25@26@27@28@29@30@31@32@33@34@35@36@37@38@39@40@41@42', '3', null, '0', '1', '', '100', '60', '单选题@多选题@判断题@填空题@简答题@', '0', null);
INSERT INTO `test_paper` VALUES ('13', '期末测试001', '1', '1', '2018-2019学年第一学期', '2020-05-03', null, '6', '', '15@16@17@18@19@20@21@22@23@24@25@26@27@28@29@30@31@32@33@34@35@36@37@38@39@40@41@42', '3', '3', '0', '1', '', '100', '60', '单选题@多选题@判断题@填空题@简答题@', '0', null);
INSERT INTO `test_paper` VALUES ('19', '给葛文杰测试', '1', '1', '2019-2020学年第二学期', '2020-05-03', '2020-05-06 22:51:05', '6', '4@6@3@2@5@7', '17@18@19@20@25@22@23@24@35@36@37@38@21@30@31@32@29', '3', null, '1', null, '', '100', '60', '单选题@多选题@简答题@', '1', null);

-- ----------------------------
-- Table structure for `tf_question`
-- ----------------------------
DROP TABLE IF EXISTS `tf_question`;
CREATE TABLE `tf_question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `knowIds` varchar(255) DEFAULT NULL,
  `stem` text NOT NULL,
  `answer` varchar(8) NOT NULL COMMENT '对或错',
  `analysis` text,
  `teacherId` int(11) DEFAULT NULL,
  `checkTeacherId` int(11) DEFAULT NULL,
  `courseId` int(11) DEFAULT NULL,
  `chapterId` int(11) DEFAULT NULL,
  `dot` tinyint(4) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0代表未审核，1代表已通过，2代表拒绝',
  `updateTime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `chapterId` (`chapterId`),
  CONSTRAINT `tf_question_ibfk_1` FOREIGN KEY (`chapterId`) REFERENCES `chapter` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tf_question
-- ----------------------------
INSERT INTO `tf_question` VALUES ('1', '17', '对于int n=3;执行n+=n-=n*n；后n的值是9。（   ）', '错', '', '3', '3', '6', '2', '1', '0', null);
INSERT INTO `tf_question` VALUES ('2', '17', '在C语言中，定义int a=b=c=5;是错的，而int a,b,c; a=b=c=5;是正确的.（  ）', '对', '', '3', '3', '6', '2', '1', '0', null);
INSERT INTO `tf_question` VALUES ('3', '17', '若有定义int a=3,b=4,c=5; 则a+b>c&&b==c的值为1。（   ）', '错', '', '3', '3', '6', '2', '1', '0', null);
INSERT INTO `tf_question` VALUES ('4', '17', 'int x=3,y=2; 则表达式(y++==--x)?y++:x++的值为3。（  ）', '对', '', '3', '3', '6', '2', '3', '0', null);
INSERT INTO `tf_question` VALUES ('5', '16', '在C语言中，不同类型的数据不可以在一起进行算术运算。（ ）', '错', '', '3', '3', '6', '1', '1', '0', null);
INSERT INTO `tf_question` VALUES ('6', '16', '由于计算机的计算精度很高，所以在C语言中程序计算1.0/3*3的结果肯定等于1。（ ）', '错', '', '3', '3', '6', '1', '1', '0', null);
INSERT INTO `tf_question` VALUES ('7', '19', '当一个C语言表达式中同时含有字符型、整型、单精度和双精度类型数据参加运算时，按照\"由低到高\"的原则，所有的数据都必须先转换为双精度类型数据后方能参加运算。（ ）', '错', '', '3', '3', '6', '2', '1', '0', null);
INSERT INTO `tf_question` VALUES ('8', '17', 'C语言与其他高级语言一样，对于所有的同级运算符均遵循左结合原则。（  ）', '错', '', '3', '3', '6', '2', '1', '0', null);
INSERT INTO `tf_question` VALUES ('9', '25', '实际上，可以用顺序、分支、循环三种结构构造任何算法。( )', '错', '', '3', '3', '6', '5', '1', '0', null);
INSERT INTO `tf_question` VALUES ('10', '15', '在C程序的主函数main中定义的变量就是全局变量。', '错', '', '3', '3', '6', '1', '1', '0', '2020-04-13 21:47:00');

-- ----------------------------
-- Procedure structure for `addDep`
-- ----------------------------
DROP PROCEDURE IF EXISTS `addDep`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addDep`(in depName varchar(32),in parentId int,in enabled boolean,out result int,out result2 int)
begin
  declare did int;
  declare pDepPath varchar(64);
  insert into department set name=depName ,parentId=parentId,enabled=enabled;
  select row_count() into result;
  select last_insert_id() into did;
  set result2=did;
  select depPath into pDepPath from department where id=parentId;
  update department set depPath=concat(pDepPath,'.',did) where id=did;
  update department set isParent=true where id=parentId;
end
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `deleteDep`
-- ----------------------------
DROP PROCEDURE IF EXISTS `deleteDep`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteDep`(in did int,out result int)
begin
  declare ecount int;
  declare pid int;
  declare pcount int;
  select count(*) into ecount from teacher where departmentId=did;
  if ecount>0 then set result=-1;
  else 
  select parentId into pid from department where id=did;
  delete from department where id=did and isParent=false;
  select row_count() into result;
  select count(*) into pcount from department where parentId=pid;
  if pcount=0 then update department set isParent=false where id=pid;
  end if;
  end if;
end
;;
DELIMITER ;
