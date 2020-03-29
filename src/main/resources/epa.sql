/*
Navicat MySQL Data Transfer

Source Server         : linux-mysql5.7
Source Server Version : 50729
Source Host           : 39.107.252.137:3306
Source Database       : epa

Target Server Type    : MYSQL
Target Server Version : 50729
File Encoding         : 65001

Date: 2020-03-29 17:57:21
*/

SET FOREIGN_KEY_CHECKS=0;

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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

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
-- Table structure for `major`
-- ----------------------------
DROP TABLE IF EXISTS `major`;
CREATE TABLE `major` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `schoolId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

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
INSERT INTO `menu` VALUES ('19', '/analysis/all/**', '/sta/all', 'StaAll', '试卷数据分析', null, null, '1', '5', '1');
INSERT INTO `menu` VALUES ('20', '/statistics/score/**', '/sta/score', 'StaScore', '试题数据分析', null, null, '1', '5', '1');
INSERT INTO `menu` VALUES ('21', '/statistics/personnel/**', '/sta/pers', 'StaPers', '成绩信息统计', null, null, '1', '5', '1');
INSERT INTO `menu` VALUES ('22', '/statistics/recored/**', '/sta/record', 'StaRecord', '学习效果分析', null, null, '1', '5', '1');
INSERT INTO `menu` VALUES ('23', '/system/user/**', '/sys/user', 'SysUserMan', '用户管理', null, null, '1', '6', '1');
INSERT INTO `menu` VALUES ('24', '/system/authority/**', '/sys/aut', 'SysAuth', '权限管理', null, null, '1', '6', '1');
INSERT INTO `menu` VALUES ('25', '/baseinfo/department/**', '/baseinfo/dep', 'BasDep', '部门管理', null, null, '1', '33', '1');
INSERT INTO `menu` VALUES ('26', '/baseinfo/class/**', '/baseinfo/class', 'BasClass', '班级管理', null, null, '1', '33', '1');
INSERT INTO `menu` VALUES ('27', '/baseinfo/datastructure/**', '/baseinfo/datastru', 'SysDataStru', '知识结构管理', null, null, '1', '33', '1');
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

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
INSERT INTO `teacher` VALUES ('5', '李白', '18568123489', '1', 'libai', '$2a$10$oE39aG10kB/rFu2vQeCJTu/V/v4n6DRR0f8WyXRiAYvBpmadoOBE.', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1514093920321&di=913e88c23f382933ef430024afd9128a&imgtype=0&src=http%3A%2F%2Fp.3761.com%2Fpic%2F9771429316733.jpg', null, '2', '123@qq.com', '10', '男', '0002', null);
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
INSERT INTO `teacher_role` VALUES ('2', '5', '1');
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
