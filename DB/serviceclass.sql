/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50015
Source Host           : localhost:3306
Source Database       : ssp

Target Server Type    : MYSQL
Target Server Version : 50015
File Encoding         : 65001

Date: 2015-06-04 23:36:41
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `serviceclass`
-- ----------------------------
DROP TABLE IF EXISTS `serviceclass`;
CREATE TABLE `serviceclass` (
  `classid` int(11) NOT NULL default '0',
  `classname` varchar(255) default NULL,
  `classdes` varchar(255) default NULL,
  PRIMARY KEY  (`classid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of serviceclass
-- ----------------------------
INSERT INTO `serviceclass` VALUES ('1', '旅游推荐', '进行旅游行程推荐');
INSERT INTO `serviceclass` VALUES ('2', '旅游组合', '进行旅游服务组合');
INSERT INTO `serviceclass` VALUES ('3', '服务质量管理', '对服务质量进行管理');
INSERT INTO `serviceclass` VALUES ('4', '服务发现', '进行互联网服务发现');
INSERT INTO `serviceclass` VALUES ('11', '酒店', '各宾馆酒店服务');
INSERT INTO `serviceclass` VALUES ('12', '餐饮', '各餐厅餐饮服务');
INSERT INTO `serviceclass` VALUES ('13', '景点', '各景点服务');
