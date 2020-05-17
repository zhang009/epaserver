/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : epa

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2020-05-18 00:24:45
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

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
INSERT INTO `chapter` VALUES ('18', '链表', '6');

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
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8;

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
INSERT INTO `class` VALUES ('75', '测试班级', '2019', '1', '1');
INSERT INTO `class` VALUES ('76', '33', '2016', '13', '2');
INSERT INTO `class` VALUES ('77', 'RB软工网151', '2015', '1', '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of class_course
-- ----------------------------
INSERT INTO `class_course` VALUES ('3', '1', '5');
INSERT INTO `class_course` VALUES ('4', '2', '5');
INSERT INTO `class_course` VALUES ('5', '3', '5');
INSERT INTO `class_course` VALUES ('6', '4', '5');
INSERT INTO `class_course` VALUES ('8', '6', '11');
INSERT INTO `class_course` VALUES ('9', '1', '2');

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
INSERT INTO `course` VALUES ('1', 'RB概率论与数理统计', '2018-2019学年第二学期', '2', '2');
INSERT INTO `course` VALUES ('2', '编译原理', '2018-2019学年第二学期', '5', '1');
INSERT INTO `course` VALUES ('3', '局域网组网技术', '2018-2019学年第二学期', '5', '1');
INSERT INTO `course` VALUES ('4', '网络安全技术', '2018-2019学年第二学期', '5', '1');
INSERT INTO `course` VALUES ('6', 'C语言程序设计', '2018-2019学年第一学期', '11', '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

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
INSERT INTO `department` VALUES ('23', '测试部门', '1', '.1.23', '1', '0');

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
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `chapterId` (`chapterId`),
  CONSTRAINT `fb_question_ibfk_1` FOREIGN KEY (`chapterId`) REFERENCES `chapter` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fb_question
-- ----------------------------
INSERT INTO `fb_question` VALUES ('7', '23@24@25', '结构化程序的三种基本结构为_____________、______________、_____________。', '顺序、选择、循环', '', '3', '3', '6', '4', '1', '1', '2020-05-16 13:05:40');
INSERT INTO `fb_question` VALUES ('8', '29', '结构化程序设计的基本思想是_________________________________________。', '功能分解，逐步细化', '', '3', '3', '6', '6', '2', '1', '2020-05-16 13:23:37');
INSERT INTO `fb_question` VALUES ('9', '17', '设x为int型变量，请写出一个关系表达式___________，用以判断x同时为3和7的倍数时，关系表达式的值为真。', 'x%3==0&&x%7==0', '', '3', '3', '6', '2', '1', '1', '2020-05-16 13:24:44');
INSERT INTO `fb_question` VALUES ('10', '30', '在定义int  a[5][6];后，第9个元素的下标引用是____________。', 'a[1][2]', '', '3', '3', '6', '7', '1', '1', '2020-05-16 13:25:25');
INSERT INTO `fb_question` VALUES ('11', '36', '字符串\"A\"在内存中占用的字节数为_______。', '2字节', '', '3', '3', '6', '9', '1', '1', '2020-05-16 13:26:15');
INSERT INTO `fb_question` VALUES ('12', '20', 'C语言源程序注释符号是：________________________________。', '\\\\ 和 \\*   *\\', '', '3', '3', '6', '3', '1', '1', '2020-05-16 13:28:31');
INSERT INTO `fb_question` VALUES ('13', '42', 'C语言程序中对文本文件的存取是以____________为单位进行的。', '字节', '', '3', '3', '6', '12', '1', '1', '2020-05-16 13:29:11');
INSERT INTO `fb_question` VALUES ('14', '15', '若变量c为char类型，则能正确判断出c为小写字母的表达式是____________。', 'c>=’a’&&c<=’z’', '', '3', '3', '6', '1', '1', '1', '2020-05-16 13:30:05');
INSERT INTO `fb_question` VALUES ('15', '23@25@29', '以下程序的功能是：从键盘上输入若干个学生的成绩，统计计算出平均成绩，并输出低于平均分的学生成绩，用输入负数结束输入。请填空。\n#include <stdio.h>\nvoid main( void)\n{ \n  float x[100]，sum=0.0，ave，a；\n  int n=0，i；\n  printf(\"Enter mark：\\n\")；\n  scanf(\"%f\"，&a)；\n  while (a>=0.0&& n<100)  \n  { \n    sum=__________； \n    x[n]=__________；\n    n++；\n    scanf(\"%f\"，&a)；\n  }\n  ave=__________；\n  printf(\"Output：\\n\")；\n  printf(\"ave=%f\\n\"，ave)；\n  for (i=0;i<n;i++)\n   if (__________) \n   printf (\"%f\\n\",x[i]);\n   \n}', 'sum+a;\nx[n]=a;\nave=sum/n;\nx[i]<age', '', '3', '3', '6', '6', '2', '1', '2020-05-16 13:44:11');
INSERT INTO `fb_question` VALUES ('16', '30', 'C程序中，若用数组名作为函数调用的实参，传递给形参的是数组的首地址______。', '数组的首地址', '', '3', '3', '6', '7', '1', '1', '2020-05-16 13:53:01');
INSERT INTO `fb_question` VALUES ('17', '26', '若自定义函数有返回值，则需用__________语句返回。', 'return', '', '3', '3', '6', '6', '1', '1', '2020-05-16 13:55:42');
INSERT INTO `fb_question` VALUES ('18', '27', '一个函数直接或者间接调用自己本身，称为______。', '递归调用', '', '3', '3', '6', '6', '1', '1', '2020-05-16 15:26:08');
INSERT INTO `fb_question` VALUES ('19', '25', 'while循环和do……while循环的区别是_____________。', 'while循环是先判断条件后执行，do…while是先执行后判断。', '', '3', '3', '6', '5', '2', '1', '2020-05-16 15:27:01');
INSERT INTO `fb_question` VALUES ('20', '28', '调用C语言对字符串处理的库函数时，在# include命令行中应包含的头文件是____________。', 'string.h', '', '3', '3', '6', '1', '1', '1', '2020-05-16 15:27:55');
INSERT INTO `fb_question` VALUES ('21', '44', '单向链表的尾节点next指针应赋值__________。', 'NULL', '', '3', '3', '6', '18', '1', '1', '2020-05-16 15:33:17');
INSERT INTO `fb_question` VALUES ('22', '42', '在使用文件前必须打开文件，函数 ____用来打开文件', 'fopen()', '', '3', '3', '6', '12', '1', '1', '2020-05-16 15:33:52');

-- ----------------------------
-- Table structure for `grade`
-- ----------------------------
DROP TABLE IF EXISTS `grade`;
CREATE TABLE `grade` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL COMMENT '年级名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of grade
-- ----------------------------
INSERT INTO `grade` VALUES ('1', '2016');
INSERT INTO `grade` VALUES ('2', '2017');
INSERT INTO `grade` VALUES ('3', '2018');
INSERT INTO `grade` VALUES ('4', '2019');
INSERT INTO `grade` VALUES ('5', '2015');

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
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

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
INSERT INTO `knows` VALUES ('43', '链表定义', '18');
INSERT INTO `knows` VALUES ('44', '链表基本操作', '18');

-- ----------------------------
-- Table structure for `major`
-- ----------------------------
DROP TABLE IF EXISTS `major`;
CREATE TABLE `major` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `schoolId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

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
INSERT INTO `major` VALUES ('13', '22', '2');

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
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mc_option
-- ----------------------------
INSERT INTO `mc_option` VALUES ('29', '8', '1', 'scanf');
INSERT INTO `mc_option` VALUES ('30', '8', '2', 'short');
INSERT INTO `mc_option` VALUES ('31', '8', '3', '_3com_');
INSERT INTO `mc_option` VALUES ('32', '8', '4', 'int');
INSERT INTO `mc_option` VALUES ('33', '9', '1', 'a=b=c=d=100;');
INSERT INTO `mc_option` VALUES ('34', '9', '2', 'd++;');
INSERT INTO `mc_option` VALUES ('35', '9', '3', 'c+b;');
INSERT INTO `mc_option` VALUES ('36', '9', '4', 'd=(c=22)-(b++);');
INSERT INTO `mc_option` VALUES ('37', '10', '1', '10110');
INSERT INTO `mc_option` VALUES ('38', '10', '2', '0386');
INSERT INTO `mc_option` VALUES ('39', '10', '3', '0Xffa');
INSERT INTO `mc_option` VALUES ('40', '10', '4', 'x2a2');
INSERT INTO `mc_option` VALUES ('41', '11', '1', '一个C源程序可由一个或多个函数组成');
INSERT INTO `mc_option` VALUES ('42', '11', '2', '一个C源程序必须包含一个main()函数');
INSERT INTO `mc_option` VALUES ('43', '11', '3', 'C源程序的基本组成单位是函数');
INSERT INTO `mc_option` VALUES ('44', '11', '4', '在C源程序中,注释说明只能位于一条语句的最后');
INSERT INTO `mc_option` VALUES ('45', '12', '1', '{;}');
INSERT INTO `mc_option` VALUES ('46', '12', '2', 'a=0,b=0,c=0;');
INSERT INTO `mc_option` VALUES ('47', '12', '3', 'if(a>0);');
INSERT INTO `mc_option` VALUES ('48', '12', '4', 'if(b==0) m=1;n=2;');
INSERT INTO `mc_option` VALUES ('49', '13', '1', '可以嵌套定义,不可以嵌套调用');
INSERT INTO `mc_option` VALUES ('50', '13', '2', '不可以嵌套定义,可以嵌套调用');
INSERT INTO `mc_option` VALUES ('51', '13', '3', '可以嵌套定义,也可以嵌套调用');
INSERT INTO `mc_option` VALUES ('52', '13', '4', '嵌套定义和嵌套调用都不允许');
INSERT INTO `mc_option` VALUES ('53', '14', '1', 'good_morning');
INSERT INTO `mc_option` VALUES ('54', '14', '2', 'main');
INSERT INTO `mc_option` VALUES ('55', '14', '3', 'stdio.h');
INSERT INTO `mc_option` VALUES ('56', '14', '4', '8abc');
INSERT INTO `mc_option` VALUES ('57', '15', '1', 'a[0][2]');
INSERT INTO `mc_option` VALUES ('58', '15', '2', 'a[1,3]');
INSERT INTO `mc_option` VALUES ('59', '15', '3', 'a[1>2][!1]');
INSERT INTO `mc_option` VALUES ('60', '15', '4', 'a[2][0]');
INSERT INTO `mc_option` VALUES ('61', '16', '1', '数组的大小是固定的,但可以有不同的类型的数组元素');
INSERT INTO `mc_option` VALUES ('62', '16', '2', '数组的大小是可变的,但所有数组元素的类型必须相同');
INSERT INTO `mc_option` VALUES ('63', '16', '3', '数组的大小是固定的,所有数组元素的类型必须相同');
INSERT INTO `mc_option` VALUES ('64', '16', '4', '数组的大小是可变的,可以有不同的类型的数组元素');
INSERT INTO `mc_option` VALUES ('65', '17', '1', 'do-while语句构成的循环可以使用break语句退出循环');
INSERT INTO `mc_option` VALUES ('66', '17', '2', 'do-while语句构成的循环必须使用break语句退出循环');
INSERT INTO `mc_option` VALUES ('67', '17', '3', 'do-while语句构成的循环,当while中的表达式值为非零时结束循环');
INSERT INTO `mc_option` VALUES ('68', '17', '4', 'do-while语句构成的循环,当while中的表达式值为零时结束循环');
INSERT INTO `mc_option` VALUES ('69', '18', '1', 'return');
INSERT INTO `mc_option` VALUES ('70', '18', '2', 'f2_G3');
INSERT INTO `mc_option` VALUES ('71', '18', '3', 'A3-3');
INSERT INTO `mc_option` VALUES ('72', '18', '4', 'abc');
INSERT INTO `mc_option` VALUES ('73', '19', '1', '用typedef可以定义各种类型名,但不能用来定义变量');
INSERT INTO `mc_option` VALUES ('74', '19', '2', '用typedef可以增加新类型');
INSERT INTO `mc_option` VALUES ('75', '19', '3', '用typedef只是将已存在的类型用一个新的名字来代表');
INSERT INTO `mc_option` VALUES ('76', '19', '4', '使用typedef便于程序的通用');
INSERT INTO `mc_option` VALUES ('77', '20', '1', 'x=y=100');
INSERT INTO `mc_option` VALUES ('78', '20', '2', 'd--;');
INSERT INTO `mc_option` VALUES ('79', '20', '3', 'x+y');
INSERT INTO `mc_option` VALUES ('80', '20', '4', 'c=int(a+b);');
INSERT INTO `mc_option` VALUES ('81', '21', '1', '11 12<回车>');
INSERT INTO `mc_option` VALUES ('82', '21', '2', '11,<空格>12<回车>');
INSERT INTO `mc_option` VALUES ('83', '21', '3', '11,12<回车>');
INSERT INTO `mc_option` VALUES ('84', '21', '4', '11,<回车> 12<回车>');
INSERT INTO `mc_option` VALUES ('85', '22', '1', '0<=x<100');
INSERT INTO `mc_option` VALUES ('86', '22', '2', 'i=j==0');
INSERT INTO `mc_option` VALUES ('87', '22', '3', '(char)(65+3)');
INSERT INTO `mc_option` VALUES ('88', '22', '4', ':x+1=x+1');
INSERT INTO `mc_option` VALUES ('89', '23', '1', '在switch语句中必须使用break语句');
INSERT INTO `mc_option` VALUES ('90', '23', '2', ':break语句只能用于switch语句');
INSERT INTO `mc_option` VALUES ('91', '23', '3', '在switch语句中,可以根据需要使用或不使用break语句');
INSERT INTO `mc_option` VALUES ('92', '23', '4', 'break语句是switch语句的一部分');
INSERT INTO `mc_option` VALUES ('93', '24', '1', '调用函数时,实参可以是表达式');
INSERT INTO `mc_option` VALUES ('94', '24', '2', '调用函数时,实参与形参可以共用内存单元');
INSERT INTO `mc_option` VALUES ('95', '24', '3', '调用函数时,将为形参分配内存单元');
INSERT INTO `mc_option` VALUES ('96', '24', '4', '调用函数时,实参与形参的类型必须一致');
INSERT INTO `mc_option` VALUES ('97', '25', '1', 'static char word[]=\'Turbo\\0\';');
INSERT INTO `mc_option` VALUES ('98', '25', '2', 'static char word[]={\'T\',\'u\',\'r\',\'b\',\'o\',\'\\0\'};');
INSERT INTO `mc_option` VALUES ('99', '25', '3', 'static char word[]={\"Turbo\\0\"};');
INSERT INTO `mc_option` VALUES ('100', '25', '4', 'static char word[]=\"Turbo\\0\";');
INSERT INTO `mc_option` VALUES ('101', '26', '1', '1.2E0.5');
INSERT INTO `mc_option` VALUES ('102', '26', '2', '3.14.159E');
INSERT INTO `mc_option` VALUES ('103', '26', '3', '.5E-3');
INSERT INTO `mc_option` VALUES ('104', '26', '4', 'E15');
INSERT INTO `mc_option` VALUES ('105', '27', '1', 'x1=26.8%3');
INSERT INTO `mc_option` VALUES ('106', '27', '2', 'x=3*x+x');
INSERT INTO `mc_option` VALUES ('107', '27', '3', 'x3=0x12');
INSERT INTO `mc_option` VALUES ('108', '27', '4', 'x4=1+2=3;');
INSERT INTO `mc_option` VALUES ('109', '28', '1', 'if (x>y && x!=y);');
INSERT INTO `mc_option` VALUES ('110', '28', '2', 'if (x==y) x+=y;');
INSERT INTO `mc_option` VALUES ('111', '28', '3', 'if (x!=y) scanf(\"%d\",&x) else scanf(\"%d\",&y);');
INSERT INTO `mc_option` VALUES ('112', '28', '4', 'if (x<y) {x++;y++;}');
INSERT INTO `mc_option` VALUES ('113', '29', '1', '预处理命令行都必须以\"#\"开始');
INSERT INTO `mc_option` VALUES ('114', '29', '2', '在程序中凡是以\"#\"开始的语句行都是预处理命令行');
INSERT INTO `mc_option` VALUES ('115', '29', '3', 'C程序在执行过程中对预处理命令行进行处理');
INSERT INTO `mc_option` VALUES ('116', '29', '4', '#define ABCD是正确的宏定义');
INSERT INTO `mc_option` VALUES ('117', '30', '1', '使用while和do-while循环时,循环变量初始话的操作应在循环体语句之前完成');
INSERT INTO `mc_option` VALUES ('118', '30', '2', 'while循环是先判断表达式,后执行循环语句');
INSERT INTO `mc_option` VALUES ('119', '30', '3', 'do-while和for循环均是先执行循环语句,后判断表达式');
INSERT INTO `mc_option` VALUES ('120', '30', '4', 'for,while和do-while循环中的循环体均可以由空语句构成');
INSERT INTO `mc_option` VALUES ('121', '31', '1', '只能是0或1');
INSERT INTO `mc_option` VALUES ('122', '31', '2', '只能是0或非0正数');
INSERT INTO `mc_option` VALUES ('123', '31', '3', '可以是整型或字符型数据');
INSERT INTO `mc_option` VALUES ('124', '31', '4', '可以是任何类型的数据');
INSERT INTO `mc_option` VALUES ('125', '32', '1', '只能是0或1');
INSERT INTO `mc_option` VALUES ('126', '32', '2', '只能是0或非0正数');
INSERT INTO `mc_option` VALUES ('127', '32', '3', '可以是整型或字符型数据');
INSERT INTO `mc_option` VALUES ('128', '32', '4', '可以是任何类型的数据');
INSERT INTO `mc_option` VALUES ('129', '33', '1', '\'\\t\'');
INSERT INTO `mc_option` VALUES ('130', '33', '2', '\'\\17\'');
INSERT INTO `mc_option` VALUES ('131', '33', '3', '\"n\"');
INSERT INTO `mc_option` VALUES ('132', '33', '4', '\'\\xaa\'');
INSERT INTO `mc_option` VALUES ('133', '34', '1', 'C语言严格区分大小写英文字母');
INSERT INTO `mc_option` VALUES ('134', '34', '2', 'C语言用\";\"作为语句分隔符');
INSERT INTO `mc_option` VALUES ('135', '34', '3', 'C程序书写格式自由,一行内可以写几个语句,一个语句也可以写在几行上.');
INSERT INTO `mc_option` VALUES ('136', '34', '4', '可以使用/*…*/对C程序中的任何部分作注释');
INSERT INTO `mc_option` VALUES ('137', '35', '1', 'continue语句的作用是重新开始一次循环体的执行');
INSERT INTO `mc_option` VALUES ('138', '35', '2', '只能在循环体内和switch语句体内使用break语句');
INSERT INTO `mc_option` VALUES ('139', '35', '3', '在循环体内使用break语句和continue语句的作用相同');
INSERT INTO `mc_option` VALUES ('140', '35', '4', '从多重循环嵌套中退出是,只能使用goto语句');

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
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `chapterId` (`chapterId`),
  CONSTRAINT `mc_question_ibfk_1` FOREIGN KEY (`chapterId`) REFERENCES `chapter` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mc_question
-- ----------------------------
INSERT INTO `mc_question` VALUES ('8', '15', '以下可以定义为用户标识符的有().', 'AC', '', '3', '3', '6', '1', '1', '1', '2020-05-16 17:02:49');
INSERT INTO `mc_question` VALUES ('9', '16', '若a,b,c,d都是int型变量且初值为0,以下选项中正确的赋值语句是().', 'ABD', '', '3', '3', '6', '1', '1', '1', '2020-05-16 17:06:08');
INSERT INTO `mc_question` VALUES ('10', '15', '以下选项中不是C语言合法整数的是().', 'BD', '', '3', '3', '6', '1', '1', '1', '2020-05-16 17:07:20');
INSERT INTO `mc_question` VALUES ('11', '26', '以下叙述中正确的是().', 'ABC', '', '3', '3', '6', '6', '2', '1', '2020-05-16 17:09:01');
INSERT INTO `mc_question` VALUES ('12', '17', '以下4个选项中,可以看作是一条语句的有().', 'ABC', '', '3', '3', '6', '2', '2', '1', '2020-05-16 17:10:29');
INSERT INTO `mc_question` VALUES ('13', '26', '以下对C语言中的函数描述不正确的有().', 'ACD', '', '3', '3', '6', '6', '2', '1', '2020-05-16 17:11:38');
INSERT INTO `mc_question` VALUES ('14', '15', '下列选项中是C语言合法标志符的有().', 'AB', '', '3', '3', '6', '1', '1', '1', '2020-05-16 17:13:34');
INSERT INTO `mc_question` VALUES ('15', '31', '在定义int a[2][3];之后,对a的引用正确的有().', 'AC', '', '3', '3', '6', '7', '2', '1', '2020-05-16 17:14:38');
INSERT INTO `mc_question` VALUES ('16', '30@31', '以下关于数组描述错误的是().', 'ABD', '', '3', '3', '6', '7', '2', '1', '2020-05-16 17:15:29');
INSERT INTO `mc_question` VALUES ('17', '25', '对do-while语句描述正确的是().', 'AD', '', '3', '3', '6', '5', '2', '1', '2020-05-16 17:16:32');
INSERT INTO `mc_question` VALUES ('18', '15', '以下用户标识符,其中合法的是().', 'BD', '', '3', '3', '6', '2', '1', '1', '2020-05-16 17:17:24');
INSERT INTO `mc_question` VALUES ('19', '15', '以下关于typedef的叙述正确的是().', 'ACD', '', '3', '3', '6', '1', '2', '1', '2020-05-16 17:18:24');
INSERT INTO `mc_question` VALUES ('20', '16', '以下不合法的赋值语句是().', 'ACD', '', '3', '3', '6', '2', '1', '1', '2020-05-16 17:19:29');
INSERT INTO `mc_question` VALUES ('21', '20', '有定义语句:int x,y;若要通过scanf(\"%d,%d\",&x,&y);\n语句使变量x得到数值11,变量y得到数值12,下面四组输入形式中,正确的有().', 'BCD', '', '3', '3', '6', '3', '2', '1', '2020-05-16 17:20:40');
INSERT INTO `mc_question` VALUES ('22', '17', '以下选项中合法的表达式是().', 'BAC', '', '3', '3', '6', '2', '1', '1', '2020-05-16 17:39:47');
INSERT INTO `mc_question` VALUES ('23', '25', '以下对switch语句和break语句中描述错误的有().', 'ABD', '', '3', '3', '6', '5', '1', '1', '2020-05-16 17:41:18');
INSERT INTO `mc_question` VALUES ('24', '26', '以下描述正确的是().', 'ACD', '', '3', '3', '6', '6', '2', '1', '2020-05-16 17:42:55');
INSERT INTO `mc_question` VALUES ('25', '31', '以下对二维数组a进行正确初始话的是().', 'BCD', '', '3', '3', '6', '7', '2', '1', '2020-05-16 17:44:11');
INSERT INTO `mc_question` VALUES ('26', '15', '以下不符合C语言语法的实型常量是().', 'ABD', '', '3', '3', '6', '1', '2', '1', '2020-05-16 17:45:13');
INSERT INTO `mc_question` VALUES ('27', '16', '若以下选项中的变量已正确定义,则不正确的赋值语句是().', 'AD', '', '3', '3', '6', '2', '2', '1', '2020-05-16 17:45:59');
INSERT INTO `mc_question` VALUES ('28', '22', '以下正确的if语句形式是().', 'ABD', '', '3', '3', '6', '4', '2', '1', '2020-05-16 17:47:06');
INSERT INTO `mc_question` VALUES ('29', '15', '以下叙述正确的是().', 'ABD', '', '3', '3', '6', '1', '1', '1', '2020-05-16 17:48:10');
INSERT INTO `mc_question` VALUES ('30', '25', '以下描述正确的是().', 'ABD', '', '3', '3', '6', '5', '2', '1', '2020-05-16 17:49:04');
INSERT INTO `mc_question` VALUES ('31', '17', '下列对逻辑运算符两侧的运算对象的数据类型描述不正确的是().', 'ABD', '', '3', '3', '6', '2', '1', '1', '2020-05-16 17:49:51');
INSERT INTO `mc_question` VALUES ('32', '17', '下列对逻辑运算符两侧的运算对象的数据类型描述不正确的是().', 'ABD', '', '3', '3', '6', '2', '1', '1', '2020-05-16 17:49:52');
INSERT INTO `mc_question` VALUES ('33', '15', '以下选项中,合法的字符常量是().', 'ABD', '', '3', '3', '6', '1', '1', '1', '2020-05-16 17:51:20');
INSERT INTO `mc_question` VALUES ('34', '15', '以下叙述正确的是().', 'ABCD', '', '3', '3', '6', '1', '2', '1', '2020-05-16 17:52:09');
INSERT INTO `mc_question` VALUES ('35', '25', '以下描述错误的是().', 'CD', '', '3', '3', '6', '5', '2', '1', '2020-05-16 17:53:34');

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
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

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
INSERT INTO `menu` VALUES ('42', '/analysis/all/**', '/ana/scoredistributionoftestpaperchapters', 'AnaScoreDistributionOfTestPaperChapters', '章节分值分布', null, null, '1', '5', '1');
INSERT INTO `menu` VALUES ('43', '/analysis/all/**', '/ana/scoredistributionofknowledgepointsIntestpaper', 'AnaScoreDistributionOfKnowledgePointsInTestPaper', '知识点分值分布', null, null, '1', '5', '1');
INSERT INTO `menu` VALUES ('44', '/student/all/**', '/stu/analysis', 'StuAnalysis', '我的考试', null, null, '1', '45', '1');
INSERT INTO `menu` VALUES ('45', '/', '/home', 'Home', '我的考试', 'fa fa-bar-chart', null, '1', '1', '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=404 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menu_role
-- ----------------------------
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
INSERT INTO `menu_role` VALUES ('350', '44', '4');
INSERT INTO `menu_role` VALUES ('378', '7', '3');
INSERT INTO `menu_role` VALUES ('379', '8', '3');
INSERT INTO `menu_role` VALUES ('380', '9', '3');
INSERT INTO `menu_role` VALUES ('381', '10', '3');
INSERT INTO `menu_role` VALUES ('382', '11', '3');
INSERT INTO `menu_role` VALUES ('383', '14', '3');
INSERT INTO `menu_role` VALUES ('384', '15', '3');
INSERT INTO `menu_role` VALUES ('385', '16', '3');
INSERT INTO `menu_role` VALUES ('386', '17', '3');
INSERT INTO `menu_role` VALUES ('387', '19', '3');
INSERT INTO `menu_role` VALUES ('388', '20', '3');
INSERT INTO `menu_role` VALUES ('389', '21', '3');
INSERT INTO `menu_role` VALUES ('390', '22', '3');
INSERT INTO `menu_role` VALUES ('391', '37', '3');
INSERT INTO `menu_role` VALUES ('392', '38', '3');
INSERT INTO `menu_role` VALUES ('393', '39', '3');
INSERT INTO `menu_role` VALUES ('394', '40', '3');
INSERT INTO `menu_role` VALUES ('395', '41', '3');
INSERT INTO `menu_role` VALUES ('396', '42', '3');
INSERT INTO `menu_role` VALUES ('397', '43', '3');
INSERT INTO `menu_role` VALUES ('398', '23', '3');
INSERT INTO `menu_role` VALUES ('399', '24', '3');
INSERT INTO `menu_role` VALUES ('400', '25', '3');
INSERT INTO `menu_role` VALUES ('401', '26', '3');
INSERT INTO `menu_role` VALUES ('402', '27', '3');
INSERT INTO `menu_role` VALUES ('403', '34', '3');

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
  CONSTRAINT `paper_check_ibfk_1` FOREIGN KEY (`testPaperId`) REFERENCES `test_paper` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of paper_check
-- ----------------------------
INSERT INTO `paper_check` VALUES ('3', '24', '0', '3', '3', '0', null, '2020-05-17');
INSERT INTO `paper_check` VALUES ('5', '26', '0', '3', '3', '0', null, '2020-05-17');
INSERT INTO `paper_check` VALUES ('6', '27', '0', '3', '3', '1', null, '2020-05-17');

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
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `chapterId` (`chapterId`),
  CONSTRAINT `qa_question_ibfk_1` FOREIGN KEY (`chapterId`) REFERENCES `chapter` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qa_question
-- ----------------------------
INSERT INTO `qa_question` VALUES ('4', '25', '找出所有的水仙花数，并输出。', '#include <stdio.h>	\nvoid main()\n{\n	int x,a,b,c;                                             \n	for(x=100;x<1000;x++)                       \n	{\n		a=x/100;                                 \n	b=x%100/10;                                 \n		c=x%10;                                       \n		if(x==a*a*a+b*b*b+c*c*c)                        \n			printf(\"%d\\n\",x);                        \n	}\n}', '', '3', '5', '2', '3', '6', '1', '2020-05-16 13:33:31');
INSERT INTO `qa_question` VALUES ('5', '23@25', '有一个分数数列  2/1 ，3/2，5/3，8/5，13/8，21/13……求出这个数列前20项之和。', '#include <stdio.h>                        \nvoid main()\n{\n	double f,f1=1,f2=1,n,s=0;              \n	int i;\n	for(i=3;i<=20;i++)                      \n	{\n		f=f1+f2;                           \n		n=f/f2;                           \n		s+=n;                              \n		f1=f2;\n		f2=f;		                       \n	}\n	printf(\"%lf\\n\",s);                       \n}', '', '3', '5', '3', '3', '6', '1', '2020-05-16 13:36:25');
INSERT INTO `qa_question` VALUES ('6', '32', '编写一个函数，对N个整型数排序。', 'void  sort(int a[],int n)                  \n{\n	int i,j,t;                               \n	for(i=0;i<n-1;i++)                       \n	{\n		for(j=0;j<n-i-1;j++)                  \n		{\n			if(a[j]>a[j+1])                   \n			{\n				t=a[j];\n				a[j]=a[j+1];\n				a[j+1]=t;\n			}\n		}\n	}\n}', '', '3', '7', '2', '3', '6', '1', '2020-05-16 13:37:40');
INSERT INTO `qa_question` VALUES ('7', '38', '写一个函数，实现两个字符串的比较，即自己编写一个strcpm函数，函数原型为：int strcmp(char * str1,char *str2);', 'int strcmp(char * str1,char *str2)\n{\n	int i=0;                                      \n	while (str1[i]!=\'\\0\'&&str2[i]!=\'\\0\')          \n	{\n		if(str1[i]!=str2[i])                    \n			break;\n		i++;                                       \n	}\n	return str1[i]-str2[i];                       \n}', '', '3', '9', '3', '3', '6', '1', '2020-05-16 13:39:13');
INSERT INTO `qa_question` VALUES ('8', '29', '打印出Fibonacci，数列的前20个数\n打开程序Cprong042.c，完成其中的fun()函数，使程序打印出Fibonacci，数列的前20个数。\n该数列{1，1，2，3，5，8，13，……}的第1，第2个数为1，从第3个数开始每个数等于\n前2个数之和。', '#include <stdio.h>\n#include <math.h>  \nvoid fun(int a[],int m)\n{\n /**/ \n	int i;\n        a[0] = 1;\n	a[1] = 1;\n	for(i=2; i<m; i++)\n	{\n		a[i] = a[i-1] + a[i-2];\n	}\n /**/\n}\n\nvoid main()\n{\n  int a[20],i;\n  fun(a,20);\n  for(i=0; i<20; i++)\n    printf(\"%d   \",a[i]);\n  printf(\"\\n\");\n  getch();\n}', '', '3', '6', '3', '3', '6', '1', '2020-05-16 17:00:37');

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
  `postTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `question_check_ibfk_1` (`postTeacherId`),
  KEY `question_check_ibfk_2` (`checkTeacherId`),
  CONSTRAINT `question_check_ibfk_1` FOREIGN KEY (`postTeacherId`) REFERENCES `teacher` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `question_check_ibfk_2` FOREIGN KEY (`checkTeacherId`) REFERENCES `teacher` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=184 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of question_check
-- ----------------------------
INSERT INTO `question_check` VALUES ('46', '16', '3', '3', '1', 'sc', '', '2020-05-16 11:56:39');
INSERT INTO `question_check` VALUES ('47', '17', '3', '3', '1', 'sc', '', '2020-05-16 12:40:30');
INSERT INTO `question_check` VALUES ('48', '18', '3', '3', '1', 'sc', '', '2020-05-16 12:40:33');
INSERT INTO `question_check` VALUES ('49', '19', '3', '3', '1', 'sc', '', '2020-05-16 12:40:34');
INSERT INTO `question_check` VALUES ('50', '20', '3', '3', '1', 'sc', '', '2020-05-16 12:40:37');
INSERT INTO `question_check` VALUES ('51', '21', '3', '3', '1', 'sc', '', '2020-05-16 12:40:40');
INSERT INTO `question_check` VALUES ('52', '22', '3', '3', '1', 'sc', '', '2020-05-16 12:40:42');
INSERT INTO `question_check` VALUES ('53', '23', '3', '3', '1', 'sc', '', '2020-05-16 12:40:44');
INSERT INTO `question_check` VALUES ('54', '24', '3', '3', '1', 'sc', '', '2020-05-16 12:40:46');
INSERT INTO `question_check` VALUES ('55', '25', '3', '3', '1', 'sc', '', '2020-05-16 12:40:48');
INSERT INTO `question_check` VALUES ('56', '26', '3', '3', '1', 'sc', '', '2020-05-16 12:40:51');
INSERT INTO `question_check` VALUES ('57', '27', '3', '3', '1', 'sc', '', '2020-05-16 12:40:53');
INSERT INTO `question_check` VALUES ('58', '28', '3', '3', '1', 'sc', '', '2020-05-16 12:40:55');
INSERT INTO `question_check` VALUES ('59', '29', '3', '3', '1', 'sc', '', '2020-05-16 12:40:57');
INSERT INTO `question_check` VALUES ('60', '30', '3', '3', '1', 'sc', '', '2020-05-16 12:40:58');
INSERT INTO `question_check` VALUES ('61', '7', '3', '3', '1', 'fb', '', '2020-05-16 15:46:30');
INSERT INTO `question_check` VALUES ('62', '8', '3', '3', '1', 'fb', '', '2020-05-16 15:46:32');
INSERT INTO `question_check` VALUES ('63', '9', '3', '3', '1', 'fb', '', '2020-05-16 15:46:41');
INSERT INTO `question_check` VALUES ('64', '10', '3', '3', '1', 'fb', '', '2020-05-16 15:46:50');
INSERT INTO `question_check` VALUES ('65', '11', '3', '3', '1', 'fb', '', '2020-05-16 15:47:02');
INSERT INTO `question_check` VALUES ('66', '12', '3', '3', '1', 'fb', '', '2020-05-16 15:47:06');
INSERT INTO `question_check` VALUES ('67', '13', '3', '3', '1', 'fb', '', '2020-05-16 15:47:08');
INSERT INTO `question_check` VALUES ('68', '14', '3', '3', '1', 'fb', '', '2020-05-16 15:47:10');
INSERT INTO `question_check` VALUES ('69', '4', '3', '3', '1', 'qa', '', '2020-05-16 15:47:12');
INSERT INTO `question_check` VALUES ('70', '5', '3', '3', '1', 'qa', '', '2020-05-16 15:47:14');
INSERT INTO `question_check` VALUES ('71', '6', '3', '3', '1', 'qa', '', '2020-05-16 15:47:16');
INSERT INTO `question_check` VALUES ('72', '7', '3', '3', '1', 'qa', '', '2020-05-16 15:47:18');
INSERT INTO `question_check` VALUES ('73', '15', '3', '3', '1', 'fb', '', '2020-05-16 15:47:23');
INSERT INTO `question_check` VALUES ('74', '16', '3', '3', '1', 'fb', '', '2020-05-16 15:47:29');
INSERT INTO `question_check` VALUES ('75', '17', '3', '3', '1', 'fb', '', '2020-05-16 15:47:31');
INSERT INTO `question_check` VALUES ('76', '31', '3', '3', '1', 'sc', '', '2020-05-16 15:47:35');
INSERT INTO `question_check` VALUES ('77', '32', '3', '3', '1', 'sc', '', '2020-05-16 15:47:37');
INSERT INTO `question_check` VALUES ('78', '33', '3', '3', '1', 'sc', '', '2020-05-16 15:47:39');
INSERT INTO `question_check` VALUES ('79', '34', '3', '3', '1', 'sc', '', '2020-05-16 15:47:40');
INSERT INTO `question_check` VALUES ('80', '35', '3', '3', '1', 'sc', '', '2020-05-16 15:47:42');
INSERT INTO `question_check` VALUES ('81', '36', '3', '3', '1', 'sc', '', '2020-05-16 15:47:44');
INSERT INTO `question_check` VALUES ('82', '37', '3', '3', '1', 'sc', '', '2020-05-16 15:47:45');
INSERT INTO `question_check` VALUES ('83', '38', '3', '3', '1', 'sc', '', '2020-05-16 15:47:48');
INSERT INTO `question_check` VALUES ('84', '39', '3', '3', '1', 'sc', '', '2020-05-16 15:47:50');
INSERT INTO `question_check` VALUES ('85', '40', '3', '3', '1', 'sc', '', '2020-05-16 15:47:51');
INSERT INTO `question_check` VALUES ('86', '41', '3', '3', '1', 'sc', '', '2020-05-16 15:47:55');
INSERT INTO `question_check` VALUES ('87', '42', '3', '3', '1', 'sc', '', '2020-05-16 15:47:57');
INSERT INTO `question_check` VALUES ('88', '43', '3', '3', '1', 'sc', '', '2020-05-16 15:47:59');
INSERT INTO `question_check` VALUES ('89', '44', '3', '3', '1', 'sc', '', '2020-05-16 15:48:09');
INSERT INTO `question_check` VALUES ('90', '45', '3', '3', '1', 'sc', '', '2020-05-16 15:48:12');
INSERT INTO `question_check` VALUES ('91', '46', '3', '3', '1', 'sc', '', '2020-05-16 15:48:15');
INSERT INTO `question_check` VALUES ('92', '47', '3', '3', '1', 'sc', '', '2020-05-16 15:48:18');
INSERT INTO `question_check` VALUES ('93', '48', '3', '3', '1', 'sc', '', '2020-05-16 15:48:20');
INSERT INTO `question_check` VALUES ('94', '49', '3', '3', '1', 'sc', '', '2020-05-16 15:48:23');
INSERT INTO `question_check` VALUES ('95', '18', '3', '3', '1', 'fb', '', '2020-05-16 15:48:21');
INSERT INTO `question_check` VALUES ('96', '19', '3', '3', '1', 'fb', '', '2020-05-16 15:48:27');
INSERT INTO `question_check` VALUES ('97', '20', '3', '3', '1', 'fb', '', '2020-05-16 15:48:29');
INSERT INTO `question_check` VALUES ('98', '21', '3', '3', '1', 'fb', '', '2020-05-16 15:48:32');
INSERT INTO `question_check` VALUES ('99', '22', '3', '3', '1', 'fb', '', '2020-05-16 15:48:41');
INSERT INTO `question_check` VALUES ('100', '50', '3', '3', '1', 'sc', '', '2020-05-16 15:48:53');
INSERT INTO `question_check` VALUES ('101', '51', '3', '3', '1', 'sc', '', '2020-05-16 15:48:58');
INSERT INTO `question_check` VALUES ('102', '8', '3', '3', '1', 'qa', '', '2020-05-16 17:00:55');
INSERT INTO `question_check` VALUES ('103', '8', '3', '3', '1', 'mc', '', '2020-05-16 20:35:47');
INSERT INTO `question_check` VALUES ('104', '9', '3', '3', '1', 'mc', '', '2020-05-16 20:35:53');
INSERT INTO `question_check` VALUES ('105', '10', '3', '3', '1', 'mc', '', '2020-05-16 20:35:55');
INSERT INTO `question_check` VALUES ('106', '11', '3', '3', '1', 'mc', '', '2020-05-16 20:36:00');
INSERT INTO `question_check` VALUES ('107', '12', '3', '3', '1', 'mc', '', '2020-05-16 20:36:02');
INSERT INTO `question_check` VALUES ('108', '13', '3', '3', '1', 'mc', '', '2020-05-16 20:36:04');
INSERT INTO `question_check` VALUES ('109', '14', '3', '3', '1', 'mc', '', '2020-05-16 20:36:06');
INSERT INTO `question_check` VALUES ('110', '15', '3', '3', '1', 'mc', '', '2020-05-16 20:36:08');
INSERT INTO `question_check` VALUES ('111', '16', '3', '3', '1', 'mc', '', '2020-05-16 20:36:09');
INSERT INTO `question_check` VALUES ('112', '17', '3', '3', '1', 'mc', '', '2020-05-16 20:36:11');
INSERT INTO `question_check` VALUES ('113', '18', '3', '3', '1', 'mc', '', '2020-05-16 20:36:13');
INSERT INTO `question_check` VALUES ('114', '19', '3', '3', '1', 'mc', '', '2020-05-16 20:36:14');
INSERT INTO `question_check` VALUES ('115', '20', '3', '3', '1', 'mc', '', '2020-05-16 20:36:16');
INSERT INTO `question_check` VALUES ('116', '21', '3', '3', '1', 'mc', '', '2020-05-16 20:36:20');
INSERT INTO `question_check` VALUES ('117', '22', '3', '3', '1', 'mc', '', '2020-05-16 20:36:22');
INSERT INTO `question_check` VALUES ('118', '23', '3', '3', '1', 'mc', '', '2020-05-16 20:39:10');
INSERT INTO `question_check` VALUES ('119', '24', '3', '3', '1', 'mc', '', '2020-05-16 20:39:16');
INSERT INTO `question_check` VALUES ('120', '25', '3', '3', '1', 'mc', '', '2020-05-16 20:39:20');
INSERT INTO `question_check` VALUES ('121', '26', '3', '3', '1', 'mc', '', '2020-05-16 20:39:23');
INSERT INTO `question_check` VALUES ('122', '27', '3', '3', '1', 'mc', '', '2020-05-16 20:39:25');
INSERT INTO `question_check` VALUES ('123', '28', '3', '3', '1', 'mc', '', '2020-05-16 20:39:27');
INSERT INTO `question_check` VALUES ('124', '29', '3', '3', '1', 'mc', '', '2020-05-16 20:39:28');
INSERT INTO `question_check` VALUES ('125', '30', '3', '3', '1', 'mc', '', '2020-05-16 20:39:30');
INSERT INTO `question_check` VALUES ('126', '31', '3', '3', '1', 'mc', '', '2020-05-16 20:38:38');
INSERT INTO `question_check` VALUES ('127', '32', '3', '3', '1', 'mc', '', '2020-05-16 20:38:40');
INSERT INTO `question_check` VALUES ('128', '33', '3', '3', '1', 'mc', '', '2020-05-16 20:38:41');
INSERT INTO `question_check` VALUES ('129', '34', '3', '3', '1', 'mc', '', '2020-05-16 20:38:43');
INSERT INTO `question_check` VALUES ('130', '35', '3', '3', '1', 'mc', '', '2020-05-16 20:38:44');
INSERT INTO `question_check` VALUES ('131', '15', '3', '3', '1', 'tf', '', '2020-05-16 20:38:46');
INSERT INTO `question_check` VALUES ('132', '16', '3', '3', '1', 'tf', '', '2020-05-16 20:38:48');
INSERT INTO `question_check` VALUES ('133', '17', '3', '3', '1', 'tf', '', '2020-05-16 20:38:50');
INSERT INTO `question_check` VALUES ('134', '18', '3', '3', '1', 'tf', '', '2020-05-16 20:38:57');
INSERT INTO `question_check` VALUES ('135', '19', '3', '3', '1', 'tf', '', '2020-05-16 20:39:02');
INSERT INTO `question_check` VALUES ('136', '20', '3', '3', '1', 'tf', '', '2020-05-16 20:38:16');
INSERT INTO `question_check` VALUES ('137', '21', '3', '3', '1', 'tf', '', '2020-05-16 20:38:18');
INSERT INTO `question_check` VALUES ('138', '22', '3', '3', '1', 'tf', '', '2020-05-16 20:38:20');
INSERT INTO `question_check` VALUES ('139', '23', '3', '3', '1', 'tf', '', '2020-05-16 20:38:21');
INSERT INTO `question_check` VALUES ('140', '24', '3', '3', '1', 'tf', '', '2020-05-16 20:38:25');
INSERT INTO `question_check` VALUES ('141', '25', '3', '3', '1', 'tf', '', '2020-05-16 20:38:27');
INSERT INTO `question_check` VALUES ('142', '26', '3', '3', '1', 'tf', '', '2020-05-16 20:38:29');
INSERT INTO `question_check` VALUES ('143', '27', '3', '3', '1', 'tf', '', '2020-05-16 20:38:31');
INSERT INTO `question_check` VALUES ('144', '28', '3', '3', '1', 'tf', '', '2020-05-16 20:38:35');
INSERT INTO `question_check` VALUES ('145', '29', '3', '3', '1', 'tf', '', '2020-05-16 20:38:33');
INSERT INTO `question_check` VALUES ('146', '30', '3', '3', '1', 'tf', '', '2020-05-16 20:37:57');
INSERT INTO `question_check` VALUES ('147', '31', '3', '3', '1', 'tf', '', '2020-05-16 20:38:00');
INSERT INTO `question_check` VALUES ('148', '32', '3', '3', '1', 'tf', '', '2020-05-16 20:37:58');
INSERT INTO `question_check` VALUES ('149', '33', '3', '3', '1', 'tf', '', '2020-05-16 20:38:02');
INSERT INTO `question_check` VALUES ('150', '34', '3', '3', '1', 'tf', '', '2020-05-16 20:38:04');
INSERT INTO `question_check` VALUES ('151', '35', '3', '3', '1', 'tf', '', '2020-05-16 20:38:05');
INSERT INTO `question_check` VALUES ('152', '36', '3', '3', '1', 'tf', '', '2020-05-16 20:38:07');
INSERT INTO `question_check` VALUES ('153', '37', '3', '3', '1', 'tf', '', '2020-05-16 20:38:09');
INSERT INTO `question_check` VALUES ('154', '38', '3', '3', '1', 'tf', '', '2020-05-16 20:38:10');
INSERT INTO `question_check` VALUES ('155', '39', '3', '3', '1', 'tf', '', '2020-05-16 20:38:12');
INSERT INTO `question_check` VALUES ('156', '40', '3', '3', '1', 'tf', '', '2020-05-16 20:37:37');
INSERT INTO `question_check` VALUES ('157', '41', '3', '3', '1', 'tf', '', '2020-05-16 20:37:40');
INSERT INTO `question_check` VALUES ('158', '42', '3', '3', '1', 'tf', '', '2020-05-16 20:37:41');
INSERT INTO `question_check` VALUES ('159', '43', '3', '3', '1', 'tf', '', '2020-05-16 20:37:43');
INSERT INTO `question_check` VALUES ('160', '44', '3', '3', '1', 'tf', '', '2020-05-16 20:37:45');
INSERT INTO `question_check` VALUES ('161', '45', '3', '3', '1', 'tf', '', '2020-05-16 20:37:46');
INSERT INTO `question_check` VALUES ('162', '46', '3', '3', '1', 'tf', '', '2020-05-16 20:37:48');
INSERT INTO `question_check` VALUES ('163', '47', '3', '3', '1', 'tf', '', '2020-05-16 20:37:50');
INSERT INTO `question_check` VALUES ('164', '48', '3', '3', '1', 'tf', '', '2020-05-16 20:37:51');
INSERT INTO `question_check` VALUES ('165', '49', '3', '3', '1', 'tf', '', '2020-05-16 20:37:53');
INSERT INTO `question_check` VALUES ('166', '50', '3', '3', '1', 'tf', '', '2020-05-16 20:37:07');
INSERT INTO `question_check` VALUES ('167', '51', '3', '3', '1', 'tf', '', '2020-05-16 20:37:12');
INSERT INTO `question_check` VALUES ('168', '52', '3', '3', '1', 'tf', '', '2020-05-16 20:37:18');
INSERT INTO `question_check` VALUES ('169', '53', '3', '3', '1', 'tf', '', '2020-05-16 20:37:23');
INSERT INTO `question_check` VALUES ('170', '54', '3', '3', '1', 'tf', '', '2020-05-16 20:37:27');
INSERT INTO `question_check` VALUES ('171', '55', '3', '3', '1', 'tf', '', '2020-05-16 20:37:30');
INSERT INTO `question_check` VALUES ('172', '56', '3', '3', '1', 'tf', '', '2020-05-16 20:37:32');
INSERT INTO `question_check` VALUES ('173', '57', '3', '3', '1', 'tf', '', '2020-05-16 20:36:59');
INSERT INTO `question_check` VALUES ('174', '58', '3', '3', '1', 'tf', '', '2020-05-16 20:36:53');
INSERT INTO `question_check` VALUES ('175', '59', '3', '3', '1', 'tf', '', '2020-05-16 20:36:50');
INSERT INTO `question_check` VALUES ('176', '60', '3', '3', '1', 'tf', '', '2020-05-16 20:36:46');
INSERT INTO `question_check` VALUES ('177', '61', '3', '3', '1', 'tf', '', '2020-05-16 20:36:43');
INSERT INTO `question_check` VALUES ('178', '62', '3', '3', '1', 'tf', '', '2020-05-16 20:36:41');
INSERT INTO `question_check` VALUES ('179', '63', '3', '3', '1', 'tf', '', '2020-05-16 20:36:37');
INSERT INTO `question_check` VALUES ('180', '64', '3', '3', '1', 'tf', '', '2020-05-16 20:36:39');
INSERT INTO `question_check` VALUES ('181', '65', '3', '3', '1', 'tf', '', '2020-05-16 20:36:34');
INSERT INTO `question_check` VALUES ('182', '66', '3', '3', '1', 'tf', '', '2020-05-16 20:36:29');
INSERT INTO `question_check` VALUES ('183', '67', '3', '3', '1', 'tf', '', '2020-05-16 20:36:27');

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
) ENGINE=InnoDB AUTO_INCREMENT=1818 DEFAULT CHARSET=utf8;

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
INSERT INTO `question_grade` VALUES ('893', '46', '586', '单选题', '1', '1');
INSERT INTO `question_grade` VALUES ('894', '46', '587', '单选题', '2', '1');
INSERT INTO `question_grade` VALUES ('895', '46', '588', '单选题', '3', '1');
INSERT INTO `question_grade` VALUES ('896', '46', '589', '单选题', '4', '1');
INSERT INTO `question_grade` VALUES ('897', '46', '590', '单选题', '5', '1');
INSERT INTO `question_grade` VALUES ('898', '46', '591', '单选题', '6', '1');
INSERT INTO `question_grade` VALUES ('899', '46', '592', '单选题', '7', '1');
INSERT INTO `question_grade` VALUES ('900', '46', '593', '单选题', '8', '1');
INSERT INTO `question_grade` VALUES ('901', '46', '594', '单选题', '9', '1');
INSERT INTO `question_grade` VALUES ('902', '46', '595', '单选题', '10', '0');
INSERT INTO `question_grade` VALUES ('903', '46', '596', '多选题', '1', '2');
INSERT INTO `question_grade` VALUES ('904', '46', '597', '多选题', '2', '2');
INSERT INTO `question_grade` VALUES ('905', '46', '598', '多选题', '3', '2');
INSERT INTO `question_grade` VALUES ('906', '46', '599', '多选题', '4', '2');
INSERT INTO `question_grade` VALUES ('907', '46', '600', '多选题', '5', '2');
INSERT INTO `question_grade` VALUES ('908', '46', '601', '填空题', '1', '5');
INSERT INTO `question_grade` VALUES ('909', '46', '602', '填空题', '2', '5');
INSERT INTO `question_grade` VALUES ('910', '46', '603', '填空题', '3', '5');
INSERT INTO `question_grade` VALUES ('911', '46', '604', '填空题', '4', '5');
INSERT INTO `question_grade` VALUES ('912', '46', '605', '编程题', '1', '10');
INSERT INTO `question_grade` VALUES ('913', '46', '606', '编程题', '2', '5');
INSERT INTO `question_grade` VALUES ('914', '46', '607', '编程题', '3', '10');
INSERT INTO `question_grade` VALUES ('915', '46', '608', '编程题', '4', '6');
INSERT INTO `question_grade` VALUES ('916', '46', '609', '编程题', '5', '4');
INSERT INTO `question_grade` VALUES ('917', '46', '610', '编程题', '6', '0');
INSERT INTO `question_grade` VALUES ('1668', '77', '586', '单选题', '1', '1');
INSERT INTO `question_grade` VALUES ('1669', '77', '587', '单选题', '2', '1');
INSERT INTO `question_grade` VALUES ('1670', '77', '588', '单选题', '3', '1');
INSERT INTO `question_grade` VALUES ('1671', '77', '589', '单选题', '4', '1');
INSERT INTO `question_grade` VALUES ('1672', '77', '590', '单选题', '5', '1');
INSERT INTO `question_grade` VALUES ('1673', '77', '591', '单选题', '6', '1');
INSERT INTO `question_grade` VALUES ('1674', '77', '592', '单选题', '7', '0');
INSERT INTO `question_grade` VALUES ('1675', '77', '593', '单选题', '8', '0');
INSERT INTO `question_grade` VALUES ('1676', '77', '594', '单选题', '9', '0');
INSERT INTO `question_grade` VALUES ('1677', '77', '595', '单选题', '10', '0');
INSERT INTO `question_grade` VALUES ('1678', '77', '596', '多选题', '1', '2');
INSERT INTO `question_grade` VALUES ('1679', '77', '597', '多选题', '2', '2');
INSERT INTO `question_grade` VALUES ('1680', '77', '598', '多选题', '3', '2');
INSERT INTO `question_grade` VALUES ('1681', '77', '599', '多选题', '4', '2');
INSERT INTO `question_grade` VALUES ('1682', '77', '600', '多选题', '5', '2');
INSERT INTO `question_grade` VALUES ('1683', '77', '601', '填空题', '1', '5');
INSERT INTO `question_grade` VALUES ('1684', '77', '602', '填空题', '2', '5');
INSERT INTO `question_grade` VALUES ('1685', '77', '603', '填空题', '3', '5');
INSERT INTO `question_grade` VALUES ('1686', '77', '604', '填空题', '4', '5');
INSERT INTO `question_grade` VALUES ('1687', '77', '605', '编程题', '1', '10');
INSERT INTO `question_grade` VALUES ('1688', '77', '606', '编程题', '2', '10');
INSERT INTO `question_grade` VALUES ('1689', '77', '607', '编程题', '3', '10');
INSERT INTO `question_grade` VALUES ('1690', '77', '608', '编程题', '4', '10');
INSERT INTO `question_grade` VALUES ('1691', '77', '609', '编程题', '5', '10');
INSERT INTO `question_grade` VALUES ('1692', '77', '610', '编程题', '6', '0');
INSERT INTO `question_grade` VALUES ('1693', '78', '586', '单选题', '1', '1');
INSERT INTO `question_grade` VALUES ('1694', '78', '587', '单选题', '2', '1');
INSERT INTO `question_grade` VALUES ('1695', '78', '588', '单选题', '3', '1');
INSERT INTO `question_grade` VALUES ('1696', '78', '589', '单选题', '4', '1');
INSERT INTO `question_grade` VALUES ('1697', '78', '590', '单选题', '5', '1');
INSERT INTO `question_grade` VALUES ('1698', '78', '591', '单选题', '6', '1');
INSERT INTO `question_grade` VALUES ('1699', '78', '592', '单选题', '7', '1');
INSERT INTO `question_grade` VALUES ('1700', '78', '593', '单选题', '8', '0');
INSERT INTO `question_grade` VALUES ('1701', '78', '594', '单选题', '9', '0');
INSERT INTO `question_grade` VALUES ('1702', '78', '595', '单选题', '10', '0');
INSERT INTO `question_grade` VALUES ('1703', '78', '596', '多选题', '1', '2');
INSERT INTO `question_grade` VALUES ('1704', '78', '597', '多选题', '2', '2');
INSERT INTO `question_grade` VALUES ('1705', '78', '598', '多选题', '3', '2');
INSERT INTO `question_grade` VALUES ('1706', '78', '599', '多选题', '4', '2');
INSERT INTO `question_grade` VALUES ('1707', '78', '600', '多选题', '5', '0');
INSERT INTO `question_grade` VALUES ('1708', '78', '601', '填空题', '1', '5');
INSERT INTO `question_grade` VALUES ('1709', '78', '602', '填空题', '2', '5');
INSERT INTO `question_grade` VALUES ('1710', '78', '603', '填空题', '3', '3');
INSERT INTO `question_grade` VALUES ('1711', '78', '604', '填空题', '4', '2');
INSERT INTO `question_grade` VALUES ('1712', '78', '605', '编程题', '1', '0');
INSERT INTO `question_grade` VALUES ('1713', '78', '606', '编程题', '2', '2');
INSERT INTO `question_grade` VALUES ('1714', '78', '607', '编程题', '3', '10');
INSERT INTO `question_grade` VALUES ('1715', '78', '608', '编程题', '4', '10');
INSERT INTO `question_grade` VALUES ('1716', '78', '609', '编程题', '5', '10');
INSERT INTO `question_grade` VALUES ('1717', '78', '610', '编程题', '6', '10');
INSERT INTO `question_grade` VALUES ('1718', '79', '586', '单选题', '1', '1');
INSERT INTO `question_grade` VALUES ('1719', '79', '587', '单选题', '2', '0');
INSERT INTO `question_grade` VALUES ('1720', '79', '588', '单选题', '3', '1');
INSERT INTO `question_grade` VALUES ('1721', '79', '589', '单选题', '4', '0');
INSERT INTO `question_grade` VALUES ('1722', '79', '590', '单选题', '5', '1');
INSERT INTO `question_grade` VALUES ('1723', '79', '591', '单选题', '6', '0');
INSERT INTO `question_grade` VALUES ('1724', '79', '592', '单选题', '7', '1');
INSERT INTO `question_grade` VALUES ('1725', '79', '593', '单选题', '8', '0');
INSERT INTO `question_grade` VALUES ('1726', '79', '594', '单选题', '9', '1');
INSERT INTO `question_grade` VALUES ('1727', '79', '595', '单选题', '10', '0');
INSERT INTO `question_grade` VALUES ('1728', '79', '596', '多选题', '1', '0');
INSERT INTO `question_grade` VALUES ('1729', '79', '597', '多选题', '2', '0');
INSERT INTO `question_grade` VALUES ('1730', '79', '598', '多选题', '3', '0');
INSERT INTO `question_grade` VALUES ('1731', '79', '599', '多选题', '4', '0');
INSERT INTO `question_grade` VALUES ('1732', '79', '600', '多选题', '5', '0');
INSERT INTO `question_grade` VALUES ('1733', '79', '601', '填空题', '1', '5');
INSERT INTO `question_grade` VALUES ('1734', '79', '602', '填空题', '2', '0');
INSERT INTO `question_grade` VALUES ('1735', '79', '603', '填空题', '3', '5');
INSERT INTO `question_grade` VALUES ('1736', '79', '604', '填空题', '4', '0');
INSERT INTO `question_grade` VALUES ('1737', '79', '605', '编程题', '1', '0');
INSERT INTO `question_grade` VALUES ('1738', '79', '606', '编程题', '2', '0');
INSERT INTO `question_grade` VALUES ('1739', '79', '607', '编程题', '3', '6');
INSERT INTO `question_grade` VALUES ('1740', '79', '608', '编程题', '4', '10');
INSERT INTO `question_grade` VALUES ('1741', '79', '609', '编程题', '5', '10');
INSERT INTO `question_grade` VALUES ('1742', '79', '610', '编程题', '6', '10');
INSERT INTO `question_grade` VALUES ('1743', '80', '586', '单选题', '1', '1');
INSERT INTO `question_grade` VALUES ('1744', '80', '587', '单选题', '2', '1');
INSERT INTO `question_grade` VALUES ('1745', '80', '588', '单选题', '3', '1');
INSERT INTO `question_grade` VALUES ('1746', '80', '589', '单选题', '4', '1');
INSERT INTO `question_grade` VALUES ('1747', '80', '590', '单选题', '5', '1');
INSERT INTO `question_grade` VALUES ('1748', '80', '591', '单选题', '6', '1');
INSERT INTO `question_grade` VALUES ('1749', '80', '592', '单选题', '7', '1');
INSERT INTO `question_grade` VALUES ('1750', '80', '593', '单选题', '8', '1');
INSERT INTO `question_grade` VALUES ('1751', '80', '594', '单选题', '9', '1');
INSERT INTO `question_grade` VALUES ('1752', '80', '595', '单选题', '10', '0');
INSERT INTO `question_grade` VALUES ('1753', '80', '596', '多选题', '1', '2');
INSERT INTO `question_grade` VALUES ('1754', '80', '597', '多选题', '2', '2');
INSERT INTO `question_grade` VALUES ('1755', '80', '598', '多选题', '3', '2');
INSERT INTO `question_grade` VALUES ('1756', '80', '599', '多选题', '4', '2');
INSERT INTO `question_grade` VALUES ('1757', '80', '600', '多选题', '5', '2');
INSERT INTO `question_grade` VALUES ('1758', '80', '601', '填空题', '1', '2');
INSERT INTO `question_grade` VALUES ('1759', '80', '602', '填空题', '2', '2');
INSERT INTO `question_grade` VALUES ('1760', '80', '603', '填空题', '3', '5');
INSERT INTO `question_grade` VALUES ('1761', '80', '604', '填空题', '4', '5');
INSERT INTO `question_grade` VALUES ('1762', '80', '605', '编程题', '1', '10');
INSERT INTO `question_grade` VALUES ('1763', '80', '606', '编程题', '2', '10');
INSERT INTO `question_grade` VALUES ('1764', '80', '607', '编程题', '3', '10');
INSERT INTO `question_grade` VALUES ('1765', '80', '608', '编程题', '4', '10');
INSERT INTO `question_grade` VALUES ('1766', '80', '609', '编程题', '5', '10');
INSERT INTO `question_grade` VALUES ('1767', '80', '610', '编程题', '6', '0');
INSERT INTO `question_grade` VALUES ('1768', '81', '586', '单选题', '1', '1');
INSERT INTO `question_grade` VALUES ('1769', '81', '587', '单选题', '2', '0');
INSERT INTO `question_grade` VALUES ('1770', '81', '588', '单选题', '3', '1');
INSERT INTO `question_grade` VALUES ('1771', '81', '589', '单选题', '4', '1');
INSERT INTO `question_grade` VALUES ('1772', '81', '590', '单选题', '5', '0');
INSERT INTO `question_grade` VALUES ('1773', '81', '591', '单选题', '6', '1');
INSERT INTO `question_grade` VALUES ('1774', '81', '592', '单选题', '7', '0');
INSERT INTO `question_grade` VALUES ('1775', '81', '593', '单选题', '8', '1');
INSERT INTO `question_grade` VALUES ('1776', '81', '594', '单选题', '9', '1');
INSERT INTO `question_grade` VALUES ('1777', '81', '595', '单选题', '10', '1');
INSERT INTO `question_grade` VALUES ('1778', '81', '596', '多选题', '1', '0');
INSERT INTO `question_grade` VALUES ('1779', '81', '597', '多选题', '2', '2');
INSERT INTO `question_grade` VALUES ('1780', '81', '598', '多选题', '3', '0');
INSERT INTO `question_grade` VALUES ('1781', '81', '599', '多选题', '4', '2');
INSERT INTO `question_grade` VALUES ('1782', '81', '600', '多选题', '5', '2');
INSERT INTO `question_grade` VALUES ('1783', '81', '601', '填空题', '1', '5');
INSERT INTO `question_grade` VALUES ('1784', '81', '602', '填空题', '2', '5');
INSERT INTO `question_grade` VALUES ('1785', '81', '603', '填空题', '3', '0');
INSERT INTO `question_grade` VALUES ('1786', '81', '604', '填空题', '4', '5');
INSERT INTO `question_grade` VALUES ('1787', '81', '605', '编程题', '1', '5');
INSERT INTO `question_grade` VALUES ('1788', '81', '606', '编程题', '2', '0');
INSERT INTO `question_grade` VALUES ('1789', '81', '607', '编程题', '3', '0');
INSERT INTO `question_grade` VALUES ('1790', '81', '608', '编程题', '4', '10');
INSERT INTO `question_grade` VALUES ('1791', '81', '609', '编程题', '5', '10');
INSERT INTO `question_grade` VALUES ('1792', '81', '610', '编程题', '6', '10');
INSERT INTO `question_grade` VALUES ('1793', '82', '586', '单选题', '1', '1');
INSERT INTO `question_grade` VALUES ('1794', '82', '587', '单选题', '2', '1');
INSERT INTO `question_grade` VALUES ('1795', '82', '588', '单选题', '3', '1');
INSERT INTO `question_grade` VALUES ('1796', '82', '589', '单选题', '4', '1');
INSERT INTO `question_grade` VALUES ('1797', '82', '590', '单选题', '5', '1');
INSERT INTO `question_grade` VALUES ('1798', '82', '591', '单选题', '6', '1');
INSERT INTO `question_grade` VALUES ('1799', '82', '592', '单选题', '7', '1');
INSERT INTO `question_grade` VALUES ('1800', '82', '593', '单选题', '8', '1');
INSERT INTO `question_grade` VALUES ('1801', '82', '594', '单选题', '9', '1');
INSERT INTO `question_grade` VALUES ('1802', '82', '595', '单选题', '10', '1');
INSERT INTO `question_grade` VALUES ('1803', '82', '596', '多选题', '1', '2');
INSERT INTO `question_grade` VALUES ('1804', '82', '597', '多选题', '2', '2');
INSERT INTO `question_grade` VALUES ('1805', '82', '598', '多选题', '3', '2');
INSERT INTO `question_grade` VALUES ('1806', '82', '599', '多选题', '4', '0');
INSERT INTO `question_grade` VALUES ('1807', '82', '600', '多选题', '5', '0');
INSERT INTO `question_grade` VALUES ('1808', '82', '601', '填空题', '1', '0');
INSERT INTO `question_grade` VALUES ('1809', '82', '602', '填空题', '2', '5');
INSERT INTO `question_grade` VALUES ('1810', '82', '603', '填空题', '3', '5');
INSERT INTO `question_grade` VALUES ('1811', '82', '604', '填空题', '4', '5');
INSERT INTO `question_grade` VALUES ('1812', '82', '605', '编程题', '1', '5');
INSERT INTO `question_grade` VALUES ('1813', '82', '606', '编程题', '2', '10');
INSERT INTO `question_grade` VALUES ('1814', '82', '607', '编程题', '3', '10');
INSERT INTO `question_grade` VALUES ('1815', '82', '608', '编程题', '4', '5');
INSERT INTO `question_grade` VALUES ('1816', '82', '609', '编程题', '5', '5');
INSERT INTO `question_grade` VALUES ('1817', '82', '610', '编程题', '6', '0');

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
) ENGINE=InnoDB AUTO_INCREMENT=611 DEFAULT CHARSET=utf8;

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
INSERT INTO `question_score` VALUES ('459', '24', '16', '单选题', '1', '6', '28', '7');
INSERT INTO `question_score` VALUES ('460', '24', '17', '单选题', '2', '1', '17', '7');
INSERT INTO `question_score` VALUES ('461', '24', '18', '单选题', '3', '3', '17', '7');
INSERT INTO `question_score` VALUES ('531', '26', '16', '单选题', '1', '6', '28', '1');
INSERT INTO `question_score` VALUES ('532', '26', '17', '单选题', '2', '1', '17', '1');
INSERT INTO `question_score` VALUES ('533', '26', '18', '单选题', '3', '3', '17', '1');
INSERT INTO `question_score` VALUES ('534', '26', '19', '单选题', '4', '2', '17', '1');
INSERT INTO `question_score` VALUES ('535', '26', '20', '单选题', '5', '5', '25', '1');
INSERT INTO `question_score` VALUES ('536', '26', '21', '单选题', '6', '5', '25', '1');
INSERT INTO `question_score` VALUES ('537', '26', '22', '单选题', '7', '7', '30', '1');
INSERT INTO `question_score` VALUES ('538', '26', '23', '单选题', '8', '6', '26', '1');
INSERT INTO `question_score` VALUES ('539', '26', '8', '多选题', '1', '1', '15', '2');
INSERT INTO `question_score` VALUES ('540', '26', '9', '多选题', '2', '1', '16', '2');
INSERT INTO `question_score` VALUES ('541', '26', '10', '多选题', '3', '1', '15', '2');
INSERT INTO `question_score` VALUES ('542', '26', '15', '判断题', '1', '8', '33', '1');
INSERT INTO `question_score` VALUES ('543', '26', '16', '判断题', '2', '6', '26', '1');
INSERT INTO `question_score` VALUES ('544', '26', '17', '判断题', '3', '1', '15', '1');
INSERT INTO `question_score` VALUES ('545', '26', '18', '判断题', '4', '1', '15', '1');
INSERT INTO `question_score` VALUES ('546', '26', '7', '填空题', '1', '4', '23@24@25', '2');
INSERT INTO `question_score` VALUES ('547', '26', '8', '填空题', '2', '6', '29', '4');
INSERT INTO `question_score` VALUES ('548', '26', '4', '简答题', '1', '5', '25', '1');
INSERT INTO `question_score` VALUES ('549', '26', '5', '简答题', '2', '5', '23@25', '2');
INSERT INTO `question_score` VALUES ('550', '26', '6', '简答题', '3', '7', '32', '1');
INSERT INTO `question_score` VALUES ('551', '27', '16', '单选题', '1', '6', '28', '1');
INSERT INTO `question_score` VALUES ('552', '27', '17', '单选题', '2', '1', '17', '1');
INSERT INTO `question_score` VALUES ('553', '27', '18', '单选题', '3', '3', '17', '1');
INSERT INTO `question_score` VALUES ('554', '27', '19', '单选题', '4', '2', '17', '1');
INSERT INTO `question_score` VALUES ('555', '27', '20', '单选题', '5', '5', '25', '1');
INSERT INTO `question_score` VALUES ('556', '27', '21', '单选题', '6', '5', '25', '1');
INSERT INTO `question_score` VALUES ('557', '27', '22', '单选题', '7', '7', '30', '1');
INSERT INTO `question_score` VALUES ('558', '27', '23', '单选题', '8', '6', '26', '1');
INSERT INTO `question_score` VALUES ('559', '27', '24', '单选题', '9', '9', '38', '1');
INSERT INTO `question_score` VALUES ('560', '27', '25', '单选题', '10', '6', '26', '1');
INSERT INTO `question_score` VALUES ('561', '27', '8', '多选题', '1', '1', '15', '2');
INSERT INTO `question_score` VALUES ('562', '27', '10', '多选题', '2', '1', '15', '2');
INSERT INTO `question_score` VALUES ('563', '27', '11', '多选题', '3', '6', '26', '2');
INSERT INTO `question_score` VALUES ('564', '27', '12', '多选题', '4', '2', '17', '2');
INSERT INTO `question_score` VALUES ('565', '27', '13', '多选题', '5', '6', '26', '2');
INSERT INTO `question_score` VALUES ('566', '27', '15', '判断题', '1', '8', '33', '1');
INSERT INTO `question_score` VALUES ('567', '27', '16', '判断题', '2', '6', '26', '1');
INSERT INTO `question_score` VALUES ('568', '27', '17', '判断题', '3', '1', '15', '1');
INSERT INTO `question_score` VALUES ('569', '27', '18', '判断题', '4', '1', '15', '1');
INSERT INTO `question_score` VALUES ('570', '27', '19', '判断题', '5', '1', '15', '1');
INSERT INTO `question_score` VALUES ('571', '27', '20', '判断题', '6', '1', '16', '1');
INSERT INTO `question_score` VALUES ('572', '27', '21', '判断题', '7', '1', '15', '1');
INSERT INTO `question_score` VALUES ('573', '27', '22', '判断题', '8', '2', '17', '1');
INSERT INTO `question_score` VALUES ('574', '27', '23', '判断题', '9', '7', '30', '1');
INSERT INTO `question_score` VALUES ('575', '27', '24', '判断题', '10', '4', '21', '1');
INSERT INTO `question_score` VALUES ('576', '27', '7', '填空题', '1', '4', '23@24@25', '2');
INSERT INTO `question_score` VALUES ('577', '27', '8', '填空题', '2', '6', '29', '2');
INSERT INTO `question_score` VALUES ('578', '27', '9', '填空题', '3', '2', '17', '2');
INSERT INTO `question_score` VALUES ('579', '27', '10', '填空题', '4', '7', '30', '2');
INSERT INTO `question_score` VALUES ('580', '27', '11', '填空题', '5', '9', '36', '2');
INSERT INTO `question_score` VALUES ('581', '27', '4', '简答题', '1', '5', '25', '10');
INSERT INTO `question_score` VALUES ('582', '27', '5', '简答题', '2', '5', '23@25', '10');
INSERT INTO `question_score` VALUES ('583', '27', '6', '简答题', '3', '7', '32', '10');
INSERT INTO `question_score` VALUES ('584', '27', '7', '简答题', '4', '9', '38', '10');
INSERT INTO `question_score` VALUES ('585', '27', '8', '简答题', '5', '6', '29', '20');
INSERT INTO `question_score` VALUES ('586', '28', null, '单选题', '1', '1', '15', '1');
INSERT INTO `question_score` VALUES ('587', '28', null, '单选题', '2', '2', '17', '1');
INSERT INTO `question_score` VALUES ('588', '28', null, '单选题', '3', '2', '19', '1');
INSERT INTO `question_score` VALUES ('589', '28', null, '单选题', '4', '3', '20', '1');
INSERT INTO `question_score` VALUES ('590', '28', null, '单选题', '5', '4', '21', '1');
INSERT INTO `question_score` VALUES ('591', '28', null, '单选题', '6', '5', '25', '1');
INSERT INTO `question_score` VALUES ('592', '28', null, '单选题', '7', '6', '28', '1');
INSERT INTO `question_score` VALUES ('593', '28', null, '单选题', '8', '6', '28', '1');
INSERT INTO `question_score` VALUES ('594', '28', null, '单选题', '9', '6', '27', '1');
INSERT INTO `question_score` VALUES ('595', '28', null, '单选题', '10', '9', '35', '1');
INSERT INTO `question_score` VALUES ('596', '28', null, '多选题', '1', '6', '26', '2');
INSERT INTO `question_score` VALUES ('597', '28', null, '多选题', '2', '7', '30', '2');
INSERT INTO `question_score` VALUES ('598', '28', null, '多选题', '3', '8', '33', '2');
INSERT INTO `question_score` VALUES ('599', '28', null, '多选题', '4', '9', '35', '2');
INSERT INTO `question_score` VALUES ('600', '28', null, '多选题', '5', '7', '31', '2');
INSERT INTO `question_score` VALUES ('601', '28', null, '填空题', '1', '5', '25', '5');
INSERT INTO `question_score` VALUES ('602', '28', null, '填空题', '2', '5', '25', '5');
INSERT INTO `question_score` VALUES ('603', '28', null, '填空题', '3', '6', '28', '5');
INSERT INTO `question_score` VALUES ('604', '28', null, '填空题', '4', null, '', '5');
INSERT INTO `question_score` VALUES ('605', '28', null, '编程题', '1', '6', '29', '10');
INSERT INTO `question_score` VALUES ('606', '28', null, '编程题', '2', '5', '23@25', '10');
INSERT INTO `question_score` VALUES ('607', '28', null, '编程题', '3', '2', '17@19', '10');
INSERT INTO `question_score` VALUES ('608', '28', null, '编程题', '4', '7', '32', '10');
INSERT INTO `question_score` VALUES ('609', '28', null, '编程题', '5', '8', '33@34', '10');
INSERT INTO `question_score` VALUES ('610', '28', null, '编程题', '6', '9', '38', '10');

-- ----------------------------
-- Table structure for `que_type`
-- ----------------------------
DROP TABLE IF EXISTS `que_type`;
CREATE TABLE `que_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of que_type
-- ----------------------------
INSERT INTO `que_type` VALUES ('1', '单选题');
INSERT INTO `que_type` VALUES ('2', '多选题');
INSERT INTO `que_type` VALUES ('3', '判断题');
INSERT INTO `que_type` VALUES ('4', '填空题');
INSERT INTO `que_type` VALUES ('5', '简答题');
INSERT INTO `que_type` VALUES ('6', '编程题');

-- ----------------------------
-- Table structure for `role`
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  `nameZh` varchar(64) DEFAULT NULL COMMENT '角色名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', 'ROLE_teacher', '任课教师');
INSERT INTO `role` VALUES ('2', 'ROLE_coursemanager', '课程负责人');
INSERT INTO `role` VALUES ('3', 'ROLE_admin', '系统管理员');
INSERT INTO `role` VALUES ('4', 'ROLE_student', '学生');

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
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `chapterId` (`chapterId`),
  CONSTRAINT `sc_question_ibfk_1` FOREIGN KEY (`chapterId`) REFERENCES `chapter` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sc_question
-- ----------------------------
INSERT INTO `sc_question` VALUES ('16', '28', '若程序中定义了以下函数\ndouble myadd(double a,double b)\n{ return (a+b);\n}\n并将其放在调用语句之后，则在调用之前应该对该函数进行说明，以下选项中错误的说明是（ ）', 'double myadd(double a,b);', 'double myadd(double,double);', 'double myadd(double b,double a);', 'double myadd(double x,double y);', 'A', '', '3', '3', '6', '6', '1', '1', '2020-05-16 11:56:00');
INSERT INTO `sc_question` VALUES ('17', '17', '以下C语言用户标识符中，不合法的是____.', '_1', 'AaBc', 'a_b　', 'a-b', 'D', '', '3', '3', '6', '1', '1', '1', '2020-05-16 12:14:24');
INSERT INTO `sc_question` VALUES ('18', '17', '执行以下程序段后的输出结果是         。\n   	int a = 10;\n   	printf(“%d ”, ++x);\n   	printf(“%d ”, x--)', '11 10', '11 11', '10 11', '10 10', 'B', '', '3', '3', '6', '3', '1', '1', '2020-05-16 12:15:46');
INSERT INTO `sc_question` VALUES ('19', '17', '以下程序的输出结果是          。\n#include <stdio.h>\nvoid main(void)\n{\n  int a = 7;\n  float x = 2.5, y = 4.7;\n  printf(\"%f\", x+a%3*(int)(x+y)%2/4);\n }', '0', '2.75', '2', '2.5', 'D', '', '3', '3', '6', '2', '2', '1', '2020-05-16 12:18:29');
INSERT INTO `sc_question` VALUES ('20', '25', '以下程序中，while 循环的次数是____。\n#include <stdio.h>\n   void main(void)\n   {   int i = 0;\n       while (i<10) \n       {\n        if (i<1) continue;\n        if (i==5) break;\n        i++;\n       }\n   }', '1', '死循环，不能确定次数', '6', '10', 'A', '', '3', '3', '6', '5', '1', '1', '2020-05-16 12:20:26');
INSERT INTO `sc_question` VALUES ('21', '25', '以下程序的输出结果是_____。\n   #include <stdio.h>\n   void main(void)\n   {\n      int a = 0, i;\n      for (i=1; i<5; i++) \n      {\n         switch (i) \n         { \n            case 0:\n            case 3: a += 2;\n            case 1:\n            case 2: a += 3;\n            default: a += 5;\n         }\n      }\n       printf(“%d\\n”, a);\n   }', '31', '13', '10', '20', 'A', '', '3', '3', '6', '5', '1', '1', '2020-05-16 12:22:39');
INSERT INTO `sc_question` VALUES ('22', '30', '以下关于数组的描述正确的是____。', '数组的大小是固定的，但可以有不同类型的数组元素。', '数组的大小是可变的，但所有的数组元改变可素必须是相同类型的元素。', '数组的大小是固定的，所有数组元素的数据类型必须相同。', '数组的大小是可变的，可以有不同类型的数组元素。', 'C', '', '3', '3', '6', '7', '1', '1', '2020-05-16 12:28:48');
INSERT INTO `sc_question` VALUES ('23', '26', '以下C语言中，对函数不正确的描述是____。', '当用数组名作形参时，形参数组使实参数组随之改变', '允许函数递归调用', '函数形参的作用范围只是局限于所定义的函数内', 'D)函数定义必须在主调函数之前', 'D', '', '3', '3', '6', '6', '1', '1', '2020-05-16 12:30:06');
INSERT INTO `sc_question` VALUES ('24', '38', '函数调用:strcat(strcpy(str1,str2),str3)的功能是____。', '将串str1复制到串str2中后再连接到串str3之后', '将串str1连接到串str2之后再复制到串str3之后', '将串str2复制到串str1中后再将串str3连接到串str1之后', '将串str2连接到串str1之后再将串str1复制到串str3中', 'C', '', '3', '3', '6', '9', '2', '1', '2020-05-16 12:31:17');
INSERT INTO `sc_question` VALUES ('25', '26', '以下叙述中不正确的是____。', '在C中，函数中的自动变量可以赋初值，每调用一次，赋一次初值。', '在C中，在调用函数时，实在参数和对应形参在类型上只需赋值兼容', '在C中，外部变量的隐含类别是自动存储类别。', '在C中，外部变量的隐含类别是自动存储类别。', 'A', '', '3', '3', '6', '6', '1', '1', '2020-05-16 12:32:54');
INSERT INTO `sc_question` VALUES ('26', '30', '程序设计中，若用数组名作为函数调用的实参，传递给形参的是______。', '数组第一个元素的值', '数组中全部元素的值', '数组元素的个数', '数组的首地址', 'D', '', '3', '3', '6', '7', '1', '1', '2020-05-16 12:34:21');
INSERT INTO `sc_question` VALUES ('27', '33', '若有语句：char *line[5];，以下叙述中正确的是______。', '定义line是一个数组，每个数组元素是一个类型为char的指针变量', '定义line是一个指针变量，该变量可以指向一个长度为5的字符型数组', '定义line是一个指针数组，语句中的*号称为间址运算符', '定义line是一个指向字符型函数的指针', 'A', '', '3', '3', '6', '8', '2', '1', '2020-05-16 12:35:40');
INSERT INTO `sc_question` VALUES ('28', '34', '有以下程序\nmain()\n{ \n  int a[10]={1,2,3,4,5,6,7,8,9,10}, *p=&a[3], *q=p+2; \n  printf(\"%d\\n\", *p + *q);\n } \n 程序运行后的输出结果是____。', '16', '10', '8', '6', 'A', '', '3', '3', '6', '8', '2', '1', '2020-05-16 12:37:00');
INSERT INTO `sc_question` VALUES ('29', '41', '设有以下说明语句\n      struct stu\n      { \n        int a;    \n        float b;\n     }stutype;\n则下面的叙述不正确的是____。', 'struct是结构体类型的关键字', 'stu是用户定义的结构体类型名', 'stutype是用户定义的结构体类型名', 'a和b都是结构体成员名', 'C', '', '3', '3', '6', '11', '1', '1', '2020-05-16 12:38:24');
INSERT INTO `sc_question` VALUES ('30', '42', '以下叙述中错误的是____。', 'C语言中对二进制文件的访问速度比文本文件快', 'C语言中，随机文件以二进制代码形式存储数据', '语句 FILE fp; 定义了一个名为fp的文件指针', 'C语言中的文本文件以ASCII码形式存储数据', 'A', '', '3', '3', '6', '12', '1', '1', '2020-05-16 12:39:47');
INSERT INTO `sc_question` VALUES ('31', '28', 'C语言程序从main()函数开始执行，所以这个函数要可以写在________。', '程序文件的开始 ', '程序文件的最后', '它所调用的函数的前面 ', '程序文件的任何位置', 'D', '', '3', '3', '6', '6', '1', '1', '2020-05-16 14:43:04');
INSERT INTO `sc_question` VALUES ('32', '15', '下列可用于C语言用户标识符的一组是______。', 'void, define, WORD', 'a3_b3, _123,Car a_1_2　', 'For, -abc, IF Case　', '2a, DO, sizeof', 'B', '', '3', '3', '6', '1', '1', '1', '2020-05-16 14:44:20');
INSERT INTO `sc_question` VALUES ('33', '15', 'C语言中字符型(char)数据在内存中的存储形式是_______。', '原码', '补码', '反码', 'ASCII码', 'D', '', '3', '3', '6', '1', '1', '1', '2020-05-16 14:48:18');
INSERT INTO `sc_question` VALUES ('34', '16', '温度华氏和摄氏的关系是: C=5/9×(F-32)。已知：float C,F；由华氏求摄氏的正确的赋值表达式是 ______。', 'C=5/9(F-32)', 'C=5*(F-32)/9', 'C=5/9*(F-32)', '三个表达式都正确', 'D', '', '3', '3', '6', '1', '1', '1', '2020-05-16 14:50:52');
INSERT INTO `sc_question` VALUES ('35', '15', '为判断字符变量c的值不是数字也不是字母时，应采用下述表达式_____。', 'c<=48||c>=57&&c<=65||c>=90&&c<=97||c>=122', '!(c<=48||c>=57&&c<=65||c>=90&&c<=97||c>=122)', 'c>=48&&c<=57||c>=65&&c<=90||c>=97&&c<=122', '!(c>=48&&c<=57||c>=65&&c<=90||c>=97&&c<=122)', 'D', '', '3', '3', '6', '1', '3', '1', '2020-05-16 14:53:48');
INSERT INTO `sc_question` VALUES ('36', '17', '已知int x=5,y=5,z=5；执行语句x%=y+z；后，x的值是______。', '0', '1', '5', '6', 'C', '', '3', '3', '6', '2', '1', '1', '2020-05-16 14:55:03');
INSERT INTO `sc_question` VALUES ('37', '30', '在C语言中，引用数组元素时，其数组下标的数据类型允许是_____。', '整型常量', '整型表达式', '整型常量或整型表达式', '任何类型的表达式', 'C', '', '3', '3', '6', '7', '1', '1', '2020-05-16 14:57:09');
INSERT INTO `sc_question` VALUES ('38', '22', '有如下程序：\n#include <stdio.h>\nvoid main（）\n{ \n  int x=1,a=0,b=0; \n  switch（x）\n  {\n    case 0: b++;\n    case 1: a++;\n    case 2: a++;b++;\n  }\n  printf（\"a=%d,b=%d＼n\",a,b）;\n}\n该程序的输出结果是________。', 'a=2,b=1', 'a=1,b=1', 'a=1,b=0', 'a=2,b=2', 'A', '', '3', '3', '6', '4', '1', '1', '2020-05-16 15:02:35');
INSERT INTO `sc_question` VALUES ('39', '26', '以下C语言中，对函数不正确的描述是_______。', '当用数组名作形参时，形参数组使实参数组随之改变', '允许函数递归调用', '函数形参的作用范围只是局限于所定义的函数内', '函数定义必须在主调函数之前', 'D', '', '3', '3', '6', '6', '1', '1', '2020-05-16 15:04:57');
INSERT INTO `sc_question` VALUES ('40', '25', '以下正确的描述是______。', 'continue语句的作用是结束整个循环的执行', '只能在循环体内和switch语句体内使用break语句', '在循环体内使用break语句和continue语句的作用相同', '从多层循环嵌套中退出时，只能使用goto语句', 'B', 'D项可以使用return语句退出', '3', '3', '6', '5', '2', '1', '2020-05-16 15:10:45');
INSERT INTO `sc_question` VALUES ('41', '28', '以下关于return语句的叙述中正确的是_____。', '一个自定义函数中必须有一条return语句', '一个自定义函数中可以根据不同情况设置多条return语句', '定义成void类型的函数中可以有带返回值的return语句', '没有return语句的自定义函数在执行结束时不能返回到调用处', 'B', '', '3', '3', '6', '6', '1', '1', '2020-05-16 15:11:58');
INSERT INTO `sc_question` VALUES ('42', '34', '设有定义double a[10],*s=a;，以下能够代表数组元素a[3]的是____。', '(*s)[3]', '*(s+3)', '*s[3]', '*s+3', 'B', '', '3', '3', '6', '10', '3', '1', '2020-05-16 15:14:44');
INSERT INTO `sc_question` VALUES ('43', '31', '已知 char a[][20]={\"Beijing\",\"shanghai\",\"tianjin\",\"zhengzhou\"}; \n语句printf(\"%s\",a[3])；的输出是_____。', 'j', '不定', 'zhengzhou', '数组定义有误', 'C', '', '3', '3', '6', '7', '2', '1', '2020-05-16 15:15:41');
INSERT INTO `sc_question` VALUES ('44', '28', '如果一个变量在整个程序运行期间都存在，但是仅在说明它的函数内是可见的，这个变量的存储类型应该被说明为____。', '静态局部变量', '动态局部变量', '外部变量', '全局变量', 'A', '', '3', '3', '6', '1', '2', '1', '2020-05-16 15:18:06');
INSERT INTO `sc_question` VALUES ('45', '30', '程序设计中，若用数组名作为函数调用的实参，传递给形参的是_____。', '数组第一个元素的值', '数组中全部元素的值', '数组元素的个数', '数组的首地址', 'D', '', '3', '3', '6', '7', '1', '1', '2020-05-16 15:19:21');
INSERT INTO `sc_question` VALUES ('46', '39', '若有语句：char *line[5];，以下叙述中正确的是_____。', '定义line是一个数组，每个数组元素是一个类型为char的指针变量', '定义line是一个指针变量，该变量可以指向一个长度为5的字符型数组', '定义line是一个指针数组，语句中的*号称为间址运算符', '定义line是一个指向字符型函数的指针', 'A', '', '3', '3', '6', '10', '3', '1', '2020-05-16 15:20:35');
INSERT INTO `sc_question` VALUES ('47', '16@35', '已定义以下函数\nfun（char *p2, char *p1）\n{ \n  while（（*p2=*p1）!=\'＼0\'）{p1++;p2++;}\n  *p2=\'＼0\';\n}\n函数的功能是______。', '将p1所指字符串复制到p2所指内存空间', '将p1所指字符串的地址赋给指针p2', '对p1和p2两个指针所指字符串进行比较', '检查p1和p2两个', 'A', '', '3', '3', '6', '9', '2', '1', '2020-05-16 15:22:47');
INSERT INTO `sc_question` VALUES ('48', '41', '设有定义:\nstruct complex\n{ int real,unreal;} data1={1,8},data2;\n则以下赋值语句中错误的是______。', 'data2=data1;', 'data2=（2,6）;', 'data2.real=data1.real;', 'data2.real=data1.unreal;', 'B', '', '3', '3', '6', '11', '1', '1', '2020-05-16 15:24:04');
INSERT INTO `sc_question` VALUES ('49', '41', '已知：\n struct person \n{ char name[10]；\n int age；\n }class[10]={\"LiMing\",29,\"ZhangHong\",21,\"WangFang\",22}； \n下述表达式中，值为72的一个是___。', 'class[0]->age + class[1]->age+ class[2]->age', 'class[1].name[5]', 'person[1].name[5]', 'clase->name[5]', 'A', '', '3', '3', '6', '11', '4', '1', '2020-05-16 15:25:01');
INSERT INTO `sc_question` VALUES ('50', '41', '设有以下定义语句：\nstruct student{\nint num；\nchar name[10]；\nfloat score;\n}wang，zhang；的变量wang所占的内存字节是（  ）', '14', '16', '18', '9', 'B', '', '3', '3', '6', '11', '2', '1', '2020-05-16 15:42:10');
INSERT INTO `sc_question` VALUES ('51', '42', '以下叙述正确的是（  ）', 'C语言中的文件是流式文件，因此只能顺序存取数据', '打开一个已存在的文件进行了写操作后，原有文件中的全部数据必定被覆盖', '在一个程序中当对文件进行了写操作后，必须先关闭该文件然后再打开，才能读到第一个数据', '当对文件的写操作完成之后，必须将它关闭，否则可能导致数据丢失', 'D', '', '3', '3', '6', '12', '2', '1', '2020-05-16 15:43:08');

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
  `password` varchar(255) DEFAULT NULL,
  `studentNum` varchar(20) DEFAULT NULL,
  `gender` char(4) DEFAULT NULL,
  `userface` varchar(255) DEFAULT 'http://img.yifang009.com/img/userface.png',
  `enabled` tinyint(4) DEFAULT '1',
  `classId` int(11) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `classId` (`classId`),
  CONSTRAINT `student_ibfk_1` FOREIGN KEY (`classId`) REFERENCES `class` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=186 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('24', '学生测试aa', 'admin', '$2a$10$ySG2lkvjFHY5O0./CPIE1OI8VJsuKYEzOYzqIa7AJR6sEgSzUFOAm', null, null, null, '1', null, null);
INSERT INTO `student` VALUES ('29', '李白', '201619040128', '$2a$10$YtmPHjinXgaRPOdEE48d0u1iUoUrcU8ETlIHd.jTRANDGesfzvmka', '201619040128', '男', 'http://img.yifang009.com/img/userface.png', '1', '26', null);
INSERT INTO `student` VALUES ('76', '王晨雨', '201619040106', '$2a$10$y43d4FdwHv2NMFpD8qJfN.R/Mvs2dU9tLs7Rf3bsYC4Fc4uVt5OSq', '201619040106', '男', 'http://img.yifang009.com/img/userface.png', '1', '5', null);
INSERT INTO `student` VALUES ('77', '张凯帆', '201619040139', '$2a$10$lDmqFPQezHNMV9WVxsyxwOyQn352ifpu8f8G/gvByUCcdHK/cXh82', '201619040139', '男', 'http://img.yifang009.com/img/userface.png', '1', '5', null);
INSERT INTO `student` VALUES ('78', '史晓松', '201619040117', '$2a$10$Aw8hlB7w473xKd.fdiUJleVc6pe4Kwp58GPKAZ3ruSPzTE/Jqx7J2', '201619040117', '男', 'http://img.yifang009.com/img/userface.png', '1', '5', null);
INSERT INTO `student` VALUES ('79', '刘震', '201619040129', '$2a$10$Hw0cdVu62oer4nbaHNchk.UnRN76Xv9ozKniJc01M1t8bR98y0oOu', '201619040129', '男', 'http://img.yifang009.com/img/userface.png', '1', '5', null);
INSERT INTO `student` VALUES ('80', '魏汉文', '201619040140', '$2a$10$F25oHWPwmfJ94DC2.5uJN.Ksow0mLBSTUh.oDZRd/4QX59om/NWp.', '201619040140', '男', 'http://img.yifang009.com/img/userface.png', '1', '5', null);
INSERT INTO `student` VALUES ('81', '侯彦飞', '201619040118', '$2a$10$xNsCKM7IdAfNt/E9CbGh3.T.dCxbn/Wkhq92ypqSgRweWL2sWW/MG', '201619040118', '男', 'http://img.yifang009.com/img/userface.png', '1', '5', null);
INSERT INTO `student` VALUES ('82', '胡明乐', '201619040130', '$2a$10$Dw2Tg/MEolBalvalMPAHjutBUWruD9UG8b/YwDv4eS.LEuCp0z3O.', '201619040130', '男', 'http://img.yifang009.com/img/userface.png', '1', '5', null);
INSERT INTO `student` VALUES ('83', '杜思尧', '201619040108', '$2a$10$wEB9rdGAlVTUZGpcbvz23erqofrUux4WAR.pjWNTlA4nFHlMOypvi', '201619040108', '男', 'http://img.yifang009.com/img/userface.png', '1', '5', null);
INSERT INTO `student` VALUES ('84', '樊鑫', '201619040119', '$2a$10$C0hIV6CbcoGNt38jLiZgz.N/8AhvDDlzDNDjZcCFpo.QkFbAgx4Fq', '201619040119', '男', 'http://img.yifang009.com/img/userface.png', '1', '5', null);
INSERT INTO `student` VALUES ('85', '袁野', '201619040131', '$2a$10$YxnTfZH19vTqJ2ZKcgMbE.blQebPDKeEs0eHs54b8HxzmFfJIEiRS', '201619040131', '男', 'http://img.yifang009.com/img/userface.png', '1', '5', null);
INSERT INTO `student` VALUES ('86', '孙威', '201619040109', '$2a$10$9ILKh.AcmtV2iUq1xBo7/eyi5bBgIsGKELNR6a.4iVaP2QqZzAxBO', '201619040109', '男', 'http://img.yifang009.com/img/userface.png', '1', '5', null);
INSERT INTO `student` VALUES ('87', '岳鹏帆', '201619040120', '$2a$10$2a87XR.Um4zUGKbehTHp9OsXqIxEbiwScYN6KecVmublIxVXOryt6', '201619040120', '男', 'http://img.yifang009.com/img/userface.png', '1', '5', null);
INSERT INTO `student` VALUES ('88', '朱卫钢', '201619040132', '$2a$10$4ifE6nVm1qxDKexN48B5AeH8s5el4h3M8F9fZ7tUVGm6FwS0659Kq', '201619040132', '男', 'http://img.yifang009.com/img/userface.png', '1', '5', null);
INSERT INTO `student` VALUES ('89', '赵广', '201619040110', '$2a$10$LLJy5u3GxRwsv7hUKpXgxuC6xXJ4pNT3t0DDk2GMM8CaVcqb0tCF2', '201619040110', '男', 'http://img.yifang009.com/img/userface.png', '1', '5', null);
INSERT INTO `student` VALUES ('90', '李伟华', '201619040133', '$2a$10$h.Db77G9RxmOjNETvzUXdOyHTaY4pUI9Ni4PtA29.OczTqI50eWzG', '201619040133', '男', 'http://img.yifang009.com/img/userface.png', '1', '5', null);
INSERT INTO `student` VALUES ('91', '赵晓阳', '201619040111', '$2a$10$56qdqn9iZCVQKNeoMipDSuHMzZp6LNewhNryaiuLqkTJrm.xh0RRW', '201619040111', '男', 'http://img.yifang009.com/img/userface.png', '1', '5', null);
INSERT INTO `student` VALUES ('92', '曹媛媛', '201619040101', '$2a$10$ESkc6RLw0RRKiL6cw53Ew.B90VcCTjrDRnEexrt7fzbc0Yx2DgzyS', '201619040101', '女', 'http://img.yifang009.com/img/userface.png', '1', '5', null);
INSERT INTO `student` VALUES ('93', '谢天', '201619040134', '$2a$10$wIgsINYFo9MskCB8P8ISr.YSHGuOlwUw4Am.0cfSWgdP1G4I3sRR.', '201619040134', '男', 'http://img.yifang009.com/img/userface.png', '1', '5', null);
INSERT INTO `student` VALUES ('94', '李无焱', '201619040112', '$2a$10$YwQXywHR1QmB.zxzqB0YMudZ0bG7X81An1p3jnCvdZRXzGHuTzA6y', '201619040112', '男', 'http://img.yifang009.com/img/userface.png', '1', '5', null);
INSERT INTO `student` VALUES ('95', '武佳琪', '201619040102', '$2a$10$YN8I1s9ZMVvML.FDXF82DOpQx3H8OEOqq5hofRfWvrpaM7gh8QJnW', '201619040102', '女', 'http://img.yifang009.com/img/userface.png', '1', '5', null);
INSERT INTO `student` VALUES ('96', '杜圣', '201619040135', '$2a$10$xTlhqi2vfyQEqEdMxMkyuO09M6DuSBaN4p21MrcjcV3pdXEjLVUJi', '201619040135', '男', 'http://img.yifang009.com/img/userface.png', '1', '5', null);
INSERT INTO `student` VALUES ('97', '梁超', '201619040113', '$2a$10$oe7jLmA.HW8JGlMeDFWcaO2UrXuuxZdFrAi7.FUrYeYmo3Vj9Ltga', '201619040113', '男', 'http://img.yifang009.com/img/userface.png', '1', '5', null);
INSERT INTO `student` VALUES ('98', '孟登辉', '201619040125', '$2a$10$aWbE1mFXWy4r2os7Ba8qneak5BLfIgUaY2Ao/0KmI/2FhrliXnyP6', '201619040125', '男', 'http://img.yifang009.com/img/userface.png', '1', '5', null);
INSERT INTO `student` VALUES ('99', '闫莹莹', '201619040103', '$2a$10$bKRyKWoTX2EkCczAUyHuROJjC1j3C774bJh7SQh4jBigefp.yJdXa', '201619040103', '男', 'http://img.yifang009.com/img/userface.png', '1', '5', null);
INSERT INTO `student` VALUES ('100', '孙迎迪', '201619040136', '$2a$10$O9sfAtoS38bY6GR2oXHq8OSUXlSIPdeGcxyHug9/DVnHP3a0UuJUi', '201619040136', '男', 'http://img.yifang009.com/img/userface.png', '1', '5', null);
INSERT INTO `student` VALUES ('101', '张家瑞', '201619040114', '$2a$10$.n/STWIzsRhxGh4u4KI.G.Y9pLx.ANQUXl/u9uzXOGc1yGK5sjEAS', '201619040114', '男', 'http://img.yifang009.com/img/userface.png', '1', '5', null);
INSERT INTO `student` VALUES ('102', '翟浡琨', '201619040126', '$2a$10$ImY/YFDm/4uegOelDqgt4OUQPAYVjlzltapH07ioKIbLVLRaFnAUa', '201619040126', '男', 'http://img.yifang009.com/img/userface.png', '1', '5', null);
INSERT INTO `student` VALUES ('103', '李梦歌', '201619040104', '$2a$10$irfSSbMXlnvqHUCk4.GR.uLLldOcBYElafjNyhKFVG5WViNFq0uI2', '201619040104', '女', 'http://img.yifang009.com/img/userface.png', '1', '5', null);
INSERT INTO `student` VALUES ('104', '白晋凡', '201619040137', '$2a$10$FmyEGN4nPvVTT/peMESW6eH3LQzpcKUpXnTtFw5ZcakkBuPFxfp/O', '201619040137', '男', 'http://img.yifang009.com/img/userface.png', '1', '5', null);
INSERT INTO `student` VALUES ('105', '何敬祥', '201619040115', '$2a$10$uH1G84ONTqvQGPztkE6xDOqh3xPAniCDEWTwLesjGyaDKdcBEI6Ye', '201619040115', '男', 'http://img.yifang009.com/img/userface.png', '1', '5', null);
INSERT INTO `student` VALUES ('106', '姜楠', '201619040127', '$2a$10$HGbLedo7NjL55/p.PhMat.lrEyrLMp9A9S6zJk3hvOAo3Uz.23DKG', '201619040127', '男', 'http://img.yifang009.com/img/userface.png', '1', '5', null);
INSERT INTO `student` VALUES ('107', '陈克峰', '201619040105', '$2a$10$L4WFZsO4fmCD6mcNP3AdEeq/WBCIF6BKoG5kuAn3kaYtbiL/YFGrG', '201619040105', '男', 'http://img.yifang009.com/img/userface.png', '1', '5', null);
INSERT INTO `student` VALUES ('108', '杨帅', '201619040116', '$2a$10$yChn8IpYp1lVPJk6DWLxHeSyjaPMmj3eFwZlO.z1kIUIhsDCd.lNa', '201619040116', '男', 'http://img.yifang009.com/img/userface.png', '1', '5', null);
INSERT INTO `student` VALUES ('109', '张毅', '201619040231', '$2a$10$hq4xljEOIdLs0NRLkFumN.iXegdKotS1yKXIDIf3QcdIZpKLnhGT2', '201619040231', '男', 'http://img.yifang009.com/img/userface.png', '1', '6', null);
INSERT INTO `student` VALUES ('110', '李臣伟', '201619040210', '$2a$10$Sgy9NEueNE8/VC4.i0s6c.MBb84lDkvbWdIGoLmGZZ5KYBhHf6S0u', '201619040210', '男', 'http://img.yifang009.com/img/userface.png', '1', '6', null);
INSERT INTO `student` VALUES ('111', '霍周林', '201619040221', '$2a$10$6J6j6nPZ647rfwxPQ8UZ1OnH1y1rLixIEkyYKkhADmeXR3hdAx3BG', '201619040221', '男', 'http://img.yifang009.com/img/userface.png', '1', '6', null);
INSERT INTO `student` VALUES ('112', '王乾昌', '201619040232', '$2a$10$QXcM.qMaFhBQdtT.4Ld7tekn6uXoAWcaOmL4G5YT8wpLSzyjP6CfO', '201619040232', '男', 'http://img.yifang009.com/img/userface.png', '1', '6', null);
INSERT INTO `student` VALUES ('113', '胡森淇', '201619040211', '$2a$10$j2Qwt/kwPmuAtJY7AmzbKuQmGigqwErw1P/cyK2RLok6aSxLI3nFu', '201619040211', '男', 'http://img.yifang009.com/img/userface.png', '1', '6', null);
INSERT INTO `student` VALUES ('114', '孙志良', '201619040222', '$2a$10$AbR.DRyyLLTF2o1eSNyo..lb3ZT4ZC35cmaz8P1lFuyyQ/wwLFUCi', '201619040222', '男', 'http://img.yifang009.com/img/userface.png', '1', '6', null);
INSERT INTO `student` VALUES ('115', '王黎欢', '201619040201', '$2a$10$SoKZwAI.ckRhPn7AUend8OJK1sVpeHLOJDCNMzi/zJHVFtp6oomAe', '201619040201', '女', 'http://img.yifang009.com/img/userface.png', '1', '6', null);
INSERT INTO `student` VALUES ('116', '张轶阳', '201619040233', '$2a$10$D0K7/UiGSC/G/awZckTYvuPWa8aw0KuqGcgz4xhYrKkv8MJ..KZwC', '201619040233', '男', 'http://img.yifang009.com/img/userface.png', '1', '6', null);
INSERT INTO `student` VALUES ('117', '赵志强', '201619040212', '$2a$10$F3lgGT550.KVuO5F6q91r.9Z0L7za7wB/LM9DgYebPY/bJPCq8pby', '201619040212', '男', 'http://img.yifang009.com/img/userface.png', '1', '6', null);
INSERT INTO `student` VALUES ('118', '张久', '201619040223', '$2a$10$52Nm15KEH9QiGM79ZhkbI.Do0XUfPHvTWhhZTBR2iPoz6FQwXJkXm', '201619040223', '男', 'http://img.yifang009.com/img/userface.png', '1', '6', null);
INSERT INTO `student` VALUES ('119', '夏雪文', '201619040202', '$2a$10$qx3ummLkjtwzH8faVy6Kre9Spq426KsOmWfj1cw5pDvkYEYBSSCWi', '201619040202', '女', 'http://img.yifang009.com/img/userface.png', '1', '6', null);
INSERT INTO `student` VALUES ('120', '苗书彬', '201619040234', '$2a$10$g4J1HmBFcEy0nEwB8NtpoevIDwELSYaGt6ugS3XFW6yRAfJGlV7/a', '201619040234', '男', 'http://img.yifang009.com/img/userface.png', '1', '6', null);
INSERT INTO `student` VALUES ('121', '杨景赫', '201619040213', '$2a$10$LyaWwRoagqgvnSbwVj3ibODb5AECeMmTRydzBBLUayeYfU4rEQnai', '201619040213', '男', 'http://img.yifang009.com/img/userface.png', '1', '6', null);
INSERT INTO `student` VALUES ('122', '赵云帆', '201619040224', '$2a$10$ckFDQPYxd.nXmy9quKNA...jO9EhDiAEB2o38rGyRIXlsmvnnjAR2', '201619040224', '男', 'http://img.yifang009.com/img/userface.png', '1', '6', null);
INSERT INTO `student` VALUES ('123', '张天玺', '201619040203', '$2a$10$7MG0EezBCujLbccitS478e90zgvI39JI5DqJsGlZ1XMpjw.gbXr/i', '201619040203', '女', 'http://img.yifang009.com/img/userface.png', '1', '6', null);
INSERT INTO `student` VALUES ('124', '陈晔', '201619040235', '$2a$10$J8cD03EGOhjlpd2uUdJx8ucdBGD.m6HI52PG4tzm7caB04.177FEC', '201619040235', '男', 'http://img.yifang009.com/img/userface.png', '1', '6', null);
INSERT INTO `student` VALUES ('125', '周满仓', '201619040214', '$2a$10$Advcdq87lptxVOAa7EpUVOVb8uYMBOWvXoUviqiyF3BlVfPrAI5Ne', '201619040214', '男', 'http://img.yifang009.com/img/userface.png', '1', '6', null);
INSERT INTO `student` VALUES ('126', '刘翔', '201619040225', '$2a$10$6rceCrcJpM1XjQUr1P7.seWQCV2Gg7Ttr30Cirokt/DJAxae6YeTC', '201619040225', '男', 'http://img.yifang009.com/img/userface.png', '1', '6', null);
INSERT INTO `student` VALUES ('127', '胡馨月', '201619040204', '$2a$10$bbQucEi12Qw5NFYIUj0/D.f4oCJ//mYJjEMzeWu5i6dywkcYaXtrq', '201619040204', '女', 'http://img.yifang009.com/img/userface.png', '1', '6', null);
INSERT INTO `student` VALUES ('128', '许耀坤', '201619040236', '$2a$10$9K/fxCFkN3kiq4PBCX7gWOKfBNR7Kor57XqCHdYohNb0yIOnA.FXO', '201619040236', '男', 'http://img.yifang009.com/img/userface.png', '1', '6', null);
INSERT INTO `student` VALUES ('129', '田思考', '201619040215', '$2a$10$kzMrobEYopVsy7QbzSHM4Ofy3/aUcNdmoq8aVvcDDBCB9pcTvd./G', '201619040215', '男', 'http://img.yifang009.com/img/userface.png', '1', '6', null);
INSERT INTO `student` VALUES ('130', '牛啸天', '201619040226', '$2a$10$hh1h0LXjPJgAfVkuGqcC6.qPS7jqrOhWlnx6d8iZXZgUq9.n9UO7K', '201619040226', '男', 'http://img.yifang009.com/img/userface.png', '1', '6', null);
INSERT INTO `student` VALUES ('131', '侯京豫', '201619040205', '$2a$10$.R594zN1EbAwhTX7vMMiH.4tHhk9qpTAeR.jddk4rZePiumSjUN.q', '201619040205', '女', 'http://img.yifang009.com/img/userface.png', '1', '6', null);
INSERT INTO `student` VALUES ('132', '张昭', '201619040216', '$2a$10$VXinCd12qK7N3qETwfMQQOcUOJxvAtzdEnrcFj2ORqhwhbb3yllzK', '201619040216', '男', 'http://img.yifang009.com/img/userface.png', '1', '6', null);
INSERT INTO `student` VALUES ('133', '阮鑫', '201619040227', '$2a$10$TPHaNIw1IlPLJ5JtM4v1SOyTp3XbAKRDj62mY6hhXPW7/gzAJPZDa', '201619040227', '男', 'http://img.yifang009.com/img/userface.png', '1', '6', null);
INSERT INTO `student` VALUES ('134', '余浩南', '201619040238', '$2a$10$/cUzurYOMPdLNRsEsYD8Oe1Oz2T667SmH20FlhkARpKoqk4hLq5JS', '201619040238', '男', 'http://img.yifang009.com/img/userface.png', '1', '6', null);
INSERT INTO `student` VALUES ('135', '许航', '201619040217', '$2a$10$xFpuQcWmuzE339OCv5Honuyf5JmyOBmXB42fcNxsPaeNH33ByutNO', '201619040217', '男', 'http://img.yifang009.com/img/userface.png', '1', '6', null);
INSERT INTO `student` VALUES ('136', '黄靖凯', '201619040228', '$2a$10$k2f6hVoZ6gExWf7K.xn5h.nQOkj9mBbeXWPaFET.YfiHhqrTAweI6', '201619040228', '男', 'http://img.yifang009.com/img/userface.png', '1', '6', null);
INSERT INTO `student` VALUES ('137', '张振威', '201619040207', '$2a$10$ks9YpK1pHdoWrqDdaOeqweouOEF6D0xGuQBE5cPQEk.WNcV9hE2bS', '201619040207', '男', 'http://img.yifang009.com/img/userface.png', '1', '6', null);
INSERT INTO `student` VALUES ('138', '夏英杰', '201619040239', '$2a$10$TqXvcqF3cNu4/g27h/1xYuxudpOtrKsEp935ZNvb1VR6RRUnCszjG', '201619040239', '男', 'http://img.yifang009.com/img/userface.png', '1', '6', null);
INSERT INTO `student` VALUES ('139', '彭飞', '201619040218', '$2a$10$53MoiDRpM/2Z463UZq5ofuuAnLZwa3tSyYwBpCapKeUr8vAyjqlse', '201619040218', '男', 'http://img.yifang009.com/img/userface.png', '1', '6', null);
INSERT INTO `student` VALUES ('140', '王振国', '201619040229', '$2a$10$rRFBQ2C.NuOkQJKdTk35HOIl9AlXGHfBh1m2TcPCabpiJucpsV69C', '201619040229', '男', 'http://img.yifang009.com/img/userface.png', '1', '6', null);
INSERT INTO `student` VALUES ('141', '职鹏宇', '201619040208', '$2a$10$xf.G9gYA/TS.JyaQ/7ueG.voULsfA/d3GEJl002k.en4G2Gdd5x2i', '201619040208', '男', 'http://img.yifang009.com/img/userface.png', '1', '6', null);
INSERT INTO `student` VALUES ('142', '王建立', '201619040240', '$2a$10$61Zeq3oqkQROuHii3SWL.OnkppTkb7tG0lxNPIaBKXGJ2KPb0NbNa', '201619040240', '男', 'http://img.yifang009.com/img/userface.png', '1', '6', null);
INSERT INTO `student` VALUES ('143', '张启鹏', '201619040219', '$2a$10$swrcwmKmiXXL3wMMXTcOpOwn3e9GBTvZ7eVPzXRzQwF0UuLcoKFGS', '201619040219', '男', 'http://img.yifang009.com/img/userface.png', '1', '6', null);
INSERT INTO `student` VALUES ('144', '刘海洋', '201619040230', '$2a$10$ITT57onlRzFprUmqWB8BUO4h9thYcrmjEfS9ZMdSjYCEpm63T8sl2', '201619040230', '男', 'http://img.yifang009.com/img/userface.png', '1', '6', null);
INSERT INTO `student` VALUES ('145', '崔永发', '201619040209', '$2a$10$iBrO0mXcEGghRwbMthtEQ.mSYJVF.nSpWFSEIbLrKfGZYUZIqJMj.', '201619040209', '男', 'http://img.yifang009.com/img/userface.png', '1', '6', null);
INSERT INTO `student` VALUES ('146', '赵啸天', '201619040220', '$2a$10$ze.Avz2t3hsxWynZrGkfjuUD/Ctnh2KsvkLYiY81oVz1BeHUKxie6', '201619040220', '男', 'http://img.yifang009.com/img/userface.png', '1', '6', null);
INSERT INTO `student` VALUES ('147', '刘渊博', '201560040121', '$2a$10$qKMLEi6I.eCBVWjarrJk2.twq1VmEklY.tSPkvvkDUaYTZ51tpr8m', '201560040121', '男', 'http://img.yifang009.com/img/userface.png', '1', '77', null);
INSERT INTO `student` VALUES ('148', '李国兴', '201560040131', '$2a$10$01ogPc2oYo1O7z.WO0QbgeKNvrYeJ829/lItJ6fSGASPPjCwL/Vne', '201560040131', '男', 'http://img.yifang009.com/img/userface.png', '1', '77', null);
INSERT INTO `student` VALUES ('149', '崔小同', '201560040110', '$2a$10$XAH5qdzOSCDill.MSYOC6efe7I8CvRaZJVLk2JLDLgHXWXx.Y01ty', '201560040110', '男', 'http://img.yifang009.com/img/userface.png', '1', '77', null);
INSERT INTO `student` VALUES ('150', '周剑恩', '201560040122', '$2a$10$baHkt3q.TR7nIiP3sbqTdOsKnO/eHQ8ALlPbfEo02jEnv51mRnsz2', '201560040122', '男', 'http://img.yifang009.com/img/userface.png', '1', '77', null);
INSERT INTO `student` VALUES ('151', '袁昊乐', '201560040132', '$2a$10$dPSB3iSpVk8i.XUKRSJW2OOto0icfkf/iuMlO4xwOCKhvQM1uR1ue', '201560040132', '男', 'http://img.yifang009.com/img/userface.png', '1', '77', null);
INSERT INTO `student` VALUES ('152', '朱越', '201407104116', '$2a$10$gsk8ZoTMSYi58Tcg6mqMIOgdxKIMSpQU.CcS.IyBpxTG4XFMyoIqq', '201407104116', '男', 'http://img.yifang009.com/img/userface.png', '1', '77', null);
INSERT INTO `student` VALUES ('153', '刘旭东', '201560040112', '$2a$10$J0F.wKYC4afdQDDKzN62.OCICrKXHk9oBnOOUIZ0nvGWhvHU/20tu', '201560040112', '男', 'http://img.yifang009.com/img/userface.png', '1', '77', null);
INSERT INTO `student` VALUES ('154', '赵海鸿', '201560040123', '$2a$10$w649PBBaK3JZFnEHohWX9eGL8bUIEc3MZ/GNCAyUiHnQ66cs5owqS', '201560040123', '男', 'http://img.yifang009.com/img/userface.png', '1', '77', null);
INSERT INTO `student` VALUES ('155', '王晨', '201560040134', '$2a$10$RE31EdHY3saHKTL0eG5j/.vPOdxfX3Ar1IwAAE5b3YZx/8h9X49j.', '201560040134', '男', 'http://img.yifang009.com/img/userface.png', '1', '77', null);
INSERT INTO `student` VALUES ('156', '朱相阳', '201560040113', '$2a$10$kpIn4M05YA8zQKGh2xr8keIGKxdsvfGcujRN21JTGAUxWpYJSGbx2', '201560040113', '男', 'http://img.yifang009.com/img/userface.png', '1', '77', null);
INSERT INTO `student` VALUES ('157', '周靖淞', '201560040124', '$2a$10$yVtpyb.QVAWWOU90svWYhOxY.8zBDFFpEu1DYz0eYZpQ27Er1Nfum', '201560040124', '男', 'http://img.yifang009.com/img/userface.png', '1', '77', null);
INSERT INTO `student` VALUES ('158', '朱金伟', '201560040135', '$2a$10$Rccxsk.M7H1kDYlKINxdvemKxgbfzjLSwMAKVkB7Sya19f89jz/sG', '201560040135', '男', 'http://img.yifang009.com/img/userface.png', '1', '77', null);
INSERT INTO `student` VALUES ('159', '路璐', '201560040101', '$2a$10$AFLiZTZRBEftOBrV2LCeRuP/N.4a7NmoDxqJEK8Ho/XWyMgFyPQay', '201560040101', '女', 'http://img.yifang009.com/img/userface.png', '1', '77', null);
INSERT INTO `student` VALUES ('160', '刘继承', '201560040114', '$2a$10$Drx79ytPeR58/PBJMqAl2uZ7XCMkdQ3/SpH0xs43iYt4466xZk2Rm', '201560040114', '男', 'http://img.yifang009.com/img/userface.png', '1', '77', null);
INSERT INTO `student` VALUES ('161', '陈凯松', '201560040136', '$2a$10$zMUXCWw8KlQ1DQLyZ2lAEumTG26TPkP5uJyG6kd6PZmlR.ri2mDFe', '201560040136', '男', 'http://img.yifang009.com/img/userface.png', '1', '77', null);
INSERT INTO `student` VALUES ('162', '龚婷', '201560040102', '$2a$10$JIcGImkGlBc2GPQ8xfTYyOdWdzDZehkBwpUZMah5jFf64cRC/vbzS', '201560040102', '女', 'http://img.yifang009.com/img/userface.png', '1', '77', null);
INSERT INTO `student` VALUES ('163', '武唐建', '201560040115', '$2a$10$ByCXe20gEbv2ZTmplc.G6ufwymFgOKogCT4w5miHqJfviHGUupAwS', '201560040115', '男', 'http://img.yifang009.com/img/userface.png', '1', '77', null);
INSERT INTO `student` VALUES ('164', '孟子筠', '201560040125', '$2a$10$meM1dKpZj2Pbiw3bgWXM7.5A/NQKZFgEjX0Qxa1eLTiZUMdrwN/oq', '201560040125', '男', 'http://img.yifang009.com/img/userface.png', '1', '77', null);
INSERT INTO `student` VALUES ('165', '陶歌', '201560040137', '$2a$10$i9LloxCsK/Qbhx2ZdN1FEuWRyOF4E9AP4ycq0yDvE7P02yXOgFqvO', '201560040137', '男', 'http://img.yifang009.com/img/userface.png', '1', '77', null);
INSERT INTO `student` VALUES ('166', '赵蒙林', '201560040103', '$2a$10$k7jjGBnliMD585pl5f.jaedrRC6s/m/DY98LKHNumR/.61EkJE7rK', '201560040103', '女', 'http://img.yifang009.com/img/userface.png', '1', '77', null);
INSERT INTO `student` VALUES ('167', '郭睿泽', '201560040116', '$2a$10$hx.cWk8veidOZmd8VuLZ6OViqhorxfPYL0C0ZRKQqRNgP5a2phVBC', '201560040116', '男', 'http://img.yifang009.com/img/userface.png', '1', '77', null);
INSERT INTO `student` VALUES ('168', '王耀', '201560040126', '$2a$10$rPtyg.qgoTAWZXs72i/TqOnn3fZlGzIcdLfz52g8S0MR34If5kiqK', '201560040126', '男', 'http://img.yifang009.com/img/userface.png', '1', '77', null);
INSERT INTO `student` VALUES ('169', '吕鹏辉', '201560040138', '$2a$10$A587SWBVnGZxy4LwxGdwwu5X8FmepdXaiVVZJnJz8Wku3AihHJs9W', '201560040138', '男', 'http://img.yifang009.com/img/userface.png', '1', '77', null);
INSERT INTO `student` VALUES ('170', '郭庚耀', '201407104123', '$2a$10$yzXl96RsebH1XxvFkuyCheBXpGTl4zKxkZJfe61vziwoHLubtNC.K', '201407104123', '男', 'http://img.yifang009.com/img/userface.png', '1', '77', null);
INSERT INTO `student` VALUES ('171', '许峰铭', '201560040105', '$2a$10$rARAFsvFSQzfjvY5NTeU3ej.2YTFiyuEfJuRDWnSYlQXDKvPINrxa', '201560040105', '女', 'http://img.yifang009.com/img/userface.png', '1', '77', null);
INSERT INTO `student` VALUES ('172', '郝笑凡', '201560040117', '$2a$10$R6XlxQ0kRxeYp7sSsH6uau.k6tLQwqrV4mCI04.MDMMU5l9SLl6H.', '201560040117', '男', 'http://img.yifang009.com/img/userface.png', '1', '77', null);
INSERT INTO `student` VALUES ('173', '甘彩坤', '201560040127', '$2a$10$UJpzGgWqrOPvDTDAjFwTpu7zqJvhwzTKq.SWzrkVySVc6nR/vHoOW', '201560040127', '男', 'http://img.yifang009.com/img/userface.png', '1', '77', null);
INSERT INTO `student` VALUES ('174', '刘大位', '201560040140', '$2a$10$2At3zIyuNNa.vQmcw0SO/OZobPuu7g9YA4PX6lal42nqf8XTCykwq', '201560040140', '男', 'http://img.yifang009.com/img/userface.png', '1', '77', null);
INSERT INTO `student` VALUES ('175', '曹言然', '201560040106', '$2a$10$qmxi3Qyr9.rJQnT6cEBUJ.3pB9dtfeq2ZesrVFbQSSGw.zycDeszO', '201560040106', '女', 'http://img.yifang009.com/img/userface.png', '1', '77', null);
INSERT INTO `student` VALUES ('176', '杨凯歌', '201407104137', '$2a$10$eTsZCbYSEW36PssWDh83Kesx03BJ3Q77WWRz/drwxGpnxt2pmL6fy', '201407104137', '男', 'http://img.yifang009.com/img/userface.png', '1', '77', null);
INSERT INTO `student` VALUES ('177', '韩昰旭', '201560040118', '$2a$10$T3SuzCv5bGfC4.K4PzV8KupcOJIjqcydF0.M3OrgD.0A0VYVhXPJa', '201560040118', '男', 'http://img.yifang009.com/img/userface.png', '1', '77', null);
INSERT INTO `student` VALUES ('178', '马港亮', '201560040128', '$2a$10$TC2LrYT7XStzb6XTBdXD3.AXshQUsp89yXLzCIDjdP8b5xcSYARTG', '201560040128', '男', 'http://img.yifang009.com/img/userface.png', '1', '77', null);
INSERT INTO `student` VALUES ('179', '程春萌', '201560040107', '$2a$10$3U/zwpfjEG7xVxthyn.rCeKgULVZWvemWc2FRnOBPdKqWMG0QJlS6', '201560040107', '女', 'http://img.yifang009.com/img/userface.png', '1', '77', null);
INSERT INTO `student` VALUES ('180', '严东', '201560040119', '$2a$10$W9qylQL8eyydL0qXzU84uOylot0/UOJYApw4IsI7bLn/85MvSmxma', '201560040119', '男', 'http://img.yifang009.com/img/userface.png', '1', '77', null);
INSERT INTO `student` VALUES ('181', '王贺', '201560040129', '$2a$10$pGDGApP3/cWlB8WmaFFNcODa5VVmu4rhvFIcjy4jZSbUkzlNQzCZW', '201560040129', '男', 'http://img.yifang009.com/img/userface.png', '1', '77', null);
INSERT INTO `student` VALUES ('182', '原洪文', '201560040108', '$2a$10$HlLkHRSUdYI92LIeib.9Lut4eH2LDUgWjSytW.D6l8.Dmc.8BfvHO', '201560040108', '男', 'http://img.yifang009.com/img/userface.png', '1', '77', null);
INSERT INTO `student` VALUES ('183', '陈琦', '201560040120', '$2a$10$Dfag/J9XmWZ8.uu.3aTlfu8H5bUDcAfSk487YLBXHaw8QZ2AG2jHe', '201560040120', '男', 'http://img.yifang009.com/img/userface.png', '1', '77', null);
INSERT INTO `student` VALUES ('184', '范奎', '201560040130', '$2a$10$AmMoJ4VemVOwdnQ.31bhm.5CZEf71Df8Es3EpugsJJVHwnMerwZ5O', '201560040130', '男', 'http://img.yifang009.com/img/userface.png', '1', '77', null);
INSERT INTO `student` VALUES ('185', '姜鉴超', '201560040109', '$2a$10$5HMuATJU.pO2OIZX0mx.b.T8b9ejUoZiekxrlfaRy8KLXDA7itvuW', '201560040109', '男', 'http://img.yifang009.com/img/userface.png', '1', '77', null);

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
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8;

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
INSERT INTO `student_grade` VALUES ('46', '201619040106', '王晨雨', '6', '28', '74', '5');
INSERT INTO `student_grade` VALUES ('77', '201619040139', '张凯帆', '6', '28', '86', '5');
INSERT INTO `student_grade` VALUES ('78', '201619040117', '史晓松', '6', '28', '72', '5');
INSERT INTO `student_grade` VALUES ('79', '201619040129', '刘震', '6', '28', '51', '5');
INSERT INTO `student_grade` VALUES ('80', '201619040140', '魏汉文', '6', '28', '89', '5');
INSERT INTO `student_grade` VALUES ('81', '201619040130', '胡明乐', '6', '28', '63', '5');
INSERT INTO `student_grade` VALUES ('82', '201619040108', '杜思尧', '6', '28', '71', '5');

-- ----------------------------
-- Table structure for `student_role`
-- ----------------------------
DROP TABLE IF EXISTS `student_role`;
CREATE TABLE `student_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sid` int(11) DEFAULT NULL,
  `rid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sid` (`sid`),
  KEY `rid` (`rid`),
  CONSTRAINT `student_role_ibfk_1` FOREIGN KEY (`sid`) REFERENCES `student` (`id`) ON DELETE CASCADE,
  CONSTRAINT `student_role_ibfk_2` FOREIGN KEY (`rid`) REFERENCES `role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student_role
-- ----------------------------
INSERT INTO `student_role` VALUES ('1', '24', '4');

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
  `userface` varchar(255) DEFAULT 'http://img.yifang009.com/img/userface.png',
  `remark` varchar(255) DEFAULT NULL,
  `departmentId` int(11) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `jobLevelId` int(11) DEFAULT NULL COMMENT '职称',
  `gender` char(4) DEFAULT NULL,
  `workID` char(12) DEFAULT NULL,
  `rId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `workid` (`workID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1557 DEFAULT CHARSET=utf8;

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
INSERT INTO `teacher` VALUES ('1556', '121111', '18639694397', '1', '1234', '$2a$10$GlI8amfuvo5mL/YVKasoXO2dHCpr1osummoA39K44K04kFDIXGvSS', 'http://img.yifang009.com/img/userface.png', null, '2', '123@qq.com', '9', '男', '1234', null);

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
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;

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
INSERT INTO `teacher_role` VALUES ('31', '1547', '1');
INSERT INTO `teacher_role` VALUES ('32', '1548', '1');
INSERT INTO `teacher_role` VALUES ('33', '1549', '1');
INSERT INTO `teacher_role` VALUES ('34', '1550', '1');
INSERT INTO `teacher_role` VALUES ('35', '1551', '1');
INSERT INTO `teacher_role` VALUES ('36', '1552', '1');
INSERT INTO `teacher_role` VALUES ('37', '1553', '1');
INSERT INTO `teacher_role` VALUES ('38', '1554', '1');
INSERT INTO `teacher_role` VALUES ('39', '1555', '1');
INSERT INTO `teacher_role` VALUES ('40', '1556', '1');
INSERT INTO `teacher_role` VALUES ('51', '1546', '1');
INSERT INTO `teacher_role` VALUES ('52', '1546', '2');

-- ----------------------------
-- Table structure for `testpaper_class`
-- ----------------------------
DROP TABLE IF EXISTS `testpaper_class`;
CREATE TABLE `testpaper_class` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `testPaperId` int(11) DEFAULT NULL,
  `classId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `classId` (`classId`),
  KEY `testpaper_class_ibfk_1` (`testPaperId`),
  CONSTRAINT `testpaper_class_ibfk_1` FOREIGN KEY (`testPaperId`) REFERENCES `test_paper` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `testpaper_class_ibfk_2` FOREIGN KEY (`classId`) REFERENCES `class` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of testpaper_class
-- ----------------------------
INSERT INTO `testpaper_class` VALUES ('2', '19', '5');
INSERT INTO `testpaper_class` VALUES ('3', '28', '1');
INSERT INTO `testpaper_class` VALUES ('4', '28', '5');

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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of test_paper
-- ----------------------------
INSERT INTO `test_paper` VALUES ('19', '测试001', '1', '1', '2019-2020学年第二学期', '2020-05-03', '2020-05-10 23:05:34', '6', '4@6@3@2@5@7', '17@18@19@20@25@22@23@24@35@36@37@38@21@30@31@32@29', '3', null, '1', null, '', '100', '60', '单选题@多选题@简答题@', '1', null);
INSERT INTO `test_paper` VALUES ('24', '测试', '1', '1', '2018-2019学年第一学期', '2020-05-17', null, '6', '6@1@3', '', '3', '3', '0', '0', null, '21', '21', '单选题@', '0', null);
INSERT INTO `test_paper` VALUES ('26', '期末测试', '1', '1', '2019-2020学年第二学期', '2020-05-17', null, '6', '6@1@3@2@5@7@8@4', '', '3', '3', '0', '0', null, '28', '16.8', '单选题@多选题@判断题@填空题@简答题@', '0', null);
INSERT INTO `test_paper` VALUES ('27', '测试2', '1', '2', '2019-2020学年第二学期', '2020-05-17', '2020-05-17 16:40:25', '6', '6@1@3@2@5@7@9@8@4', '', '3', '3', '1', '0', null, '100', '60', '单选题@多选题@判断题@填空题@简答题@', '0', null);
INSERT INTO `test_paper` VALUES ('28', '16级软件工程期末测试', '1', '1', '2019-2020学年第二学期', '2020-05-17', null, '6', '1@2@3@4@5@6@9@7@8@', '15@17@19@20@21@25@28@27@35@26@30@33@31@29@23@32@34@38', '3', null, '1', null, '', '100', '60', '单选题@多选题@填空题@编程题@', '1', null);

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
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `chapterId` (`chapterId`),
  CONSTRAINT `tf_question_ibfk_1` FOREIGN KEY (`chapterId`) REFERENCES `chapter` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tf_question
-- ----------------------------
INSERT INTO `tf_question` VALUES ('15', '33', '变量的指针就是变量的地址，存放变量地址的变量是指针变量，用来指向变量，要在程序语句中指定（ ）。', '对', '', '3', '3', '6', '8', '2', '1', '2020-05-16 17:54:59');
INSERT INTO `tf_question` VALUES ('16', '26', '一个C源程序可以没有main函数( )', '错', '', '3', '3', '6', '6', '1', '1', '2020-05-16 17:55:34');
INSERT INTO `tf_question` VALUES ('17', '15', '当输入数值数据时，对于整型变量只能输入整型值；对于实型变量只能输入实型值。（ ）', '错', '', '3', '3', '6', '1', '1', '1', '2020-05-16 17:55:59');
INSERT INTO `tf_question` VALUES ('18', '15', '若a和b是同类型变量，在执行了赋值语句a=b；后b中的值将放入a中，b中的值将丢失。（ ）', '错', '', '3', '3', '6', '1', '1', '1', '2020-05-16 17:56:36');
INSERT INTO `tf_question` VALUES ('19', '15', '在C程序中，无论是整数还是实数，都能准确无误的表示。（ ）', '错', '', '3', '3', '6', '1', '1', '1', '2020-05-16 17:56:54');
INSERT INTO `tf_question` VALUES ('20', '16', 'C程序中的注释部分可有可无，通常可以省略。（ ）', '对', '', '3', '3', '6', '1', '1', '1', '2020-05-16 17:57:37');
INSERT INTO `tf_question` VALUES ('21', '15', '在C程序中所用的变量必须先定义后使用。（ ）', '对', '', '3', '3', '6', '1', '1', '1', '2020-05-16 17:58:45');
INSERT INTO `tf_question` VALUES ('22', '17', '在C程序中，语句之间必须要用分号“；”分隔。（ )', '对', '', '3', '3', '6', '2', '1', '1', '2020-05-16 17:59:04');
INSERT INTO `tf_question` VALUES ('23', '30', '有int a[10]＝(1,9，2,3，44，17，37，28，49，36);则a[10]=36;（ ）', '错', '', '3', '3', '6', '7', '1', '1', '2020-05-16 17:59:32');
INSERT INTO `tf_question` VALUES ('24', '21', 'if (‘a’) c=10;else c=4;则结果是：c=10 ( )', '对', '', '3', '3', '6', '4', '1', '1', '2020-05-16 18:00:01');
INSERT INTO `tf_question` VALUES ('25', '20', '当想a=3,b=4,执行scanf( \"a=%s,b=%c\",a,&b);后，输入形式为：3,4↙( )', '错', '', '3', '3', '6', '3', '1', '1', '2020-05-16 18:00:32');
INSERT INTO `tf_question` VALUES ('26', '23', '“break”和 “contiune”用于循环中没有区别。（ ）', '错', '', '3', '3', '6', '5', '1', '1', '2020-05-16 18:01:27');
INSERT INTO `tf_question` VALUES ('27', '20', '标准格式输入函数scanf()可以从键盘上接收不同数据类型的数据项。', '对', '', '3', '3', '6', '3', '1', '1', '2020-05-16 18:06:30');
INSERT INTO `tf_question` VALUES ('28', '22', '在if语句的三种形式中，如果要想在满足条件时执行一组(多个)语句，则必须把这一组语句用{}括起来组成一个复合语句。', '对', '', '3', '3', '6', '4', '1', '1', '2020-05-16 18:06:58');
INSERT INTO `tf_question` VALUES ('29', '23', 'continue 不是结束本次循环，而是终止整个循环的执行。', '错', '', '3', '3', '6', '5', '1', '1', '2020-05-16 18:08:13');
INSERT INTO `tf_question` VALUES ('30', '30', '在对数组全部元素赋初值时，不可以省略行数，但能省略列数', '错', '', '3', '3', '6', '7', '1', '1', '2020-05-16 18:08:46');
INSERT INTO `tf_question` VALUES ('31', '26', '函数的实参传递到形参有两种方式值传递和地址传递', '对', '', '3', '3', '6', '6', '1', '1', '2020-05-16 18:09:17');
INSERT INTO `tf_question` VALUES ('32', '15', '直接访问就是直接利用变量的地址进行存取直接访问', '对', '', '3', '3', '6', '1', '1', '1', '2020-05-16 18:09:56');
INSERT INTO `tf_question` VALUES ('33', '41', '共用体变量可以作结构体的成员，结构体变量也可以作共用体的成员。', '对', '', '3', '3', '6', '11', '1', '1', '2020-05-16 18:10:26');
INSERT INTO `tf_question` VALUES ('34', '42', '文件指针和位置指针都是随着文件的读写操作在不断改变。', '错', '', '3', '3', '6', '12', '2', '1', '2020-05-16 18:11:45');
INSERT INTO `tf_question` VALUES ('35', '20', 'C 语言标准格式输入函数 scanf() 的参数表中要使用变量的地址值。', '对', '', '3', '3', '6', '3', '1', '1', '2020-05-16 18:12:10');
INSERT INTO `tf_question` VALUES ('36', '15', '浮点型常量的指数表示中 ,e 是可以省略的。', '错', '', '3', '3', '6', '1', '1', '1', '2020-05-16 18:12:40');
INSERT INTO `tf_question` VALUES ('37', '17', '任何表达式语句都是表达式加分号组成的。', '对', '', '3', '3', '6', '2', '1', '1', '2020-05-16 18:13:08');
INSERT INTO `tf_question` VALUES ('38', '22', '在switch语句中，每一个的case常量表达式的值可以相同。', '错', '', '3', '3', '6', '4', '1', '1', '2020-05-16 18:13:43');
INSERT INTO `tf_question` VALUES ('39', '25', 'do-while循环的while后的分号可以省略。', '错', '', '3', '3', '6', '5', '1', '1', '2020-05-16 18:14:03');
INSERT INTO `tf_question` VALUES ('40', '36', '用字符串方式赋值比用字符逐个赋值要多占一个字节， 用于存放字符串结束标志\'\\0\'。', '对', '', '3', '3', '6', '9', '1', '1', '2020-05-16 18:14:32');
INSERT INTO `tf_question` VALUES ('41', '28', 'C语言函数返回类型的默认定义类型是void', '错', '', '3', '3', '6', '6', '1', '1', '2020-05-16 18:15:18');
INSERT INTO `tf_question` VALUES ('42', '34', '可以用一个指针变量指向一个函数，然后通过该指针变量调用此函数', '对', '', '3', '3', '6', '8', '2', '1', '2020-05-16 18:15:48');
INSERT INTO `tf_question` VALUES ('43', '15', '枚举类型中的元素都具有一个整型值。', '对', '', '3', '3', '6', '1', '1', '1', '2020-05-16 18:16:12');
INSERT INTO `tf_question` VALUES ('44', '15', 'C 语言是一种具有某些低级语言特征的高级语言。', '对', '', '3', '3', '6', '1', '1', '1', '2020-05-16 18:16:58');
INSERT INTO `tf_question` VALUES ('45', '22', 'case语句后如没有break，顺序向下执行。', '对', '', '3', '3', '6', '4', '1', '1', '2020-05-16 18:17:42');
INSERT INTO `tf_question` VALUES ('46', '25', 'do-while循环至少要执行一次循环语句。', '对', '', '3', '3', '6', '5', '1', '1', '2020-05-16 18:18:03');
INSERT INTO `tf_question` VALUES ('47', '30', '数组名能与其它变量名相同。数组名后是用方括号括起来的常量表达式，不能用圆括号。', '对', '', '3', '3', '6', '7', '1', '1', '2020-05-16 18:18:45');
INSERT INTO `tf_question` VALUES ('48', '28', '函数形参的存储单元是动态分配的', '对', '', '3', '3', '6', '6', '1', '1', '2020-05-16 18:19:18');
INSERT INTO `tf_question` VALUES ('49', '34', 'int (*p)[4]它表示p是一个指针数组，它包含4个指针变量元素', '错', '', '3', '3', '6', '8', '2', '1', '2020-05-16 20:00:27');
INSERT INTO `tf_question` VALUES ('50', '42', '随机操作只适用于文本文件。', '错', '', '3', '3', '6', '12', '1', '1', '2020-05-16 20:17:26');
INSERT INTO `tf_question` VALUES ('51', '17', '表达式语句和表达式没有什么区别。', '错', '', '3', '3', '6', '2', '1', '1', '2020-05-16 20:21:55');
INSERT INTO `tf_question` VALUES ('52', '22', '条件运算符?和:是一对运算符，不能分开单独使用。', '对', '', '3', '3', '6', '4', '1', '1', '2020-05-16 20:22:20');
INSERT INTO `tf_question` VALUES ('53', '38', '函数strcmp从头至尾顺序地将其对应字符比较，遇到两个字符不等时，两个字符相减得到一个int型值，两个字符串完全相同时，则返回0。', '对', '', '3', '3', '6', '6', '2', '1', '2020-05-16 20:22:50');
INSERT INTO `tf_question` VALUES ('54', '28', '函数的实参可以是常量，变量或表达式', '对', '', '3', '3', '6', '6', '1', '1', '2020-05-16 20:23:21');
INSERT INTO `tf_question` VALUES ('55', '39', '如果指针变量p已指向数组中的一个元素，则p+1指向同一数组中的下一个元素', '对', '', '3', '3', '6', '8', '1', '1', '2020-05-16 20:25:33');
INSERT INTO `tf_question` VALUES ('56', '34', '文件指针用于指向文件，文件只有被打开后才有对应的文件指针。', '对', '', '3', '3', '6', '12', '1', '1', '2020-05-16 20:26:49');
INSERT INTO `tf_question` VALUES ('57', '17', '在C语言中，逗号既可以作为运算符，也可以作为分隔符。', '对', '', '3', '3', '6', '2', '1', '1', '2020-05-16 20:28:53');
INSERT INTO `tf_question` VALUES ('58', '15', 'C语言的书写格式不会影响程序的可读性。', '错', '', '3', '3', '6', '1', '1', '1', '2020-05-16 20:29:20');
INSERT INTO `tf_question` VALUES ('59', '22', '条件表达式不能取代一般if的语句。', '错', '', '3', '3', '6', '4', '1', '1', '2020-05-16 20:29:41');
INSERT INTO `tf_question` VALUES ('60', '25', 'break 则是结束整个循环过程，不再判断执行循环的条件是否成立。', '对', '', '3', '3', '6', '5', '1', '1', '2020-05-16 20:30:16');
INSERT INTO `tf_question` VALUES ('61', '30', 'C语言允许用字符串的方式对数组作初始化赋值。（', '对', '', '3', '3', '6', '7', '1', '1', '2020-05-16 20:30:36');
INSERT INTO `tf_question` VALUES ('62', '26', '如果函数定义出现在函数调用之前，可以不必加函数原型声明', '对', '', '3', '3', '6', '6', '1', '1', '2020-05-16 20:31:25');
INSERT INTO `tf_question` VALUES ('63', '34', '可以用一个指针变量指向一个函数，然后通过该指针变量调用此函数', '对', '', '3', '3', '6', '8', '1', '1', '2020-05-16 20:31:50');
INSERT INTO `tf_question` VALUES ('64', '15', '变量的两个值 : 本身值和地址值都是可以改变的。', '错', '', '3', '3', '6', '1', '1', '1', '2020-05-16 20:32:20');
INSERT INTO `tf_question` VALUES ('65', '23@24@25', 'C语言的三种循环不可以互相嵌套。', '错', '', '3', '3', '6', '5', '1', '1', '2020-05-16 20:32:44');
INSERT INTO `tf_question` VALUES ('66', '30', '在对数组全部元素赋初值时，可以省略行数，但不能省略列数', '对', '', '3', '3', '6', '7', '1', '1', '2020-05-16 20:33:36');
INSERT INTO `tf_question` VALUES ('67', '28@33', '函数名代表该函数的入口地址。因此，可用函数名给指向函数的指针变量赋值', '对', '', '3', '3', '6', '6', '1', '1', '2020-05-16 20:34:20');

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
