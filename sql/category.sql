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

 Date: 28/12/2019 16:34:09
*/

SET NAMES utf8mb4
SET FOREIGN_KEY_CHECKS = 0

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS category
CREATE TABLE category  (
  categoryID int(1) NOT NULL,
  name varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  quantity int(6) NULL DEFAULT NULL,
  active int(1) NULL DEFAULT NULL,
  PRIMARY KEY (categoryID) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO category VALUES (0, 'Best seller', 50, 1)
INSERT INTO category VALUES (1, 'Recomment', 50, 1)
INSERT INTO category VALUES (2, 'Scient', 23, 1)
INSERT INTO category VALUES (3, 'Romance', 34, 1)
INSERT INTO category VALUES (4, 'Fantasy', 50, 1)
INSERT INTO category VALUES (5, 'History', 50, 1)
INSERT INTO category VALUES (6, 'Humor & comedy', 50, 1)
INSERT INTO category VALUES (7, 'Action & adventure', 50, 1)
INSERT INTO category VALUES (8, 'Mystery & Thriller', 50, 1)
INSERT INTO category VALUES (9, 'Comic', 50, 1)
INSERT INTO category VALUES (10, 'Non-fiction', 50, 1)
INSERT INTO category VALUES (11, 'Scient-fiction', 50, 1)
INSERT INTO category VALUES (12, 'Literary', 50, 1)

SET FOREIGN_KEY_CHECKS = 1
