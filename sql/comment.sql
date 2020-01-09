/*
 Navicat Premium Data Transfer

 Source Server         : Localhost
 Source Server Type    : MySQL
 Source Server Version : 100406
 Source Host           : localhost:3306
 Source Schema         : bookstore

 Target Server Type    : MySQL
 Target Server Version : 100406
 File Encoding         : 65001

 Date: 08/01/2020 23:20:19
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `commentID` int(6) UNSIGNED NOT NULL AUTO_INCREMENT,
  `bookID` int(6) NULL DEFAULT NULL,
  `userID` int(6) NULL DEFAULT NULL,
  `date` datetime(0) NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`commentID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES (1, 4, 2, '2019-12-29 16:16:31', 'nice book');
INSERT INTO `comment` VALUES (2, 7, 2, '2019-12-29 16:16:46', 'hello\n');
INSERT INTO `comment` VALUES (3, 7, 2, '2019-12-29 16:16:30', '123\n');
INSERT INTO `comment` VALUES (4, 1, 2, '2019-12-30 16:16:47', 'we');
INSERT INTO `comment` VALUES (5, 1, 2, '2019-12-30 21:17:10', 'hello');
INSERT INTO `comment` VALUES (6, 1, 2, '2020-01-02 16:36:17', 'hi');
INSERT INTO `comment` VALUES (7, 13, 1, '2020-01-06 00:00:00', 'not bad');
INSERT INTO `comment` VALUES (8, 13, 1, '2020-01-06 00:00:00', 'good');
INSERT INTO `comment` VALUES (9, 2, 1, '2020-01-08 07:38:47', 'ohhhh');
INSERT INTO `comment` VALUES (10, 20, 1, '2020-01-08 14:21:07', 'Good!');

SET FOREIGN_KEY_CHECKS = 1;
