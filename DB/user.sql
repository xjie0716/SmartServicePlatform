/*
Navicat MySQL Data Transfer

Source Server         : ssp
Source Server Version : 50544
Source Host           : 166.111.180.111:3306
Source Database       : ssp

Target Server Type    : MYSQL
Target Server Version : 50544
File Encoding         : 65001

Date: 2015-06-09 22:18:53
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `age` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('29', 'hutao', 'hutao', 'hutaosea@gmail.com', '24');
INSERT INTO `user` VALUES ('30', 'qiupeng', 'qiupeng', 'qiupeng@gmail.com', '24');
INSERT INTO `user` VALUES ('31', 'chensisi', 'chensisi', 'chensisi@gmail.com', '24');
INSERT INTO `user` VALUES ('32', 'nana', 'nana', 'nana@gmail.com', '24');
INSERT INTO `user` VALUES ('33', 'hutaogege', 'hutaogege', 'hutaogege@gmail.com', '24');
INSERT INTO `user` VALUES ('34', '1111', '1111', '1111', '11');
INSERT INTO `user` VALUES ('42', '郝予实', '111', '11111', '11');
INSERT INTO `user` VALUES ('44', '王宇珩wyh123', 'www', 'www', '12');
