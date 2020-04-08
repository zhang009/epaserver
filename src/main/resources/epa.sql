/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : epa

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2020-04-08 23:57:25
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
  PRIMARY KEY (`id`),
  KEY `course_ibfk_1` (`classId`),
  CONSTRAINT `course_ibfk_1` FOREIGN KEY (`classId`) REFERENCES `class` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('1', 'RB概率论与数理统计', '2018-2019学年第二学期', '5');
INSERT INTO `course` VALUES ('2', '编译原理', '2018-2019学年第二学期', '5');
INSERT INTO `course` VALUES ('3', '局域网组网技术', '2018-2019学年第二学期', '5');
INSERT INTO `course` VALUES ('4', '网络安全技术', '2018-2019学年第二学期', '5');
INSERT INTO `course` VALUES ('5', '网络安全技术', '2018-2019学年第二学期', '6');
INSERT INTO `course` VALUES ('6', 'C语言程序设计', '2018-2019学年第一学期', '11');

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
  `id` int(11) NOT NULL,
  `knowIds` varchar(255) DEFAULT NULL,
  `stem` text,
  `answer` varchar(255) DEFAULT NULL,
  `analysis` text,
  `teacherId` int(11) DEFAULT NULL,
  `checkTeacherId` int(11) DEFAULT NULL,
  `courseId` int(11) DEFAULT NULL,
  `chapterId` int(11) DEFAULT NULL,
  `dot` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fb_question
-- ----------------------------

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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of knows
-- ----------------------------
INSERT INTO `knows` VALUES ('1', '测试1', '1');
INSERT INTO `knows` VALUES ('2', '测试2', '2');
INSERT INTO `knows` VALUES ('3', '测试3', '3');
INSERT INTO `knows` VALUES ('4', '测试4', '4');
INSERT INTO `knows` VALUES ('5', '测试5', '5');
INSERT INTO `knows` VALUES ('6', '测试6', '6');
INSERT INTO `knows` VALUES ('7', '测试7', '7');
INSERT INTO `knows` VALUES ('11', '测试1-1-1', '1');
INSERT INTO `knows` VALUES ('12', '666', '11');
INSERT INTO `knows` VALUES ('14', '第一个知识点', '17');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mc_option
-- ----------------------------

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
  `checkTeacherId` int(11) NOT NULL,
  `teacherId` int(11) NOT NULL,
  `courseId` int(11) NOT NULL,
  `chapterId` int(11) NOT NULL,
  `dot` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mc_question
-- ----------------------------

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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

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
INSERT INTO `menu` VALUES ('14', '/exampaper/template/**', '/pap/template', 'ExamPaperTem', '试卷模板管理', null, null, '1', '4', '1');
INSERT INTO `menu` VALUES ('15', '/exampaper/library/**', '/pap/library', 'ExamPaperLib', '试卷库管理', null, null, '1', '4', '1');
INSERT INTO `menu` VALUES ('16', '/exampaper/create/**', '/pap/create', 'ExamPaperCre', '试卷组建', null, null, '1', '4', '1');
INSERT INTO `menu` VALUES ('17', '/exampaper/check/**', '/pap/check', 'ExamPaperCheck', '试卷审核', null, null, '1', '4', '1');
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
) ENGINE=InnoDB AUTO_INCREMENT=341 DEFAULT CHARSET=utf8;

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

-- ----------------------------
-- Table structure for `qa_question`
-- ----------------------------
DROP TABLE IF EXISTS `qa_question`;
CREATE TABLE `qa_question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `knowIds` varchar(255) DEFAULT NULL,
  `stem` text,
  `answer` text,
  `analysis` text,
  `teacherId` int(11) DEFAULT NULL,
  `chapterId` int(11) DEFAULT NULL,
  `dot` int(11) DEFAULT NULL,
  `checkTeacherId` int(11) DEFAULT NULL,
  `courseId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qa_question
-- ----------------------------

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
  `refuseReason` varchar(255) DEFAULT '拒绝原因',
  PRIMARY KEY (`id`),
  KEY `question_check_ibfk_1` (`postTeacherId`),
  KEY `question_check_ibfk_2` (`checkTeacherId`),
  CONSTRAINT `question_check_ibfk_1` FOREIGN KEY (`postTeacherId`) REFERENCES `teacher` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `question_check_ibfk_2` FOREIGN KEY (`checkTeacherId`) REFERENCES `teacher` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of question_check
-- ----------------------------
INSERT INTO `question_check` VALUES ('1', '1', '3', '11', '0', 'sc', '拒绝原因');
INSERT INTO `question_check` VALUES ('2', '2', '3', '3', '0', 'sc', '拒绝原因');
INSERT INTO `question_check` VALUES ('3', '3', '3', '11', '0', 'sc', '拒绝原因');
INSERT INTO `question_check` VALUES ('4', '4', '3', '11', '0', 'sc', '拒绝原因');
INSERT INTO `question_check` VALUES ('5', '5', '3', '11', '0', 'sc', '拒绝原因');
INSERT INTO `question_check` VALUES ('6', '6', '3', '11', '0', 'sc', '拒绝原因');
INSERT INTO `question_check` VALUES ('7', '7', '3', '11', '0', 'sc', '拒绝原因');

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
  `courseId` int(11) NOT NULL,
  `chapterId` int(11) DEFAULT NULL,
  `dot` tinyint(4) DEFAULT NULL COMMENT '试题难度',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sc_question
-- ----------------------------
INSERT INTO `sc_question` VALUES ('1', null, '题干', 'A', 'B', 'C', 'D', '1', '解析', '3', '11', '6', '1', '1');
INSERT INTO `sc_question` VALUES ('2', '', '题干', 'A', 'B', 'C', 'D', '1', '解析', '3', '3', '6', '1', '1');
INSERT INTO `sc_question` VALUES ('3', '', '题干', 'ss', 'dd', 'dd', 'dd', '1', 'dd', '3', '11', '1', '17', '1');
INSERT INTO `sc_question` VALUES ('4', '', 'ss', 's', 'd', 'd', 'd', '1', 'f', '3', '11', '6', '1', '1');
INSERT INTO `sc_question` VALUES ('5', '', 'ss', 'd', 'f', 'd', 'd', '1', 's', '3', '11', '6', '2', '1');
INSERT INTO `sc_question` VALUES ('6', '', 'sss', 'dd', 'd', 'd', 'd', '1', 'd', '3', '11', '6', '1', '1');
INSERT INTO `sc_question` VALUES ('7', '1|11|2', '是是是', '的', '地方', '士大夫', '方试试', '1', '算法', '3', '11', '6', '6', '2');

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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('1', '王小虎', '201619040128', '123', '201619040128', '男', null, '1', '1', null);

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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tf_question
-- ----------------------------

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
