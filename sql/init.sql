/*
Navicat MySQL Data Transfer

Source Server         : J2EE
Source Server Version : 50720
Source Host           : 120.77.173.98:3306
Source Database       : xmu8204

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2017-12-22 22:25:51
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for attendance
-- ----------------------------
DROP TABLE IF EXISTS `attendance`;
CREATE TABLE `attendance` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `gmt_create` datetime DEFAULT CURRENT_TIMESTAMP,
  `gmt_modified` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `student_id` bigint(20) unsigned NOT NULL,
  `seminar_id` bigint(20) unsigned NOT NULL,
  `class_id` bigint(20) unsigned NOT NULL,
  `attendance_status` tinyint(3) unsigned DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of attendance
-- ----------------------------
INSERT INTO `attendance` VALUES ('1', '2017-12-16 12:10:23', '2017-12-16 12:10:23', '3', '3', '1', '0');
INSERT INTO `attendance` VALUES ('2', '2017-12-16 12:10:23', '2017-12-16 12:10:23', '4', '3', '1', '0');
INSERT INTO `attendance` VALUES ('3', '2017-12-16 12:10:23', '2017-12-16 12:10:23', '5', '3', '1', '0');
INSERT INTO `attendance` VALUES ('4', '2017-12-16 12:10:23', '2017-12-16 12:10:23', '6', '3', '1', '0');
INSERT INTO `attendance` VALUES ('5', '2017-12-16 12:10:23', '2017-12-16 12:10:23', '7', '3', '1', '0');
INSERT INTO `attendance` VALUES ('6', '2017-12-16 12:10:23', '2017-12-16 12:10:23', '8', '3', '1', '0');
INSERT INTO `attendance` VALUES ('7', '2017-12-16 12:10:23', '2017-12-16 12:10:23', '9', '3', '1', '0');
INSERT INTO `attendance` VALUES ('8', '2017-12-16 12:10:23', '2017-12-16 12:10:23', '10', '3', '1', '0');
INSERT INTO `attendance` VALUES ('9', '2017-12-16 12:10:23', '2017-12-16 12:10:23', '11', '3', '1', '0');
INSERT INTO `attendance` VALUES ('10', '2017-12-16 12:10:23', '2017-12-16 12:10:23', '12', '3', '1', '0');
INSERT INTO `attendance` VALUES ('11', '2017-12-16 12:10:23', '2017-12-16 12:10:23', '13', '3', '1', '0');
INSERT INTO `attendance` VALUES ('12', '2017-12-16 12:10:23', '2017-12-16 12:10:23', '14', '3', '1', '0');
INSERT INTO `attendance` VALUES ('13', '2017-12-16 12:10:23', '2017-12-16 12:10:23', '15', '3', '1', '0');
INSERT INTO `attendance` VALUES ('14', '2017-12-16 12:10:23', '2017-12-16 12:10:23', '16', '3', '1', '0');
INSERT INTO `attendance` VALUES ('15', '2017-12-16 12:10:23', '2017-12-16 12:10:23', '17', '3', '1', '1');
INSERT INTO `attendance` VALUES ('16', '2017-12-16 12:10:23', '2017-12-16 12:10:23', '18', '3', '1', '0');
INSERT INTO `attendance` VALUES ('17', '2017-12-16 12:10:23', '2017-12-16 12:10:23', '19', '3', '1', '0');
INSERT INTO `attendance` VALUES ('18', '2017-12-16 12:10:23', '2017-12-16 12:10:23', '20', '3', '1', '0');
INSERT INTO `attendance` VALUES ('19', '2017-12-16 12:10:23', '2017-12-16 12:10:23', '21', '3', '1', '0');
INSERT INTO `attendance` VALUES ('20', '2017-12-16 12:10:23', '2017-12-16 12:10:23', '22', '3', '1', '2');
INSERT INTO `attendance` VALUES ('21', '2017-12-16 12:10:23', '2017-12-16 12:10:23', '23', '3', '1', '0');
INSERT INTO `attendance` VALUES ('22', '2017-12-16 12:10:23', '2017-12-16 12:10:23', '24', '3', '1', '0');
INSERT INTO `attendance` VALUES ('23', '2017-12-16 12:10:23', '2017-12-16 12:10:23', '25', '3', '1', '0');
INSERT INTO `attendance` VALUES ('24', '2017-12-16 12:10:23', '2017-12-16 12:10:23', '26', '3', '1', '0');
INSERT INTO `attendance` VALUES ('25', '2017-12-16 12:10:23', '2017-12-16 12:10:23', '27', '3', '1', '0');
INSERT INTO `attendance` VALUES ('26', '2017-12-16 12:10:23', '2017-12-16 12:10:23', '28', '3', '1', '0');
INSERT INTO `attendance` VALUES ('27', '2017-12-16 12:10:23', '2017-12-16 12:10:23', '29', '3', '1', '0');
INSERT INTO `attendance` VALUES ('28', '2017-12-16 12:10:23', '2017-12-16 12:10:23', '30', '3', '1', '0');

-- ----------------------------
-- Table structure for class_info
-- ----------------------------
DROP TABLE IF EXISTS `class_info`;
CREATE TABLE `class_info` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `gmt_create` datetime DEFAULT CURRENT_TIMESTAMP,
  `gmt_modified` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `name` varchar(255) NOT NULL,
  `course_id` bigint(20) unsigned DEFAULT NULL,
  `description` varchar(5000) DEFAULT NULL,
  `site` varchar(255) DEFAULT NULL,
  `class_time` varchar(255) DEFAULT NULL,
  `report_percentage` tinyint(3) unsigned DEFAULT NULL,
  `presentation_percentage` tinyint(3) unsigned DEFAULT NULL,
  `five_point_percentage` tinyint(3) unsigned DEFAULT NULL,
  `four_point_percentage` tinyint(3) unsigned DEFAULT NULL,
  `three_point_percentage` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of class_info
-- ----------------------------
INSERT INTO `class_info` VALUES ('1', '2017-12-15 22:18:47', '2017-12-15 22:18:47', 'OOAD英文班', '1', '英文班课程说明', '海韵201', '星期一下午五六节课', '50', '50', '20', '30', '50');
INSERT INTO `class_info` VALUES ('2', '2017-12-15 22:18:47', '2017-12-15 22:18:47', 'OOAD中文班', '1', '中文班课程说明', '海韵201', '星期一下午七八节课', '50', '50', '20', '30', '50');

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `gmt_create` datetime DEFAULT CURRENT_TIMESTAMP,
  `gmt_modified` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `name` varchar(30) NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `teacher_id` bigint(20) unsigned DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `report_percentage` tinyint(3) unsigned DEFAULT NULL,
  `presentation_percentage` tinyint(3) unsigned DEFAULT NULL,
  `five_point_percentage` tinyint(3) unsigned DEFAULT NULL,
  `four_point_percentage` tinyint(3) unsigned DEFAULT NULL,
  `three_point_percentage` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('1', '2017-12-15 22:21:56', '2017-12-15 22:21:56', '课程1', '2017-09-10', '2018-02-01', '1', '课程1说明', '50', '50', '10', '30', '60');
INSERT INTO `course` VALUES ('2', '2017-12-15 22:21:56', '2017-12-15 22:21:56', '课程2', '2017-09-10', '2018-02-01', '1', '课程2说明', '50', '50', '10', '30', '60');
INSERT INTO `course` VALUES ('3', '2017-12-15 22:21:56', '2017-12-15 22:21:56', '课程3', '2017-09-10', '2018-02-01', '2', '课程3说明', '50', '50', '10', '30', '60');

-- ----------------------------
-- Table structure for course_selection
-- ----------------------------
DROP TABLE IF EXISTS `course_selection`;
CREATE TABLE `course_selection` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `gmt_create` datetime DEFAULT CURRENT_TIMESTAMP,
  `gmt_modified` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `class_id` bigint(20) unsigned DEFAULT NULL,
  `student_id` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course_selection
-- ----------------------------
INSERT INTO `course_selection` VALUES ('1', '2017-12-15 22:23:55', '2017-12-15 22:33:55', '1', '90');
INSERT INTO `course_selection` VALUES ('2', '2017-12-15 22:23:55', '2017-12-15 22:23:55', '1', '4');
INSERT INTO `course_selection` VALUES ('3', '2017-12-15 22:23:55', '2017-12-15 22:23:55', '1', '5');
INSERT INTO `course_selection` VALUES ('4', '2017-12-15 22:23:55', '2017-12-15 22:23:55', '1', '6');
INSERT INTO `course_selection` VALUES ('5', '2017-12-15 22:23:55', '2017-12-15 22:23:55', '1', '7');
INSERT INTO `course_selection` VALUES ('6', '2017-12-15 22:23:55', '2017-12-15 22:23:55', '1', '8');
INSERT INTO `course_selection` VALUES ('7', '2017-12-15 22:23:55', '2017-12-15 22:23:55', '1', '9');
INSERT INTO `course_selection` VALUES ('8', '2017-12-15 22:23:55', '2017-12-15 22:23:55', '1', '10');
INSERT INTO `course_selection` VALUES ('9', '2017-12-15 22:23:55', '2017-12-15 22:23:55', '1', '11');
INSERT INTO `course_selection` VALUES ('10', '2017-12-15 22:23:55', '2017-12-15 22:23:55', '1', '12');
INSERT INTO `course_selection` VALUES ('11', '2017-12-15 22:23:55', '2017-12-15 22:23:55', '1', '13');
INSERT INTO `course_selection` VALUES ('12', '2017-12-15 22:23:55', '2017-12-15 22:23:55', '1', '14');
INSERT INTO `course_selection` VALUES ('13', '2017-12-15 22:23:55', '2017-12-15 22:23:55', '1', '15');
INSERT INTO `course_selection` VALUES ('14', '2017-12-15 22:23:55', '2017-12-15 22:23:55', '1', '16');
INSERT INTO `course_selection` VALUES ('15', '2017-12-15 22:23:55', '2017-12-15 22:23:55', '1', '17');
INSERT INTO `course_selection` VALUES ('16', '2017-12-15 22:23:55', '2017-12-15 22:23:55', '1', '18');
INSERT INTO `course_selection` VALUES ('17', '2017-12-15 22:23:55', '2017-12-15 22:23:55', '1', '19');
INSERT INTO `course_selection` VALUES ('18', '2017-12-15 22:23:55', '2017-12-15 22:23:55', '1', '20');
INSERT INTO `course_selection` VALUES ('19', '2017-12-15 22:23:55', '2017-12-15 22:23:55', '1', '21');
INSERT INTO `course_selection` VALUES ('20', '2017-12-15 22:23:55', '2017-12-15 22:23:55', '1', '22');
INSERT INTO `course_selection` VALUES ('21', '2017-12-15 22:23:55', '2017-12-15 22:23:55', '1', '23');
INSERT INTO `course_selection` VALUES ('22', '2017-12-15 22:23:55', '2017-12-15 22:23:55', '1', '24');
INSERT INTO `course_selection` VALUES ('23', '2017-12-15 22:23:55', '2017-12-15 22:23:55', '1', '25');
INSERT INTO `course_selection` VALUES ('24', '2017-12-15 22:23:55', '2017-12-15 22:23:55', '1', '26');
INSERT INTO `course_selection` VALUES ('25', '2017-12-15 22:23:55', '2017-12-15 22:23:55', '1', '27');
INSERT INTO `course_selection` VALUES ('26', '2017-12-15 22:23:55', '2017-12-15 22:23:55', '1', '28');
INSERT INTO `course_selection` VALUES ('27', '2017-12-15 22:23:55', '2017-12-15 22:23:55', '1', '29');
INSERT INTO `course_selection` VALUES ('28', '2017-12-15 22:23:55', '2017-12-15 22:23:55', '1', '30');
INSERT INTO `course_selection` VALUES ('29', '2017-12-15 22:23:55', '2017-12-15 22:23:55', '2', '31');
INSERT INTO `course_selection` VALUES ('30', '2017-12-15 22:23:55', '2017-12-15 22:23:55', '2', '32');
INSERT INTO `course_selection` VALUES ('31', '2017-12-15 22:23:55', '2017-12-15 22:23:55', '2', '33');
INSERT INTO `course_selection` VALUES ('32', '2017-12-15 22:23:55', '2017-12-15 22:23:55', '2', '34');
INSERT INTO `course_selection` VALUES ('33', '2017-12-15 22:23:55', '2017-12-15 22:23:55', '2', '35');
INSERT INTO `course_selection` VALUES ('34', '2017-12-15 22:23:55', '2017-12-15 22:23:55', '2', '36');
INSERT INTO `course_selection` VALUES ('35', '2017-12-15 22:23:55', '2017-12-15 22:23:55', '2', '37');
INSERT INTO `course_selection` VALUES ('36', '2017-12-15 22:23:55', '2017-12-15 22:23:55', '2', '38');
INSERT INTO `course_selection` VALUES ('37', '2017-12-15 22:23:55', '2017-12-15 22:23:55', '2', '39');
INSERT INTO `course_selection` VALUES ('38', '2017-12-15 22:23:55', '2017-12-15 22:23:55', '2', '40');
INSERT INTO `course_selection` VALUES ('39', '2017-12-15 22:23:55', '2017-12-15 22:23:55', '2', '41');
INSERT INTO `course_selection` VALUES ('40', '2017-12-15 22:23:55', '2017-12-15 22:23:55', '2', '42');
INSERT INTO `course_selection` VALUES ('41', '2017-12-15 22:23:55', '2017-12-15 22:23:55', '2', '43');
INSERT INTO `course_selection` VALUES ('42', '2017-12-15 22:23:55', '2017-12-15 22:23:55', '2', '44');
INSERT INTO `course_selection` VALUES ('43', '2017-12-15 22:23:55', '2017-12-15 22:23:55', '2', '45');
INSERT INTO `course_selection` VALUES ('44', '2017-12-15 22:23:55', '2017-12-15 22:23:55', '2', '46');
INSERT INTO `course_selection` VALUES ('45', '2017-12-15 22:23:55', '2017-12-15 22:23:55', '2', '47');
INSERT INTO `course_selection` VALUES ('46', '2017-12-15 22:23:55', '2017-12-15 22:23:55', '2', '48');
INSERT INTO `course_selection` VALUES ('47', '2017-12-15 22:23:55', '2017-12-15 22:23:55', '2', '49');
INSERT INTO `course_selection` VALUES ('48', '2017-12-15 22:23:55', '2017-12-15 22:23:55', '2', '50');
INSERT INTO `course_selection` VALUES ('49', '2017-12-15 22:23:55', '2017-12-15 22:23:55', '2', '51');
INSERT INTO `course_selection` VALUES ('50', '2017-12-15 22:23:55', '2017-12-15 22:23:55', '2', '52');
INSERT INTO `course_selection` VALUES ('51', '2017-12-15 22:23:55', '2017-12-15 22:23:55', '2', '53');
INSERT INTO `course_selection` VALUES ('52', '2017-12-15 22:23:55', '2017-12-15 22:23:55', '2', '54');
INSERT INTO `course_selection` VALUES ('53', '2017-12-15 22:23:55', '2017-12-15 22:23:55', '2', '55');
INSERT INTO `course_selection` VALUES ('54', '2017-12-15 22:23:55', '2017-12-15 22:23:55', '2', '56');
INSERT INTO `course_selection` VALUES ('55', '2017-12-15 22:23:55', '2017-12-15 22:23:55', '2', '57');
INSERT INTO `course_selection` VALUES ('56', '2017-12-15 22:23:55', '2017-12-15 22:23:55', '2', '58');
INSERT INTO `course_selection` VALUES ('57', '2017-12-15 22:23:55', '2017-12-15 22:23:55', '2', '59');
INSERT INTO `course_selection` VALUES ('58', '2017-12-15 22:23:55', '2017-12-15 22:23:55', '2', '60');
INSERT INTO `course_selection` VALUES ('59', '2017-12-15 22:23:55', '2017-12-15 22:23:55', '2', '61');
INSERT INTO `course_selection` VALUES ('60', '2017-12-15 22:23:55', '2017-12-15 22:23:55', '2', '62');
INSERT INTO `course_selection` VALUES ('61', '2017-12-15 22:23:55', '2017-12-15 22:23:55', '2', '63');
INSERT INTO `course_selection` VALUES ('62', '2017-12-15 22:23:55', '2017-12-15 22:23:55', '2', '64');
INSERT INTO `course_selection` VALUES ('63', '2017-12-15 22:23:55', '2017-12-15 22:23:55', '2', '65');
INSERT INTO `course_selection` VALUES ('64', '2017-12-15 22:23:55', '2017-12-15 22:23:55', '2', '66');
INSERT INTO `course_selection` VALUES ('65', '2017-12-15 22:23:55', '2017-12-15 22:23:55', '2', '67');
INSERT INTO `course_selection` VALUES ('66', '2017-12-15 22:23:55', '2017-12-15 22:23:55', '2', '68');
INSERT INTO `course_selection` VALUES ('67', '2017-12-15 22:23:55', '2017-12-15 22:23:55', '2', '69');
INSERT INTO `course_selection` VALUES ('68', '2017-12-15 22:23:55', '2017-12-15 22:23:55', '2', '70');
INSERT INTO `course_selection` VALUES ('69', '2017-12-15 22:23:55', '2017-12-15 22:23:55', '2', '71');
INSERT INTO `course_selection` VALUES ('70', '2017-12-15 22:23:55', '2017-12-15 22:23:55', '2', '72');
INSERT INTO `course_selection` VALUES ('71', '2017-12-15 22:23:55', '2017-12-15 22:23:55', '2', '73');
INSERT INTO `course_selection` VALUES ('72', '2017-12-15 22:23:55', '2017-12-15 22:23:55', '2', '74');
INSERT INTO `course_selection` VALUES ('73', '2017-12-15 22:23:55', '2017-12-15 22:23:55', '2', '75');
INSERT INTO `course_selection` VALUES ('74', '2017-12-15 22:23:55', '2017-12-15 22:23:55', '2', '76');
INSERT INTO `course_selection` VALUES ('75', '2017-12-15 22:23:55', '2017-12-15 22:23:55', '2', '77');
INSERT INTO `course_selection` VALUES ('76', '2017-12-15 22:23:55', '2017-12-15 22:23:55', '2', '78');
INSERT INTO `course_selection` VALUES ('77', '2017-12-15 22:23:55', '2017-12-15 22:23:55', '2', '79');
INSERT INTO `course_selection` VALUES ('78', '2017-12-15 22:23:55', '2017-12-15 22:23:55', '2', '80');
INSERT INTO `course_selection` VALUES ('79', '2017-12-15 22:23:55', '2017-12-15 22:23:55', '2', '81');
INSERT INTO `course_selection` VALUES ('80', '2017-12-15 22:23:55', '2017-12-15 22:23:55', '2', '82');
INSERT INTO `course_selection` VALUES ('81', '2017-12-15 22:23:55', '2017-12-15 22:23:55', '2', '83');
INSERT INTO `course_selection` VALUES ('82', '2017-12-15 22:23:55', '2017-12-15 22:23:55', '2', '84');
INSERT INTO `course_selection` VALUES ('83', '2017-12-15 22:23:55', '2017-12-15 22:23:55', '2', '85');
INSERT INTO `course_selection` VALUES ('84', '2017-12-15 22:23:55', '2017-12-15 22:23:55', '2', '86');
INSERT INTO `course_selection` VALUES ('85', '2017-12-15 22:23:55', '2017-12-15 22:23:55', '2', '87');
INSERT INTO `course_selection` VALUES ('86', '2017-12-15 22:23:55', '2017-12-15 22:23:55', '2', '88');
INSERT INTO `course_selection` VALUES ('87', '2017-12-15 22:23:55', '2017-12-15 22:23:55', '2', '89');

-- ----------------------------
-- Table structure for event
-- ----------------------------
DROP TABLE IF EXISTS `event`;
CREATE TABLE `event` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `gmt_create` datetime DEFAULT CURRENT_TIMESTAMP,
  `gmt_modified` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `bean_name` varchar(255) DEFAULT NULL,
  `method_name` varchar(255) DEFAULT NULL,
  `parameter` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of event
-- ----------------------------

-- ----------------------------
-- Table structure for fix_group
-- ----------------------------
DROP TABLE IF EXISTS `fix_group`;
CREATE TABLE `fix_group` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `gmt_create` datetime DEFAULT CURRENT_TIMESTAMP,
  `gmt_modified` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `class_id` bigint(20) unsigned DEFAULT NULL,
  `leader_id` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fix_group
-- ----------------------------
INSERT INTO `fix_group` VALUES ('1', '2017-12-16 12:11:11', '2017-12-16 12:11:11', '1', '3');
INSERT INTO `fix_group` VALUES ('2', '2017-12-16 12:11:11', '2017-12-16 12:11:11', '1', '8');
INSERT INTO `fix_group` VALUES ('3', '2017-12-16 12:11:11', '2017-12-16 12:11:11', '1', '13');
INSERT INTO `fix_group` VALUES ('4', '2017-12-16 12:11:11', '2017-12-16 12:11:11', '1', '18');
INSERT INTO `fix_group` VALUES ('5', '2017-12-16 12:11:11', '2017-12-16 12:11:11', '1', '23');
INSERT INTO `fix_group` VALUES ('6', '2017-12-16 12:11:11', '2017-12-16 12:11:11', '1', '27');
INSERT INTO `fix_group` VALUES ('7', '2017-12-16 12:11:11', '2017-12-16 12:11:11', '2', '31');
INSERT INTO `fix_group` VALUES ('8', '2017-12-16 12:11:11', '2017-12-16 12:11:11', '2', '36');
INSERT INTO `fix_group` VALUES ('9', '2017-12-16 12:11:11', '2017-12-16 12:11:11', '2', '41');
INSERT INTO `fix_group` VALUES ('10', '2017-12-16 12:11:11', '2017-12-16 12:11:11', '2', '46');
INSERT INTO `fix_group` VALUES ('11', '2017-12-16 12:11:11', '2017-12-16 12:11:11', '2', '51');
INSERT INTO `fix_group` VALUES ('12', '2017-12-16 12:11:11', '2017-12-16 12:11:11', '2', '56');
INSERT INTO `fix_group` VALUES ('13', '2017-12-16 12:11:11', '2017-12-16 12:11:11', '2', '61');
INSERT INTO `fix_group` VALUES ('14', '2017-12-16 12:11:11', '2017-12-16 12:11:11', '2', '66');
INSERT INTO `fix_group` VALUES ('15', '2017-12-16 12:11:11', '2017-12-16 12:11:11', '2', '71');
INSERT INTO `fix_group` VALUES ('16', '2017-12-16 12:11:11', '2017-12-16 12:11:11', '2', '76');
INSERT INTO `fix_group` VALUES ('17', '2017-12-16 12:11:11', '2017-12-16 12:11:11', '2', '81');
INSERT INTO `fix_group` VALUES ('18', '2017-12-16 12:11:11', '2017-12-16 12:11:11', '2', '85');

-- ----------------------------
-- Table structure for fix_group_member
-- ----------------------------
DROP TABLE IF EXISTS `fix_group_member`;
CREATE TABLE `fix_group_member` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `gmt_create` datetime DEFAULT CURRENT_TIMESTAMP,
  `gmt_modified` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fix_group_id` bigint(20) unsigned DEFAULT NULL,
  `student_id` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=87 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fix_group_member
-- ----------------------------
INSERT INTO `fix_group_member` VALUES ('1', '2017-12-16 12:11:39', '2017-12-16 12:11:39', '1', '3');
INSERT INTO `fix_group_member` VALUES ('2', '2017-12-16 12:11:39', '2017-12-16 12:11:39', '1', '4');
INSERT INTO `fix_group_member` VALUES ('3', '2017-12-16 12:11:39', '2017-12-16 12:11:39', '1', '5');
INSERT INTO `fix_group_member` VALUES ('4', '2017-12-16 12:11:39', '2017-12-16 12:11:39', '1', '6');
INSERT INTO `fix_group_member` VALUES ('5', '2017-12-16 12:11:39', '2017-12-16 12:11:39', '1', '7');
INSERT INTO `fix_group_member` VALUES ('6', '2017-12-16 12:11:39', '2017-12-16 12:11:39', '2', '8');
INSERT INTO `fix_group_member` VALUES ('7', '2017-12-16 12:11:39', '2017-12-16 12:11:39', '2', '9');
INSERT INTO `fix_group_member` VALUES ('8', '2017-12-16 12:11:39', '2017-12-16 12:11:39', '2', '10');
INSERT INTO `fix_group_member` VALUES ('9', '2017-12-16 12:11:39', '2017-12-16 12:11:39', '2', '11');
INSERT INTO `fix_group_member` VALUES ('10', '2017-12-16 12:11:39', '2017-12-16 12:11:39', '2', '12');
INSERT INTO `fix_group_member` VALUES ('11', '2017-12-16 12:11:39', '2017-12-16 12:11:39', '3', '13');
INSERT INTO `fix_group_member` VALUES ('12', '2017-12-16 12:11:39', '2017-12-16 12:11:39', '3', '14');
INSERT INTO `fix_group_member` VALUES ('13', '2017-12-16 12:11:39', '2017-12-16 12:11:39', '3', '15');
INSERT INTO `fix_group_member` VALUES ('14', '2017-12-16 12:11:39', '2017-12-16 12:11:39', '3', '16');
INSERT INTO `fix_group_member` VALUES ('15', '2017-12-16 12:11:39', '2017-12-16 12:11:39', '3', '17');
INSERT INTO `fix_group_member` VALUES ('16', '2017-12-16 12:11:39', '2017-12-16 12:11:39', '4', '18');
INSERT INTO `fix_group_member` VALUES ('17', '2017-12-16 12:11:39', '2017-12-16 12:11:39', '4', '19');
INSERT INTO `fix_group_member` VALUES ('18', '2017-12-16 12:11:39', '2017-12-16 12:11:39', '4', '20');
INSERT INTO `fix_group_member` VALUES ('19', '2017-12-16 12:11:39', '2017-12-16 12:11:39', '4', '21');
INSERT INTO `fix_group_member` VALUES ('20', '2017-12-16 12:11:39', '2017-12-16 12:11:39', '4', '22');
INSERT INTO `fix_group_member` VALUES ('21', '2017-12-16 12:11:39', '2017-12-16 12:11:39', '5', '23');
INSERT INTO `fix_group_member` VALUES ('22', '2017-12-16 12:11:39', '2017-12-16 12:11:39', '5', '24');
INSERT INTO `fix_group_member` VALUES ('23', '2017-12-16 12:11:39', '2017-12-16 12:11:39', '5', '25');
INSERT INTO `fix_group_member` VALUES ('24', '2017-12-16 12:11:39', '2017-12-16 12:11:39', '5', '26');
INSERT INTO `fix_group_member` VALUES ('25', '2017-12-16 12:11:39', '2017-12-16 12:11:39', '6', '27');
INSERT INTO `fix_group_member` VALUES ('26', '2017-12-16 12:11:39', '2017-12-16 12:11:39', '6', '28');
INSERT INTO `fix_group_member` VALUES ('27', '2017-12-16 12:11:39', '2017-12-16 12:11:39', '6', '29');
INSERT INTO `fix_group_member` VALUES ('28', '2017-12-16 12:11:39', '2017-12-16 12:11:39', '6', '30');
INSERT INTO `fix_group_member` VALUES ('29', '2017-12-16 12:11:39', '2017-12-16 12:11:39', '7', '31');
INSERT INTO `fix_group_member` VALUES ('30', '2017-12-16 12:11:39', '2017-12-16 12:11:39', '7', '32');
INSERT INTO `fix_group_member` VALUES ('31', '2017-12-16 12:11:39', '2017-12-16 12:11:39', '7', '33');
INSERT INTO `fix_group_member` VALUES ('32', '2017-12-16 12:11:39', '2017-12-16 12:11:39', '7', '34');
INSERT INTO `fix_group_member` VALUES ('33', '2017-12-16 12:11:39', '2017-12-16 12:11:39', '7', '35');
INSERT INTO `fix_group_member` VALUES ('34', '2017-12-16 12:11:39', '2017-12-16 12:11:39', '8', '36');
INSERT INTO `fix_group_member` VALUES ('35', '2017-12-16 12:11:39', '2017-12-16 12:11:39', '8', '37');
INSERT INTO `fix_group_member` VALUES ('36', '2017-12-16 12:11:39', '2017-12-16 12:11:39', '8', '38');
INSERT INTO `fix_group_member` VALUES ('37', '2017-12-16 12:11:39', '2017-12-16 12:11:39', '8', '39');
INSERT INTO `fix_group_member` VALUES ('38', '2017-12-16 12:11:39', '2017-12-16 12:11:39', '8', '40');
INSERT INTO `fix_group_member` VALUES ('39', '2017-12-16 12:11:39', '2017-12-16 12:11:39', '9', '41');
INSERT INTO `fix_group_member` VALUES ('40', '2017-12-16 12:11:39', '2017-12-16 12:11:39', '9', '42');
INSERT INTO `fix_group_member` VALUES ('41', '2017-12-16 12:11:39', '2017-12-16 12:11:39', '9', '43');
INSERT INTO `fix_group_member` VALUES ('42', '2017-12-16 12:11:39', '2017-12-16 12:11:39', '9', '44');
INSERT INTO `fix_group_member` VALUES ('43', '2017-12-16 12:11:39', '2017-12-16 12:11:39', '9', '45');
INSERT INTO `fix_group_member` VALUES ('44', '2017-12-16 12:11:39', '2017-12-16 12:11:39', '10', '46');
INSERT INTO `fix_group_member` VALUES ('45', '2017-12-16 12:11:39', '2017-12-16 12:11:39', '10', '47');
INSERT INTO `fix_group_member` VALUES ('46', '2017-12-16 12:11:39', '2017-12-16 12:11:39', '10', '48');
INSERT INTO `fix_group_member` VALUES ('47', '2017-12-16 12:11:39', '2017-12-16 12:11:39', '10', '49');
INSERT INTO `fix_group_member` VALUES ('48', '2017-12-16 12:11:39', '2017-12-16 12:11:39', '10', '50');
INSERT INTO `fix_group_member` VALUES ('49', '2017-12-16 12:11:39', '2017-12-16 12:11:39', '11', '51');
INSERT INTO `fix_group_member` VALUES ('50', '2017-12-16 12:11:39', '2017-12-16 12:11:39', '11', '52');
INSERT INTO `fix_group_member` VALUES ('51', '2017-12-16 12:11:39', '2017-12-16 12:11:39', '11', '53');
INSERT INTO `fix_group_member` VALUES ('52', '2017-12-16 12:11:39', '2017-12-16 12:11:39', '11', '54');
INSERT INTO `fix_group_member` VALUES ('53', '2017-12-16 12:11:39', '2017-12-16 12:11:39', '11', '55');
INSERT INTO `fix_group_member` VALUES ('54', '2017-12-16 12:11:39', '2017-12-16 12:11:39', '12', '56');
INSERT INTO `fix_group_member` VALUES ('55', '2017-12-16 12:11:39', '2017-12-16 12:11:39', '12', '57');
INSERT INTO `fix_group_member` VALUES ('56', '2017-12-16 12:11:39', '2017-12-16 12:11:39', '12', '58');
INSERT INTO `fix_group_member` VALUES ('57', '2017-12-16 12:11:39', '2017-12-16 12:11:39', '12', '59');
INSERT INTO `fix_group_member` VALUES ('58', '2017-12-16 12:11:39', '2017-12-16 12:11:39', '12', '60');
INSERT INTO `fix_group_member` VALUES ('59', '2017-12-16 12:11:39', '2017-12-16 12:11:39', '13', '61');
INSERT INTO `fix_group_member` VALUES ('60', '2017-12-16 12:11:39', '2017-12-16 12:11:39', '13', '62');
INSERT INTO `fix_group_member` VALUES ('61', '2017-12-16 12:11:39', '2017-12-16 12:11:39', '13', '63');
INSERT INTO `fix_group_member` VALUES ('62', '2017-12-16 12:11:39', '2017-12-16 12:11:39', '13', '64');
INSERT INTO `fix_group_member` VALUES ('63', '2017-12-16 12:11:39', '2017-12-16 12:11:39', '13', '65');
INSERT INTO `fix_group_member` VALUES ('64', '2017-12-16 12:11:39', '2017-12-16 12:11:39', '14', '66');
INSERT INTO `fix_group_member` VALUES ('65', '2017-12-16 12:11:39', '2017-12-16 12:11:39', '14', '67');
INSERT INTO `fix_group_member` VALUES ('66', '2017-12-16 12:11:39', '2017-12-16 12:11:39', '14', '68');
INSERT INTO `fix_group_member` VALUES ('67', '2017-12-16 12:11:39', '2017-12-16 12:11:39', '14', '69');
INSERT INTO `fix_group_member` VALUES ('68', '2017-12-16 12:11:39', '2017-12-16 12:11:39', '14', '70');
INSERT INTO `fix_group_member` VALUES ('69', '2017-12-16 12:11:39', '2017-12-16 12:11:39', '15', '71');
INSERT INTO `fix_group_member` VALUES ('70', '2017-12-16 12:11:39', '2017-12-16 12:11:39', '15', '72');
INSERT INTO `fix_group_member` VALUES ('71', '2017-12-16 12:11:39', '2017-12-16 12:11:39', '15', '73');
INSERT INTO `fix_group_member` VALUES ('72', '2017-12-16 12:11:39', '2017-12-16 12:11:39', '15', '74');
INSERT INTO `fix_group_member` VALUES ('73', '2017-12-16 12:11:39', '2017-12-16 12:11:39', '15', '75');
INSERT INTO `fix_group_member` VALUES ('74', '2017-12-16 12:11:39', '2017-12-16 12:11:39', '16', '76');
INSERT INTO `fix_group_member` VALUES ('75', '2017-12-16 12:11:39', '2017-12-16 12:11:39', '16', '77');
INSERT INTO `fix_group_member` VALUES ('76', '2017-12-16 12:11:39', '2017-12-16 12:11:39', '16', '78');
INSERT INTO `fix_group_member` VALUES ('77', '2017-12-16 12:11:39', '2017-12-16 12:11:39', '16', '79');
INSERT INTO `fix_group_member` VALUES ('78', '2017-12-16 12:11:39', '2017-12-16 12:11:39', '16', '80');
INSERT INTO `fix_group_member` VALUES ('79', '2017-12-16 12:11:39', '2017-12-16 12:11:39', '17', '81');
INSERT INTO `fix_group_member` VALUES ('80', '2017-12-16 12:11:39', '2017-12-16 12:11:39', '17', '82');
INSERT INTO `fix_group_member` VALUES ('81', '2017-12-16 12:11:39', '2017-12-16 12:11:39', '17', '83');
INSERT INTO `fix_group_member` VALUES ('82', '2017-12-16 12:11:39', '2017-12-16 12:11:39', '17', '84');
INSERT INTO `fix_group_member` VALUES ('83', '2017-12-16 12:11:39', '2017-12-16 12:11:39', '18', '85');
INSERT INTO `fix_group_member` VALUES ('84', '2017-12-16 12:11:39', '2017-12-16 12:11:39', '18', '86');
INSERT INTO `fix_group_member` VALUES ('85', '2017-12-16 12:11:39', '2017-12-16 12:11:39', '18', '87');
INSERT INTO `fix_group_member` VALUES ('86', '2017-12-16 12:11:39', '2017-12-16 12:11:39', '18', '88');

-- ----------------------------
-- Table structure for location
-- ----------------------------
DROP TABLE IF EXISTS `location`;
CREATE TABLE `location` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `gmt_create` datetime DEFAULT CURRENT_TIMESTAMP,
  `gmt_modified` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `class_id` bigint(20) unsigned DEFAULT NULL,
  `seminar_id` bigint(20) unsigned DEFAULT NULL,
  `longitude` decimal(10,6) DEFAULT NULL,
  `latitude` decimal(10,6) DEFAULT NULL,
  `status` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of location
-- ----------------------------

-- ----------------------------
-- Table structure for school
-- ----------------------------
DROP TABLE IF EXISTS `school`;
CREATE TABLE `school` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `gmt_create` datetime DEFAULT CURRENT_TIMESTAMP,
  `gmt_modified` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `name` varchar(20) NOT NULL,
  `province` varchar(10) NOT NULL,
  `city` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`,`province`,`city`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of school
-- ----------------------------
INSERT INTO `school` VALUES ('1', '2017-12-15 22:25:31', '2017-12-15 22:25:31', '重庆大学', '直辖市', '重庆');
INSERT INTO `school` VALUES ('2', '2017-12-15 22:25:31', '2017-12-15 22:25:31', '黄南大学', '青海', '黄南');
INSERT INTO `school` VALUES ('3', '2017-12-15 22:25:31', '2017-12-15 22:25:31', '嘉峪关大学', '甘肃', '嘉峪关');
INSERT INTO `school` VALUES ('4', '2017-12-15 22:25:31', '2017-12-15 22:25:31', '天津大学', '直辖市', '天津');
INSERT INTO `school` VALUES ('5', '2017-12-15 22:25:31', '2017-12-15 22:25:31', '钦州大学', '广西', '钦州');
INSERT INTO `school` VALUES ('6', '2017-12-15 22:25:31', '2017-12-15 22:25:31', '蚌埠大学', '安徽', '蚌埠');
INSERT INTO `school` VALUES ('7', '2017-12-15 22:25:31', '2017-12-15 22:25:31', '锡林郭勒大学', '内蒙古', '锡林郭勒');
INSERT INTO `school` VALUES ('8', '2017-12-15 22:25:31', '2017-12-15 22:25:31', '东营大学', '山东', '东营');
INSERT INTO `school` VALUES ('9', '2017-12-15 22:25:31', '2017-12-15 22:25:31', '鹤壁大学', '河南', '鹤壁');
INSERT INTO `school` VALUES ('10', '2017-12-15 22:25:31', '2017-12-15 22:25:31', '朔州大学', '山西', '朔州');

-- ----------------------------
-- Table structure for seminar
-- ----------------------------
DROP TABLE IF EXISTS `seminar`;
CREATE TABLE `seminar` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `gmt_create` datetime DEFAULT CURRENT_TIMESTAMP,
  `gmt_modified` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `name` varchar(300) NOT NULL,
  `description` varchar(5000) DEFAULT NULL,
  `course_id` bigint(20) unsigned DEFAULT NULL,
  `is_fixed` tinyint(3) unsigned DEFAULT '0',
  `start_time` date NOT NULL,
  `end_time` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of seminar
-- ----------------------------
INSERT INTO `seminar` VALUES ('1', '2017-12-15 22:27:02', '2017-12-15 22:27:02', '讨论课1', '讨论课1说明', '1', '1', '2017-12-15', '2017-12-15');
INSERT INTO `seminar` VALUES ('2', '2017-12-15 22:27:02', '2017-12-15 22:27:02', '讨论课2', '讨论课2说明', '1', '1', '2017-12-15', '2017-12-23');
INSERT INTO `seminar` VALUES ('3', '2017-12-15 22:27:02', '2017-12-15 22:27:02', '讨论课3', '讨论课3说明', '1', '0', '2017-12-15', '2017-12-23');

-- ----------------------------
-- Table structure for seminar_group
-- ----------------------------
DROP TABLE IF EXISTS `seminar_group`;
CREATE TABLE `seminar_group` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `gmt_create` datetime DEFAULT CURRENT_TIMESTAMP,
  `gmt_modified` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `seminar_id` bigint(20) unsigned DEFAULT NULL,
  `report_grade` int(10) unsigned DEFAULT NULL,
  `presentation_grade` int(10) unsigned DEFAULT NULL,
  `final_grade` int(10) unsigned DEFAULT NULL,
  `report` varchar(100) DEFAULT NULL,
  `class_id` bigint(20) unsigned DEFAULT NULL,
  `leader_id` bigint(20) unsigned DEFAULT NULL,
  `fix_group_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of seminar_group
-- ----------------------------
INSERT INTO `seminar_group` VALUES ('1', '2017-12-16 12:12:18', '2017-12-16 12:12:18', '1', '5', '5', '5', '', '1', '3', null);
INSERT INTO `seminar_group` VALUES ('2', '2017-12-16 12:12:18', '2017-12-16 12:12:18', '1', '4', '5', '5', '', '1', '8', null);
INSERT INTO `seminar_group` VALUES ('3', '2017-12-16 12:12:18', '2017-12-16 12:12:18', '1', '5', '4', '5', '', '1', '13', null);
INSERT INTO `seminar_group` VALUES ('4', '2017-12-16 12:12:18', '2017-12-16 12:12:18', '1', '5', '3', '4', '', '1', '18', null);
INSERT INTO `seminar_group` VALUES ('5', '2017-12-16 12:12:18', '2017-12-16 12:12:18', '1', '4', '5', '5', '', '1', '23', null);
INSERT INTO `seminar_group` VALUES ('6', '2017-12-16 12:12:18', '2017-12-16 12:12:18', '1', '3', '4', '4', '', '1', '27', null);
INSERT INTO `seminar_group` VALUES ('7', '2017-12-16 12:12:18', '2017-12-16 12:12:18', '1', '5', '4', '5', '', '2', '31', null);
INSERT INTO `seminar_group` VALUES ('8', '2017-12-16 12:12:18', '2017-12-16 12:12:18', '1', '4', '4', '4', '', '2', '36', null);
INSERT INTO `seminar_group` VALUES ('9', '2017-12-16 12:12:18', '2017-12-16 12:12:18', '1', '5', '5', '5', '', '2', '41', null);
INSERT INTO `seminar_group` VALUES ('10', '2017-12-16 12:12:18', '2017-12-16 12:12:18', '1', '5', '5', '5', '', '2', '46', null);
INSERT INTO `seminar_group` VALUES ('11', '2017-12-16 12:12:18', '2017-12-16 12:12:18', '1', '4', '5', '5', '', '2', '51', null);
INSERT INTO `seminar_group` VALUES ('12', '2017-12-16 12:12:18', '2017-12-16 12:12:18', '1', '3', '3', '3', '', '2', '56', null);
INSERT INTO `seminar_group` VALUES ('13', '2017-12-16 12:12:18', '2017-12-16 12:12:18', '1', '5', '3', '4', '', '2', '61', null);
INSERT INTO `seminar_group` VALUES ('14', '2017-12-16 12:12:18', '2017-12-16 12:12:18', '1', '4', '5', '5', '', '2', '66', null);
INSERT INTO `seminar_group` VALUES ('15', '2017-12-16 12:12:18', '2017-12-16 12:12:18', '1', '5', '4', '5', '', '2', '71', null);
INSERT INTO `seminar_group` VALUES ('16', '2017-12-16 12:12:18', '2017-12-16 12:12:18', '1', '5', '5', '5', '', '2', '76', null);
INSERT INTO `seminar_group` VALUES ('17', '2017-12-16 12:12:18', '2017-12-16 12:12:18', '1', '4', '4', '4', '', '2', '81', null);
INSERT INTO `seminar_group` VALUES ('18', '2017-12-16 12:12:18', '2017-12-16 12:12:18', '1', '3', '5', '4', '', '2', '85', null);
INSERT INTO `seminar_group` VALUES ('19', '2017-12-16 12:12:18', '2017-12-16 12:12:18', '2', null, null, null, '', '2', '31', null);
INSERT INTO `seminar_group` VALUES ('20', '2017-12-16 12:12:18', '2017-12-16 12:12:18', '2', null, null, null, '', '2', '36', null);
INSERT INTO `seminar_group` VALUES ('21', '2017-12-16 12:12:18', '2017-12-16 12:12:18', '2', null, null, null, '', '2', '41', null);
INSERT INTO `seminar_group` VALUES ('22', '2017-12-16 12:12:18', '2017-12-16 12:12:18', '2', null, null, null, '', '2', '46', null);
INSERT INTO `seminar_group` VALUES ('23', '2017-12-16 12:12:18', '2017-12-16 12:12:18', '2', null, null, null, '', '2', '51', null);
INSERT INTO `seminar_group` VALUES ('24', '2017-12-16 12:12:18', '2017-12-16 12:12:18', '2', null, null, null, '', '2', '56', null);
INSERT INTO `seminar_group` VALUES ('25', '2017-12-16 12:12:18', '2017-12-16 12:12:18', '2', null, null, null, '', '2', '61', null);
INSERT INTO `seminar_group` VALUES ('26', '2017-12-16 12:12:18', '2017-12-16 12:12:18', '2', null, null, null, '', '2', '66', null);
INSERT INTO `seminar_group` VALUES ('27', '2017-12-16 12:12:18', '2017-12-16 12:12:18', '2', null, null, null, '', '2', '71', null);
INSERT INTO `seminar_group` VALUES ('28', '2017-12-16 12:12:18', '2017-12-16 12:12:18', '2', null, null, null, '', '2', '76', null);
INSERT INTO `seminar_group` VALUES ('29', '2017-12-16 12:12:18', '2017-12-16 12:12:18', '2', null, null, null, '', '2', '81', null);
INSERT INTO `seminar_group` VALUES ('30', '2017-12-16 12:12:18', '2017-12-16 12:12:18', '2', null, null, null, '', '2', '85', null);
INSERT INTO `seminar_group` VALUES ('31', '2017-12-16 12:12:18', '2017-12-16 12:12:18', '3', null, null, null, '', '1', '3', null);
INSERT INTO `seminar_group` VALUES ('32', '2017-12-16 12:12:18', '2017-12-16 12:12:18', '3', null, null, null, '', '1', '8', null);
INSERT INTO `seminar_group` VALUES ('33', '2017-12-16 12:12:18', '2017-12-16 12:12:18', '3', null, null, null, '', '1', '13', null);
INSERT INTO `seminar_group` VALUES ('34', '2017-12-16 12:12:18', '2017-12-16 12:12:18', '3', null, null, null, '', '1', '18', null);
INSERT INTO `seminar_group` VALUES ('35', '2017-12-16 12:12:18', '2017-12-16 12:12:18', '3', null, null, null, '', '1', '23', null);
INSERT INTO `seminar_group` VALUES ('36', '2017-12-16 12:12:18', '2017-12-16 12:12:18', '3', null, null, null, '', '1', '27', null);

-- ----------------------------
-- Table structure for seminar_group_member
-- ----------------------------
DROP TABLE IF EXISTS `seminar_group_member`;
CREATE TABLE `seminar_group_member` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `gmt_create` datetime DEFAULT CURRENT_TIMESTAMP,
  `gmt_modified` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `seminar_group_id` bigint(20) unsigned DEFAULT NULL,
  `student_id` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=171 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of seminar_group_member
-- ----------------------------
INSERT INTO `seminar_group_member` VALUES ('1', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '1', '3');
INSERT INTO `seminar_group_member` VALUES ('2', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '1', '4');
INSERT INTO `seminar_group_member` VALUES ('3', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '1', '5');
INSERT INTO `seminar_group_member` VALUES ('4', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '1', '6');
INSERT INTO `seminar_group_member` VALUES ('5', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '1', '7');
INSERT INTO `seminar_group_member` VALUES ('6', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '2', '8');
INSERT INTO `seminar_group_member` VALUES ('7', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '2', '9');
INSERT INTO `seminar_group_member` VALUES ('8', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '2', '10');
INSERT INTO `seminar_group_member` VALUES ('9', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '2', '11');
INSERT INTO `seminar_group_member` VALUES ('10', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '2', '12');
INSERT INTO `seminar_group_member` VALUES ('11', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '3', '13');
INSERT INTO `seminar_group_member` VALUES ('12', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '3', '14');
INSERT INTO `seminar_group_member` VALUES ('13', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '3', '15');
INSERT INTO `seminar_group_member` VALUES ('14', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '3', '16');
INSERT INTO `seminar_group_member` VALUES ('15', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '3', '17');
INSERT INTO `seminar_group_member` VALUES ('16', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '4', '18');
INSERT INTO `seminar_group_member` VALUES ('17', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '4', '19');
INSERT INTO `seminar_group_member` VALUES ('18', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '4', '20');
INSERT INTO `seminar_group_member` VALUES ('19', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '4', '21');
INSERT INTO `seminar_group_member` VALUES ('20', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '4', '22');
INSERT INTO `seminar_group_member` VALUES ('21', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '5', '23');
INSERT INTO `seminar_group_member` VALUES ('22', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '5', '24');
INSERT INTO `seminar_group_member` VALUES ('23', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '5', '25');
INSERT INTO `seminar_group_member` VALUES ('24', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '5', '26');
INSERT INTO `seminar_group_member` VALUES ('25', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '6', '27');
INSERT INTO `seminar_group_member` VALUES ('26', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '6', '28');
INSERT INTO `seminar_group_member` VALUES ('27', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '6', '29');
INSERT INTO `seminar_group_member` VALUES ('28', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '6', '30');
INSERT INTO `seminar_group_member` VALUES ('29', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '7', '31');
INSERT INTO `seminar_group_member` VALUES ('30', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '7', '32');
INSERT INTO `seminar_group_member` VALUES ('31', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '7', '33');
INSERT INTO `seminar_group_member` VALUES ('32', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '7', '34');
INSERT INTO `seminar_group_member` VALUES ('33', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '7', '35');
INSERT INTO `seminar_group_member` VALUES ('34', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '8', '36');
INSERT INTO `seminar_group_member` VALUES ('35', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '8', '37');
INSERT INTO `seminar_group_member` VALUES ('36', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '8', '38');
INSERT INTO `seminar_group_member` VALUES ('37', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '8', '39');
INSERT INTO `seminar_group_member` VALUES ('38', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '8', '40');
INSERT INTO `seminar_group_member` VALUES ('39', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '9', '41');
INSERT INTO `seminar_group_member` VALUES ('40', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '9', '42');
INSERT INTO `seminar_group_member` VALUES ('41', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '9', '43');
INSERT INTO `seminar_group_member` VALUES ('42', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '9', '44');
INSERT INTO `seminar_group_member` VALUES ('43', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '9', '45');
INSERT INTO `seminar_group_member` VALUES ('44', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '10', '46');
INSERT INTO `seminar_group_member` VALUES ('45', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '10', '47');
INSERT INTO `seminar_group_member` VALUES ('46', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '10', '48');
INSERT INTO `seminar_group_member` VALUES ('47', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '10', '49');
INSERT INTO `seminar_group_member` VALUES ('48', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '10', '50');
INSERT INTO `seminar_group_member` VALUES ('49', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '11', '51');
INSERT INTO `seminar_group_member` VALUES ('50', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '11', '52');
INSERT INTO `seminar_group_member` VALUES ('51', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '11', '53');
INSERT INTO `seminar_group_member` VALUES ('52', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '11', '54');
INSERT INTO `seminar_group_member` VALUES ('53', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '11', '55');
INSERT INTO `seminar_group_member` VALUES ('54', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '12', '56');
INSERT INTO `seminar_group_member` VALUES ('55', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '12', '57');
INSERT INTO `seminar_group_member` VALUES ('56', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '12', '58');
INSERT INTO `seminar_group_member` VALUES ('57', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '12', '59');
INSERT INTO `seminar_group_member` VALUES ('58', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '12', '60');
INSERT INTO `seminar_group_member` VALUES ('59', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '13', '61');
INSERT INTO `seminar_group_member` VALUES ('60', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '13', '62');
INSERT INTO `seminar_group_member` VALUES ('61', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '13', '63');
INSERT INTO `seminar_group_member` VALUES ('62', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '13', '64');
INSERT INTO `seminar_group_member` VALUES ('63', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '13', '65');
INSERT INTO `seminar_group_member` VALUES ('64', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '14', '66');
INSERT INTO `seminar_group_member` VALUES ('65', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '14', '67');
INSERT INTO `seminar_group_member` VALUES ('66', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '14', '68');
INSERT INTO `seminar_group_member` VALUES ('67', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '14', '69');
INSERT INTO `seminar_group_member` VALUES ('68', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '14', '70');
INSERT INTO `seminar_group_member` VALUES ('69', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '15', '71');
INSERT INTO `seminar_group_member` VALUES ('70', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '15', '72');
INSERT INTO `seminar_group_member` VALUES ('71', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '15', '73');
INSERT INTO `seminar_group_member` VALUES ('72', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '15', '74');
INSERT INTO `seminar_group_member` VALUES ('73', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '15', '75');
INSERT INTO `seminar_group_member` VALUES ('74', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '16', '76');
INSERT INTO `seminar_group_member` VALUES ('75', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '16', '77');
INSERT INTO `seminar_group_member` VALUES ('76', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '16', '78');
INSERT INTO `seminar_group_member` VALUES ('77', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '16', '79');
INSERT INTO `seminar_group_member` VALUES ('78', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '16', '80');
INSERT INTO `seminar_group_member` VALUES ('79', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '17', '81');
INSERT INTO `seminar_group_member` VALUES ('80', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '17', '82');
INSERT INTO `seminar_group_member` VALUES ('81', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '17', '83');
INSERT INTO `seminar_group_member` VALUES ('82', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '17', '84');
INSERT INTO `seminar_group_member` VALUES ('83', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '18', '85');
INSERT INTO `seminar_group_member` VALUES ('84', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '18', '86');
INSERT INTO `seminar_group_member` VALUES ('85', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '18', '87');
INSERT INTO `seminar_group_member` VALUES ('86', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '18', '88');
INSERT INTO `seminar_group_member` VALUES ('87', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '19', '31');
INSERT INTO `seminar_group_member` VALUES ('88', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '19', '32');
INSERT INTO `seminar_group_member` VALUES ('89', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '19', '33');
INSERT INTO `seminar_group_member` VALUES ('90', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '19', '34');
INSERT INTO `seminar_group_member` VALUES ('91', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '19', '35');
INSERT INTO `seminar_group_member` VALUES ('92', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '20', '36');
INSERT INTO `seminar_group_member` VALUES ('93', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '20', '37');
INSERT INTO `seminar_group_member` VALUES ('94', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '20', '38');
INSERT INTO `seminar_group_member` VALUES ('95', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '20', '39');
INSERT INTO `seminar_group_member` VALUES ('96', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '20', '40');
INSERT INTO `seminar_group_member` VALUES ('97', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '21', '41');
INSERT INTO `seminar_group_member` VALUES ('98', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '21', '42');
INSERT INTO `seminar_group_member` VALUES ('99', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '21', '43');
INSERT INTO `seminar_group_member` VALUES ('100', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '21', '44');
INSERT INTO `seminar_group_member` VALUES ('101', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '21', '45');
INSERT INTO `seminar_group_member` VALUES ('102', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '22', '46');
INSERT INTO `seminar_group_member` VALUES ('103', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '22', '47');
INSERT INTO `seminar_group_member` VALUES ('104', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '22', '48');
INSERT INTO `seminar_group_member` VALUES ('105', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '22', '49');
INSERT INTO `seminar_group_member` VALUES ('106', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '22', '50');
INSERT INTO `seminar_group_member` VALUES ('107', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '23', '51');
INSERT INTO `seminar_group_member` VALUES ('108', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '23', '52');
INSERT INTO `seminar_group_member` VALUES ('109', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '23', '53');
INSERT INTO `seminar_group_member` VALUES ('110', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '23', '54');
INSERT INTO `seminar_group_member` VALUES ('111', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '23', '55');
INSERT INTO `seminar_group_member` VALUES ('112', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '24', '56');
INSERT INTO `seminar_group_member` VALUES ('113', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '24', '57');
INSERT INTO `seminar_group_member` VALUES ('114', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '24', '58');
INSERT INTO `seminar_group_member` VALUES ('115', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '24', '59');
INSERT INTO `seminar_group_member` VALUES ('116', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '24', '60');
INSERT INTO `seminar_group_member` VALUES ('117', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '25', '61');
INSERT INTO `seminar_group_member` VALUES ('118', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '25', '62');
INSERT INTO `seminar_group_member` VALUES ('119', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '25', '63');
INSERT INTO `seminar_group_member` VALUES ('120', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '25', '64');
INSERT INTO `seminar_group_member` VALUES ('121', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '25', '65');
INSERT INTO `seminar_group_member` VALUES ('122', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '26', '66');
INSERT INTO `seminar_group_member` VALUES ('123', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '26', '67');
INSERT INTO `seminar_group_member` VALUES ('124', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '26', '68');
INSERT INTO `seminar_group_member` VALUES ('125', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '26', '69');
INSERT INTO `seminar_group_member` VALUES ('126', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '26', '70');
INSERT INTO `seminar_group_member` VALUES ('127', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '27', '71');
INSERT INTO `seminar_group_member` VALUES ('128', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '27', '72');
INSERT INTO `seminar_group_member` VALUES ('129', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '27', '73');
INSERT INTO `seminar_group_member` VALUES ('130', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '27', '74');
INSERT INTO `seminar_group_member` VALUES ('131', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '27', '75');
INSERT INTO `seminar_group_member` VALUES ('132', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '28', '76');
INSERT INTO `seminar_group_member` VALUES ('133', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '28', '77');
INSERT INTO `seminar_group_member` VALUES ('134', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '28', '78');
INSERT INTO `seminar_group_member` VALUES ('135', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '28', '79');
INSERT INTO `seminar_group_member` VALUES ('136', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '28', '80');
INSERT INTO `seminar_group_member` VALUES ('137', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '29', '81');
INSERT INTO `seminar_group_member` VALUES ('138', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '29', '82');
INSERT INTO `seminar_group_member` VALUES ('139', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '29', '83');
INSERT INTO `seminar_group_member` VALUES ('140', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '29', '84');
INSERT INTO `seminar_group_member` VALUES ('141', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '30', '85');
INSERT INTO `seminar_group_member` VALUES ('142', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '30', '86');
INSERT INTO `seminar_group_member` VALUES ('143', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '30', '87');
INSERT INTO `seminar_group_member` VALUES ('144', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '30', '88');
INSERT INTO `seminar_group_member` VALUES ('145', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '31', '3');
INSERT INTO `seminar_group_member` VALUES ('146', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '31', '4');
INSERT INTO `seminar_group_member` VALUES ('147', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '31', '5');
INSERT INTO `seminar_group_member` VALUES ('148', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '31', '6');
INSERT INTO `seminar_group_member` VALUES ('149', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '31', '7');
INSERT INTO `seminar_group_member` VALUES ('150', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '32', '8');
INSERT INTO `seminar_group_member` VALUES ('151', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '32', '9');
INSERT INTO `seminar_group_member` VALUES ('152', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '32', '10');
INSERT INTO `seminar_group_member` VALUES ('153', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '32', '11');
INSERT INTO `seminar_group_member` VALUES ('154', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '32', '12');
INSERT INTO `seminar_group_member` VALUES ('155', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '33', '13');
INSERT INTO `seminar_group_member` VALUES ('156', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '33', '14');
INSERT INTO `seminar_group_member` VALUES ('157', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '33', '15');
INSERT INTO `seminar_group_member` VALUES ('158', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '33', '16');
INSERT INTO `seminar_group_member` VALUES ('159', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '34', '18');
INSERT INTO `seminar_group_member` VALUES ('160', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '34', '19');
INSERT INTO `seminar_group_member` VALUES ('161', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '34', '20');
INSERT INTO `seminar_group_member` VALUES ('162', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '34', '21');
INSERT INTO `seminar_group_member` VALUES ('163', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '35', '23');
INSERT INTO `seminar_group_member` VALUES ('164', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '35', '24');
INSERT INTO `seminar_group_member` VALUES ('165', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '35', '25');
INSERT INTO `seminar_group_member` VALUES ('166', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '35', '26');
INSERT INTO `seminar_group_member` VALUES ('167', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '36', '27');
INSERT INTO `seminar_group_member` VALUES ('168', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '36', '28');
INSERT INTO `seminar_group_member` VALUES ('169', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '36', '29');
INSERT INTO `seminar_group_member` VALUES ('170', '2017-12-16 12:12:45', '2017-12-16 12:12:45', '36', '30');

-- ----------------------------
-- Table structure for seminar_group_topic
-- ----------------------------
DROP TABLE IF EXISTS `seminar_group_topic`;
CREATE TABLE `seminar_group_topic` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `gmt_create` datetime DEFAULT CURRENT_TIMESTAMP,
  `gmt_modified` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `topic_id` bigint(20) unsigned DEFAULT NULL,
  `seminar_group_id` bigint(20) unsigned DEFAULT NULL,
  `presentation_grade` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of seminar_group_topic
-- ----------------------------
INSERT INTO `seminar_group_topic` VALUES ('1', '2017-12-16 12:13:03', '2017-12-16 12:13:03', '1', '1', '4');
INSERT INTO `seminar_group_topic` VALUES ('2', '2017-12-16 12:13:03', '2017-12-16 12:13:03', '1', '2', '5');
INSERT INTO `seminar_group_topic` VALUES ('3', '2017-12-16 12:13:03', '2017-12-16 12:13:03', '1', '3', '3');
INSERT INTO `seminar_group_topic` VALUES ('4', '2017-12-16 12:13:03', '2017-12-16 12:13:03', '1', '4', '4');
INSERT INTO `seminar_group_topic` VALUES ('5', '2017-12-16 12:13:03', '2017-12-16 12:13:03', '1', '5', '4');
INSERT INTO `seminar_group_topic` VALUES ('6', '2017-12-16 12:13:03', '2017-12-16 12:13:03', '1', '6', '4');
INSERT INTO `seminar_group_topic` VALUES ('7', '2017-12-16 12:13:03', '2017-12-16 12:13:03', '2', '1', '4');
INSERT INTO `seminar_group_topic` VALUES ('8', '2017-12-16 12:13:03', '2017-12-16 12:13:03', '2', '2', '4');
INSERT INTO `seminar_group_topic` VALUES ('9', '2017-12-16 12:13:03', '2017-12-16 12:13:03', '2', '3', '4');
INSERT INTO `seminar_group_topic` VALUES ('10', '2017-12-16 12:13:03', '2017-12-16 12:13:03', '2', '4', '3');
INSERT INTO `seminar_group_topic` VALUES ('11', '2017-12-16 12:13:03', '2017-12-16 12:13:03', '2', '5', '4');
INSERT INTO `seminar_group_topic` VALUES ('12', '2017-12-16 12:13:03', '2017-12-16 12:13:03', '2', '6', '5');
INSERT INTO `seminar_group_topic` VALUES ('13', '2017-12-16 12:13:03', '2017-12-16 12:13:03', '1', '7', '4');
INSERT INTO `seminar_group_topic` VALUES ('14', '2017-12-16 12:13:03', '2017-12-16 12:13:03', '1', '8', '4');
INSERT INTO `seminar_group_topic` VALUES ('15', '2017-12-16 12:13:03', '2017-12-16 12:13:03', '1', '9', '4');
INSERT INTO `seminar_group_topic` VALUES ('16', '2017-12-16 12:13:03', '2017-12-16 12:13:03', '1', '10', '5');
INSERT INTO `seminar_group_topic` VALUES ('17', '2017-12-16 12:13:03', '2017-12-16 12:13:03', '1', '11', '5');
INSERT INTO `seminar_group_topic` VALUES ('18', '2017-12-16 12:13:03', '2017-12-16 12:13:03', '1', '12', '4');
INSERT INTO `seminar_group_topic` VALUES ('19', '2017-12-16 12:13:03', '2017-12-16 12:13:03', '2', '13', '3');
INSERT INTO `seminar_group_topic` VALUES ('20', '2017-12-16 12:13:03', '2017-12-16 12:13:03', '2', '14', '5');
INSERT INTO `seminar_group_topic` VALUES ('21', '2017-12-16 12:13:03', '2017-12-16 12:13:03', '2', '15', '4');
INSERT INTO `seminar_group_topic` VALUES ('22', '2017-12-16 12:13:03', '2017-12-16 12:13:03', '2', '16', '4');
INSERT INTO `seminar_group_topic` VALUES ('23', '2017-12-16 12:13:03', '2017-12-16 12:13:03', '2', '17', '3');
INSERT INTO `seminar_group_topic` VALUES ('24', '2017-12-16 12:13:03', '2017-12-16 12:13:03', '2', '18', '5');
INSERT INTO `seminar_group_topic` VALUES ('25', '2017-12-16 12:13:03', '2017-12-16 12:13:03', '3', '19', null);
INSERT INTO `seminar_group_topic` VALUES ('26', '2017-12-16 12:13:03', '2017-12-16 12:13:03', '3', '20', null);
INSERT INTO `seminar_group_topic` VALUES ('27', '2017-12-16 12:13:03', '2017-12-16 12:13:03', '3', '21', null);
INSERT INTO `seminar_group_topic` VALUES ('28', '2017-12-16 12:13:03', '2017-12-16 12:13:03', '3', '22', null);
INSERT INTO `seminar_group_topic` VALUES ('29', '2017-12-16 12:13:03', '2017-12-16 12:13:03', '3', '23', null);
INSERT INTO `seminar_group_topic` VALUES ('30', '2017-12-16 12:13:03', '2017-12-16 12:13:03', '3', '24', null);
INSERT INTO `seminar_group_topic` VALUES ('31', '2017-12-16 12:13:03', '2017-12-16 12:13:03', '4', '25', null);
INSERT INTO `seminar_group_topic` VALUES ('32', '2017-12-16 12:13:03', '2017-12-16 12:13:03', '4', '26', null);
INSERT INTO `seminar_group_topic` VALUES ('33', '2017-12-16 12:13:03', '2017-12-16 12:13:03', '4', '27', null);
INSERT INTO `seminar_group_topic` VALUES ('34', '2017-12-16 12:13:03', '2017-12-16 12:13:03', '4', '28', null);
INSERT INTO `seminar_group_topic` VALUES ('35', '2017-12-16 12:13:03', '2017-12-16 12:13:03', '4', '29', null);
INSERT INTO `seminar_group_topic` VALUES ('36', '2017-12-16 12:13:03', '2017-12-16 12:13:03', '4', '30', null);
INSERT INTO `seminar_group_topic` VALUES ('37', '2017-12-16 12:13:03', '2017-12-16 12:13:03', '5', '31', null);
INSERT INTO `seminar_group_topic` VALUES ('38', '2017-12-16 12:13:03', '2017-12-16 12:13:03', '5', '32', null);
INSERT INTO `seminar_group_topic` VALUES ('39', '2017-12-16 12:13:03', '2017-12-16 12:13:03', '5', '33', null);
INSERT INTO `seminar_group_topic` VALUES ('40', '2017-12-16 12:13:03', '2017-12-16 12:13:03', '5', '34', null);
INSERT INTO `seminar_group_topic` VALUES ('41', '2017-12-16 12:13:03', '2017-12-16 12:13:03', '5', '35', null);
INSERT INTO `seminar_group_topic` VALUES ('42', '2017-12-16 12:13:03', '2017-12-16 12:13:03', '5', '36', null);
INSERT INTO `seminar_group_topic` VALUES ('43', '2017-12-16 12:13:03', '2017-12-16 12:13:03', '6', '31', null);
INSERT INTO `seminar_group_topic` VALUES ('44', '2017-12-16 12:13:03', '2017-12-16 12:13:03', '6', '32', null);
INSERT INTO `seminar_group_topic` VALUES ('45', '2017-12-16 12:13:03', '2017-12-16 12:13:03', '6', '33', null);
INSERT INTO `seminar_group_topic` VALUES ('46', '2017-12-16 12:13:03', '2017-12-16 12:13:03', '6', '34', null);
INSERT INTO `seminar_group_topic` VALUES ('47', '2017-12-16 12:13:03', '2017-12-16 12:13:03', '6', '35', null);
INSERT INTO `seminar_group_topic` VALUES ('48', '2017-12-16 12:13:03', '2017-12-16 12:13:03', '6', '36', null);

-- ----------------------------
-- Table structure for student_score_group
-- ----------------------------
DROP TABLE IF EXISTS `student_score_group`;
CREATE TABLE `student_score_group` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `gmt_create` datetime DEFAULT CURRENT_TIMESTAMP,
  `gmt_modified` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `student_id` bigint(20) unsigned DEFAULT NULL,
  `seminar_group_topic_id` bigint(20) unsigned DEFAULT NULL,
  `grade` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=571 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student_score_group
-- ----------------------------
INSERT INTO `student_score_group` VALUES ('1', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '8', '1', '4');
INSERT INTO `student_score_group` VALUES ('2', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '9', '1', '5');
INSERT INTO `student_score_group` VALUES ('3', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '10', '1', '5');
INSERT INTO `student_score_group` VALUES ('4', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '11', '1', '5');
INSERT INTO `student_score_group` VALUES ('5', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '12', '1', '4');
INSERT INTO `student_score_group` VALUES ('6', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '13', '1', '5');
INSERT INTO `student_score_group` VALUES ('7', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '14', '1', '4');
INSERT INTO `student_score_group` VALUES ('8', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '15', '1', '5');
INSERT INTO `student_score_group` VALUES ('9', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '16', '1', '4');
INSERT INTO `student_score_group` VALUES ('10', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '17', '1', '4');
INSERT INTO `student_score_group` VALUES ('11', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '18', '1', '4');
INSERT INTO `student_score_group` VALUES ('12', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '19', '1', '4');
INSERT INTO `student_score_group` VALUES ('13', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '20', '1', '5');
INSERT INTO `student_score_group` VALUES ('14', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '21', '1', '4');
INSERT INTO `student_score_group` VALUES ('15', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '22', '1', '4');
INSERT INTO `student_score_group` VALUES ('16', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '23', '1', '4');
INSERT INTO `student_score_group` VALUES ('17', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '24', '1', '4');
INSERT INTO `student_score_group` VALUES ('18', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '25', '1', '4');
INSERT INTO `student_score_group` VALUES ('19', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '26', '1', '4');
INSERT INTO `student_score_group` VALUES ('20', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '27', '1', '3');
INSERT INTO `student_score_group` VALUES ('21', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '28', '1', '4');
INSERT INTO `student_score_group` VALUES ('22', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '29', '1', '4');
INSERT INTO `student_score_group` VALUES ('23', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '30', '1', '4');
INSERT INTO `student_score_group` VALUES ('24', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '3', '2', '4');
INSERT INTO `student_score_group` VALUES ('25', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '4', '2', '5');
INSERT INTO `student_score_group` VALUES ('26', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '5', '2', '4');
INSERT INTO `student_score_group` VALUES ('27', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '6', '2', '4');
INSERT INTO `student_score_group` VALUES ('28', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '7', '2', '5');
INSERT INTO `student_score_group` VALUES ('29', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '13', '2', '5');
INSERT INTO `student_score_group` VALUES ('30', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '14', '2', '5');
INSERT INTO `student_score_group` VALUES ('31', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '15', '2', '5');
INSERT INTO `student_score_group` VALUES ('32', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '16', '2', '4');
INSERT INTO `student_score_group` VALUES ('33', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '17', '2', '5');
INSERT INTO `student_score_group` VALUES ('34', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '18', '2', '5');
INSERT INTO `student_score_group` VALUES ('35', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '19', '2', '3');
INSERT INTO `student_score_group` VALUES ('36', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '20', '2', '5');
INSERT INTO `student_score_group` VALUES ('37', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '21', '2', '5');
INSERT INTO `student_score_group` VALUES ('38', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '22', '2', '5');
INSERT INTO `student_score_group` VALUES ('39', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '23', '2', '5');
INSERT INTO `student_score_group` VALUES ('40', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '24', '2', '5');
INSERT INTO `student_score_group` VALUES ('41', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '25', '2', '5');
INSERT INTO `student_score_group` VALUES ('42', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '26', '2', '5');
INSERT INTO `student_score_group` VALUES ('43', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '27', '2', '5');
INSERT INTO `student_score_group` VALUES ('44', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '28', '2', '5');
INSERT INTO `student_score_group` VALUES ('45', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '29', '2', '4');
INSERT INTO `student_score_group` VALUES ('46', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '30', '2', '5');
INSERT INTO `student_score_group` VALUES ('47', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '3', '3', '3');
INSERT INTO `student_score_group` VALUES ('48', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '4', '3', '3');
INSERT INTO `student_score_group` VALUES ('49', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '5', '3', '3');
INSERT INTO `student_score_group` VALUES ('50', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '6', '3', '4');
INSERT INTO `student_score_group` VALUES ('51', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '7', '3', '3');
INSERT INTO `student_score_group` VALUES ('52', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '8', '3', '3');
INSERT INTO `student_score_group` VALUES ('53', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '9', '3', '3');
INSERT INTO `student_score_group` VALUES ('54', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '10', '3', '4');
INSERT INTO `student_score_group` VALUES ('55', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '11', '3', '3');
INSERT INTO `student_score_group` VALUES ('56', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '12', '3', '3');
INSERT INTO `student_score_group` VALUES ('57', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '18', '3', '4');
INSERT INTO `student_score_group` VALUES ('58', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '19', '3', '4');
INSERT INTO `student_score_group` VALUES ('59', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '20', '3', '3');
INSERT INTO `student_score_group` VALUES ('60', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '21', '3', '4');
INSERT INTO `student_score_group` VALUES ('61', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '22', '3', '3');
INSERT INTO `student_score_group` VALUES ('62', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '23', '3', '3');
INSERT INTO `student_score_group` VALUES ('63', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '24', '3', '3');
INSERT INTO `student_score_group` VALUES ('64', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '25', '3', '3');
INSERT INTO `student_score_group` VALUES ('65', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '26', '3', '3');
INSERT INTO `student_score_group` VALUES ('66', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '27', '3', '4');
INSERT INTO `student_score_group` VALUES ('67', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '28', '3', '3');
INSERT INTO `student_score_group` VALUES ('68', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '29', '3', '3');
INSERT INTO `student_score_group` VALUES ('69', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '30', '3', '3');
INSERT INTO `student_score_group` VALUES ('70', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '3', '4', '5');
INSERT INTO `student_score_group` VALUES ('71', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '4', '4', '4');
INSERT INTO `student_score_group` VALUES ('72', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '5', '4', '4');
INSERT INTO `student_score_group` VALUES ('73', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '6', '4', '5');
INSERT INTO `student_score_group` VALUES ('74', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '7', '4', '4');
INSERT INTO `student_score_group` VALUES ('75', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '8', '4', '4');
INSERT INTO `student_score_group` VALUES ('76', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '9', '4', '4');
INSERT INTO `student_score_group` VALUES ('77', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '10', '4', '5');
INSERT INTO `student_score_group` VALUES ('78', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '11', '4', '4');
INSERT INTO `student_score_group` VALUES ('79', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '12', '4', '5');
INSERT INTO `student_score_group` VALUES ('80', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '13', '4', '4');
INSERT INTO `student_score_group` VALUES ('81', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '14', '4', '4');
INSERT INTO `student_score_group` VALUES ('82', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '15', '4', '4');
INSERT INTO `student_score_group` VALUES ('83', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '16', '4', '4');
INSERT INTO `student_score_group` VALUES ('84', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '17', '4', '5');
INSERT INTO `student_score_group` VALUES ('85', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '23', '4', '4');
INSERT INTO `student_score_group` VALUES ('86', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '24', '4', '4');
INSERT INTO `student_score_group` VALUES ('87', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '25', '4', '3');
INSERT INTO `student_score_group` VALUES ('88', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '26', '4', '3');
INSERT INTO `student_score_group` VALUES ('89', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '27', '4', '3');
INSERT INTO `student_score_group` VALUES ('90', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '28', '4', '3');
INSERT INTO `student_score_group` VALUES ('91', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '29', '4', '3');
INSERT INTO `student_score_group` VALUES ('92', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '30', '4', '3');
INSERT INTO `student_score_group` VALUES ('93', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '3', '5', '5');
INSERT INTO `student_score_group` VALUES ('94', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '4', '5', '5');
INSERT INTO `student_score_group` VALUES ('95', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '5', '5', '5');
INSERT INTO `student_score_group` VALUES ('96', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '6', '5', '5');
INSERT INTO `student_score_group` VALUES ('97', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '7', '5', '5');
INSERT INTO `student_score_group` VALUES ('98', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '8', '5', '5');
INSERT INTO `student_score_group` VALUES ('99', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '9', '5', '5');
INSERT INTO `student_score_group` VALUES ('100', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '10', '5', '5');
INSERT INTO `student_score_group` VALUES ('101', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '11', '5', '5');
INSERT INTO `student_score_group` VALUES ('102', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '12', '5', '5');
INSERT INTO `student_score_group` VALUES ('103', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '13', '5', '5');
INSERT INTO `student_score_group` VALUES ('104', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '14', '5', '4');
INSERT INTO `student_score_group` VALUES ('105', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '15', '5', '4');
INSERT INTO `student_score_group` VALUES ('106', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '16', '5', '4');
INSERT INTO `student_score_group` VALUES ('107', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '17', '5', '5');
INSERT INTO `student_score_group` VALUES ('108', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '18', '5', '4');
INSERT INTO `student_score_group` VALUES ('109', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '19', '5', '4');
INSERT INTO `student_score_group` VALUES ('110', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '20', '5', '4');
INSERT INTO `student_score_group` VALUES ('111', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '21', '5', '4');
INSERT INTO `student_score_group` VALUES ('112', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '22', '5', '4');
INSERT INTO `student_score_group` VALUES ('113', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '27', '5', '3');
INSERT INTO `student_score_group` VALUES ('114', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '28', '5', '3');
INSERT INTO `student_score_group` VALUES ('115', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '29', '5', '3');
INSERT INTO `student_score_group` VALUES ('116', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '30', '5', '3');
INSERT INTO `student_score_group` VALUES ('117', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '3', '6', '4');
INSERT INTO `student_score_group` VALUES ('118', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '4', '6', '4');
INSERT INTO `student_score_group` VALUES ('119', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '5', '6', '4');
INSERT INTO `student_score_group` VALUES ('120', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '6', '6', '3');
INSERT INTO `student_score_group` VALUES ('121', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '7', '6', '3');
INSERT INTO `student_score_group` VALUES ('122', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '8', '6', '3');
INSERT INTO `student_score_group` VALUES ('123', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '9', '6', '3');
INSERT INTO `student_score_group` VALUES ('124', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '10', '6', '3');
INSERT INTO `student_score_group` VALUES ('125', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '11', '6', '3');
INSERT INTO `student_score_group` VALUES ('126', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '12', '6', '3');
INSERT INTO `student_score_group` VALUES ('127', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '13', '6', '3');
INSERT INTO `student_score_group` VALUES ('128', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '14', '6', '3');
INSERT INTO `student_score_group` VALUES ('129', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '15', '6', '3');
INSERT INTO `student_score_group` VALUES ('130', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '16', '6', '3');
INSERT INTO `student_score_group` VALUES ('131', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '17', '6', '3');
INSERT INTO `student_score_group` VALUES ('132', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '18', '6', '3');
INSERT INTO `student_score_group` VALUES ('133', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '19', '6', '3');
INSERT INTO `student_score_group` VALUES ('134', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '20', '6', '3');
INSERT INTO `student_score_group` VALUES ('135', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '21', '6', '4');
INSERT INTO `student_score_group` VALUES ('136', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '22', '6', '4');
INSERT INTO `student_score_group` VALUES ('137', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '23', '6', '4');
INSERT INTO `student_score_group` VALUES ('138', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '24', '6', '5');
INSERT INTO `student_score_group` VALUES ('139', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '25', '6', '5');
INSERT INTO `student_score_group` VALUES ('140', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '26', '6', '5');
INSERT INTO `student_score_group` VALUES ('141', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '8', '7', '4');
INSERT INTO `student_score_group` VALUES ('142', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '9', '7', '4');
INSERT INTO `student_score_group` VALUES ('143', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '10', '7', '4');
INSERT INTO `student_score_group` VALUES ('144', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '11', '7', '4');
INSERT INTO `student_score_group` VALUES ('145', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '12', '7', '4');
INSERT INTO `student_score_group` VALUES ('146', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '13', '7', '4');
INSERT INTO `student_score_group` VALUES ('147', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '14', '7', '4');
INSERT INTO `student_score_group` VALUES ('148', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '15', '7', '4');
INSERT INTO `student_score_group` VALUES ('149', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '16', '7', '4');
INSERT INTO `student_score_group` VALUES ('150', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '17', '7', '4');
INSERT INTO `student_score_group` VALUES ('151', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '18', '7', '4');
INSERT INTO `student_score_group` VALUES ('152', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '19', '7', '4');
INSERT INTO `student_score_group` VALUES ('153', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '20', '7', '4');
INSERT INTO `student_score_group` VALUES ('154', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '21', '7', '5');
INSERT INTO `student_score_group` VALUES ('155', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '22', '7', '5');
INSERT INTO `student_score_group` VALUES ('156', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '23', '7', '5');
INSERT INTO `student_score_group` VALUES ('157', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '24', '7', '5');
INSERT INTO `student_score_group` VALUES ('158', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '25', '7', '5');
INSERT INTO `student_score_group` VALUES ('159', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '26', '7', '5');
INSERT INTO `student_score_group` VALUES ('160', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '27', '7', '5');
INSERT INTO `student_score_group` VALUES ('161', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '28', '7', '5');
INSERT INTO `student_score_group` VALUES ('162', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '29', '7', '5');
INSERT INTO `student_score_group` VALUES ('163', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '30', '7', '5');
INSERT INTO `student_score_group` VALUES ('164', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '3', '8', '5');
INSERT INTO `student_score_group` VALUES ('165', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '4', '8', '5');
INSERT INTO `student_score_group` VALUES ('166', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '5', '8', '5');
INSERT INTO `student_score_group` VALUES ('167', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '6', '8', '5');
INSERT INTO `student_score_group` VALUES ('168', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '7', '8', '5');
INSERT INTO `student_score_group` VALUES ('169', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '13', '8', '5');
INSERT INTO `student_score_group` VALUES ('170', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '14', '8', '5');
INSERT INTO `student_score_group` VALUES ('171', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '15', '8', '4');
INSERT INTO `student_score_group` VALUES ('172', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '16', '8', '4');
INSERT INTO `student_score_group` VALUES ('173', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '17', '8', '3');
INSERT INTO `student_score_group` VALUES ('174', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '18', '8', '3');
INSERT INTO `student_score_group` VALUES ('175', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '19', '8', '3');
INSERT INTO `student_score_group` VALUES ('176', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '20', '8', '3');
INSERT INTO `student_score_group` VALUES ('177', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '21', '8', '3');
INSERT INTO `student_score_group` VALUES ('178', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '22', '8', '3');
INSERT INTO `student_score_group` VALUES ('179', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '23', '8', '3');
INSERT INTO `student_score_group` VALUES ('180', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '24', '8', '3');
INSERT INTO `student_score_group` VALUES ('181', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '25', '8', '3');
INSERT INTO `student_score_group` VALUES ('182', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '26', '8', '3');
INSERT INTO `student_score_group` VALUES ('183', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '27', '8', '3');
INSERT INTO `student_score_group` VALUES ('184', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '28', '8', '3');
INSERT INTO `student_score_group` VALUES ('185', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '29', '8', '3');
INSERT INTO `student_score_group` VALUES ('186', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '30', '8', '3');
INSERT INTO `student_score_group` VALUES ('187', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '3', '9', '4');
INSERT INTO `student_score_group` VALUES ('188', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '4', '9', '4');
INSERT INTO `student_score_group` VALUES ('189', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '5', '9', '4');
INSERT INTO `student_score_group` VALUES ('190', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '6', '9', '4');
INSERT INTO `student_score_group` VALUES ('191', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '7', '9', '4');
INSERT INTO `student_score_group` VALUES ('192', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '8', '9', '4');
INSERT INTO `student_score_group` VALUES ('193', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '9', '9', '4');
INSERT INTO `student_score_group` VALUES ('194', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '10', '9', '4');
INSERT INTO `student_score_group` VALUES ('195', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '11', '9', '4');
INSERT INTO `student_score_group` VALUES ('196', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '12', '9', '4');
INSERT INTO `student_score_group` VALUES ('197', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '18', '9', '4');
INSERT INTO `student_score_group` VALUES ('198', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '19', '9', '4');
INSERT INTO `student_score_group` VALUES ('199', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '20', '9', '4');
INSERT INTO `student_score_group` VALUES ('200', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '21', '9', '4');
INSERT INTO `student_score_group` VALUES ('201', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '22', '9', '3');
INSERT INTO `student_score_group` VALUES ('202', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '23', '9', '4');
INSERT INTO `student_score_group` VALUES ('203', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '24', '9', '5');
INSERT INTO `student_score_group` VALUES ('204', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '25', '9', '5');
INSERT INTO `student_score_group` VALUES ('205', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '26', '9', '5');
INSERT INTO `student_score_group` VALUES ('206', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '27', '9', '5');
INSERT INTO `student_score_group` VALUES ('207', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '28', '9', '4');
INSERT INTO `student_score_group` VALUES ('208', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '29', '9', '4');
INSERT INTO `student_score_group` VALUES ('209', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '30', '9', '4');
INSERT INTO `student_score_group` VALUES ('210', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '3', '10', '3');
INSERT INTO `student_score_group` VALUES ('211', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '4', '10', '3');
INSERT INTO `student_score_group` VALUES ('212', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '5', '10', '3');
INSERT INTO `student_score_group` VALUES ('213', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '6', '10', '3');
INSERT INTO `student_score_group` VALUES ('214', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '7', '10', '3');
INSERT INTO `student_score_group` VALUES ('215', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '8', '10', '3');
INSERT INTO `student_score_group` VALUES ('216', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '9', '10', '3');
INSERT INTO `student_score_group` VALUES ('217', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '10', '10', '3');
INSERT INTO `student_score_group` VALUES ('218', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '11', '10', '3');
INSERT INTO `student_score_group` VALUES ('219', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '12', '10', '3');
INSERT INTO `student_score_group` VALUES ('220', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '13', '10', '3');
INSERT INTO `student_score_group` VALUES ('221', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '14', '10', '3');
INSERT INTO `student_score_group` VALUES ('222', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '15', '10', '3');
INSERT INTO `student_score_group` VALUES ('223', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '16', '10', '3');
INSERT INTO `student_score_group` VALUES ('224', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '17', '10', '3');
INSERT INTO `student_score_group` VALUES ('225', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '23', '10', '4');
INSERT INTO `student_score_group` VALUES ('226', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '24', '10', '3');
INSERT INTO `student_score_group` VALUES ('227', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '25', '10', '3');
INSERT INTO `student_score_group` VALUES ('228', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '26', '10', '3');
INSERT INTO `student_score_group` VALUES ('229', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '27', '10', '4');
INSERT INTO `student_score_group` VALUES ('230', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '28', '10', '3');
INSERT INTO `student_score_group` VALUES ('231', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '29', '10', '3');
INSERT INTO `student_score_group` VALUES ('232', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '30', '10', '3');
INSERT INTO `student_score_group` VALUES ('233', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '3', '11', '4');
INSERT INTO `student_score_group` VALUES ('234', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '4', '11', '4');
INSERT INTO `student_score_group` VALUES ('235', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '5', '11', '4');
INSERT INTO `student_score_group` VALUES ('236', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '6', '11', '4');
INSERT INTO `student_score_group` VALUES ('237', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '7', '11', '4');
INSERT INTO `student_score_group` VALUES ('238', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '8', '11', '4');
INSERT INTO `student_score_group` VALUES ('239', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '9', '11', '4');
INSERT INTO `student_score_group` VALUES ('240', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '10', '11', '4');
INSERT INTO `student_score_group` VALUES ('241', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '11', '11', '4');
INSERT INTO `student_score_group` VALUES ('242', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '12', '11', '4');
INSERT INTO `student_score_group` VALUES ('243', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '13', '11', '4');
INSERT INTO `student_score_group` VALUES ('244', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '14', '11', '4');
INSERT INTO `student_score_group` VALUES ('245', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '15', '11', '4');
INSERT INTO `student_score_group` VALUES ('246', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '16', '11', '5');
INSERT INTO `student_score_group` VALUES ('247', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '17', '11', '4');
INSERT INTO `student_score_group` VALUES ('248', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '18', '11', '4');
INSERT INTO `student_score_group` VALUES ('249', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '19', '11', '4');
INSERT INTO `student_score_group` VALUES ('250', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '20', '11', '5');
INSERT INTO `student_score_group` VALUES ('251', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '21', '11', '4');
INSERT INTO `student_score_group` VALUES ('252', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '22', '11', '4');
INSERT INTO `student_score_group` VALUES ('253', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '27', '11', '4');
INSERT INTO `student_score_group` VALUES ('254', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '28', '11', '4');
INSERT INTO `student_score_group` VALUES ('255', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '29', '11', '4');
INSERT INTO `student_score_group` VALUES ('256', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '30', '11', '4');
INSERT INTO `student_score_group` VALUES ('257', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '3', '12', '5');
INSERT INTO `student_score_group` VALUES ('258', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '4', '12', '5');
INSERT INTO `student_score_group` VALUES ('259', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '5', '12', '5');
INSERT INTO `student_score_group` VALUES ('260', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '6', '12', '5');
INSERT INTO `student_score_group` VALUES ('261', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '7', '12', '5');
INSERT INTO `student_score_group` VALUES ('262', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '8', '12', '5');
INSERT INTO `student_score_group` VALUES ('263', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '9', '12', '5');
INSERT INTO `student_score_group` VALUES ('264', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '10', '12', '5');
INSERT INTO `student_score_group` VALUES ('265', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '11', '12', '5');
INSERT INTO `student_score_group` VALUES ('266', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '12', '12', '5');
INSERT INTO `student_score_group` VALUES ('267', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '13', '12', '5');
INSERT INTO `student_score_group` VALUES ('268', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '14', '12', '5');
INSERT INTO `student_score_group` VALUES ('269', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '15', '12', '5');
INSERT INTO `student_score_group` VALUES ('270', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '16', '12', '5');
INSERT INTO `student_score_group` VALUES ('271', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '17', '12', '5');
INSERT INTO `student_score_group` VALUES ('272', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '18', '12', '5');
INSERT INTO `student_score_group` VALUES ('273', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '19', '12', '5');
INSERT INTO `student_score_group` VALUES ('274', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '20', '12', '5');
INSERT INTO `student_score_group` VALUES ('275', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '21', '12', '4');
INSERT INTO `student_score_group` VALUES ('276', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '22', '12', '4');
INSERT INTO `student_score_group` VALUES ('277', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '23', '12', '3');
INSERT INTO `student_score_group` VALUES ('278', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '24', '12', '5');
INSERT INTO `student_score_group` VALUES ('279', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '25', '12', '5');
INSERT INTO `student_score_group` VALUES ('280', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '26', '12', '4');
INSERT INTO `student_score_group` VALUES ('281', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '36', '13', '3');
INSERT INTO `student_score_group` VALUES ('282', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '37', '13', '3');
INSERT INTO `student_score_group` VALUES ('283', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '38', '13', '3');
INSERT INTO `student_score_group` VALUES ('284', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '39', '13', '3');
INSERT INTO `student_score_group` VALUES ('285', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '40', '13', '3');
INSERT INTO `student_score_group` VALUES ('286', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '41', '13', '3');
INSERT INTO `student_score_group` VALUES ('287', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '42', '13', '3');
INSERT INTO `student_score_group` VALUES ('288', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '43', '13', '3');
INSERT INTO `student_score_group` VALUES ('289', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '44', '13', '3');
INSERT INTO `student_score_group` VALUES ('290', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '45', '13', '3');
INSERT INTO `student_score_group` VALUES ('291', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '46', '13', '3');
INSERT INTO `student_score_group` VALUES ('292', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '47', '13', '3');
INSERT INTO `student_score_group` VALUES ('293', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '48', '13', '3');
INSERT INTO `student_score_group` VALUES ('294', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '49', '13', '3');
INSERT INTO `student_score_group` VALUES ('295', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '50', '13', '3');
INSERT INTO `student_score_group` VALUES ('296', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '51', '13', '5');
INSERT INTO `student_score_group` VALUES ('297', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '52', '13', '5');
INSERT INTO `student_score_group` VALUES ('298', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '53', '13', '5');
INSERT INTO `student_score_group` VALUES ('299', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '54', '13', '5');
INSERT INTO `student_score_group` VALUES ('300', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '55', '13', '5');
INSERT INTO `student_score_group` VALUES ('301', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '56', '13', '5');
INSERT INTO `student_score_group` VALUES ('302', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '57', '13', '5');
INSERT INTO `student_score_group` VALUES ('303', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '58', '13', '5');
INSERT INTO `student_score_group` VALUES ('304', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '59', '13', '5');
INSERT INTO `student_score_group` VALUES ('305', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '60', '13', '5');
INSERT INTO `student_score_group` VALUES ('306', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '31', '14', '4');
INSERT INTO `student_score_group` VALUES ('307', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '32', '14', '4');
INSERT INTO `student_score_group` VALUES ('308', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '33', '14', '4');
INSERT INTO `student_score_group` VALUES ('309', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '34', '14', '4');
INSERT INTO `student_score_group` VALUES ('310', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '35', '14', '4');
INSERT INTO `student_score_group` VALUES ('311', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '41', '14', '4');
INSERT INTO `student_score_group` VALUES ('312', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '42', '14', '3');
INSERT INTO `student_score_group` VALUES ('313', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '43', '14', '3');
INSERT INTO `student_score_group` VALUES ('314', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '44', '14', '3');
INSERT INTO `student_score_group` VALUES ('315', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '45', '14', '3');
INSERT INTO `student_score_group` VALUES ('316', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '46', '14', '3');
INSERT INTO `student_score_group` VALUES ('317', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '47', '14', '3');
INSERT INTO `student_score_group` VALUES ('318', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '48', '14', '3');
INSERT INTO `student_score_group` VALUES ('319', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '49', '14', '3');
INSERT INTO `student_score_group` VALUES ('320', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '50', '14', '3');
INSERT INTO `student_score_group` VALUES ('321', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '51', '14', '3');
INSERT INTO `student_score_group` VALUES ('322', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '52', '14', '5');
INSERT INTO `student_score_group` VALUES ('323', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '53', '14', '5');
INSERT INTO `student_score_group` VALUES ('324', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '54', '14', '5');
INSERT INTO `student_score_group` VALUES ('325', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '55', '14', '5');
INSERT INTO `student_score_group` VALUES ('326', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '56', '14', '5');
INSERT INTO `student_score_group` VALUES ('327', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '57', '14', '4');
INSERT INTO `student_score_group` VALUES ('328', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '58', '14', '4');
INSERT INTO `student_score_group` VALUES ('329', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '59', '14', '4');
INSERT INTO `student_score_group` VALUES ('330', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '60', '14', '3');
INSERT INTO `student_score_group` VALUES ('331', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '31', '15', '5');
INSERT INTO `student_score_group` VALUES ('332', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '32', '15', '5');
INSERT INTO `student_score_group` VALUES ('333', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '33', '15', '5');
INSERT INTO `student_score_group` VALUES ('334', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '34', '15', '5');
INSERT INTO `student_score_group` VALUES ('335', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '35', '15', '5');
INSERT INTO `student_score_group` VALUES ('336', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '36', '15', '5');
INSERT INTO `student_score_group` VALUES ('337', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '37', '15', '5');
INSERT INTO `student_score_group` VALUES ('338', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '38', '15', '5');
INSERT INTO `student_score_group` VALUES ('339', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '39', '15', '4');
INSERT INTO `student_score_group` VALUES ('340', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '40', '15', '4');
INSERT INTO `student_score_group` VALUES ('341', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '46', '15', '4');
INSERT INTO `student_score_group` VALUES ('342', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '47', '15', '5');
INSERT INTO `student_score_group` VALUES ('343', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '48', '15', '5');
INSERT INTO `student_score_group` VALUES ('344', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '49', '15', '5');
INSERT INTO `student_score_group` VALUES ('345', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '50', '15', '5');
INSERT INTO `student_score_group` VALUES ('346', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '51', '15', '5');
INSERT INTO `student_score_group` VALUES ('347', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '52', '15', '5');
INSERT INTO `student_score_group` VALUES ('348', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '53', '15', '5');
INSERT INTO `student_score_group` VALUES ('349', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '54', '15', '5');
INSERT INTO `student_score_group` VALUES ('350', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '55', '15', '3');
INSERT INTO `student_score_group` VALUES ('351', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '56', '15', '3');
INSERT INTO `student_score_group` VALUES ('352', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '57', '15', '3');
INSERT INTO `student_score_group` VALUES ('353', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '58', '15', '3');
INSERT INTO `student_score_group` VALUES ('354', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '59', '15', '3');
INSERT INTO `student_score_group` VALUES ('355', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '60', '15', '3');
INSERT INTO `student_score_group` VALUES ('356', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '31', '16', '5');
INSERT INTO `student_score_group` VALUES ('357', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '32', '16', '5');
INSERT INTO `student_score_group` VALUES ('358', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '33', '16', '5');
INSERT INTO `student_score_group` VALUES ('359', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '34', '16', '5');
INSERT INTO `student_score_group` VALUES ('360', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '35', '16', '5');
INSERT INTO `student_score_group` VALUES ('361', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '36', '16', '5');
INSERT INTO `student_score_group` VALUES ('362', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '37', '16', '5');
INSERT INTO `student_score_group` VALUES ('363', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '38', '16', '5');
INSERT INTO `student_score_group` VALUES ('364', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '39', '16', '5');
INSERT INTO `student_score_group` VALUES ('365', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '40', '16', '5');
INSERT INTO `student_score_group` VALUES ('366', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '41', '16', '5');
INSERT INTO `student_score_group` VALUES ('367', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '42', '16', '4');
INSERT INTO `student_score_group` VALUES ('368', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '43', '16', '4');
INSERT INTO `student_score_group` VALUES ('369', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '44', '16', '4');
INSERT INTO `student_score_group` VALUES ('370', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '45', '16', '4');
INSERT INTO `student_score_group` VALUES ('371', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '51', '16', '4');
INSERT INTO `student_score_group` VALUES ('372', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '52', '16', '4');
INSERT INTO `student_score_group` VALUES ('373', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '53', '16', '4');
INSERT INTO `student_score_group` VALUES ('374', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '54', '16', '4');
INSERT INTO `student_score_group` VALUES ('375', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '55', '16', '5');
INSERT INTO `student_score_group` VALUES ('376', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '56', '16', '5');
INSERT INTO `student_score_group` VALUES ('377', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '57', '16', '5');
INSERT INTO `student_score_group` VALUES ('378', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '58', '16', '3');
INSERT INTO `student_score_group` VALUES ('379', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '59', '16', '4');
INSERT INTO `student_score_group` VALUES ('380', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '60', '16', '4');
INSERT INTO `student_score_group` VALUES ('381', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '31', '17', '5');
INSERT INTO `student_score_group` VALUES ('382', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '32', '17', '5');
INSERT INTO `student_score_group` VALUES ('383', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '33', '17', '5');
INSERT INTO `student_score_group` VALUES ('384', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '34', '17', '5');
INSERT INTO `student_score_group` VALUES ('385', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '35', '17', '5');
INSERT INTO `student_score_group` VALUES ('386', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '36', '17', '5');
INSERT INTO `student_score_group` VALUES ('387', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '37', '17', '5');
INSERT INTO `student_score_group` VALUES ('388', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '38', '17', '5');
INSERT INTO `student_score_group` VALUES ('389', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '39', '17', '5');
INSERT INTO `student_score_group` VALUES ('390', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '40', '17', '3');
INSERT INTO `student_score_group` VALUES ('391', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '41', '17', '3');
INSERT INTO `student_score_group` VALUES ('392', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '42', '17', '3');
INSERT INTO `student_score_group` VALUES ('393', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '43', '17', '3');
INSERT INTO `student_score_group` VALUES ('394', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '44', '17', '5');
INSERT INTO `student_score_group` VALUES ('395', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '45', '17', '5');
INSERT INTO `student_score_group` VALUES ('396', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '46', '17', '5');
INSERT INTO `student_score_group` VALUES ('397', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '47', '17', '5');
INSERT INTO `student_score_group` VALUES ('398', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '48', '17', '5');
INSERT INTO `student_score_group` VALUES ('399', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '49', '17', '5');
INSERT INTO `student_score_group` VALUES ('400', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '50', '17', '5');
INSERT INTO `student_score_group` VALUES ('401', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '56', '17', '5');
INSERT INTO `student_score_group` VALUES ('402', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '57', '17', '5');
INSERT INTO `student_score_group` VALUES ('403', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '58', '17', '5');
INSERT INTO `student_score_group` VALUES ('404', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '59', '17', '5');
INSERT INTO `student_score_group` VALUES ('405', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '60', '17', '5');
INSERT INTO `student_score_group` VALUES ('406', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '31', '18', '5');
INSERT INTO `student_score_group` VALUES ('407', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '32', '18', '4');
INSERT INTO `student_score_group` VALUES ('408', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '33', '18', '4');
INSERT INTO `student_score_group` VALUES ('409', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '34', '18', '4');
INSERT INTO `student_score_group` VALUES ('410', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '35', '18', '4');
INSERT INTO `student_score_group` VALUES ('411', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '36', '18', '4');
INSERT INTO `student_score_group` VALUES ('412', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '37', '18', '4');
INSERT INTO `student_score_group` VALUES ('413', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '38', '18', '4');
INSERT INTO `student_score_group` VALUES ('414', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '39', '18', '4');
INSERT INTO `student_score_group` VALUES ('415', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '40', '18', '4');
INSERT INTO `student_score_group` VALUES ('416', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '41', '18', '4');
INSERT INTO `student_score_group` VALUES ('417', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '42', '18', '4');
INSERT INTO `student_score_group` VALUES ('418', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '43', '18', '4');
INSERT INTO `student_score_group` VALUES ('419', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '44', '18', '4');
INSERT INTO `student_score_group` VALUES ('420', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '45', '18', '4');
INSERT INTO `student_score_group` VALUES ('421', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '46', '18', '4');
INSERT INTO `student_score_group` VALUES ('422', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '47', '18', '3');
INSERT INTO `student_score_group` VALUES ('423', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '48', '18', '3');
INSERT INTO `student_score_group` VALUES ('424', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '49', '18', '3');
INSERT INTO `student_score_group` VALUES ('425', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '50', '18', '3');
INSERT INTO `student_score_group` VALUES ('426', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '51', '18', '3');
INSERT INTO `student_score_group` VALUES ('427', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '52', '18', '3');
INSERT INTO `student_score_group` VALUES ('428', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '53', '18', '3');
INSERT INTO `student_score_group` VALUES ('429', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '54', '18', '3');
INSERT INTO `student_score_group` VALUES ('430', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '55', '18', '3');
INSERT INTO `student_score_group` VALUES ('431', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '66', '19', '3');
INSERT INTO `student_score_group` VALUES ('432', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '67', '19', '3');
INSERT INTO `student_score_group` VALUES ('433', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '68', '19', '3');
INSERT INTO `student_score_group` VALUES ('434', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '69', '19', '3');
INSERT INTO `student_score_group` VALUES ('435', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '70', '19', '3');
INSERT INTO `student_score_group` VALUES ('436', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '71', '19', '3');
INSERT INTO `student_score_group` VALUES ('437', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '72', '19', '3');
INSERT INTO `student_score_group` VALUES ('438', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '73', '19', '3');
INSERT INTO `student_score_group` VALUES ('439', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '74', '19', '3');
INSERT INTO `student_score_group` VALUES ('440', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '75', '19', '3');
INSERT INTO `student_score_group` VALUES ('441', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '76', '19', '3');
INSERT INTO `student_score_group` VALUES ('442', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '77', '19', '3');
INSERT INTO `student_score_group` VALUES ('443', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '78', '19', '3');
INSERT INTO `student_score_group` VALUES ('444', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '79', '19', '3');
INSERT INTO `student_score_group` VALUES ('445', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '80', '19', '3');
INSERT INTO `student_score_group` VALUES ('446', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '81', '19', '4');
INSERT INTO `student_score_group` VALUES ('447', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '82', '19', '4');
INSERT INTO `student_score_group` VALUES ('448', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '83', '19', '4');
INSERT INTO `student_score_group` VALUES ('449', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '84', '19', '4');
INSERT INTO `student_score_group` VALUES ('450', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '85', '19', '4');
INSERT INTO `student_score_group` VALUES ('451', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '86', '19', '4');
INSERT INTO `student_score_group` VALUES ('452', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '87', '19', '4');
INSERT INTO `student_score_group` VALUES ('453', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '88', '19', '4');
INSERT INTO `student_score_group` VALUES ('454', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '61', '20', '4');
INSERT INTO `student_score_group` VALUES ('455', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '62', '20', '4');
INSERT INTO `student_score_group` VALUES ('456', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '63', '20', '4');
INSERT INTO `student_score_group` VALUES ('457', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '64', '20', '5');
INSERT INTO `student_score_group` VALUES ('458', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '65', '20', '5');
INSERT INTO `student_score_group` VALUES ('459', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '71', '20', '5');
INSERT INTO `student_score_group` VALUES ('460', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '72', '20', '5');
INSERT INTO `student_score_group` VALUES ('461', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '73', '20', '5');
INSERT INTO `student_score_group` VALUES ('462', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '74', '20', '5');
INSERT INTO `student_score_group` VALUES ('463', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '75', '20', '5');
INSERT INTO `student_score_group` VALUES ('464', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '76', '20', '5');
INSERT INTO `student_score_group` VALUES ('465', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '77', '20', '5');
INSERT INTO `student_score_group` VALUES ('466', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '78', '20', '5');
INSERT INTO `student_score_group` VALUES ('467', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '79', '20', '5');
INSERT INTO `student_score_group` VALUES ('468', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '80', '20', '4');
INSERT INTO `student_score_group` VALUES ('469', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '81', '20', '4');
INSERT INTO `student_score_group` VALUES ('470', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '82', '20', '4');
INSERT INTO `student_score_group` VALUES ('471', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '83', '20', '4');
INSERT INTO `student_score_group` VALUES ('472', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '84', '20', '4');
INSERT INTO `student_score_group` VALUES ('473', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '85', '20', '4');
INSERT INTO `student_score_group` VALUES ('474', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '86', '20', '4');
INSERT INTO `student_score_group` VALUES ('475', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '87', '20', '4');
INSERT INTO `student_score_group` VALUES ('476', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '88', '20', '4');
INSERT INTO `student_score_group` VALUES ('477', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '61', '21', '4');
INSERT INTO `student_score_group` VALUES ('478', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '62', '21', '3');
INSERT INTO `student_score_group` VALUES ('479', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '63', '21', '3');
INSERT INTO `student_score_group` VALUES ('480', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '64', '21', '3');
INSERT INTO `student_score_group` VALUES ('481', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '65', '21', '3');
INSERT INTO `student_score_group` VALUES ('482', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '66', '21', '3');
INSERT INTO `student_score_group` VALUES ('483', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '67', '21', '3');
INSERT INTO `student_score_group` VALUES ('484', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '68', '21', '3');
INSERT INTO `student_score_group` VALUES ('485', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '69', '21', '3');
INSERT INTO `student_score_group` VALUES ('486', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '70', '21', '3');
INSERT INTO `student_score_group` VALUES ('487', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '76', '21', '4');
INSERT INTO `student_score_group` VALUES ('488', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '77', '21', '4');
INSERT INTO `student_score_group` VALUES ('489', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '78', '21', '4');
INSERT INTO `student_score_group` VALUES ('490', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '79', '21', '4');
INSERT INTO `student_score_group` VALUES ('491', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '80', '21', '4');
INSERT INTO `student_score_group` VALUES ('492', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '81', '21', '5');
INSERT INTO `student_score_group` VALUES ('493', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '82', '21', '5');
INSERT INTO `student_score_group` VALUES ('494', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '83', '21', '5');
INSERT INTO `student_score_group` VALUES ('495', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '84', '21', '5');
INSERT INTO `student_score_group` VALUES ('496', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '85', '21', '5');
INSERT INTO `student_score_group` VALUES ('497', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '86', '21', '5');
INSERT INTO `student_score_group` VALUES ('498', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '87', '21', '5');
INSERT INTO `student_score_group` VALUES ('499', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '88', '21', '5');
INSERT INTO `student_score_group` VALUES ('500', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '61', '22', '4');
INSERT INTO `student_score_group` VALUES ('501', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '62', '22', '4');
INSERT INTO `student_score_group` VALUES ('502', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '63', '22', '4');
INSERT INTO `student_score_group` VALUES ('503', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '64', '22', '4');
INSERT INTO `student_score_group` VALUES ('504', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '65', '22', '4');
INSERT INTO `student_score_group` VALUES ('505', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '66', '22', '5');
INSERT INTO `student_score_group` VALUES ('506', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '67', '22', '5');
INSERT INTO `student_score_group` VALUES ('507', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '68', '22', '5');
INSERT INTO `student_score_group` VALUES ('508', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '69', '22', '5');
INSERT INTO `student_score_group` VALUES ('509', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '70', '22', '5');
INSERT INTO `student_score_group` VALUES ('510', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '71', '22', '5');
INSERT INTO `student_score_group` VALUES ('511', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '72', '22', '5');
INSERT INTO `student_score_group` VALUES ('512', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '73', '22', '5');
INSERT INTO `student_score_group` VALUES ('513', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '74', '22', '5');
INSERT INTO `student_score_group` VALUES ('514', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '75', '22', '5');
INSERT INTO `student_score_group` VALUES ('515', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '81', '22', '5');
INSERT INTO `student_score_group` VALUES ('516', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '82', '22', '5');
INSERT INTO `student_score_group` VALUES ('517', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '83', '22', '3');
INSERT INTO `student_score_group` VALUES ('518', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '84', '22', '3');
INSERT INTO `student_score_group` VALUES ('519', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '85', '22', '3');
INSERT INTO `student_score_group` VALUES ('520', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '86', '22', '3');
INSERT INTO `student_score_group` VALUES ('521', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '87', '22', '3');
INSERT INTO `student_score_group` VALUES ('522', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '88', '22', '3');
INSERT INTO `student_score_group` VALUES ('523', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '61', '23', '3');
INSERT INTO `student_score_group` VALUES ('524', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '62', '23', '3');
INSERT INTO `student_score_group` VALUES ('525', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '63', '23', '3');
INSERT INTO `student_score_group` VALUES ('526', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '64', '23', '3');
INSERT INTO `student_score_group` VALUES ('527', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '65', '23', '3');
INSERT INTO `student_score_group` VALUES ('528', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '66', '23', '3');
INSERT INTO `student_score_group` VALUES ('529', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '67', '23', '4');
INSERT INTO `student_score_group` VALUES ('530', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '68', '23', '4');
INSERT INTO `student_score_group` VALUES ('531', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '69', '23', '4');
INSERT INTO `student_score_group` VALUES ('532', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '70', '23', '4');
INSERT INTO `student_score_group` VALUES ('533', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '71', '23', '4');
INSERT INTO `student_score_group` VALUES ('534', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '72', '23', '4');
INSERT INTO `student_score_group` VALUES ('535', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '73', '23', '4');
INSERT INTO `student_score_group` VALUES ('536', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '74', '23', '4');
INSERT INTO `student_score_group` VALUES ('537', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '75', '23', '4');
INSERT INTO `student_score_group` VALUES ('538', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '76', '23', '4');
INSERT INTO `student_score_group` VALUES ('539', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '77', '23', '4');
INSERT INTO `student_score_group` VALUES ('540', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '78', '23', '3');
INSERT INTO `student_score_group` VALUES ('541', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '79', '23', '3');
INSERT INTO `student_score_group` VALUES ('542', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '80', '23', '3');
INSERT INTO `student_score_group` VALUES ('543', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '85', '23', '3');
INSERT INTO `student_score_group` VALUES ('544', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '86', '23', '3');
INSERT INTO `student_score_group` VALUES ('545', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '87', '23', '3');
INSERT INTO `student_score_group` VALUES ('546', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '88', '23', '3');
INSERT INTO `student_score_group` VALUES ('547', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '61', '24', '3');
INSERT INTO `student_score_group` VALUES ('548', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '62', '24', '3');
INSERT INTO `student_score_group` VALUES ('549', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '63', '24', '3');
INSERT INTO `student_score_group` VALUES ('550', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '64', '24', '3');
INSERT INTO `student_score_group` VALUES ('551', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '65', '24', '5');
INSERT INTO `student_score_group` VALUES ('552', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '66', '24', '5');
INSERT INTO `student_score_group` VALUES ('553', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '67', '24', '5');
INSERT INTO `student_score_group` VALUES ('554', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '68', '24', '5');
INSERT INTO `student_score_group` VALUES ('555', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '69', '24', '5');
INSERT INTO `student_score_group` VALUES ('556', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '70', '24', '5');
INSERT INTO `student_score_group` VALUES ('557', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '71', '24', '5');
INSERT INTO `student_score_group` VALUES ('558', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '72', '24', '5');
INSERT INTO `student_score_group` VALUES ('559', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '73', '24', '5');
INSERT INTO `student_score_group` VALUES ('560', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '74', '24', '5');
INSERT INTO `student_score_group` VALUES ('561', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '75', '24', '5');
INSERT INTO `student_score_group` VALUES ('562', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '76', '24', '5');
INSERT INTO `student_score_group` VALUES ('563', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '77', '24', '5');
INSERT INTO `student_score_group` VALUES ('564', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '78', '24', '5');
INSERT INTO `student_score_group` VALUES ('565', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '79', '24', '5');
INSERT INTO `student_score_group` VALUES ('566', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '80', '24', '5');
INSERT INTO `student_score_group` VALUES ('567', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '81', '24', '4');
INSERT INTO `student_score_group` VALUES ('568', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '82', '24', '4');
INSERT INTO `student_score_group` VALUES ('569', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '83', '24', '4');
INSERT INTO `student_score_group` VALUES ('570', '2017-12-16 12:13:21', '2017-12-16 12:13:21', '84', '24', '4');

-- ----------------------------
-- Table structure for topic
-- ----------------------------
DROP TABLE IF EXISTS `topic`;
CREATE TABLE `topic` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `gmt_create` datetime DEFAULT CURRENT_TIMESTAMP,
  `gmt_modified` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `name` varchar(300) NOT NULL,
  `description` varchar(5000) DEFAULT NULL,
  `group_number_limit` tinyint(3) unsigned NOT NULL,
  `group_student_limit` tinyint(3) unsigned NOT NULL,
  `seminar_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of topic
-- ----------------------------
INSERT INTO `topic` VALUES ('1', '2017-12-15 22:29:16', '2017-12-15 22:29:16', '话题1', '话题说明1', '9', '5', '1');
INSERT INTO `topic` VALUES ('2', '2017-12-15 22:29:16', '2017-12-15 22:29:16', '话题2', '话题说明2', '9', '5', '1');
INSERT INTO `topic` VALUES ('3', '2017-12-15 22:29:16', '2017-12-15 22:29:16', '话题3', '话题说明3', '6', '5', '2');
INSERT INTO `topic` VALUES ('4', '2017-12-15 22:29:16', '2017-12-15 22:29:16', '话题4', '话题说明4', '6', '5', '2');
INSERT INTO `topic` VALUES ('5', '2017-12-15 22:29:16', '2017-12-15 22:29:16', '话题5', '话题说明5', '3', '5', '3');
INSERT INTO `topic` VALUES ('6', '2017-12-15 22:29:16', '2017-12-15 22:29:16', '话题6', '话题说明6', '3', '5', '3');

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `gmt_create` datetime DEFAULT CURRENT_TIMESTAMP,
  `gmt_modified` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `phone` char(11) NOT NULL,
  `wechat_id` varchar(50) DEFAULT NULL,
  `openid` varchar(50) DEFAULT NULL,
  `avatar` varchar(50) DEFAULT NULL,
  `password` varchar(16) NOT NULL,
  `name` varchar(10) DEFAULT NULL,
  `school_id` bigint(20) unsigned DEFAULT NULL,
  `gender` tinyint(3) unsigned DEFAULT NULL,
  `type` tinyint(3) unsigned DEFAULT NULL,
  `number` varchar(20) DEFAULT NULL,
  `education` tinyint(3) unsigned DEFAULT NULL,
  `title` tinyint(3) unsigned DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=91 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES ('1', '2017-12-16 12:14:09', '2017-12-16 12:14:09', '15720335800', null, null, null, 'BE8791B8BE6DEC10', '邱明', '1', '0', '1', '20170315', '3', '1', '20170315@xmu.edu.cn');
INSERT INTO `user_info` VALUES ('2', '2017-12-16 12:14:09', '2017-12-16 12:14:09', '15720335801', null, null, null, 'BE8791B8BE6DEC10', '王美红', '1', '1', '1', '20170518', '3', '1', '20170518@xmu.edu.cn');
INSERT INTO `user_info` VALUES ('3', '2017-12-16 12:14:09', '2017-12-16 12:14:09', '15720335803', null, null, null, 'BE8791B8BE6DEC10', '学生1', '1', '0', '0', '24320152202700', '1', null, '24320152202700@stu.xmu.edu.cn');
INSERT INTO `user_info` VALUES ('4', '2017-12-16 12:14:09', '2017-12-16 12:14:09', '15720335804', null, null, null, 'BE8791B8BE6DEC10', '学生2', '1', '0', '0', '24320152202701', '1', null, '24320152202701@stu.xmu.edu.cn');
INSERT INTO `user_info` VALUES ('5', '2017-12-16 12:14:09', '2017-12-16 12:14:09', '15720335805', null, null, null, 'BE8791B8BE6DEC10', '学生3', '1', '0', '0', '24320152202702', '1', null, '24320152202702@stu.xmu.edu.cn');
INSERT INTO `user_info` VALUES ('6', '2017-12-16 12:14:09', '2017-12-16 12:14:09', '15720335806', null, null, null, 'BE8791B8BE6DEC10', '学生4', '1', '0', '0', '24320152202703', '1', null, '24320152202703@stu.xmu.edu.cn');
INSERT INTO `user_info` VALUES ('7', '2017-12-16 12:14:09', '2017-12-16 12:14:09', '15720335807', null, null, null, 'BE8791B8BE6DEC10', '学生5', '1', '0', '0', '24320152202704', '1', null, '24320152202704@stu.xmu.edu.cn');
INSERT INTO `user_info` VALUES ('8', '2017-12-16 12:14:09', '2017-12-16 12:14:09', '15720335808', null, null, null, 'BE8791B8BE6DEC10', '学生6', '1', '0', '0', '24320152202705', '1', null, '24320152202705@stu.xmu.edu.cn');
INSERT INTO `user_info` VALUES ('9', '2017-12-16 12:14:09', '2017-12-16 12:14:09', '15720335809', null, null, null, 'BE8791B8BE6DEC10', '学生7', '1', '0', '0', '24320152202706', '1', null, '24320152202706@stu.xmu.edu.cn');
INSERT INTO `user_info` VALUES ('10', '2017-12-16 12:14:09', '2017-12-16 12:14:09', '15720335810', null, null, null, 'BE8791B8BE6DEC10', '学生8', '1', '0', '0', '24320152202707', '1', null, '24320152202707@stu.xmu.edu.cn');
INSERT INTO `user_info` VALUES ('11', '2017-12-16 12:14:09', '2017-12-16 12:14:09', '15720335811', null, null, null, 'BE8791B8BE6DEC10', '学生9', '1', '0', '0', '24320152202708', '1', null, '24320152202708@stu.xmu.edu.cn');
INSERT INTO `user_info` VALUES ('12', '2017-12-16 12:14:09', '2017-12-16 12:14:09', '15720335812', null, null, null, 'BE8791B8BE6DEC10', '学生10', '1', '0', '0', '24320152202709', '1', null, '24320152202709@stu.xmu.edu.cn');
INSERT INTO `user_info` VALUES ('13', '2017-12-16 12:14:09', '2017-12-16 12:14:09', '15720335813', null, null, null, 'BE8791B8BE6DEC10', '学生11', '1', '0', '0', '24320152202710', '1', null, '24320152202710@stu.xmu.edu.cn');
INSERT INTO `user_info` VALUES ('14', '2017-12-16 12:14:09', '2017-12-16 12:14:09', '15720335814', null, null, null, 'BE8791B8BE6DEC10', '学生12', '1', '0', '0', '24320152202711', '1', null, '24320152202711@stu.xmu.edu.cn');
INSERT INTO `user_info` VALUES ('15', '2017-12-16 12:14:09', '2017-12-16 12:14:09', '15720335815', null, null, null, 'BE8791B8BE6DEC10', '学生13', '1', '0', '0', '24320152202712', '1', null, '24320152202712@stu.xmu.edu.cn');
INSERT INTO `user_info` VALUES ('16', '2017-12-16 12:14:09', '2017-12-16 12:14:09', '15720335816', null, null, null, 'BE8791B8BE6DEC10', '学生14', '1', '0', '0', '24320152202713', '1', null, '24320152202713@stu.xmu.edu.cn');
INSERT INTO `user_info` VALUES ('17', '2017-12-16 12:14:09', '2017-12-16 12:14:09', '15720335817', null, null, null, 'BE8791B8BE6DEC10', '学生15', '1', '0', '0', '24320152202714', '1', null, '24320152202714@stu.xmu.edu.cn');
INSERT INTO `user_info` VALUES ('18', '2017-12-16 12:14:09', '2017-12-16 12:14:09', '15720335818', null, null, null, 'BE8791B8BE6DEC10', '学生16', '1', '0', '0', '24320152202715', '1', null, '24320152202715@stu.xmu.edu.cn');
INSERT INTO `user_info` VALUES ('19', '2017-12-16 12:14:09', '2017-12-16 12:14:09', '15720335819', null, null, null, 'BE8791B8BE6DEC10', '学生17', '1', '0', '0', '24320152202716', '1', null, '24320152202716@stu.xmu.edu.cn');
INSERT INTO `user_info` VALUES ('20', '2017-12-16 12:14:09', '2017-12-16 12:14:09', '15720335820', null, null, null, 'BE8791B8BE6DEC10', '学生18', '1', '0', '0', '24320152202717', '1', null, '24320152202717@stu.xmu.edu.cn');
INSERT INTO `user_info` VALUES ('21', '2017-12-16 12:14:09', '2017-12-16 12:14:09', '15720335821', null, null, null, 'BE8791B8BE6DEC10', '学生19', '1', '0', '0', '24320152202718', '1', null, '24320152202718@stu.xmu.edu.cn');
INSERT INTO `user_info` VALUES ('22', '2017-12-16 12:14:09', '2017-12-16 12:14:09', '15720335822', null, null, null, 'BE8791B8BE6DEC10', '学生20', '1', '0', '0', '24320152202719', '1', null, '24320152202719@stu.xmu.edu.cn');
INSERT INTO `user_info` VALUES ('23', '2017-12-16 12:14:09', '2017-12-16 12:14:09', '15720335823', null, null, null, 'BE8791B8BE6DEC10', '学生21', '1', '0', '0', '24320152202720', '1', null, '24320152202720@stu.xmu.edu.cn');
INSERT INTO `user_info` VALUES ('24', '2017-12-16 12:14:09', '2017-12-16 12:14:09', '15720335824', null, null, null, 'BE8791B8BE6DEC10', '学生22', '1', '0', '0', '24320152202721', '1', null, '24320152202721@stu.xmu.edu.cn');
INSERT INTO `user_info` VALUES ('25', '2017-12-16 12:14:09', '2017-12-16 12:14:09', '15720335825', null, null, null, 'BE8791B8BE6DEC10', '学生23', '1', '0', '0', '24320152202722', '1', null, '24320152202722@stu.xmu.edu.cn');
INSERT INTO `user_info` VALUES ('26', '2017-12-16 12:14:09', '2017-12-16 12:14:09', '15720335826', null, null, null, 'BE8791B8BE6DEC10', '学生24', '1', '0', '0', '24320152202723', '1', null, '24320152202723@stu.xmu.edu.cn');
INSERT INTO `user_info` VALUES ('27', '2017-12-16 12:14:09', '2017-12-16 12:14:09', '15720335827', null, null, null, 'BE8791B8BE6DEC10', '学生25', '1', '0', '0', '24320152202724', '1', null, '24320152202724@stu.xmu.edu.cn');
INSERT INTO `user_info` VALUES ('28', '2017-12-16 12:14:09', '2017-12-16 12:14:09', '15720335828', null, null, null, 'BE8791B8BE6DEC10', '学生26', '1', '0', '0', '24320152202725', '1', null, '24320152202725@stu.xmu.edu.cn');
INSERT INTO `user_info` VALUES ('29', '2017-12-16 12:14:09', '2017-12-16 12:14:09', '15720335829', null, null, null, 'BE8791B8BE6DEC10', '学生27', '1', '0', '0', '24320152202726', '1', null, '24320152202726@stu.xmu.edu.cn');
INSERT INTO `user_info` VALUES ('30', '2017-12-16 12:14:09', '2017-12-16 12:14:09', '15720335830', null, null, null, 'BE8791B8BE6DEC10', '学生28', '1', '0', '0', '24320152202727', '1', null, '24320152202727@stu.xmu.edu.cn');
INSERT INTO `user_info` VALUES ('31', '2017-12-16 12:14:09', '2017-12-16 12:14:09', '15720335831', null, null, null, 'BE8791B8BE6DEC10', '学生29', '1', '0', '0', '24320152202728', '1', null, '24320152202728@stu.xmu.edu.cn');
INSERT INTO `user_info` VALUES ('32', '2017-12-16 12:14:09', '2017-12-16 12:14:09', '15720335832', null, null, null, 'BE8791B8BE6DEC10', '学生30', '1', '0', '0', '24320152202729', '1', null, '24320152202729@stu.xmu.edu.cn');
INSERT INTO `user_info` VALUES ('33', '2017-12-16 12:14:09', '2017-12-16 12:14:09', '15720335833', null, null, null, 'BE8791B8BE6DEC10', '学生31', '1', '0', '0', '24320152202730', '1', null, '24320152202730@stu.xmu.edu.cn');
INSERT INTO `user_info` VALUES ('34', '2017-12-16 12:14:09', '2017-12-16 12:14:09', '15720335834', null, null, null, 'BE8791B8BE6DEC10', '学生32', '1', '0', '0', '24320152202731', '1', null, '24320152202731@stu.xmu.edu.cn');
INSERT INTO `user_info` VALUES ('35', '2017-12-16 12:14:09', '2017-12-16 12:14:09', '15720335835', null, null, null, 'BE8791B8BE6DEC10', '学生33', '1', '0', '0', '24320152202732', '1', null, '24320152202732@stu.xmu.edu.cn');
INSERT INTO `user_info` VALUES ('36', '2017-12-16 12:14:09', '2017-12-16 12:14:09', '15720335836', null, null, null, 'BE8791B8BE6DEC10', '学生34', '1', '0', '0', '24320152202733', '1', null, '24320152202733@stu.xmu.edu.cn');
INSERT INTO `user_info` VALUES ('37', '2017-12-16 12:14:09', '2017-12-16 12:14:09', '15720335837', null, null, null, 'BE8791B8BE6DEC10', '学生35', '1', '0', '0', '24320152202734', '1', null, '24320152202734@stu.xmu.edu.cn');
INSERT INTO `user_info` VALUES ('38', '2017-12-16 12:14:09', '2017-12-16 12:14:09', '15720335838', null, null, null, 'BE8791B8BE6DEC10', '学生36', '1', '0', '0', '24320152202735', '1', null, '24320152202735@stu.xmu.edu.cn');
INSERT INTO `user_info` VALUES ('39', '2017-12-16 12:14:09', '2017-12-16 12:14:09', '15720335839', null, null, null, 'BE8791B8BE6DEC10', '学生37', '1', '0', '0', '24320152202736', '1', null, '24320152202736@stu.xmu.edu.cn');
INSERT INTO `user_info` VALUES ('40', '2017-12-16 12:14:09', '2017-12-16 12:14:09', '15720335840', null, null, null, 'BE8791B8BE6DEC10', '学生38', '1', '0', '0', '24320152202737', '1', null, '24320152202737@stu.xmu.edu.cn');
INSERT INTO `user_info` VALUES ('41', '2017-12-16 12:14:09', '2017-12-16 12:14:09', '15720335841', null, null, null, 'BE8791B8BE6DEC10', '学生39', '1', '0', '0', '24320152202738', '1', null, '24320152202738@stu.xmu.edu.cn');
INSERT INTO `user_info` VALUES ('42', '2017-12-16 12:14:09', '2017-12-16 12:14:09', '15720335842', null, null, null, 'BE8791B8BE6DEC10', '学生40', '1', '0', '0', '24320152202739', '1', null, '24320152202739@stu.xmu.edu.cn');
INSERT INTO `user_info` VALUES ('43', '2017-12-16 12:14:09', '2017-12-16 12:14:09', '15720335843', null, null, null, 'BE8791B8BE6DEC10', '学生41', '1', '0', '0', '24320152202740', '1', null, '24320152202740@stu.xmu.edu.cn');
INSERT INTO `user_info` VALUES ('44', '2017-12-16 12:14:09', '2017-12-16 12:14:09', '15720335844', null, null, null, 'BE8791B8BE6DEC10', '学生42', '1', '0', '0', '24320152202741', '1', null, '24320152202741@stu.xmu.edu.cn');
INSERT INTO `user_info` VALUES ('45', '2017-12-16 12:14:09', '2017-12-16 12:14:09', '15720335845', null, null, null, 'BE8791B8BE6DEC10', '学生43', '1', '0', '0', '24320152202742', '1', null, '24320152202742@stu.xmu.edu.cn');
INSERT INTO `user_info` VALUES ('46', '2017-12-16 12:14:09', '2017-12-16 12:14:09', '15720335846', null, null, null, 'BE8791B8BE6DEC10', '学生44', '1', '0', '0', '24320152202743', '1', null, '24320152202743@stu.xmu.edu.cn');
INSERT INTO `user_info` VALUES ('47', '2017-12-16 12:14:09', '2017-12-16 12:14:09', '15720335847', null, null, null, 'BE8791B8BE6DEC10', '学生45', '1', '0', '0', '24320152202744', '1', null, '24320152202744@stu.xmu.edu.cn');
INSERT INTO `user_info` VALUES ('48', '2017-12-16 12:14:09', '2017-12-16 12:14:09', '15720335848', null, null, null, 'BE8791B8BE6DEC10', '学生46', '1', '0', '0', '24320152202745', '1', null, '24320152202745@stu.xmu.edu.cn');
INSERT INTO `user_info` VALUES ('49', '2017-12-16 12:14:09', '2017-12-16 12:14:09', '15720335849', null, null, null, 'BE8791B8BE6DEC10', '学生47', '1', '0', '0', '24320152202746', '1', null, '24320152202746@stu.xmu.edu.cn');
INSERT INTO `user_info` VALUES ('50', '2017-12-16 12:14:09', '2017-12-16 12:14:09', '15720335850', null, null, null, 'BE8791B8BE6DEC10', '学生48', '1', '0', '0', '24320152202747', '1', null, '24320152202747@stu.xmu.edu.cn');
INSERT INTO `user_info` VALUES ('51', '2017-12-16 12:14:09', '2017-12-16 12:14:09', '15720335851', null, null, null, 'BE8791B8BE6DEC10', '学生49', '1', '0', '0', '24320152202748', '1', null, '24320152202748@stu.xmu.edu.cn');
INSERT INTO `user_info` VALUES ('52', '2017-12-16 12:14:09', '2017-12-16 12:14:09', '15720335852', null, null, null, 'BE8791B8BE6DEC10', '学生50', '1', '0', '0', '24320152202749', '1', null, '24320152202749@stu.xmu.edu.cn');
INSERT INTO `user_info` VALUES ('53', '2017-12-16 12:14:09', '2017-12-16 12:14:09', '15720335853', null, null, null, 'BE8791B8BE6DEC10', '学生51', '1', '0', '0', '24320152202750', '1', null, '24320152202750@stu.xmu.edu.cn');
INSERT INTO `user_info` VALUES ('54', '2017-12-16 12:14:09', '2017-12-16 12:14:09', '15720335854', null, null, null, 'BE8791B8BE6DEC10', '学生52', '1', '0', '0', '24320152202751', '1', null, '24320152202751@stu.xmu.edu.cn');
INSERT INTO `user_info` VALUES ('55', '2017-12-16 12:14:09', '2017-12-16 12:14:09', '15720335855', null, null, null, 'BE8791B8BE6DEC10', '学生53', '1', '0', '0', '24320152202752', '1', null, '24320152202752@stu.xmu.edu.cn');
INSERT INTO `user_info` VALUES ('56', '2017-12-16 12:14:09', '2017-12-16 12:14:09', '15720335856', null, null, null, 'BE8791B8BE6DEC10', '学生54', '1', '0', '0', '24320152202753', '1', null, '24320152202753@stu.xmu.edu.cn');
INSERT INTO `user_info` VALUES ('57', '2017-12-16 12:14:09', '2017-12-16 12:14:09', '15720335857', null, null, null, 'BE8791B8BE6DEC10', '学生55', '1', '0', '0', '24320152202754', '1', null, '24320152202754@stu.xmu.edu.cn');
INSERT INTO `user_info` VALUES ('58', '2017-12-16 12:14:09', '2017-12-16 12:14:09', '15720335858', null, null, null, 'BE8791B8BE6DEC10', '学生56', '1', '1', '0', '24320152202755', '1', null, '24320152202755@stu.xmu.edu.cn');
INSERT INTO `user_info` VALUES ('59', '2017-12-16 12:14:09', '2017-12-16 12:14:09', '15720335859', null, null, null, 'BE8791B8BE6DEC10', '学生57', '1', '1', '0', '24320152202756', '1', null, '24320152202756@stu.xmu.edu.cn');
INSERT INTO `user_info` VALUES ('60', '2017-12-16 12:14:09', '2017-12-16 12:14:09', '15720335860', null, null, null, 'BE8791B8BE6DEC10', '学生58', '1', '1', '0', '24320152202757', '1', null, '24320152202757@stu.xmu.edu.cn');
INSERT INTO `user_info` VALUES ('61', '2017-12-16 12:14:09', '2017-12-16 12:14:09', '15720335861', null, null, null, 'BE8791B8BE6DEC10', '学生59', '1', '1', '0', '24320152202758', '1', null, '24320152202758@stu.xmu.edu.cn');
INSERT INTO `user_info` VALUES ('62', '2017-12-16 12:14:09', '2017-12-16 12:14:09', '15720335862', null, null, null, 'BE8791B8BE6DEC10', '学生60', '1', '1', '0', '24320152202759', '1', null, '24320152202759@stu.xmu.edu.cn');
INSERT INTO `user_info` VALUES ('63', '2017-12-16 12:14:09', '2017-12-16 12:14:09', '15720335863', null, null, null, 'BE8791B8BE6DEC10', '学生61', '1', '1', '0', '24320152202760', '1', null, '24320152202760@stu.xmu.edu.cn');
INSERT INTO `user_info` VALUES ('64', '2017-12-16 12:14:09', '2017-12-16 12:14:09', '15720335864', null, null, null, 'BE8791B8BE6DEC10', '学生62', '1', '1', '0', '24320152202761', '1', null, '24320152202761@stu.xmu.edu.cn');
INSERT INTO `user_info` VALUES ('65', '2017-12-16 12:14:09', '2017-12-16 12:14:09', '15720335865', null, null, null, 'BE8791B8BE6DEC10', '学生63', '1', '1', '0', '24320152202762', '1', null, '24320152202762@stu.xmu.edu.cn');
INSERT INTO `user_info` VALUES ('66', '2017-12-16 12:14:09', '2017-12-16 12:14:09', '15720335866', null, null, null, 'BE8791B8BE6DEC10', '学生64', '1', '1', '0', '24320152202763', '1', null, '24320152202763@stu.xmu.edu.cn');
INSERT INTO `user_info` VALUES ('67', '2017-12-16 12:14:09', '2017-12-16 12:14:09', '15720335867', null, null, null, 'BE8791B8BE6DEC10', '学生65', '1', '1', '0', '24320152202764', '1', null, '24320152202764@stu.xmu.edu.cn');
INSERT INTO `user_info` VALUES ('68', '2017-12-16 12:14:09', '2017-12-16 12:14:09', '15720335868', null, null, null, 'BE8791B8BE6DEC10', '学生66', '1', '1', '0', '24320152202765', '1', null, '24320152202765@stu.xmu.edu.cn');
INSERT INTO `user_info` VALUES ('69', '2017-12-16 12:14:09', '2017-12-16 12:14:09', '15720335869', null, null, null, 'BE8791B8BE6DEC10', '学生67', '1', '1', '0', '24320152202766', '1', null, '24320152202766@stu.xmu.edu.cn');
INSERT INTO `user_info` VALUES ('70', '2017-12-16 12:14:09', '2017-12-16 12:14:09', '15720335870', null, null, null, 'BE8791B8BE6DEC10', '学生68', '1', '1', '0', '24320152202767', '1', null, '24320152202767@stu.xmu.edu.cn');
INSERT INTO `user_info` VALUES ('71', '2017-12-16 12:14:09', '2017-12-16 12:14:09', '15720335871', null, null, null, 'BE8791B8BE6DEC10', '学生69', '1', '1', '0', '24320152202768', '1', null, '24320152202768@stu.xmu.edu.cn');
INSERT INTO `user_info` VALUES ('72', '2017-12-16 12:14:09', '2017-12-16 12:14:09', '15720335872', null, null, null, 'BE8791B8BE6DEC10', '学生70', '1', '1', '0', '24320152202769', '1', null, '24320152202769@stu.xmu.edu.cn');
INSERT INTO `user_info` VALUES ('73', '2017-12-16 12:14:09', '2017-12-16 12:14:09', '15720335873', null, null, null, 'BE8791B8BE6DEC10', '学生71', '1', '1', '0', '24320152202770', '1', null, '24320152202770@stu.xmu.edu.cn');
INSERT INTO `user_info` VALUES ('74', '2017-12-16 12:14:09', '2017-12-16 12:14:09', '15720335874', null, null, null, 'BE8791B8BE6DEC10', '学生72', '1', '1', '0', '24320152202771', '1', null, '24320152202771@stu.xmu.edu.cn');
INSERT INTO `user_info` VALUES ('75', '2017-12-16 12:14:09', '2017-12-16 12:14:09', '15720335875', null, null, null, 'BE8791B8BE6DEC10', '学生73', '1', '1', '0', '24320152202772', '1', null, '24320152202772@stu.xmu.edu.cn');
INSERT INTO `user_info` VALUES ('76', '2017-12-16 12:14:09', '2017-12-16 12:14:09', '15720335876', null, null, null, 'BE8791B8BE6DEC10', '学生74', '1', '1', '0', '24320152202773', '1', null, '24320152202773@stu.xmu.edu.cn');
INSERT INTO `user_info` VALUES ('77', '2017-12-16 12:14:09', '2017-12-16 12:14:09', '15720335877', null, null, null, 'BE8791B8BE6DEC10', '学生75', '1', '1', '0', '24320152202774', '1', null, '24320152202774@stu.xmu.edu.cn');
INSERT INTO `user_info` VALUES ('78', '2017-12-16 12:14:09', '2017-12-16 12:14:09', '15720335878', null, null, null, 'BE8791B8BE6DEC10', '学生76', '1', '1', '0', '24320152202775', '1', null, '24320152202775@stu.xmu.edu.cn');
INSERT INTO `user_info` VALUES ('79', '2017-12-16 12:14:09', '2017-12-16 12:14:09', '15720335879', null, null, null, 'BE8791B8BE6DEC10', '学生77', '1', '1', '0', '24320152202776', '1', null, '24320152202776@stu.xmu.edu.cn');
INSERT INTO `user_info` VALUES ('80', '2017-12-16 12:14:09', '2017-12-16 12:14:09', '15720335880', null, null, null, 'BE8791B8BE6DEC10', '学生78', '1', '1', '0', '24320152202777', '1', null, '24320152202777@stu.xmu.edu.cn');
INSERT INTO `user_info` VALUES ('81', '2017-12-16 12:14:09', '2017-12-16 12:14:09', '15720335881', null, null, null, 'BE8791B8BE6DEC10', '学生79', '1', '1', '0', '24320152202778', '1', null, '24320152202778@stu.xmu.edu.cn');
INSERT INTO `user_info` VALUES ('82', '2017-12-16 12:14:09', '2017-12-16 12:14:09', '15720335882', null, null, null, 'BE8791B8BE6DEC10', '学生80', '1', '1', '0', '24320152202779', '1', null, '24320152202779@stu.xmu.edu.cn');
INSERT INTO `user_info` VALUES ('83', '2017-12-16 12:14:09', '2017-12-16 12:14:09', '15720335883', null, null, null, 'BE8791B8BE6DEC10', '学生81', '1', '1', '0', '24320152202780', '1', null, '24320152202780@stu.xmu.edu.cn');
INSERT INTO `user_info` VALUES ('84', '2017-12-16 12:14:09', '2017-12-16 12:14:09', '15720335884', null, null, null, 'BE8791B8BE6DEC10', '学生82', '1', '1', '0', '24320152202781', '1', null, '24320152202781@stu.xmu.edu.cn');
INSERT INTO `user_info` VALUES ('85', '2017-12-16 12:14:09', '2017-12-16 12:14:09', '15720335885', null, null, null, 'BE8791B8BE6DEC10', '学生83', '1', '1', '0', '24320152202782', '1', null, '24320152202782@stu.xmu.edu.cn');
INSERT INTO `user_info` VALUES ('86', '2017-12-16 12:14:09', '2017-12-16 12:14:09', '15720335886', null, null, null, 'BE8791B8BE6DEC10', '学生84', '1', '1', '0', '24320152202783', '1', null, '24320152202783@stu.xmu.edu.cn');
INSERT INTO `user_info` VALUES ('87', '2017-12-16 12:14:09', '2017-12-16 12:14:09', '15720335887', null, null, null, 'BE8791B8BE6DEC10', '学生85', '1', '1', '0', '24320152202784', '1', null, '24320152202784@stu.xmu.edu.cn');
INSERT INTO `user_info` VALUES ('88', '2017-12-16 12:14:09', '2017-12-16 12:14:09', '15720335888', null, null, null, 'BE8791B8BE6DEC10', '学生86', '1', '1', '0', '24320152202785', '1', null, '24320152202785@stu.xmu.edu.cn');
INSERT INTO `user_info` VALUES ('89', '2017-12-16 12:14:09', '2017-12-16 12:14:09', '15720335889', null, null, null, 'BE8791B8BE6DEC10', '学生87', '1', '1', '0', '24320152202786', '1', null, '24320152202786@stu.xmu.edu.cn');
INSERT INTO `user_info` VALUES ('90', '2017-12-16 12:14:09', '2017-12-16 12:14:09', '15720335802', null, null, null, 'BE8791B8BE6DEC10', '吴清强', '1', '0', '1', '20173492', '3', '0', '20173492@xmu.edu.cn');
