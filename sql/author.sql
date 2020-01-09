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

 Date: 08/01/2020 23:19:39
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for author
-- ----------------------------
DROP TABLE IF EXISTS `author`;
CREATE TABLE `author`  (
  `authorID` int(6) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`authorID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of author
-- ----------------------------
INSERT INTO `author` VALUES (1, 'Jane Austen');
INSERT INTO `author` VALUES (2, 'Emily Brontë');
INSERT INTO `author` VALUES (3, 'Miguel de Cervantes Saavedra');
INSERT INTO `author` VALUES (4, 'Jane Abbott');
INSERT INTO `author` VALUES (5, 'Daniel Defoe');
INSERT INTO `author` VALUES (6, 'Harry Collingwood');
INSERT INTO `author` VALUES (7, 'Edgar Rice Burroughs');

SET FOREIGN_KEY_CHECKS = 1;
