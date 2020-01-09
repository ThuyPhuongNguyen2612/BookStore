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

 Date: 08/01/2020 23:19:28
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for activecode
-- ----------------------------
DROP TABLE IF EXISTS `activecode`;
CREATE TABLE `activecode`  (
  `userName` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `active` int(1) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of activecode
-- ----------------------------
INSERT INTO `activecode` VALUES ('thuyphuong261299@gmail.com', '9<q8 ,@*p1!$e=j', 1);
INSERT INTO `activecode` VALUES ('thuyphuong261299@gmail.com', 'mB5r<<ZgY5`tP3e', 1);
INSERT INTO `activecode` VALUES ('thuyphuong261299@gmail.com', '2eAuqMb)SMaFCHl', 1);
INSERT INTO `activecode` VALUES ('thuyphuong261299@gmail.com', 'p9JH%VchO[B\\PuM', 1);
INSERT INTO `activecode` VALUES ('thuyphuong261299@gmail.com', '%3MmgrY.@\"4D,U$', 1);
INSERT INTO `activecode` VALUES ('thuyphuong261299@gmail.com', 'RMTyWp,_\'s:b2DA', 0);
INSERT INTO `activecode` VALUES ('thuyphuong261299@gmail.com', 'okf2M#, hme^B[d', 0);

SET FOREIGN_KEY_CHECKS = 1;
