/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50562
 Source Host           : localhost:3306
 Source Schema         : qlmall

 Target Server Type    : MySQL
 Target Server Version : 50562
 File Encoding         : 65001

 Date: 03/05/2020 18:50:04
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin_log
-- ----------------------------
DROP TABLE IF EXISTS `admin_log`;
CREATE TABLE `admin_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作人',
  `operation` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '操作的内容',
  `time` decimal(11, 0) NULL DEFAULT NULL COMMENT '耗时',
  `method` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '操作的方法',
  `params` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '方法参数',
  `ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作者ip',
  `create_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作的时间',
  `location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作的地点',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 490 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of admin_log
-- ----------------------------
INSERT INTO `admin_log` VALUES (436, 'admin', '删除角色', 53, 'com.liangxin.qlmall_admin.sytem.controller.RoleController.deleteRole()', ' roleIds: \"3,4,5\"', '127.0.0.1', '2020-02-23 15:24:35', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `admin_log` VALUES (437, 'admin', '上传商品信息', 293, 'com.liangxin.qlmall_admin.sytem.controller.ItemController.addItemAndUploadFile()', ' file: \"org.springframework.web.multipart.support.StandardMultipartHttpServletRequest$StandardMultipartFile@58dfceb5\"', '127.0.0.1', '2020-02-24 18:20:31', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `admin_log` VALUES (438, 'admin', '删除商品', 184, 'com.liangxin.qlmall_admin.sytem.controller.ItemController.delete()', ' id: \"3175\"', '127.0.0.1', '2020-02-24 18:25:34', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `admin_log` VALUES (439, 'admin', '上传商品信息', 122, 'com.liangxin.qlmall_admin.sytem.controller.ItemController.addItemAndUploadFile()', ' file: \"org.springframework.web.multipart.support.StandardMultipartHttpServletRequest$StandardMultipartFile@79198f81\"', '127.0.0.1', '2020-02-24 18:26:09', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `admin_log` VALUES (440, 'admin', '删除商品', 68, 'com.liangxin.qlmall_admin.sytem.controller.ItemController.delete()', ' id: \"3176\"', '127.0.0.1', '2020-02-24 18:28:05', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `admin_log` VALUES (441, 'admin', '修改商品状态', 82, 'com.liangxin.qlmall_admin.sytem.controller.ItemController.updateStatsAll()', ' itemId: \"[Ljava.lang.Integer;@ba2df7f\" flag: \"false\"', '127.0.0.1', '2020-03-02 20:15:53', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `admin_log` VALUES (442, 'admin', '修改商品状态', 25, 'com.liangxin.qlmall_admin.sytem.controller.ItemController.updateStatsAll()', ' itemId: \"[Ljava.lang.Integer;@2df511d0\" flag: \"true\"', '127.0.0.1', '2020-03-02 20:15:58', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `admin_log` VALUES (443, 'admin', '修改商品状态', 5, 'com.liangxin.qlmall_admin.sytem.controller.ItemController.updateStatsAll()', ' itemId: \"[Ljava.lang.Integer;@16c89fe8\" flag: \"false\"', '127.0.0.1', '2020-03-02 20:39:00', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `admin_log` VALUES (444, 'admin', '删除商品', 543, 'com.liangxin.qlmall_admin.sytem.controller.ItemController.delete()', ' id: \"1,2,3,4\"', '127.0.0.1', '2020-03-02 21:01:34', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `admin_log` VALUES (445, 'admin', '删除商品', 36, 'com.liangxin.qlmall_admin.sytem.controller.ItemController.delete()', ' id: \"1,2,3,4\"', '127.0.0.1', '2020-03-02 21:01:34', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `admin_log` VALUES (446, 'admin', '删除商品', 128, 'com.liangxin.qlmall_admin.sytem.controller.ItemController.delete()', ' id: \"1\"', '127.0.0.1', '2020-03-02 21:23:20', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `admin_log` VALUES (447, 'admin', '修改商品状态', 29, 'com.liangxin.qlmall_admin.sytem.controller.ItemController.updateStatsAll()', ' itemId: \"[Ljava.lang.Integer;@7e11c05b\" flag: \"false\"', '127.0.0.1', '2020-03-02 21:28:59', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `admin_log` VALUES (448, 'admin', '修改商品状态', 52, 'com.liangxin.qlmall_admin.sytem.controller.ItemController.updateStatsAll()', ' itemId: \"[Ljava.lang.Integer;@16eb8b80\" flag: \"false\"', '127.0.0.1', '2020-03-02 21:29:05', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `admin_log` VALUES (449, 'admin', '修改商品状态', 49, 'com.liangxin.qlmall_admin.sytem.controller.ItemController.updateStatsAll()', ' itemId: \"[Ljava.lang.Integer;@5e9b87e3\" flag: \"true\"', '127.0.0.1', '2020-03-02 21:29:11', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `admin_log` VALUES (450, 'admin', '修改商品状态', 4, 'com.liangxin.qlmall_admin.sytem.controller.ItemController.updateStatsAll()', ' itemId: \"[Ljava.lang.Integer;@3c0de713\" flag: \"false\"', '127.0.0.1', '2020-03-02 21:47:57', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `admin_log` VALUES (451, 'admin', '修改商品状态', 1, 'com.liangxin.qlmall_admin.sytem.controller.ItemController.updateStatsAll()', ' itemId: \"[Ljava.lang.Integer;@589f1fd4\" flag: \"false\"', '127.0.0.1', '2020-03-02 21:49:46', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `admin_log` VALUES (452, 'admin', '修改商品状态', 1, 'com.liangxin.qlmall_admin.sytem.controller.ItemController.updateStatsAll()', ' itemId: \"[Ljava.lang.Integer;@5497960\" flag: \"false\"', '127.0.0.1', '2020-03-02 21:49:53', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `admin_log` VALUES (453, 'admin', '修改商品状态', 27, 'com.liangxin.qlmall_admin.sytem.controller.ItemController.updateStatsAd()', ' itemId: \"[Ljava.lang.Integer;@7d4864f6\" flag: \"false\"', '127.0.0.1', '2020-03-02 21:57:16', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `admin_log` VALUES (454, 'admin', '修改商品状态', 55, 'com.liangxin.qlmall_admin.sytem.controller.ItemController.updateStatsAd()', ' itemId: \"[Ljava.lang.Integer;@318f5f93\" flag: \"false\"', '127.0.0.1', '2020-03-02 21:57:54', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `admin_log` VALUES (455, 'admin', '修改商品状态', 38, 'com.liangxin.qlmall_admin.sytem.controller.ItemController.updateStatsAd()', ' itemId: \"[Ljava.lang.Integer;@34863cc6\" flag: \"false\"', '127.0.0.1', '2020-03-02 21:57:57', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `admin_log` VALUES (456, 'admin', '修改商品状态', 38, 'com.liangxin.qlmall_admin.sytem.controller.ItemController.updateStatsAd()', ' itemId: \"[Ljava.lang.Integer;@39406a82\" flag: \"false\"', '127.0.0.1', '2020-03-02 21:58:00', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `admin_log` VALUES (457, 'admin', '修改商品状态', 34, 'com.liangxin.qlmall_admin.sytem.controller.ItemController.updateStatsAd()', ' itemId: \"[Ljava.lang.Integer;@57520422\" flag: \"false\"', '127.0.0.1', '2020-03-02 21:58:08', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `admin_log` VALUES (458, 'admin', '修改商品状态', 3, 'com.liangxin.qlmall_admin.sytem.controller.ItemController.updateStatsAll()', ' itemId: \"[Ljava.lang.Integer;@39d12177\" flag: \"true\"', '127.0.0.1', '2020-03-02 21:58:22', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `admin_log` VALUES (459, 'admin', '修改商品状态', 1, 'com.liangxin.qlmall_admin.sytem.controller.ItemController.updateStatsAll()', ' itemId: \"[Ljava.lang.Integer;@72e0ae06\" flag: \"false\"', '127.0.0.1', '2020-03-02 21:58:42', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `admin_log` VALUES (460, 'admin', '修改商品状态', 1, 'com.liangxin.qlmall_admin.sytem.controller.ItemController.updateStatsAll()', ' itemId: \"[Ljava.lang.Integer;@3b78d656\" flag: \"true\"', '127.0.0.1', '2020-03-02 21:58:47', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `admin_log` VALUES (461, 'admin', '修改商品状态', 42, 'com.liangxin.qlmall_admin.sytem.controller.ItemController.updateStatsAd()', ' itemId: \"[Ljava.lang.Integer;@10170632\" flag: \"true\"', '127.0.0.1', '2020-03-02 22:00:56', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `admin_log` VALUES (462, 'admin', '修改商品状态', 40, 'com.liangxin.qlmall_admin.sytem.controller.ItemController.updateSmallADStatsAll()', ' itemId: \"[Ljava.lang.Integer;@17d3e8a1\" flag: \"false\"', '127.0.0.1', '2020-03-02 22:04:26', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `admin_log` VALUES (463, 'admin', '修改商品状态', 41, 'com.liangxin.qlmall_admin.sytem.controller.ItemController.updateSmallADStatsAll()', ' itemId: \"[Ljava.lang.Integer;@6a610313\" flag: \"true\"', '127.0.0.1', '2020-03-02 22:04:31', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `admin_log` VALUES (464, 'admin', '修改商品状态', 39, 'com.liangxin.qlmall_admin.sytem.controller.ItemController.updateSmallADStatsAll()', ' itemId: \"[Ljava.lang.Integer;@2ecacc5c\" flag: \"false\"', '127.0.0.1', '2020-03-02 22:07:57', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `admin_log` VALUES (465, 'admin', '修改商品状态', 39, 'com.liangxin.qlmall_admin.sytem.controller.ItemController.updateSmallADStatsAll()', ' itemId: \"[Ljava.lang.Integer;@56993e1b\" flag: \"true\"', '127.0.0.1', '2020-03-02 22:07:59', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `admin_log` VALUES (466, 'admin', '修改商品状态', 46, 'com.liangxin.qlmall_admin.sytem.controller.ItemController.updateSmallADStatsAll()', ' itemId: \"[Ljava.lang.Integer;@7dfb280f\" flag: \"true\"', '127.0.0.1', '2020-03-02 22:08:05', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `admin_log` VALUES (467, 'admin', '修改商品状态', 52, 'com.liangxin.qlmall_admin.sytem.controller.ItemController.updateSmallADStatsAll()', ' itemId: \"[Ljava.lang.Integer;@288c094d\" flag: \"false\"', '127.0.0.1', '2020-03-02 22:08:07', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `admin_log` VALUES (468, 'admin', '修改商品状态', 47, 'com.liangxin.qlmall_admin.sytem.controller.ItemController.updateStatsAd()', ' itemId: \"[Ljava.lang.Integer;@b5f29e\" flag: \"false\"', '127.0.0.1', '2020-03-02 22:08:17', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `admin_log` VALUES (469, 'admin', '修改商品状态', 46, 'com.liangxin.qlmall_admin.sytem.controller.ItemController.updateSmallADStatsAll()', ' itemId: \"[Ljava.lang.Integer;@454922b9\" flag: \"false\"', '127.0.0.1', '2020-03-02 22:08:42', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `admin_log` VALUES (470, 'admin', '修改商品状态', 41, 'com.liangxin.qlmall_admin.sytem.controller.ItemController.updateSmallADStatsAll()', ' itemId: \"[Ljava.lang.Integer;@41b8e24c\" flag: \"false\"', '127.0.0.1', '2020-03-02 23:00:28', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `admin_log` VALUES (471, 'admin', '修改商品状态', 90, 'com.liangxin.qlmall_admin.sytem.controller.ItemController.updateSmallADStatsAll()', ' itemId: \"[Ljava.lang.Integer;@51b392fb\" flag: \"false\"', '127.0.0.1', '2020-03-02 23:00:43', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `admin_log` VALUES (472, 'admin', '删除订单', 60, 'com.liangxin.qlmall_admin.sytem.controller.OrderController.delete()', ' ids: \"173,174,175,176,177,178,179,180,181,182\"', '127.0.0.1', '2020-04-01 16:40:02', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `admin_log` VALUES (473, 'admin', '修改商品状态', 54, 'com.liangxin.qlmall_admin.sytem.controller.ItemController.updateStatsAll()', ' itemId: \"[Ljava.lang.Integer;@137ef2db\" flag: \"false\"', '127.0.0.1', '2020-04-01 19:20:26', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `admin_log` VALUES (474, 'admin', '修改商品状态', 68, 'com.liangxin.qlmall_admin.sytem.controller.ItemController.updateStatsAll()', ' itemId: \"[Ljava.lang.Integer;@61284b38\" flag: \"true\"', '127.0.0.1', '2020-04-01 19:20:33', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `admin_log` VALUES (475, 'admin', '修改商品状态', 59, 'com.liangxin.qlmall_admin.sytem.controller.ItemController.updateStatsAll()', ' itemId: \"[Ljava.lang.Integer;@721db9c\" flag: \"true\"', '127.0.0.1', '2020-04-01 19:20:42', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `admin_log` VALUES (476, 'admin', '修改用户信息', 31, 'com.liangxin.qlmall_admin.sytem.controller.UserController.updateDetail()', ' user: \"User(userId=2, username=admin, password=null, email=123456789@qq.com, sex=1, phone=18333536072, status=null, activate=null, createTime=null, updateTime=Thu Apr 02 15:32:29 CST 2020, lastTime=null, avatar=null, describes=lbaci\\n, code=null, roleId=null, roleName=null, createTimeStr=null)\"', '127.0.0.1', '2020-04-02 15:32:29', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `admin_log` VALUES (477, 'admin', '删除订单', 93, 'com.liangxin.qlmall_admin.sytem.controller.OrderController.delete()', ' ids: \"183\"', '127.0.0.1', '2020-04-11 23:22:22', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `admin_log` VALUES (478, 'admin', '删除订单', 63, 'com.liangxin.qlmall_admin.sytem.controller.OrderController.delete()', ' ids: \"184\"', '127.0.0.1', '2020-04-11 23:22:31', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `admin_log` VALUES (479, 'admin', '上传商品信息', 462, 'com.liangxin.qlmall_admin.sytem.controller.ItemController.addItemAndUploadFile()', ' file: \"org.springframework.web.multipart.support.StandardMultipartHttpServletRequest$StandardMultipartFile@725a8525\"', '127.0.0.1', '2020-04-13 18:37:18', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `admin_log` VALUES (480, 'admin', '上传商品信息', 407, 'com.liangxin.qlmall_admin.sytem.controller.ItemController.addItemAndUploadFile()', ' file: \"org.springframework.web.multipart.support.StandardMultipartHttpServletRequest$StandardMultipartFile@59632de7\"', '127.0.0.1', '2020-04-13 18:37:18', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `admin_log` VALUES (481, 'admin', '新增角色', 86, 'com.liangxin.qlmall_admin.sytem.controller.RoleController.addRole()', ' role: Role(roleId=3, roleName=测试, remark=测试, createTime=Mon Apr 13 18:38:31 CST 2020, updateTime=null, menuIds=1,3,7,167,115,137,6,138,168,169, createTimeStr=2020-04-13 18:38:31)', '127.0.0.1', '2020-04-13 18:38:31', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `admin_log` VALUES (482, 'admin', '修改商品状态', 49, 'com.liangxin.qlmall_admin.sytem.controller.ItemController.updateStatsAll()', ' itemId: \"[Ljava.lang.Integer;@ef95dd0\" flag: \"false\"', '127.0.0.1', '2020-04-13 18:39:16', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `admin_log` VALUES (483, 'admin', '修改商品状态', 37, 'com.liangxin.qlmall_admin.sytem.controller.ItemController.updateStatsAll()', ' itemId: \"[Ljava.lang.Integer;@7d61f622\" flag: \"false\"', '127.0.0.1', '2020-04-13 18:39:19', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `admin_log` VALUES (485, 'admin', '删除登录日志', 83, 'com.liangxin.qlmall_admin.monitor.controller.LoginLogController.del()', ' id: \"256\"', '127.0.0.1', '2020-04-13 19:46:24', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `admin_log` VALUES (486, 'admin', '修改商品状态', 77, 'com.liangxin.qlmall_admin.sytem.controller.ItemController.updateStatsAll()', ' itemId: \"[Ljava.lang.Integer;@2db5af09\" flag: \"false\"', '127.0.0.1', '2020-04-13 19:46:59', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `admin_log` VALUES (487, 'admin', '修改商品状态', 44, 'com.liangxin.qlmall_admin.sytem.controller.ItemController.updateStatsAll()', ' itemId: \"[Ljava.lang.Integer;@427dc40f\" flag: \"true\"', '127.0.0.1', '2020-04-13 19:47:10', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `admin_log` VALUES (488, 'admin', '删除前台用户', 70, 'com.liangxin.qlmall_admin.sytem.controller.UserController.delete()', ' id: \"20\"', '127.0.0.1', '2020-04-13 19:47:59', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `admin_log` VALUES (489, 'admin', '新增角色', 25, 'com.liangxin.qlmall_admin.sytem.controller.RoleController.addRole()', ' role: Role(roleId=4, roleName=test, remark=test, createTime=Mon Apr 13 19:48:29 CST 2020, updateTime=null, menuIds=1,3,4,5,167,168,169,170, createTimeStr=2020-04-13 19:48:29)', '127.0.0.1', '2020-04-13 19:48:29', '内网IP|0|0|内网IP|内网IP');

-- ----------------------------
-- Table structure for admin_login_log
-- ----------------------------
DROP TABLE IF EXISTS `admin_login_log`;
CREATE TABLE `admin_login_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `login_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `log_system` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `browser` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 256 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of admin_login_log
-- ----------------------------
INSERT INTO `admin_login_log` VALUES (227, 'admin', '2020-02-24 18:18:56', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 81');
INSERT INTO `admin_login_log` VALUES (228, 'admin', '2020-03-02 19:32:02', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 81');
INSERT INTO `admin_login_log` VALUES (229, 'admin', '2020-03-02 20:02:19', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 81');
INSERT INTO `admin_login_log` VALUES (230, 'admin', '2020-03-02 20:05:12', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 81');
INSERT INTO `admin_login_log` VALUES (231, 'admin', '2020-03-02 20:17:34', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 81');
INSERT INTO `admin_login_log` VALUES (232, 'admin', '2020-03-02 20:46:22', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 81');
INSERT INTO `admin_login_log` VALUES (233, 'admin', '2020-03-02 21:00:34', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 81');
INSERT INTO `admin_login_log` VALUES (234, 'admin', '2020-03-02 21:16:13', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 81');
INSERT INTO `admin_login_log` VALUES (235, 'admin', '2020-03-02 21:18:08', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 81');
INSERT INTO `admin_login_log` VALUES (236, 'admin', '2020-03-02 21:21:34', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 81');
INSERT INTO `admin_login_log` VALUES (237, 'admin', '2020-03-02 21:31:37', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 81');
INSERT INTO `admin_login_log` VALUES (238, 'admin', '2020-03-02 21:36:18', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 81');
INSERT INTO `admin_login_log` VALUES (239, 'admin', '2020-03-02 21:47:34', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Firefox 72');
INSERT INTO `admin_login_log` VALUES (240, 'admin', '2020-03-02 22:00:52', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Firefox 72');
INSERT INTO `admin_login_log` VALUES (241, 'admin', '2020-03-02 22:04:22', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Firefox 72');
INSERT INTO `admin_login_log` VALUES (242, 'admin', '2020-03-02 22:07:52', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Firefox 72');
INSERT INTO `admin_login_log` VALUES (243, 'admin', '2020-03-02 22:59:38', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 81');
INSERT INTO `admin_login_log` VALUES (244, 'admin', '2020-03-05 17:06:21', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 81');
INSERT INTO `admin_login_log` VALUES (245, 'admin', '2020-03-05 17:09:52', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 81');
INSERT INTO `admin_login_log` VALUES (246, 'admin', '2020-04-01 16:31:22', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Firefox 72');
INSERT INTO `admin_login_log` VALUES (247, 'admin', '2020-04-01 19:12:54', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Firefox 72');
INSERT INTO `admin_login_log` VALUES (248, 'admin', '2020-04-02 13:34:44', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Firefox 72');
INSERT INTO `admin_login_log` VALUES (249, 'admin', '2020-04-02 15:31:56', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Firefox 72');
INSERT INTO `admin_login_log` VALUES (250, 'admin', '2020-04-10 22:04:01', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 80');
INSERT INTO `admin_login_log` VALUES (251, 'admin', '2020-04-11 23:19:06', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Chrome 80');
INSERT INTO `admin_login_log` VALUES (252, 'admin', '2020-04-13 08:08:39', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Firefox 70');
INSERT INTO `admin_login_log` VALUES (253, 'admin', '2020-04-13 10:43:12', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Firefox 70');
INSERT INTO `admin_login_log` VALUES (254, 'admin', '2020-04-13 13:53:38', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Firefox 70');
INSERT INTO `admin_login_log` VALUES (255, 'admin', '2020-04-13 18:36:02', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Firefox 70');

-- ----------------------------
-- Table structure for admin_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_menu`;
CREATE TABLE `admin_menu`  (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '菜单/按钮ID',
  `role_id` int(11) NOT NULL COMMENT '上级菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜单/按钮名称',
  `url` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单URL',
  `perms` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '权限标识',
  `icon` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图标',
  `type` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '类型 0菜单 1按钮',
  `order_num` bigint(20) NULL DEFAULT NULL COMMENT '排序',
  `create_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建时间',
  `modify_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 171 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '菜单表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of admin_menu
-- ----------------------------
INSERT INTO `admin_menu` VALUES (1, 0, '系统监控', NULL, 'admin_system:view', 'layui-icon-setting', '0', 1, '2020-01-22', '2020-01-22');
INSERT INTO `admin_menu` VALUES (2, 0, '商品管理', '', 'admin_item:view', 'layui-icon-alert', '0', 2, '2020-01-22', '2020-01-22');
INSERT INTO `admin_menu` VALUES (3, 1, '系统日志', '', 'log:view', 'layui-icon-meh', '0', 1, '2020-01-22', '2020-01-22');
INSERT INTO `admin_menu` VALUES (4, 1, '登录日志', '', 'login_log:view', '', '0', 2, '2020-01-22', '2020-01-22');
INSERT INTO `admin_menu` VALUES (5, 1, '在线用户', '', 'online:view', '', '0', 3, '2020-01-22', '2020-01-22');
INSERT INTO `admin_menu` VALUES (6, 137, '前台用户', '', 'user:view', '', '0', 4, '2020-01-22', '2020-01-22');
INSERT INTO `admin_menu` VALUES (7, 2, '商品列表', NULL, 'item:view', NULL, '1', NULL, '2020-01-22', '2020-01-22');
INSERT INTO `admin_menu` VALUES (12, 3, '删除系统日志', NULL, 'log:delete', NULL, '1', NULL, '2020-01-22', '2020-01-22');
INSERT INTO `admin_menu` VALUES (14, 4, '删除登录日志', NULL, 'login_log:delete', NULL, '1', NULL, '2020-01-22', '2020-01-22');
INSERT INTO `admin_menu` VALUES (17, 5, '踢出在线用户', NULL, 'online:kick', NULL, '1', NULL, '2020-01-22', '2020-01-22');
INSERT INTO `admin_menu` VALUES (20, 6, '修改前台用户', NULL, 'user:update', NULL, '1', NULL, '2020-01-22', '2020-01-22');
INSERT INTO `admin_menu` VALUES (21, 6, '删除前台用户', NULL, 'user:delete', NULL, '1', NULL, '2020-01-22', '2020-01-22');
INSERT INTO `admin_menu` VALUES (23, 7, '删除商品', NULL, 'item:delete', NULL, '1', NULL, '2020-01-22', '2020-01-22');
INSERT INTO `admin_menu` VALUES (24, 10, '删除日志', NULL, 'log:delete', NULL, '1', NULL, '2020-01-22', '2020-01-22');
INSERT INTO `admin_menu` VALUES (25, 7, '修改商品', NULL, 'item:update', NULL, '1', NULL, '2020-01-22', '2020-01-22');
INSERT INTO `admin_menu` VALUES (56, 58, '删除订单', NULL, 'order:delete', NULL, '1', NULL, '2020-01-22', '2020-01-22');
INSERT INTO `admin_menu` VALUES (57, 138, '删除后台用户', NULL, 'admin:delete', NULL, '1', NULL, '2020-01-22', '2020-01-22');
INSERT INTO `admin_menu` VALUES (58, 115, '订单列表', NULL, 'order:view', NULL, '1', NULL, '2020-01-22', '2020-01-22');
INSERT INTO `admin_menu` VALUES (78, 139, '新增角色', NULL, 'role:add', NULL, '1', NULL, '2020-01-22', '2020-01-22');
INSERT INTO `admin_menu` VALUES (87, 139, '删除角色', NULL, 'role:delete', NULL, '1', NULL, '2020-01-22', '2020-01-22');
INSERT INTO `admin_menu` VALUES (115, 0, '订单管理', NULL, 'admin_order:view', 'layui-icon-gift', '0', 5, '2020-01-22', '2020-01-22');
INSERT INTO `admin_menu` VALUES (137, 0, '用户管理', '', 'admin_user_view', 'layui-icon-verticalright', '0', 4, '2020-01-22', '2020-01-22');
INSERT INTO `admin_menu` VALUES (138, 137, '后台用户', '', 'admin:view', NULL, '0', 1, '2020-01-22', '2020-01-22');
INSERT INTO `admin_menu` VALUES (139, 137, '角色管理', '', 'role:view', '', '0', 2, '2020-01-22', '2020-01-22');
INSERT INTO `admin_menu` VALUES (165, 138, '修改后台用户', NULL, 'admin:update', NULL, '1', NULL, '2020-01-22', '2020-01-22');
INSERT INTO `admin_menu` VALUES (166, 139, '修改角色', NULL, 'role:update', NULL, '1', NULL, '2020-01-22', '2020-01-22');
INSERT INTO `admin_menu` VALUES (167, 2, '添加商品', NULL, 'item:add', NULL, '1', NULL, '2020-01-22', '2020-01-22');
INSERT INTO `admin_menu` VALUES (168, 0, '首页管理', NULL, 'portal:portal', NULL, '0', NULL, '2020-01-22', '2020-01-22');
INSERT INTO `admin_menu` VALUES (169, 168, '大广告位管理', NULL, 'ad:big', NULL, '1', NULL, '2020-01-22', '2020-01-22');
INSERT INTO `admin_menu` VALUES (170, 168, '小广告位', '', 'ad:small', '', '1', NULL, '2020-01-22', '2020-01-22');

-- ----------------------------
-- Table structure for admin_role
-- ----------------------------
DROP TABLE IF EXISTS `admin_role`;
CREATE TABLE `admin_role`  (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色名称',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色描述',
  `create_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of admin_role
-- ----------------------------
INSERT INTO `admin_role` VALUES (1, '系统管理员', '系统管理员，拥有所有操作权限 ^_^', '2020-01-11 20:06:28', '2020-02-15 12:28:11');
INSERT INTO `admin_role` VALUES (2, '普通管理员', '拥有查看的功能', '2020-01-13 14:59:17', '2020-02-15 12:28:46');
INSERT INTO `admin_role` VALUES (3, '测试', '测试', '2020-04-13 18:38:31', NULL);
INSERT INTO `admin_role` VALUES (4, 'test', 'test', '2020-04-13 19:48:29', NULL);

-- ----------------------------
-- Table structure for admin_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_menu`;
CREATE TABLE `admin_role_menu`  (
  `role_id` int(11) NOT NULL COMMENT '角色ID',
  `menu_id` int(11) NOT NULL COMMENT '菜单/按钮ID'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色菜单关联表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of admin_role_menu
-- ----------------------------
INSERT INTO `admin_role_menu` VALUES (16, 1);
INSERT INTO `admin_role_menu` VALUES (16, 2);
INSERT INTO `admin_role_menu` VALUES (16, 115);
INSERT INTO `admin_role_menu` VALUES (16, 137);
INSERT INTO `admin_role_menu` VALUES (1, 1);
INSERT INTO `admin_role_menu` VALUES (1, 3);
INSERT INTO `admin_role_menu` VALUES (1, 12);
INSERT INTO `admin_role_menu` VALUES (1, 4);
INSERT INTO `admin_role_menu` VALUES (1, 14);
INSERT INTO `admin_role_menu` VALUES (1, 5);
INSERT INTO `admin_role_menu` VALUES (1, 17);
INSERT INTO `admin_role_menu` VALUES (1, 2);
INSERT INTO `admin_role_menu` VALUES (1, 7);
INSERT INTO `admin_role_menu` VALUES (1, 23);
INSERT INTO `admin_role_menu` VALUES (1, 25);
INSERT INTO `admin_role_menu` VALUES (1, 115);
INSERT INTO `admin_role_menu` VALUES (1, 58);
INSERT INTO `admin_role_menu` VALUES (1, 56);
INSERT INTO `admin_role_menu` VALUES (1, 137);
INSERT INTO `admin_role_menu` VALUES (1, 6);
INSERT INTO `admin_role_menu` VALUES (1, 20);
INSERT INTO `admin_role_menu` VALUES (1, 21);
INSERT INTO `admin_role_menu` VALUES (1, 138);
INSERT INTO `admin_role_menu` VALUES (1, 57);
INSERT INTO `admin_role_menu` VALUES (1, 165);
INSERT INTO `admin_role_menu` VALUES (1, 139);
INSERT INTO `admin_role_menu` VALUES (1, 78);
INSERT INTO `admin_role_menu` VALUES (1, 87);
INSERT INTO `admin_role_menu` VALUES (1, 166);
INSERT INTO `admin_role_menu` VALUES (2, 1);
INSERT INTO `admin_role_menu` VALUES (2, 3);
INSERT INTO `admin_role_menu` VALUES (2, 4);
INSERT INTO `admin_role_menu` VALUES (2, 5);
INSERT INTO `admin_role_menu` VALUES (2, 2);
INSERT INTO `admin_role_menu` VALUES (2, 7);
INSERT INTO `admin_role_menu` VALUES (2, 115);
INSERT INTO `admin_role_menu` VALUES (2, 58);
INSERT INTO `admin_role_menu` VALUES (2, 137);
INSERT INTO `admin_role_menu` VALUES (2, 6);
INSERT INTO `admin_role_menu` VALUES (2, 138);
INSERT INTO `admin_role_menu` VALUES (2, 139);
INSERT INTO `admin_role_menu` VALUES (1, 167);
INSERT INTO `admin_role_menu` VALUES (1, 168);
INSERT INTO `admin_role_menu` VALUES (1, 168);
INSERT INTO `admin_role_menu` VALUES (1, 169);
INSERT INTO `admin_role_menu` VALUES (1, 169);
INSERT INTO `admin_role_menu` VALUES (1, 170);
INSERT INTO `admin_role_menu` VALUES (3, 1);
INSERT INTO `admin_role_menu` VALUES (3, 3);
INSERT INTO `admin_role_menu` VALUES (3, 7);
INSERT INTO `admin_role_menu` VALUES (3, 167);
INSERT INTO `admin_role_menu` VALUES (3, 115);
INSERT INTO `admin_role_menu` VALUES (3, 137);
INSERT INTO `admin_role_menu` VALUES (3, 6);
INSERT INTO `admin_role_menu` VALUES (3, 138);
INSERT INTO `admin_role_menu` VALUES (3, 168);
INSERT INTO `admin_role_menu` VALUES (3, 169);
INSERT INTO `admin_role_menu` VALUES (4, 1);
INSERT INTO `admin_role_menu` VALUES (4, 3);
INSERT INTO `admin_role_menu` VALUES (4, 4);
INSERT INTO `admin_role_menu` VALUES (4, 5);
INSERT INTO `admin_role_menu` VALUES (4, 167);
INSERT INTO `admin_role_menu` VALUES (4, 168);
INSERT INTO `admin_role_menu` VALUES (4, 169);
INSERT INTO `admin_role_menu` VALUES (4, 170);

-- ----------------------------
-- Table structure for admin_user
-- ----------------------------
DROP TABLE IF EXISTS `admin_user`;
CREATE TABLE `admin_user`  (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` int(3) NULL DEFAULT NULL COMMENT '0女 1男 2保密',
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` int(255) NULL DEFAULT NULL COMMENT '0无效 1有效',
  `create_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建的时间',
  `update_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改时间',
  `last_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '最后访问的时间',
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像',
  `describes` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of admin_user
-- ----------------------------
INSERT INTO `admin_user` VALUES (2, 'admin', '4b252ef32f83fdec9ce52366a161dbc0', '123456789@qq.com', 1, '18333536072', 1, '2020-01-14 11:39:13', '2020-04-02 15:32:29', '2020-04-13 19:45:25', '/assets/images/avatar/964e40b005724165b8cf772355796c8c.jpeg', 'lbaci\n', NULL);

-- ----------------------------
-- Table structure for admin_user_role
-- ----------------------------
DROP TABLE IF EXISTS `admin_user_role`;
CREATE TABLE `admin_user_role`  (
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of admin_user_role
-- ----------------------------
INSERT INTO `admin_user_role` VALUES (1, 1);
INSERT INTO `admin_user_role` VALUES (2, 1);

-- ----------------------------
-- Table structure for bigad
-- ----------------------------
DROP TABLE IF EXISTS `bigad`;
CREATE TABLE `bigad`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of bigad
-- ----------------------------
INSERT INTO `bigad` VALUES (1, 'http://192.168.197.136:8888/group1/M00/00/01/wKjFiF5PbP-AQUatAAFhBnTxvHI442.jpg', '0');
INSERT INTO `bigad` VALUES (2, 'http://192.168.197.136:8888/group1/M00/00/01/wKjFiF5dA36AXIZMAABY8lPgsW8235.jpg', '0');
INSERT INTO `bigad` VALUES (3, 'http://192.168.197.136:8888/group1/M00/00/01/wKjFiF5dA36AQDc6AAz5bj_M7fw375.jpg', '0');
INSERT INTO `bigad` VALUES (4, 'http://192.168.197.136:8888/group1/M00/00/01/wKjFiF5dA36AQ_35AAA_93Df07U139.jpg', '0');
INSERT INTO `bigad` VALUES (5, 'http://192.168.197.136:8888/group1/M00/00/01/wKjFiF5dE2GASfZfAAGMsFq0q3w017.jpg', '1');
INSERT INTO `bigad` VALUES (6, 'http://192.168.197.136:8888/group1/M00/00/01/wKjFiF5dE2GAE7J3AAPz0Me8H4o984.jpg', '1');
INSERT INTO `bigad` VALUES (7, 'http://192.168.197.136:8888/group1/M00/00/01/wKjFiF5dE2GAW0htAAO-PZ8Jzlc654.jpg', '1');
INSERT INTO `bigad` VALUES (8, 'http://192.168.197.136:8888/group1/M00/00/01/wKjFiF5dE2GALCx6AAGn7xp9Fgs151.jpg', '1');
INSERT INTO `bigad` VALUES (9, 'http://192.168.197.136:8888/group1/M00/00/02/wKjFiF6UUaqAP5chAAz5bj_M7fw256.jpg', '1');

-- ----------------------------
-- Table structure for jd_address
-- ----------------------------
DROP TABLE IF EXISTS `jd_address`;
CREATE TABLE `jd_address`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `telephone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `province` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `county` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `particulars` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `defaultvalue` int(2) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `aa`(`uid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of jd_address
-- ----------------------------
INSERT INTO `jd_address` VALUES (21, 19, 'lbaci', '123456789', '河北省', '石家庄市', '长安区', '河北经贸大学\r\n', 1);

-- ----------------------------
-- Table structure for jd_category
-- ----------------------------
DROP TABLE IF EXISTS `jd_category`;
CREATE TABLE `jd_category`  (
  `c_id` int(11) NOT NULL AUTO_INCREMENT,
  `c_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `c_href` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`c_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of jd_category
-- ----------------------------
INSERT INTO `jd_category` VALUES (1, '鲜果蔬菜', '/findByCatId?cid=1');
INSERT INTO `jd_category` VALUES (2, '五谷杂粮', '/findByCatId?cid=2');
INSERT INTO `jd_category` VALUES (3, '药材', '/findByCatId?cid=3');
INSERT INTO `jd_category` VALUES (4, '蜂产品', '/findByCatId?cid=4');
INSERT INTO `jd_category` VALUES (5, '干花花艺', '/findByCatId?cid=5');
INSERT INTO `jd_category` VALUES (6, '特色海鲜', '/findByCatId?cid=6');
INSERT INTO `jd_category` VALUES (7, '礼品类', '/findByCatId?cid=7');
INSERT INTO `jd_category` VALUES (8, '手工制品', '/findByCatId?cid=8');
INSERT INTO `jd_category` VALUES (9, '其他', '/findByCatId?cid=9');

-- ----------------------------
-- Table structure for jd_comment
-- ----------------------------
DROP TABLE IF EXISTS `jd_comment`;
CREATE TABLE `jd_comment`  (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT NULL COMMENT '评论的id',
  `details_id` int(11) NULL DEFAULT NULL COMMENT '评论商品的id',
  `comment_connect` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '评论的内容',
  `comment_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '评论的时间',
  `comment_image` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '评论的图片',
  PRIMARY KEY (`comment_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 97 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of jd_comment
-- ----------------------------
INSERT INTO `jd_comment` VALUES (96, 19, 3163, '测试', '2020-04-02 00:02:35', 'http://192.168.197.136:8888/group1/M00/00/01/wKjFiF6EuxuABlzWAAc6MZy05v8613.jpg,');

-- ----------------------------
-- Table structure for jd_item
-- ----------------------------
DROP TABLE IF EXISTS `jd_item`;
CREATE TABLE `jd_item`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_cid` int(11) NULL DEFAULT NULL,
  `item_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `item_price` double NULL DEFAULT NULL,
  `item_image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `item_sales` int(10) NULL DEFAULT NULL COMMENT '销量',
  `item_stats` int(2) NULL DEFAULT NULL COMMENT '状态',
  `item_creatime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '新品',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3174 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of jd_item
-- ----------------------------
INSERT INTO `jd_item` VALUES (3162, 7, '【丛名】彩袋丛名猴头菇 150g', 45, 'http://192.168.197.136:8888/group1/M00/00/01/wKjFiF5PbP-AQUatAAFhBnTxvHI442.jpg', 1, 1, '2020-02-21 13:39:19');
INSERT INTO `jd_item` VALUES (3163, 1, '纯野生黄花菜干货 山野无硫金针菜土山货500G包邮', 45, 'http://192.168.197.136:8888/group1/M00/00/01/wKjFiF5PbnCAOuRFAANbOdYaq48197.jpg', 12, 1, '2020-02-21 13:45:24');
INSERT INTO `jd_item` VALUES (3164, 2, '10kg香米长粒香20斤农家自产非黑龙江五常大米', 63.5, 'http://192.168.197.136:8888/group1/M00/00/01/wKjFiF5PcFiAagrMAABbZYD_qbM210.jpg', 0, 1, '2020-02-21 13:53:31');
INSERT INTO `jd_item` VALUES (3165, 3, '【丛名】彩袋丛名银耳 115g', 98, 'http://192.168.197.136:8888/group1/M00/00/01/wKjFiF5PcKuAEdZ6AAA_93Df07U771.jpg', 1, 1, '2020-02-21 13:54:54');
INSERT INTO `jd_item` VALUES (3166, 4, '    升林特产 东北山林土蜂蜜 天然结晶糠椴蜜 黑蜂椴树花蜜 500G乳白\r\n', 28, 'http://192.168.197.136:8888/group1/M00/00/01/wKjFiF5PcQuAOYDoAABVjkRVwjA994.jpg', 1, 1, '2020-02-21 13:56:30');
INSERT INTO `jd_item` VALUES (3167, 5, '\r\n\r\n    纽力申 新西兰进口蜂蜜礼盒装 含麦卢卡5+ 甘露蜜 百花蜜250g*4 春节年货礼盒装\r\n    纽力申 新西兰进口蜂蜜礼盒装 含麦卢卡5+ 甘露蜜 百花蜜250g*4 春节年货礼盒装\r\n  ', 1, 'http://192.168.197.136:8888/group1/M00/00/01/wKjFiF5PcWmAGTI6AABVjkRVwjA395.jpg', 1, 1, '2020-02-21 13:58:04');
INSERT INTO `jd_item` VALUES (3168, 8, '    纽力申 新西兰进口蜂蜜礼盒装 含麦卢卡5+ 甘露蜜 百花蜜250g*4 春节年货礼盒装', 111, 'http://192.168.197.136:8888/group1/M00/00/01/wKjFiF5PcYWAcTIeAABFMi9zI30900.jpg', 11, 1, '2020-02-21 13:58:32');
INSERT INTO `jd_item` VALUES (3169, 6, '    纽力申 新西兰进口蜂蜜礼盒装 含麦卢卡5+ 甘露蜜 百花蜜250g*4 春节年货礼盒装', 121, 'http://192.168.197.136:8888/group1/M00/00/01/wKjFiF5PcZ-AZlERAAA_93Df07U823.jpg', 1, 1, '2020-02-21 13:58:58');
INSERT INTO `jd_item` VALUES (3170, 5, '    纽力申 新西兰进口蜂蜜礼盒装 含麦卢卡5+ 甘露蜜 百花蜜250g*4 春节年货礼盒装', 11, 'http://192.168.197.136:8888/group1/M00/00/01/wKjFiF5Pca-AQU-4AAA-K1qKK1M375.jpg', 1, 1, '2020-02-21 13:59:19');
INSERT INTO `jd_item` VALUES (3171, 2, '    纽力申 新西兰进口蜂蜜礼盒装 含麦卢卡5+ 甘露蜜 百花蜜250g*4 春节年货礼盒装', 1, 'http://192.168.197.136:8888/group1/M00/00/01/wKjFiF5PcdyAS1cGAABFMi9zI30298.jpg', 1, 1, '2020-02-21 13:59:58');
INSERT INTO `jd_item` VALUES (3172, 8, '    纽力申 新西兰进口蜂蜜礼盒装 含麦卢卡5+ 甘露蜜 百花蜜250g*4 春节年货礼盒装', 1, 'http://192.168.197.136:8888/group1/M00/00/01/wKjFiF5PcomAGhPMAANIEWEkJsA561.jpg', 1, 1, '2020-02-21 14:02:51');
INSERT INTO `jd_item` VALUES (3173, 3, '这是一个测试', 111, 'http://192.168.197.136:8888/group1/M00/00/01/wKjFiF6UQN-AAUj4AANbOdYaq48830.jpg', 0, 1, '2020-04-13 18:37:24');

-- ----------------------------
-- Table structure for jd_item_big
-- ----------------------------
DROP TABLE IF EXISTS `jd_item_big`;
CREATE TABLE `jd_item_big`  (
  `item_big_id` int(11) NOT NULL AUTO_INCREMENT,
  `item_details_id` int(11) NULL DEFAULT NULL,
  `item_big_image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`item_big_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19962 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of jd_item_big
-- ----------------------------
INSERT INTO `jd_item_big` VALUES (19934, 3162, 'http://192.168.197.136:8888/group1/M00/00/01/wKjFiF5PbP-AQUatAAFhBnTxvHI442.jpg');
INSERT INTO `jd_item_big` VALUES (19935, 3162, 'http://192.168.197.136:8888/group1/M00/00/01/wKjFiF5PbP-AHx3bAAA-Z81ZsuQ294.jpg');
INSERT INTO `jd_item_big` VALUES (19936, 3163, 'http://192.168.197.136:8888/group1/M00/00/01/wKjFiF5PbnCAOuRFAANbOdYaq48197.jpg');
INSERT INTO `jd_item_big` VALUES (19937, 3163, 'http://192.168.197.136:8888/group1/M00/00/01/wKjFiF5PbnCAY0RIAABfjeb_Z-E469.jpg');
INSERT INTO `jd_item_big` VALUES (19938, 3163, 'http://192.168.197.136:8888/group1/M00/00/01/wKjFiF5PbnCAZuwsAAB8p5l7mhg151.jpg');
INSERT INTO `jd_item_big` VALUES (19939, 3164, 'http://192.168.197.136:8888/group1/M00/00/01/wKjFiF5PcFiAagrMAABbZYD_qbM210.jpg');
INSERT INTO `jd_item_big` VALUES (19940, 3164, 'http://192.168.197.136:8888/group1/M00/00/01/wKjFiF5PcFiAdQdLAABFMi9zI30940.jpg');
INSERT INTO `jd_item_big` VALUES (19941, 3165, 'http://192.168.197.136:8888/group1/M00/00/01/wKjFiF5PcKuAEdZ6AAA_93Df07U771.jpg');
INSERT INTO `jd_item_big` VALUES (19942, 3165, 'http://192.168.197.136:8888/group1/M00/00/01/wKjFiF5PcKuASEIQAABY8lPgsW8654.jpg');
INSERT INTO `jd_item_big` VALUES (19943, 3166, 'http://192.168.197.136:8888/group1/M00/00/01/wKjFiF5PcQuAOYDoAABVjkRVwjA994.jpg');
INSERT INTO `jd_item_big` VALUES (19944, 3166, 'http://192.168.197.136:8888/group1/M00/00/01/wKjFiF5PcQuAArX4AAA-K1qKK1M067.jpg');
INSERT INTO `jd_item_big` VALUES (19945, 3166, 'http://192.168.197.136:8888/group1/M00/00/01/wKjFiF5PcQuAMisdAANIEWEkJsA672.jpg');
INSERT INTO `jd_item_big` VALUES (19946, 3167, 'http://192.168.197.136:8888/group1/M00/00/01/wKjFiF5PcWmAGTI6AABVjkRVwjA395.jpg');
INSERT INTO `jd_item_big` VALUES (19947, 3167, 'http://192.168.197.136:8888/group1/M00/00/01/wKjFiF5PcWmAAXCYAAA90ntmc3g318.jpg');
INSERT INTO `jd_item_big` VALUES (19948, 3168, 'http://192.168.197.136:8888/group1/M00/00/01/wKjFiF5PcYWAcTIeAABFMi9zI30900.jpg');
INSERT INTO `jd_item_big` VALUES (19949, 3168, 'http://192.168.197.136:8888/group1/M00/00/01/wKjFiF5PcYWAPx2XAAz5bj_M7fw584.jpg');
INSERT INTO `jd_item_big` VALUES (19950, 3169, 'http://192.168.197.136:8888/group1/M00/00/01/wKjFiF5PcZ-AZlERAAA_93Df07U823.jpg');
INSERT INTO `jd_item_big` VALUES (19951, 3169, 'http://192.168.197.136:8888/group1/M00/00/01/wKjFiF5PcZ-ASZIzAAz5bj_M7fw111.jpg');
INSERT INTO `jd_item_big` VALUES (19952, 3170, 'http://192.168.197.136:8888/group1/M00/00/01/wKjFiF5Pca-AQU-4AAA-K1qKK1M375.jpg');
INSERT INTO `jd_item_big` VALUES (19953, 3170, 'http://192.168.197.136:8888/group1/M00/00/01/wKjFiF5Pca-AHe66AABfjeb_Z-E658.jpg');
INSERT INTO `jd_item_big` VALUES (19954, 3171, 'http://192.168.197.136:8888/group1/M00/00/01/wKjFiF5PcdyAS1cGAABFMi9zI30298.jpg');
INSERT INTO `jd_item_big` VALUES (19955, 3171, 'http://192.168.197.136:8888/group1/M00/00/01/wKjFiF5PcdyAKghRAAFhBnTxvHI266.jpg');
INSERT INTO `jd_item_big` VALUES (19956, 3172, 'http://192.168.197.136:8888/group1/M00/00/01/wKjFiF5PcomAGhPMAANIEWEkJsA561.jpg');
INSERT INTO `jd_item_big` VALUES (19957, 3172, 'http://192.168.197.136:8888/group1/M00/00/01/wKjFiF5PcomATtmkAAFhBnTxvHI576.jpg');
INSERT INTO `jd_item_big` VALUES (19958, 3173, 'http://192.168.197.136:8888/group1/M00/00/01/wKjFiF5To2-ATeuHAABY8lPgsW8749.jpghttp://192.168.197.136:8888/group1/M00/00/01/wKjFiF5To2-ATeuHAABY8lPgsW8749.jpghttp://192.168.197.136:8888/group1/M00/00/01/wKjFiF5To2-ATeuHAABY8lPgsW8749.jpg');
INSERT INTO `jd_item_big` VALUES (19959, 3174, 'http://192.168.197.136:8888/group1/M00/00/01/wKjFiF5TpMGAHkVDAABVjkRVwjA140.jpg');
INSERT INTO `jd_item_big` VALUES (19960, 3175, 'http://192.168.197.136:8888/group1/M00/00/01/wKjFiF6UQN-AAUj4AANbOdYaq48830.jpg');
INSERT INTO `jd_item_big` VALUES (19961, 3175, 'http://192.168.197.136:8888/group1/M00/00/02/wKjFiF6UQN-AFio1AAA90ntmc3g429.jpg');

-- ----------------------------
-- Table structure for jd_item_details
-- ----------------------------
DROP TABLE IF EXISTS `jd_item_details`;
CREATE TABLE `jd_item_details`  (
  `item_details_id` int(11) NOT NULL AUTO_INCREMENT,
  `item_details_itemid` int(11) NULL DEFAULT NULL,
  `item_details_news` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `item_details_price` double NULL DEFAULT NULL,
  `item_details_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `item_details_count` int(10) NULL DEFAULT NULL COMMENT '库存',
  PRIMARY KEY (`item_details_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3176 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of jd_item_details
-- ----------------------------
INSERT INTO `jd_item_details` VALUES (3162, 3162, '自然晾晒，味道鲜美， 富含多种我维生素', 45, '【丛名】彩袋丛名猴头菇 150g', 1000);
INSERT INTO `jd_item_details` VALUES (3163, 3163, ' 纯天然野生黄花菜干，我们这里没有养殖的黄花菜，在黑龙江有亲属的，可以打听一下，我们这都是山里采摘的野生黄花菜 咱们是 无硫磺 熏制的   ', 45, '纯野生黄花菜干货 山野无硫金针菜土山货500G包邮', 1000);
INSERT INTO `jd_item_details` VALUES (3164, 3164, '香味扑鼻', 63.5, '10kg香米长粒香20斤农家自产非黑龙江五常大米', 1000);
INSERT INTO `jd_item_details` VALUES (3165, 3165, '明目', 98, '【丛名】彩袋丛名银耳 115g', 1000);
INSERT INTO `jd_item_details` VALUES (3166, 3166, ' 升林特产 东北山林土蜂蜜 天然结晶糠椴蜜 黑蜂椴树花蜜 500G乳白', 28, '    升林特产 东北山林土蜂蜜 天然结晶糠椴蜜 黑蜂椴树花蜜 500G乳白\r\n', 1000);
INSERT INTO `jd_item_details` VALUES (3167, 3167, '    纽力申 新西兰进口蜂蜜礼盒装 含麦卢卡5+ 甘露蜜 百花蜜250g*4 春节年货礼盒装', 1, '\r\n\r\n    纽力申 新西兰进口蜂蜜礼盒装 含麦卢卡5+ 甘露蜜 百花蜜250g*4 春节年货礼盒装\r\n    纽力申 新西兰进口蜂蜜礼盒装 含麦卢卡5+ 甘露蜜 百花蜜250g*4 春节年货礼盒装\r\n  ', 1000);
INSERT INTO `jd_item_details` VALUES (3168, 3168, '    纽力申 新西兰进口蜂蜜礼盒装 含麦卢卡5+ 甘露蜜 百花蜜250g*4 春节年货礼盒装', 111, '    纽力申 新西兰进口蜂蜜礼盒装 含麦卢卡5+ 甘露蜜 百花蜜250g*4 春节年货礼盒装', 1000);
INSERT INTO `jd_item_details` VALUES (3169, 3169, '    纽力申 新西兰进口蜂蜜礼盒装 含麦卢卡5+ 甘露蜜 百花蜜250g*4 春节年货礼盒装', 121, '    纽力申 新西兰进口蜂蜜礼盒装 含麦卢卡5+ 甘露蜜 百花蜜250g*4 春节年货礼盒装', 1000);
INSERT INTO `jd_item_details` VALUES (3170, 3170, '    纽力申 新西兰进口蜂蜜礼盒装 含麦卢卡5+ 甘露蜜 百花蜜250g*4 春节年货礼盒装', 11, '    纽力申 新西兰进口蜂蜜礼盒装 含麦卢卡5+ 甘露蜜 百花蜜250g*4 春节年货礼盒装', 1000);
INSERT INTO `jd_item_details` VALUES (3171, 3171, '    纽力申 新西兰进口蜂蜜礼盒装 含麦卢卡5+ 甘露蜜 百花蜜250g*4 春节年货礼盒装', 1, '    纽力申 新西兰进口蜂蜜礼盒装 含麦卢卡5+ 甘露蜜 百花蜜250g*4 春节年货礼盒装', 1000);
INSERT INTO `jd_item_details` VALUES (3172, 3172, '    纽力申 新西兰进口蜂蜜礼盒装 含麦卢卡5+ 甘露蜜 百花蜜250g*4 春节年货礼盒装', 1, '    纽力申 新西兰进口蜂蜜礼盒装 含麦卢卡5+ 甘露蜜 百花蜜250g*4 春节年货礼盒装', 1000);
INSERT INTO `jd_item_details` VALUES (3173, 3175, '21', 21, '121', 1000);
INSERT INTO `jd_item_details` VALUES (3174, 3176, '1', 1, '测试', 1000);
INSERT INTO `jd_item_details` VALUES (3175, 3173, '测试1', 111, '这是一个测试', 1000);

-- ----------------------------
-- Table structure for jd_item_small
-- ----------------------------
DROP TABLE IF EXISTS `jd_item_small`;
CREATE TABLE `jd_item_small`  (
  `item_small_id` int(11) NOT NULL AUTO_INCREMENT,
  `item_details_id` int(11) NULL DEFAULT NULL,
  `item_small_alt` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `item_small_image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`item_small_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23279 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of jd_item_small
-- ----------------------------
INSERT INTO `jd_item_small` VALUES (23265, 3162, '提示', 'http://192.168.197.136:8888/group1/M00/00/01/wKjFiF5PbP-AQUatAAFhBnTxvHI442.jpg');
INSERT INTO `jd_item_small` VALUES (23266, 3163, '提示', 'http://192.168.197.136:8888/group1/M00/00/01/wKjFiF5PbnCAOuRFAANbOdYaq48197.jpg');
INSERT INTO `jd_item_small` VALUES (23267, 3163, '提示', 'http://192.168.197.136:8888/group1/M00/00/01/wKjFiF5PbnCAY0RIAABfjeb_Z-E469.jpg');
INSERT INTO `jd_item_small` VALUES (23268, 3164, '提示', 'http://192.168.197.136:8888/group1/M00/00/01/wKjFiF5PcFiAagrMAABbZYD_qbM210.jpg');
INSERT INTO `jd_item_small` VALUES (23269, 3165, '提示', 'http://192.168.197.136:8888/group1/M00/00/01/wKjFiF5PcKuAEdZ6AAA_93Df07U771.jpg');
INSERT INTO `jd_item_small` VALUES (23270, 3166, '提示', 'http://192.168.197.136:8888/group1/M00/00/01/wKjFiF5PcQuAOYDoAABVjkRVwjA994.jpg');
INSERT INTO `jd_item_small` VALUES (23271, 3166, '提示', 'http://192.168.197.136:8888/group1/M00/00/01/wKjFiF5PcQuAArX4AAA-K1qKK1M067.jpg');
INSERT INTO `jd_item_small` VALUES (23272, 3167, '提示', 'http://192.168.197.136:8888/group1/M00/00/01/wKjFiF5PcWmAGTI6AABVjkRVwjA395.jpg');
INSERT INTO `jd_item_small` VALUES (23273, 3168, '提示', 'http://192.168.197.136:8888/group1/M00/00/01/wKjFiF5PcYWAcTIeAABFMi9zI30900.jpg');
INSERT INTO `jd_item_small` VALUES (23274, 3169, '提示', 'http://192.168.197.136:8888/group1/M00/00/01/wKjFiF5PcZ-AZlERAAA_93Df07U823.jpg');
INSERT INTO `jd_item_small` VALUES (23275, 3170, '提示', 'http://192.168.197.136:8888/group1/M00/00/01/wKjFiF5Pca-AQU-4AAA-K1qKK1M375.jpg');
INSERT INTO `jd_item_small` VALUES (23276, 3171, '提示', 'http://192.168.197.136:8888/group1/M00/00/01/wKjFiF5PcdyAS1cGAABFMi9zI30298.jpg');
INSERT INTO `jd_item_small` VALUES (23277, 3172, '提示', 'http://192.168.197.136:8888/group1/M00/00/01/wKjFiF5PcomAGhPMAANIEWEkJsA561.jpg');
INSERT INTO `jd_item_small` VALUES (23278, 3175, '提示', 'http://192.168.197.136:8888/group1/M00/00/01/wKjFiF6UQN-AAUj4AANbOdYaq48830.jpg');

-- ----------------------------
-- Table structure for jd_order
-- ----------------------------
DROP TABLE IF EXISTS `jd_order`;
CREATE TABLE `jd_order`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_uid` int(11) NULL DEFAULT NULL COMMENT '用户id',
  `order_id` varchar(70) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单id',
  `order_details_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '购物车id',
  `order_address_id` int(11) NULL DEFAULT NULL COMMENT '地址的id',
  `order_classify` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单属性',
  `order_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单标题',
  `order_count` int(255) NULL DEFAULT NULL COMMENT '订单的数量',
  `order_image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单的图片',
  `order_price` double NULL DEFAULT NULL COMMENT '订单的价格',
  `order_subtotal` double NULL DEFAULT NULL COMMENT '订单的总计',
  `order_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `order_shouh` int(2) NULL DEFAULT NULL COMMENT '是否收货 0未收货 1已收货',
  `order_ispay` int(3) NULL DEFAULT NULL COMMENT '是否支付 0待支付 1已支付',
  `order_type` int(3) NULL DEFAULT NULL COMMENT '支付的类型 0支付宝 1微信 2银联',
  `details_id` int(11) NULL DEFAULT NULL,
  `order_ispj` int(2) NULL DEFAULT NULL COMMENT '是否评价 0 未评价 1 已评价',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 201 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of jd_order
-- ----------------------------
INSERT INTO `jd_order` VALUES (185, 19, '10573910785600029', '10573910804090066', 21, '提示', '    升林特产 东北山林土蜂蜜 天然结晶糠椴蜜 黑蜂椴树花蜜 500G乳白\r\n', 1, 'http://192.168.197.136:8888/group1/M00/00/01/wKjFiF5PcQuAOYDoAABVjkRVwjA994.jpg', 28, 28, '2020-03-05 17:12:11', 0, 0, 0, 3166, 0);
INSERT INTO `jd_order` VALUES (186, 19, '58237266446480004', '58237266456290016', 21, '提示', '纯野生黄花菜干货 山野无硫金针菜土山货500G包邮', 1, 'http://192.168.197.136:8888/group1/M00/00/01/wKjFiF5PbnCAOuRFAANbOdYaq48197.jpg', 45, 45, '2020-04-01 16:35:59', 1, 1, 0, 3163, 1);
INSERT INTO `jd_order` VALUES (187, 19, '58296691482350003', '58296691487560055', 21, '提示', '10kg香米长粒香20斤农家自产非黑龙江五常大米', 1, 'http://192.168.197.136:8888/group1/M00/00/01/wKjFiF5PcFiAagrMAABbZYD_qbM210.jpg', 63.5, 63.5, '2020-04-01 16:45:53', 1, 1, 0, 3164, 1);
INSERT INTO `jd_order` VALUES (188, 19, '59187470150200056', '59187470164210076', 21, '提示', '    纽力申 新西兰进口蜂蜜礼盒装 含麦卢卡5+ 甘露蜜 百花蜜250g*4 春节年货礼盒装', 1, 'http://192.168.197.136:8888/group1/M00/00/01/wKjFiF5Pca-AQU-4AAA-K1qKK1M375.jpg', 11, 11, '2020-04-01 19:14:21', 0, 1, 0, 3170, 0);
INSERT INTO `jd_order` VALUES (189, 19, '59566133056250059', '59566133644290074', 21, '提示', '纯野生黄花菜干货 山野无硫金针菜土山货500G包邮', 7, 'http://192.168.197.136:8888/group1/M00/00/01/wKjFiF5PbnCAOuRFAANbOdYaq48197.jpg', 45, 315, '2020-04-01 20:17:28', 0, 1, 0, 3163, 1);
INSERT INTO `jd_order` VALUES (190, 19, '60883089011480044', '60883089651900013', 21, '提示', '纯野生黄花菜干货 山野无硫金针菜土山货500G包邮', 7, 'http://192.168.197.136:8888/group1/M00/00/01/wKjFiF5PbnCAOuRFAANbOdYaq48197.jpg', 45, 315, '2020-04-01 23:56:57', 1, 1, 0, 3163, 1);
INSERT INTO `jd_order` VALUES (191, 19, '60907849347870043', '60907849362080052', 21, '提示', '    纽力申 新西兰进口蜂蜜礼盒装 含麦卢卡5+ 甘露蜜 百花蜜250g*4 春节年货礼盒装', 1, 'http://192.168.197.136:8888/group1/M00/00/01/wKjFiF5PcYWAcTIeAABFMi9zI30900.jpg', 111, 111, '2020-04-02 00:01:05', 0, 0, 0, 3168, 0);
INSERT INTO `jd_order` VALUES (192, 19, '60909228783420092', '60909229510310047', 21, '提示', '纯野生黄花菜干货 山野无硫金针菜土山货500G包邮', 7, 'http://192.168.197.136:8888/group1/M00/00/01/wKjFiF5PbnCAOuRFAANbOdYaq48197.jpg', 45, 315, '2020-04-02 00:01:19', 1, 1, 0, 3163, 1);
INSERT INTO `jd_order` VALUES (193, 19, '65779744795040007', '65779745208360004', 21, '提示', '纯野生黄花菜干货 山野无硫金针菜土山货500G包邮', 8, 'http://192.168.197.136:8888/group1/M00/00/01/wKjFiF5PbnCAOuRFAANbOdYaq48197.jpg', 45, 360, '2020-04-02 13:32:52', 0, 0, 0, 3163, 0);
INSERT INTO `jd_order` VALUES (194, 19, '65939339796560057', '65939339801100078', 21, '提示', '纯野生黄花菜干货 山野无硫金针菜土山货500G包邮', 1, 'http://192.168.197.136:8888/group1/M00/00/01/wKjFiF5PbnCAY0RIAABfjeb_Z-E469.jpg', 45, 45, '2020-04-02 13:59:28', 0, 0, 0, 3163, 0);
INSERT INTO `jd_order` VALUES (195, 19, '66404037008810097', '66404037545690007', 21, '提示', '纯野生黄花菜干货 山野无硫金针菜土山货500G包邮', 8, 'http://192.168.197.136:8888/group1/M00/00/01/wKjFiF5PbnCAOuRFAANbOdYaq48197.jpg', 45, 360, '2020-04-02 15:16:55', 0, 1, 0, 3163, 0);
INSERT INTO `jd_order` VALUES (196, 19, '53471607981759976', '53471607994850024', 21, '提示', '【丛名】彩袋丛名银耳 115g', 1, 'http://192.168.197.136:8888/group1/M00/00/01/wKjFiF5PcKuAEdZ6AAA_93Df07U771.jpg', 98, 98, '2020-04-10 22:02:01', 0, 0, 0, 3165, 0);
INSERT INTO `jd_order` VALUES (197, 19, '62579271486180014', '62579271497920024', 21, '提示', '【丛名】彩袋丛名银耳 115g', 1, 'http://192.168.197.136:8888/group1/M00/00/01/wKjFiF5PcKuAEdZ6AAA_93Df07U771.jpg', 98, 98, '2020-04-11 23:19:55', 1, 1, 0, 3165, 0);
INSERT INTO `jd_order` VALUES (198, 19, '74397878838580008', '74397878847880089', 21, '提示', '纯野生黄花菜干货 山野无硫金针菜土山货500G包邮', 1, 'http://192.168.197.136:8888/group1/M00/00/01/wKjFiF5PbnCAY0RIAABfjeb_Z-E469.jpg', 45, 45, '2020-04-13 08:09:36', 0, 0, 0, 3163, 0);
INSERT INTO `jd_order` VALUES (199, 19, '74402644272360073', '74402644719660046', 21, '提示', '【丛名】彩袋丛名银耳 115g', 2, 'http://192.168.197.136:8888/group1/M00/00/01/wKjFiF5PcKuAEdZ6AAA_93Df07U771.jpg', 98, 196, '2020-04-13 08:10:24', 0, 0, 0, 3165, 0);
INSERT INTO `jd_order` VALUES (200, 19, '78560317718790072', '78560317762140011', 21, '提示', '    升林特产 东北山林土蜂蜜 天然结晶糠椴蜜 黑蜂椴树花蜜 500G乳白\r\n', 1, 'http://192.168.197.136:8888/group1/M00/00/01/wKjFiF5PcQuAOYDoAABVjkRVwjA994.jpg', 28, 28, '2020-04-13 19:43:20', 1, 1, 0, 3166, 0);

-- ----------------------------
-- Table structure for jd_order_details
-- ----------------------------
DROP TABLE IF EXISTS `jd_order_details`;
CREATE TABLE `jd_order_details`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_details_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `order_details_price` double NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 41 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of jd_order_details
-- ----------------------------
INSERT INTO `jd_order_details` VALUES (28, '167696060590075', 4479);
INSERT INTO `jd_order_details` VALUES (29, '212611044529919', 4479);
INSERT INTO `jd_order_details` VALUES (30, '31253491490005', 68);
INSERT INTO `jd_order_details` VALUES (31, '510198886970076', 1382);
INSERT INTO `jd_order_details` VALUES (32, '87805207611410006', 12131);
INSERT INTO `jd_order_details` VALUES (33, '3038776219840087', 127);
INSERT INTO `jd_order_details` VALUES (34, '2517245651180016', 28);
INSERT INTO `jd_order_details` VALUES (35, '59566133056250059', 315);
INSERT INTO `jd_order_details` VALUES (36, '60883089011480044', 315);
INSERT INTO `jd_order_details` VALUES (37, '60909228783420092', 315);
INSERT INTO `jd_order_details` VALUES (38, '65779744795040007', 360);
INSERT INTO `jd_order_details` VALUES (39, '66404037008810097', 360);
INSERT INTO `jd_order_details` VALUES (40, '74402644272360073', 196);

-- ----------------------------
-- Table structure for jd_user
-- ----------------------------
DROP TABLE IF EXISTS `jd_user`;
CREATE TABLE `jd_user`  (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` int(3) NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` int(2) NULL DEFAULT NULL COMMENT '当前状态 0不可用 1可用',
  `activate` int(2) NULL DEFAULT NULL COMMENT '是否激活 0未激活 1激活',
  `create_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `last_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `describes` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of jd_user
-- ----------------------------
INSERT INTO `jd_user` VALUES (19, 'admin', '4b252ef32f83fdec9ce52366a161dbc0', '344805353@qq.com', 1, '18333536072', 1, 1, '2020-01-13', '2019-11-17 22:22:45.04', '2019-11-28 21:54:36', 'http://192.168.197.136:8888/group1/M00/00/01/wKjFiF5dB5iAKpFSAABfjeb_Z-E189.jpg', '嘻嘻', '108bfe16-0964-4d6e-a121-caa0f9434d46');

-- ----------------------------
-- Table structure for smallad
-- ----------------------------
DROP TABLE IF EXISTS `smallad`;
CREATE TABLE `smallad`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of smallad
-- ----------------------------
INSERT INTO `smallad` VALUES (1, 'http://192.168.197.136:8888/group1/M00/00/01/wKjFiF5dB5iAKpFSAABfjeb_Z-E189.jpg', '0');
INSERT INTO `smallad` VALUES (2, 'http://192.168.197.136:8888/group1/M00/00/01/wKjFiF5dB5iACNtIAAz5bj_M7fw022.jpg', '0');
INSERT INTO `smallad` VALUES (3, 'http://192.168.197.136:8888/group1/M00/00/01/wKjFiF5dCGeARs0JAABFMi9zI30813.jpg', '0');
INSERT INTO `smallad` VALUES (4, 'http://192.168.197.136:8888/group1/M00/00/01/wKjFiF5dE3WAbBAYAAEc0K_z_mc659.jpg', '0');
INSERT INTO `smallad` VALUES (5, 'http://192.168.197.136:8888/group1/M00/00/01/wKjFiF5dH3OAYiicAAEc0K_z_mc407.jpg', '0');
INSERT INTO `smallad` VALUES (6, 'http://192.168.197.136:8888/group1/M00/00/01/wKjFiF5dH3OARWdBAADOJz9k0JU147.jpg', '1');
INSERT INTO `smallad` VALUES (7, 'http://192.168.197.136:8888/group1/M00/00/01/wKjFiF5dH4GAQQ81AAEc0K_z_mc933.jpg', '1');
INSERT INTO `smallad` VALUES (8, 'http://192.168.197.136:8888/group1/M00/00/01/wKjFiF5dIOmAQHKuAAEG_DM5ZQQ272.jpg', '1');

SET FOREIGN_KEY_CHECKS = 1;
