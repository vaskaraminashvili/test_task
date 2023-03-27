/*
 Navicat Premium Data Transfer

 Source Server         : OS
 Source Server Type    : MySQL
 Source Server Version : 100426 (10.4.26-MariaDB)
 Source Host           : localhost:3306
 Source Schema         : test

 Target Server Type    : MySQL
 Target Server Version : 100426 (10.4.26-MariaDB)
 File Encoding         : 65001

 Date: 27/03/2023 14:45:30
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for view_count
-- ----------------------------
DROP TABLE IF EXISTS `view_count`;
CREATE TABLE `view_count`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `user_agent` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `view_date` datetime NOT NULL,
  `page_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `views_count` int NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of view_count
-- ----------------------------
INSERT INTO `view_count` VALUES (1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-27 13:44:40', 'http://test.com.ge/index1.html', 8);
INSERT INTO `view_count` VALUES (2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-27 13:44:36', 'http://test.com.ge/index2.html', 5);

SET FOREIGN_KEY_CHECKS = 1;
