/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : epa

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2020-05-05 18:32:27
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
INSERT INTO `menu` VALUES ('36', '/analysis/all/**', '/ana/scoredistribution', 'AnaScoreDistribution', '整体成绩分析', null, null, '1', '5', '1');
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
) ENGINE=InnoDB AUTO_INCREMENT=347 DEFAULT CHARSET=utf8;

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
  KEY `studentGradeId` (`studentGradeId`),
  CONSTRAINT `question_grade_ibfk_1` FOREIGN KEY (`studentGradeId`) REFERENCES `student_grade` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=515 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of question_grade
-- ----------------------------
INSERT INTO `question_grade` VALUES ('137', '13', '243', '单选题', '1', '1');
INSERT INTO `question_grade` VALUES ('138', '13', '244', '单选题', '2', '1');
INSERT INTO `question_grade` VALUES ('139', '13', '245', '单选题', '3', '1');
INSERT INTO `question_grade` VALUES ('140', '13', '246', '单选题', '4', '1');
INSERT INTO `question_grade` VALUES ('141', '13', '247', '单选题', '5', '1');
INSERT INTO `question_grade` VALUES ('142', '13', '248', '单选题', '6', '1');
INSERT INTO `question_grade` VALUES ('143', '13', '249', '单选题', '7', '1');
INSERT INTO `question_grade` VALUES ('144', '13', '250', '单选题', '8', '0');
INSERT INTO `question_grade` VALUES ('145', '13', '251', '单选题', '9', '1');
INSERT INTO `question_grade` VALUES ('146', '13', '252', '单选题', '10', '1');
INSERT INTO `question_grade` VALUES ('147', '13', '253', '多选题', '1', '2');
INSERT INTO `question_grade` VALUES ('148', '13', '254', '多选题', '2', '2');
INSERT INTO `question_grade` VALUES ('149', '13', '255', '多选题', '3', '2');
INSERT INTO `question_grade` VALUES ('150', '13', '256', '多选题', '4', '0');
INSERT INTO `question_grade` VALUES ('151', '13', '257', '多选题', '5', '0');
INSERT INTO `question_grade` VALUES ('152', '13', '258', '多选题', '6', '2');
INSERT INTO `question_grade` VALUES ('153', '13', '259', '多选题', '7', '2');
INSERT INTO `question_grade` VALUES ('154', '13', '260', '多选题', '8', '2');
INSERT INTO `question_grade` VALUES ('155', '13', '261', '多选题', '9', '2');
INSERT INTO `question_grade` VALUES ('156', '13', '262', '多选题', '10', '2');
INSERT INTO `question_grade` VALUES ('157', '13', '263', '简答题', '1', '10');
INSERT INTO `question_grade` VALUES ('158', '13', '264', '简答题', '2', '10');
INSERT INTO `question_grade` VALUES ('159', '13', '265', '简答题', '3', '5');
INSERT INTO `question_grade` VALUES ('160', '13', '266', '简答题', '4', '5');
INSERT INTO `question_grade` VALUES ('161', '13', '267', '简答题', '5', '5');
INSERT INTO `question_grade` VALUES ('162', '13', '268', '简答题', '6', '8');
INSERT INTO `question_grade` VALUES ('163', '13', '269', '简答题', '7', '10');
INSERT INTO `question_grade` VALUES ('164', '14', '243', '单选题', '1', '1');
INSERT INTO `question_grade` VALUES ('165', '14', '244', '单选题', '2', '1');
INSERT INTO `question_grade` VALUES ('166', '14', '245', '单选题', '3', '1');
INSERT INTO `question_grade` VALUES ('167', '14', '246', '单选题', '4', '1');
INSERT INTO `question_grade` VALUES ('168', '14', '247', '单选题', '5', '1');
INSERT INTO `question_grade` VALUES ('169', '14', '248', '单选题', '6', '1');
INSERT INTO `question_grade` VALUES ('170', '14', '249', '单选题', '7', '0');
INSERT INTO `question_grade` VALUES ('171', '14', '250', '单选题', '8', '0');
INSERT INTO `question_grade` VALUES ('172', '14', '251', '单选题', '9', '0');
INSERT INTO `question_grade` VALUES ('173', '14', '252', '单选题', '10', '0');
INSERT INTO `question_grade` VALUES ('174', '14', '253', '多选题', '1', '2');
INSERT INTO `question_grade` VALUES ('175', '14', '254', '多选题', '2', '2');
INSERT INTO `question_grade` VALUES ('176', '14', '255', '多选题', '3', '2');
INSERT INTO `question_grade` VALUES ('177', '14', '256', '多选题', '4', '2');
INSERT INTO `question_grade` VALUES ('178', '14', '257', '多选题', '5', '2');
INSERT INTO `question_grade` VALUES ('179', '14', '258', '多选题', '6', '2');
INSERT INTO `question_grade` VALUES ('180', '14', '259', '多选题', '7', '2');
INSERT INTO `question_grade` VALUES ('181', '14', '260', '多选题', '8', '0');
INSERT INTO `question_grade` VALUES ('182', '14', '261', '多选题', '9', '2');
INSERT INTO `question_grade` VALUES ('183', '14', '262', '多选题', '10', '2');
INSERT INTO `question_grade` VALUES ('184', '14', '263', '简答题', '1', '10');
INSERT INTO `question_grade` VALUES ('185', '14', '264', '简答题', '2', '10');
INSERT INTO `question_grade` VALUES ('186', '14', '265', '简答题', '3', '10');
INSERT INTO `question_grade` VALUES ('187', '14', '266', '简答题', '4', '10');
INSERT INTO `question_grade` VALUES ('188', '14', '267', '简答题', '5', '10');
INSERT INTO `question_grade` VALUES ('189', '14', '268', '简答题', '6', '6');
INSERT INTO `question_grade` VALUES ('190', '14', '269', '简答题', '7', '6');
INSERT INTO `question_grade` VALUES ('191', '15', '243', '单选题', '1', '1');
INSERT INTO `question_grade` VALUES ('192', '15', '244', '单选题', '2', '1');
INSERT INTO `question_grade` VALUES ('193', '15', '245', '单选题', '3', '1');
INSERT INTO `question_grade` VALUES ('194', '15', '246', '单选题', '4', '1');
INSERT INTO `question_grade` VALUES ('195', '15', '247', '单选题', '5', '1');
INSERT INTO `question_grade` VALUES ('196', '15', '248', '单选题', '6', '1');
INSERT INTO `question_grade` VALUES ('197', '15', '249', '单选题', '7', '1');
INSERT INTO `question_grade` VALUES ('198', '15', '250', '单选题', '8', '1');
INSERT INTO `question_grade` VALUES ('199', '15', '251', '单选题', '9', '1');
INSERT INTO `question_grade` VALUES ('200', '15', '252', '单选题', '10', '1');
INSERT INTO `question_grade` VALUES ('201', '15', '253', '多选题', '1', '2');
INSERT INTO `question_grade` VALUES ('202', '15', '254', '多选题', '2', '2');
INSERT INTO `question_grade` VALUES ('203', '15', '255', '多选题', '3', '2');
INSERT INTO `question_grade` VALUES ('204', '15', '256', '多选题', '4', '2');
INSERT INTO `question_grade` VALUES ('205', '15', '257', '多选题', '5', '0');
INSERT INTO `question_grade` VALUES ('206', '15', '258', '多选题', '6', '0');
INSERT INTO `question_grade` VALUES ('207', '15', '259', '多选题', '7', '0');
INSERT INTO `question_grade` VALUES ('208', '15', '260', '多选题', '8', '0');
INSERT INTO `question_grade` VALUES ('209', '15', '261', '多选题', '9', '0');
INSERT INTO `question_grade` VALUES ('210', '15', '262', '多选题', '10', '2');
INSERT INTO `question_grade` VALUES ('211', '15', '263', '简答题', '1', '10');
INSERT INTO `question_grade` VALUES ('212', '15', '264', '简答题', '2', '10');
INSERT INTO `question_grade` VALUES ('213', '15', '265', '简答题', '3', '10');
INSERT INTO `question_grade` VALUES ('214', '15', '266', '简答题', '4', '2');
INSERT INTO `question_grade` VALUES ('215', '15', '267', '简答题', '5', '3');
INSERT INTO `question_grade` VALUES ('216', '15', '268', '简答题', '6', '10');
INSERT INTO `question_grade` VALUES ('217', '15', '269', '简答题', '7', '10');
INSERT INTO `question_grade` VALUES ('218', '16', '243', '单选题', '1', '1');
INSERT INTO `question_grade` VALUES ('219', '16', '244', '单选题', '2', '1');
INSERT INTO `question_grade` VALUES ('220', '16', '245', '单选题', '3', '1');
INSERT INTO `question_grade` VALUES ('221', '16', '246', '单选题', '4', '1');
INSERT INTO `question_grade` VALUES ('222', '16', '247', '单选题', '5', '1');
INSERT INTO `question_grade` VALUES ('223', '16', '248', '单选题', '6', '1');
INSERT INTO `question_grade` VALUES ('224', '16', '249', '单选题', '7', '0');
INSERT INTO `question_grade` VALUES ('225', '16', '250', '单选题', '8', '0');
INSERT INTO `question_grade` VALUES ('226', '16', '251', '单选题', '9', '0');
INSERT INTO `question_grade` VALUES ('227', '16', '252', '单选题', '10', '1');
INSERT INTO `question_grade` VALUES ('228', '16', '253', '多选题', '1', '2');
INSERT INTO `question_grade` VALUES ('229', '16', '254', '多选题', '2', '2');
INSERT INTO `question_grade` VALUES ('230', '16', '255', '多选题', '3', '0');
INSERT INTO `question_grade` VALUES ('231', '16', '256', '多选题', '4', '0');
INSERT INTO `question_grade` VALUES ('232', '16', '257', '多选题', '5', '0');
INSERT INTO `question_grade` VALUES ('233', '16', '258', '多选题', '6', '2');
INSERT INTO `question_grade` VALUES ('234', '16', '259', '多选题', '7', '2');
INSERT INTO `question_grade` VALUES ('235', '16', '260', '多选题', '8', '2');
INSERT INTO `question_grade` VALUES ('236', '16', '261', '多选题', '9', '2');
INSERT INTO `question_grade` VALUES ('237', '16', '262', '多选题', '10', '2');
INSERT INTO `question_grade` VALUES ('238', '16', '263', '简答题', '1', '10');
INSERT INTO `question_grade` VALUES ('239', '16', '264', '简答题', '2', '10');
INSERT INTO `question_grade` VALUES ('240', '16', '265', '简答题', '3', '10');
INSERT INTO `question_grade` VALUES ('241', '16', '266', '简答题', '4', '10');
INSERT INTO `question_grade` VALUES ('242', '16', '267', '简答题', '5', '10');
INSERT INTO `question_grade` VALUES ('243', '16', '268', '简答题', '6', '10');
INSERT INTO `question_grade` VALUES ('244', '16', '269', '简答题', '7', '10');
INSERT INTO `question_grade` VALUES ('245', '17', '243', '单选题', '1', '1');
INSERT INTO `question_grade` VALUES ('246', '17', '244', '单选题', '2', '1');
INSERT INTO `question_grade` VALUES ('247', '17', '245', '单选题', '3', '1');
INSERT INTO `question_grade` VALUES ('248', '17', '246', '单选题', '4', '1');
INSERT INTO `question_grade` VALUES ('249', '17', '247', '单选题', '5', '1');
INSERT INTO `question_grade` VALUES ('250', '17', '248', '单选题', '6', '1');
INSERT INTO `question_grade` VALUES ('251', '17', '249', '单选题', '7', '1');
INSERT INTO `question_grade` VALUES ('252', '17', '250', '单选题', '8', '1');
INSERT INTO `question_grade` VALUES ('253', '17', '251', '单选题', '9', '1');
INSERT INTO `question_grade` VALUES ('254', '17', '252', '单选题', '10', '1');
INSERT INTO `question_grade` VALUES ('255', '17', '253', '多选题', '1', '2');
INSERT INTO `question_grade` VALUES ('256', '17', '254', '多选题', '2', '2');
INSERT INTO `question_grade` VALUES ('257', '17', '255', '多选题', '3', '2');
INSERT INTO `question_grade` VALUES ('258', '17', '256', '多选题', '4', '2');
INSERT INTO `question_grade` VALUES ('259', '17', '257', '多选题', '5', '2');
INSERT INTO `question_grade` VALUES ('260', '17', '258', '多选题', '6', '2');
INSERT INTO `question_grade` VALUES ('261', '17', '259', '多选题', '7', '2');
INSERT INTO `question_grade` VALUES ('262', '17', '260', '多选题', '8', '2');
INSERT INTO `question_grade` VALUES ('263', '17', '261', '多选题', '9', '2');
INSERT INTO `question_grade` VALUES ('264', '17', '262', '多选题', '10', '2');
INSERT INTO `question_grade` VALUES ('265', '17', '263', '简答题', '1', '5');
INSERT INTO `question_grade` VALUES ('266', '17', '264', '简答题', '2', '5');
INSERT INTO `question_grade` VALUES ('267', '17', '265', '简答题', '3', '10');
INSERT INTO `question_grade` VALUES ('268', '17', '266', '简答题', '4', '10');
INSERT INTO `question_grade` VALUES ('269', '17', '267', '简答题', '5', '10');
INSERT INTO `question_grade` VALUES ('270', '17', '268', '简答题', '6', '5');
INSERT INTO `question_grade` VALUES ('271', '17', '269', '简答题', '7', '5');
INSERT INTO `question_grade` VALUES ('272', '18', '243', '单选题', '1', '1');
INSERT INTO `question_grade` VALUES ('273', '18', '244', '单选题', '2', '1');
INSERT INTO `question_grade` VALUES ('274', '18', '245', '单选题', '3', '1');
INSERT INTO `question_grade` VALUES ('275', '18', '246', '单选题', '4', '1');
INSERT INTO `question_grade` VALUES ('276', '18', '247', '单选题', '5', '1');
INSERT INTO `question_grade` VALUES ('277', '18', '248', '单选题', '6', '1');
INSERT INTO `question_grade` VALUES ('278', '18', '249', '单选题', '7', '1');
INSERT INTO `question_grade` VALUES ('279', '18', '250', '单选题', '8', '1');
INSERT INTO `question_grade` VALUES ('280', '18', '251', '单选题', '9', '1');
INSERT INTO `question_grade` VALUES ('281', '18', '252', '单选题', '10', '0');
INSERT INTO `question_grade` VALUES ('282', '18', '253', '多选题', '1', '2');
INSERT INTO `question_grade` VALUES ('283', '18', '254', '多选题', '2', '2');
INSERT INTO `question_grade` VALUES ('284', '18', '255', '多选题', '3', '2');
INSERT INTO `question_grade` VALUES ('285', '18', '256', '多选题', '4', '2');
INSERT INTO `question_grade` VALUES ('286', '18', '257', '多选题', '5', '2');
INSERT INTO `question_grade` VALUES ('287', '18', '258', '多选题', '6', '2');
INSERT INTO `question_grade` VALUES ('288', '18', '259', '多选题', '7', '2');
INSERT INTO `question_grade` VALUES ('289', '18', '260', '多选题', '8', '2');
INSERT INTO `question_grade` VALUES ('290', '18', '261', '多选题', '9', '2');
INSERT INTO `question_grade` VALUES ('291', '18', '262', '多选题', '10', '2');
INSERT INTO `question_grade` VALUES ('292', '18', '263', '简答题', '1', '10');
INSERT INTO `question_grade` VALUES ('293', '18', '264', '简答题', '2', '10');
INSERT INTO `question_grade` VALUES ('294', '18', '265', '简答题', '3', '10');
INSERT INTO `question_grade` VALUES ('295', '18', '266', '简答题', '4', '0');
INSERT INTO `question_grade` VALUES ('296', '18', '267', '简答题', '5', '0');
INSERT INTO `question_grade` VALUES ('297', '18', '268', '简答题', '6', '0');
INSERT INTO `question_grade` VALUES ('298', '18', '269', '简答题', '7', '0');
INSERT INTO `question_grade` VALUES ('299', '19', '243', '单选题', '1', '1');
INSERT INTO `question_grade` VALUES ('300', '19', '244', '单选题', '2', '1');
INSERT INTO `question_grade` VALUES ('301', '19', '245', '单选题', '3', '1');
INSERT INTO `question_grade` VALUES ('302', '19', '246', '单选题', '4', '1');
INSERT INTO `question_grade` VALUES ('303', '19', '247', '单选题', '5', '1');
INSERT INTO `question_grade` VALUES ('304', '19', '248', '单选题', '6', '1');
INSERT INTO `question_grade` VALUES ('305', '19', '249', '单选题', '7', '1');
INSERT INTO `question_grade` VALUES ('306', '19', '250', '单选题', '8', '1');
INSERT INTO `question_grade` VALUES ('307', '19', '251', '单选题', '9', '1');
INSERT INTO `question_grade` VALUES ('308', '19', '252', '单选题', '10', null);
INSERT INTO `question_grade` VALUES ('309', '19', '253', '多选题', '1', '2');
INSERT INTO `question_grade` VALUES ('310', '19', '254', '多选题', '2', '2');
INSERT INTO `question_grade` VALUES ('311', '19', '255', '多选题', '3', '2');
INSERT INTO `question_grade` VALUES ('312', '19', '256', '多选题', '4', '2');
INSERT INTO `question_grade` VALUES ('313', '19', '257', '多选题', '5', '2');
INSERT INTO `question_grade` VALUES ('314', '19', '258', '多选题', '6', '0');
INSERT INTO `question_grade` VALUES ('315', '19', '259', '多选题', '7', '0');
INSERT INTO `question_grade` VALUES ('316', '19', '260', '多选题', '8', '0');
INSERT INTO `question_grade` VALUES ('317', '19', '261', '多选题', '9', '0');
INSERT INTO `question_grade` VALUES ('318', '19', '262', '多选题', '10', '0');
INSERT INTO `question_grade` VALUES ('319', '19', '263', '简答题', '1', '10');
INSERT INTO `question_grade` VALUES ('320', '19', '264', '简答题', '2', '10');
INSERT INTO `question_grade` VALUES ('321', '19', '265', '简答题', '3', '10');
INSERT INTO `question_grade` VALUES ('322', '19', '266', '简答题', '4', '10');
INSERT INTO `question_grade` VALUES ('323', '19', '267', '简答题', '5', '10');
INSERT INTO `question_grade` VALUES ('324', '19', '268', '简答题', '6', '10');
INSERT INTO `question_grade` VALUES ('325', '19', '269', '简答题', '7', '0');
INSERT INTO `question_grade` VALUES ('326', '20', '243', '单选题', '1', '1');
INSERT INTO `question_grade` VALUES ('327', '20', '244', '单选题', '2', '1');
INSERT INTO `question_grade` VALUES ('328', '20', '245', '单选题', '3', '1');
INSERT INTO `question_grade` VALUES ('329', '20', '246', '单选题', '4', '1');
INSERT INTO `question_grade` VALUES ('330', '20', '247', '单选题', '5', '1');
INSERT INTO `question_grade` VALUES ('331', '20', '248', '单选题', '6', '1');
INSERT INTO `question_grade` VALUES ('332', '20', '249', '单选题', '7', '1');
INSERT INTO `question_grade` VALUES ('333', '20', '250', '单选题', '8', '1');
INSERT INTO `question_grade` VALUES ('334', '20', '251', '单选题', '9', '1');
INSERT INTO `question_grade` VALUES ('335', '20', '252', '单选题', '10', '1');
INSERT INTO `question_grade` VALUES ('336', '20', '253', '多选题', '1', '2');
INSERT INTO `question_grade` VALUES ('337', '20', '254', '多选题', '2', '2');
INSERT INTO `question_grade` VALUES ('338', '20', '255', '多选题', '3', '2');
INSERT INTO `question_grade` VALUES ('339', '20', '256', '多选题', '4', '2');
INSERT INTO `question_grade` VALUES ('340', '20', '257', '多选题', '5', '2');
INSERT INTO `question_grade` VALUES ('341', '20', '258', '多选题', '6', '2');
INSERT INTO `question_grade` VALUES ('342', '20', '259', '多选题', '7', '2');
INSERT INTO `question_grade` VALUES ('343', '20', '260', '多选题', '8', '2');
INSERT INTO `question_grade` VALUES ('344', '20', '261', '多选题', '9', '2');
INSERT INTO `question_grade` VALUES ('345', '20', '262', '多选题', '10', '0');
INSERT INTO `question_grade` VALUES ('346', '20', '263', '简答题', '1', '10');
INSERT INTO `question_grade` VALUES ('347', '20', '264', '简答题', '2', '10');
INSERT INTO `question_grade` VALUES ('348', '20', '265', '简答题', '3', '10');
INSERT INTO `question_grade` VALUES ('349', '20', '266', '简答题', '4', '10');
INSERT INTO `question_grade` VALUES ('350', '20', '267', '简答题', '5', '10');
INSERT INTO `question_grade` VALUES ('351', '20', '268', '简答题', '6', '10');
INSERT INTO `question_grade` VALUES ('352', '20', '269', '简答题', '7', '10');
INSERT INTO `question_grade` VALUES ('353', '21', '243', '单选题', '1', '1');
INSERT INTO `question_grade` VALUES ('354', '21', '244', '单选题', '2', '1');
INSERT INTO `question_grade` VALUES ('355', '21', '245', '单选题', '3', '1');
INSERT INTO `question_grade` VALUES ('356', '21', '246', '单选题', '4', '1');
INSERT INTO `question_grade` VALUES ('357', '21', '247', '单选题', '5', '1');
INSERT INTO `question_grade` VALUES ('358', '21', '248', '单选题', '6', '1');
INSERT INTO `question_grade` VALUES ('359', '21', '249', '单选题', '7', '1');
INSERT INTO `question_grade` VALUES ('360', '21', '250', '单选题', '8', '1');
INSERT INTO `question_grade` VALUES ('361', '21', '251', '单选题', '9', '1');
INSERT INTO `question_grade` VALUES ('362', '21', '252', '单选题', '10', '0');
INSERT INTO `question_grade` VALUES ('363', '21', '253', '多选题', '1', '2');
INSERT INTO `question_grade` VALUES ('364', '21', '254', '多选题', '2', '2');
INSERT INTO `question_grade` VALUES ('365', '21', '255', '多选题', '3', '2');
INSERT INTO `question_grade` VALUES ('366', '21', '256', '多选题', '4', '2');
INSERT INTO `question_grade` VALUES ('367', '21', '257', '多选题', '5', '2');
INSERT INTO `question_grade` VALUES ('368', '21', '258', '多选题', '6', '2');
INSERT INTO `question_grade` VALUES ('369', '21', '259', '多选题', '7', '2');
INSERT INTO `question_grade` VALUES ('370', '21', '260', '多选题', '8', '2');
INSERT INTO `question_grade` VALUES ('371', '21', '261', '多选题', '9', '2');
INSERT INTO `question_grade` VALUES ('372', '21', '262', '多选题', '10', '2');
INSERT INTO `question_grade` VALUES ('373', '21', '263', '简答题', '1', '5');
INSERT INTO `question_grade` VALUES ('374', '21', '264', '简答题', '2', '7');
INSERT INTO `question_grade` VALUES ('375', '21', '265', '简答题', '3', '10');
INSERT INTO `question_grade` VALUES ('376', '21', '266', '简答题', '4', '10');
INSERT INTO `question_grade` VALUES ('377', '21', '267', '简答题', '5', '10');
INSERT INTO `question_grade` VALUES ('378', '21', '268', '简答题', '6', '10');
INSERT INTO `question_grade` VALUES ('379', '21', '269', '简答题', '7', '0');
INSERT INTO `question_grade` VALUES ('380', '22', '243', '单选题', '1', '1');
INSERT INTO `question_grade` VALUES ('381', '22', '244', '单选题', '2', '1');
INSERT INTO `question_grade` VALUES ('382', '22', '245', '单选题', '3', '1');
INSERT INTO `question_grade` VALUES ('383', '22', '246', '单选题', '4', '1');
INSERT INTO `question_grade` VALUES ('384', '22', '247', '单选题', '5', '1');
INSERT INTO `question_grade` VALUES ('385', '22', '248', '单选题', '6', '1');
INSERT INTO `question_grade` VALUES ('386', '22', '249', '单选题', '7', '1');
INSERT INTO `question_grade` VALUES ('387', '22', '250', '单选题', '8', '1');
INSERT INTO `question_grade` VALUES ('388', '22', '251', '单选题', '9', '0');
INSERT INTO `question_grade` VALUES ('389', '22', '252', '单选题', '10', '0');
INSERT INTO `question_grade` VALUES ('390', '22', '253', '多选题', '1', '2');
INSERT INTO `question_grade` VALUES ('391', '22', '254', '多选题', '2', '2');
INSERT INTO `question_grade` VALUES ('392', '22', '255', '多选题', '3', '2');
INSERT INTO `question_grade` VALUES ('393', '22', '256', '多选题', '4', '2');
INSERT INTO `question_grade` VALUES ('394', '22', '257', '多选题', '5', '2');
INSERT INTO `question_grade` VALUES ('395', '22', '258', '多选题', '6', '2');
INSERT INTO `question_grade` VALUES ('396', '22', '259', '多选题', '7', '2');
INSERT INTO `question_grade` VALUES ('397', '22', '260', '多选题', '8', '0');
INSERT INTO `question_grade` VALUES ('398', '22', '261', '多选题', '9', '0');
INSERT INTO `question_grade` VALUES ('399', '22', '262', '多选题', '10', '2');
INSERT INTO `question_grade` VALUES ('400', '22', '263', '简答题', '1', '8');
INSERT INTO `question_grade` VALUES ('401', '22', '264', '简答题', '2', '3');
INSERT INTO `question_grade` VALUES ('402', '22', '265', '简答题', '3', '10');
INSERT INTO `question_grade` VALUES ('403', '22', '266', '简答题', '4', '10');
INSERT INTO `question_grade` VALUES ('404', '22', '267', '简答题', '5', '10');
INSERT INTO `question_grade` VALUES ('405', '22', '268', '简答题', '6', '10');
INSERT INTO `question_grade` VALUES ('406', '22', '269', '简答题', '7', '10');
INSERT INTO `question_grade` VALUES ('407', '23', '243', '单选题', '1', '1');
INSERT INTO `question_grade` VALUES ('408', '23', '244', '单选题', '2', '1');
INSERT INTO `question_grade` VALUES ('409', '23', '245', '单选题', '3', '1');
INSERT INTO `question_grade` VALUES ('410', '23', '246', '单选题', '4', '1');
INSERT INTO `question_grade` VALUES ('411', '23', '247', '单选题', '5', '1');
INSERT INTO `question_grade` VALUES ('412', '23', '248', '单选题', '6', '1');
INSERT INTO `question_grade` VALUES ('413', '23', '249', '单选题', '7', '1');
INSERT INTO `question_grade` VALUES ('414', '23', '250', '单选题', '8', '1');
INSERT INTO `question_grade` VALUES ('415', '23', '251', '单选题', '9', '1');
INSERT INTO `question_grade` VALUES ('416', '23', '252', '单选题', '10', '1');
INSERT INTO `question_grade` VALUES ('417', '23', '253', '多选题', '1', '2');
INSERT INTO `question_grade` VALUES ('418', '23', '254', '多选题', '2', '2');
INSERT INTO `question_grade` VALUES ('419', '23', '255', '多选题', '3', '2');
INSERT INTO `question_grade` VALUES ('420', '23', '256', '多选题', '4', '2');
INSERT INTO `question_grade` VALUES ('421', '23', '257', '多选题', '5', '2');
INSERT INTO `question_grade` VALUES ('422', '23', '258', '多选题', '6', '2');
INSERT INTO `question_grade` VALUES ('423', '23', '259', '多选题', '7', '2');
INSERT INTO `question_grade` VALUES ('424', '23', '260', '多选题', '8', '2');
INSERT INTO `question_grade` VALUES ('425', '23', '261', '多选题', '9', '2');
INSERT INTO `question_grade` VALUES ('426', '23', '262', '多选题', '10', '2');
INSERT INTO `question_grade` VALUES ('427', '23', '263', '简答题', '1', '0');
INSERT INTO `question_grade` VALUES ('428', '23', '264', '简答题', '2', '10');
INSERT INTO `question_grade` VALUES ('429', '23', '265', '简答题', '3', '10');
INSERT INTO `question_grade` VALUES ('430', '23', '266', '简答题', '4', '10');
INSERT INTO `question_grade` VALUES ('431', '23', '267', '简答题', '5', '10');
INSERT INTO `question_grade` VALUES ('432', '23', '268', '简答题', '6', '10');
INSERT INTO `question_grade` VALUES ('433', '23', '269', '简答题', '7', '10');
INSERT INTO `question_grade` VALUES ('434', '24', '243', '单选题', '1', '1');
INSERT INTO `question_grade` VALUES ('435', '24', '244', '单选题', '2', '1');
INSERT INTO `question_grade` VALUES ('436', '24', '245', '单选题', '3', '1');
INSERT INTO `question_grade` VALUES ('437', '24', '246', '单选题', '4', '1');
INSERT INTO `question_grade` VALUES ('438', '24', '247', '单选题', '5', '1');
INSERT INTO `question_grade` VALUES ('439', '24', '248', '单选题', '6', '1');
INSERT INTO `question_grade` VALUES ('440', '24', '249', '单选题', '7', '1');
INSERT INTO `question_grade` VALUES ('441', '24', '250', '单选题', '8', '1');
INSERT INTO `question_grade` VALUES ('442', '24', '251', '单选题', '9', '1');
INSERT INTO `question_grade` VALUES ('443', '24', '252', '单选题', '10', '1');
INSERT INTO `question_grade` VALUES ('444', '24', '253', '多选题', '1', '2');
INSERT INTO `question_grade` VALUES ('445', '24', '254', '多选题', '2', '2');
INSERT INTO `question_grade` VALUES ('446', '24', '255', '多选题', '3', '2');
INSERT INTO `question_grade` VALUES ('447', '24', '256', '多选题', '4', '2');
INSERT INTO `question_grade` VALUES ('448', '24', '257', '多选题', '5', '2');
INSERT INTO `question_grade` VALUES ('449', '24', '258', '多选题', '6', '0');
INSERT INTO `question_grade` VALUES ('450', '24', '259', '多选题', '7', '0');
INSERT INTO `question_grade` VALUES ('451', '24', '260', '多选题', '8', '0');
INSERT INTO `question_grade` VALUES ('452', '24', '261', '多选题', '9', '2');
INSERT INTO `question_grade` VALUES ('453', '24', '262', '多选题', '10', '2');
INSERT INTO `question_grade` VALUES ('454', '24', '263', '简答题', '1', '10');
INSERT INTO `question_grade` VALUES ('455', '24', '264', '简答题', '2', '5');
INSERT INTO `question_grade` VALUES ('456', '24', '265', '简答题', '3', '5');
INSERT INTO `question_grade` VALUES ('457', '24', '266', '简答题', '4', '10');
INSERT INTO `question_grade` VALUES ('458', '24', '267', '简答题', '5', '10');
INSERT INTO `question_grade` VALUES ('459', '24', '268', '简答题', '6', '10');
INSERT INTO `question_grade` VALUES ('460', '24', '269', '简答题', '7', '10');
INSERT INTO `question_grade` VALUES ('461', '30', '243', '单选题', '1', '1');
INSERT INTO `question_grade` VALUES ('462', '30', '244', '单选题', '2', '1');
INSERT INTO `question_grade` VALUES ('463', '30', '245', '单选题', '3', '1');
INSERT INTO `question_grade` VALUES ('464', '30', '246', '单选题', '4', '1');
INSERT INTO `question_grade` VALUES ('465', '30', '247', '单选题', '5', '1');
INSERT INTO `question_grade` VALUES ('466', '30', '248', '单选题', '6', '1');
INSERT INTO `question_grade` VALUES ('467', '30', '249', '单选题', '7', '1');
INSERT INTO `question_grade` VALUES ('468', '30', '250', '单选题', '8', '1');
INSERT INTO `question_grade` VALUES ('469', '30', '251', '单选题', '9', '1');
INSERT INTO `question_grade` VALUES ('470', '30', '252', '单选题', '10', '1');
INSERT INTO `question_grade` VALUES ('471', '30', '243', '单选题', '1', '2');
INSERT INTO `question_grade` VALUES ('472', '30', '244', '单选题', '2', '2');
INSERT INTO `question_grade` VALUES ('473', '30', '245', '单选题', '3', '2');
INSERT INTO `question_grade` VALUES ('474', '30', '246', '单选题', '4', '2');
INSERT INTO `question_grade` VALUES ('475', '30', '247', '单选题', '5', '2');
INSERT INTO `question_grade` VALUES ('476', '30', '248', '单选题', '6', '2');
INSERT INTO `question_grade` VALUES ('477', '30', '249', '单选题', '7', '2');
INSERT INTO `question_grade` VALUES ('478', '30', '250', '单选题', '8', '2');
INSERT INTO `question_grade` VALUES ('479', '30', '251', '单选题', '9', '2');
INSERT INTO `question_grade` VALUES ('480', '30', '252', '单选题', '10', '2');
INSERT INTO `question_grade` VALUES ('481', '30', '243', '单选题', '1', '10');
INSERT INTO `question_grade` VALUES ('482', '30', '244', '单选题', '2', '10');
INSERT INTO `question_grade` VALUES ('483', '30', '245', '单选题', '3', '10');
INSERT INTO `question_grade` VALUES ('484', '30', '246', '单选题', '4', '10');
INSERT INTO `question_grade` VALUES ('485', '30', '247', '单选题', '5', '10');
INSERT INTO `question_grade` VALUES ('486', '30', '248', '单选题', '6', '0');
INSERT INTO `question_grade` VALUES ('487', '30', '249', '单选题', '7', '0');
INSERT INTO `question_grade` VALUES ('488', '31', '243', '单选题', '1', '1');
INSERT INTO `question_grade` VALUES ('489', '31', '244', '单选题', '2', '1');
INSERT INTO `question_grade` VALUES ('490', '31', '245', '单选题', '3', '1');
INSERT INTO `question_grade` VALUES ('491', '31', '246', '单选题', '4', '1');
INSERT INTO `question_grade` VALUES ('492', '31', '247', '单选题', '5', '1');
INSERT INTO `question_grade` VALUES ('493', '31', '248', '单选题', '6', '1');
INSERT INTO `question_grade` VALUES ('494', '31', '249', '单选题', '7', '1');
INSERT INTO `question_grade` VALUES ('495', '31', '250', '单选题', '8', '1');
INSERT INTO `question_grade` VALUES ('496', '31', '251', '单选题', '9', '1');
INSERT INTO `question_grade` VALUES ('497', '31', '252', '单选题', '10', '1');
INSERT INTO `question_grade` VALUES ('498', '31', '243', '单选题', '1', '2');
INSERT INTO `question_grade` VALUES ('499', '31', '244', '单选题', '2', '2');
INSERT INTO `question_grade` VALUES ('500', '31', '245', '单选题', '3', '2');
INSERT INTO `question_grade` VALUES ('501', '31', '246', '单选题', '4', '2');
INSERT INTO `question_grade` VALUES ('502', '31', '247', '单选题', '5', '2');
INSERT INTO `question_grade` VALUES ('503', '31', '248', '单选题', '6', '2');
INSERT INTO `question_grade` VALUES ('504', '31', '249', '单选题', '7', '2');
INSERT INTO `question_grade` VALUES ('505', '31', '250', '单选题', '8', '2');
INSERT INTO `question_grade` VALUES ('506', '31', '251', '单选题', '9', '2');
INSERT INTO `question_grade` VALUES ('507', '31', '252', '单选题', '10', '2');
INSERT INTO `question_grade` VALUES ('508', '31', '243', '单选题', '1', '10');
INSERT INTO `question_grade` VALUES ('509', '31', '244', '单选题', '2', '10');
INSERT INTO `question_grade` VALUES ('510', '31', '245', '单选题', '3', '10');
INSERT INTO `question_grade` VALUES ('511', '31', '246', '单选题', '4', '10');
INSERT INTO `question_grade` VALUES ('512', '31', '247', '单选题', '5', '10');
INSERT INTO `question_grade` VALUES ('513', '31', '248', '单选题', '6', '2');
INSERT INTO `question_grade` VALUES ('514', '31', '249', '单选题', '7', '0');

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
) ENGINE=InnoDB AUTO_INCREMENT=270 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of question_score
-- ----------------------------
INSERT INTO `question_score` VALUES ('125', null, '1', '单选题', '1', null, null, '1');
INSERT INTO `question_score` VALUES ('126', null, '2', '单选题', '2', null, null, '1');
INSERT INTO `question_score` VALUES ('127', null, '3', '单选题', '3', null, null, '1');
INSERT INTO `question_score` VALUES ('128', null, '4', '单选题', '4', null, null, '1');
INSERT INTO `question_score` VALUES ('129', null, '5', '单选题', '5', null, null, '1');
INSERT INTO `question_score` VALUES ('130', null, '1', '多选题', '1', null, null, '2');
INSERT INTO `question_score` VALUES ('131', null, '2', '多选题', '2', null, null, '2');
INSERT INTO `question_score` VALUES ('132', null, '3', '多选题', '3', null, null, '2');
INSERT INTO `question_score` VALUES ('133', null, '1', '判断题', '1', null, null, '2');
INSERT INTO `question_score` VALUES ('134', null, '2', '判断题', '2', null, null, '2');
INSERT INTO `question_score` VALUES ('135', null, '3', '判断题', '3', null, null, '2');
INSERT INTO `question_score` VALUES ('136', null, '4', '判断题', '4', null, null, '2');
INSERT INTO `question_score` VALUES ('137', null, '1', '填空题', '1', null, null, '2');
INSERT INTO `question_score` VALUES ('138', null, '2', '填空题', '2', null, null, '3');
INSERT INTO `question_score` VALUES ('139', null, '3', '填空题', '3', null, null, '2');
INSERT INTO `question_score` VALUES ('140', null, '1', '单选题', '1', null, null, '1');
INSERT INTO `question_score` VALUES ('141', null, '2', '单选题', '2', null, null, '1');
INSERT INTO `question_score` VALUES ('142', null, '3', '单选题', '3', null, null, '1');
INSERT INTO `question_score` VALUES ('143', null, '4', '单选题', '4', null, null, '1');
INSERT INTO `question_score` VALUES ('144', null, '5', '单选题', '5', null, null, '1');
INSERT INTO `question_score` VALUES ('145', null, '1', '多选题', '1', null, null, '2');
INSERT INTO `question_score` VALUES ('146', null, '2', '多选题', '2', null, null, '2');
INSERT INTO `question_score` VALUES ('147', null, '3', '多选题', '3', null, null, '2');
INSERT INTO `question_score` VALUES ('148', null, '1', '判断题', '1', null, null, '2');
INSERT INTO `question_score` VALUES ('149', null, '2', '判断题', '2', null, null, '2');
INSERT INTO `question_score` VALUES ('150', null, '3', '判断题', '3', null, null, '2');
INSERT INTO `question_score` VALUES ('151', null, '4', '判断题', '4', null, null, '2');
INSERT INTO `question_score` VALUES ('152', null, '1', '填空题', '1', null, null, '2');
INSERT INTO `question_score` VALUES ('153', null, '2', '填空题', '2', null, null, '3');
INSERT INTO `question_score` VALUES ('154', null, '3', '填空题', '3', null, null, '2');
INSERT INTO `question_score` VALUES ('155', '1', '1', '单选题', '1', null, null, '1');
INSERT INTO `question_score` VALUES ('156', '1', '2', '单选题', '2', null, null, '1');
INSERT INTO `question_score` VALUES ('157', '1', '3', '单选题', '3', null, null, '1');
INSERT INTO `question_score` VALUES ('158', '1', '4', '单选题', '4', null, null, '1');
INSERT INTO `question_score` VALUES ('159', '1', '5', '单选题', '5', null, null, '1');
INSERT INTO `question_score` VALUES ('160', '1', '1', '多选题', '1', null, null, '2');
INSERT INTO `question_score` VALUES ('161', '1', '2', '多选题', '2', null, null, '2');
INSERT INTO `question_score` VALUES ('162', '1', '3', '多选题', '3', null, null, '2');
INSERT INTO `question_score` VALUES ('163', '1', '1', '判断题', '1', null, null, '2');
INSERT INTO `question_score` VALUES ('164', '1', '2', '判断题', '2', null, null, '2');
INSERT INTO `question_score` VALUES ('165', '1', '3', '判断题', '3', null, null, '2');
INSERT INTO `question_score` VALUES ('166', '1', '4', '判断题', '4', null, null, '2');
INSERT INTO `question_score` VALUES ('167', '1', '1', '填空题', '1', null, null, '2');
INSERT INTO `question_score` VALUES ('168', '1', '2', '填空题', '2', null, null, '3');
INSERT INTO `question_score` VALUES ('169', '1', '3', '填空题', '3', null, null, '2');
INSERT INTO `question_score` VALUES ('170', '12', '3', '单选题', '1', null, null, '10');
INSERT INTO `question_score` VALUES ('171', '12', '6', '单选题', '2', null, null, '10');
INSERT INTO `question_score` VALUES ('172', '12', '7', '单选题', '3', null, null, '10');
INSERT INTO `question_score` VALUES ('173', '12', '3', '多选题', '1', null, null, '20');
INSERT INTO `question_score` VALUES ('174', '12', '2', '多选题', '2', null, null, '20');
INSERT INTO `question_score` VALUES ('175', '12', '1', '多选题', '3', null, null, '20');
INSERT INTO `question_score` VALUES ('176', '12', '5', '判断题', '1', null, null, '1');
INSERT INTO `question_score` VALUES ('177', '12', '1', '判断题', '2', null, null, '1');
INSERT INTO `question_score` VALUES ('178', '12', '7', '判断题', '3', null, null, '1');
INSERT INTO `question_score` VALUES ('179', '12', '6', '判断题', '4', null, null, '1');
INSERT INTO `question_score` VALUES ('180', '12', '4', '判断题', '5', null, null, '1');
INSERT INTO `question_score` VALUES ('181', '12', '8', '判断题', '6', null, null, '1');
INSERT INTO `question_score` VALUES ('182', '12', '2', '填空题', '1', null, null, '2');
INSERT INTO `question_score` VALUES ('183', '12', '1', '简答题', '1', null, null, '1');
INSERT INTO `question_score` VALUES ('184', '13', '6', '单选题', '1', null, null, '1');
INSERT INTO `question_score` VALUES ('185', '13', '7', '单选题', '2', null, null, '1');
INSERT INTO `question_score` VALUES ('186', '13', '2', '单选题', '3', null, null, '1');
INSERT INTO `question_score` VALUES ('187', '13', '8', '单选题', '4', null, null, '1');
INSERT INTO `question_score` VALUES ('188', '13', '5', '单选题', '5', null, null, '1');
INSERT INTO `question_score` VALUES ('189', '13', '2', '多选题', '1', null, null, '2');
INSERT INTO `question_score` VALUES ('190', '13', '1', '多选题', '2', null, null, '2');
INSERT INTO `question_score` VALUES ('191', '13', '3', '多选题', '3', null, null, '2');
INSERT INTO `question_score` VALUES ('192', '13', '1', '判断题', '1', null, null, '1');
INSERT INTO `question_score` VALUES ('193', '13', '10', '判断题', '2', null, null, '1');
INSERT INTO `question_score` VALUES ('194', '13', '5', '判断题', '3', null, null, '1');
INSERT INTO `question_score` VALUES ('195', '13', '8', '判断题', '4', null, null, '1');
INSERT INTO `question_score` VALUES ('196', '13', '9', '判断题', '5', null, null, '1');
INSERT INTO `question_score` VALUES ('197', '13', '7', '判断题', '6', null, null, '1');
INSERT INTO `question_score` VALUES ('198', '13', '2', '填空题', '1', null, null, '2');
INSERT INTO `question_score` VALUES ('199', '13', '3', '填空题', '2', null, null, '2');
INSERT INTO `question_score` VALUES ('200', '13', '1', '填空题', '3', null, null, '2');
INSERT INTO `question_score` VALUES ('201', '13', '1', '简答题', '1', null, null, '77');
INSERT INTO `question_score` VALUES ('202', null, null, '单选题', '1', '1', '15', '1');
INSERT INTO `question_score` VALUES ('203', null, null, '单选题', '2', '2', '17', '1');
INSERT INTO `question_score` VALUES ('204', null, null, '单选题', '3', '1', '15', '1');
INSERT INTO `question_score` VALUES ('205', null, null, '单选题', '4', '3', '18', '1');
INSERT INTO `question_score` VALUES ('206', null, null, '单选题', '5', '1', '17', '1');
INSERT INTO `question_score` VALUES ('207', null, null, '单选题', '6', '2', '17', '1');
INSERT INTO `question_score` VALUES ('208', null, null, '单选题', '7', '1', '15', '1');
INSERT INTO `question_score` VALUES ('209', null, null, '单选题', '8', '1', '15', '1');
INSERT INTO `question_score` VALUES ('210', null, null, '单选题', '9', '7', '30', '1');
INSERT INTO `question_score` VALUES ('211', null, null, '单选题', '10', '7', '15', '1');
INSERT INTO `question_score` VALUES ('212', null, null, '多选题', '1', '1', '15', '2');
INSERT INTO `question_score` VALUES ('213', null, null, '多选题', '2', '1', '15', '2');
INSERT INTO `question_score` VALUES ('214', null, null, '多选题', '3', '2', '18', '2');
INSERT INTO `question_score` VALUES ('215', null, null, '多选题', '4', '2', '18', '2');
INSERT INTO `question_score` VALUES ('216', null, null, '多选题', '5', '4', '18', '2');
INSERT INTO `question_score` VALUES ('217', null, null, '多选题', '6', '7', '18', '2');
INSERT INTO `question_score` VALUES ('218', null, null, '多选题', '7', '7', '18', '2');
INSERT INTO `question_score` VALUES ('219', null, null, '多选题', '8', '4', '20', '2');
INSERT INTO `question_score` VALUES ('220', null, null, '多选题', '9', '7', '18', '2');
INSERT INTO `question_score` VALUES ('221', null, null, '多选题', '10', '7', '25', '2');
INSERT INTO `question_score` VALUES ('222', null, null, '判断题', '1', '6', '18', '1');
INSERT INTO `question_score` VALUES ('223', null, null, '判断题', '2', '7', '22', '1');
INSERT INTO `question_score` VALUES ('224', null, null, '判断题', '3', '2', '15', '1');
INSERT INTO `question_score` VALUES ('225', null, null, '判断题', '4', '2', '20', '1');
INSERT INTO `question_score` VALUES ('226', null, null, '判断题', '5', '5', '24', '1');
INSERT INTO `question_score` VALUES ('227', null, null, '判断题', '6', '9', '22', '1');
INSERT INTO `question_score` VALUES ('228', null, null, '判断题', '7', '7', '15', '1');
INSERT INTO `question_score` VALUES ('229', null, null, '判断题', '8', '7', '22', '1');
INSERT INTO `question_score` VALUES ('230', null, null, '判断题', '9', '7', '25', '1');
INSERT INTO `question_score` VALUES ('231', null, null, '判断题', '10', '6', '25', '1');
INSERT INTO `question_score` VALUES ('232', null, null, '简答题', '1', '2', '23', '10');
INSERT INTO `question_score` VALUES ('233', null, null, '简答题', '2', '4', '22', '10');
INSERT INTO `question_score` VALUES ('234', null, null, '简答题', '3', '5', '20', '10');
INSERT INTO `question_score` VALUES ('235', null, null, '简答题', '4', '6', '22', '10');
INSERT INTO `question_score` VALUES ('236', null, null, '简答题', '5', '7', '20', '10');
INSERT INTO `question_score` VALUES ('237', null, null, '简答题', '6', '11', '41', '10');
INSERT INTO `question_score` VALUES ('243', '19', null, '单选题', '1', '4', '17', '1');
INSERT INTO `question_score` VALUES ('244', '19', null, '单选题', '2', '6', '17@18@19', '1');
INSERT INTO `question_score` VALUES ('245', '19', null, '单选题', '3', '3', '20', '1');
INSERT INTO `question_score` VALUES ('246', '19', null, '单选题', '4', '2', '17@18@19', '1');
INSERT INTO `question_score` VALUES ('247', '19', null, '单选题', '5', '4', '17@18@19', '1');
INSERT INTO `question_score` VALUES ('248', '19', null, '单选题', '6', '4', '20', '1');
INSERT INTO `question_score` VALUES ('249', '19', null, '单选题', '7', '3', '20', '1');
INSERT INTO `question_score` VALUES ('250', '19', null, '单选题', '8', '5', '25', '1');
INSERT INTO `question_score` VALUES ('251', '19', null, '单选题', '9', '3', '22', '1');
INSERT INTO `question_score` VALUES ('252', '19', null, '单选题', '10', '5', '23@24@25', '1');
INSERT INTO `question_score` VALUES ('253', '19', null, '多选题', '1', '3', '20', '2');
INSERT INTO `question_score` VALUES ('254', '19', null, '多选题', '2', '3', '20', '2');
INSERT INTO `question_score` VALUES ('255', '19', null, '多选题', '3', '5', '17@18@19', '2');
INSERT INTO `question_score` VALUES ('256', '19', null, '多选题', '4', '2', '20', '2');
INSERT INTO `question_score` VALUES ('257', '19', null, '多选题', '5', '4', '20', '2');
INSERT INTO `question_score` VALUES ('258', '19', null, '多选题', '6', '7', '20', '2');
INSERT INTO `question_score` VALUES ('259', '19', null, '多选题', '7', '6', '35@36@37@38', '2');
INSERT INTO `question_score` VALUES ('260', '19', null, '多选题', '8', '3', '21@22', '2');
INSERT INTO `question_score` VALUES ('261', '19', null, '多选题', '9', '6', '21@22', '2');
INSERT INTO `question_score` VALUES ('262', '19', null, '多选题', '10', '7', '30@31@32', '2');
INSERT INTO `question_score` VALUES ('263', '19', null, '简答题', '1', '2', '17@18@19', '10');
INSERT INTO `question_score` VALUES ('264', '19', null, '简答题', '2', '3', '20', '10');
INSERT INTO `question_score` VALUES ('265', '19', null, '简答题', '3', '4', '20', '10');
INSERT INTO `question_score` VALUES ('266', '19', null, '简答题', '4', '5', '22', '10');
INSERT INTO `question_score` VALUES ('267', '19', null, '简答题', '5', '6', '29', '10');
INSERT INTO `question_score` VALUES ('268', '19', null, '简答题', '6', '7', '23@24@25', '10');
INSERT INTO `question_score` VALUES ('269', '19', null, '简答题', '7', '6', '29', '10');

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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student_grade
-- ----------------------------
INSERT INTO `student_grade` VALUES ('13', '201619040106', '王晨雨', '6', '19', '78', '5');
INSERT INTO `student_grade` VALUES ('14', '201619040139', '张凯帆', '6', '19', '86', '5');
INSERT INTO `student_grade` VALUES ('15', '201619040117', '史晓松', '6', '19', '75', '5');
INSERT INTO `student_grade` VALUES ('16', '201619040129', '刘震', '6', '19', '91', '5');
INSERT INTO `student_grade` VALUES ('17', '201619040140', '魏汉文', '6', '19', '80', '5');
INSERT INTO `student_grade` VALUES ('18', '201619040130', '胡明乐', '6', '19', '59', '5');
INSERT INTO `student_grade` VALUES ('19', '201619040108', '杜思尧', '6', '19', '79', '5');
INSERT INTO `student_grade` VALUES ('20', '201619040119', '樊鑫', '6', '19', '98', '5');
INSERT INTO `student_grade` VALUES ('21', '201619040101', '曹媛媛', '6', '19', '81', '5');
INSERT INTO `student_grade` VALUES ('22', '201619040109', '孙威', '6', '19', '85', '5');
INSERT INTO `student_grade` VALUES ('23', '201619040120', '岳鹏帆', '6', '19', '90', '5');
INSERT INTO `student_grade` VALUES ('24', '201619040133', '李伟华', '6', '19', '84', '5');
INSERT INTO `student_grade` VALUES ('30', '201619040111', '赵晓阳', '6', '19', '80', '5');
INSERT INTO `student_grade` VALUES ('31', '201619040103', '闫莹莹', '6', '19', '82', '5');

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
INSERT INTO `test_paper` VALUES ('19', '给葛文杰测试', '1', '1', '2019-2020学年第二学期', '2020-05-03', null, '6', null, null, '3', null, '1', null, '', '100', '60', '单选题@多选题@简答题@', '1', null);

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
