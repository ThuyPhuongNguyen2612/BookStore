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

 Date: 08/01/2020 23:21:41
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `userID` int(255) UNSIGNED NOT NULL AUTO_INCREMENT,
  `userName` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `dob` date NULL DEFAULT NULL,
  `gentle` int(1) NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `group` int(1) NULL DEFAULT NULL,
  `active` int(1) NULL DEFAULT NULL,
  PRIMARY KEY (`userID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'thuyphuong261299@gmail.com', 'Abc123!', 'Phuong Nguyen', '0972237864', 'img/1.png', '1999-12-26', 2, 'a', 3, 1);
INSERT INTO `user` VALUES (2, 'abc@gmail.com', 'xYz123@', 'John', '0123456789', 'img/2.png', '2000-03-09', 1, 'b', 1, 1);
INSERT INTO `user` VALUES (3, '17130170@gmail.com', 'Abc123!', 'Marry', '0123456790', 'img/1.png', '1999-01-01', 2, 'c', 2, 1);
INSERT INTO `user` VALUES (4, 'jack123@gmail.com', 'Abc123!', 'Jack', '0123456791', 'img/3.png', '1994-12-09', 1, 'd', 1, 1);
INSERT INTO `user` VALUES (7, 'phuong@gmail.com', 'Aa123!123', 'phuong@gmail.com', NULL, NULL, NULL, NULL, NULL, 1, 1);

SET FOREIGN_KEY_CHECKS = 1;
