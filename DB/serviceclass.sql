/*
Navicat MySQL Data Transfer

Source Server         : ssp
Source Server Version : 50544
Source Host           : 166.111.180.111:3306
Source Database       : ssp

Target Server Type    : MYSQL
Target Server Version : 50544
File Encoding         : 65001

Date: 2015-06-09 22:18:47
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `serviceclass`
-- ----------------------------
DROP TABLE IF EXISTS `serviceclass`;
CREATE TABLE `serviceclass` (
  `classid` int(11) NOT NULL DEFAULT '0',
  `classname` varchar(255) DEFAULT NULL,
  `classdes` varchar(255) DEFAULT NULL,
  `classtable` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`classid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of serviceclass
-- ----------------------------
INSERT INTO `serviceclass` VALUES ('1', '平台服务', '各开发者提供的平台服务', 'platservice');
INSERT INTO `serviceclass` VALUES ('11', '酒店', '各宾馆酒店服务', 'hotelservice');
INSERT INTO `serviceclass` VALUES ('12', '餐饮', '各餐厅餐饮服务', 'restaurantservice');
INSERT INTO `serviceclass` VALUES ('13', '景点', '各景点服务', 'scenicspotservice');
