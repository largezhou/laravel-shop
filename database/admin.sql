/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 50719
 Source Host           : 127.0.0.1:3306
 Source Schema         : laravel-shop

 Target Server Type    : MySQL
 Target Server Version : 50719
 File Encoding         : 65001

 Date: 12/01/2019 20:02:07
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_menu`;
CREATE TABLE `admin_menu`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `permission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_menu
-- ----------------------------
INSERT INTO `admin_menu` VALUES (1, 0, 1, '首页', 'fa-bar-chart', '/', NULL, NULL, NULL);
INSERT INTO `admin_menu` VALUES (2, 0, 6, '系统管理', 'fa-tasks', '', NULL, NULL, '2019-01-12 19:18:15');
INSERT INTO `admin_menu` VALUES (3, 2, 7, '管理员', 'fa-users', 'auth/users', NULL, NULL, '2019-01-12 19:18:15');
INSERT INTO `admin_menu` VALUES (4, 2, 8, '角色', 'fa-user', 'auth/roles', NULL, NULL, '2019-01-12 19:18:15');
INSERT INTO `admin_menu` VALUES (5, 2, 9, '权限', 'fa-ban', 'auth/permissions', NULL, NULL, '2019-01-12 19:18:15');
INSERT INTO `admin_menu` VALUES (6, 2, 10, '菜单', 'fa-bars', 'auth/menu', NULL, NULL, '2019-01-12 19:18:15');
INSERT INTO `admin_menu` VALUES (7, 2, 11, '操作日志', 'fa-history', 'auth/logs', NULL, NULL, '2019-01-12 19:18:15');
INSERT INTO `admin_menu` VALUES (8, 0, 2, '用户管理', 'fa-users', '/users', NULL, '2019-01-10 14:28:25', '2019-01-10 14:28:39');
INSERT INTO `admin_menu` VALUES (9, 0, 3, '商品管理', 'fa-cubes', '/products', NULL, '2019-01-10 14:41:53', '2019-01-10 14:42:11');
INSERT INTO `admin_menu` VALUES (10, 0, 4, '订单管理', 'fa-rmb', '/orders', NULL, '2019-01-11 16:41:56', '2019-01-11 16:42:04');
INSERT INTO `admin_menu` VALUES (11, 0, 5, '优惠券管理', 'fa-tag', '/coupon_codes', NULL, '2019-01-12 19:18:12', '2019-01-12 19:18:15');

-- ----------------------------
-- Table structure for admin_operation_log
-- ----------------------------
DROP TABLE IF EXISTS `admin_operation_log`;
CREATE TABLE `admin_operation_log`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `admin_operation_log_user_id_index`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 181 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_operation_log
-- ----------------------------
INSERT INTO `admin_operation_log` VALUES (1, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-01-10 14:01:49', '2019-01-10 14:01:49');
INSERT INTO `admin_operation_log` VALUES (2, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-10 14:01:55', '2019-01-10 14:01:55');
INSERT INTO `admin_operation_log` VALUES (3, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-01-10 14:05:00', '2019-01-10 14:05:00');
INSERT INTO `admin_operation_log` VALUES (4, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-01-10 14:05:16', '2019-01-10 14:05:16');
INSERT INTO `admin_operation_log` VALUES (5, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-01-10 14:05:36', '2019-01-10 14:05:36');
INSERT INTO `admin_operation_log` VALUES (6, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-01-10 14:05:50', '2019-01-10 14:05:50');
INSERT INTO `admin_operation_log` VALUES (7, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-01-10 14:06:07', '2019-01-10 14:06:07');
INSERT INTO `admin_operation_log` VALUES (8, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-01-10 14:06:15', '2019-01-10 14:06:15');
INSERT INTO `admin_operation_log` VALUES (9, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-10 14:06:20', '2019-01-10 14:06:20');
INSERT INTO `admin_operation_log` VALUES (10, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-10 14:06:23', '2019-01-10 14:06:23');
INSERT INTO `admin_operation_log` VALUES (11, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2019-01-10 14:06:28', '2019-01-10 14:06:28');
INSERT INTO `admin_operation_log` VALUES (12, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-10 14:06:32', '2019-01-10 14:06:32');
INSERT INTO `admin_operation_log` VALUES (13, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-10 14:06:35', '2019-01-10 14:06:35');
INSERT INTO `admin_operation_log` VALUES (14, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2019-01-10 14:06:57', '2019-01-10 14:06:57');
INSERT INTO `admin_operation_log` VALUES (15, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-10 14:07:00', '2019-01-10 14:07:00');
INSERT INTO `admin_operation_log` VALUES (16, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-10 14:07:03', '2019-01-10 14:07:03');
INSERT INTO `admin_operation_log` VALUES (17, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-10 14:07:05', '2019-01-10 14:07:05');
INSERT INTO `admin_operation_log` VALUES (18, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2019-01-10 14:08:14', '2019-01-10 14:08:14');
INSERT INTO `admin_operation_log` VALUES (19, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2019-01-10 14:12:22', '2019-01-10 14:12:22');
INSERT INTO `admin_operation_log` VALUES (20, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-10 14:12:47', '2019-01-10 14:12:47');
INSERT INTO `admin_operation_log` VALUES (21, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-01-10 14:14:16', '2019-01-10 14:14:16');
INSERT INTO `admin_operation_log` VALUES (22, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-01-10 14:27:23', '2019-01-10 14:27:23');
INSERT INTO `admin_operation_log` VALUES (23, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-10 14:27:57', '2019-01-10 14:27:57');
INSERT INTO `admin_operation_log` VALUES (24, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u7528\\u6237\\u7ba1\\u7406\",\"icon\":\"fa-users\",\"uri\":\"\\/users\",\"roles\":[null],\"permission\":null,\"_token\":\"HUphcoMHO8ZkoM9H0fA5Glq7yeIyg4ZS4eejq0I7\"}', '2019-01-10 14:28:25', '2019-01-10 14:28:25');
INSERT INTO `admin_operation_log` VALUES (25, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-01-10 14:28:26', '2019-01-10 14:28:26');
INSERT INTO `admin_operation_log` VALUES (26, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-01-10 14:28:27', '2019-01-10 14:28:27');
INSERT INTO `admin_operation_log` VALUES (27, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"HUphcoMHO8ZkoM9H0fA5Glq7yeIyg4ZS4eejq0I7\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":8},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2019-01-10 14:28:38', '2019-01-10 14:28:38');
INSERT INTO `admin_operation_log` VALUES (28, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-10 14:28:39', '2019-01-10 14:28:39');
INSERT INTO `admin_operation_log` VALUES (29, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-01-10 14:28:40', '2019-01-10 14:28:40');
INSERT INTO `admin_operation_log` VALUES (30, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-10 14:28:42', '2019-01-10 14:28:42');
INSERT INTO `admin_operation_log` VALUES (31, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-10 14:29:18', '2019-01-10 14:29:18');
INSERT INTO `admin_operation_log` VALUES (32, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-10 14:29:20', '2019-01-10 14:29:20');
INSERT INTO `admin_operation_log` VALUES (33, 1, 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"slug\":\"users\",\"name\":\"\\u7528\\u6237\\u7ba1\\u7406\",\"http_method\":[null],\"http_path\":\"\\/users\\/*\",\"_token\":\"HUphcoMHO8ZkoM9H0fA5Glq7yeIyg4ZS4eejq0I7\",\"_previous_\":\"http:\\/\\/laravel-shop.l.com\\/admin\\/auth\\/permissions\"}', '2019-01-10 14:30:03', '2019-01-10 14:30:03');
INSERT INTO `admin_operation_log` VALUES (34, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-01-10 14:30:03', '2019-01-10 14:30:03');
INSERT INTO `admin_operation_log` VALUES (35, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-10 14:30:13', '2019-01-10 14:30:13');
INSERT INTO `admin_operation_log` VALUES (36, 1, 'admin/auth/roles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-10 14:30:14', '2019-01-10 14:30:14');
INSERT INTO `admin_operation_log` VALUES (37, 1, 'admin/auth/roles/create', 'GET', '127.0.0.1', '[]', '2019-01-10 14:30:50', '2019-01-10 14:30:50');
INSERT INTO `admin_operation_log` VALUES (38, 1, 'admin/auth/roles', 'POST', '127.0.0.1', '{\"slug\":\"operator\",\"name\":\"\\u8fd0\\u8425\",\"permissions\":[\"2\",\"3\",\"4\",\"6\",null],\"_token\":\"HUphcoMHO8ZkoM9H0fA5Glq7yeIyg4ZS4eejq0I7\"}', '2019-01-10 14:31:11', '2019-01-10 14:31:11');
INSERT INTO `admin_operation_log` VALUES (39, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2019-01-10 14:31:11', '2019-01-10 14:31:11');
INSERT INTO `admin_operation_log` VALUES (40, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-10 14:31:54', '2019-01-10 14:31:54');
INSERT INTO `admin_operation_log` VALUES (41, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-10 14:31:56', '2019-01-10 14:31:56');
INSERT INTO `admin_operation_log` VALUES (42, 1, 'admin/auth/users', 'POST', '127.0.0.1', '{\"username\":\"operator\",\"name\":\"\\u8fd0\\u8425\",\"password\":\"000000\",\"password_confirmation\":\"000000\",\"roles\":[\"2\",null],\"permissions\":[null],\"_token\":\"HUphcoMHO8ZkoM9H0fA5Glq7yeIyg4ZS4eejq0I7\",\"_previous_\":\"http:\\/\\/laravel-shop.l.com\\/admin\\/auth\\/users\"}', '2019-01-10 14:32:12', '2019-01-10 14:32:12');
INSERT INTO `admin_operation_log` VALUES (43, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2019-01-10 14:32:12', '2019-01-10 14:32:12');
INSERT INTO `admin_operation_log` VALUES (44, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-10 14:32:50', '2019-01-10 14:32:50');
INSERT INTO `admin_operation_log` VALUES (45, 2, 'admin', 'GET', '127.0.0.1', '[]', '2019-01-10 14:32:56', '2019-01-10 14:32:56');
INSERT INTO `admin_operation_log` VALUES (46, 2, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-10 14:32:59', '2019-01-10 14:32:59');
INSERT INTO `admin_operation_log` VALUES (47, 2, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-10 14:33:01', '2019-01-10 14:33:01');
INSERT INTO `admin_operation_log` VALUES (48, 2, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-10 14:33:02', '2019-01-10 14:33:02');
INSERT INTO `admin_operation_log` VALUES (49, 2, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-10 14:33:06', '2019-01-10 14:33:06');
INSERT INTO `admin_operation_log` VALUES (50, 2, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-10 14:33:08', '2019-01-10 14:33:08');
INSERT INTO `admin_operation_log` VALUES (51, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-01-10 14:33:21', '2019-01-10 14:33:21');
INSERT INTO `admin_operation_log` VALUES (52, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-10 14:33:23', '2019-01-10 14:33:23');
INSERT INTO `admin_operation_log` VALUES (53, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-10 14:33:25', '2019-01-10 14:33:25');
INSERT INTO `admin_operation_log` VALUES (54, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-10 14:33:28', '2019-01-10 14:33:28');
INSERT INTO `admin_operation_log` VALUES (55, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-10 14:33:29', '2019-01-10 14:33:29');
INSERT INTO `admin_operation_log` VALUES (56, 1, 'admin/auth/permissions/6/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-10 14:33:47', '2019-01-10 14:33:47');
INSERT INTO `admin_operation_log` VALUES (57, 1, 'admin/auth/permissions/6', 'PUT', '127.0.0.1', '{\"slug\":\"users\",\"name\":\"\\u7528\\u6237\\u7ba1\\u7406\",\"http_method\":[null],\"http_path\":\"\\/users*\",\"_token\":\"spd3gitQqOyN55T1qYWneOsudS8oq7XCTqMvCq2J\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/laravel-shop.l.com\\/admin\\/auth\\/permissions\"}', '2019-01-10 14:33:50', '2019-01-10 14:33:50');
INSERT INTO `admin_operation_log` VALUES (58, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-01-10 14:33:51', '2019-01-10 14:33:51');
INSERT INTO `admin_operation_log` VALUES (59, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-10 14:33:54', '2019-01-10 14:33:54');
INSERT INTO `admin_operation_log` VALUES (60, 2, 'admin', 'GET', '127.0.0.1', '[]', '2019-01-10 14:33:59', '2019-01-10 14:33:59');
INSERT INTO `admin_operation_log` VALUES (61, 2, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-10 14:34:00', '2019-01-10 14:34:00');
INSERT INTO `admin_operation_log` VALUES (62, 2, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-10 14:41:29', '2019-01-10 14:41:29');
INSERT INTO `admin_operation_log` VALUES (63, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-01-10 14:41:35', '2019-01-10 14:41:35');
INSERT INTO `admin_operation_log` VALUES (64, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-10 14:41:38', '2019-01-10 14:41:38');
INSERT INTO `admin_operation_log` VALUES (65, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u5546\\u54c1\\u7ba1\\u7406\",\"icon\":\"fa-cubes\",\"uri\":\"\\/menus\",\"roles\":[null],\"permission\":null,\"_token\":\"5aEoZShLbjfJRVqXsfpW2kGVXWzaqwY9uMI8T5Na\"}', '2019-01-10 14:41:53', '2019-01-10 14:41:53');
INSERT INTO `admin_operation_log` VALUES (66, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-01-10 14:41:53', '2019-01-10 14:41:53');
INSERT INTO `admin_operation_log` VALUES (67, 1, 'admin/auth/menu/9/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-10 14:41:59', '2019-01-10 14:41:59');
INSERT INTO `admin_operation_log` VALUES (68, 1, 'admin/auth/menu/9', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u5546\\u54c1\\u7ba1\\u7406\",\"icon\":\"fa-cubes\",\"uri\":\"\\/products\",\"roles\":[null],\"permission\":null,\"_token\":\"5aEoZShLbjfJRVqXsfpW2kGVXWzaqwY9uMI8T5Na\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/laravel-shop.l.com\\/admin\\/auth\\/menu\"}', '2019-01-10 14:42:05', '2019-01-10 14:42:05');
INSERT INTO `admin_operation_log` VALUES (69, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-01-10 14:42:05', '2019-01-10 14:42:05');
INSERT INTO `admin_operation_log` VALUES (70, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"5aEoZShLbjfJRVqXsfpW2kGVXWzaqwY9uMI8T5Na\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":8},{\\\"id\\\":9},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2019-01-10 14:42:11', '2019-01-10 14:42:11');
INSERT INTO `admin_operation_log` VALUES (71, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-10 14:42:12', '2019-01-10 14:42:12');
INSERT INTO `admin_operation_log` VALUES (72, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-01-10 14:42:16', '2019-01-10 14:42:16');
INSERT INTO `admin_operation_log` VALUES (73, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-10 14:42:19', '2019-01-10 14:42:19');
INSERT INTO `admin_operation_log` VALUES (74, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2019-01-10 15:13:04', '2019-01-10 15:13:04');
INSERT INTO `admin_operation_log` VALUES (75, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-10 15:19:06', '2019-01-10 15:19:06');
INSERT INTO `admin_operation_log` VALUES (76, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2019-01-10 15:19:34', '2019-01-10 15:19:34');
INSERT INTO `admin_operation_log` VALUES (77, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2019-01-10 15:20:11', '2019-01-10 15:20:11');
INSERT INTO `admin_operation_log` VALUES (78, 1, 'admin/products', 'POST', '127.0.0.1', '{\"title\":\"iPhone X\",\"description\":\"<p>\\u5168\\u7f51\\u9996\\u53d1\\uff0c\\u4ec5\\u6b64\\u4e00\\u5bb6<\\/p>\",\"on_sale\":\"0\",\"skus\":{\"new_1\":{\"title\":\"\\u94f6\\u8272 64G\",\"description\":\"iPhone X \\u94f6\\u8272 64G\",\"price\":\"8848\",\"stock\":\"100\",\"id\":null,\"_remove_\":\"0\"},\"new_2\":{\"title\":\"\\u7070\\u8272 256G\",\"description\":\"iPhone X \\u7070\\u8272 256G\",\"price\":\"8888\",\"stock\":\"100\",\"id\":null,\"_remove_\":\"0\"}},\"_token\":\"5aEoZShLbjfJRVqXsfpW2kGVXWzaqwY9uMI8T5Na\"}', '2019-01-10 15:22:51', '2019-01-10 15:22:51');
INSERT INTO `admin_operation_log` VALUES (79, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2019-01-10 15:22:52', '2019-01-10 15:22:52');
INSERT INTO `admin_operation_log` VALUES (80, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2019-01-10 15:23:20', '2019-01-10 15:23:20');
INSERT INTO `admin_operation_log` VALUES (81, 1, 'admin/products/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-10 15:23:43', '2019-01-10 15:23:43');
INSERT INTO `admin_operation_log` VALUES (82, 1, 'admin/products/1/edit', 'GET', '127.0.0.1', '[]', '2019-01-10 15:24:15', '2019-01-10 15:24:15');
INSERT INTO `admin_operation_log` VALUES (83, 1, 'admin/products/1/edit', 'GET', '127.0.0.1', '[]', '2019-01-10 15:27:48', '2019-01-10 15:27:48');
INSERT INTO `admin_operation_log` VALUES (84, 1, 'admin/products/1', 'PUT', '127.0.0.1', '{\"title\":\"iPhone X\",\"description\":\"<p>\\u5168\\u7f51\\u9996\\u53d1\\uff0c\\u4ec5\\u6b64\\u4e00\\u5bb6<\\/p>\",\"on_sale\":\"0\",\"skus\":{\"1\":{\"title\":\"\\u94f6\\u8272 64G\",\"description\":\"iPhone X \\u94f6\\u8272 64G\",\"price\":\"8848.00\",\"stock\":\"100\",\"id\":\"1\",\"_remove_\":\"0\"},\"2\":{\"title\":\"\\u7070\\u8272 256G\",\"description\":\"iPhone X \\u7070\\u8272 256G \\u8001\\u677f\\u75af\\u4e86\",\"price\":\"7888\",\"stock\":\"100\",\"id\":\"2\",\"_remove_\":\"0\"},\"new_1\":{\"title\":null,\"description\":null,\"price\":null,\"stock\":null,\"id\":null,\"_remove_\":\"1\"}},\"_token\":\"5aEoZShLbjfJRVqXsfpW2kGVXWzaqwY9uMI8T5Na\",\"_method\":\"PUT\"}', '2019-01-10 15:28:52', '2019-01-10 15:28:52');
INSERT INTO `admin_operation_log` VALUES (85, 1, 'admin/products/1/edit', 'GET', '127.0.0.1', '[]', '2019-01-10 15:28:52', '2019-01-10 15:28:52');
INSERT INTO `admin_operation_log` VALUES (86, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-10 15:28:55', '2019-01-10 15:28:55');
INSERT INTO `admin_operation_log` VALUES (87, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-10 15:28:57', '2019-01-10 15:28:57');
INSERT INTO `admin_operation_log` VALUES (88, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-10 15:28:57', '2019-01-10 15:28:57');
INSERT INTO `admin_operation_log` VALUES (89, 1, 'admin/products/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-10 15:29:00', '2019-01-10 15:29:00');
INSERT INTO `admin_operation_log` VALUES (90, 1, 'admin/products/1', 'PUT', '127.0.0.1', '{\"title\":\"iPhone X\",\"description\":\"<p>\\u5168\\u7f51\\u9996\\u53d1\\uff0c\\u4ec5\\u6b64\\u4e00\\u5bb6<\\/p>\",\"on_sale\":\"0\",\"skus\":{\"1\":{\"title\":\"\\u94f6\\u8272 64G\",\"description\":\"iPhone X \\u94f6\\u8272 64G\",\"price\":\"8848.00\",\"stock\":\"100\",\"id\":\"1\",\"_remove_\":\"0\"},\"2\":{\"title\":\"\\u7070\\u8272 256G\",\"description\":\"iPhone X \\u7070\\u8272 256G \\u8001\\u677f\\u75af\\u4e86\",\"price\":\"7888\",\"stock\":\"100\",\"id\":\"2\",\"_remove_\":\"0\"}},\"_token\":\"5aEoZShLbjfJRVqXsfpW2kGVXWzaqwY9uMI8T5Na\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/laravel-shop.l.com\\/admin\\/products\"}', '2019-01-10 15:29:09', '2019-01-10 15:29:09');
INSERT INTO `admin_operation_log` VALUES (91, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2019-01-10 15:29:10', '2019-01-10 15:29:10');
INSERT INTO `admin_operation_log` VALUES (92, 1, 'admin/products/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-10 15:31:49', '2019-01-10 15:31:49');
INSERT INTO `admin_operation_log` VALUES (93, 1, 'admin/products/1', 'PUT', '127.0.0.1', '{\"title\":\"iPhone X\",\"description\":\"<p>\\u5168\\u7f51\\u9996\\u53d1\\uff0c\\u4ec5\\u6b64\\u4e00\\u5bb6<\\/p>\",\"on_sale\":\"1\",\"skus\":{\"1\":{\"title\":\"\\u94f6\\u8272 64G\",\"description\":\"iPhone X \\u94f6\\u8272 64G\",\"price\":\"8848.00\",\"stock\":\"100\",\"id\":\"1\",\"_remove_\":\"0\"},\"2\":{\"title\":\"\\u7070\\u8272 256G\",\"description\":\"iPhone X \\u7070\\u8272 256G \\u8001\\u677f\\u75af\\u4e86\",\"price\":\"7888.00\",\"stock\":\"100\",\"id\":\"2\",\"_remove_\":\"0\"}},\"_token\":\"5aEoZShLbjfJRVqXsfpW2kGVXWzaqwY9uMI8T5Na\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/laravel-shop.l.com\\/admin\\/products\"}', '2019-01-10 15:31:53', '2019-01-10 15:31:53');
INSERT INTO `admin_operation_log` VALUES (94, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2019-01-10 15:31:53', '2019-01-10 15:31:53');
INSERT INTO `admin_operation_log` VALUES (95, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2019-01-10 16:22:57', '2019-01-10 16:22:57');
INSERT INTO `admin_operation_log` VALUES (96, 1, 'admin/products/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-10 16:23:04', '2019-01-10 16:23:04');
INSERT INTO `admin_operation_log` VALUES (97, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-10 16:23:08', '2019-01-10 16:23:08');
INSERT INTO `admin_operation_log` VALUES (98, 1, 'admin/products/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-10 16:23:10', '2019-01-10 16:23:10');
INSERT INTO `admin_operation_log` VALUES (99, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-10 16:23:14', '2019-01-10 16:23:14');
INSERT INTO `admin_operation_log` VALUES (100, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-01-11 16:36:41', '2019-01-11 16:36:41');
INSERT INTO `admin_operation_log` VALUES (101, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-11 16:36:45', '2019-01-11 16:36:45');
INSERT INTO `admin_operation_log` VALUES (102, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-11 16:41:39', '2019-01-11 16:41:39');
INSERT INTO `admin_operation_log` VALUES (103, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u8ba2\\u5355\\u7ba1\\u7406\",\"icon\":\"fa-rmb\",\"uri\":\"\\/orders\",\"roles\":[null],\"permission\":null,\"_token\":\"PSUOUT2OewUuvrxOhORyFHFTmimDTznoFBomrDbG\"}', '2019-01-11 16:41:56', '2019-01-11 16:41:56');
INSERT INTO `admin_operation_log` VALUES (104, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-01-11 16:41:56', '2019-01-11 16:41:56');
INSERT INTO `admin_operation_log` VALUES (105, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"PSUOUT2OewUuvrxOhORyFHFTmimDTznoFBomrDbG\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":8},{\\\"id\\\":9},{\\\"id\\\":10},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2019-01-11 16:42:04', '2019-01-11 16:42:04');
INSERT INTO `admin_operation_log` VALUES (106, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-11 16:42:04', '2019-01-11 16:42:04');
INSERT INTO `admin_operation_log` VALUES (107, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-01-11 16:42:06', '2019-01-11 16:42:06');
INSERT INTO `admin_operation_log` VALUES (108, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-11 16:42:08', '2019-01-11 16:42:08');
INSERT INTO `admin_operation_log` VALUES (109, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2019-01-11 16:47:00', '2019-01-11 16:47:00');
INSERT INTO `admin_operation_log` VALUES (110, 1, 'admin/orders/6', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-11 16:48:37', '2019-01-11 16:48:37');
INSERT INTO `admin_operation_log` VALUES (111, 1, 'admin/orders/6', 'GET', '127.0.0.1', '[]', '2019-01-11 16:50:31', '2019-01-11 16:50:31');
INSERT INTO `admin_operation_log` VALUES (112, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-11 16:52:56', '2019-01-11 16:52:56');
INSERT INTO `admin_operation_log` VALUES (113, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2019-01-11 16:52:59', '2019-01-11 16:52:59');
INSERT INTO `admin_operation_log` VALUES (114, 1, 'admin/orders/6', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-11 16:53:27', '2019-01-11 16:53:27');
INSERT INTO `admin_operation_log` VALUES (115, 1, 'admin/orders/6', 'GET', '127.0.0.1', '[]', '2019-01-11 16:54:19', '2019-01-11 16:54:19');
INSERT INTO `admin_operation_log` VALUES (116, 1, 'admin/orders/6/ship', 'POST', '127.0.0.1', '{\"_token\":\"PSUOUT2OewUuvrxOhORyFHFTmimDTznoFBomrDbG\",\"express_company\":null,\"express_no\":null}', '2019-01-11 16:54:31', '2019-01-11 16:54:31');
INSERT INTO `admin_operation_log` VALUES (117, 1, 'admin/orders/6', 'GET', '127.0.0.1', '[]', '2019-01-11 16:54:32', '2019-01-11 16:54:32');
INSERT INTO `admin_operation_log` VALUES (118, 1, 'admin/orders/6/ship', 'POST', '127.0.0.1', '{\"_token\":\"PSUOUT2OewUuvrxOhORyFHFTmimDTznoFBomrDbG\",\"express_company\":\"\\u987a\\u4e30\",\"express_no\":\"sdfsdfsdfsdf\"}', '2019-01-11 16:55:46', '2019-01-11 16:55:46');
INSERT INTO `admin_operation_log` VALUES (119, 1, 'admin/orders/6', 'GET', '127.0.0.1', '[]', '2019-01-11 16:55:47', '2019-01-11 16:55:47');
INSERT INTO `admin_operation_log` VALUES (120, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-01-11 17:10:19', '2019-01-11 17:10:19');
INSERT INTO `admin_operation_log` VALUES (121, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-11 17:10:23', '2019-01-11 17:10:23');
INSERT INTO `admin_operation_log` VALUES (122, 1, 'admin/orders/6', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-11 17:10:26', '2019-01-11 17:10:26');
INSERT INTO `admin_operation_log` VALUES (123, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-01-11 21:19:49', '2019-01-11 21:19:49');
INSERT INTO `admin_operation_log` VALUES (124, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-11 21:19:51', '2019-01-11 21:19:51');
INSERT INTO `admin_operation_log` VALUES (125, 1, 'admin/orders/6', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-11 21:19:54', '2019-01-11 21:19:54');
INSERT INTO `admin_operation_log` VALUES (126, 1, 'admin/orders/6', 'GET', '127.0.0.1', '[]', '2019-01-11 21:28:02', '2019-01-11 21:28:02');
INSERT INTO `admin_operation_log` VALUES (127, 1, 'admin/orders/6', 'GET', '127.0.0.1', '[]', '2019-01-11 21:28:10', '2019-01-11 21:28:10');
INSERT INTO `admin_operation_log` VALUES (128, 1, 'admin/orders/6', 'GET', '127.0.0.1', '[]', '2019-01-11 21:29:19', '2019-01-11 21:29:19');
INSERT INTO `admin_operation_log` VALUES (129, 1, 'admin/orders/6', 'GET', '127.0.0.1', '[]', '2019-01-11 21:29:39', '2019-01-11 21:29:39');
INSERT INTO `admin_operation_log` VALUES (130, 1, 'admin/orders/6', 'GET', '127.0.0.1', '[]', '2019-01-11 21:29:42', '2019-01-11 21:29:42');
INSERT INTO `admin_operation_log` VALUES (131, 1, 'admin/orders/6', 'GET', '127.0.0.1', '[]', '2019-01-11 21:29:46', '2019-01-11 21:29:46');
INSERT INTO `admin_operation_log` VALUES (132, 1, 'admin/orders/6', 'GET', '127.0.0.1', '[]', '2019-01-11 21:30:39', '2019-01-11 21:30:39');
INSERT INTO `admin_operation_log` VALUES (133, 1, 'admin/orders/6/refund', 'POST', '127.0.0.1', '{\"agree\":false,\"reason\":\"\\u597d\\u5b9a\\u897f\\uff0c\\u4e0d\\u4f1a\\u7528\\u5c31\\u4e0d\\u8981\\u4e70\",\"_token\":\"nzarD690gh7yXzxLVpxvmZqaVig0HN5LAhA5GsUi\"}', '2019-01-11 21:31:18', '2019-01-11 21:31:18');
INSERT INTO `admin_operation_log` VALUES (134, 1, 'admin/orders/6', 'GET', '127.0.0.1', '[]', '2019-01-11 21:31:20', '2019-01-11 21:31:20');
INSERT INTO `admin_operation_log` VALUES (135, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-01-12 19:17:51', '2019-01-12 19:17:51');
INSERT INTO `admin_operation_log` VALUES (136, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-12 19:17:56', '2019-01-12 19:17:56');
INSERT INTO `admin_operation_log` VALUES (137, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u4f18\\u60e0\\u5238\\u7ba1\\u7406\",\"icon\":\"fa-tag\",\"uri\":\"\\/coupon_codes\",\"roles\":[null],\"permission\":null,\"_token\":\"nSV5iTaiNBUmoi5n8Sr1bv3l0eG08UOnpHGcJGpZ\"}', '2019-01-12 19:18:12', '2019-01-12 19:18:12');
INSERT INTO `admin_operation_log` VALUES (138, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-01-12 19:18:12', '2019-01-12 19:18:12');
INSERT INTO `admin_operation_log` VALUES (139, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"nSV5iTaiNBUmoi5n8Sr1bv3l0eG08UOnpHGcJGpZ\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":8},{\\\"id\\\":9},{\\\"id\\\":10},{\\\"id\\\":11},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2019-01-12 19:18:15', '2019-01-12 19:18:15');
INSERT INTO `admin_operation_log` VALUES (140, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-12 19:18:15', '2019-01-12 19:18:15');
INSERT INTO `admin_operation_log` VALUES (141, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-01-12 19:18:15', '2019-01-12 19:18:15');
INSERT INTO `admin_operation_log` VALUES (142, 1, 'admin/coupon_codes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-12 19:18:17', '2019-01-12 19:18:17');
INSERT INTO `admin_operation_log` VALUES (143, 1, 'admin/coupon_codes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-12 19:18:20', '2019-01-12 19:18:20');
INSERT INTO `admin_operation_log` VALUES (144, 1, 'admin/coupon_codes', 'POST', '127.0.0.1', '{\"name\":\"\\u5927\\u6298\\u6263\",\"code\":\"welcome\",\"type\":\"percent\",\"value\":\"50\",\"total\":\"10000\",\"min_amount\":\"0\",\"not_before\":null,\"not_after\":null,\"enabled\":\"1\",\"_token\":\"nSV5iTaiNBUmoi5n8Sr1bv3l0eG08UOnpHGcJGpZ\",\"_previous_\":\"http:\\/\\/laravel-shop.l.com\\/admin\\/coupon_codes\"}', '2019-01-12 19:18:43', '2019-01-12 19:18:43');
INSERT INTO `admin_operation_log` VALUES (145, 1, 'admin/coupon_codes', 'GET', '127.0.0.1', '[]', '2019-01-12 19:18:44', '2019-01-12 19:18:44');
INSERT INTO `admin_operation_log` VALUES (146, 1, 'admin/coupon_codes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-12 19:23:41', '2019-01-12 19:23:41');
INSERT INTO `admin_operation_log` VALUES (147, 1, 'admin/coupon_codes', 'POST', '127.0.0.1', '{\"name\":null,\"code\":null,\"type\":\"fixed\",\"value\":null,\"total\":null,\"min_amount\":\"2000\",\"not_before\":null,\"not_after\":null,\"enabled\":\"0\",\"_token\":\"nSV5iTaiNBUmoi5n8Sr1bv3l0eG08UOnpHGcJGpZ\",\"_previous_\":\"http:\\/\\/laravel-shop.l.com\\/admin\\/coupon_codes\"}', '2019-01-12 19:23:46', '2019-01-12 19:23:46');
INSERT INTO `admin_operation_log` VALUES (148, 1, 'admin/coupon_codes/create', 'GET', '127.0.0.1', '[]', '2019-01-12 19:23:47', '2019-01-12 19:23:47');
INSERT INTO `admin_operation_log` VALUES (149, 1, 'admin/coupon_codes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-12 19:24:41', '2019-01-12 19:24:41');
INSERT INTO `admin_operation_log` VALUES (150, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-12 19:24:44', '2019-01-12 19:24:44');
INSERT INTO `admin_operation_log` VALUES (151, 1, 'admin/coupon_codes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-12 19:24:44', '2019-01-12 19:24:44');
INSERT INTO `admin_operation_log` VALUES (152, 1, 'admin/coupon_codes/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-12 19:24:47', '2019-01-12 19:24:47');
INSERT INTO `admin_operation_log` VALUES (153, 1, 'admin/coupon_codes/1', 'PUT', '127.0.0.1', '{\"name\":\"\\u5927\\u6298\\u6263\",\"code\":\"welcome\",\"type\":\"percent\",\"value\":\"50.00\",\"total\":\"10000\",\"min_amount\":\"2000\",\"not_before\":null,\"not_after\":null,\"enabled\":\"1\",\"_token\":\"nSV5iTaiNBUmoi5n8Sr1bv3l0eG08UOnpHGcJGpZ\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/laravel-shop.l.com\\/admin\\/coupon_codes\"}', '2019-01-12 19:24:51', '2019-01-12 19:24:51');
INSERT INTO `admin_operation_log` VALUES (154, 1, 'admin/coupon_codes', 'GET', '127.0.0.1', '[]', '2019-01-12 19:24:52', '2019-01-12 19:24:52');
INSERT INTO `admin_operation_log` VALUES (155, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-12 19:31:34', '2019-01-12 19:31:34');
INSERT INTO `admin_operation_log` VALUES (156, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-12 19:31:39', '2019-01-12 19:31:39');
INSERT INTO `admin_operation_log` VALUES (157, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-12 19:31:41', '2019-01-12 19:31:41');
INSERT INTO `admin_operation_log` VALUES (158, 1, 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"slug\":\"products\",\"name\":\"\\u5546\\u54c1\\u7ba1\\u7406\",\"http_method\":[null],\"http_path\":\"\\/products*\",\"_token\":\"nSV5iTaiNBUmoi5n8Sr1bv3l0eG08UOnpHGcJGpZ\",\"_previous_\":\"http:\\/\\/laravel-shop.l.com\\/admin\\/auth\\/permissions\"}', '2019-01-12 19:31:57', '2019-01-12 19:31:57');
INSERT INTO `admin_operation_log` VALUES (159, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-01-12 19:31:58', '2019-01-12 19:31:58');
INSERT INTO `admin_operation_log` VALUES (160, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-12 19:32:02', '2019-01-12 19:32:02');
INSERT INTO `admin_operation_log` VALUES (161, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-12 19:32:05', '2019-01-12 19:32:05');
INSERT INTO `admin_operation_log` VALUES (162, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-12 19:32:08', '2019-01-12 19:32:08');
INSERT INTO `admin_operation_log` VALUES (163, 1, 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"slug\":\"coupon_codes\",\"name\":\"\\u4f18\\u60e0\\u5238\\u7ba1\\u7406\",\"http_method\":[null],\"http_path\":\"\\/coupon_codes*\",\"_token\":\"nSV5iTaiNBUmoi5n8Sr1bv3l0eG08UOnpHGcJGpZ\",\"_previous_\":\"http:\\/\\/laravel-shop.l.com\\/admin\\/auth\\/permissions\"}', '2019-01-12 19:32:23', '2019-01-12 19:32:23');
INSERT INTO `admin_operation_log` VALUES (164, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-01-12 19:32:23', '2019-01-12 19:32:23');
INSERT INTO `admin_operation_log` VALUES (165, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-12 19:32:27', '2019-01-12 19:32:27');
INSERT INTO `admin_operation_log` VALUES (166, 1, 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"slug\":\"orders\",\"name\":\"\\u8ba2\\u5355\\u7ba1\\u7406\",\"http_method\":[null],\"http_path\":\"\\/orders*\",\"_token\":\"nSV5iTaiNBUmoi5n8Sr1bv3l0eG08UOnpHGcJGpZ\",\"_previous_\":\"http:\\/\\/laravel-shop.l.com\\/admin\\/auth\\/permissions\"}', '2019-01-12 19:32:36', '2019-01-12 19:32:36');
INSERT INTO `admin_operation_log` VALUES (167, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-01-12 19:32:36', '2019-01-12 19:32:36');
INSERT INTO `admin_operation_log` VALUES (168, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-12 19:32:49', '2019-01-12 19:32:49');
INSERT INTO `admin_operation_log` VALUES (169, 1, 'admin/auth/roles/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-12 19:32:52', '2019-01-12 19:32:52');
INSERT INTO `admin_operation_log` VALUES (170, 1, 'admin/auth/roles/2/edit', 'GET', '127.0.0.1', '[]', '2019-01-12 19:33:11', '2019-01-12 19:33:11');
INSERT INTO `admin_operation_log` VALUES (171, 1, 'admin/auth/roles/2', 'PUT', '127.0.0.1', '{\"slug\":\"operator\",\"name\":\"\\u8fd0\\u8425\",\"permissions\":[\"2\",\"3\",\"4\",\"6\",\"7\",\"8\",\"9\",null],\"_token\":\"nSV5iTaiNBUmoi5n8Sr1bv3l0eG08UOnpHGcJGpZ\",\"_method\":\"PUT\"}', '2019-01-12 19:33:24', '2019-01-12 19:33:24');
INSERT INTO `admin_operation_log` VALUES (172, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2019-01-12 19:33:24', '2019-01-12 19:33:24');
INSERT INTO `admin_operation_log` VALUES (173, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-12 19:57:23', '2019-01-12 19:57:23');
INSERT INTO `admin_operation_log` VALUES (174, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-12 19:57:25', '2019-01-12 19:57:25');
INSERT INTO `admin_operation_log` VALUES (175, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-12 19:57:26', '2019-01-12 19:57:26');
INSERT INTO `admin_operation_log` VALUES (176, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-12 19:57:26', '2019-01-12 19:57:26');
INSERT INTO `admin_operation_log` VALUES (177, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-12 19:57:34', '2019-01-12 19:57:34');
INSERT INTO `admin_operation_log` VALUES (178, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-12 19:57:35', '2019-01-12 19:57:35');
INSERT INTO `admin_operation_log` VALUES (179, 1, 'admin/coupon_codes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-12 19:57:38', '2019-01-12 19:57:38');
INSERT INTO `admin_operation_log` VALUES (180, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-01-12 19:57:40', '2019-01-12 19:57:40');

-- ----------------------------
-- Table structure for admin_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_permissions`;
CREATE TABLE `admin_permissions`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `http_path` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `admin_permissions_name_unique`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_permissions
-- ----------------------------
INSERT INTO `admin_permissions` VALUES (1, '所有权限', '*', '', '*', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (2, '仪表盘', 'dashboard', 'GET', '/', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (3, '登录', 'auth.login', '', '/auth/login\r\n/auth/logout', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (4, '个人设置', 'auth.setting', 'GET,PUT', '/auth/setting', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (5, '权限管理', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (6, '用户管理', 'users', '', '/users*', '2019-01-10 14:30:03', '2019-01-10 14:33:51');
INSERT INTO `admin_permissions` VALUES (7, '商品管理', 'products', '', '/products*', '2019-01-12 19:31:57', '2019-01-12 19:31:57');
INSERT INTO `admin_permissions` VALUES (8, '优惠券管理', 'coupon_codes', '', '/coupon_codes*', '2019-01-12 19:32:23', '2019-01-12 19:32:23');
INSERT INTO `admin_permissions` VALUES (9, '订单管理', 'orders', '', '/orders*', '2019-01-12 19:32:36', '2019-01-12 19:32:36');

-- ----------------------------
-- Table structure for admin_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_menu`;
CREATE TABLE `admin_role_menu`  (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `admin_role_menu_role_id_menu_id_index`(`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_role_menu
-- ----------------------------
INSERT INTO `admin_role_menu` VALUES (1, 2, NULL, NULL);

-- ----------------------------
-- Table structure for admin_role_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_permissions`;
CREATE TABLE `admin_role_permissions`  (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `admin_role_permissions_role_id_permission_id_index`(`role_id`, `permission_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_role_permissions
-- ----------------------------
INSERT INTO `admin_role_permissions` VALUES (1, 1, NULL, NULL);
INSERT INTO `admin_role_permissions` VALUES (2, 2, NULL, NULL);
INSERT INTO `admin_role_permissions` VALUES (2, 3, NULL, NULL);
INSERT INTO `admin_role_permissions` VALUES (2, 4, NULL, NULL);
INSERT INTO `admin_role_permissions` VALUES (2, 6, NULL, NULL);
INSERT INTO `admin_role_permissions` VALUES (2, 7, NULL, NULL);
INSERT INTO `admin_role_permissions` VALUES (2, 8, NULL, NULL);
INSERT INTO `admin_role_permissions` VALUES (2, 9, NULL, NULL);

-- ----------------------------
-- Table structure for admin_role_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_users`;
CREATE TABLE `admin_role_users`  (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `admin_role_users_role_id_user_id_index`(`role_id`, `user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_role_users
-- ----------------------------
INSERT INTO `admin_role_users` VALUES (1, 1, NULL, NULL);
INSERT INTO `admin_role_users` VALUES (2, 2, NULL, NULL);

-- ----------------------------
-- Table structure for admin_roles
-- ----------------------------
DROP TABLE IF EXISTS `admin_roles`;
CREATE TABLE `admin_roles`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `admin_roles_name_unique`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_roles
-- ----------------------------
INSERT INTO `admin_roles` VALUES (1, 'Administrator', 'administrator', '2019-01-10 13:43:06', '2019-01-10 13:43:06');
INSERT INTO `admin_roles` VALUES (2, '运营', 'operator', '2019-01-10 14:31:11', '2019-01-10 14:31:11');

-- ----------------------------
-- Table structure for admin_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_user_permissions`;
CREATE TABLE `admin_user_permissions`  (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `admin_user_permissions_user_id_permission_id_index`(`user_id`, `permission_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for admin_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_users`;
CREATE TABLE `admin_users`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `admin_users_username_unique`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_users
-- ----------------------------
INSERT INTO `admin_users` VALUES (1, 'admin', '$2y$10$LG1MIZk.1tDi5La1EU/toOuCJV.u.CzNy1I7Pxz3xzwZCcjeoqtQW', 'Administrator', NULL, 'Xv0r0CufM0sFX8sbjlZ7lqj2INfQqhbQqiHNHvm0Ah107ZzSBftyZgRrWpcc', '2019-01-10 13:43:06', '2019-01-10 13:43:06');
INSERT INTO `admin_users` VALUES (2, 'operator', '$2y$10$FZBBIK6PPGM2.GGDgKEbzeLpIASQKl1RKDEFKruI/j.gkbtxxu7/e', '运营', NULL, 'ZJtAauiayKsuOsNDxZbMlEf5HqcbiSx0nqJt9hxjMrWYHGzBNZLMzPxKSdn1', '2019-01-10 14:32:12', '2019-01-10 14:32:12');

SET FOREIGN_KEY_CHECKS = 1;
