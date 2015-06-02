/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50015
Source Host           : localhost:3306
Source Database       : ssp

Target Server Type    : MYSQL
Target Server Version : 50015
File Encoding         : 65001

Date: 2015-06-02 11:06:06
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(45) default NULL,
  `password` varchar(45) default NULL,
  `email` varchar(45) default NULL,
  `age` varchar(45) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
