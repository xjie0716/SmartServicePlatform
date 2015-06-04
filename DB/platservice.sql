/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50015
Source Host           : localhost:3306
Source Database       : ssp

Target Server Type    : MYSQL
Target Server Version : 50015
File Encoding         : 65001

Date: 2015-06-04 23:36:23
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `platservice`
-- ----------------------------
DROP TABLE IF EXISTS `platservice`;
CREATE TABLE `platservice` (
  `platserviceid` int(11) NOT NULL auto_increment,
  `platservicename` varchar(45) default '0',
  `classid` int(11) NOT NULL default '0',
  `content` varchar(300) default NULL,
  `birthday` timestamp NULL default CURRENT_TIMESTAMP,
  `ownerid` int(11) default NULL,
  `ownername` varchar(45) default NULL,
  `platserviceurl` varchar(300) default NULL,
  PRIMARY KEY  (`platserviceid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of platservice
-- ----------------------------
INSERT INTO `platservice` VALUES ('48', '旅游推荐A', '1', '旅游推荐A，基于用户偏好的旅游推荐服务', '2013-12-22 19:20:51', '29', 'hutao', 'aaa');
INSERT INTO `platservice` VALUES ('49', '旅游推荐B', '1', '旅游推荐B，全方位个性化定制', '2013-12-22 19:22:29', '29', 'hutao', 'bbb');
INSERT INTO `platservice` VALUES ('50', '旅游组合A', '2', '旅游组合A，改进的旅游组合服务', '2013-12-22 19:22:52', '29', 'hutao', 'ccc');
INSERT INTO `platservice` VALUES ('51', '旅游组合B', '2', '旅游组合B，个性化旅游组合定制推荐', '2013-12-22 19:23:17', '29', 'hutao', 'ddd');
INSERT INTO `platservice` VALUES ('52', '服务质量管理A', '3', '服务质量管理A，传统质量管理', '2013-12-22 19:25:11', '30', 'qiupeng', 'eee');
INSERT INTO `platservice` VALUES ('53', '服务质量管理B', '3', '服务质量管理B，基于用户评价的质量管理', '2013-12-22 19:29:26', '31', 'chensisi', 'fff');
INSERT INTO `platservice` VALUES ('54', '服务发现A', '4', '服务发现A，传统爬虫程序', '2013-12-22 19:30:22', '29', 'hutao', 'ggg');
INSERT INTO `platservice` VALUES ('55', '服务发现B', '4', '服务发现B，用于发现互联网隐含服务', '2013-12-22 19:31:33', '32', 'nana', 'hhh');
