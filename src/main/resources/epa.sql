/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : epa

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2020-05-22 00:09:56
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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

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
INSERT INTO `chapter` VALUES ('19', '第一章 软件工程简介', '8');
INSERT INTO `chapter` VALUES ('20', '第二章 软件过程', '8');
INSERT INTO `chapter` VALUES ('21', '第三章 需求和建模', '8');
INSERT INTO `chapter` VALUES ('22', '第四章 软件设计', '8');
INSERT INTO `chapter` VALUES ('23', '第五章 软件测试', '8');
INSERT INTO `chapter` VALUES ('24', '第六章 项目管理', '8');
INSERT INTO `chapter` VALUES ('25', '测试章节', '6');

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
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8;

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
INSERT INTO `class` VALUES ('10', 'RB软工网182', '2018', '1', '1');
INSERT INTO `class` VALUES ('11', 'RB软工网191', '2019', '1', '1');
INSERT INTO `class` VALUES ('12', 'RB软工网192', '2019', '1', '1');
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of class_course
-- ----------------------------
INSERT INTO `class_course` VALUES ('3', '1', '5');
INSERT INTO `class_course` VALUES ('4', '2', '5');
INSERT INTO `class_course` VALUES ('5', '3', '5');
INSERT INTO `class_course` VALUES ('6', '4', '5');
INSERT INTO `class_course` VALUES ('8', '6', '11');
INSERT INTO `class_course` VALUES ('9', '1', '2');
INSERT INTO `class_course` VALUES ('10', '7', '10');
INSERT INTO `class_course` VALUES ('11', '8', '9');

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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('1', 'RB概率论与数理统计', '2018-2019学年第二学期', '2', '2');
INSERT INTO `course` VALUES ('2', '编译原理', '2018-2019学年第二学期', '5', '1');
INSERT INTO `course` VALUES ('3', '局域网组网技术', '2018-2019学年第二学期', '5', '1');
INSERT INTO `course` VALUES ('4', '网络安全技术', '2018-2019学年第二学期', '5', '1');
INSERT INTO `course` VALUES ('6', 'C语言程序设计', '2018-2019学年第一学期', '11', '1');
INSERT INTO `course` VALUES ('7', '软件工程', '2019-2020学年第二学期', '10', '1');
INSERT INTO `course` VALUES ('8', '软件工程', '2019-2020学年第二学期', '9', '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

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
INSERT INTO `fb_question` VALUES ('25', '17', '若有定义：int a=7;float x=2.5,y=4.7;则表达式x+a%3*(int)(x+y)%2/4的值为 _____。', '2.5', '', '1557', '3', '6', '2', '1', '1', '2020-05-18 21:39:18');
INSERT INTO `fb_question` VALUES ('26', '33', '有程序段：int a[10]={1,2,3,4,5,6,7,8,9,10},*p=&a[3],b; b=p[5]; 则b中的值是_____。', '9', '', '1557', '3', '6', '8', '1', '1', '2020-05-18 21:39:48');
INSERT INTO `fb_question` VALUES ('27', '26', '函数swap(int x,int y)实现对x和y值的交换。则执行语句{int a[2]={1,2};  swap(a[0],a[1]);}后，a[0]= _____。,a[1]= _____。', '1  2', '', '1557', '3', '6', '6', '1', '1', '2020-05-18 21:40:27');
INSERT INTO `fb_question` VALUES ('28', '16', '设有以下宏定义：#define f(z)  z*z，执行赋值语句k=f(4＋4)/f(2＋2)；（k为int型变量）后，k的值是 _____ 。', '28', '4+4*4+4/2+2*2+2,没有括号，按数学法则算。', '1557', '3', '6', '1', '2', '1', '2020-05-18 21:41:24');
INSERT INTO `fb_question` VALUES ('29', '17', '若x为int型变量，则执行x=7; x＋=x－=x＋x; 语句后，x的值是______。', '-14', '', '1557', '3', '6', '1', '1', '1', '2020-05-18 21:42:20');
INSERT INTO `fb_question` VALUES ('30', '25', '结构化程序设计中的三种基本结构是 _____ 、_____、______。', '顺序结构、选择结构、循环结构。', '', '1557', '3', '6', '5', '1', '1', '2020-05-18 21:44:33');
INSERT INTO `fb_question` VALUES ('31', '26', 'C源程序的基本单位是【 】。', '函数', '', '1557', '3', '6', '6', '1', '1', '2020-05-18 22:00:52');
INSERT INTO `fb_question` VALUES ('32', '26', '一个C源程序中至少应包括一个【 】。', 'main()函数', '', '1557', '3', '6', '6', '1', '1', '2020-05-18 22:01:07');
INSERT INTO `fb_question` VALUES ('33', '20', '在C语言中，输入操作是由库函数_____完成的，输出操作是由库函数______完成的。', 'scanf printf', '', '1557', '3', '6', '3', '1', '1', '2020-05-18 22:01:57');
INSERT INTO `fb_question` VALUES ('34', '15', '在C语言中（以16位PC机为例），一个char型数据在内存中所占的字节数为______。', '1', '', '1557', '3', '6', '3', '1', '1', '2020-05-18 22:02:37');
INSERT INTO `fb_question` VALUES ('35', '15', 'C语言所提供的基本数据类型包括：单精度型、双精度型、______、______、_______。', '字符型 整型  枚举', '', '1557', '3', '6', '1', '2', '1', '2020-05-18 22:03:23');
INSERT INTO `fb_question` VALUES ('36', '17', '若s是int型变量，则表达式s%2+(s+1)%2的值为_____。', '1', '无论s是奇数还是偶数表达式的值只能是1。', '1557', '3', '6', '2', '1', '1', '2020-05-18 22:04:13');
INSERT INTO `fb_question` VALUES ('37', '17', '若有定义:int b=7;float a=2.5,c=4.7;则表达式a+(int)(b/3*(int)(a+c)/2)%4的值为', '5.5', '', '1557', '3', '6', '2', '2', '1', '2020-05-18 22:05:21');
INSERT INTO `fb_question` VALUES ('38', '17', '若有定义:int a=2,b=3;float x=3.5,y=2.5;则表达式(float)(a+b)/2+(int)x%(int)y的值为_____。', '3.5', '', '1557', '3', '6', '2', '2', '1', '2020-05-18 22:05:44');
INSERT INTO `fb_question` VALUES ('39', '15', '若有定义：char c=\'\\010\';则变量c中包含的字符个数为_____。', '1', '', '1557', '3', '6', '1', '1', '1', '2020-05-18 22:06:17');
INSERT INTO `fb_question` VALUES ('40', '15', '已知字母a的ASCII码为十进制数97，且设ch为字符型变量，则表达式ch=\'a\'+\'8\'-\'3\'的值为_____。', 'f', '', '1557', '3', '6', '1', '1', '1', '2020-05-18 22:06:44');
INSERT INTO `fb_question` VALUES ('41', '17', '假设m是一个三位数，从左到右用a、b、c表示各位的数字，则从左到右各个数字是bac的三位数表达式是\n_______。', 'm/10%10*100+m/100*10+m%10', '数字各个位的分离可以先整除再取余，也可以先取余再整除。', '1557', '3', '6', '2', '1', '1', '2020-05-18 22:07:39');
INSERT INTO `fb_question` VALUES ('42', '25', '下面程序的运行结果是______。\n#include<stdio.h>\nmain()\n{int a,s,n,count;\n a=2;s=0;n=1;count=1;\n while(count<=7) {n=n*a;s=s+n;++count;}\n printf(\"s=%d\\n\",s);\n}', 's=254', '', '1557', '3', '6', '5', '2', '1', '2020-05-18 22:08:36');
INSERT INTO `fb_question` VALUES ('43', '26', '在C语言中，一个函数一般由两个部分组成，它们是_____和______。', '函数声明、函数体', '', '1557', '3', '6', '6', '2', '1', '2020-05-18 22:09:33');

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
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8;

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
INSERT INTO `knows` VALUES ('45', '什么是软件工程', '19');
INSERT INTO `knows` VALUES ('46', '软件危机', '19');
INSERT INTO `knows` VALUES ('47', '软件工程的层次', '19');
INSERT INTO `knows` VALUES ('48', '瀑布模型', '20');
INSERT INTO `knows` VALUES ('49', '增量过程模型', '20');
INSERT INTO `knows` VALUES ('50', 'RAD模型（快速应用程序开发）', '20');
INSERT INTO `knows` VALUES ('51', '演化过程模型', '20');
INSERT INTO `knows` VALUES ('52', '原型开发', '20');
INSERT INTO `knows` VALUES ('53', '螺旋模型', '20');
INSERT INTO `knows` VALUES ('54', '基于构件的开发', '20');
INSERT INTO `knows` VALUES ('55', '形式化方法模型', '20');
INSERT INTO `knows` VALUES ('56', '面向方面的软件开发', '20');
INSERT INTO `knows` VALUES ('57', '统一过程', '20');
INSERT INTO `knows` VALUES ('58', '敏捷原则', '20');
INSERT INTO `knows` VALUES ('59', '极限编程', '20');
INSERT INTO `knows` VALUES ('60', '需求工程', '21');
INSERT INTO `knows` VALUES ('61', '需求工程任务', '21');
INSERT INTO `knows` VALUES ('62', '数据流图', '21');
INSERT INTO `knows` VALUES ('63', '实体-关系图 ER图', '21');
INSERT INTO `knows` VALUES ('64', '用例场景', '21');
INSERT INTO `knows` VALUES ('65', '面向对象分析', '21');
INSERT INTO `knows` VALUES ('66', '软件设计目标', '22');
INSERT INTO `knows` VALUES ('67', '数据设计', '22');
INSERT INTO `knows` VALUES ('68', '体系结构设计', '22');
INSERT INTO `knows` VALUES ('69', '构建设计/过程设计', '22');
INSERT INTO `knows` VALUES ('70', '接口设计', '22');
INSERT INTO `knows` VALUES ('71', '软件测试步骤', '23');
INSERT INTO `knows` VALUES ('72', '单元测试', '23');
INSERT INTO `knows` VALUES ('73', '集成测试', '23');
INSERT INTO `knows` VALUES ('74', '面向对象软件测试', '23');
INSERT INTO `knows` VALUES ('75', '有效性测试', '23');
INSERT INTO `knows` VALUES ('76', '系统测试', '23');
INSERT INTO `knows` VALUES ('77', '测试技术', '23');
INSERT INTO `knows` VALUES ('78', '软件项目管理', '24');
INSERT INTO `knows` VALUES ('79', '过程和项目度量', '24');
INSERT INTO `knows` VALUES ('80', '软件项目估算', '24');
INSERT INTO `knows` VALUES ('81', '项目进度安排', '24');
INSERT INTO `knows` VALUES ('82', '风险管理', '24');

-- ----------------------------
-- Table structure for `major`
-- ----------------------------
DROP TABLE IF EXISTS `major`;
CREATE TABLE `major` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `schoolId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=153 DEFAULT CHARSET=utf8;

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
INSERT INTO `mc_option` VALUES ('141', '36', '1', '10110');
INSERT INTO `mc_option` VALUES ('142', '36', '2', '386');
INSERT INTO `mc_option` VALUES ('143', '36', '3', '0Xffa');
INSERT INTO `mc_option` VALUES ('144', '36', '4', 'x2a2');
INSERT INTO `mc_option` VALUES ('145', '37', '1', 'a=b=c=d=100;');
INSERT INTO `mc_option` VALUES ('146', '37', '2', 'd++;');
INSERT INTO `mc_option` VALUES ('147', '37', '3', 'c+b;');
INSERT INTO `mc_option` VALUES ('148', '37', '4', 'd=(c=22)-(b++);');
INSERT INTO `mc_option` VALUES ('149', '38', '1', 'oxff');
INSERT INTO `mc_option` VALUES ('150', '38', '2', '0Xabc');
INSERT INTO `mc_option` VALUES ('151', '38', '3', '0x01');
INSERT INTO `mc_option` VALUES ('152', '38', '4', '0X9X');

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
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

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
INSERT INTO `menu` VALUES ('19', '/analysis/all/**', '/ana/all', 'AnaAll', '试卷数据分析', null, null, '1', '5', '0');
INSERT INTO `menu` VALUES ('20', '/analysis/score/**', '/ana/score', 'StaScore', '试题数据分析', null, null, '1', '5', '0');
INSERT INTO `menu` VALUES ('21', '/analysis/personnel/**', '/ana/pers', 'StaPers', '成绩信息统计', null, null, '1', '5', '0');
INSERT INTO `menu` VALUES ('22', '/analysis/recored/**', '/ana/record', 'StaRecord', '学习效果分析', null, null, '1', '5', '0');
INSERT INTO `menu` VALUES ('23', '/system/user/**', '/sys/user', 'SysUserMan', '用户管理', null, null, '1', '6', '1');
INSERT INTO `menu` VALUES ('24', '/system/authority/**', '/sys/aut', 'SysAuth', '权限管理', null, null, '1', '6', '1');
INSERT INTO `menu` VALUES ('25', '/baseinfo/department/**', '/baseinfo/dep', 'BasDep', '部门管理', null, null, '1', '33', '0');
INSERT INTO `menu` VALUES ('26', '/baseinfo/class/**', '/baseinfo/class', 'BasClass', '班级管理', null, null, '1', '33', '1');
INSERT INTO `menu` VALUES ('27', '/baseinfo/datastructure/**', '/baseinfo/datastru', 'BasDataStru', '知识结构管理', null, null, '1', '33', '1');
INSERT INTO `menu` VALUES ('28', '/system/init/**', '/sys/init', 'SysInit', '初始化数据库', null, null, '1', '6', '0');
INSERT INTO `menu` VALUES ('33', '/', '/home', 'Home', '基础信息管理', 'fa fa-windows', null, '1', '1', '1');
INSERT INTO `menu` VALUES ('34', '/baseinfo/stu/**', '/baseinfo/stu', 'BasStu', '学生管理', null, null, '1', '33', '1');
INSERT INTO `menu` VALUES ('37', '/analysis/all/**', '/ana/scoredistribution', 'AnaScoreDistribution', '成绩区间人数分布', null, null, '1', '5', '1');
INSERT INTO `menu` VALUES ('38', '/analysis/all/**', '/ana/outstandingandpassrate', 'AnaOutstandingAndPassRate', '优秀率、及格率', null, null, '1', '5', '1');
INSERT INTO `menu` VALUES ('39', '/analysis/all/**', '/ana/anascoringrateofquestiontype', 'AnaScoringRateOfQuestionType', '题型得分率', null, null, '1', '5', '1');
INSERT INTO `menu` VALUES ('40', '/analysis/all/**', '/ana/anascoresofallchapters', 'AnaScoresOfAllChapters', '章节得分率', null, null, '1', '5', '1');
INSERT INTO `menu` VALUES ('41', '/analysis/all/**', '/ana/anascoreoftestpaperknowledgepoints', 'AnaScoreOfTestpaperKnowledgePoints', '知识点得分率', null, null, '1', '5', '1');
INSERT INTO `menu` VALUES ('42', '/analysis/all/**', '/ana/scoredistributionoftestpaperchapters', 'AnaScoreDistributionOfTestPaperChapters', '章节分值分布', null, null, '1', '5', '1');
INSERT INTO `menu` VALUES ('43', '/analysis/all/**', '/ana/scoredistributionofknowledgepointsIntestpaper', 'AnaScoreDistributionOfKnowledgePointsInTestPaper', '知识点分值分布', null, null, '1', '5', '1');
INSERT INTO `menu` VALUES ('44', '/student/all/**', '/stu/analysis', 'StuAnalysis', '我的考试', null, null, '1', '45', '1');
INSERT INTO `menu` VALUES ('45', '/', '/home', 'Home', '我的考试', 'fa fa-bar-chart', null, '1', '1', '1');
INSERT INTO `menu` VALUES ('46', '/analysis/all/**', '/ana/testdifficultyandtestpaperdifficulty', 'AnaTestDifficultyAndTestPaperDifficulty', '试题难度和试卷难度', null, null, '1', '5', '1');
INSERT INTO `menu` VALUES ('47', '/student/all/**', '/stu/scoringrateofchaptersandknowledgepoints', 'StuScoringRateOfChaptersAndKnowledgePoints', '章节和知识点得分率', null, null, '1', '45', '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=492 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menu_role
-- ----------------------------
INSERT INTO `menu_role` VALUES ('350', '44', '4');
INSERT INTO `menu_role` VALUES ('425', '7', '3');
INSERT INTO `menu_role` VALUES ('426', '8', '3');
INSERT INTO `menu_role` VALUES ('427', '9', '3');
INSERT INTO `menu_role` VALUES ('428', '10', '3');
INSERT INTO `menu_role` VALUES ('429', '11', '3');
INSERT INTO `menu_role` VALUES ('430', '14', '3');
INSERT INTO `menu_role` VALUES ('431', '15', '3');
INSERT INTO `menu_role` VALUES ('432', '16', '3');
INSERT INTO `menu_role` VALUES ('433', '17', '3');
INSERT INTO `menu_role` VALUES ('434', '37', '3');
INSERT INTO `menu_role` VALUES ('435', '38', '3');
INSERT INTO `menu_role` VALUES ('436', '39', '3');
INSERT INTO `menu_role` VALUES ('437', '40', '3');
INSERT INTO `menu_role` VALUES ('438', '41', '3');
INSERT INTO `menu_role` VALUES ('439', '42', '3');
INSERT INTO `menu_role` VALUES ('440', '43', '3');
INSERT INTO `menu_role` VALUES ('441', '46', '3');
INSERT INTO `menu_role` VALUES ('442', '23', '3');
INSERT INTO `menu_role` VALUES ('443', '24', '3');
INSERT INTO `menu_role` VALUES ('444', '25', '3');
INSERT INTO `menu_role` VALUES ('445', '26', '3');
INSERT INTO `menu_role` VALUES ('446', '27', '3');
INSERT INTO `menu_role` VALUES ('447', '34', '3');
INSERT INTO `menu_role` VALUES ('448', '7', '1');
INSERT INTO `menu_role` VALUES ('449', '8', '1');
INSERT INTO `menu_role` VALUES ('450', '9', '1');
INSERT INTO `menu_role` VALUES ('451', '10', '1');
INSERT INTO `menu_role` VALUES ('452', '11', '1');
INSERT INTO `menu_role` VALUES ('453', '14', '1');
INSERT INTO `menu_role` VALUES ('454', '15', '1');
INSERT INTO `menu_role` VALUES ('455', '16', '1');
INSERT INTO `menu_role` VALUES ('456', '17', '1');
INSERT INTO `menu_role` VALUES ('457', '37', '1');
INSERT INTO `menu_role` VALUES ('458', '38', '1');
INSERT INTO `menu_role` VALUES ('459', '39', '1');
INSERT INTO `menu_role` VALUES ('460', '40', '1');
INSERT INTO `menu_role` VALUES ('461', '41', '1');
INSERT INTO `menu_role` VALUES ('462', '42', '1');
INSERT INTO `menu_role` VALUES ('463', '43', '1');
INSERT INTO `menu_role` VALUES ('464', '46', '1');
INSERT INTO `menu_role` VALUES ('465', '25', '1');
INSERT INTO `menu_role` VALUES ('466', '26', '1');
INSERT INTO `menu_role` VALUES ('467', '27', '1');
INSERT INTO `menu_role` VALUES ('468', '34', '1');
INSERT INTO `menu_role` VALUES ('469', '8', '1');
INSERT INTO `menu_role` VALUES ('470', '7', '2');
INSERT INTO `menu_role` VALUES ('471', '8', '2');
INSERT INTO `menu_role` VALUES ('472', '9', '2');
INSERT INTO `menu_role` VALUES ('473', '10', '2');
INSERT INTO `menu_role` VALUES ('474', '11', '2');
INSERT INTO `menu_role` VALUES ('475', '14', '2');
INSERT INTO `menu_role` VALUES ('476', '15', '2');
INSERT INTO `menu_role` VALUES ('477', '16', '2');
INSERT INTO `menu_role` VALUES ('478', '17', '2');
INSERT INTO `menu_role` VALUES ('479', '37', '2');
INSERT INTO `menu_role` VALUES ('480', '38', '2');
INSERT INTO `menu_role` VALUES ('481', '39', '2');
INSERT INTO `menu_role` VALUES ('482', '40', '2');
INSERT INTO `menu_role` VALUES ('483', '41', '2');
INSERT INTO `menu_role` VALUES ('484', '42', '2');
INSERT INTO `menu_role` VALUES ('485', '43', '2');
INSERT INTO `menu_role` VALUES ('486', '46', '2');
INSERT INTO `menu_role` VALUES ('487', '25', '2');
INSERT INTO `menu_role` VALUES ('488', '26', '2');
INSERT INTO `menu_role` VALUES ('489', '27', '2');
INSERT INTO `menu_role` VALUES ('490', '34', '2');
INSERT INTO `menu_role` VALUES ('491', '47', '4');

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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of paper_check
-- ----------------------------
INSERT INTO `paper_check` VALUES ('6', '27', '0', '3', '3', '1', null, '2020-05-17');
INSERT INTO `paper_check` VALUES ('7', '29', '0', '3', '3', '1', null, '2020-05-21');
INSERT INTO `paper_check` VALUES ('8', '30', '0', '3', '3', '0', null, '2020-05-21');

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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qa_question
-- ----------------------------
INSERT INTO `qa_question` VALUES ('4', '25', '找出所有的水仙花数，并输出。', '#include <stdio.h>	\nvoid main()\n{\n	int x,a,b,c;                                             \n	for(x=100;x<1000;x++)                       \n	{\n		a=x/100;                                 \n	b=x%100/10;                                 \n		c=x%10;                                       \n		if(x==a*a*a+b*b*b+c*c*c)                        \n			printf(\"%d\\n\",x);                        \n	}\n}', '', '3', '5', '2', '3', '6', '1', '2020-05-16 13:33:31');
INSERT INTO `qa_question` VALUES ('5', '23@25', '有一个分数数列  2/1 ，3/2，5/3，8/5，13/8，21/13……求出这个数列前20项之和。', '#include <stdio.h>                        \nvoid main()\n{\n	double f,f1=1,f2=1,n,s=0;              \n	int i;\n	for(i=3;i<=20;i++)                      \n	{\n		f=f1+f2;                           \n		n=f/f2;                           \n		s+=n;                              \n		f1=f2;\n		f2=f;		                       \n	}\n	printf(\"%lf\\n\",s);                       \n}', '', '3', '5', '3', '3', '6', '1', '2020-05-16 13:36:25');
INSERT INTO `qa_question` VALUES ('6', '32', '编写一个函数，对N个整型数排序。', 'void  sort(int a[],int n)                  \n{\n	int i,j,t;                               \n	for(i=0;i<n-1;i++)                       \n	{\n		for(j=0;j<n-i-1;j++)                  \n		{\n			if(a[j]>a[j+1])                   \n			{\n				t=a[j];\n				a[j]=a[j+1];\n				a[j+1]=t;\n			}\n		}\n	}\n}', '', '3', '7', '2', '3', '6', '1', '2020-05-16 13:37:40');
INSERT INTO `qa_question` VALUES ('7', '38', '写一个函数，实现两个字符串的比较，即自己编写一个strcpm函数，函数原型为：int strcmp(char * str1,char *str2);', 'int strcmp(char * str1,char *str2)\n{\n	int i=0;                                      \n	while (str1[i]!=\'\\0\'&&str2[i]!=\'\\0\')          \n	{\n		if(str1[i]!=str2[i])                    \n			break;\n		i++;                                       \n	}\n	return str1[i]-str2[i];                       \n}', '', '3', '9', '3', '3', '6', '1', '2020-05-16 13:39:13');
INSERT INTO `qa_question` VALUES ('8', '29', '打印出Fibonacci，数列的前20个数\n打开程序Cprong042.c，完成其中的fun()函数，使程序打印出Fibonacci，数列的前20个数。\n该数列{1，1，2，3，5，8，13，……}的第1，第2个数为1，从第3个数开始每个数等于\n前2个数之和。', '#include <stdio.h>\n#include <math.h>  \nvoid fun(int a[],int m)\n{\n /**/ \n	int i;\n        a[0] = 1;\n	a[1] = 1;\n	for(i=2; i<m; i++)\n	{\n		a[i] = a[i-1] + a[i-2];\n	}\n /**/\n}\n\nvoid main()\n{\n  int a[20],i;\n  fun(a,20);\n  for(i=0; i<20; i++)\n    printf(\"%d   \",a[i]);\n  printf(\"\\n\");\n  getch();\n}', '', '3', '6', '3', '3', '6', '1', '2020-05-16 17:00:37');
INSERT INTO `qa_question` VALUES ('10', '35@36@38', '将三个字符串  a,b,c从小到大排序后输出.\nCprog 022.c,完成其中函数fun 2{char a[],char b[],char c[]),实现:将三个字符串  a,b,c从小到大排序后输出.\n     注意:字符串比较函数为strcmp{char*,char*},\n          字符串复制函数为strcpy{char*,char*}.', '#include <string.h>\n#include <conio.h>\n#include <math.h>\n#include <stdio.h>\nvoid fun2(char a[],char b[],char c[])\n{\n/**/\n	char t[10];\n	if( strcmp(a,b) > 0 )\n	{\n		strcpy(t,a);\n		strcpy(a,b);\n		strcpy(b,t);\n	}\n	if( strcmp(a,c) > 0 )\n	{\n		strcpy(t,a);\n		strcpy(a,c);\n		strcpy(c,t);\n	}\n	if( strcmp(b,c) > 0 )\n	{\n		strcpy(t,c);\n		strcpy(c,b);\n		strcpy(b,t);\n	}\n/**/\n}\nvoid main()\n{ char str1[15]=\"Fuzhou\",str2[15]=\"Fujian\",str3[15]=\"China\";\n  clrscr();\n  fun2(str1,str2,str3);\n  printf(\"The ordered strings is : %s, %s, %s\\n\",str1,str2,str3);\n  getch();\n}', '', '3', '9', '4', '3', '6', '1', '2020-05-18 20:59:59');
INSERT INTO `qa_question` VALUES ('11', '30@33@36', '用指针和数组两种方法实现如下功能：将一个字符串按逆序存放。（18分）\n要求（1）主函数中完成输入和输出字符串。\n（2）逆序存放功能用子函数完成。', '(1)数组法\n#include <string.h>\n#include <stdio.h>\n#define N 20\nvoid inv(char str[],int n);\nvoid main()\n{char str[N];\n gets(str);\n inv(str,strlen(str));\n puts(str);\nvoid inv(char str[],int n)\n{int i,j,temp;\n for(i=0,j=n-1;i<=j;i++,j--)\n {temp=str[i];\n str[i]=str[j];\n str[j]=temp;}\n}\n2）指针法\n#include <string.h>\n#include <stdio.h>\n#define N 20\nvoid inv(char *str,int n);\nvoid main()\n{char str[N];\n gets(str);\n inv(str,strlen(str));\n puts(str);\n}\nvoid inv(char *str,int n)\n{char *i,*j,temp;\n for(i=str,j=str+n-1;i<=j;i++,j--)\n {temp=*i;\n *i=*j;\n *j=temp;}\n}', '', '1557', '7', '4', '3', '6', '1', '2020-05-18 21:35:48');
INSERT INTO `qa_question` VALUES ('12', '31', '编写程序输出下列形式的杨辉三角形的前10行。\n    1\n    1  1\n    1  2  1\n    1  3  3  1\n    1  4  6  4  1\n     ……', 'main( )\n{\n   int a[10][10],i,j;\n   for(i=0;i<10;i++)\n    { for(j=0;j<=i;j++)\n       { if((j= =0)||(i= =j))   a[i][j]=1;\n        else   a[i][j]=a[i-1][j-1]+a[i-1][j];\n          printf(\"%d\",a[i][j]);\n       }\n       printf(\"\\n\");\n     }\n }', '', '1557', '6', '3', '3', '6', '1', '2020-05-18 21:53:55');
INSERT INTO `qa_question` VALUES ('13', '25@29', '输入一行字符，分别统计求出其中英文字母、空格、数字和其他字符的个数并输出结果。', '#include<stdio.h>\nmain()\n{\n    int  i;\n    float sum,sign;\n    i=1;\n    sum=0;\n    sign=1.0;\n    while((1.0/i)>=1e-4)\n	{\n        sum += sign / i ;\n        i++;\n        sign = - sign;\n	}\n    printf(\"sum=%.4f\",sum);\n｝', '', '1557', '6', '2', '3', '6', '1', '2020-05-18 21:58:35');
INSERT INTO `qa_question` VALUES ('14', '29', '任意从键盘输入10个整数，按从小到大的顺序排序，并输出结果。', '#include<stdio.h>\nmain()\n{ \n	int num[10];\n    int i,j,k;\n    int temp; \n    printf(\"Please enter 10 numbers :\\n\");\n    for(i=0;i<10;i++)\n        scanf(\"%d\",&num[i]);\n    for (i=0;i<9;i++)\n	{\n        k= i ;\n        for (j=i+1;j<10;j++)\n		{\n			if (num[k]>num[j])\n                  k=j;\n            if(k!=i)\n			{\n				temp=num[i];\n				num[i]=num[k];\n				num[k]=temp;\n			}\n		}\n        printf(\"After sorted :\\n\");\n        for (i=0;i<10;i++)\n            printf (\"%5d\",num[i]);\n	}\n}', '', '1557', '6', '3', '3', '6', '1', '2020-05-18 21:59:26');
INSERT INTO `qa_question` VALUES ('15', '29', '计算1-1/2+1/3-1/4+…+1/99-1/100+…,直到最后一项的绝对值小于10-4为止。', '#include<stdio.h>\nmain()\n{\n    int  i;\n    float sum,sign;\n    i=1;\n    sum=0;\n    sign=1.0;\n    while((1.0/i)>=1e-4)\n	{\n        sum += sign / i ;\n        i++;\n        sign = - sign;\n	}\n    printf(\"sum=%.4f\",sum);\n｝', '', '1557', '6', '2', '3', '6', '1', '2020-05-18 22:00:05');

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
) ENGINE=InnoDB AUTO_INCREMENT=328 DEFAULT CHARSET=utf8;

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
INSERT INTO `question_check` VALUES ('176', '60', '3', '3', '1', 'tf', '', '2020-05-16 20:36:46');
INSERT INTO `question_check` VALUES ('177', '61', '3', '3', '1', 'tf', '', '2020-05-16 20:36:43');
INSERT INTO `question_check` VALUES ('178', '62', '3', '3', '1', 'tf', '', '2020-05-16 20:36:41');
INSERT INTO `question_check` VALUES ('179', '63', '3', '3', '1', 'tf', '', '2020-05-16 20:36:37');
INSERT INTO `question_check` VALUES ('180', '64', '3', '3', '1', 'tf', '', '2020-05-16 20:36:39');
INSERT INTO `question_check` VALUES ('181', '65', '3', '3', '1', 'tf', '', '2020-05-16 20:36:34');
INSERT INTO `question_check` VALUES ('182', '66', '3', '3', '1', 'tf', '', '2020-05-16 20:36:29');
INSERT INTO `question_check` VALUES ('183', '67', '3', '3', '1', 'tf', '', '2020-05-16 20:36:27');
INSERT INTO `question_check` VALUES ('184', '52', '3', '3', '1', 'sc', '', '2020-05-18 11:57:10');
INSERT INTO `question_check` VALUES ('185', '53', '3', '3', '1', 'sc', '', '2020-05-18 11:57:12');
INSERT INTO `question_check` VALUES ('186', '54', '3', '3', '1', 'sc', '', '2020-05-18 11:57:20');
INSERT INTO `question_check` VALUES ('187', '55', '3', '3', '1', 'sc', '', '2020-05-18 11:57:22');
INSERT INTO `question_check` VALUES ('188', '36', '3', '3', '1', 'mc', '', '2020-05-18 11:57:24');
INSERT INTO `question_check` VALUES ('189', '37', '3', '3', '1', 'mc', '', '2020-05-18 11:57:26');
INSERT INTO `question_check` VALUES ('190', '38', '3', '3', '1', 'mc', '', '2020-05-18 11:57:28');
INSERT INTO `question_check` VALUES ('191', '68', '3', '3', '0', 'tf', '', '2020-05-18 16:36:13');
INSERT INTO `question_check` VALUES ('192', '69', '3', '3', '1', 'tf', '', '2020-05-18 11:57:32');
INSERT INTO `question_check` VALUES ('193', '70', '3', '3', '1', 'tf', '', '2020-05-18 11:57:33');
INSERT INTO `question_check` VALUES ('194', '23', '3', '3', '1', 'fb', '', '2020-05-18 11:57:35');
INSERT INTO `question_check` VALUES ('195', '24', '3', '3', '1', 'fb', '', '2020-05-18 11:57:37');
INSERT INTO `question_check` VALUES ('196', '9', '3', '3', '1', 'qa', '', '2020-05-18 11:57:41');
INSERT INTO `question_check` VALUES ('198', '57', '1557', '3', '1', 'sc', '', '2020-05-18 16:48:30');
INSERT INTO `question_check` VALUES ('199', '58', '3', '3', '1', 'sc', '', '2020-05-18 17:27:18');
INSERT INTO `question_check` VALUES ('200', '59', '3', '3', '1', 'sc', '', '2020-05-18 17:27:20');
INSERT INTO `question_check` VALUES ('201', '60', '3', '3', '1', 'sc', '', '2020-05-18 17:27:23');
INSERT INTO `question_check` VALUES ('202', '61', '3', '3', '1', 'sc', '', '2020-05-18 17:27:25');
INSERT INTO `question_check` VALUES ('203', '62', '3', '3', '1', 'sc', '', '2020-05-18 17:27:27');
INSERT INTO `question_check` VALUES ('204', '63', '3', '3', '1', 'sc', '', '2020-05-18 17:27:28');
INSERT INTO `question_check` VALUES ('205', '64', '3', '3', '1', 'sc', '', '2020-05-18 17:27:30');
INSERT INTO `question_check` VALUES ('206', '65', '3', '3', '1', 'sc', '', '2020-05-18 17:27:33');
INSERT INTO `question_check` VALUES ('207', '66', '3', '3', '1', 'sc', '', '2020-05-18 17:27:34');
INSERT INTO `question_check` VALUES ('208', '67', '3', '3', '1', 'sc', '', '2020-05-18 17:27:36');
INSERT INTO `question_check` VALUES ('209', '68', '1557', '3', '1', 'sc', '', '2020-05-18 19:34:38');
INSERT INTO `question_check` VALUES ('210', '69', '1557', '3', '1', 'sc', '', '2020-05-18 19:34:40');
INSERT INTO `question_check` VALUES ('211', '70', '1557', '3', '1', 'sc', '', '2020-05-18 19:34:46');
INSERT INTO `question_check` VALUES ('212', '71', '1557', '3', '1', 'sc', '', '2020-05-18 19:34:43');
INSERT INTO `question_check` VALUES ('213', '72', '1557', '3', '1', 'sc', '', '2020-05-18 19:34:48');
INSERT INTO `question_check` VALUES ('214', '73', '1557', '3', '1', 'sc', '', '2020-05-18 19:34:50');
INSERT INTO `question_check` VALUES ('215', '74', '1557', '3', '1', 'sc', '', '2020-05-18 19:34:52');
INSERT INTO `question_check` VALUES ('216', '75', '1557', '3', '1', 'sc', '', '2020-05-18 19:34:54');
INSERT INTO `question_check` VALUES ('217', '76', '1557', '3', '1', 'sc', '', '2020-05-18 19:34:58');
INSERT INTO `question_check` VALUES ('218', '77', '1557', '3', '1', 'sc', '', '2020-05-18 19:34:14');
INSERT INTO `question_check` VALUES ('219', '78', '1557', '3', '1', 'sc', '', '2020-05-18 19:34:17');
INSERT INTO `question_check` VALUES ('220', '79', '1557', '3', '1', 'sc', '', '2020-05-18 19:34:19');
INSERT INTO `question_check` VALUES ('221', '80', '1557', '3', '1', 'sc', '', '2020-05-18 19:34:21');
INSERT INTO `question_check` VALUES ('222', '81', '1557', '3', '1', 'sc', '', '2020-05-18 19:34:23');
INSERT INTO `question_check` VALUES ('223', '82', '1557', '3', '1', 'sc', '', '2020-05-18 19:34:25');
INSERT INTO `question_check` VALUES ('224', '83', '1557', '3', '1', 'sc', '', '2020-05-18 19:34:27');
INSERT INTO `question_check` VALUES ('225', '84', '1557', '3', '1', 'sc', '', '2020-05-18 19:34:30');
INSERT INTO `question_check` VALUES ('226', '85', '1557', '3', '1', 'sc', '', '2020-05-18 19:34:31');
INSERT INTO `question_check` VALUES ('227', '86', '1557', '3', '1', 'sc', '', '2020-05-18 19:34:33');
INSERT INTO `question_check` VALUES ('228', '87', '1557', '3', '1', 'sc', '', '2020-05-18 19:33:51');
INSERT INTO `question_check` VALUES ('229', '88', '1557', '3', '1', 'sc', '', '2020-05-18 19:33:53');
INSERT INTO `question_check` VALUES ('230', '89', '1557', '3', '1', 'sc', '', '2020-05-18 19:33:56');
INSERT INTO `question_check` VALUES ('231', '90', '1557', '3', '1', 'sc', '', '2020-05-18 19:33:58');
INSERT INTO `question_check` VALUES ('232', '91', '1557', '3', '1', 'sc', '', '2020-05-18 19:34:01');
INSERT INTO `question_check` VALUES ('233', '92', '1557', '3', '1', 'sc', '', '2020-05-18 19:34:03');
INSERT INTO `question_check` VALUES ('234', '93', '1557', '3', '1', 'sc', '', '2020-05-18 19:34:05');
INSERT INTO `question_check` VALUES ('235', '94', '1557', '3', '1', 'sc', '', '2020-05-18 19:34:07');
INSERT INTO `question_check` VALUES ('236', '95', '1557', '3', '1', 'sc', '', '2020-05-18 19:34:09');
INSERT INTO `question_check` VALUES ('237', '96', '1557', '3', '1', 'sc', '', '2020-05-18 19:34:11');
INSERT INTO `question_check` VALUES ('238', '97', '1557', '3', '1', 'sc', '', '2020-05-18 19:33:30');
INSERT INTO `question_check` VALUES ('239', '98', '1557', '3', '1', 'sc', '', '2020-05-18 19:33:33');
INSERT INTO `question_check` VALUES ('240', '99', '1557', '3', '1', 'sc', '', '2020-05-18 19:33:35');
INSERT INTO `question_check` VALUES ('241', '100', '1557', '3', '1', 'sc', '', '2020-05-18 19:33:37');
INSERT INTO `question_check` VALUES ('242', '101', '1557', '3', '1', 'sc', '', '2020-05-18 19:33:39');
INSERT INTO `question_check` VALUES ('243', '102', '1557', '3', '1', 'sc', '', '2020-05-18 19:33:41');
INSERT INTO `question_check` VALUES ('244', '103', '1557', '3', '1', 'sc', '', '2020-05-18 19:33:43');
INSERT INTO `question_check` VALUES ('245', '104', '1557', '3', '1', 'sc', '', '2020-05-18 19:33:45');
INSERT INTO `question_check` VALUES ('246', '105', '1557', '3', '1', 'sc', '', '2020-05-18 19:33:47');
INSERT INTO `question_check` VALUES ('247', '71', '3', '3', '1', 'tf', '', '2020-05-18 21:28:07');
INSERT INTO `question_check` VALUES ('248', '72', '3', '3', '1', 'tf', '', '2020-05-18 21:28:09');
INSERT INTO `question_check` VALUES ('249', '73', '3', '3', '1', 'tf', '', '2020-05-18 21:28:10');
INSERT INTO `question_check` VALUES ('250', '74', '3', '3', '1', 'tf', '', '2020-05-18 21:28:12');
INSERT INTO `question_check` VALUES ('251', '75', '3', '3', '1', 'tf', '', '2020-05-18 21:28:13');
INSERT INTO `question_check` VALUES ('252', '76', '3', '3', '1', 'tf', '', '2020-05-18 21:28:15');
INSERT INTO `question_check` VALUES ('253', '77', '3', '3', '1', 'tf', '', '2020-05-18 21:28:19');
INSERT INTO `question_check` VALUES ('254', '78', '3', '3', '1', 'tf', '', '2020-05-18 21:28:20');
INSERT INTO `question_check` VALUES ('255', '79', '3', '3', '1', 'tf', '', '2020-05-18 21:28:24');
INSERT INTO `question_check` VALUES ('256', '80', '3', '3', '1', 'tf', '', '2020-05-18 21:28:26');
INSERT INTO `question_check` VALUES ('257', '81', '3', '3', '1', 'tf', '', '2020-05-18 21:28:31');
INSERT INTO `question_check` VALUES ('258', '82', '3', '3', '1', 'tf', '', '2020-05-18 21:28:33');
INSERT INTO `question_check` VALUES ('259', '83', '3', '3', '1', 'tf', '', '2020-05-18 21:28:36');
INSERT INTO `question_check` VALUES ('260', '84', '3', '3', '1', 'tf', '', '2020-05-18 21:28:35');
INSERT INTO `question_check` VALUES ('261', '85', '3', '3', '1', 'tf', '', '2020-05-18 21:28:38');
INSERT INTO `question_check` VALUES ('262', '86', '3', '3', '1', 'tf', '', '2020-05-18 21:28:40');
INSERT INTO `question_check` VALUES ('263', '87', '3', '3', '1', 'tf', '', '2020-05-18 21:28:41');
INSERT INTO `question_check` VALUES ('264', '88', '3', '3', '1', 'tf', '', '2020-05-18 21:28:42');
INSERT INTO `question_check` VALUES ('265', '89', '3', '3', '1', 'tf', '', '2020-05-18 21:28:44');
INSERT INTO `question_check` VALUES ('266', '90', '3', '3', '1', 'tf', '', '2020-05-18 21:28:46');
INSERT INTO `question_check` VALUES ('267', '91', '3', '3', '1', 'tf', '', '2020-05-18 21:28:49');
INSERT INTO `question_check` VALUES ('268', '92', '3', '3', '1', 'tf', '', '2020-05-18 21:28:51');
INSERT INTO `question_check` VALUES ('269', '93', '3', '3', '1', 'tf', '', '2020-05-18 21:28:53');
INSERT INTO `question_check` VALUES ('270', '94', '3', '3', '1', 'tf', '', '2020-05-18 21:28:54');
INSERT INTO `question_check` VALUES ('271', '95', '3', '3', '1', 'tf', '', '2020-05-18 21:28:56');
INSERT INTO `question_check` VALUES ('272', '96', '3', '3', '1', 'tf', '', '2020-05-18 21:28:57');
INSERT INTO `question_check` VALUES ('273', '97', '3', '3', '1', 'tf', '', '2020-05-18 21:28:59');
INSERT INTO `question_check` VALUES ('274', '98', '3', '3', '1', 'tf', '', '2020-05-18 21:29:01');
INSERT INTO `question_check` VALUES ('275', '99', '3', '3', '1', 'tf', '', '2020-05-18 21:29:03');
INSERT INTO `question_check` VALUES ('276', '100', '3', '3', '1', 'tf', '', '2020-05-18 21:29:04');
INSERT INTO `question_check` VALUES ('277', '101', '3', '3', '1', 'tf', '', '2020-05-18 21:29:08');
INSERT INTO `question_check` VALUES ('278', '102', '3', '3', '1', 'tf', '', '2020-05-18 21:29:10');
INSERT INTO `question_check` VALUES ('279', '103', '3', '3', '1', 'tf', '', '2020-05-18 21:29:12');
INSERT INTO `question_check` VALUES ('280', '104', '3', '3', '1', 'tf', '', '2020-05-18 21:29:14');
INSERT INTO `question_check` VALUES ('281', '105', '3', '3', '1', 'tf', '', '2020-05-18 21:29:15');
INSERT INTO `question_check` VALUES ('282', '106', '3', '3', '1', 'tf', '', '2020-05-18 21:29:17');
INSERT INTO `question_check` VALUES ('283', '10', '3', '3', '1', 'qa', '', '2020-05-18 21:29:20');
INSERT INTO `question_check` VALUES ('284', '106', '3', '3', '1', 'sc', '答案在题干上啥', '2020-05-18 21:29:22');
INSERT INTO `question_check` VALUES ('285', '107', '1557', '3', '1', 'sc', '', '2020-05-18 21:30:05');
INSERT INTO `question_check` VALUES ('286', '108', '1557', '3', '1', 'sc', '', '2020-05-18 21:30:03');
INSERT INTO `question_check` VALUES ('287', '109', '1557', '3', '1', 'sc', '题干不对', '2020-05-18 21:30:01');
INSERT INTO `question_check` VALUES ('288', '110', '1557', '3', '1', 'sc', '', '2020-05-18 21:29:57');
INSERT INTO `question_check` VALUES ('289', '111', '1557', '3', '1', 'sc', '', '2020-05-18 21:29:55');
INSERT INTO `question_check` VALUES ('290', '112', '1557', '3', '1', 'sc', '', '2020-05-18 21:29:53');
INSERT INTO `question_check` VALUES ('291', '113', '1557', '3', '1', 'sc', '', '2020-05-18 21:29:51');
INSERT INTO `question_check` VALUES ('292', '114', '1557', '3', '1', 'sc', '', '2020-05-18 21:29:49');
INSERT INTO `question_check` VALUES ('293', '115', '1557', '3', '1', 'sc', '', '2020-05-18 21:29:47');
INSERT INTO `question_check` VALUES ('294', '116', '1557', '3', '1', 'sc', '', '2020-05-18 21:29:46');
INSERT INTO `question_check` VALUES ('295', '117', '1557', '3', '1', 'sc', '', '2020-05-18 21:29:44');
INSERT INTO `question_check` VALUES ('296', '118', '1557', '3', '1', 'sc', '', '2020-05-18 21:29:43');
INSERT INTO `question_check` VALUES ('297', '119', '1557', '3', '1', 'sc', '', '2020-05-18 21:29:41');
INSERT INTO `question_check` VALUES ('298', '120', '1557', '3', '1', 'sc', '', '2020-05-18 21:29:37');
INSERT INTO `question_check` VALUES ('299', '121', '1557', '3', '1', 'sc', '', '2020-05-18 21:29:35');
INSERT INTO `question_check` VALUES ('300', '122', '1557', '3', '1', 'sc', '', '2020-05-18 21:29:34');
INSERT INTO `question_check` VALUES ('301', '123', '1557', '3', '1', 'sc', '', '2020-05-18 21:29:32');
INSERT INTO `question_check` VALUES ('302', '124', '1557', '3', '1', 'sc', '', '2020-05-18 21:29:30');
INSERT INTO `question_check` VALUES ('303', '125', '1557', '3', '1', 'sc', '', '2020-05-18 21:29:29');
INSERT INTO `question_check` VALUES ('304', '11', '1557', '3', '1', 'qa', '', '2020-05-18 22:10:24');
INSERT INTO `question_check` VALUES ('305', '25', '1557', '3', '1', 'fb', '', '2020-05-18 22:10:28');
INSERT INTO `question_check` VALUES ('306', '26', '1557', '3', '1', 'fb', '', '2020-05-18 22:10:29');
INSERT INTO `question_check` VALUES ('307', '27', '1557', '3', '1', 'fb', '', '2020-05-18 22:10:31');
INSERT INTO `question_check` VALUES ('308', '28', '1557', '3', '1', 'fb', '', '2020-05-18 22:10:34');
INSERT INTO `question_check` VALUES ('309', '29', '1557', '3', '1', 'fb', '', '2020-05-18 22:10:36');
INSERT INTO `question_check` VALUES ('310', '30', '1557', '3', '1', 'fb', '', '2020-05-18 22:10:38');
INSERT INTO `question_check` VALUES ('311', '12', '1557', '3', '1', 'qa', '', '2020-05-18 22:10:40');
INSERT INTO `question_check` VALUES ('312', '13', '1557', '3', '1', 'qa', '', '2020-05-18 22:10:41');
INSERT INTO `question_check` VALUES ('313', '14', '1557', '3', '1', 'qa', '', '2020-05-18 22:10:44');
INSERT INTO `question_check` VALUES ('314', '15', '1557', '3', '1', 'qa', '', '2020-05-18 22:10:46');
INSERT INTO `question_check` VALUES ('315', '31', '1557', '3', '1', 'fb', '', '2020-05-18 22:10:48');
INSERT INTO `question_check` VALUES ('316', '32', '1557', '3', '1', 'fb', '', '2020-05-18 22:10:50');
INSERT INTO `question_check` VALUES ('317', '33', '1557', '3', '1', 'fb', '', '2020-05-18 22:10:51');
INSERT INTO `question_check` VALUES ('318', '34', '1557', '3', '1', 'fb', '', '2020-05-18 22:10:54');
INSERT INTO `question_check` VALUES ('319', '35', '1557', '3', '1', 'fb', '', '2020-05-18 22:10:58');
INSERT INTO `question_check` VALUES ('320', '36', '1557', '3', '1', 'fb', '', '2020-05-18 22:10:56');
INSERT INTO `question_check` VALUES ('321', '37', '1557', '3', '1', 'fb', '', '2020-05-18 22:11:00');
INSERT INTO `question_check` VALUES ('322', '38', '1557', '3', '1', 'fb', '', '2020-05-18 22:11:02');
INSERT INTO `question_check` VALUES ('323', '39', '1557', '3', '1', 'fb', '', '2020-05-18 22:11:04');
INSERT INTO `question_check` VALUES ('324', '40', '1557', '3', '1', 'fb', '', '2020-05-18 22:11:06');
INSERT INTO `question_check` VALUES ('325', '41', '1557', '3', '1', 'fb', '', '2020-05-18 22:11:08');
INSERT INTO `question_check` VALUES ('326', '42', '1557', '3', '1', 'fb', '', '2020-05-18 22:11:09');
INSERT INTO `question_check` VALUES ('327', '43', '1557', '3', '1', 'fb', '', '2020-05-18 22:11:11');

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
) ENGINE=InnoDB AUTO_INCREMENT=4718 DEFAULT CHARSET=utf8;

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
INSERT INTO `question_grade` VALUES ('1818', null, '586', '单选题', '1', '1');
INSERT INTO `question_grade` VALUES ('1819', null, '587', '单选题', '2', '1');
INSERT INTO `question_grade` VALUES ('1820', null, '588', '单选题', '3', '1');
INSERT INTO `question_grade` VALUES ('1821', null, '589', '单选题', '4', '1');
INSERT INTO `question_grade` VALUES ('1822', null, '590', '单选题', '5', '1');
INSERT INTO `question_grade` VALUES ('1823', null, '591', '单选题', '6', '1');
INSERT INTO `question_grade` VALUES ('1824', null, '592', '单选题', '7', '1');
INSERT INTO `question_grade` VALUES ('1825', null, '593', '单选题', '8', '1');
INSERT INTO `question_grade` VALUES ('1826', null, '594', '单选题', '9', '1');
INSERT INTO `question_grade` VALUES ('1827', null, '595', '单选题', '10', '0');
INSERT INTO `question_grade` VALUES ('1828', null, '596', '多选题', '1', '2');
INSERT INTO `question_grade` VALUES ('1829', null, '597', '多选题', '2', '2');
INSERT INTO `question_grade` VALUES ('1830', null, '598', '多选题', '3', '2');
INSERT INTO `question_grade` VALUES ('1831', null, '599', '多选题', '4', '2');
INSERT INTO `question_grade` VALUES ('1832', null, '600', '多选题', '5', '2');
INSERT INTO `question_grade` VALUES ('1833', null, '601', '填空题', '1', '5');
INSERT INTO `question_grade` VALUES ('1834', null, '602', '填空题', '2', '5');
INSERT INTO `question_grade` VALUES ('1835', null, '603', '填空题', '3', '5');
INSERT INTO `question_grade` VALUES ('1836', null, '604', '填空题', '4', '5');
INSERT INTO `question_grade` VALUES ('1837', null, '605', '编程题', '1', '10');
INSERT INTO `question_grade` VALUES ('1838', null, '606', '编程题', '2', '5');
INSERT INTO `question_grade` VALUES ('1839', null, '607', '编程题', '3', '10');
INSERT INTO `question_grade` VALUES ('1840', null, '608', '编程题', '4', '6');
INSERT INTO `question_grade` VALUES ('1841', null, '609', '编程题', '5', '4');
INSERT INTO `question_grade` VALUES ('1842', null, '610', '编程题', '6', '0');
INSERT INTO `question_grade` VALUES ('1843', '83', '586', '单选题', '1', '1');
INSERT INTO `question_grade` VALUES ('1844', '83', '587', '单选题', '2', '1');
INSERT INTO `question_grade` VALUES ('1845', '83', '588', '单选题', '3', '1');
INSERT INTO `question_grade` VALUES ('1846', '83', '589', '单选题', '4', '1');
INSERT INTO `question_grade` VALUES ('1847', '83', '590', '单选题', '5', '1');
INSERT INTO `question_grade` VALUES ('1848', '83', '591', '单选题', '6', '1');
INSERT INTO `question_grade` VALUES ('1849', '83', '592', '单选题', '7', '0');
INSERT INTO `question_grade` VALUES ('1850', '83', '593', '单选题', '8', '0');
INSERT INTO `question_grade` VALUES ('1851', '83', '594', '单选题', '9', '0');
INSERT INTO `question_grade` VALUES ('1852', '83', '595', '单选题', '10', '0');
INSERT INTO `question_grade` VALUES ('1853', '83', '596', '多选题', '1', '2');
INSERT INTO `question_grade` VALUES ('1854', '83', '597', '多选题', '2', '2');
INSERT INTO `question_grade` VALUES ('1855', '83', '598', '多选题', '3', '2');
INSERT INTO `question_grade` VALUES ('1856', '83', '599', '多选题', '4', '2');
INSERT INTO `question_grade` VALUES ('1857', '83', '600', '多选题', '5', '2');
INSERT INTO `question_grade` VALUES ('1858', '83', '601', '填空题', '1', '5');
INSERT INTO `question_grade` VALUES ('1859', '83', '602', '填空题', '2', '5');
INSERT INTO `question_grade` VALUES ('1860', '83', '603', '填空题', '3', '5');
INSERT INTO `question_grade` VALUES ('1861', '83', '604', '填空题', '4', '5');
INSERT INTO `question_grade` VALUES ('1862', '83', '605', '编程题', '1', '10');
INSERT INTO `question_grade` VALUES ('1863', '83', '606', '编程题', '2', '10');
INSERT INTO `question_grade` VALUES ('1864', '83', '607', '编程题', '3', '10');
INSERT INTO `question_grade` VALUES ('1865', '83', '608', '编程题', '4', '10');
INSERT INTO `question_grade` VALUES ('1866', '83', '609', '编程题', '5', '10');
INSERT INTO `question_grade` VALUES ('1867', '83', '610', '编程题', '6', '0');
INSERT INTO `question_grade` VALUES ('1868', '84', '586', '单选题', '1', '1');
INSERT INTO `question_grade` VALUES ('1869', '84', '587', '单选题', '2', '1');
INSERT INTO `question_grade` VALUES ('1870', '84', '588', '单选题', '3', '1');
INSERT INTO `question_grade` VALUES ('1871', '84', '589', '单选题', '4', '1');
INSERT INTO `question_grade` VALUES ('1872', '84', '590', '单选题', '5', '1');
INSERT INTO `question_grade` VALUES ('1873', '84', '591', '单选题', '6', '1');
INSERT INTO `question_grade` VALUES ('1874', '84', '592', '单选题', '7', '1');
INSERT INTO `question_grade` VALUES ('1875', '84', '593', '单选题', '8', '0');
INSERT INTO `question_grade` VALUES ('1876', '84', '594', '单选题', '9', '0');
INSERT INTO `question_grade` VALUES ('1877', '84', '595', '单选题', '10', '0');
INSERT INTO `question_grade` VALUES ('1878', '84', '596', '多选题', '1', '2');
INSERT INTO `question_grade` VALUES ('1879', '84', '597', '多选题', '2', '2');
INSERT INTO `question_grade` VALUES ('1880', '84', '598', '多选题', '3', '2');
INSERT INTO `question_grade` VALUES ('1881', '84', '599', '多选题', '4', '2');
INSERT INTO `question_grade` VALUES ('1882', '84', '600', '多选题', '5', '0');
INSERT INTO `question_grade` VALUES ('1883', '84', '601', '填空题', '1', '5');
INSERT INTO `question_grade` VALUES ('1884', '84', '602', '填空题', '2', '5');
INSERT INTO `question_grade` VALUES ('1885', '84', '603', '填空题', '3', '3');
INSERT INTO `question_grade` VALUES ('1886', '84', '604', '填空题', '4', '2');
INSERT INTO `question_grade` VALUES ('1887', '84', '605', '编程题', '1', '0');
INSERT INTO `question_grade` VALUES ('1888', '84', '606', '编程题', '2', '2');
INSERT INTO `question_grade` VALUES ('1889', '84', '607', '编程题', '3', '10');
INSERT INTO `question_grade` VALUES ('1890', '84', '608', '编程题', '4', '10');
INSERT INTO `question_grade` VALUES ('1891', '84', '609', '编程题', '5', '10');
INSERT INTO `question_grade` VALUES ('1892', '84', '610', '编程题', '6', '10');
INSERT INTO `question_grade` VALUES ('1893', '85', '586', '单选题', '1', '1');
INSERT INTO `question_grade` VALUES ('1894', '85', '587', '单选题', '2', '0');
INSERT INTO `question_grade` VALUES ('1895', '85', '588', '单选题', '3', '1');
INSERT INTO `question_grade` VALUES ('1896', '85', '589', '单选题', '4', '0');
INSERT INTO `question_grade` VALUES ('1897', '85', '590', '单选题', '5', '1');
INSERT INTO `question_grade` VALUES ('1898', '85', '591', '单选题', '6', '0');
INSERT INTO `question_grade` VALUES ('1899', '85', '592', '单选题', '7', '1');
INSERT INTO `question_grade` VALUES ('1900', '85', '593', '单选题', '8', '0');
INSERT INTO `question_grade` VALUES ('1901', '85', '594', '单选题', '9', '1');
INSERT INTO `question_grade` VALUES ('1902', '85', '595', '单选题', '10', '0');
INSERT INTO `question_grade` VALUES ('1903', '85', '596', '多选题', '1', '0');
INSERT INTO `question_grade` VALUES ('1904', '85', '597', '多选题', '2', '0');
INSERT INTO `question_grade` VALUES ('1905', '85', '598', '多选题', '3', '0');
INSERT INTO `question_grade` VALUES ('1906', '85', '599', '多选题', '4', '0');
INSERT INTO `question_grade` VALUES ('1907', '85', '600', '多选题', '5', '0');
INSERT INTO `question_grade` VALUES ('1908', '85', '601', '填空题', '1', '5');
INSERT INTO `question_grade` VALUES ('1909', '85', '602', '填空题', '2', '0');
INSERT INTO `question_grade` VALUES ('1910', '85', '603', '填空题', '3', '5');
INSERT INTO `question_grade` VALUES ('1911', '85', '604', '填空题', '4', '0');
INSERT INTO `question_grade` VALUES ('1912', '85', '605', '编程题', '1', '0');
INSERT INTO `question_grade` VALUES ('1913', '85', '606', '编程题', '2', '0');
INSERT INTO `question_grade` VALUES ('1914', '85', '607', '编程题', '3', '6');
INSERT INTO `question_grade` VALUES ('1915', '85', '608', '编程题', '4', '10');
INSERT INTO `question_grade` VALUES ('1916', '85', '609', '编程题', '5', '10');
INSERT INTO `question_grade` VALUES ('1917', '85', '610', '编程题', '6', '10');
INSERT INTO `question_grade` VALUES ('1943', '87', '586', '单选题', '1', '1');
INSERT INTO `question_grade` VALUES ('1944', '87', '587', '单选题', '2', '0');
INSERT INTO `question_grade` VALUES ('1945', '87', '588', '单选题', '3', '1');
INSERT INTO `question_grade` VALUES ('1946', '87', '589', '单选题', '4', '1');
INSERT INTO `question_grade` VALUES ('1947', '87', '590', '单选题', '5', '0');
INSERT INTO `question_grade` VALUES ('1948', '87', '591', '单选题', '6', '1');
INSERT INTO `question_grade` VALUES ('1949', '87', '592', '单选题', '7', '0');
INSERT INTO `question_grade` VALUES ('1950', '87', '593', '单选题', '8', '1');
INSERT INTO `question_grade` VALUES ('1951', '87', '594', '单选题', '9', '1');
INSERT INTO `question_grade` VALUES ('1952', '87', '595', '单选题', '10', '1');
INSERT INTO `question_grade` VALUES ('1953', '87', '596', '多选题', '1', '0');
INSERT INTO `question_grade` VALUES ('1954', '87', '597', '多选题', '2', '2');
INSERT INTO `question_grade` VALUES ('1955', '87', '598', '多选题', '3', '0');
INSERT INTO `question_grade` VALUES ('1956', '87', '599', '多选题', '4', '2');
INSERT INTO `question_grade` VALUES ('1957', '87', '600', '多选题', '5', '2');
INSERT INTO `question_grade` VALUES ('1958', '87', '601', '填空题', '1', '5');
INSERT INTO `question_grade` VALUES ('1959', '87', '602', '填空题', '2', '5');
INSERT INTO `question_grade` VALUES ('1960', '87', '603', '填空题', '3', '0');
INSERT INTO `question_grade` VALUES ('1961', '87', '604', '填空题', '4', '5');
INSERT INTO `question_grade` VALUES ('1962', '87', '605', '编程题', '1', '5');
INSERT INTO `question_grade` VALUES ('1963', '87', '606', '编程题', '2', '0');
INSERT INTO `question_grade` VALUES ('1964', '87', '607', '编程题', '3', '0');
INSERT INTO `question_grade` VALUES ('1965', '87', '608', '编程题', '4', '10');
INSERT INTO `question_grade` VALUES ('1966', '87', '609', '编程题', '5', '10');
INSERT INTO `question_grade` VALUES ('1967', '87', '610', '编程题', '6', '10');
INSERT INTO `question_grade` VALUES ('1968', '88', '586', '单选题', '1', '1');
INSERT INTO `question_grade` VALUES ('1969', '88', '587', '单选题', '2', '1');
INSERT INTO `question_grade` VALUES ('1970', '88', '588', '单选题', '3', '1');
INSERT INTO `question_grade` VALUES ('1971', '88', '589', '单选题', '4', '1');
INSERT INTO `question_grade` VALUES ('1972', '88', '590', '单选题', '5', '1');
INSERT INTO `question_grade` VALUES ('1973', '88', '591', '单选题', '6', '1');
INSERT INTO `question_grade` VALUES ('1974', '88', '592', '单选题', '7', '1');
INSERT INTO `question_grade` VALUES ('1975', '88', '593', '单选题', '8', '1');
INSERT INTO `question_grade` VALUES ('1976', '88', '594', '单选题', '9', '1');
INSERT INTO `question_grade` VALUES ('1977', '88', '595', '单选题', '10', '1');
INSERT INTO `question_grade` VALUES ('1978', '88', '596', '多选题', '1', '2');
INSERT INTO `question_grade` VALUES ('1979', '88', '597', '多选题', '2', '2');
INSERT INTO `question_grade` VALUES ('1980', '88', '598', '多选题', '3', '2');
INSERT INTO `question_grade` VALUES ('1981', '88', '599', '多选题', '4', '0');
INSERT INTO `question_grade` VALUES ('1982', '88', '600', '多选题', '5', '0');
INSERT INTO `question_grade` VALUES ('1983', '88', '601', '填空题', '1', '0');
INSERT INTO `question_grade` VALUES ('1984', '88', '602', '填空题', '2', '5');
INSERT INTO `question_grade` VALUES ('1985', '88', '603', '填空题', '3', '5');
INSERT INTO `question_grade` VALUES ('1986', '88', '604', '填空题', '4', '5');
INSERT INTO `question_grade` VALUES ('1987', '88', '605', '编程题', '1', '5');
INSERT INTO `question_grade` VALUES ('1988', '88', '606', '编程题', '2', '10');
INSERT INTO `question_grade` VALUES ('1989', '88', '607', '编程题', '3', '10');
INSERT INTO `question_grade` VALUES ('1990', '88', '608', '编程题', '4', '5');
INSERT INTO `question_grade` VALUES ('1991', '88', '609', '编程题', '5', '5');
INSERT INTO `question_grade` VALUES ('1992', '88', '610', '编程题', '6', '0');
INSERT INTO `question_grade` VALUES ('1993', null, '586', '单选题', '1', '1');
INSERT INTO `question_grade` VALUES ('1994', null, '587', '单选题', '2', '1');
INSERT INTO `question_grade` VALUES ('1995', null, '588', '单选题', '3', '1');
INSERT INTO `question_grade` VALUES ('1996', null, '589', '单选题', '4', '1');
INSERT INTO `question_grade` VALUES ('1997', null, '590', '单选题', '5', '1');
INSERT INTO `question_grade` VALUES ('1998', null, '591', '单选题', '6', '1');
INSERT INTO `question_grade` VALUES ('1999', null, '592', '单选题', '7', '1');
INSERT INTO `question_grade` VALUES ('2000', null, '593', '单选题', '8', '1');
INSERT INTO `question_grade` VALUES ('2001', null, '594', '单选题', '9', '1');
INSERT INTO `question_grade` VALUES ('2002', null, '595', '单选题', '10', '0');
INSERT INTO `question_grade` VALUES ('2003', null, '596', '多选题', '1', '2');
INSERT INTO `question_grade` VALUES ('2004', null, '597', '多选题', '2', '2');
INSERT INTO `question_grade` VALUES ('2005', null, '598', '多选题', '3', '2');
INSERT INTO `question_grade` VALUES ('2006', null, '599', '多选题', '4', '2');
INSERT INTO `question_grade` VALUES ('2007', null, '600', '多选题', '5', '2');
INSERT INTO `question_grade` VALUES ('2008', null, '601', '填空题', '1', '5');
INSERT INTO `question_grade` VALUES ('2009', null, '602', '填空题', '2', '5');
INSERT INTO `question_grade` VALUES ('2010', null, '603', '填空题', '3', '5');
INSERT INTO `question_grade` VALUES ('2011', null, '604', '填空题', '4', '5');
INSERT INTO `question_grade` VALUES ('2012', null, '605', '编程题', '1', '10');
INSERT INTO `question_grade` VALUES ('2013', null, '606', '编程题', '2', '10');
INSERT INTO `question_grade` VALUES ('2014', null, '607', '编程题', '3', '10');
INSERT INTO `question_grade` VALUES ('2015', null, '608', '编程题', '4', '10');
INSERT INTO `question_grade` VALUES ('2016', null, '609', '编程题', '5', '10');
INSERT INTO `question_grade` VALUES ('2017', null, '610', '编程题', '6', '0');
INSERT INTO `question_grade` VALUES ('2018', null, '586', '单选题', '1', '1');
INSERT INTO `question_grade` VALUES ('2019', null, '587', '单选题', '2', '1');
INSERT INTO `question_grade` VALUES ('2020', null, '588', '单选题', '3', '1');
INSERT INTO `question_grade` VALUES ('2021', null, '589', '单选题', '4', '1');
INSERT INTO `question_grade` VALUES ('2022', null, '590', '单选题', '5', '1');
INSERT INTO `question_grade` VALUES ('2023', null, '591', '单选题', '6', '1');
INSERT INTO `question_grade` VALUES ('2024', null, '592', '单选题', '7', '1');
INSERT INTO `question_grade` VALUES ('2025', null, '593', '单选题', '8', '1');
INSERT INTO `question_grade` VALUES ('2026', null, '594', '单选题', '9', '1');
INSERT INTO `question_grade` VALUES ('2027', null, '595', '单选题', '10', '0');
INSERT INTO `question_grade` VALUES ('2028', null, '596', '多选题', '1', '2');
INSERT INTO `question_grade` VALUES ('2029', null, '597', '多选题', '2', '2');
INSERT INTO `question_grade` VALUES ('2030', null, '598', '多选题', '3', '2');
INSERT INTO `question_grade` VALUES ('2031', null, '599', '多选题', '4', '2');
INSERT INTO `question_grade` VALUES ('2032', null, '600', '多选题', '5', '2');
INSERT INTO `question_grade` VALUES ('2033', null, '601', '填空题', '1', '5');
INSERT INTO `question_grade` VALUES ('2034', null, '602', '填空题', '2', '5');
INSERT INTO `question_grade` VALUES ('2035', null, '603', '填空题', '3', '5');
INSERT INTO `question_grade` VALUES ('2036', null, '604', '填空题', '4', '5');
INSERT INTO `question_grade` VALUES ('2037', null, '605', '编程题', '1', '10');
INSERT INTO `question_grade` VALUES ('2038', null, '606', '编程题', '2', '10');
INSERT INTO `question_grade` VALUES ('2039', null, '607', '编程题', '3', '10');
INSERT INTO `question_grade` VALUES ('2040', null, '608', '编程题', '4', '10');
INSERT INTO `question_grade` VALUES ('2041', null, '609', '编程题', '5', '10');
INSERT INTO `question_grade` VALUES ('2042', null, '610', '编程题', '6', '0');
INSERT INTO `question_grade` VALUES ('2043', null, '586', '单选题', '1', '1');
INSERT INTO `question_grade` VALUES ('2044', null, '587', '单选题', '2', '1');
INSERT INTO `question_grade` VALUES ('2045', null, '588', '单选题', '3', '1');
INSERT INTO `question_grade` VALUES ('2046', null, '589', '单选题', '4', '1');
INSERT INTO `question_grade` VALUES ('2047', null, '590', '单选题', '5', '1');
INSERT INTO `question_grade` VALUES ('2048', null, '591', '单选题', '6', '1');
INSERT INTO `question_grade` VALUES ('2049', null, '592', '单选题', '7', '1');
INSERT INTO `question_grade` VALUES ('2050', null, '593', '单选题', '8', '1');
INSERT INTO `question_grade` VALUES ('2051', null, '594', '单选题', '9', '1');
INSERT INTO `question_grade` VALUES ('2052', null, '595', '单选题', '10', '0');
INSERT INTO `question_grade` VALUES ('2053', null, '596', '多选题', '1', '2');
INSERT INTO `question_grade` VALUES ('2054', null, '597', '多选题', '2', '2');
INSERT INTO `question_grade` VALUES ('2055', null, '598', '多选题', '3', '2');
INSERT INTO `question_grade` VALUES ('2056', null, '599', '多选题', '4', '2');
INSERT INTO `question_grade` VALUES ('2057', null, '600', '多选题', '5', '2');
INSERT INTO `question_grade` VALUES ('2058', null, '601', '填空题', '1', '5');
INSERT INTO `question_grade` VALUES ('2059', null, '602', '填空题', '2', '5');
INSERT INTO `question_grade` VALUES ('2060', null, '603', '填空题', '3', '5');
INSERT INTO `question_grade` VALUES ('2061', null, '604', '填空题', '4', '5');
INSERT INTO `question_grade` VALUES ('2062', null, '605', '编程题', '1', '10');
INSERT INTO `question_grade` VALUES ('2063', null, '606', '编程题', '2', '10');
INSERT INTO `question_grade` VALUES ('2064', null, '607', '编程题', '3', '10');
INSERT INTO `question_grade` VALUES ('2065', null, '608', '编程题', '4', '10');
INSERT INTO `question_grade` VALUES ('2066', null, '609', '编程题', '5', '10');
INSERT INTO `question_grade` VALUES ('2067', null, '610', '编程题', '6', '0');
INSERT INTO `question_grade` VALUES ('2068', '86', '586', '单选题', '1', '1');
INSERT INTO `question_grade` VALUES ('2069', '86', '587', '单选题', '2', '1');
INSERT INTO `question_grade` VALUES ('2070', '86', '588', '单选题', '3', '1');
INSERT INTO `question_grade` VALUES ('2071', '86', '589', '单选题', '4', '1');
INSERT INTO `question_grade` VALUES ('2072', '86', '590', '单选题', '5', '1');
INSERT INTO `question_grade` VALUES ('2073', '86', '591', '单选题', '6', '1');
INSERT INTO `question_grade` VALUES ('2074', '86', '592', '单选题', '7', '1');
INSERT INTO `question_grade` VALUES ('2075', '86', '593', '单选题', '8', '1');
INSERT INTO `question_grade` VALUES ('2076', '86', '594', '单选题', '9', '1');
INSERT INTO `question_grade` VALUES ('2077', '86', '595', '单选题', '10', '0');
INSERT INTO `question_grade` VALUES ('2078', '86', '596', '多选题', '1', '2');
INSERT INTO `question_grade` VALUES ('2079', '86', '597', '多选题', '2', '2');
INSERT INTO `question_grade` VALUES ('2080', '86', '598', '多选题', '3', '2');
INSERT INTO `question_grade` VALUES ('2081', '86', '599', '多选题', '4', '2');
INSERT INTO `question_grade` VALUES ('2082', '86', '600', '多选题', '5', '2');
INSERT INTO `question_grade` VALUES ('2083', '86', '601', '填空题', '1', '5');
INSERT INTO `question_grade` VALUES ('2084', '86', '602', '填空题', '2', '5');
INSERT INTO `question_grade` VALUES ('2085', '86', '603', '填空题', '3', '5');
INSERT INTO `question_grade` VALUES ('2086', '86', '604', '填空题', '4', '5');
INSERT INTO `question_grade` VALUES ('2087', '86', '605', '编程题', '1', '10');
INSERT INTO `question_grade` VALUES ('2088', '86', '606', '编程题', '2', '10');
INSERT INTO `question_grade` VALUES ('2089', '86', '607', '编程题', '3', '10');
INSERT INTO `question_grade` VALUES ('2090', '86', '608', '编程题', '4', '10');
INSERT INTO `question_grade` VALUES ('2091', '86', '609', '编程题', '5', '10');
INSERT INTO `question_grade` VALUES ('2092', '86', '610', '编程题', '6', '0');
INSERT INTO `question_grade` VALUES ('2093', '89', '586', '单选题', '1', '1');
INSERT INTO `question_grade` VALUES ('2094', '89', '587', '单选题', '2', '1');
INSERT INTO `question_grade` VALUES ('2095', '89', '588', '单选题', '3', '1');
INSERT INTO `question_grade` VALUES ('2096', '89', '589', '单选题', '4', '1');
INSERT INTO `question_grade` VALUES ('2097', '89', '590', '单选题', '5', '1');
INSERT INTO `question_grade` VALUES ('2098', '89', '591', '单选题', '6', '1');
INSERT INTO `question_grade` VALUES ('2099', '89', '592', '单选题', '7', '1');
INSERT INTO `question_grade` VALUES ('2100', '89', '593', '单选题', '8', '1');
INSERT INTO `question_grade` VALUES ('2101', '89', '594', '单选题', '9', '1');
INSERT INTO `question_grade` VALUES ('2102', '89', '595', '单选题', '10', '1');
INSERT INTO `question_grade` VALUES ('2103', '89', '596', '多选题', '1', '2');
INSERT INTO `question_grade` VALUES ('2104', '89', '597', '多选题', '2', '2');
INSERT INTO `question_grade` VALUES ('2105', '89', '598', '多选题', '3', '2');
INSERT INTO `question_grade` VALUES ('2106', '89', '599', '多选题', '4', '2');
INSERT INTO `question_grade` VALUES ('2107', '89', '600', '多选题', '5', '0');
INSERT INTO `question_grade` VALUES ('2108', '89', '601', '填空题', '1', '5');
INSERT INTO `question_grade` VALUES ('2109', '89', '602', '填空题', '2', '5');
INSERT INTO `question_grade` VALUES ('2110', '89', '603', '填空题', '3', '5');
INSERT INTO `question_grade` VALUES ('2111', '89', '604', '填空题', '4', '3');
INSERT INTO `question_grade` VALUES ('2112', '89', '605', '编程题', '1', '10');
INSERT INTO `question_grade` VALUES ('2113', '89', '606', '编程题', '2', '10');
INSERT INTO `question_grade` VALUES ('2114', '89', '607', '编程题', '3', '10');
INSERT INTO `question_grade` VALUES ('2115', '89', '608', '编程题', '4', '10');
INSERT INTO `question_grade` VALUES ('2116', '89', '609', '编程题', '5', '6');
INSERT INTO `question_grade` VALUES ('2117', '89', '610', '编程题', '6', '7');
INSERT INTO `question_grade` VALUES ('2118', '90', '586', '单选题', '1', '1');
INSERT INTO `question_grade` VALUES ('2119', '90', '587', '单选题', '2', '1');
INSERT INTO `question_grade` VALUES ('2120', '90', '588', '单选题', '3', '1');
INSERT INTO `question_grade` VALUES ('2121', '90', '589', '单选题', '4', '0');
INSERT INTO `question_grade` VALUES ('2122', '90', '590', '单选题', '5', '1');
INSERT INTO `question_grade` VALUES ('2123', '90', '591', '单选题', '6', '0');
INSERT INTO `question_grade` VALUES ('2124', '90', '592', '单选题', '7', '1');
INSERT INTO `question_grade` VALUES ('2125', '90', '593', '单选题', '8', '1');
INSERT INTO `question_grade` VALUES ('2126', '90', '594', '单选题', '9', '0');
INSERT INTO `question_grade` VALUES ('2127', '90', '595', '单选题', '10', '0');
INSERT INTO `question_grade` VALUES ('2128', '90', '596', '多选题', '1', '2');
INSERT INTO `question_grade` VALUES ('2129', '90', '597', '多选题', '2', '0');
INSERT INTO `question_grade` VALUES ('2130', '90', '598', '多选题', '3', '2');
INSERT INTO `question_grade` VALUES ('2131', '90', '599', '多选题', '4', '2');
INSERT INTO `question_grade` VALUES ('2132', '90', '600', '多选题', '5', '0');
INSERT INTO `question_grade` VALUES ('2133', '90', '601', '填空题', '1', '5');
INSERT INTO `question_grade` VALUES ('2134', '90', '602', '填空题', '2', '5');
INSERT INTO `question_grade` VALUES ('2135', '90', '603', '填空题', '3', '1');
INSERT INTO `question_grade` VALUES ('2136', '90', '604', '填空题', '4', '0');
INSERT INTO `question_grade` VALUES ('2137', '90', '605', '编程题', '1', '10');
INSERT INTO `question_grade` VALUES ('2138', '90', '606', '编程题', '2', '8');
INSERT INTO `question_grade` VALUES ('2139', '90', '607', '编程题', '3', '10');
INSERT INTO `question_grade` VALUES ('2140', '90', '608', '编程题', '4', '5');
INSERT INTO `question_grade` VALUES ('2141', '90', '609', '编程题', '5', '5');
INSERT INTO `question_grade` VALUES ('2142', '90', '610', '编程题', '6', '0');
INSERT INTO `question_grade` VALUES ('2143', '91', '586', '单选题', '1', '1');
INSERT INTO `question_grade` VALUES ('2144', '91', '587', '单选题', '2', '1');
INSERT INTO `question_grade` VALUES ('2145', '91', '588', '单选题', '3', '1');
INSERT INTO `question_grade` VALUES ('2146', '91', '589', '单选题', '4', '1');
INSERT INTO `question_grade` VALUES ('2147', '91', '590', '单选题', '5', '1');
INSERT INTO `question_grade` VALUES ('2148', '91', '591', '单选题', '6', '1');
INSERT INTO `question_grade` VALUES ('2149', '91', '592', '单选题', '7', '1');
INSERT INTO `question_grade` VALUES ('2150', '91', '593', '单选题', '8', '1');
INSERT INTO `question_grade` VALUES ('2151', '91', '594', '单选题', '9', '1');
INSERT INTO `question_grade` VALUES ('2152', '91', '595', '单选题', '10', '1');
INSERT INTO `question_grade` VALUES ('2153', '91', '596', '多选题', '1', '2');
INSERT INTO `question_grade` VALUES ('2154', '91', '597', '多选题', '2', '2');
INSERT INTO `question_grade` VALUES ('2155', '91', '598', '多选题', '3', '2');
INSERT INTO `question_grade` VALUES ('2156', '91', '599', '多选题', '4', '2');
INSERT INTO `question_grade` VALUES ('2157', '91', '600', '多选题', '5', '2');
INSERT INTO `question_grade` VALUES ('2158', '91', '601', '填空题', '1', '5');
INSERT INTO `question_grade` VALUES ('2159', '91', '602', '填空题', '2', '5');
INSERT INTO `question_grade` VALUES ('2160', '91', '603', '填空题', '3', '5');
INSERT INTO `question_grade` VALUES ('2161', '91', '604', '填空题', '4', '5');
INSERT INTO `question_grade` VALUES ('2162', '91', '605', '编程题', '1', '10');
INSERT INTO `question_grade` VALUES ('2163', '91', '606', '编程题', '2', '10');
INSERT INTO `question_grade` VALUES ('2164', '91', '607', '编程题', '3', '10');
INSERT INTO `question_grade` VALUES ('2165', '91', '608', '编程题', '4', '5');
INSERT INTO `question_grade` VALUES ('2166', '91', '609', '编程题', '5', '10');
INSERT INTO `question_grade` VALUES ('2167', '91', '610', '编程题', '6', '10');
INSERT INTO `question_grade` VALUES ('2168', '92', '586', '单选题', '1', '1');
INSERT INTO `question_grade` VALUES ('2169', '92', '587', '单选题', '2', '1');
INSERT INTO `question_grade` VALUES ('2170', '92', '588', '单选题', '3', '1');
INSERT INTO `question_grade` VALUES ('2171', '92', '589', '单选题', '4', '1');
INSERT INTO `question_grade` VALUES ('2172', '92', '590', '单选题', '5', '1');
INSERT INTO `question_grade` VALUES ('2173', '92', '591', '单选题', '6', '1');
INSERT INTO `question_grade` VALUES ('2174', '92', '592', '单选题', '7', '1');
INSERT INTO `question_grade` VALUES ('2175', '92', '593', '单选题', '8', '1');
INSERT INTO `question_grade` VALUES ('2176', '92', '594', '单选题', '9', '1');
INSERT INTO `question_grade` VALUES ('2177', '92', '595', '单选题', '10', '1');
INSERT INTO `question_grade` VALUES ('2178', '92', '596', '多选题', '1', '2');
INSERT INTO `question_grade` VALUES ('2179', '92', '597', '多选题', '2', '2');
INSERT INTO `question_grade` VALUES ('2180', '92', '598', '多选题', '3', '2');
INSERT INTO `question_grade` VALUES ('2181', '92', '599', '多选题', '4', '2');
INSERT INTO `question_grade` VALUES ('2182', '92', '600', '多选题', '5', '0');
INSERT INTO `question_grade` VALUES ('2183', '92', '601', '填空题', '1', '5');
INSERT INTO `question_grade` VALUES ('2184', '92', '602', '填空题', '2', '5');
INSERT INTO `question_grade` VALUES ('2185', '92', '603', '填空题', '3', '5');
INSERT INTO `question_grade` VALUES ('2186', '92', '604', '填空题', '4', '3');
INSERT INTO `question_grade` VALUES ('2187', '92', '605', '编程题', '1', '10');
INSERT INTO `question_grade` VALUES ('2188', '92', '606', '编程题', '2', '10');
INSERT INTO `question_grade` VALUES ('2189', '92', '607', '编程题', '3', '10');
INSERT INTO `question_grade` VALUES ('2190', '92', '608', '编程题', '4', '10');
INSERT INTO `question_grade` VALUES ('2191', '92', '609', '编程题', '5', '10');
INSERT INTO `question_grade` VALUES ('2192', '92', '610', '编程题', '6', '10');
INSERT INTO `question_grade` VALUES ('2193', '93', '586', '单选题', '1', '1');
INSERT INTO `question_grade` VALUES ('2194', '93', '587', '单选题', '2', '1');
INSERT INTO `question_grade` VALUES ('2195', '93', '588', '单选题', '3', '1');
INSERT INTO `question_grade` VALUES ('2196', '93', '589', '单选题', '4', '1');
INSERT INTO `question_grade` VALUES ('2197', '93', '590', '单选题', '5', '1');
INSERT INTO `question_grade` VALUES ('2198', '93', '591', '单选题', '6', '1');
INSERT INTO `question_grade` VALUES ('2199', '93', '592', '单选题', '7', '1');
INSERT INTO `question_grade` VALUES ('2200', '93', '593', '单选题', '8', '1');
INSERT INTO `question_grade` VALUES ('2201', '93', '594', '单选题', '9', '1');
INSERT INTO `question_grade` VALUES ('2202', '93', '595', '单选题', '10', '1');
INSERT INTO `question_grade` VALUES ('2203', '93', '596', '多选题', '1', '2');
INSERT INTO `question_grade` VALUES ('2204', '93', '597', '多选题', '2', '2');
INSERT INTO `question_grade` VALUES ('2205', '93', '598', '多选题', '3', '2');
INSERT INTO `question_grade` VALUES ('2206', '93', '599', '多选题', '4', '0');
INSERT INTO `question_grade` VALUES ('2207', '93', '600', '多选题', '5', '0');
INSERT INTO `question_grade` VALUES ('2208', '93', '601', '填空题', '1', '5');
INSERT INTO `question_grade` VALUES ('2209', '93', '602', '填空题', '2', '3');
INSERT INTO `question_grade` VALUES ('2210', '93', '603', '填空题', '3', '2');
INSERT INTO `question_grade` VALUES ('2211', '93', '604', '填空题', '4', '0');
INSERT INTO `question_grade` VALUES ('2212', '93', '605', '编程题', '1', '10');
INSERT INTO `question_grade` VALUES ('2213', '93', '606', '编程题', '2', '10');
INSERT INTO `question_grade` VALUES ('2214', '93', '607', '编程题', '3', '5');
INSERT INTO `question_grade` VALUES ('2215', '93', '608', '编程题', '4', '5');
INSERT INTO `question_grade` VALUES ('2216', '93', '609', '编程题', '5', '10');
INSERT INTO `question_grade` VALUES ('2217', '93', '610', '编程题', '6', '3');
INSERT INTO `question_grade` VALUES ('2218', '94', '586', '单选题', '1', '1');
INSERT INTO `question_grade` VALUES ('2219', '94', '587', '单选题', '2', '1');
INSERT INTO `question_grade` VALUES ('2220', '94', '588', '单选题', '3', '1');
INSERT INTO `question_grade` VALUES ('2221', '94', '589', '单选题', '4', '1');
INSERT INTO `question_grade` VALUES ('2222', '94', '590', '单选题', '5', '1');
INSERT INTO `question_grade` VALUES ('2223', '94', '591', '单选题', '6', '1');
INSERT INTO `question_grade` VALUES ('2224', '94', '592', '单选题', '7', '1');
INSERT INTO `question_grade` VALUES ('2225', '94', '593', '单选题', '8', '1');
INSERT INTO `question_grade` VALUES ('2226', '94', '594', '单选题', '9', '1');
INSERT INTO `question_grade` VALUES ('2227', '94', '595', '单选题', '10', '0');
INSERT INTO `question_grade` VALUES ('2228', '94', '596', '多选题', '1', '2');
INSERT INTO `question_grade` VALUES ('2229', '94', '597', '多选题', '2', '2');
INSERT INTO `question_grade` VALUES ('2230', '94', '598', '多选题', '3', '2');
INSERT INTO `question_grade` VALUES ('2231', '94', '599', '多选题', '4', '2');
INSERT INTO `question_grade` VALUES ('2232', '94', '600', '多选题', '5', '2');
INSERT INTO `question_grade` VALUES ('2233', '94', '601', '填空题', '1', '5');
INSERT INTO `question_grade` VALUES ('2234', '94', '602', '填空题', '2', '5');
INSERT INTO `question_grade` VALUES ('2235', '94', '603', '填空题', '3', '0');
INSERT INTO `question_grade` VALUES ('2236', '94', '604', '填空题', '4', '2');
INSERT INTO `question_grade` VALUES ('2237', '94', '605', '编程题', '1', '10');
INSERT INTO `question_grade` VALUES ('2238', '94', '606', '编程题', '2', '10');
INSERT INTO `question_grade` VALUES ('2239', '94', '607', '编程题', '3', '10');
INSERT INTO `question_grade` VALUES ('2240', '94', '608', '编程题', '4', '5');
INSERT INTO `question_grade` VALUES ('2241', '94', '609', '编程题', '5', '5');
INSERT INTO `question_grade` VALUES ('2242', '94', '610', '编程题', '6', '0');
INSERT INTO `question_grade` VALUES ('2243', '95', '586', '单选题', '1', '1');
INSERT INTO `question_grade` VALUES ('2244', '95', '587', '单选题', '2', '1');
INSERT INTO `question_grade` VALUES ('2245', '95', '588', '单选题', '3', '1');
INSERT INTO `question_grade` VALUES ('2246', '95', '589', '单选题', '4', '1');
INSERT INTO `question_grade` VALUES ('2247', '95', '590', '单选题', '5', '1');
INSERT INTO `question_grade` VALUES ('2248', '95', '591', '单选题', '6', '1');
INSERT INTO `question_grade` VALUES ('2249', '95', '592', '单选题', '7', '1');
INSERT INTO `question_grade` VALUES ('2250', '95', '593', '单选题', '8', '1');
INSERT INTO `question_grade` VALUES ('2251', '95', '594', '单选题', '9', '1');
INSERT INTO `question_grade` VALUES ('2252', '95', '595', '单选题', '10', '1');
INSERT INTO `question_grade` VALUES ('2253', '95', '596', '多选题', '1', '2');
INSERT INTO `question_grade` VALUES ('2254', '95', '597', '多选题', '2', '2');
INSERT INTO `question_grade` VALUES ('2255', '95', '598', '多选题', '3', '2');
INSERT INTO `question_grade` VALUES ('2256', '95', '599', '多选题', '4', '2');
INSERT INTO `question_grade` VALUES ('2257', '95', '600', '多选题', '5', '2');
INSERT INTO `question_grade` VALUES ('2258', '95', '601', '填空题', '1', '5');
INSERT INTO `question_grade` VALUES ('2259', '95', '602', '填空题', '2', '5');
INSERT INTO `question_grade` VALUES ('2260', '95', '603', '填空题', '3', '5');
INSERT INTO `question_grade` VALUES ('2261', '95', '604', '填空题', '4', '1');
INSERT INTO `question_grade` VALUES ('2262', '95', '605', '编程题', '1', '10');
INSERT INTO `question_grade` VALUES ('2263', '95', '606', '编程题', '2', '10');
INSERT INTO `question_grade` VALUES ('2264', '95', '607', '编程题', '3', '10');
INSERT INTO `question_grade` VALUES ('2265', '95', '608', '编程题', '4', '10');
INSERT INTO `question_grade` VALUES ('2266', '95', '609', '编程题', '5', '4');
INSERT INTO `question_grade` VALUES ('2267', '95', '610', '编程题', '6', '0');
INSERT INTO `question_grade` VALUES ('2268', '96', '586', '单选题', '1', '1');
INSERT INTO `question_grade` VALUES ('2269', '96', '587', '单选题', '2', '1');
INSERT INTO `question_grade` VALUES ('2270', '96', '588', '单选题', '3', '1');
INSERT INTO `question_grade` VALUES ('2271', '96', '589', '单选题', '4', '1');
INSERT INTO `question_grade` VALUES ('2272', '96', '590', '单选题', '5', '1');
INSERT INTO `question_grade` VALUES ('2273', '96', '591', '单选题', '6', '1');
INSERT INTO `question_grade` VALUES ('2274', '96', '592', '单选题', '7', '1');
INSERT INTO `question_grade` VALUES ('2275', '96', '593', '单选题', '8', '1');
INSERT INTO `question_grade` VALUES ('2276', '96', '594', '单选题', '9', '1');
INSERT INTO `question_grade` VALUES ('2277', '96', '595', '单选题', '10', '1');
INSERT INTO `question_grade` VALUES ('2278', '96', '596', '多选题', '1', '2');
INSERT INTO `question_grade` VALUES ('2279', '96', '597', '多选题', '2', '2');
INSERT INTO `question_grade` VALUES ('2280', '96', '598', '多选题', '3', '2');
INSERT INTO `question_grade` VALUES ('2281', '96', '599', '多选题', '4', '2');
INSERT INTO `question_grade` VALUES ('2282', '96', '600', '多选题', '5', '2');
INSERT INTO `question_grade` VALUES ('2283', '96', '601', '填空题', '1', '0');
INSERT INTO `question_grade` VALUES ('2284', '96', '602', '填空题', '2', '5');
INSERT INTO `question_grade` VALUES ('2285', '96', '603', '填空题', '3', '0');
INSERT INTO `question_grade` VALUES ('2286', '96', '604', '填空题', '4', '5');
INSERT INTO `question_grade` VALUES ('2287', '96', '605', '编程题', '1', '10');
INSERT INTO `question_grade` VALUES ('2288', '96', '606', '编程题', '2', '5');
INSERT INTO `question_grade` VALUES ('2289', '96', '607', '编程题', '3', '5');
INSERT INTO `question_grade` VALUES ('2290', '96', '608', '编程题', '4', '5');
INSERT INTO `question_grade` VALUES ('2291', '96', '609', '编程题', '5', '5');
INSERT INTO `question_grade` VALUES ('2292', '96', '610', '编程题', '6', '0');
INSERT INTO `question_grade` VALUES ('2293', '97', '586', '单选题', '1', '1');
INSERT INTO `question_grade` VALUES ('2294', '97', '587', '单选题', '2', '1');
INSERT INTO `question_grade` VALUES ('2295', '97', '588', '单选题', '3', '1');
INSERT INTO `question_grade` VALUES ('2296', '97', '589', '单选题', '4', '1');
INSERT INTO `question_grade` VALUES ('2297', '97', '590', '单选题', '5', '1');
INSERT INTO `question_grade` VALUES ('2298', '97', '591', '单选题', '6', '1');
INSERT INTO `question_grade` VALUES ('2299', '97', '592', '单选题', '7', '1');
INSERT INTO `question_grade` VALUES ('2300', '97', '593', '单选题', '8', '1');
INSERT INTO `question_grade` VALUES ('2301', '97', '594', '单选题', '9', '1');
INSERT INTO `question_grade` VALUES ('2302', '97', '595', '单选题', '10', '1');
INSERT INTO `question_grade` VALUES ('2303', '97', '596', '多选题', '1', '2');
INSERT INTO `question_grade` VALUES ('2304', '97', '597', '多选题', '2', '2');
INSERT INTO `question_grade` VALUES ('2305', '97', '598', '多选题', '3', '2');
INSERT INTO `question_grade` VALUES ('2306', '97', '599', '多选题', '4', '2');
INSERT INTO `question_grade` VALUES ('2307', '97', '600', '多选题', '5', '0');
INSERT INTO `question_grade` VALUES ('2308', '97', '601', '填空题', '1', '5');
INSERT INTO `question_grade` VALUES ('2309', '97', '602', '填空题', '2', '5');
INSERT INTO `question_grade` VALUES ('2310', '97', '603', '填空题', '3', '5');
INSERT INTO `question_grade` VALUES ('2311', '97', '604', '填空题', '4', '5');
INSERT INTO `question_grade` VALUES ('2312', '97', '605', '编程题', '1', '10');
INSERT INTO `question_grade` VALUES ('2313', '97', '606', '编程题', '2', '5');
INSERT INTO `question_grade` VALUES ('2314', '97', '607', '编程题', '3', '10');
INSERT INTO `question_grade` VALUES ('2315', '97', '608', '编程题', '4', '10');
INSERT INTO `question_grade` VALUES ('2316', '97', '609', '编程题', '5', '10');
INSERT INTO `question_grade` VALUES ('2317', '97', '610', '编程题', '6', '0');
INSERT INTO `question_grade` VALUES ('2318', '98', '586', '单选题', '1', '1');
INSERT INTO `question_grade` VALUES ('2319', '98', '587', '单选题', '2', '1');
INSERT INTO `question_grade` VALUES ('2320', '98', '588', '单选题', '3', '1');
INSERT INTO `question_grade` VALUES ('2321', '98', '589', '单选题', '4', '1');
INSERT INTO `question_grade` VALUES ('2322', '98', '590', '单选题', '5', '1');
INSERT INTO `question_grade` VALUES ('2323', '98', '591', '单选题', '6', '1');
INSERT INTO `question_grade` VALUES ('2324', '98', '592', '单选题', '7', '1');
INSERT INTO `question_grade` VALUES ('2325', '98', '593', '单选题', '8', '1');
INSERT INTO `question_grade` VALUES ('2326', '98', '594', '单选题', '9', '1');
INSERT INTO `question_grade` VALUES ('2327', '98', '595', '单选题', '10', '1');
INSERT INTO `question_grade` VALUES ('2328', '98', '596', '多选题', '1', '2');
INSERT INTO `question_grade` VALUES ('2329', '98', '597', '多选题', '2', '2');
INSERT INTO `question_grade` VALUES ('2330', '98', '598', '多选题', '3', '2');
INSERT INTO `question_grade` VALUES ('2331', '98', '599', '多选题', '4', '2');
INSERT INTO `question_grade` VALUES ('2332', '98', '600', '多选题', '5', '2');
INSERT INTO `question_grade` VALUES ('2333', '98', '601', '填空题', '1', '5');
INSERT INTO `question_grade` VALUES ('2334', '98', '602', '填空题', '2', '5');
INSERT INTO `question_grade` VALUES ('2335', '98', '603', '填空题', '3', '5');
INSERT INTO `question_grade` VALUES ('2336', '98', '604', '填空题', '4', '5');
INSERT INTO `question_grade` VALUES ('2337', '98', '605', '编程题', '1', '10');
INSERT INTO `question_grade` VALUES ('2338', '98', '606', '编程题', '2', '10');
INSERT INTO `question_grade` VALUES ('2339', '98', '607', '编程题', '3', '2');
INSERT INTO `question_grade` VALUES ('2340', '98', '608', '编程题', '4', '0');
INSERT INTO `question_grade` VALUES ('2341', '98', '609', '编程题', '5', '5');
INSERT INTO `question_grade` VALUES ('2342', '98', '610', '编程题', '6', '5');
INSERT INTO `question_grade` VALUES ('2343', '99', '586', '单选题', '1', '1');
INSERT INTO `question_grade` VALUES ('2344', '99', '587', '单选题', '2', '1');
INSERT INTO `question_grade` VALUES ('2345', '99', '588', '单选题', '3', '1');
INSERT INTO `question_grade` VALUES ('2346', '99', '589', '单选题', '4', '1');
INSERT INTO `question_grade` VALUES ('2347', '99', '590', '单选题', '5', '1');
INSERT INTO `question_grade` VALUES ('2348', '99', '591', '单选题', '6', '1');
INSERT INTO `question_grade` VALUES ('2349', '99', '592', '单选题', '7', '1');
INSERT INTO `question_grade` VALUES ('2350', '99', '593', '单选题', '8', '1');
INSERT INTO `question_grade` VALUES ('2351', '99', '594', '单选题', '9', '1');
INSERT INTO `question_grade` VALUES ('2352', '99', '595', '单选题', '10', '1');
INSERT INTO `question_grade` VALUES ('2353', '99', '596', '多选题', '1', '2');
INSERT INTO `question_grade` VALUES ('2354', '99', '597', '多选题', '2', '2');
INSERT INTO `question_grade` VALUES ('2355', '99', '598', '多选题', '3', '2');
INSERT INTO `question_grade` VALUES ('2356', '99', '599', '多选题', '4', '2');
INSERT INTO `question_grade` VALUES ('2357', '99', '600', '多选题', '5', '2');
INSERT INTO `question_grade` VALUES ('2358', '99', '601', '填空题', '1', '5');
INSERT INTO `question_grade` VALUES ('2359', '99', '602', '填空题', '2', '5');
INSERT INTO `question_grade` VALUES ('2360', '99', '603', '填空题', '3', '2');
INSERT INTO `question_grade` VALUES ('2361', '99', '604', '填空题', '4', '2');
INSERT INTO `question_grade` VALUES ('2362', '99', '605', '编程题', '1', '10');
INSERT INTO `question_grade` VALUES ('2363', '99', '606', '编程题', '2', '10');
INSERT INTO `question_grade` VALUES ('2364', '99', '607', '编程题', '3', '10');
INSERT INTO `question_grade` VALUES ('2365', '99', '608', '编程题', '4', '10');
INSERT INTO `question_grade` VALUES ('2366', '99', '609', '编程题', '5', '10');
INSERT INTO `question_grade` VALUES ('2367', '99', '610', '编程题', '6', '0');
INSERT INTO `question_grade` VALUES ('2368', '100', '586', '单选题', '1', '1');
INSERT INTO `question_grade` VALUES ('2369', '100', '587', '单选题', '2', '1');
INSERT INTO `question_grade` VALUES ('2370', '100', '588', '单选题', '3', '1');
INSERT INTO `question_grade` VALUES ('2371', '100', '589', '单选题', '4', '1');
INSERT INTO `question_grade` VALUES ('2372', '100', '590', '单选题', '5', '1');
INSERT INTO `question_grade` VALUES ('2373', '100', '591', '单选题', '6', '1');
INSERT INTO `question_grade` VALUES ('2374', '100', '592', '单选题', '7', '1');
INSERT INTO `question_grade` VALUES ('2375', '100', '593', '单选题', '8', '1');
INSERT INTO `question_grade` VALUES ('2376', '100', '594', '单选题', '9', '1');
INSERT INTO `question_grade` VALUES ('2377', '100', '595', '单选题', '10', '1');
INSERT INTO `question_grade` VALUES ('2378', '100', '596', '多选题', '1', '2');
INSERT INTO `question_grade` VALUES ('2379', '100', '597', '多选题', '2', '2');
INSERT INTO `question_grade` VALUES ('2380', '100', '598', '多选题', '3', '2');
INSERT INTO `question_grade` VALUES ('2381', '100', '599', '多选题', '4', '2');
INSERT INTO `question_grade` VALUES ('2382', '100', '600', '多选题', '5', '2');
INSERT INTO `question_grade` VALUES ('2383', '100', '601', '填空题', '1', '5');
INSERT INTO `question_grade` VALUES ('2384', '100', '602', '填空题', '2', '5');
INSERT INTO `question_grade` VALUES ('2385', '100', '603', '填空题', '3', '5');
INSERT INTO `question_grade` VALUES ('2386', '100', '604', '填空题', '4', '5');
INSERT INTO `question_grade` VALUES ('2387', '100', '605', '编程题', '1', '10');
INSERT INTO `question_grade` VALUES ('2388', '100', '606', '编程题', '2', '2');
INSERT INTO `question_grade` VALUES ('2389', '100', '607', '编程题', '3', '10');
INSERT INTO `question_grade` VALUES ('2390', '100', '608', '编程题', '4', '10');
INSERT INTO `question_grade` VALUES ('2391', '100', '609', '编程题', '5', '5');
INSERT INTO `question_grade` VALUES ('2392', '100', '610', '编程题', '6', '0');
INSERT INTO `question_grade` VALUES ('2393', '101', '586', '单选题', '1', '1');
INSERT INTO `question_grade` VALUES ('2394', '101', '587', '单选题', '2', '1');
INSERT INTO `question_grade` VALUES ('2395', '101', '588', '单选题', '3', '1');
INSERT INTO `question_grade` VALUES ('2396', '101', '589', '单选题', '4', '1');
INSERT INTO `question_grade` VALUES ('2397', '101', '590', '单选题', '5', '1');
INSERT INTO `question_grade` VALUES ('2398', '101', '591', '单选题', '6', '1');
INSERT INTO `question_grade` VALUES ('2399', '101', '592', '单选题', '7', '1');
INSERT INTO `question_grade` VALUES ('2400', '101', '593', '单选题', '8', '1');
INSERT INTO `question_grade` VALUES ('2401', '101', '594', '单选题', '9', '1');
INSERT INTO `question_grade` VALUES ('2402', '101', '595', '单选题', '10', '1');
INSERT INTO `question_grade` VALUES ('2403', '101', '596', '多选题', '1', '2');
INSERT INTO `question_grade` VALUES ('2404', '101', '597', '多选题', '2', '2');
INSERT INTO `question_grade` VALUES ('2405', '101', '598', '多选题', '3', '2');
INSERT INTO `question_grade` VALUES ('2406', '101', '599', '多选题', '4', '2');
INSERT INTO `question_grade` VALUES ('2407', '101', '600', '多选题', '5', '2');
INSERT INTO `question_grade` VALUES ('2408', '101', '601', '填空题', '1', '5');
INSERT INTO `question_grade` VALUES ('2409', '101', '602', '填空题', '2', '5');
INSERT INTO `question_grade` VALUES ('2410', '101', '603', '填空题', '3', '2');
INSERT INTO `question_grade` VALUES ('2411', '101', '604', '填空题', '4', '3');
INSERT INTO `question_grade` VALUES ('2412', '101', '605', '编程题', '1', '10');
INSERT INTO `question_grade` VALUES ('2413', '101', '606', '编程题', '2', '10');
INSERT INTO `question_grade` VALUES ('2414', '101', '607', '编程题', '3', '10');
INSERT INTO `question_grade` VALUES ('2415', '101', '608', '编程题', '4', '5');
INSERT INTO `question_grade` VALUES ('2416', '101', '609', '编程题', '5', '5');
INSERT INTO `question_grade` VALUES ('2417', '101', '610', '编程题', '6', '0');
INSERT INTO `question_grade` VALUES ('2418', '102', '586', '单选题', '1', '1');
INSERT INTO `question_grade` VALUES ('2419', '102', '587', '单选题', '2', '1');
INSERT INTO `question_grade` VALUES ('2420', '102', '588', '单选题', '3', '1');
INSERT INTO `question_grade` VALUES ('2421', '102', '589', '单选题', '4', '1');
INSERT INTO `question_grade` VALUES ('2422', '102', '590', '单选题', '5', '1');
INSERT INTO `question_grade` VALUES ('2423', '102', '591', '单选题', '6', '1');
INSERT INTO `question_grade` VALUES ('2424', '102', '592', '单选题', '7', '1');
INSERT INTO `question_grade` VALUES ('2425', '102', '593', '单选题', '8', '1');
INSERT INTO `question_grade` VALUES ('2426', '102', '594', '单选题', '9', '1');
INSERT INTO `question_grade` VALUES ('2427', '102', '595', '单选题', '10', '1');
INSERT INTO `question_grade` VALUES ('2428', '102', '596', '多选题', '1', '2');
INSERT INTO `question_grade` VALUES ('2429', '102', '597', '多选题', '2', '2');
INSERT INTO `question_grade` VALUES ('2430', '102', '598', '多选题', '3', '2');
INSERT INTO `question_grade` VALUES ('2431', '102', '599', '多选题', '4', '2');
INSERT INTO `question_grade` VALUES ('2432', '102', '600', '多选题', '5', '2');
INSERT INTO `question_grade` VALUES ('2433', '102', '601', '填空题', '1', '5');
INSERT INTO `question_grade` VALUES ('2434', '102', '602', '填空题', '2', '5');
INSERT INTO `question_grade` VALUES ('2435', '102', '603', '填空题', '3', '5');
INSERT INTO `question_grade` VALUES ('2436', '102', '604', '填空题', '4', '5');
INSERT INTO `question_grade` VALUES ('2437', '102', '605', '编程题', '1', '10');
INSERT INTO `question_grade` VALUES ('2438', '102', '606', '编程题', '2', '10');
INSERT INTO `question_grade` VALUES ('2439', '102', '607', '编程题', '3', '10');
INSERT INTO `question_grade` VALUES ('2440', '102', '608', '编程题', '4', '10');
INSERT INTO `question_grade` VALUES ('2441', '102', '609', '编程题', '5', '8');
INSERT INTO `question_grade` VALUES ('2442', '102', '610', '编程题', '6', '0');
INSERT INTO `question_grade` VALUES ('2443', '103', '586', '单选题', '1', '1');
INSERT INTO `question_grade` VALUES ('2444', '103', '587', '单选题', '2', '1');
INSERT INTO `question_grade` VALUES ('2445', '103', '588', '单选题', '3', '1');
INSERT INTO `question_grade` VALUES ('2446', '103', '589', '单选题', '4', '1');
INSERT INTO `question_grade` VALUES ('2447', '103', '590', '单选题', '5', '1');
INSERT INTO `question_grade` VALUES ('2448', '103', '591', '单选题', '6', '1');
INSERT INTO `question_grade` VALUES ('2449', '103', '592', '单选题', '7', '1');
INSERT INTO `question_grade` VALUES ('2450', '103', '593', '单选题', '8', '1');
INSERT INTO `question_grade` VALUES ('2451', '103', '594', '单选题', '9', '1');
INSERT INTO `question_grade` VALUES ('2452', '103', '595', '单选题', '10', '1');
INSERT INTO `question_grade` VALUES ('2453', '103', '596', '多选题', '1', '2');
INSERT INTO `question_grade` VALUES ('2454', '103', '597', '多选题', '2', '2');
INSERT INTO `question_grade` VALUES ('2455', '103', '598', '多选题', '3', '2');
INSERT INTO `question_grade` VALUES ('2456', '103', '599', '多选题', '4', '2');
INSERT INTO `question_grade` VALUES ('2457', '103', '600', '多选题', '5', '2');
INSERT INTO `question_grade` VALUES ('2458', '103', '601', '填空题', '1', '5');
INSERT INTO `question_grade` VALUES ('2459', '103', '602', '填空题', '2', '5');
INSERT INTO `question_grade` VALUES ('2460', '103', '603', '填空题', '3', '5');
INSERT INTO `question_grade` VALUES ('2461', '103', '604', '填空题', '4', '0');
INSERT INTO `question_grade` VALUES ('2462', '103', '605', '编程题', '1', '10');
INSERT INTO `question_grade` VALUES ('2463', '103', '606', '编程题', '2', '3');
INSERT INTO `question_grade` VALUES ('2464', '103', '607', '编程题', '3', '10');
INSERT INTO `question_grade` VALUES ('2465', '103', '608', '编程题', '4', '10');
INSERT INTO `question_grade` VALUES ('2466', '103', '609', '编程题', '5', '5');
INSERT INTO `question_grade` VALUES ('2467', '103', '610', '编程题', '6', '5');
INSERT INTO `question_grade` VALUES ('2468', '104', '586', '单选题', '1', '1');
INSERT INTO `question_grade` VALUES ('2469', '104', '587', '单选题', '2', '1');
INSERT INTO `question_grade` VALUES ('2470', '104', '588', '单选题', '3', '1');
INSERT INTO `question_grade` VALUES ('2471', '104', '589', '单选题', '4', '1');
INSERT INTO `question_grade` VALUES ('2472', '104', '590', '单选题', '5', '1');
INSERT INTO `question_grade` VALUES ('2473', '104', '591', '单选题', '6', '1');
INSERT INTO `question_grade` VALUES ('2474', '104', '592', '单选题', '7', '1');
INSERT INTO `question_grade` VALUES ('2475', '104', '593', '单选题', '8', '1');
INSERT INTO `question_grade` VALUES ('2476', '104', '594', '单选题', '9', '1');
INSERT INTO `question_grade` VALUES ('2477', '104', '595', '单选题', '10', '1');
INSERT INTO `question_grade` VALUES ('2478', '104', '596', '多选题', '1', '2');
INSERT INTO `question_grade` VALUES ('2479', '104', '597', '多选题', '2', '2');
INSERT INTO `question_grade` VALUES ('2480', '104', '598', '多选题', '3', '2');
INSERT INTO `question_grade` VALUES ('2481', '104', '599', '多选题', '4', '2');
INSERT INTO `question_grade` VALUES ('2482', '104', '600', '多选题', '5', '2');
INSERT INTO `question_grade` VALUES ('2483', '104', '601', '填空题', '1', '5');
INSERT INTO `question_grade` VALUES ('2484', '104', '602', '填空题', '2', '5');
INSERT INTO `question_grade` VALUES ('2485', '104', '603', '填空题', '3', '5');
INSERT INTO `question_grade` VALUES ('2486', '104', '604', '填空题', '4', '5');
INSERT INTO `question_grade` VALUES ('2487', '104', '605', '编程题', '1', '10');
INSERT INTO `question_grade` VALUES ('2488', '104', '606', '编程题', '2', '10');
INSERT INTO `question_grade` VALUES ('2489', '104', '607', '编程题', '3', '10');
INSERT INTO `question_grade` VALUES ('2490', '104', '608', '编程题', '4', '10');
INSERT INTO `question_grade` VALUES ('2491', '104', '609', '编程题', '5', '10');
INSERT INTO `question_grade` VALUES ('2492', '104', '610', '编程题', '6', '7');
INSERT INTO `question_grade` VALUES ('2493', '105', '586', '单选题', '1', '1');
INSERT INTO `question_grade` VALUES ('2494', '105', '587', '单选题', '2', '1');
INSERT INTO `question_grade` VALUES ('2495', '105', '588', '单选题', '3', '1');
INSERT INTO `question_grade` VALUES ('2496', '105', '589', '单选题', '4', '1');
INSERT INTO `question_grade` VALUES ('2497', '105', '590', '单选题', '5', '1');
INSERT INTO `question_grade` VALUES ('2498', '105', '591', '单选题', '6', '1');
INSERT INTO `question_grade` VALUES ('2499', '105', '592', '单选题', '7', '1');
INSERT INTO `question_grade` VALUES ('2500', '105', '593', '单选题', '8', '1');
INSERT INTO `question_grade` VALUES ('2501', '105', '594', '单选题', '9', '1');
INSERT INTO `question_grade` VALUES ('2502', '105', '595', '单选题', '10', '1');
INSERT INTO `question_grade` VALUES ('2503', '105', '596', '多选题', '1', '2');
INSERT INTO `question_grade` VALUES ('2504', '105', '597', '多选题', '2', '2');
INSERT INTO `question_grade` VALUES ('2505', '105', '598', '多选题', '3', '2');
INSERT INTO `question_grade` VALUES ('2506', '105', '599', '多选题', '4', '2');
INSERT INTO `question_grade` VALUES ('2507', '105', '600', '多选题', '5', '2');
INSERT INTO `question_grade` VALUES ('2508', '105', '601', '填空题', '1', '5');
INSERT INTO `question_grade` VALUES ('2509', '105', '602', '填空题', '2', '5');
INSERT INTO `question_grade` VALUES ('2510', '105', '603', '填空题', '3', '5');
INSERT INTO `question_grade` VALUES ('2511', '105', '604', '填空题', '4', '5');
INSERT INTO `question_grade` VALUES ('2512', '105', '605', '编程题', '1', '10');
INSERT INTO `question_grade` VALUES ('2513', '105', '606', '编程题', '2', '10');
INSERT INTO `question_grade` VALUES ('2514', '105', '607', '编程题', '3', '5');
INSERT INTO `question_grade` VALUES ('2515', '105', '608', '编程题', '4', '10');
INSERT INTO `question_grade` VALUES ('2516', '105', '609', '编程题', '5', '4');
INSERT INTO `question_grade` VALUES ('2517', '105', '610', '编程题', '6', '7');
INSERT INTO `question_grade` VALUES ('2518', '106', '586', '单选题', '1', '1');
INSERT INTO `question_grade` VALUES ('2519', '106', '587', '单选题', '2', '1');
INSERT INTO `question_grade` VALUES ('2520', '106', '588', '单选题', '3', '1');
INSERT INTO `question_grade` VALUES ('2521', '106', '589', '单选题', '4', '1');
INSERT INTO `question_grade` VALUES ('2522', '106', '590', '单选题', '5', '1');
INSERT INTO `question_grade` VALUES ('2523', '106', '591', '单选题', '6', '1');
INSERT INTO `question_grade` VALUES ('2524', '106', '592', '单选题', '7', '1');
INSERT INTO `question_grade` VALUES ('2525', '106', '593', '单选题', '8', '1');
INSERT INTO `question_grade` VALUES ('2526', '106', '594', '单选题', '9', '1');
INSERT INTO `question_grade` VALUES ('2527', '106', '595', '单选题', '10', '1');
INSERT INTO `question_grade` VALUES ('2528', '106', '596', '多选题', '1', '2');
INSERT INTO `question_grade` VALUES ('2529', '106', '597', '多选题', '2', '2');
INSERT INTO `question_grade` VALUES ('2530', '106', '598', '多选题', '3', '0');
INSERT INTO `question_grade` VALUES ('2531', '106', '599', '多选题', '4', '2');
INSERT INTO `question_grade` VALUES ('2532', '106', '600', '多选题', '5', '0');
INSERT INTO `question_grade` VALUES ('2533', '106', '601', '填空题', '1', '3');
INSERT INTO `question_grade` VALUES ('2534', '106', '602', '填空题', '2', '5');
INSERT INTO `question_grade` VALUES ('2535', '106', '603', '填空题', '3', '1');
INSERT INTO `question_grade` VALUES ('2536', '106', '604', '填空题', '4', '2');
INSERT INTO `question_grade` VALUES ('2537', '106', '605', '编程题', '1', '10');
INSERT INTO `question_grade` VALUES ('2538', '106', '606', '编程题', '2', '10');
INSERT INTO `question_grade` VALUES ('2539', '106', '607', '编程题', '3', '5');
INSERT INTO `question_grade` VALUES ('2540', '106', '608', '编程题', '4', '5');
INSERT INTO `question_grade` VALUES ('2541', '106', '609', '编程题', '5', '10');
INSERT INTO `question_grade` VALUES ('2542', '106', '610', '编程题', '6', '0');
INSERT INTO `question_grade` VALUES ('2543', '107', '586', '单选题', '1', '1');
INSERT INTO `question_grade` VALUES ('2544', '107', '587', '单选题', '2', '1');
INSERT INTO `question_grade` VALUES ('2545', '107', '588', '单选题', '3', '1');
INSERT INTO `question_grade` VALUES ('2546', '107', '589', '单选题', '4', '1');
INSERT INTO `question_grade` VALUES ('2547', '107', '590', '单选题', '5', '1');
INSERT INTO `question_grade` VALUES ('2548', '107', '591', '单选题', '6', '1');
INSERT INTO `question_grade` VALUES ('2549', '107', '592', '单选题', '7', '1');
INSERT INTO `question_grade` VALUES ('2550', '107', '593', '单选题', '8', '1');
INSERT INTO `question_grade` VALUES ('2551', '107', '594', '单选题', '9', '1');
INSERT INTO `question_grade` VALUES ('2552', '107', '595', '单选题', '10', '1');
INSERT INTO `question_grade` VALUES ('2553', '107', '596', '多选题', '1', '2');
INSERT INTO `question_grade` VALUES ('2554', '107', '597', '多选题', '2', '2');
INSERT INTO `question_grade` VALUES ('2555', '107', '598', '多选题', '3', '2');
INSERT INTO `question_grade` VALUES ('2556', '107', '599', '多选题', '4', '2');
INSERT INTO `question_grade` VALUES ('2557', '107', '600', '多选题', '5', '2');
INSERT INTO `question_grade` VALUES ('2558', '107', '601', '填空题', '1', '5');
INSERT INTO `question_grade` VALUES ('2559', '107', '602', '填空题', '2', '5');
INSERT INTO `question_grade` VALUES ('2560', '107', '603', '填空题', '3', '5');
INSERT INTO `question_grade` VALUES ('2561', '107', '604', '填空题', '4', '5');
INSERT INTO `question_grade` VALUES ('2562', '107', '605', '编程题', '1', '10');
INSERT INTO `question_grade` VALUES ('2563', '107', '606', '编程题', '2', '5');
INSERT INTO `question_grade` VALUES ('2564', '107', '607', '编程题', '3', '10');
INSERT INTO `question_grade` VALUES ('2565', '107', '608', '编程题', '4', '10');
INSERT INTO `question_grade` VALUES ('2566', '107', '609', '编程题', '5', '10');
INSERT INTO `question_grade` VALUES ('2567', '107', '610', '编程题', '6', '10');
INSERT INTO `question_grade` VALUES ('2568', '108', '586', '单选题', '1', '1');
INSERT INTO `question_grade` VALUES ('2569', '108', '587', '单选题', '2', '1');
INSERT INTO `question_grade` VALUES ('2570', '108', '588', '单选题', '3', '1');
INSERT INTO `question_grade` VALUES ('2571', '108', '589', '单选题', '4', '1');
INSERT INTO `question_grade` VALUES ('2572', '108', '590', '单选题', '5', '1');
INSERT INTO `question_grade` VALUES ('2573', '108', '591', '单选题', '6', '1');
INSERT INTO `question_grade` VALUES ('2574', '108', '592', '单选题', '7', '1');
INSERT INTO `question_grade` VALUES ('2575', '108', '593', '单选题', '8', '1');
INSERT INTO `question_grade` VALUES ('2576', '108', '594', '单选题', '9', '1');
INSERT INTO `question_grade` VALUES ('2577', '108', '595', '单选题', '10', '1');
INSERT INTO `question_grade` VALUES ('2578', '108', '596', '多选题', '1', '2');
INSERT INTO `question_grade` VALUES ('2579', '108', '597', '多选题', '2', '2');
INSERT INTO `question_grade` VALUES ('2580', '108', '598', '多选题', '3', '2');
INSERT INTO `question_grade` VALUES ('2581', '108', '599', '多选题', '4', '2');
INSERT INTO `question_grade` VALUES ('2582', '108', '600', '多选题', '5', '2');
INSERT INTO `question_grade` VALUES ('2583', '108', '601', '填空题', '1', '5');
INSERT INTO `question_grade` VALUES ('2584', '108', '602', '填空题', '2', '5');
INSERT INTO `question_grade` VALUES ('2585', '108', '603', '填空题', '3', '5');
INSERT INTO `question_grade` VALUES ('2586', '108', '604', '填空题', '4', '5');
INSERT INTO `question_grade` VALUES ('2587', '108', '605', '编程题', '1', '10');
INSERT INTO `question_grade` VALUES ('2588', '108', '606', '编程题', '2', '10');
INSERT INTO `question_grade` VALUES ('2589', '108', '607', '编程题', '3', '10');
INSERT INTO `question_grade` VALUES ('2590', '108', '608', '编程题', '4', '2');
INSERT INTO `question_grade` VALUES ('2591', '108', '609', '编程题', '5', '5');
INSERT INTO `question_grade` VALUES ('2592', '108', '610', '编程题', '6', '0');
INSERT INTO `question_grade` VALUES ('2593', '109', '586', '单选题', '1', '1');
INSERT INTO `question_grade` VALUES ('2594', '109', '587', '单选题', '2', '1');
INSERT INTO `question_grade` VALUES ('2595', '109', '588', '单选题', '3', '1');
INSERT INTO `question_grade` VALUES ('2596', '109', '589', '单选题', '4', '1');
INSERT INTO `question_grade` VALUES ('2597', '109', '590', '单选题', '5', '1');
INSERT INTO `question_grade` VALUES ('2598', '109', '591', '单选题', '6', '1');
INSERT INTO `question_grade` VALUES ('2599', '109', '592', '单选题', '7', '1');
INSERT INTO `question_grade` VALUES ('2600', '109', '593', '单选题', '8', '1');
INSERT INTO `question_grade` VALUES ('2601', '109', '594', '单选题', '9', '1');
INSERT INTO `question_grade` VALUES ('2602', '109', '595', '单选题', '10', '1');
INSERT INTO `question_grade` VALUES ('2603', '109', '596', '多选题', '1', '2');
INSERT INTO `question_grade` VALUES ('2604', '109', '597', '多选题', '2', '2');
INSERT INTO `question_grade` VALUES ('2605', '109', '598', '多选题', '3', '2');
INSERT INTO `question_grade` VALUES ('2606', '109', '599', '多选题', '4', '2');
INSERT INTO `question_grade` VALUES ('2607', '109', '600', '多选题', '5', '2');
INSERT INTO `question_grade` VALUES ('2608', '109', '601', '填空题', '1', '5');
INSERT INTO `question_grade` VALUES ('2609', '109', '602', '填空题', '2', '5');
INSERT INTO `question_grade` VALUES ('2610', '109', '603', '填空题', '3', '5');
INSERT INTO `question_grade` VALUES ('2611', '109', '604', '填空题', '4', '0');
INSERT INTO `question_grade` VALUES ('2612', '109', '605', '编程题', '1', '10');
INSERT INTO `question_grade` VALUES ('2613', '109', '606', '编程题', '2', '10');
INSERT INTO `question_grade` VALUES ('2614', '109', '607', '编程题', '3', '10');
INSERT INTO `question_grade` VALUES ('2615', '109', '608', '编程题', '4', '10');
INSERT INTO `question_grade` VALUES ('2616', '109', '609', '编程题', '5', '0');
INSERT INTO `question_grade` VALUES ('2617', '109', '610', '编程题', '6', '0');
INSERT INTO `question_grade` VALUES ('2618', '110', '586', '单选题', '1', '1');
INSERT INTO `question_grade` VALUES ('2619', '110', '587', '单选题', '2', '1');
INSERT INTO `question_grade` VALUES ('2620', '110', '588', '单选题', '3', '1');
INSERT INTO `question_grade` VALUES ('2621', '110', '589', '单选题', '4', '1');
INSERT INTO `question_grade` VALUES ('2622', '110', '590', '单选题', '5', '1');
INSERT INTO `question_grade` VALUES ('2623', '110', '591', '单选题', '6', '1');
INSERT INTO `question_grade` VALUES ('2624', '110', '592', '单选题', '7', '1');
INSERT INTO `question_grade` VALUES ('2625', '110', '593', '单选题', '8', '1');
INSERT INTO `question_grade` VALUES ('2626', '110', '594', '单选题', '9', '1');
INSERT INTO `question_grade` VALUES ('2627', '110', '595', '单选题', '10', '1');
INSERT INTO `question_grade` VALUES ('2628', '110', '596', '多选题', '1', '2');
INSERT INTO `question_grade` VALUES ('2629', '110', '597', '多选题', '2', '2');
INSERT INTO `question_grade` VALUES ('2630', '110', '598', '多选题', '3', '2');
INSERT INTO `question_grade` VALUES ('2631', '110', '599', '多选题', '4', '2');
INSERT INTO `question_grade` VALUES ('2632', '110', '600', '多选题', '5', '2');
INSERT INTO `question_grade` VALUES ('2633', '110', '601', '填空题', '1', '5');
INSERT INTO `question_grade` VALUES ('2634', '110', '602', '填空题', '2', '5');
INSERT INTO `question_grade` VALUES ('2635', '110', '603', '填空题', '3', '5');
INSERT INTO `question_grade` VALUES ('2636', '110', '604', '填空题', '4', '5');
INSERT INTO `question_grade` VALUES ('2637', '110', '605', '编程题', '1', '10');
INSERT INTO `question_grade` VALUES ('2638', '110', '606', '编程题', '2', '10');
INSERT INTO `question_grade` VALUES ('2639', '110', '607', '编程题', '3', '10');
INSERT INTO `question_grade` VALUES ('2640', '110', '608', '编程题', '4', '10');
INSERT INTO `question_grade` VALUES ('2641', '110', '609', '编程题', '5', '0');
INSERT INTO `question_grade` VALUES ('2642', '110', '610', '编程题', '6', '0');
INSERT INTO `question_grade` VALUES ('2643', '111', '586', '单选题', '1', '1');
INSERT INTO `question_grade` VALUES ('2644', '111', '587', '单选题', '2', '1');
INSERT INTO `question_grade` VALUES ('2645', '111', '588', '单选题', '3', '1');
INSERT INTO `question_grade` VALUES ('2646', '111', '589', '单选题', '4', '1');
INSERT INTO `question_grade` VALUES ('2647', '111', '590', '单选题', '5', '1');
INSERT INTO `question_grade` VALUES ('2648', '111', '591', '单选题', '6', '1');
INSERT INTO `question_grade` VALUES ('2649', '111', '592', '单选题', '7', '1');
INSERT INTO `question_grade` VALUES ('2650', '111', '593', '单选题', '8', '1');
INSERT INTO `question_grade` VALUES ('2651', '111', '594', '单选题', '9', '1');
INSERT INTO `question_grade` VALUES ('2652', '111', '595', '单选题', '10', '1');
INSERT INTO `question_grade` VALUES ('2653', '111', '596', '多选题', '1', '2');
INSERT INTO `question_grade` VALUES ('2654', '111', '597', '多选题', '2', '2');
INSERT INTO `question_grade` VALUES ('2655', '111', '598', '多选题', '3', '2');
INSERT INTO `question_grade` VALUES ('2656', '111', '599', '多选题', '4', '2');
INSERT INTO `question_grade` VALUES ('2657', '111', '600', '多选题', '5', '2');
INSERT INTO `question_grade` VALUES ('2658', '111', '601', '填空题', '1', '5');
INSERT INTO `question_grade` VALUES ('2659', '111', '602', '填空题', '2', '5');
INSERT INTO `question_grade` VALUES ('2660', '111', '603', '填空题', '3', '0');
INSERT INTO `question_grade` VALUES ('2661', '111', '604', '填空题', '4', '0');
INSERT INTO `question_grade` VALUES ('2662', '111', '605', '编程题', '1', '10');
INSERT INTO `question_grade` VALUES ('2663', '111', '606', '编程题', '2', '3');
INSERT INTO `question_grade` VALUES ('2664', '111', '607', '编程题', '3', '10');
INSERT INTO `question_grade` VALUES ('2665', '111', '608', '编程题', '4', '10');
INSERT INTO `question_grade` VALUES ('2666', '111', '609', '编程题', '5', '0');
INSERT INTO `question_grade` VALUES ('2667', '111', '610', '编程题', '6', '0');
INSERT INTO `question_grade` VALUES ('2668', '112', '586', '单选题', '1', '1');
INSERT INTO `question_grade` VALUES ('2669', '112', '587', '单选题', '2', '1');
INSERT INTO `question_grade` VALUES ('2670', '112', '588', '单选题', '3', '1');
INSERT INTO `question_grade` VALUES ('2671', '112', '589', '单选题', '4', '1');
INSERT INTO `question_grade` VALUES ('2672', '112', '590', '单选题', '5', '1');
INSERT INTO `question_grade` VALUES ('2673', '112', '591', '单选题', '6', '1');
INSERT INTO `question_grade` VALUES ('2674', '112', '592', '单选题', '7', '1');
INSERT INTO `question_grade` VALUES ('2675', '112', '593', '单选题', '8', '1');
INSERT INTO `question_grade` VALUES ('2676', '112', '594', '单选题', '9', '1');
INSERT INTO `question_grade` VALUES ('2677', '112', '595', '单选题', '10', '1');
INSERT INTO `question_grade` VALUES ('2678', '112', '596', '多选题', '1', '2');
INSERT INTO `question_grade` VALUES ('2679', '112', '597', '多选题', '2', '2');
INSERT INTO `question_grade` VALUES ('2680', '112', '598', '多选题', '3', '2');
INSERT INTO `question_grade` VALUES ('2681', '112', '599', '多选题', '4', '2');
INSERT INTO `question_grade` VALUES ('2682', '112', '600', '多选题', '5', '2');
INSERT INTO `question_grade` VALUES ('2683', '112', '601', '填空题', '1', '2');
INSERT INTO `question_grade` VALUES ('2684', '112', '602', '填空题', '2', '5');
INSERT INTO `question_grade` VALUES ('2685', '112', '603', '填空题', '3', '5');
INSERT INTO `question_grade` VALUES ('2686', '112', '604', '填空题', '4', '0');
INSERT INTO `question_grade` VALUES ('2687', '112', '605', '编程题', '1', '8');
INSERT INTO `question_grade` VALUES ('2688', '112', '606', '编程题', '2', '10');
INSERT INTO `question_grade` VALUES ('2689', '112', '607', '编程题', '3', '5');
INSERT INTO `question_grade` VALUES ('2690', '112', '608', '编程题', '4', '8');
INSERT INTO `question_grade` VALUES ('2691', '112', '609', '编程题', '5', '5');
INSERT INTO `question_grade` VALUES ('2692', '112', '610', '编程题', '6', '0');
INSERT INTO `question_grade` VALUES ('2693', '113', '586', '单选题', '1', '1');
INSERT INTO `question_grade` VALUES ('2694', '113', '587', '单选题', '2', '1');
INSERT INTO `question_grade` VALUES ('2695', '113', '588', '单选题', '3', '1');
INSERT INTO `question_grade` VALUES ('2696', '113', '589', '单选题', '4', '1');
INSERT INTO `question_grade` VALUES ('2697', '113', '590', '单选题', '5', '1');
INSERT INTO `question_grade` VALUES ('2698', '113', '591', '单选题', '6', '1');
INSERT INTO `question_grade` VALUES ('2699', '113', '592', '单选题', '7', '1');
INSERT INTO `question_grade` VALUES ('2700', '113', '593', '单选题', '8', '1');
INSERT INTO `question_grade` VALUES ('2701', '113', '594', '单选题', '9', '1');
INSERT INTO `question_grade` VALUES ('2702', '113', '595', '单选题', '10', '1');
INSERT INTO `question_grade` VALUES ('2703', '113', '596', '多选题', '1', '2');
INSERT INTO `question_grade` VALUES ('2704', '113', '597', '多选题', '2', '2');
INSERT INTO `question_grade` VALUES ('2705', '113', '598', '多选题', '3', '0');
INSERT INTO `question_grade` VALUES ('2706', '113', '599', '多选题', '4', '0');
INSERT INTO `question_grade` VALUES ('2707', '113', '600', '多选题', '5', '0');
INSERT INTO `question_grade` VALUES ('2708', '113', '601', '填空题', '1', '5');
INSERT INTO `question_grade` VALUES ('2709', '113', '602', '填空题', '2', '5');
INSERT INTO `question_grade` VALUES ('2710', '113', '603', '填空题', '3', '2');
INSERT INTO `question_grade` VALUES ('2711', '113', '604', '填空题', '4', '3');
INSERT INTO `question_grade` VALUES ('2712', '113', '605', '编程题', '1', '10');
INSERT INTO `question_grade` VALUES ('2713', '113', '606', '编程题', '2', '10');
INSERT INTO `question_grade` VALUES ('2714', '113', '607', '编程题', '3', '10');
INSERT INTO `question_grade` VALUES ('2715', '113', '608', '编程题', '4', '10');
INSERT INTO `question_grade` VALUES ('2716', '113', '609', '编程题', '5', '10');
INSERT INTO `question_grade` VALUES ('2717', '113', '610', '编程题', '6', '0');
INSERT INTO `question_grade` VALUES ('2718', '114', '586', '单选题', '1', '1');
INSERT INTO `question_grade` VALUES ('2719', '114', '587', '单选题', '2', '1');
INSERT INTO `question_grade` VALUES ('2720', '114', '588', '单选题', '3', '1');
INSERT INTO `question_grade` VALUES ('2721', '114', '589', '单选题', '4', '1');
INSERT INTO `question_grade` VALUES ('2722', '114', '590', '单选题', '5', '1');
INSERT INTO `question_grade` VALUES ('2723', '114', '591', '单选题', '6', '1');
INSERT INTO `question_grade` VALUES ('2724', '114', '592', '单选题', '7', '1');
INSERT INTO `question_grade` VALUES ('2725', '114', '593', '单选题', '8', '1');
INSERT INTO `question_grade` VALUES ('2726', '114', '594', '单选题', '9', '1');
INSERT INTO `question_grade` VALUES ('2727', '114', '595', '单选题', '10', '1');
INSERT INTO `question_grade` VALUES ('2728', '114', '596', '多选题', '1', '2');
INSERT INTO `question_grade` VALUES ('2729', '114', '597', '多选题', '2', '2');
INSERT INTO `question_grade` VALUES ('2730', '114', '598', '多选题', '3', '2');
INSERT INTO `question_grade` VALUES ('2731', '114', '599', '多选题', '4', '2');
INSERT INTO `question_grade` VALUES ('2732', '114', '600', '多选题', '5', '0');
INSERT INTO `question_grade` VALUES ('2733', '114', '601', '填空题', '1', '5');
INSERT INTO `question_grade` VALUES ('2734', '114', '602', '填空题', '2', '5');
INSERT INTO `question_grade` VALUES ('2735', '114', '603', '填空题', '3', '5');
INSERT INTO `question_grade` VALUES ('2736', '114', '604', '填空题', '4', '5');
INSERT INTO `question_grade` VALUES ('2737', '114', '605', '编程题', '1', '10');
INSERT INTO `question_grade` VALUES ('2738', '114', '606', '编程题', '2', '10');
INSERT INTO `question_grade` VALUES ('2739', '114', '607', '编程题', '3', '10');
INSERT INTO `question_grade` VALUES ('2740', '114', '608', '编程题', '4', '10');
INSERT INTO `question_grade` VALUES ('2741', '114', '609', '编程题', '5', '8');
INSERT INTO `question_grade` VALUES ('2742', '114', '610', '编程题', '6', '8');
INSERT INTO `question_grade` VALUES ('2743', '115', '586', '单选题', '1', '1');
INSERT INTO `question_grade` VALUES ('2744', '115', '587', '单选题', '2', '1');
INSERT INTO `question_grade` VALUES ('2745', '115', '588', '单选题', '3', '1');
INSERT INTO `question_grade` VALUES ('2746', '115', '589', '单选题', '4', '1');
INSERT INTO `question_grade` VALUES ('2747', '115', '590', '单选题', '5', '1');
INSERT INTO `question_grade` VALUES ('2748', '115', '591', '单选题', '6', '1');
INSERT INTO `question_grade` VALUES ('2749', '115', '592', '单选题', '7', '1');
INSERT INTO `question_grade` VALUES ('2750', '115', '593', '单选题', '8', '1');
INSERT INTO `question_grade` VALUES ('2751', '115', '594', '单选题', '9', '1');
INSERT INTO `question_grade` VALUES ('2752', '115', '595', '单选题', '10', '0');
INSERT INTO `question_grade` VALUES ('2753', '115', '596', '多选题', '1', '2');
INSERT INTO `question_grade` VALUES ('2754', '115', '597', '多选题', '2', '2');
INSERT INTO `question_grade` VALUES ('2755', '115', '598', '多选题', '3', '2');
INSERT INTO `question_grade` VALUES ('2756', '115', '599', '多选题', '4', '2');
INSERT INTO `question_grade` VALUES ('2757', '115', '600', '多选题', '5', '2');
INSERT INTO `question_grade` VALUES ('2758', '115', '601', '填空题', '1', '5');
INSERT INTO `question_grade` VALUES ('2759', '115', '602', '填空题', '2', '5');
INSERT INTO `question_grade` VALUES ('2760', '115', '603', '填空题', '3', '5');
INSERT INTO `question_grade` VALUES ('2761', '115', '604', '填空题', '4', '0');
INSERT INTO `question_grade` VALUES ('2762', '115', '605', '编程题', '1', '10');
INSERT INTO `question_grade` VALUES ('2763', '115', '606', '编程题', '2', '10');
INSERT INTO `question_grade` VALUES ('2764', '115', '607', '编程题', '3', '10');
INSERT INTO `question_grade` VALUES ('2765', '115', '608', '编程题', '4', '10');
INSERT INTO `question_grade` VALUES ('2766', '115', '609', '编程题', '5', '10');
INSERT INTO `question_grade` VALUES ('2767', '115', '610', '编程题', '6', '5');
INSERT INTO `question_grade` VALUES ('2768', '116', '586', '单选题', '1', '1');
INSERT INTO `question_grade` VALUES ('2769', '116', '587', '单选题', '2', '1');
INSERT INTO `question_grade` VALUES ('2770', '116', '588', '单选题', '3', '1');
INSERT INTO `question_grade` VALUES ('2771', '116', '589', '单选题', '4', '1');
INSERT INTO `question_grade` VALUES ('2772', '116', '590', '单选题', '5', '1');
INSERT INTO `question_grade` VALUES ('2773', '116', '591', '单选题', '6', '1');
INSERT INTO `question_grade` VALUES ('2774', '116', '592', '单选题', '7', '1');
INSERT INTO `question_grade` VALUES ('2775', '116', '593', '单选题', '8', '1');
INSERT INTO `question_grade` VALUES ('2776', '116', '594', '单选题', '9', '1');
INSERT INTO `question_grade` VALUES ('2777', '116', '595', '单选题', '10', '1');
INSERT INTO `question_grade` VALUES ('2778', '116', '596', '多选题', '1', '2');
INSERT INTO `question_grade` VALUES ('2779', '116', '597', '多选题', '2', '2');
INSERT INTO `question_grade` VALUES ('2780', '116', '598', '多选题', '3', '2');
INSERT INTO `question_grade` VALUES ('2781', '116', '599', '多选题', '4', '2');
INSERT INTO `question_grade` VALUES ('2782', '116', '600', '多选题', '5', '2');
INSERT INTO `question_grade` VALUES ('2783', '116', '601', '填空题', '1', '5');
INSERT INTO `question_grade` VALUES ('2784', '116', '602', '填空题', '2', '5');
INSERT INTO `question_grade` VALUES ('2785', '116', '603', '填空题', '3', '5');
INSERT INTO `question_grade` VALUES ('2786', '116', '604', '填空题', '4', '0');
INSERT INTO `question_grade` VALUES ('2787', '116', '605', '编程题', '1', '10');
INSERT INTO `question_grade` VALUES ('2788', '116', '606', '编程题', '2', '10');
INSERT INTO `question_grade` VALUES ('2789', '116', '607', '编程题', '3', '5');
INSERT INTO `question_grade` VALUES ('2790', '116', '608', '编程题', '4', '10');
INSERT INTO `question_grade` VALUES ('2791', '116', '609', '编程题', '5', '10');
INSERT INTO `question_grade` VALUES ('2792', '116', '610', '编程题', '6', '8');
INSERT INTO `question_grade` VALUES ('2793', '117', '586', '单选题', '1', '1');
INSERT INTO `question_grade` VALUES ('2794', '117', '587', '单选题', '2', '1');
INSERT INTO `question_grade` VALUES ('2795', '117', '588', '单选题', '3', '1');
INSERT INTO `question_grade` VALUES ('2796', '117', '589', '单选题', '4', '1');
INSERT INTO `question_grade` VALUES ('2797', '117', '590', '单选题', '5', '1');
INSERT INTO `question_grade` VALUES ('2798', '117', '591', '单选题', '6', '0');
INSERT INTO `question_grade` VALUES ('2799', '117', '592', '单选题', '7', '1');
INSERT INTO `question_grade` VALUES ('2800', '117', '593', '单选题', '8', '1');
INSERT INTO `question_grade` VALUES ('2801', '117', '594', '单选题', '9', '1');
INSERT INTO `question_grade` VALUES ('2802', '117', '595', '单选题', '10', '1');
INSERT INTO `question_grade` VALUES ('2803', '117', '596', '多选题', '1', '2');
INSERT INTO `question_grade` VALUES ('2804', '117', '597', '多选题', '2', '2');
INSERT INTO `question_grade` VALUES ('2805', '117', '598', '多选题', '3', '2');
INSERT INTO `question_grade` VALUES ('2806', '117', '599', '多选题', '4', '2');
INSERT INTO `question_grade` VALUES ('2807', '117', '600', '多选题', '5', '2');
INSERT INTO `question_grade` VALUES ('2808', '117', '601', '填空题', '1', '5');
INSERT INTO `question_grade` VALUES ('2809', '117', '602', '填空题', '2', '2');
INSERT INTO `question_grade` VALUES ('2810', '117', '603', '填空题', '3', '3');
INSERT INTO `question_grade` VALUES ('2811', '117', '604', '填空题', '4', '5');
INSERT INTO `question_grade` VALUES ('2812', '117', '605', '编程题', '1', '10');
INSERT INTO `question_grade` VALUES ('2813', '117', '606', '编程题', '2', '10');
INSERT INTO `question_grade` VALUES ('2814', '117', '607', '编程题', '3', '10');
INSERT INTO `question_grade` VALUES ('2815', '117', '608', '编程题', '4', '5');
INSERT INTO `question_grade` VALUES ('2816', '117', '609', '编程题', '5', '10');
INSERT INTO `question_grade` VALUES ('2817', '117', '610', '编程题', '6', '10');
INSERT INTO `question_grade` VALUES ('2818', '118', '586', '单选题', '1', '1');
INSERT INTO `question_grade` VALUES ('2819', '118', '587', '单选题', '2', '1');
INSERT INTO `question_grade` VALUES ('2820', '118', '588', '单选题', '3', '1');
INSERT INTO `question_grade` VALUES ('2821', '118', '589', '单选题', '4', '1');
INSERT INTO `question_grade` VALUES ('2822', '118', '590', '单选题', '5', '1');
INSERT INTO `question_grade` VALUES ('2823', '118', '591', '单选题', '6', '1');
INSERT INTO `question_grade` VALUES ('2824', '118', '592', '单选题', '7', '1');
INSERT INTO `question_grade` VALUES ('2825', '118', '593', '单选题', '8', '1');
INSERT INTO `question_grade` VALUES ('2826', '118', '594', '单选题', '9', '1');
INSERT INTO `question_grade` VALUES ('2827', '118', '595', '单选题', '10', '1');
INSERT INTO `question_grade` VALUES ('2828', '118', '596', '多选题', '1', '2');
INSERT INTO `question_grade` VALUES ('2829', '118', '597', '多选题', '2', '2');
INSERT INTO `question_grade` VALUES ('2830', '118', '598', '多选题', '3', '2');
INSERT INTO `question_grade` VALUES ('2831', '118', '599', '多选题', '4', '2');
INSERT INTO `question_grade` VALUES ('2832', '118', '600', '多选题', '5', '0');
INSERT INTO `question_grade` VALUES ('2833', '118', '601', '填空题', '1', '5');
INSERT INTO `question_grade` VALUES ('2834', '118', '602', '填空题', '2', '5');
INSERT INTO `question_grade` VALUES ('2835', '118', '603', '填空题', '3', '5');
INSERT INTO `question_grade` VALUES ('2836', '118', '604', '填空题', '4', '5');
INSERT INTO `question_grade` VALUES ('2837', '118', '605', '编程题', '1', '10');
INSERT INTO `question_grade` VALUES ('2838', '118', '606', '编程题', '2', '10');
INSERT INTO `question_grade` VALUES ('2839', '118', '607', '编程题', '3', '10');
INSERT INTO `question_grade` VALUES ('2840', '118', '608', '编程题', '4', '10');
INSERT INTO `question_grade` VALUES ('2841', '118', '609', '编程题', '5', '10');
INSERT INTO `question_grade` VALUES ('2842', '118', '610', '编程题', '6', '4');
INSERT INTO `question_grade` VALUES ('2843', '119', '586', '单选题', '1', '1');
INSERT INTO `question_grade` VALUES ('2844', '119', '587', '单选题', '2', '1');
INSERT INTO `question_grade` VALUES ('2845', '119', '588', '单选题', '3', '1');
INSERT INTO `question_grade` VALUES ('2846', '119', '589', '单选题', '4', '1');
INSERT INTO `question_grade` VALUES ('2847', '119', '590', '单选题', '5', '1');
INSERT INTO `question_grade` VALUES ('2848', '119', '591', '单选题', '6', '1');
INSERT INTO `question_grade` VALUES ('2849', '119', '592', '单选题', '7', '1');
INSERT INTO `question_grade` VALUES ('2850', '119', '593', '单选题', '8', '1');
INSERT INTO `question_grade` VALUES ('2851', '119', '594', '单选题', '9', '1');
INSERT INTO `question_grade` VALUES ('2852', '119', '595', '单选题', '10', '1');
INSERT INTO `question_grade` VALUES ('2853', '119', '596', '多选题', '1', '2');
INSERT INTO `question_grade` VALUES ('2854', '119', '597', '多选题', '2', '2');
INSERT INTO `question_grade` VALUES ('2855', '119', '598', '多选题', '3', '2');
INSERT INTO `question_grade` VALUES ('2856', '119', '599', '多选题', '4', '2');
INSERT INTO `question_grade` VALUES ('2857', '119', '600', '多选题', '5', '2');
INSERT INTO `question_grade` VALUES ('2858', '119', '601', '填空题', '1', '5');
INSERT INTO `question_grade` VALUES ('2859', '119', '602', '填空题', '2', '5');
INSERT INTO `question_grade` VALUES ('2860', '119', '603', '填空题', '3', '5');
INSERT INTO `question_grade` VALUES ('2861', '119', '604', '填空题', '4', '5');
INSERT INTO `question_grade` VALUES ('2862', '119', '605', '编程题', '1', '10');
INSERT INTO `question_grade` VALUES ('2863', '119', '606', '编程题', '2', '5');
INSERT INTO `question_grade` VALUES ('2864', '119', '607', '编程题', '3', '10');
INSERT INTO `question_grade` VALUES ('2865', '119', '608', '编程题', '4', '10');
INSERT INTO `question_grade` VALUES ('2866', '119', '609', '编程题', '5', '5');
INSERT INTO `question_grade` VALUES ('2867', '119', '610', '编程题', '6', '5');
INSERT INTO `question_grade` VALUES ('2868', '120', '586', '单选题', '1', '1');
INSERT INTO `question_grade` VALUES ('2869', '120', '587', '单选题', '2', '1');
INSERT INTO `question_grade` VALUES ('2870', '120', '588', '单选题', '3', '1');
INSERT INTO `question_grade` VALUES ('2871', '120', '589', '单选题', '4', '1');
INSERT INTO `question_grade` VALUES ('2872', '120', '590', '单选题', '5', '1');
INSERT INTO `question_grade` VALUES ('2873', '120', '591', '单选题', '6', '1');
INSERT INTO `question_grade` VALUES ('2874', '120', '592', '单选题', '7', '1');
INSERT INTO `question_grade` VALUES ('2875', '120', '593', '单选题', '8', '1');
INSERT INTO `question_grade` VALUES ('2876', '120', '594', '单选题', '9', '1');
INSERT INTO `question_grade` VALUES ('2877', '120', '595', '单选题', '10', '0');
INSERT INTO `question_grade` VALUES ('2878', '120', '596', '多选题', '1', '2');
INSERT INTO `question_grade` VALUES ('2879', '120', '597', '多选题', '2', '2');
INSERT INTO `question_grade` VALUES ('2880', '120', '598', '多选题', '3', '2');
INSERT INTO `question_grade` VALUES ('2881', '120', '599', '多选题', '4', '2');
INSERT INTO `question_grade` VALUES ('2882', '120', '600', '多选题', '5', '2');
INSERT INTO `question_grade` VALUES ('2883', '120', '601', '填空题', '1', '5');
INSERT INTO `question_grade` VALUES ('2884', '120', '602', '填空题', '2', '5');
INSERT INTO `question_grade` VALUES ('2885', '120', '603', '填空题', '3', '5');
INSERT INTO `question_grade` VALUES ('2886', '120', '604', '填空题', '4', '5');
INSERT INTO `question_grade` VALUES ('2887', '120', '605', '编程题', '1', '10');
INSERT INTO `question_grade` VALUES ('2888', '120', '606', '编程题', '2', '10');
INSERT INTO `question_grade` VALUES ('2889', '120', '607', '编程题', '3', '10');
INSERT INTO `question_grade` VALUES ('2890', '120', '608', '编程题', '4', '10');
INSERT INTO `question_grade` VALUES ('2891', '120', '609', '编程题', '5', '5');
INSERT INTO `question_grade` VALUES ('2892', '120', '610', '编程题', '6', '2');
INSERT INTO `question_grade` VALUES ('2893', '121', '586', '单选题', '1', '1');
INSERT INTO `question_grade` VALUES ('2894', '121', '587', '单选题', '2', '1');
INSERT INTO `question_grade` VALUES ('2895', '121', '588', '单选题', '3', '1');
INSERT INTO `question_grade` VALUES ('2896', '121', '589', '单选题', '4', '1');
INSERT INTO `question_grade` VALUES ('2897', '121', '590', '单选题', '5', '1');
INSERT INTO `question_grade` VALUES ('2898', '121', '591', '单选题', '6', '1');
INSERT INTO `question_grade` VALUES ('2899', '121', '592', '单选题', '7', '1');
INSERT INTO `question_grade` VALUES ('2900', '121', '593', '单选题', '8', '1');
INSERT INTO `question_grade` VALUES ('2901', '121', '594', '单选题', '9', '1');
INSERT INTO `question_grade` VALUES ('2902', '121', '595', '单选题', '10', '1');
INSERT INTO `question_grade` VALUES ('2903', '121', '596', '多选题', '1', '2');
INSERT INTO `question_grade` VALUES ('2904', '121', '597', '多选题', '2', '2');
INSERT INTO `question_grade` VALUES ('2905', '121', '598', '多选题', '3', '2');
INSERT INTO `question_grade` VALUES ('2906', '121', '599', '多选题', '4', '2');
INSERT INTO `question_grade` VALUES ('2907', '121', '600', '多选题', '5', '2');
INSERT INTO `question_grade` VALUES ('2908', '121', '601', '填空题', '1', '5');
INSERT INTO `question_grade` VALUES ('2909', '121', '602', '填空题', '2', '5');
INSERT INTO `question_grade` VALUES ('2910', '121', '603', '填空题', '3', '5');
INSERT INTO `question_grade` VALUES ('2911', '121', '604', '填空题', '4', '5');
INSERT INTO `question_grade` VALUES ('2912', '121', '605', '编程题', '1', '10');
INSERT INTO `question_grade` VALUES ('2913', '121', '606', '编程题', '2', '10');
INSERT INTO `question_grade` VALUES ('2914', '121', '607', '编程题', '3', '10');
INSERT INTO `question_grade` VALUES ('2915', '121', '608', '编程题', '4', '10');
INSERT INTO `question_grade` VALUES ('2916', '121', '609', '编程题', '5', '7');
INSERT INTO `question_grade` VALUES ('2917', '121', '610', '编程题', '6', '0');
INSERT INTO `question_grade` VALUES ('2918', '122', '586', '单选题', '1', '1');
INSERT INTO `question_grade` VALUES ('2919', '122', '587', '单选题', '2', '1');
INSERT INTO `question_grade` VALUES ('2920', '122', '588', '单选题', '3', '1');
INSERT INTO `question_grade` VALUES ('2921', '122', '589', '单选题', '4', '1');
INSERT INTO `question_grade` VALUES ('2922', '122', '590', '单选题', '5', '1');
INSERT INTO `question_grade` VALUES ('2923', '122', '591', '单选题', '6', '1');
INSERT INTO `question_grade` VALUES ('2924', '122', '592', '单选题', '7', '1');
INSERT INTO `question_grade` VALUES ('2925', '122', '593', '单选题', '8', '1');
INSERT INTO `question_grade` VALUES ('2926', '122', '594', '单选题', '9', '1');
INSERT INTO `question_grade` VALUES ('2927', '122', '595', '单选题', '10', '1');
INSERT INTO `question_grade` VALUES ('2928', '122', '596', '多选题', '1', '2');
INSERT INTO `question_grade` VALUES ('2929', '122', '597', '多选题', '2', '2');
INSERT INTO `question_grade` VALUES ('2930', '122', '598', '多选题', '3', '2');
INSERT INTO `question_grade` VALUES ('2931', '122', '599', '多选题', '4', '2');
INSERT INTO `question_grade` VALUES ('2932', '122', '600', '多选题', '5', '2');
INSERT INTO `question_grade` VALUES ('2933', '122', '601', '填空题', '1', '5');
INSERT INTO `question_grade` VALUES ('2934', '122', '602', '填空题', '2', '5');
INSERT INTO `question_grade` VALUES ('2935', '122', '603', '填空题', '3', '5');
INSERT INTO `question_grade` VALUES ('2936', '122', '604', '填空题', '4', '5');
INSERT INTO `question_grade` VALUES ('2937', '122', '605', '编程题', '1', '10');
INSERT INTO `question_grade` VALUES ('2938', '122', '606', '编程题', '2', '10');
INSERT INTO `question_grade` VALUES ('2939', '122', '607', '编程题', '3', '10');
INSERT INTO `question_grade` VALUES ('2940', '122', '608', '编程题', '4', '10');
INSERT INTO `question_grade` VALUES ('2941', '122', '609', '编程题', '5', '10');
INSERT INTO `question_grade` VALUES ('2942', '122', '610', '编程题', '6', '5');
INSERT INTO `question_grade` VALUES ('2943', '123', '586', '单选题', '1', '1');
INSERT INTO `question_grade` VALUES ('2944', '123', '587', '单选题', '2', '1');
INSERT INTO `question_grade` VALUES ('2945', '123', '588', '单选题', '3', '1');
INSERT INTO `question_grade` VALUES ('2946', '123', '589', '单选题', '4', '1');
INSERT INTO `question_grade` VALUES ('2947', '123', '590', '单选题', '5', '1');
INSERT INTO `question_grade` VALUES ('2948', '123', '591', '单选题', '6', '1');
INSERT INTO `question_grade` VALUES ('2949', '123', '592', '单选题', '7', '1');
INSERT INTO `question_grade` VALUES ('2950', '123', '593', '单选题', '8', '1');
INSERT INTO `question_grade` VALUES ('2951', '123', '594', '单选题', '9', '0');
INSERT INTO `question_grade` VALUES ('2952', '123', '595', '单选题', '10', '0');
INSERT INTO `question_grade` VALUES ('2953', '123', '596', '多选题', '1', '2');
INSERT INTO `question_grade` VALUES ('2954', '123', '597', '多选题', '2', '2');
INSERT INTO `question_grade` VALUES ('2955', '123', '598', '多选题', '3', '2');
INSERT INTO `question_grade` VALUES ('2956', '123', '599', '多选题', '4', '2');
INSERT INTO `question_grade` VALUES ('2957', '123', '600', '多选题', '5', '2');
INSERT INTO `question_grade` VALUES ('2958', '123', '601', '填空题', '1', '5');
INSERT INTO `question_grade` VALUES ('2959', '123', '602', '填空题', '2', '5');
INSERT INTO `question_grade` VALUES ('2960', '123', '603', '填空题', '3', '5');
INSERT INTO `question_grade` VALUES ('2961', '123', '604', '填空题', '4', '0');
INSERT INTO `question_grade` VALUES ('2962', '123', '605', '编程题', '1', '10');
INSERT INTO `question_grade` VALUES ('2963', '123', '606', '编程题', '2', '5');
INSERT INTO `question_grade` VALUES ('2964', '123', '607', '编程题', '3', '10');
INSERT INTO `question_grade` VALUES ('2965', '123', '608', '编程题', '4', '10');
INSERT INTO `question_grade` VALUES ('2966', '123', '609', '编程题', '5', '10');
INSERT INTO `question_grade` VALUES ('2967', '123', '610', '编程题', '6', '10');

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
) ENGINE=InnoDB AUTO_INCREMENT=692 DEFAULT CHARSET=utf8;

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
INSERT INTO `question_score` VALUES ('611', '29', '16', '单选题', '1', '6', '28', '1');
INSERT INTO `question_score` VALUES ('612', '29', '17', '单选题', '2', '1', '17', '1');
INSERT INTO `question_score` VALUES ('613', '29', '18', '单选题', '3', '3', '17', '1');
INSERT INTO `question_score` VALUES ('614', '29', '19', '单选题', '4', '2', '17', '1');
INSERT INTO `question_score` VALUES ('615', '29', '20', '单选题', '5', '5', '25', '1');
INSERT INTO `question_score` VALUES ('616', '29', '21', '单选题', '6', '5', '25', '1');
INSERT INTO `question_score` VALUES ('617', '29', '22', '单选题', '7', '7', '30', '1');
INSERT INTO `question_score` VALUES ('618', '29', '23', '单选题', '8', '6', '26', '1');
INSERT INTO `question_score` VALUES ('619', '29', '24', '单选题', '9', '9', '38', '1');
INSERT INTO `question_score` VALUES ('620', '29', '25', '单选题', '10', '6', '26', '1');
INSERT INTO `question_score` VALUES ('621', '29', '26', '单选题', '11', '7', '30', '1');
INSERT INTO `question_score` VALUES ('622', '29', '27', '单选题', '12', '8', '33', '1');
INSERT INTO `question_score` VALUES ('623', '29', '28', '单选题', '13', '8', '34', '1');
INSERT INTO `question_score` VALUES ('624', '29', '29', '单选题', '14', '11', '41', '1');
INSERT INTO `question_score` VALUES ('625', '29', '30', '单选题', '15', '12', '42', '1');
INSERT INTO `question_score` VALUES ('626', '29', '31', '单选题', '16', '6', '28', '1');
INSERT INTO `question_score` VALUES ('627', '29', '32', '单选题', '17', '1', '15', '1');
INSERT INTO `question_score` VALUES ('628', '29', '33', '单选题', '18', '1', '15', '1');
INSERT INTO `question_score` VALUES ('629', '29', '34', '单选题', '19', '1', '16', '1');
INSERT INTO `question_score` VALUES ('630', '29', '35', '单选题', '20', '1', '15', '1');
INSERT INTO `question_score` VALUES ('631', '29', '25', '判断题', '1', '3', '20', '1');
INSERT INTO `question_score` VALUES ('632', '29', '26', '判断题', '2', '5', '23', '1');
INSERT INTO `question_score` VALUES ('633', '29', '27', '判断题', '3', '3', '20', '1');
INSERT INTO `question_score` VALUES ('634', '29', '28', '判断题', '4', '4', '22', '1');
INSERT INTO `question_score` VALUES ('635', '29', '29', '判断题', '5', '5', '23', '1');
INSERT INTO `question_score` VALUES ('636', '29', '30', '判断题', '6', '7', '30', '1');
INSERT INTO `question_score` VALUES ('637', '29', '31', '判断题', '7', '6', '26', '1');
INSERT INTO `question_score` VALUES ('638', '29', '32', '判断题', '8', '1', '15', '1');
INSERT INTO `question_score` VALUES ('639', '29', '33', '判断题', '9', '11', '41', '1');
INSERT INTO `question_score` VALUES ('640', '29', '34', '判断题', '10', '12', '42', '1');
INSERT INTO `question_score` VALUES ('641', '29', '17', '填空题', '1', '6', '26', '2');
INSERT INTO `question_score` VALUES ('642', '29', '18', '填空题', '2', '6', '27', '2');
INSERT INTO `question_score` VALUES ('643', '29', '19', '填空题', '3', '5', '25', '2');
INSERT INTO `question_score` VALUES ('644', '29', '20', '填空题', '4', '1', '28', '2');
INSERT INTO `question_score` VALUES ('645', '29', '22', '填空题', '5', '12', '42', '2');
INSERT INTO `question_score` VALUES ('646', '29', '25', '填空题', '6', '2', '17', '2');
INSERT INTO `question_score` VALUES ('647', '29', '26', '填空题', '7', '8', '33', '2');
INSERT INTO `question_score` VALUES ('648', '29', '21', '填空题', '8', '18', '44', '2');
INSERT INTO `question_score` VALUES ('649', '29', '27', '填空题', '9', '6', '26', '2');
INSERT INTO `question_score` VALUES ('650', '29', '28', '填空题', '10', '1', '16', '2');
INSERT INTO `question_score` VALUES ('651', '29', '4', '简答题', '1', '5', '25', '10');
INSERT INTO `question_score` VALUES ('652', '29', '5', '简答题', '2', '5', '23@25', '10');
INSERT INTO `question_score` VALUES ('653', '30', '16', '单选题', '1', '6', '28', '1');
INSERT INTO `question_score` VALUES ('654', '30', '17', '单选题', '2', '1', '17', '1');
INSERT INTO `question_score` VALUES ('655', '30', '18', '单选题', '3', '3', '17', '1');
INSERT INTO `question_score` VALUES ('656', '30', '19', '单选题', '4', '2', '17', '1');
INSERT INTO `question_score` VALUES ('657', '30', '20', '单选题', '5', '5', '25', '1');
INSERT INTO `question_score` VALUES ('658', '30', '21', '单选题', '6', '5', '25', '1');
INSERT INTO `question_score` VALUES ('659', '30', '22', '单选题', '7', '7', '30', '1');
INSERT INTO `question_score` VALUES ('660', '30', '23', '单选题', '8', '6', '26', '1');
INSERT INTO `question_score` VALUES ('661', '30', '24', '单选题', '9', '9', '38', '1');
INSERT INTO `question_score` VALUES ('662', '30', '25', '单选题', '10', '6', '26', '1');
INSERT INTO `question_score` VALUES ('663', '30', '45', '单选题', '11', '7', '30', '1');
INSERT INTO `question_score` VALUES ('664', '30', '44', '单选题', '12', '1', '28', '1');
INSERT INTO `question_score` VALUES ('665', '30', '43', '单选题', '13', '7', '31', '1');
INSERT INTO `question_score` VALUES ('666', '30', '42', '单选题', '14', '10', '34', '1');
INSERT INTO `question_score` VALUES ('667', '30', '41', '单选题', '15', '6', '28', '1');
INSERT INTO `question_score` VALUES ('668', '30', '40', '单选题', '16', '5', '25', '1');
INSERT INTO `question_score` VALUES ('669', '30', '39', '单选题', '17', '6', '26', '1');
INSERT INTO `question_score` VALUES ('670', '30', '38', '单选题', '18', '4', '22', '1');
INSERT INTO `question_score` VALUES ('671', '30', '37', '单选题', '19', '7', '30', '1');
INSERT INTO `question_score` VALUES ('672', '30', '36', '单选题', '20', '2', '17', '1');
INSERT INTO `question_score` VALUES ('673', '30', '35', '判断题', '1', '3', '20', '1');
INSERT INTO `question_score` VALUES ('674', '30', '36', '判断题', '2', '1', '15', '1');
INSERT INTO `question_score` VALUES ('675', '30', '37', '判断题', '3', '2', '17', '1');
INSERT INTO `question_score` VALUES ('676', '30', '38', '判断题', '4', '4', '22', '1');
INSERT INTO `question_score` VALUES ('677', '30', '39', '判断题', '5', '5', '25', '1');
INSERT INTO `question_score` VALUES ('678', '30', '40', '判断题', '6', '9', '36', '1');
INSERT INTO `question_score` VALUES ('679', '30', '41', '判断题', '7', '6', '28', '1');
INSERT INTO `question_score` VALUES ('680', '30', '42', '判断题', '8', '8', '34', '1');
INSERT INTO `question_score` VALUES ('681', '30', '43', '判断题', '9', '1', '15', '1');
INSERT INTO `question_score` VALUES ('682', '30', '44', '判断题', '10', '1', '15', '1');
INSERT INTO `question_score` VALUES ('683', '30', '29', '填空题', '1', '1', '17', '2');
INSERT INTO `question_score` VALUES ('684', '30', '30', '填空题', '2', '5', '25', '2');
INSERT INTO `question_score` VALUES ('685', '30', '31', '填空题', '3', '6', '26', '2');
INSERT INTO `question_score` VALUES ('686', '30', '32', '填空题', '4', '6', '26', '2');
INSERT INTO `question_score` VALUES ('687', '30', '33', '填空题', '5', '3', '20', '2');
INSERT INTO `question_score` VALUES ('688', '30', '6', '简答题', '1', '7', '32', '15');
INSERT INTO `question_score` VALUES ('689', '30', '7', '简答题', '2', '9', '38', '15');
INSERT INTO `question_score` VALUES ('690', '30', '8', '简答题', '3', '6', '29', '15');
INSERT INTO `question_score` VALUES ('691', '30', '10', '简答题', '4', '9', '35@36@38', '15');

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
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8;

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
INSERT INTO `sc_question` VALUES ('52', '23', '有如下程序\n main()\n{ \n  int i,sum;\n  for(i=1;i<=3;sum++) sum+=i;\n  printf(“%d\\n”,sum);\n}\n该程序的执行结果是( )', '6', '3', '死循环', '0', 'C', '', '3', '3', '6', '5', '1', '1', '2020-05-18 11:43:48');
INSERT INTO `sc_question` VALUES ('57', '17', '设有程序段：\n int x=11,y=3,z；\n printf(“%d\\n”,z=(x%y,x/y))；\n输出结果是( )', '2', '0', '3', '1', 'C', '', '1557', '3', '6', '2', '1', '1', '2020-05-18 16:09:17');
INSERT INTO `sc_question` VALUES ('58', '17', '设变量x为float型且已赋值，则以下语句中能将x中的数值保留到小数点后两位，并将第三位四舍五入的是( )', 'x=x*100+0.5/100.0;', 'x=(x*100+0.5)/100.0;', 'x=(int)(x*100+0.5)/100.0;', 'x=(x/100+0.5)*100.0;', 'C', '', '3', '3', '6', '2', '1', '1', '2020-05-18 17:12:16');
INSERT INTO `sc_question` VALUES ('59', '31', '有以下程序\n  int f(int b[][4])\n   { int i,j,s=0;\n     for(j=0;j<4;j++)\n   { i=j;\n     if(i>2) i=3-j;\n     s+=b[j];\n    }\n    return s;\n   }\n    main( )\n   { int a[4][4]={{1,2,3,4},{0,2,4,5},{3,6,9,12},{3,2,1,0}};\n     printf(“%d\\n”,f(a));\n    }\n    执行后的输出结果是（ ）', '12', '11', '18', '16', 'D', '', '3', '3', '6', '6', '3', '1', '2020-05-18 17:15:38');
INSERT INTO `sc_question` VALUES ('60', '30', '有以下程序\n void sum(int *a)\n { \n  a[0]=a[1];\n  }\n main( )\n { \n  int aa[10]={1,2,3,4,5,6,7,8,9,10},i;\n   for(i=2;i>=0;i--) sum(&aa);\n     printf(“%d\\n”,aa[0]);\n  } 执行后的输出结果是（ ）', '4', '3', '2', '1', 'A', '', '3', '3', '6', '7', '2', '1', '2020-05-18 17:17:01');
INSERT INTO `sc_question` VALUES ('61', '28', '有以下程序\nvoid swap1(int c[])\n{ int t;\n  t=c[0];c[0]=c[1];c[1]=t;\n}\nvoid swap2(int c0,int c1)\n{ int t;\n  t=c0;c0=c1;c1=t;\n}\nmain( )\n{ int a[2]={3,5},b[2]={3,5};\n  swap1(a); swap2(b[0],b[1]);\n  printf(“%d %d %d %d\\n”,a[0],a[1],b[0],b[1]);\n} 其输出结果是（ ）', '5 3 5 3', '5 3 3 5', '3 5 3 5', '3 5 5 3', 'B', '', '3', '3', '6', '6', '2', '1', '2020-05-18 17:18:24');
INSERT INTO `sc_question` VALUES ('62', '36', '有以下程序\nmain( )\n{ char a[]=”abcdefg”,b[10]=”abcdefg”;\n  printf(“%d %d\\n”,sizeof(a),sizeof(b));\n} 执行后输出结果是（ ）', '7 7', '8 8', '8 10', '10 10', 'C', '', '3', '3', '6', '9', '2', '1', '2020-05-18 17:19:44');
INSERT INTO `sc_question` VALUES ('63', '33', '有以下程序段\n int a[10]={1,2,3,4,5,6,7,8,9,10},*p=&a[3],b;\n b=p[5];\n b中的值是（ ）', '5', '6', '8', '9', 'D', '', '3', '3', '6', '8', '2', '1', '2020-05-18 17:20:34');
INSERT INTO `sc_question` VALUES ('64', '22', '有以下程序\nvoid f(int v , int w)\n{ int t;\n  t=v;v=w;w=t;\n}\nmain( )\n{ int x=1,y=3,z=2;\n  if(x>y) f(x,y);\n  else if(y>z) f(y,z);\n  else f(x,z);\n  printf(“%d,%d,%d\\n”,x,y,z);\n} 执行后输出结果是（ ）', '1,2,3', '3,1,2', '1,3,2', '2,3,1', 'C', '', '3', '3', '6', '4', '2', '1', '2020-05-18 17:21:52');
INSERT INTO `sc_question` VALUES ('65', '33', '设有定义：int n=0,*p=&n,**q=&p;则以下选项中，正确的赋值语句是（ ）', 'p=1;', '*q=2;', 'q=p;', 'A)*p=5;', 'D', '', '3', '3', '6', '8', '2', '1', '2020-05-18 17:23:17');
INSERT INTO `sc_question` VALUES ('66', '16', '若有如下程序段，其中s、a、b、c均已定义为整型变量,且a、c均已赋值（c大于0）\ns=a;\nfor(b=1;b<=c;b++) s=s+1;\n则与上述程序段功能等价的赋值语句是( )　', 's=a+b;', 's=a+c;', 's=s+c;', 's=b+c;', 'B', '', '3', '3', '6', '1', '2', '1', '2020-05-18 17:24:34');
INSERT INTO `sc_question` VALUES ('67', '26', '若程序中定义了以下函数\ndouble myadd(double a,double b)\n{ return (a+b);\n}\n并将其放在调用语句之后，则在调用之前应该对该函数进行说明，以下选项中错误的说明是（ ）', 'double myadd(double a,b);', 'double myadd(double,double);', 'double myadd(double b,double a);', 'double myadd(double x,double y);', 'A', '', '3', '3', '6', '6', '1', '1', '2020-05-18 17:26:07');
INSERT INTO `sc_question` VALUES ('68', '25', '有以下程序\nmain( )\n{ int i,n=0;\n for(i=2;i<5;i++)\n { \n   do\n   { if(i%3) continue;\n     n++;\n   } while(!i);\n   n++;\n }\n printf(“n=%d\\n”,n);\n} 程序执行后的输出结果是（ ）', 'n=5', 'n=2', 'n=3', 'n=4', 'D', '', '1557', '3', '6', '5', '1', '1', '2020-05-18 18:08:12');
INSERT INTO `sc_question` VALUES ('69', '23', '有以下程序\nmain( )\n{ int i,s=0;\n for(i=1;i<10;i+=2) s+=i+1;\n printf(“%d\\n”,s);\n} 程序执行后的输出结果是（ ）', '自然数1～9的累加和', '自然数1～10的累加和', '自然数1～9中的奇数之和', '自然数1～10中的偶数之和', 'D', '', '1557', '3', '6', '5', '2', '1', '2020-05-18 18:09:15');
INSERT INTO `sc_question` VALUES ('70', '23@25', '有以下程序\nmain( )\n{ int x=0,y=5,z=3;\n  while(z-->0&&++x<5) y=y-1;\n  printf(“%d,%d,%d\\n”,x,y,z);\n} 程序执行后的输出结果是（ ）', '3,2,0', '3,2,-1', '4,3,-1', '5,-2,-5', 'B', '', '1557', '3', '6', '5', '1', '1', '2020-05-18 18:16:39');
INSERT INTO `sc_question` VALUES ('71', '20', '设有如下程序段：\nint x=2002, y=2003;\nprintf(\"%dn\",(x,y));\n则以下叙述中正确的是( )', '输出语句中格式说明符的个数少于输出项的个数，不能正确输出', '运行时产生出错信息', '输出值为2002', '输出值为2003', 'D', '', '1557', '3', '6', '3', '1', '1', '2020-05-18 18:17:38');
INSERT INTO `sc_question` VALUES ('72', '25', '以下程序段中与语句k=a>b?(b>c?1:0):0；功能等价的是（ ）', 'if((a>b)&&(b>c)) k=1; ', 'if((a>b)||(b>c)) k=1;else k=0; else k=0;', 'if(a<=b) k=0;', 'if(a>b) k=1; else if(b<=c) k=1; else if(b>c) k=1; else k=0;', 'A', '', '1557', '3', '6', '5', '1', '1', '2020-05-18 18:25:38');
INSERT INTO `sc_question` VALUES ('73', '34', '设有定义：int a,*pa=&a;以下scanf语句中能正确为变量a读入数据的是（ ）', 'scanf(“%d”,pa);', 'scanf(“%d”,a);', 'scanf(“%d”,&pa);', 'scanf(“%d”,*pa);', 'A', '', '1557', '3', '6', '8', '2', '1', '2020-05-18 18:26:29');
INSERT INTO `sc_question` VALUES ('74', '17', '以下4个选项中，不能看作一条语句的是（ ）', '{;}', 'a=0,b=0,c=0;', 'if(a>0);', 'if(b==0) m=1;n=2;', 'D', '', '1557', '3', '6', '2', '1', '1', '2020-05-18 18:27:21');
INSERT INTO `sc_question` VALUES ('75', '20', '有以下程序\nmain( )\n{\n int x=102，y=012;\n printf(“%2d,%2d\\n”,x,y);\n} 执行后输出结果是（ ）', '10,01', '002,12', '102,10', '02,10', 'C', '', '1557', '3', '6', '3', '1', '1', '2020-05-18 18:28:09');
INSERT INTO `sc_question` VALUES ('76', '17', '设有定义：float a=2,b=4,h=3;,以下C语言表达式与代数式 计算结果不相\n符的是（ ）', '(a+b)*h/2', '(1/2)*(a+b)*h', '(a+b)*h*1/2', 'h/2*(a+b)', 'B', '', '1557', '3', '6', '2', '1', '1', '2020-05-18 18:29:02');
INSERT INTO `sc_question` VALUES ('77', '16', '设有以下定义\nint a=0;\ndouble b=1.25;\nchar c=’A’;\n#define d 2\n则下面语句中错误的是（ ）', 'a++;', 'b++;', 'c++;', 'd++;', 'D', '', '1557', '3', '6', '1', '1', '1', '2020-05-18 18:30:48');
INSERT INTO `sc_question` VALUES ('78', '16', '若以下选项中的变量已正确定义，则正确的赋值语句是（ ）', 'x1=26.8%3', '1+2=x2', 'x3=0x12', 'x4=1+2=3;', 'C', '', '1557', '3', '6', '1', '2', '1', '2020-05-18 18:33:39');
INSERT INTO `sc_question` VALUES ('79', '15', '以下4组用户定义标识符中，全部合法的一组是（ ）', '_hain', 'if', '8txt', 'int', 'A', '', '1557', '3', '6', '1', '1', '1', '2020-05-18 18:36:03');
INSERT INTO `sc_question` VALUES ('80', '15', '以下叙述中正确的是（ ）', 'C语言的源程序不必通过编译就可以直接运行', 'C语言中的每条可执行语句最终都将被转换成二进制的机器指令', 'C源程序经编译形成的二进制代码可以直接运行', 'C语言中的函数不可以单独进行编译', 'B', '', '1557', '3', '6', '1', '1', '1', '2020-05-18 18:52:06');
INSERT INTO `sc_question` VALUES ('81', '28', '有以下程序\nviod fun (int a,int b,int c)\n{a=456;b=567;c=678;}\nmain()\n{ int x=10,y=20,z=30;\nfun (x,y,z);\nprintf(\"%d,%d.%d\",x,y,z);}\n输出结果是( )', '30,20,10', '10,20,30', '456,567,678', '678,567,456', 'A', '', '1557', '3', '6', '6', '1', '1', '2020-05-18 18:52:57');
INSERT INTO `sc_question` VALUES ('82', '15', '下面四个选项中，均是C语言关键字的是：( )', 'auto enum include', 'swith typedef continue', 'signed union scanf', 'if struct type', 'B', '', '1557', '3', '6', '1', '1', '1', '2020-05-18 18:58:53');
INSERT INTO `sc_question` VALUES ('83', '20', '若执行下面的程序时从键盘上输入3和4，则输出是( )\nmain()\n{ int a,b,s;\nscanf(\"%d %d\",&a,&b);\ns=a;\nif(a<b)s=b;\ns=s*s;\nprintf(\"%d\\n\",s);}', '14', '16', '18', '20', 'B', '', '1557', '3', '6', '3', '1', '1', '2020-05-18 18:59:23');
INSERT INTO `sc_question` VALUES ('84', '20@34', '设有如下函数定义:\nint f(char *s)\n{ char *p=s;\nwhile(*p!=\'\\0\') p++;\nreturn(p-s); }\n如果在主程序中用下面的语句调用上述函数,则输出结果为( )\nprintf(\"%d\\n\",f(\"goodbey!\"));', '3', '6', '8', '0', 'C', '', '1557', '3', '6', '3', '3', '1', '2020-05-18 19:00:14');
INSERT INTO `sc_question` VALUES ('85', '25', '以下程序的输出结果是( )\nmain( )\n{ int x=10，y=10，I；\nfor(i=0；x>8；y=++i)\nprintf(\"%d，%d \"，x--，y)；}', '10 1 9 2', '9 8 7 6 ', '10 9 9 0', '10 10 9 1', 'D', '', '1557', '3', '6', '5', '1', '1', '2020-05-18 19:01:23');
INSERT INTO `sc_question` VALUES ('86', '38', '设有static char str[ ]=\"Beijing\";\n则执行printf(\"%d\\n\", strlen(strcpy(str,\"China\")));\n后的输出结果为( )', '5', '7', '12', '14', 'A', '', '1557', '3', '6', '9', '1', '1', '2020-05-18 19:03:06');
INSERT INTO `sc_question` VALUES ('87', '34', '若x是整型变量，pb是基类型为整型的指针变量，则正确的赋值表达式是( )', 'pb=&x', 'pb=x;', '*pb=&x;', '*pb=*x', 'A', '', '1557', '3', '6', '8', '2', '1', '2020-05-18 19:03:50');
INSERT INTO `sc_question` VALUES ('88', '20', '程序片段执行后输出结果是（ ）\nint x=100, y=200;\nprintf (\"% d\", (x, y));', '100', '200', '100,200', '编译出错', 'B', '', '1557', '3', '6', '3', '1', '1', '2020-05-18 19:04:35');
INSERT INTO `sc_question` VALUES ('89', '20', '下面程序的输出是( )\nmain( )\n{ int a=-1, b=4,k;\nk=(a++<=0)&&(!(b--<=0));\nprintf(\"%d %d %d\\n\",k,a,b);}', '0 0 3', '0 1 2', '1 0 3', '1 1 2', 'C', '', '1557', '3', '6', '3', '1', '1', '2020-05-18 19:05:21');
INSERT INTO `sc_question` VALUES ('90', '20', '数字字符0的ASCII值为48,若有以下程序\nmain()\n{ char a=\'1\',b=\'2\';\nprintf(\"%c,\",b++);\nprintf(\"%d\\n\",b-a);\n}', '3,2', '50,2', '2,2', '2,50', 'C', '', '1557', '3', '6', '3', '2', '1', '2020-05-18 19:08:09');
INSERT INTO `sc_question` VALUES ('91', '33@34', '设p1和p2是指向同一个int型一维数组的指针变量,k为int型变量,则不能正确执行的语句是( )', 'k=*p1+*p2;', 'p2=k;', 'p1=p2;', 'k=*p1 *(*p2);', 'B', '', '1557', '3', '6', '8', '2', '1', '2020-05-18 19:09:11');
INSERT INTO `sc_question` VALUES ('92', '34@42', '若fp是指向某文件的指针，且已读到该文件的末尾，则C语言函数feof(fp)的返回值是( )', 'EOF', '-1', '非零值', 'NULL', 'D', '', '1557', '3', '6', '12', '1', '1', '2020-05-18 19:10:00');
INSERT INTO `sc_question` VALUES ('93', '36', '下面各语句行中，能正确进行赋字符串操作的语句行是( )', 'char st[4][5]={\"ABCDE\"};', 'char s[5]={\'A\',\'B\',\'C\',\'D\',\'E\'};', 'char *s; s=\"ABCDE\"; ', 'char *s; scanf(\"%s\",s);', 'C', '', '1557', '3', '6', '9', '2', '1', '2020-05-18 19:10:52');
INSERT INTO `sc_question` VALUES ('94', '22', '若要求在if后一对圆括号中表示a不等于0的关系,则能正确表示这一关系的表达式为( )', 'a<>0', '!a', 'a=0', 'a', 'D', '', '1557', '3', '6', '4', '1', '1', '2020-05-18 19:11:29');
INSERT INTO `sc_question` VALUES ('95', '23', '以下程序的输出结果是( )\nmain( )\n{ int i，x[3][3]={9，8，7，6，5，4，3，2，1}，*p=&x[1][1]；\n   for(i=0；i<4；i+=2)\n      printf(\"%d \"，p[i])； \n }', '5 2', '5 1', '5 3', '9 7', 'C', '', '1557', '3', '6', '5', '1', '1', '2020-05-18 19:13:07');
INSERT INTO `sc_question` VALUES ('96', '35', '下面能正确进行字符串赋值操作的语句是( )', 'char s[5]={\"ABCDE\"};', 'char s[5]={\'A\'、\'B\'、\'C\'、\'D\'、\'E\'};', 'char *s;s=\"ABCDEF\";', 'char *s; scanf(\"%s\"，s);', 'C', '', '1557', '3', '6', '9', '2', '1', '2020-05-18 19:13:59');
INSERT INTO `sc_question` VALUES ('97', '25', '下面的程序\nmain()\n{ int x=3;\ndo {printf(\"%d\\n\",X-=2);\n}while(!(--x));}\n输出结果为（ ）', '输出的是1', '输出的是1和-2', '输出的是3和0', '是死循环', 'B', '', '1557', '3', '6', '5', '2', '1', '2020-05-18 19:14:35');
INSERT INTO `sc_question` VALUES ('98', '15', '以下说法中正确的是( )', '#define和printf都是C语句', '#define是C语句，而printf不是', 'printf是C语句，但#define不是', '#define和printf都不是C语句', 'D', '', '1557', '3', '6', '1', '1', '1', '2020-05-18 19:25:37');
INSERT INTO `sc_question` VALUES ('99', '34', '有以下程序\nmain()\n{char a[]=\"programming\",b[]=\"language\";\nchar *p1,*p2;\nint i;\np1=a;p2=b;\nfor(i=0;i<7;i++)\nif(*(p1+i)==*(p2+i))\nprintf(\"％c\",*(p1+i));\n}输出结果是( )', 'gm', 'rg', 'or', 'ga', 'D', '', '1557', '3', '6', '8', '3', '1', '2020-05-18 19:27:56');
INSERT INTO `sc_question` VALUES ('100', '23', '以下的for循环( )\nfor(x=0,y=0; (y!=123)&&(x<4); x + + );', '是无限循环', '循环次数不定', '执行4次', '执行3次', 'C', '', '1557', '3', '6', '5', '2', '1', '2020-05-18 19:28:45');
INSERT INTO `sc_question` VALUES ('101', '20', '以下程序的输出结果是( )\nmain( )\n{int a=12，b=12;\nprintf(\"%d %d\\n\"，--a，++b);}', '10 10', '12 12', '11 10', '11 13', 'D', '', '1557', '3', '6', '3', '1', '1', '2020-05-18 19:29:53');
INSERT INTO `sc_question` VALUES ('102', '17', '表示关系x≤y≤z的c语言表达式为( )', '(X<=Y)&&(Y<=Z)', '(X<=Y)AND(Y<=Z)', '(X<=Y<=Z)', '(X<=Y)&(Y<=Z)', 'A', '', '1557', '3', '6', '2', '1', '1', '2020-05-18 19:30:27');
INSERT INTO `sc_question` VALUES ('103', '20', '分别输入5和6，程序运行结果正确的是( )\nmain()\n{\nint x；\nscanf(“%d”,&x)；\nif(x-->5) printf(“%d”,x)；\nelse printf(“%d”,x)；\n}', '5 5', '4 5', '5 4 ', '4 4', 'B', '', '1557', '3', '6', '3', '1', '1', '2020-05-18 19:31:06');
INSERT INTO `sc_question` VALUES ('104', '20', 'C语言中，对于由do…while语句构成的循环，以下说法正确的是（ ）', '不能由其他语句代替', '无论循环条件是否满足，程序都至少执行一次循环', '在某些情况下不能与while语句互换', '“ do {语句；} while(表达式) ”书写格式正确无误', 'B', '', '1557', '3', '6', '5', '2', '1', '2020-05-18 19:31:44');
INSERT INTO `sc_question` VALUES ('105', '25', '有如下程序\nmain()\n{ int x=23;\n  do\n  { \n    printf(“%d”,x--);\n  }while(!x);\n}\n该程序的执行结果是( )', '321', '23', '不输出任何内容', '陷入死循环', 'C', '', '1557', '3', '6', '5', '2', '1', '2020-05-18 19:32:54');
INSERT INTO `sc_question` VALUES ('106', '20', '已知char a；使用scanf（）函数输入一个字符给变量a，不正确的函数调用是（  ）', 'scanf（“%d”，＆a）;', 'scanf（“%lf”，＆a）;', 'scanf（“%c，＆a）;', 'scanf（”%u”，＆a）;', 'B', '', '3', '3', '6', '3', '1', '1', '2020-05-18 21:06:06');
INSERT INTO `sc_question` VALUES ('107', '26', 'C语言的函数体由(  )括起来', '( )', '{}', '［］', '／* *／', 'B', '', '1557', '3', '6', '6', '1', '1', '2020-05-18 21:07:40');
INSERT INTO `sc_question` VALUES ('108', '26', '如下fun函数的类型是（  ）\nfun(float x)\n{\n  double y;\n  int z;\n  y=x*x;\n  z=(int)y;\n  return(z);\n}', 'void', 'double', 'int', 'float', 'C', '', '1557', '3', '6', '6', '2', '1', '2020-05-18 21:08:27');
INSERT INTO `sc_question` VALUES ('109', '34', '设有如下函数定义:\nint fun(char *str) \n{\nchar *p;p=str;\nif(p!=‘\\0’) \np++;\nreturn (p-str);\n}\n则以下语句执行后的输出结果是(  )\nprintf(“%d\\n”,fun(“student”));', '7', '8', '9', '10', 'A', '', '1557', '3', '6', '8', '2', '1', '2020-05-18 21:12:05');
INSERT INTO `sc_question` VALUES ('110', '20', '以下程序的屏幕输出为(  )\n#include<stdio.h>\nvoid f（int i）\n{\nint a=2；\na=i++；\nprintf（“%d”，a）；\n}\nmain（）\n{\nint a=1 ，c=3；\nf（c）；\na=c++;\nprintf（“%d”，a）；\n}', '4，3', '3，3', '4，5', '3，5', 'B', '', '1557', '3', '6', '3', '1', '1', '2020-05-18 21:13:07');
INSERT INTO `sc_question` VALUES ('111', '31', '以下程序运行的结果是（  ）\nint fun (int array[4][4])\n{\nint j;\nfor(j=0;j＜4;j++)\nprintf(“%2d”,array[2][j]);\nprintf(“\\n”);\n}\nmain()\n{\nint a[4][4]={0,1,2,0,1,0,0,4,2,0,0,5,0,4,5,0};\nfun(a);\n}', '2005', '1004', '0120', '0450', 'A', '', '1557', '3', '6', '7', '2', '1', '2020-05-18 21:14:00');
INSERT INTO `sc_question` VALUES ('112', '25', '对于整型变量x，与while（！x）等价的是（ ）', 'while（x！=0）', 'while（x==0）', 'while（x！=1）', 'while（～x）', 'B', '', '1557', '3', '6', '5', '1', '1', '2020-05-18 21:15:28');
INSERT INTO `sc_question` VALUES ('113', '23', '以下程序运行后，循环体运行的次数为（  ）\nint i=10,x;\nfor( ;i<10;i++)\n       x=x+i;', '10', '0', '1', '无限', 'B', '', '1557', '3', '6', '5', '2', '1', '2020-05-18 21:16:15');
INSERT INTO `sc_question` VALUES ('114', '25', '设有整型变量x，下述语句（  ）不会出现死循环', 'for( ; ; x+=1);', 'for(; (x=getchar( ))!=‘\\n’; );', 'while (1) {x++;}', 'for(x=10; ; x--);', 'B', '', '1557', '3', '6', '5', '2', '1', '2020-05-18 21:17:10');
INSERT INTO `sc_question` VALUES ('115', '25', '在C语言中while循环和do—while循环的主要区别是（ ）', 'do—while 循环体内可以使用break语句， while循环体内不能使用break语句', 'do—while的循环至少无条件执行一次，while的循环体不是', 'do—while 循环体内可以使用continue语句，while循环体内不能使用continue语句', 'while的循环体至少无条件执行一次，do—while的循环体不是', 'B', '', '1557', '3', '6', '5', '1', '1', '2020-05-18 21:17:58');
INSERT INTO `sc_question` VALUES ('116', '23', '对于整型变量x和y，语句for (x=0, y=0 ; (y!=123) ＆＆(x<4); x++) y++;中的“y++;”被执行（  ）', '4次', '0次', '123次', '3次', 'A', '', '1557', '3', '6', '5', '1', '1', '2020-05-18 21:18:42');
INSERT INTO `sc_question` VALUES ('117', '25', '以下程序段运行后变量n的值为（ D ）\nint i=1,n=1;\nfor( ; i<3;i++)\n    {\n     continue;\n     n=n+i;\n     }', '4', '3', '2', '1', 'D', '', '1557', '3', '6', '5', '1', '1', '2020-05-18 21:19:13');
INSERT INTO `sc_question` VALUES ('118', '31', '设有如下程序段：\nint a[3][3]={1,0,2,1,0,2,1,0,1},i,j,s=0; \nfor(i=0;i<3;i++)\n    for(j=0;j<i;j++)\n        s=s+a[i][j];\n则执行该程序段后，s的值是（  ）', '0', '1', '2', '3', 'C', '', '1557', '3', '6', '7', '3', '1', '2020-05-18 21:20:17');
INSERT INTO `sc_question` VALUES ('119', '23@30', '下面程序运行结果是(  )\nint  i=0,a[] ={1,2,3,4,5};\ndo{\na[i]+=10;\n}while(a[++i]＞2);\nfor(i=0;i<5;i++)\nprintf(“%d”,a[i]);', '11 2 3 4 5', '1 2 3 4 5', '11 12 13 14 15', '11 12 3 4 5', 'A', '', '1557', '3', '6', '5', '1', '1', '2020-05-18 21:21:08');
INSERT INTO `sc_question` VALUES ('120', '31', '若有定义:int i=0,x=0; int a[3][3]={1,2,3,4,5,6,7,8,9}则以下程序段运行后x的值为(  )\n  for( ;i＜3;i++) x+=a[i][2-i]；', '0', '12', '15', '18', 'C', '', '1557', '3', '6', '7', '3', '1', '2020-05-18 21:22:35');
INSERT INTO `sc_question` VALUES ('121', '30', '有如下定义  int a[ ][3]={1，2，3，4，5，6，7，8，}；则数组a的行数（ ）', '2', '3', '4', '无法确定', 'B', '', '1557', '3', '6', '7', '1', '1', '2020-05-18 21:23:13');
INSERT INTO `sc_question` VALUES ('122', '31', '以下数组定义中，正确的是（ ）', 'int a[2] [3]={1，2，3，4，5，6，7}；', 'int a[] []={{1，2，3}，{4，5，6}，{7，8，9}}；', 'int a[2] []={1，2，3，4，5，6}；', 'int a[] [4]={6}；', 'B', '', '1557', '3', '6', '7', '2', '1', '2020-05-18 21:24:43');
INSERT INTO `sc_question` VALUES ('123', '17', '若有定义:int a=6,b=2;ch1ar C1=‘a’，C2=‘b’；则表达式a+b%5+C2-C1的值是（  ）', '7', '8', '9', '表达式错误', 'C', '', '1557', '3', '6', '2', '1', '1', '2020-05-18 21:25:31');
INSERT INTO `sc_question` VALUES ('124', '30', '以下能对一维数组a进行正确初始化的语句是（  ）', 'int a[5]=（0，0，0，0，0，）', 'int a[5]=[0]', 'int a[5]={1，2，3，4，5，6，7}', 'int a[]={0}', 'D', '', '1557', '3', '6', '7', '2', '1', '2020-05-18 21:26:28');
INSERT INTO `sc_question` VALUES ('125', '30', '设有如下定义：char str[8]={“Fujian”}；则分配给数组str的存储空间是（ ）字节', '6', '7', '8', '9', 'C', '', '1557', '3', '6', '7', '1', '1', '2020-05-18 21:27:00');

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
) ENGINE=InnoDB AUTO_INCREMENT=308 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('24', '学生测试aa', 'admin', '$2a$10$ySG2lkvjFHY5O0./CPIE1OI8VJsuKYEzOYzqIa7AJR6sEgSzUFOAm', null, null, null, '1', null, null);
INSERT INTO `student` VALUES ('76', '王晨雨', '201619040106', '$2a$10$y43d4FdwHv2NMFpD8qJfN.R/Mvs2dU9tLs7Rf3bsYC4Fc4uVt5OSq', '201619040106', '男', 'http://img.yifang009.com/img/userface.png', '1', '5', null);
INSERT INTO `student` VALUES ('77', '张凯帆', '201619040139', '$2a$10$lDmqFPQezHNMV9WVxsyxwOyQn352ifpu8f8G/gvByUCcdHK/cXh82', '201619040139', '男', 'http://img.yifang009.com/img/userface.png', '1', '5', null);
INSERT INTO `student` VALUES ('78', '史晓松', '201619040117', '$2a$10$Aw8hlB7w473xKd.fdiUJleVc6pe4Kwp58GPKAZ3ruSPzTE/Jqx7J2', '201619040117', '男', 'http://img.yifang009.com/img/userface.png', '1', '5', null);
INSERT INTO `student` VALUES ('79', '刘震', '201619040129', '$2a$10$Hw0cdVu62oer4nbaHNchk.UnRN76Xv9ozKniJc01M1t8bR98y0oOu', '201619040129', '男', 'http://img.yifang009.com/img/userface.png', '1', '5', null);
INSERT INTO `student` VALUES ('80', '魏汉文', '201619040140', '$2a$10$F25oHWPwmfJ94DC2.5uJN.Ksow0mLBSTUh.oDZRd/4QX59om/NWp.', '201619040140', '男', 'http://img.yifang009.com/img/userface.png', '1', '5', null);
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
INSERT INTO `student` VALUES ('265', '常俊超', '201619040107', '$2a$10$vFb9BD/ijThWuxJE.3dxxuyuXVyAKHDME6UOdSUpYWpm9CYDtkaTe', '201619040107', '男', 'http://img.yifang009.com/img/userface.png', '1', '1', null);
INSERT INTO `student` VALUES ('266', '侯彦飞', '201619040118', '$2a$10$Gs6Gk5Qg3pi3qbtIY8VS5edYLii1kgeoV4E92IAP6PHsPun9sAQfm', '201619040118', '男', 'http://img.yifang009.com/img/userface.png', '1', '1', null);
INSERT INTO `student` VALUES ('267', '张乐', '201619040121', '$2a$10$zeYOSXSPLniM.xVgUXCvDu0hw3oSZGObLAD7C492TLZJjvABeU3jC', '201619040121', '男', 'http://img.yifang009.com/img/userface.png', '1', '1', null);
INSERT INTO `student` VALUES ('268', '贾强强', '201619040122', '$2a$10$QsmoNb1d4zQWlhQ.rPqV/us9PMnA4.VQH6IFwCPbxZEY5c1XMjp4y', '201619040122', '男', 'http://img.yifang009.com/img/userface.png', '1', '1', null);
INSERT INTO `student` VALUES ('269', '郑龙飞', '201619040124', '$2a$10$XvNjDi.rYrkSI9xyrf6nvuBM69YhPuojKp8IOty3Gi.SdE.Md6OPq', '201619040124', '男', 'http://img.yifang009.com/img/userface.png', '1', '1', null);
INSERT INTO `student` VALUES ('270', '张依方', '201619040128', '$2a$10$76i.2VkKzRSp32GT2AIdqux39mgI3genvgTR9x0sQzJNCaDXH2rKe', '201619040128', '男', 'http://img.yifang009.com/img/userface.png', '1', '1', null);
INSERT INTO `student` VALUES ('271', '刘路安', '201619040138', '$2a$10$kWZmRdOSqg5FkrtH8vBjMecms/ZyigtBVNpb0CnBF1IBBvNkoEjje', '201619040138', '男', 'http://img.yifang009.com/img/userface.png', '1', '1', null);
INSERT INTO `student` VALUES ('272', '于思彤', '201619140105', '$2a$10$Ay2XCFF/PBQh/IWsCoCqF.YF8fKUIbVyj9BvIEqSWLMcii2LkRz82', '201619140105', '女', 'http://img.yifang009.com/img/userface.png', '1', '1', null);
INSERT INTO `student` VALUES ('273', '王志彬', '201619140109', '$2a$10$riHeVtzdDGXJX8u0qjHjQOzLVkhbSZtBnZ14HFu1.TjE3MXu3OUNq', '201619140109', '男', 'http://img.yifang009.com/img/userface.png', '1', '1', null);
INSERT INTO `student` VALUES ('274', '姚继龙', '201619140117', '$2a$10$DqIACZKujE/aj8/i2MX8veVd/9MHrMSm313ePuuuayPQEVNw/0GI2', '201619140117', '男', 'http://img.yifang009.com/img/userface.png', '1', '1', null);
INSERT INTO `student` VALUES ('275', '秦立杰', '201619140131', '$2a$10$NLhRmmF6f3.FWoKeJuQ/9uuIzsSRN5fnVCJ1GcSc606yTevi6avum', '201619140131', '男', 'http://img.yifang009.com/img/userface.png', '1', '1', null);
INSERT INTO `student` VALUES ('276', '王明杰', '201619140208', '$2a$10$Gv1R9cFGLLc7iMl6M3UjFORIGTk2MAv8T2ZLXAFuBixheAzRYMgiC', '201619140208', '男', 'http://img.yifang009.com/img/userface.png', '1', '1', null);
INSERT INTO `student` VALUES ('277', '崔烁豪', '201619140220', '$2a$10$Bv7MNNK8/XAeELJ8Z/GPOOcKcIbo4Ve4rNswNU2.ZJiGi4Y/J91oa', '201619140220', '男', 'http://img.yifang009.com/img/userface.png', '1', '1', null);
INSERT INTO `student` VALUES ('278', '季波', '201619140232', '$2a$10$1ABZcIt9cjAGYSU5i8KK.O7eZg.fsO2t5cObrSGY5SVoO9fCxy01G', '201619140232', '男', 'http://img.yifang009.com/img/userface.png', '1', '1', null);
INSERT INTO `student` VALUES ('279', '王刚', '201619140310', '$2a$10$VMuIi5ZLeU/il3/uSgnu/eSk0Z/497LlMoSbLFfM3RtKqzeqUnU6C', '201619140310', '男', 'http://img.yifang009.com/img/userface.png', '1', '1', null);
INSERT INTO `student` VALUES ('280', '何家锦', '201619140324', '$2a$10$EwwMD9Q0ugEApmPVX9mGXeo62bjI4m3iUZ7y6Opdv/8WbTKAK2Vm6', '201619140324', '男', 'http://img.yifang009.com/img/userface.png', '1', '1', null);
INSERT INTO `student` VALUES ('281', '葛文杰', '201619140417', '$2a$10$0LvEcFBDZYz8IpqSZyoIOO6vaBrILKK0Jui9cC8QY2sbwbN3bepW.', '201619140417', '男', 'http://img.yifang009.com/img/userface.png', '1', '1', null);
INSERT INTO `student` VALUES ('282', '宁志文', '201619140418', '$2a$10$WxdhScBs6Tv15G6kqqLkDuZCr/oySeFaFgoXRScDF.oU1B8RTp.tO', '201619140418', '男', 'http://img.yifang009.com/img/userface.png', '1', '1', null);
INSERT INTO `student` VALUES ('283', '张亚光', '201619140430', '$2a$10$z4JymSFcPgfyPgls9Bch..Mdjn4FsrV3loXoytkINtcv6Q3f.zniO', '201619140430', '男', 'http://img.yifang009.com/img/userface.png', '1', '1', null);
INSERT INTO `student` VALUES ('284', '张艺淼', '201619140433', '$2a$10$seOi75mZ7OeHxxxihmrvUOufyLvvH2rBnyTwU/Sfd5JwTrMvFm2ku', '201619140433', '男', 'http://img.yifang009.com/img/userface.png', '1', '1', null);
INSERT INTO `student` VALUES ('285', '魏宁', '201619150113', '$2a$10$bjbTYzJoWwd0WOyEakEVZuhb5NrCjlQxN8nWbwVfHGh6GD3TP7kvm', '201619150113', '女', 'http://img.yifang009.com/img/userface.png', '1', '1', null);
INSERT INTO `student` VALUES ('286', '余昊沂', '201619150116', '$2a$10$u4ozCLxCLZ02J9BpKAAqoOqP6so0lQqZc13TNUkR3305ZLsnY8bce', '201619150116', '男', 'http://img.yifang009.com/img/userface.png', '1', '1', null);
INSERT INTO `student` VALUES ('287', '丁金洋', '201619150118', '$2a$10$q2.bxQQTcVPmCvqb0Qj6e.LTv7Oln0Ovmg/S.Tr7tZQyuzFmikjki', '201619150118', '男', 'http://img.yifang009.com/img/userface.png', '1', '1', null);
INSERT INTO `student` VALUES ('288', '丁魏武', '201619150123', '$2a$10$BWonV/N63vwrmNd4YPjCGOhTtmHwYlIYTBs.61d3dQbtGqOTNC/iq', '201619150123', '男', 'http://img.yifang009.com/img/userface.png', '1', '1', null);
INSERT INTO `student` VALUES ('289', '张坤', '201619150125', '$2a$10$pGV/bcDvBQDnrkwubel.Au/5Ln/YNiUnB.QrjDyczJ8JGX5dlepi2', '201619150125', '男', 'http://img.yifang009.com/img/userface.png', '1', '1', null);
INSERT INTO `student` VALUES ('290', '詹炜程', '201619150138', '$2a$10$0OW.KvjRl77oX/xzUof/.uPtke7NJc3t1FKnnVb.zFxvSmPtc.pge', '201619150138', '男', 'http://img.yifang009.com/img/userface.png', '1', '1', null);
INSERT INTO `student` VALUES ('291', '董振威', '201619150216', '$2a$10$ntTuG6zmwudEmzUdCZ6xEuNNOGrl5Wcux5ppjZdD0cPKWcLmqBEJy', '201619150216', '男', 'http://img.yifang009.com/img/userface.png', '1', '1', null);
INSERT INTO `student` VALUES ('292', '杨培凤', '201619150306', '$2a$10$XJAZzcvhDXNYpVblLEekOO/rh9YbPi.d3JMITkF5EJiMO0AWiApm2', '201619150306', '女', 'http://img.yifang009.com/img/userface.png', '1', '1', null);
INSERT INTO `student` VALUES ('293', '马晴川', '201619150312', '$2a$10$ZjXX9SCYAG3rzm7xg1hRMuwkHdNMI7VyYlTyrt96nka9z2EGHdN0S', '201619150312', '女', 'http://img.yifang009.com/img/userface.png', '1', '1', null);
INSERT INTO `student` VALUES ('294', '王跃跃', '201619150323', '$2a$10$nEbuADVpJ1fTg2HmpBXio.TOdWnuZBmyZAjgLmFB7McOFkz8qMNoa', '201619150323', '男', 'http://img.yifang009.com/img/userface.png', '1', '1', null);
INSERT INTO `student` VALUES ('295', '胡帅', '201619150329', '$2a$10$yj4uVCVVbOWum/vr2qrT3uXLnSbPielS4zZyBfGrC/B4YPgi9rTq6', '201619150329', '男', 'http://img.yifang009.com/img/userface.png', '1', '1', null);
INSERT INTO `student` VALUES ('296', '杨登陆', '201619150339', '$2a$10$bmmyrczOBUBppD8DmnjkHeUy/0HsKt9UUIchLhxZ1Oy9IAmUnQ1PC', '201619150339', '男', 'http://img.yifang009.com/img/userface.png', '1', '1', null);
INSERT INTO `student` VALUES ('297', '程昆', '201619160120', '$2a$10$5i14SYTNlrz0og6Zpj5aN.54k13R1pQnFEbp4RRtkXPs61kwaHhmq', '201619160120', '男', 'http://img.yifang009.com/img/userface.png', '1', '1', null);
INSERT INTO `student` VALUES ('298', '焦晓阳', '201619240133', '$2a$10$E.vRhKmdnryYNHLIvuirsOAD0WMKEI8oiNfbyG.Tpby0VYQoxMK2q', '201619240133', '男', 'http://img.yifang009.com/img/userface.png', '1', '1', null);
INSERT INTO `student` VALUES ('299', '于莹莹', '201619240309', '$2a$10$iBZ4EF8l3f2ADgtL/2vKseG5JY1WuYTjN2BcxG3ae8lApi6324FOO', '201619240309', '女', 'http://img.yifang009.com/img/userface.png', '1', '1', null);
INSERT INTO `student` VALUES ('300', '张涛', '201619240322', '$2a$10$bc20H4TkLXy/HUNZWELMKOkQvzXhdf/KWxJIYLkI4fn3CbETxsuBG', '201619240322', '男', 'http://img.yifang009.com/img/userface.png', '1', '1', null);
INSERT INTO `student` VALUES ('301', '杨孟想', '201619240403', '$2a$10$m2JhamLMKIE6BrLmE20.Fu8HppirhWxdWIjHKn0Z2FZXPrW8SufzS', '201619240403', '女', 'http://img.yifang009.com/img/userface.png', '1', '1', null);
INSERT INTO `student` VALUES ('302', '谷勇良', '201619240416', '$2a$10$a.aSiHx9c41ktSUNxhJ1GOerjyIBGWymOgekaxRItCpzbs4MOZSY6', '201619240416', '男', 'http://img.yifang009.com/img/userface.png', '1', '1', null);
INSERT INTO `student` VALUES ('303', '袁皓煜', '201619240422', '$2a$10$iuigtBo55WsbBSeQQhIu1e1fZbfuZIm5pBDGp6cnQmOXON3B8TN8K', '201619240422', '男', 'http://img.yifang009.com/img/userface.png', '1', '1', null);
INSERT INTO `student` VALUES ('304', '魏志远', '201619240431', '$2a$10$6Qj1iWSZ4oF.V06FvXaDPeMM2uYhpEjbF3ukjD09AOZuIpUUHG5t2', '201619240431', '男', 'http://img.yifang009.com/img/userface.png', '1', '1', null);
INSERT INTO `student` VALUES ('305', '张小虎', '201919040128', '$2a$10$/t7cR.vNjVl889LKMIqqX.M0j3bXTVdU6lD9J7qpX68DdKB2bCzjy', '201919040128', '男', 'http://img.yifang009.com/img/userface.png', '1', '4', null);
INSERT INTO `student` VALUES ('307', '李楠', '201819040128', '$2a$10$hezp4Ux3q5Xs15Xhka.Gx.KOpcYaVPuGnNeUJEP2KfNJEf.g/a/bO', '201819040128', '女', 'http://img.yifang009.com/img/userface.png', '1', '2', null);

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
) ENGINE=InnoDB AUTO_INCREMENT=194 DEFAULT CHARSET=utf8;

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
INSERT INTO `student_grade` VALUES ('83', '201619040139', '张凯帆', '6', '28', '86', '5');
INSERT INTO `student_grade` VALUES ('84', '201619040117', '史晓松', '6', '28', '72', '5');
INSERT INTO `student_grade` VALUES ('85', '201619040129', '刘震', '6', '28', '51', '5');
INSERT INTO `student_grade` VALUES ('86', '201619040140', '魏汉文', '6', '28', '89', '5');
INSERT INTO `student_grade` VALUES ('87', '201619040130', '胡明乐', '6', '28', '63', '5');
INSERT INTO `student_grade` VALUES ('88', '201619040108', '杜思尧', '6', '28', '71', '5');
INSERT INTO `student_grade` VALUES ('89', '201619040119', '樊鑫', '6', '28', '89', '5');
INSERT INTO `student_grade` VALUES ('90', '201619040131', '袁野', '6', '28', '61', '5');
INSERT INTO `student_grade` VALUES ('91', '201619040109', '孙威', '6', '28', '95', '5');
INSERT INTO `student_grade` VALUES ('92', '201619040120', '岳鹏帆', '6', '28', '96', '5');
INSERT INTO `student_grade` VALUES ('93', '201619040132', '朱卫钢', '6', '28', '69', '5');
INSERT INTO `student_grade` VALUES ('94', '201619040110', '赵广', '6', '28', '71', '5');
INSERT INTO `student_grade` VALUES ('95', '201619040133', '李伟华', '6', '28', '80', '5');
INSERT INTO `student_grade` VALUES ('96', '201619040111', '赵晓阳', '6', '28', '60', '5');
INSERT INTO `student_grade` VALUES ('97', '201619040101', '曹媛媛', '6', '28', '83', '5');
INSERT INTO `student_grade` VALUES ('98', '201619040134', '谢天', '6', '28', '72', '5');
INSERT INTO `student_grade` VALUES ('99', '201619040112', '李无焱', '6', '28', '84', '5');
INSERT INTO `student_grade` VALUES ('100', '201619040102', '武佳琪', '6', '28', '77', '5');
INSERT INTO `student_grade` VALUES ('101', '201619040135', '杜圣', '6', '28', '75', '5');
INSERT INTO `student_grade` VALUES ('102', '201619040113', '梁超', '6', '28', '88', '5');
INSERT INTO `student_grade` VALUES ('103', '201619040125', '孟登辉', '6', '28', '78', '5');
INSERT INTO `student_grade` VALUES ('104', '201619040103', '闫莹莹', '6', '28', '97', '5');
INSERT INTO `student_grade` VALUES ('105', '201619040136', '孙迎迪', '6', '28', '86', '5');
INSERT INTO `student_grade` VALUES ('106', '201619040114', '张家瑞', '6', '28', '67', '5');
INSERT INTO `student_grade` VALUES ('107', '201619040126', '翟浡琨', '6', '28', '95', '5');
INSERT INTO `student_grade` VALUES ('108', '201619040104', '李梦歌', '6', '28', '77', '5');
INSERT INTO `student_grade` VALUES ('109', '201619040137', '白晋凡', '6', '28', '75', '5');
INSERT INTO `student_grade` VALUES ('110', '201619040115', '何敬祥', '6', '28', '80', '5');
INSERT INTO `student_grade` VALUES ('111', '201619040127', '姜楠', '6', '28', '63', '5');
INSERT INTO `student_grade` VALUES ('112', '201619040105', '陈克峰', '6', '28', '68', '5');
INSERT INTO `student_grade` VALUES ('113', '201619040116', '杨帅', '6', '28', '79', '5');
INSERT INTO `student_grade` VALUES ('114', '201619040107', '常俊超', '6', '28', '94', '1');
INSERT INTO `student_grade` VALUES ('115', '201619040118', '侯彦飞', '6', '28', '89', '1');
INSERT INTO `student_grade` VALUES ('116', '201619040121', '张乐', '6', '28', '92', '1');
INSERT INTO `student_grade` VALUES ('117', '201619040122', '贾强强', '6', '28', '89', '1');
INSERT INTO `student_grade` VALUES ('118', '201619040124', '郑龙飞', '6', '28', '92', '1');
INSERT INTO `student_grade` VALUES ('119', '201619040128', '张依方', '6', '28', '85', '1');
INSERT INTO `student_grade` VALUES ('120', '201619040138', '刘路安', '6', '28', '86', '1');
INSERT INTO `student_grade` VALUES ('121', '201619140105', '于思彤', '6', '28', '87', '1');
INSERT INTO `student_grade` VALUES ('122', '201619140109', '王志彬', '6', '28', '95', '1');
INSERT INTO `student_grade` VALUES ('123', '201619140117', '姚继龙', '6', '28', '88', '1');

-- ----------------------------
-- Table structure for `student_role`
-- ----------------------------
DROP TABLE IF EXISTS `student_role`;
CREATE TABLE `student_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sid` int(11) DEFAULT NULL,
  `rid` int(11) DEFAULT '4',
  PRIMARY KEY (`id`),
  KEY `sid` (`sid`),
  KEY `rid` (`rid`),
  CONSTRAINT `student_role_ibfk_1` FOREIGN KEY (`sid`) REFERENCES `student` (`id`) ON DELETE CASCADE,
  CONSTRAINT `student_role_ibfk_2` FOREIGN KEY (`rid`) REFERENCES `role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student_role
-- ----------------------------
INSERT INTO `student_role` VALUES ('1', '24', '4');
INSERT INTO `student_role` VALUES ('2', '24', '4');
INSERT INTO `student_role` VALUES ('3', '265', '4');
INSERT INTO `student_role` VALUES ('4', '266', '4');
INSERT INTO `student_role` VALUES ('5', '267', '4');
INSERT INTO `student_role` VALUES ('6', '268', '4');
INSERT INTO `student_role` VALUES ('7', '269', '4');
INSERT INTO `student_role` VALUES ('8', '270', '4');
INSERT INTO `student_role` VALUES ('9', '271', '4');
INSERT INTO `student_role` VALUES ('10', '272', '4');
INSERT INTO `student_role` VALUES ('11', '273', '4');
INSERT INTO `student_role` VALUES ('12', '274', '4');
INSERT INTO `student_role` VALUES ('13', '275', '4');
INSERT INTO `student_role` VALUES ('14', '276', '4');
INSERT INTO `student_role` VALUES ('15', '277', '4');
INSERT INTO `student_role` VALUES ('16', '278', '4');
INSERT INTO `student_role` VALUES ('17', '279', '4');
INSERT INTO `student_role` VALUES ('18', '280', '4');
INSERT INTO `student_role` VALUES ('19', '281', '4');
INSERT INTO `student_role` VALUES ('20', '282', '4');
INSERT INTO `student_role` VALUES ('21', '283', '4');
INSERT INTO `student_role` VALUES ('22', '284', '4');
INSERT INTO `student_role` VALUES ('23', '285', '4');
INSERT INTO `student_role` VALUES ('24', '286', '4');
INSERT INTO `student_role` VALUES ('25', '287', '4');
INSERT INTO `student_role` VALUES ('26', '288', '4');
INSERT INTO `student_role` VALUES ('27', '289', '4');
INSERT INTO `student_role` VALUES ('28', '290', '4');
INSERT INTO `student_role` VALUES ('29', '291', '4');
INSERT INTO `student_role` VALUES ('30', '292', '4');
INSERT INTO `student_role` VALUES ('31', '293', '4');
INSERT INTO `student_role` VALUES ('32', '294', '4');
INSERT INTO `student_role` VALUES ('33', '295', '4');
INSERT INTO `student_role` VALUES ('34', '296', '4');
INSERT INTO `student_role` VALUES ('35', '297', '4');
INSERT INTO `student_role` VALUES ('36', '298', '4');
INSERT INTO `student_role` VALUES ('37', '299', '4');
INSERT INTO `student_role` VALUES ('38', '300', '4');
INSERT INTO `student_role` VALUES ('39', '301', '4');
INSERT INTO `student_role` VALUES ('40', '302', '4');
INSERT INTO `student_role` VALUES ('41', '303', '4');
INSERT INTO `student_role` VALUES ('42', '304', '4');
INSERT INTO `student_role` VALUES ('43', '76', '4');
INSERT INTO `student_role` VALUES ('44', '77', '4');
INSERT INTO `student_role` VALUES ('45', '78', '4');
INSERT INTO `student_role` VALUES ('46', '79', '4');
INSERT INTO `student_role` VALUES ('47', '80', '4');
INSERT INTO `student_role` VALUES ('48', '82', '4');
INSERT INTO `student_role` VALUES ('49', '83', '4');
INSERT INTO `student_role` VALUES ('50', '84', '4');
INSERT INTO `student_role` VALUES ('51', '85', '4');
INSERT INTO `student_role` VALUES ('52', '86', '4');
INSERT INTO `student_role` VALUES ('53', '87', '4');
INSERT INTO `student_role` VALUES ('54', '88', '4');
INSERT INTO `student_role` VALUES ('55', '89', '4');
INSERT INTO `student_role` VALUES ('56', '90', '4');
INSERT INTO `student_role` VALUES ('57', '91', '4');
INSERT INTO `student_role` VALUES ('58', '92', '4');
INSERT INTO `student_role` VALUES ('59', '93', '4');
INSERT INTO `student_role` VALUES ('60', '94', '4');
INSERT INTO `student_role` VALUES ('61', '95', '4');
INSERT INTO `student_role` VALUES ('62', '96', '4');
INSERT INTO `student_role` VALUES ('63', '97', '4');
INSERT INTO `student_role` VALUES ('64', '98', '4');
INSERT INTO `student_role` VALUES ('65', '99', '4');
INSERT INTO `student_role` VALUES ('66', '100', '4');
INSERT INTO `student_role` VALUES ('67', '101', '4');
INSERT INTO `student_role` VALUES ('68', '102', '4');
INSERT INTO `student_role` VALUES ('69', '103', '4');
INSERT INTO `student_role` VALUES ('70', '104', '4');
INSERT INTO `student_role` VALUES ('71', '105', '4');
INSERT INTO `student_role` VALUES ('72', '106', '4');
INSERT INTO `student_role` VALUES ('73', '107', '4');
INSERT INTO `student_role` VALUES ('74', '108', '4');
INSERT INTO `student_role` VALUES ('75', '109', '4');
INSERT INTO `student_role` VALUES ('76', '110', '4');
INSERT INTO `student_role` VALUES ('77', '111', '4');
INSERT INTO `student_role` VALUES ('78', '112', '4');
INSERT INTO `student_role` VALUES ('79', '113', '4');
INSERT INTO `student_role` VALUES ('80', '114', '4');
INSERT INTO `student_role` VALUES ('81', '115', '4');
INSERT INTO `student_role` VALUES ('82', '116', '4');
INSERT INTO `student_role` VALUES ('83', '117', '4');
INSERT INTO `student_role` VALUES ('84', '118', '4');
INSERT INTO `student_role` VALUES ('85', '119', '4');
INSERT INTO `student_role` VALUES ('86', '120', '4');
INSERT INTO `student_role` VALUES ('87', '121', '4');
INSERT INTO `student_role` VALUES ('88', '122', '4');
INSERT INTO `student_role` VALUES ('89', '123', '4');
INSERT INTO `student_role` VALUES ('90', '124', '4');
INSERT INTO `student_role` VALUES ('91', '125', '4');
INSERT INTO `student_role` VALUES ('92', '126', '4');
INSERT INTO `student_role` VALUES ('93', '127', '4');
INSERT INTO `student_role` VALUES ('94', '128', '4');
INSERT INTO `student_role` VALUES ('95', '129', '4');
INSERT INTO `student_role` VALUES ('96', '130', '4');
INSERT INTO `student_role` VALUES ('97', '131', '4');
INSERT INTO `student_role` VALUES ('98', '132', '4');
INSERT INTO `student_role` VALUES ('99', '133', '4');
INSERT INTO `student_role` VALUES ('100', '134', '4');
INSERT INTO `student_role` VALUES ('101', '135', '4');
INSERT INTO `student_role` VALUES ('102', '136', '4');
INSERT INTO `student_role` VALUES ('103', '137', '4');
INSERT INTO `student_role` VALUES ('104', '138', '4');
INSERT INTO `student_role` VALUES ('105', '139', '4');
INSERT INTO `student_role` VALUES ('106', '140', '4');
INSERT INTO `student_role` VALUES ('107', '141', '4');
INSERT INTO `student_role` VALUES ('108', '142', '4');
INSERT INTO `student_role` VALUES ('109', '143', '4');
INSERT INTO `student_role` VALUES ('110', '144', '4');
INSERT INTO `student_role` VALUES ('111', '145', '4');
INSERT INTO `student_role` VALUES ('112', '146', '4');
INSERT INTO `student_role` VALUES ('130', '307', '4');

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
) ENGINE=InnoDB AUTO_INCREMENT=1574 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('3', '系统管理员', '18568887789', '1', 'admin', '$2a$10$ySG2lkvjFHY5O0./CPIE1OI8VJsuKYEzOYzqIa7AJR6sEgSzUFOAm', 'http://bpic.588ku.com/element_pic/01/40/00/64573ce2edc0728.jpg', null, '2', '123@qq.com', '9', '男', '0001', null);
INSERT INTO `teacher` VALUES ('10', '韩愈', '18568123666', '1', 'hanyu', '$2a$10$oE39aG10kB/rFu2vQeCJTu/V/v4n6DRR0f8WyXRiAYvBpmadoOBE.', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1517070040185&di=be0375e0c3db6c311b837b28c208f318&imgtype=0&src=http%3A%2F%2Fimg2.soyoung.com%2Fpost%2F20150213%2F6%2F20150213141918532.jpg', null, '2', '123@qq.com', '12', '男', '0003', null);
INSERT INTO `teacher` VALUES ('11', '柳宗元', '18568123377', '1', 'liuzongyuan', '$2a$10$oE39aG10kB/rFu2vQeCJTu/V/v4n6DRR0f8WyXRiAYvBpmadoOBE.', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1515233756&di=0856d923a0a37a87fd26604a2c871370&imgtype=jpg&er=1&src=http%3A%2F%2Fwww.qqzhi.com%2Fuploadpic%2F2014-09-27%2F041716704.jpg', null, '2', '123@qq.com', '9', '男', '0004', null);
INSERT INTO `teacher` VALUES ('12', '曾巩', '18568128888', '1', 'zenggong', '$2a$10$oE39aG10kB/rFu2vQeCJTu/V/v4n6DRR0f8WyXRiAYvBpmadoOBE.', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1517070040185&di=be0375e0c3db6c311b837b28c208f318&imgtype=0&src=http%3A%2F%2Fimg2.soyoung.com%2Fpost%2F20150213%2F6%2F20150213141918532.jpg', null, '2', '123@qq.com', '9', '男', '0005', null);
INSERT INTO `teacher` VALUES ('1557', '李白', '18639694395', '1', '0002', '$2a$10$Ap2kPpp2caJZkEN1tzhQ9.P9YS5SsCJ8AGLc3ftiAc2CSZT8z6x96', 'http://img.yifang009.com/img/userface.png', null, '2', '456@qq.com', '9', '男', '0002', null);
INSERT INTO `teacher` VALUES ('1571', '张华', null, '1', '5781', '$2a$10$TYrAqTvhyuqRc24aWi2MqOQ4YF/q8T6QEmzhHW0pZt9U83DUKTy5.', 'http://img.yifang009.com/img/userface.png', null, '2', null, '9', '女', '5781', null);
INSERT INTO `teacher` VALUES ('1572', '贾晓风', null, '1', '3715', '$2a$10$1TknXF7OJKjnDNRiWQaBHuoYNLA/xKjbSRA9gbrS.D.c13A5c.3ri', 'http://img.yifang009.com/img/userface.png', null, '2', null, '9', '女', '3715', null);
INSERT INTO `teacher` VALUES ('1573', '李志伟', null, '1', '5379', '$2a$10$4yK4tF18klRV/JZ3Ib/WOOo1ADWJP8rXIJytQNzOk32JIRLtwwLu.', 'http://img.yifang009.com/img/userface.png', null, '2', null, '12', '男', '5379', null);

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
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher_role
-- ----------------------------
INSERT INTO `teacher_role` VALUES ('5', '12', '3');
INSERT INTO `teacher_role` VALUES ('56', '1557', '1');
INSERT INTO `teacher_role` VALUES ('68', '3', '1');
INSERT INTO `teacher_role` VALUES ('69', '3', '2');
INSERT INTO `teacher_role` VALUES ('70', '3', '3');
INSERT INTO `teacher_role` VALUES ('73', '10', '1');
INSERT INTO `teacher_role` VALUES ('74', '10', '2');
INSERT INTO `teacher_role` VALUES ('83', '11', '1');
INSERT INTO `teacher_role` VALUES ('84', '1571', '1');
INSERT INTO `teacher_role` VALUES ('85', '1572', '1');
INSERT INTO `teacher_role` VALUES ('86', '1573', '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of test_paper
-- ----------------------------
INSERT INTO `test_paper` VALUES ('19', 'C语言期末考试', '1', '1', '2019-2020学年第二学期', '2020-05-03', '2020-05-18 10:34:44', '6', '4@6@3@2@5@7', '17@18@19@20@25@22@23@24@35@36@37@38@21@30@31@32@29', '3', null, '1', null, '', '100', '60', '单选题@多选题@简答题@', '1', null);
INSERT INTO `test_paper` VALUES ('27', '19级C语言期末考试', '1', '2', '2019-2020学年第二学期', '2020-05-17', '2020-05-18 09:08:43', '6', '6@1@3@2@5@7@9@8@4', '', '3', '3', '1', '0', null, '100', '60', '单选题@多选题@判断题@填空题@简答题@', '0', null);
INSERT INTO `test_paper` VALUES ('28', '16级软件工程期末测试', '1', '1', '2019-2020学年第二学期', '2020-05-17', null, '6', '1@2@3@4@5@6@9@7@8@', '15@17@19@20@21@25@28@27@35@26@30@33@31@29@23@32@34@38', '3', null, '1', null, '', '100', '60', '单选题@多选题@填空题@编程题@', '1', null);
INSERT INTO `test_paper` VALUES ('29', '手工组卷测试', '1', '2', '2019-2020学年第二学期', '2020-05-21', '2020-05-21 12:11:32', '6', '6@1@3@2@5@7@9@8@11@12@4@18', '', '3', '3', '1', '0', null, '70', '42', '单选题@判断题@填空题@简答题@', '0', null);
INSERT INTO `test_paper` VALUES ('30', '期末考试组卷', '1', '1', '2019-2020学年第二学期', '2020-05-21', null, '6', '6@1@3@2@5@7@9@10@4@8', '', '3', '3', '0', '0', null, '100', '60', '单选题@判断题@填空题@简答题@', '0', null);

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
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8;

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
INSERT INTO `tf_question` VALUES ('68', '26', '一个C源程序可以没有main函数( )', '对', null, '3', '3', '6', '6', '1', '0', '2020-05-18 16:36:14');
INSERT INTO `tf_question` VALUES ('71', '17', '增1减1运算符的前缀运算和后缀运算的表达式值是相同的。', '错', '', '3', '3', '6', '2', '1', '1', '2020-05-18 20:26:26');
INSERT INTO `tf_question` VALUES ('72', '30', '在C语言中能逐个地使用下标变量，也能一次引用整个数组。', '错', '', '3', '3', '6', '7', '1', '1', '2020-05-18 20:26:49');
INSERT INTO `tf_question` VALUES ('73', '26', '函数返回值的类型是由在定义函数时所指定的函数类型', '对', '', '3', '3', '6', '6', '1', '1', '2020-05-18 20:27:40');
INSERT INTO `tf_question` VALUES ('74', '41', '结构体成员的类型必须是基本数据类型。', '错', '', '3', '3', '6', '11', '1', '1', '2020-05-18 20:28:00');
INSERT INTO `tf_question` VALUES ('75', '17', '逻辑表达式的值只能为1或0。', '对', '', '3', '3', '6', '2', '1', '1', '2020-05-18 20:28:23');
INSERT INTO `tf_question` VALUES ('76', '15', '凡在函数中未指定存储类别的局部变量，其默认的存储类别为static', '错', '', '3', '3', '6', '1', '1', '1', '2020-05-18 20:28:42');
INSERT INTO `tf_question` VALUES ('77', '33', '一个变量的地址称为该变量的指针', '对', '', '3', '3', '6', '8', '1', '1', '2020-05-18 20:29:04');
INSERT INTO `tf_question` VALUES ('78', '33', '变量被定义后 , 它不仅有一个确定的地址值 , 而且还会有一个确定的本身值。', '错', '', '3', '3', '6', '1', '1', '1', '2020-05-18 20:29:24');
INSERT INTO `tf_question` VALUES ('79', '33', '一个数组是由连续的一块内存单元组成的，指针变量就是这块连续内存单元的首地址', '错', '', '3', '3', '6', '8', '1', '1', '2020-05-18 20:29:45');
INSERT INTO `tf_question` VALUES ('80', '41', '结构体数组中可以包含不同结构体类型的结构体变量。', '错', '', '3', '3', '6', '11', '1', '1', '2020-05-18 20:30:07');
INSERT INTO `tf_question` VALUES ('81', '42', '以“r”方式打开一个文件时，文件指针指向文件首。', '对', '', '3', '3', '6', '12', '1', '1', '2020-05-18 20:30:42');
INSERT INTO `tf_question` VALUES ('82', '15', 'C 语言程序实现与其他高级语言一样也要经过编辑、编译连接和运行这样的三步曲。', '对', '', '3', '3', '6', '1', '1', '1', '2020-05-18 20:31:06');
INSERT INTO `tf_question` VALUES ('83', '15', '变量被定义后 , 它的作用域和寿命就被确定了 , 并且不可改变。', '对', '', '3', '3', '6', '1', '1', '1', '2020-05-18 20:31:21');
INSERT INTO `tf_question` VALUES ('84', '23', 'break 可用于循环体中，不可用于switch语句中。', '错', '', '3', '3', '6', '5', '1', '1', '2020-05-18 20:31:37');
INSERT INTO `tf_question` VALUES ('85', '34', '指针变量，只能作为函数的形参，不可以作函数的实参', '对', '', '3', '3', '6', '8', '1', '1', '2020-05-18 20:32:01');
INSERT INTO `tf_question` VALUES ('86', '15', '在 C 语言程序中 , 凡是没有出现存储类说明符的变量都是自动类的。', '对', '', '3', '3', '6', '1', '1', '1', '2020-05-18 20:32:41');
INSERT INTO `tf_question` VALUES ('87', '21', '在switch语句中，多个case可以共用一组执行语句。', '对', '', '3', '3', '6', '4', '1', '1', '2020-05-18 20:33:26');
INSERT INTO `tf_question` VALUES ('88', '25', 'do-while语句先执行循环中的语句,然后再判断表达式是否为真, 如果为真则继续循环；如果为假, 则终止循环。', '对', '', '3', '3', '6', '5', '1', '1', '2020-05-18 20:33:46');
INSERT INTO `tf_question` VALUES ('89', '42', '输入操作称为写操作，将输入流中的信息存到内存时，使用写函数。', '错', '', '3', '3', '6', '12', '1', '1', '2020-05-18 20:34:13');
INSERT INTO `tf_question` VALUES ('90', '30', '数组元素通常也称为下标变量。必须先定义数组， 才能使用下标变量。', '对', '', '3', '3', '6', '7', '1', '1', '2020-05-18 20:34:32');
INSERT INTO `tf_question` VALUES ('91', '26', '函数的形参可以是常量，变量或表达式', '对', '', '3', '3', '6', '6', '1', '1', '2020-05-18 20:34:55');
INSERT INTO `tf_question` VALUES ('92', '34', '指针变量可以存放指针(地址)、数值和字符', '错', '', '3', '3', '6', '8', '1', '1', '2020-05-18 20:35:13');
INSERT INTO `tf_question` VALUES ('93', '15', '在同一个作用域中不可定义同名变量 , 在不同的作用域中可以定义同名变量。', '对', '', '3', '3', '6', '1', '1', '1', '2020-05-18 20:37:03');
INSERT INTO `tf_question` VALUES ('94', '30', '数组名能与其它变量名相同。数组名后是用方括号括起来的常量表达式，不能用圆括号。', '对', '', '3', '3', '6', '7', '1', '1', '2020-05-18 20:37:28');
INSERT INTO `tf_question` VALUES ('95', '26', '函数的实参传递到形参有两种方式值传递和地址传递', '对', '', '3', '3', '6', '6', '1', '1', '2020-05-18 20:37:47');
INSERT INTO `tf_question` VALUES ('96', '42', '文件的读函数是从输入文件中读取信息，并存放在内存中。', '对', '', '3', '3', '6', '12', '1', '1', '2020-05-18 20:52:06');
INSERT INTO `tf_question` VALUES ('97', '27', '在一个函数内部调用另一个函数的调用方式称为嵌套调用', '对', '', '3', '3', '6', '6', '1', '1', '2020-05-18 20:52:43');
INSERT INTO `tf_question` VALUES ('98', '15', '内存单元的地址与内存单元中的数据是两个完全相同的概念', '错', '', '3', '3', '6', '1', '1', '1', '2020-05-18 20:53:07');
INSERT INTO `tf_question` VALUES ('99', '34', 'char *s=\"C Language\";表示s是一个指向字符串的指针变量，把字符串的首地址赋予s', '对', '', '3', '3', '6', '8', '1', '1', '2020-05-18 20:53:32');
INSERT INTO `tf_question` VALUES ('100', '23', '循环体如包括有一个以上的语句，则必须用{}括起来，组成复合语句。', '对', '', '3', '3', '6', '5', '1', '1', '2020-05-18 20:53:56');
INSERT INTO `tf_question` VALUES ('101', '34', '有指针变量p和数组a，指针变量和数组都可以实现本身的值的改变，如p++和a++', '错', '', '3', '3', '6', '8', '1', '1', '2020-05-18 20:54:28');
INSERT INTO `tf_question` VALUES ('102', '15', 'C 语言规定 : 定义符号常量时必须用大写字母。', '错', '', '3', '3', '6', '1', '1', '1', '2020-05-18 20:55:07');
INSERT INTO `tf_question` VALUES ('103', '23', 'for循环的三个表达式可以任意省略，while,do-while也是如此。', '错', '', '3', '3', '6', '5', '1', '1', '2020-05-18 20:55:29');
INSERT INTO `tf_question` VALUES ('104', '34', '指针变量和它指向的变量之间的关系，可以用指针运算符“*”表示', '对', '', '3', '3', '6', '8', '1', '1', '2020-05-18 20:56:19');
INSERT INTO `tf_question` VALUES ('105', '19', '一个变量的数据类型被强制转换后，它将保持被强制转换后的数据类型。', '错', '', '3', '3', '6', '1', '1', '1', '2020-05-18 20:57:07');
INSERT INTO `tf_question` VALUES ('106', '36', '字符串在内存中的起始地址称为字符串的指针，可以定义一个字符指针变量指向一个字符串', '对', '', '3', '3', '6', '9', '1', '1', '2020-05-18 20:57:31');

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
