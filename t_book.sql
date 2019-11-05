/*
Navicat MySQL Data Transfer

Source Server         : number1
Source Server Version : 50527
Source Host           : localhost:3306
Source Database       : vue_2019-10-26

Target Server Type    : MYSQL
Target Server Version : 50527
File Encoding         : 65001

Date: 2019-11-05 20:26:37
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_book
-- ----------------------------
DROP TABLE IF EXISTS `t_book`;
CREATE TABLE `t_book` (
  `bid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `price` double(6,2) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`bid`),
  KEY `category_id` (`category_id`),
  CONSTRAINT `t_book_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `t_category` (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_book
-- ----------------------------
INSERT INTO `t_book` VALUES ('6', '了不起的张焰烽', '25.00', '5');
INSERT INTO `t_book` VALUES ('9', '小黄刊120', '120.35', '1');
INSERT INTO `t_book` VALUES ('10', '武大郎绿帽养成记', '10.55', '5');
INSERT INTO `t_book` VALUES ('17', '西门庆倒拔垂杨柳', '12.50', '5');
INSERT INTO `t_book` VALUES ('19', '二郎怒发冲冠为红颜', '25.50', '1');
