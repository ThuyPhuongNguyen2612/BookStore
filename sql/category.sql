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

 Date: 08/01/2020 23:19:57
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `categoryID` int(255) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `quantity` int(255) NULL DEFAULT NULL,
  `active` int(1) NULL DEFAULT NULL,
  PRIMARY KEY (`categoryID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (1, 'Best seller', 32, 1);
INSERT INTO `category` VALUES (2, 'Recomment', 27, 1);
INSERT INTO `category` VALUES (3, 'Scient', 48, 1);
INSERT INTO `category` VALUES (4, 'Romance', 34, 1);
INSERT INTO `category` VALUES (5, 'Action & adventure', 48, 1);
INSERT INTO `category` VALUES (6, 'Thriller', 48, 1);
INSERT INTO `category` VALUES (7, 'History', 50, 1);
INSERT INTO `category` VALUES (8, 'Humor & comedy', 47, 1);
INSERT INTO `category` VALUES (9, 'Mystery & Thriller', 0, 1);
INSERT INTO `category` VALUES (10, 'Comic', 0, 1);
INSERT INTO `category` VALUES (11, 'Adventure', 0, 1);

SET FOREIGN_KEY_CHECKS = 1;
