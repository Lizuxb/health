/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50725
 Source Host           : localhost:3306
 Source Schema         : health_manage

 Target Server Type    : MySQL
 Target Server Version : 50725
 File Encoding         : 65001

 Date: 06/04/2020 11:37:47
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data`  (
  `dict_code` bigint(16) NOT NULL COMMENT '字典编码',
  `dict_sort` int(4) NULL DEFAULT 0 COMMENT '字典排序',
  `dict_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '表格回显样式',
  `is_default` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '字典数据表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES (1812121212130000, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '性别男');
INSERT INTO `sys_dict_data` VALUES (1812121212130001, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '性别女');
INSERT INTO `sys_dict_data` VALUES (1812121212130002, 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '性别未知');
INSERT INTO `sys_dict_data` VALUES (1812121212130003, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '显示菜单');
INSERT INTO `sys_dict_data` VALUES (1812121212130004, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES (1812121212130005, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES (1812121212130006, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '停用状态');
INSERT INTO `sys_dict_data` VALUES (1812121212130009, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统默认是');
INSERT INTO `sys_dict_data` VALUES (1812121212130010, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统默认否');
INSERT INTO `sys_dict_data` VALUES (1812121212130011, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知');
INSERT INTO `sys_dict_data` VALUES (1812121212130012, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '公告');
INSERT INTO `sys_dict_data` VALUES (1812121212130013, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES (1812121212130014, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '关闭状态');
INSERT INTO `sys_dict_data` VALUES (1812121212130015, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', '新增操作');
INSERT INTO `sys_dict_data` VALUES (1812121212130016, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', '修改操作');
INSERT INTO `sys_dict_data` VALUES (1812121212130017, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', '删除操作');
INSERT INTO `sys_dict_data` VALUES (1812121212130018, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', '授权操作');
INSERT INTO `sys_dict_data` VALUES (1812121212130019, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', '导出操作');
INSERT INTO `sys_dict_data` VALUES (1812121212130020, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', '导入操作');
INSERT INTO `sys_dict_data` VALUES (1812121212130021, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', '强退操作');
INSERT INTO `sys_dict_data` VALUES (1812121212130023, 8, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', '清空操作');
INSERT INTO `sys_dict_data` VALUES (2004052139050002, 1, '待确认', '0', 'appoint_status', '', 'warning', 'Y', '0', 'admin', '2020-04-05 21:39:05', '', NULL, '');
INSERT INTO `sys_dict_data` VALUES (2004052139210003, 2, '已预约', '1', 'appoint_status', '', 'primary', 'Y', '0', 'admin', '2020-04-05 21:39:21', '', NULL, '');
INSERT INTO `sys_dict_data` VALUES (2004052139340004, 3, '已结束', '2', 'appoint_status', '', 'default', 'Y', '0', 'admin', '2020-04-05 21:39:34', '', NULL, '');

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type`  (
  `dict_id` bigint(16) NOT NULL COMMENT '字典主键',
  `dict_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE INDEX `dict_type`(`dict_type`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '字典类型表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES (1812121212110000, '用户性别', 'sys_user_sex', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '用户性别列表');
INSERT INTO `sys_dict_type` VALUES (1812121212110001, '菜单状态', 'sys_show_hide', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES (1812121212110002, '系统开关', 'sys_normal_disable', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统开关列表');
INSERT INTO `sys_dict_type` VALUES (1812121212110004, '系统是否', 'sys_yes_no', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统是否列表');
INSERT INTO `sys_dict_type` VALUES (1812121212110005, '通知类型', 'sys_notice_type', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知类型列表');
INSERT INTO `sys_dict_type` VALUES (1812121212110006, '通知状态', 'sys_notice_status', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知状态列表');
INSERT INTO `sys_dict_type` VALUES (2004052138460001, '预约状态', 'appoint_status', '0', 'admin', '2020-04-05 21:38:46', '', NULL, '');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜单名称',
  `parent_id` int(11) NULL DEFAULT 0 COMMENT '父菜单ID',
  `order_num` int(4) NULL DEFAULT 0 COMMENT '显示顺序',
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '#' COMMENT '请求地址',
  `menu_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `perms` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '权限标识',
  `icon` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1086 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '菜单权限表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '用户信息', 0, 1, '#', 'M', '0', '', 'fa fa-gear', 'admin', '2018-03-16 11:33:00', 'admin', '2020-04-06 10:53:39', '系统管理目录');
INSERT INTO `sys_menu` VALUES (3, '用户模块', 0, 3, '#', 'M', '0', '', 'fa fa-address-card', 'admin', '2018-03-16 11:33:00', 'admin', '2020-04-05 20:36:10', '系统工具目录');
INSERT INTO `sys_menu` VALUES (100, '普通用户', 1, 1, '/system/user', 'C', '0', 'system:user:view', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2020-04-05 20:26:23', '用户管理菜单');
INSERT INTO `sys_menu` VALUES (101, '角色管理', 1085, 2, '/system/role', 'C', '0', 'system:role:view', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2020-04-06 10:53:24', '角色管理菜单');
INSERT INTO `sys_menu` VALUES (102, '菜单管理', 1, 3, '/system/menu', 'C', '1', 'system:menu:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '菜单管理菜单');
INSERT INTO `sys_menu` VALUES (105, '字典管理', 1, 6, '/system/dict', 'C', '1', 'system:dict:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '字典管理菜单');
INSERT INTO `sys_menu` VALUES (1000, '用户查询', 100, 1, '#', 'F', '0', 'system:user:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1002, '用户修改', 100, 3, '#', 'F', '0', 'system:user:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1003, '用户删除', 100, 4, '#', 'F', '0', 'system:user:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1005, '重置密码', 100, 5, '#', 'F', '0', 'system:user:resetPwd', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1006, '角色查询', 101, 1, '#', 'F', '0', 'system:role:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1008, '角色修改', 101, 3, '#', 'F', '0', 'system:role:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1056, '我的预约', 3, 1, '/system/userAppint', 'C', '0', 'system:userAppint:view', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2020-04-05 20:36:33', '预约菜单');
INSERT INTO `sys_menu` VALUES (1057, '预约查询', 1056, 1, '#', 'F', '0', 'system:userAppint:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1058, '预约新增', 1056, 2, '#', 'F', '0', 'system:userAppint:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1059, '预约修改', 1056, 3, '#', 'F', '0', 'system:userAppint:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1060, '预约删除', 1056, 4, '#', 'F', '0', 'system:userAppint:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1061, '我的日志', 3, 1, '/system/userLog', 'C', '0', 'system:userLog:view', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2020-04-06 07:53:13', '日志模块菜单');
INSERT INTO `sys_menu` VALUES (1062, '日志模块查询', 1061, 1, '#', 'F', '0', 'system:userLog:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1063, '日志模块新增', 1061, 2, '#', 'F', '0', 'system:userLog:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1064, '日志模块修改', 1061, 3, '#', 'F', '0', 'system:userLog:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1065, '日志模块删除', 1061, 4, '#', 'F', '0', 'system:userLog:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1066, '我的病例', 3, 1, '/system/userCase', 'C', '0', 'system:userCase:view', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2020-04-06 07:52:49', '病例菜单');
INSERT INTO `sys_menu` VALUES (1067, '病例查询', 1066, 1, '#', 'F', '0', 'system:userCase:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1069, '病例修改', 1066, 3, '#', 'F', '0', 'system:userCase:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1070, '病例删除', 1066, 4, '#', 'F', '0', 'system:userCase:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1071, '我的评估', 3, 1, '/system/userHealthScore', 'C', '0', 'system:userHealthScore:view', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2020-04-06 07:53:02', '用户评估菜单');
INSERT INTO `sys_menu` VALUES (1072, '用户评估查询', 1071, 1, '#', 'F', '0', 'system:userHealthScore:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1074, '用户评估修改', 1071, 3, '#', 'F', '0', 'system:userHealthScore:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1075, '用户评估删除', 1071, 4, '#', 'F', '0', 'system:userHealthScore:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1076, '医生用户', 1077, 2, '/system/user/doctor', 'C', '0', 'system:user:doctor', '#', 'admin', '2020-04-05 20:27:25', 'admin', '2020-04-05 20:47:20', '');
INSERT INTO `sys_menu` VALUES (1077, '医生信息', 0, 3, '#', 'M', '0', '', 'fa fa-newspaper-o', 'admin', '2020-04-05 20:35:49', 'admin', '2020-04-05 20:47:14', '');
INSERT INTO `sys_menu` VALUES (1078, '已被预约', 1077, 2, '/system/userAppint/doctor', 'C', '0', 'system:userAppint:doctor', '#', 'admin', '2020-04-05 21:42:10', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1079, '医生预约', 1076, 5, '#', 'F', '0', 'system:userAppint:add', '#', 'admin', '2020-04-06 07:52:21', 'admin', '2020-04-06 09:50:44', '');
INSERT INTO `sys_menu` VALUES (1080, '医生查询', 1076, 1, '#', 'F', '0', 'system:user:list', '#', 'admin', '2020-04-06 09:49:31', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1081, '医生添加', 1076, 2, '#', 'F', '0', 'system:user:add', '#', 'admin', '2020-04-06 09:49:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1082, '医生修改', 1076, 2, '#', 'F', '0', 'system:user:edit', '#', 'admin', '2020-04-06 09:50:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1083, '医生重置密码', 1076, 4, '#', 'F', '0', 'system:user:resetPwd', '#', 'admin', '2020-04-06 09:50:23', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1084, '健康评估', 3, 5, '/system/userHealthScore/statistics', 'C', '0', 'system:userHealthScore:statistics', '#', 'admin', '2020-04-06 10:27:15', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1085, '角色权限', 0, 4, '#', 'M', '0', '', 'fa fa-key', 'admin', '2020-04-06 10:53:17', '', NULL, '');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` bigint(16) NOT NULL COMMENT '角色ID',
  `role_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(4) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1812120000000001, '医生用户', 'doctor', 1, '1', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2020-04-06 11:06:14', '医生用户');
INSERT INTO `sys_role` VALUES (1812120000000002, '普通用户', 'common', 1, '3', '0', '0', 'common', '2018-03-16 11:33:00', 'admin', '2020-04-06 11:35:13', '普通用户');

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `role_id` bigint(16) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(16) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色和菜单关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (1812120000000001, 1077);
INSERT INTO `sys_role_menu` VALUES (1812120000000001, 1078);
INSERT INTO `sys_role_menu` VALUES (1812120000000002, 3);
INSERT INTO `sys_role_menu` VALUES (1812120000000002, 1056);
INSERT INTO `sys_role_menu` VALUES (1812120000000002, 1057);
INSERT INTO `sys_role_menu` VALUES (1812120000000002, 1058);
INSERT INTO `sys_role_menu` VALUES (1812120000000002, 1059);
INSERT INTO `sys_role_menu` VALUES (1812120000000002, 1060);
INSERT INTO `sys_role_menu` VALUES (1812120000000002, 1061);
INSERT INTO `sys_role_menu` VALUES (1812120000000002, 1062);
INSERT INTO `sys_role_menu` VALUES (1812120000000002, 1063);
INSERT INTO `sys_role_menu` VALUES (1812120000000002, 1064);
INSERT INTO `sys_role_menu` VALUES (1812120000000002, 1065);
INSERT INTO `sys_role_menu` VALUES (1812120000000002, 1066);
INSERT INTO `sys_role_menu` VALUES (1812120000000002, 1067);
INSERT INTO `sys_role_menu` VALUES (1812120000000002, 1071);
INSERT INTO `sys_role_menu` VALUES (1812120000000002, 1072);
INSERT INTO `sys_role_menu` VALUES (1812120000000002, 1076);
INSERT INTO `sys_role_menu` VALUES (1812120000000002, 1077);
INSERT INTO `sys_role_menu` VALUES (1812120000000002, 1079);
INSERT INTO `sys_role_menu` VALUES (1812120000000002, 1080);
INSERT INTO `sys_role_menu` VALUES (1812120000000002, 1084);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` bigint(16) NOT NULL COMMENT '用户ID',
  `login_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '登录账号',
  `user_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '手机号码',
  `sex` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '头像路径',
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '密码',
  `salt` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '盐加密',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '最后登陆IP',
  `login_date` datetime(0) NULL DEFAULT NULL COMMENT '最后登陆时间',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注',
  `role_id` bigint(16) NULL DEFAULT NULL COMMENT '角色编号',
  `address` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地址',
  `cardnum` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '身份证号',
  `jobtitle` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '职称',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1812120000000000, 'admin', '超级管理员', '00', 'ry@163.com', '15888888888', '1', '', '822aba59763a6a6bef4a842b6c439fb8', 'ec491f', '0', '0', '127.0.0.1', '2020-04-06 11:35:00', 'admin', '2018-03-16 11:33:00', 'ry', '2019-03-07 16:24:28', '管理员', NULL, NULL, NULL, NULL);
INSERT INTO `sys_user` VALUES (1902201008290000, 'lis', '李四', '00', '111111@qq.com', '13411111111', '0', '', '79e7c2dca6c64df3d7d000278d885148', '1ddb6b', '0', '0', '127.0.0.1', '2020-04-06 11:20:29', 'admin', '2019-02-20 10:08:29', 'admin', '2019-02-26 10:22:16', '擅长感冒', 1812120000000001, '上海', '88888888888888888', '专家');
INSERT INTO `sys_user` VALUES (1903010941380000, 'zhangsan', '张三', '00', '2222222@qq.com', '13422222222', '2', '', 'e74e6ab727b13be7bfd6f42d3610b5dd', '4c8d44', '0', '0', '127.0.0.1', '2020-04-06 11:22:39', '', '2019-03-01 09:41:38', 'admin', '2019-03-01 09:44:57', '擅长心脑血管', 1812120000000001, '北京', '99999999999999999999', '教授');
INSERT INTO `sys_user` VALUES (2003241032560000, '222', '222', '01', '', '', '0', '', 'b2cc322a7778a5b315e2661bb1a50b04', '848e67', '0', '0', '127.0.0.1', '2020-04-06 11:33:15', '', '2020-03-24 10:32:56', '', NULL, '', 1812120000000002, NULL, NULL, NULL);
INSERT INTO `sys_user` VALUES (2004061107510000, '111', '赵六', '01', '3333@qq.com', '13311111111', '1', '', '00a3a79a707c7c3bf42e033948b863e3', '0392c0', '0', '0', '127.0.0.1', '2020-04-06 11:35:19', '', '2020-04-06 11:07:51', '111', NULL, '的方法打发打发打发', 1812120000000002, '中国', '88888888888888', NULL);
INSERT INTO `sys_user` VALUES (2004061126330009, 'wangwu', '王五', '00', '', '', '0', 'http://127.0.0.1/profile/upload/41620d47c650b2373e95aab6be9617e3.jpg', '06e5dd5b7ff11191ee68354aefe943eb', 'eefd37', '0', '0', '127.0.0.1', '2020-04-06 11:27:46', 'admin', '2020-04-06 11:26:33', 'wangwu', NULL, '擅长腿腾', 1812120000000001, '美国', '7777777777777', '专家');
INSERT INTO `sys_user` VALUES (2004061127050010, 'test', 'test', '00', '', '', '0', '', '4164744259eeec6a668e2d20eb29d590', '6a6dcf', '0', '2', '', NULL, 'admin', '2020-04-06 11:27:05', '', NULL, '', 1812120000000001, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for user_appint
-- ----------------------------
DROP TABLE IF EXISTS `user_appint`;
CREATE TABLE `user_appint`  (
  `id` bigint(16) NOT NULL COMMENT '编号',
  `user_id` bigint(16) NULL DEFAULT NULL COMMENT '用户',
  `doctor_id` bigint(16) NULL DEFAULT NULL COMMENT '医生',
  `status` int(1) NULL DEFAULT 0 COMMENT '状态0待确认1已预约2已结束',
  `appoint_date` date NULL DEFAULT NULL COMMENT '预约日期',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预约备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '预约信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_appint
-- ----------------------------
INSERT INTO `user_appint` VALUES (2004052137070000, 1812120000000000, 1902201008290000, 2, '2020-04-15', '加端口接口的父节点');
INSERT INTO `user_appint` VALUES (2004061011540000, 2003241032560000, 1902201008290000, 2, '2020-04-15', '的可可粉接口的今飞凯达机房');
INSERT INTO `user_appint` VALUES (2004061037490000, 1812120000000000, 1902201008290000, 2, '2020-04-16', '大幅度奋斗奋斗奋斗');
INSERT INTO `user_appint` VALUES (2004061041060000, 1812120000000000, 1902201008290000, 2, '2020-04-08', '打发打发打发');
INSERT INTO `user_appint` VALUES (2004061115190003, 2004061107510000, 1903010941380000, 2, '2020-04-07', '对方答复打发打发打发');
INSERT INTO `user_appint` VALUES (2004061115270004, 2004061107510000, 1902201008290000, 2, '2020-04-10', '打发打发打发的方法改动过打发打发打发');
INSERT INTO `user_appint` VALUES (2004061115550006, 2004061107510000, 1902201008290000, 2, '2020-04-12', '打发打发打发付付付付付');

-- ----------------------------
-- Table structure for user_case
-- ----------------------------
DROP TABLE IF EXISTS `user_case`;
CREATE TABLE `user_case`  (
  `id` bigint(16) NOT NULL COMMENT '编号',
  `user_id` bigint(16) NULL DEFAULT NULL COMMENT '用户',
  `doctor_id` bigint(16) NULL DEFAULT NULL COMMENT '医生',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '内容',
  `create_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '录入日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '病例信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_case
-- ----------------------------
INSERT INTO `user_case` VALUES (2004060927240002, 1812120000000000, 1812120000000000, 'dkjfkdfjdjfd', '2020-04-06 09:27:24');
INSERT INTO `user_case` VALUES (2004061038040001, 1812120000000000, 1812120000000000, '打发打发打发', '2020-04-06 10:38:05');
INSERT INTO `user_case` VALUES (2004061038110002, 2003241032560000, 1812120000000000, '大幅度浮动幅度分', '2020-04-06 10:38:11');
INSERT INTO `user_case` VALUES (2004061120510003, 2004061107510000, 1902201008290000, '第一次病历第一次病历第一次病历第一次病历', '2020-04-06 11:20:51');
INSERT INTO `user_case` VALUES (2004061121040004, 2004061107510000, 1902201008290000, '第二次病历第二次病历第二次病历第二次病历第二次病历2222', '2020-04-06 11:21:04');
INSERT INTO `user_case` VALUES (2004061122520007, 2004061107510000, 1903010941380000, '第三次第三次第三次第三次', '2020-04-06 11:22:52');

-- ----------------------------
-- Table structure for user_health_score
-- ----------------------------
DROP TABLE IF EXISTS `user_health_score`;
CREATE TABLE `user_health_score`  (
  `id` bigint(16) NOT NULL COMMENT '编号',
  `user_id` bigint(16) NULL DEFAULT NULL COMMENT '用户',
  `doctor` bigint(16) NULL DEFAULT NULL COMMENT '医生',
  `nei_ke` double(18, 2) NULL DEFAULT NULL COMMENT '内科',
  `wai_ke` double(18, 2) NULL DEFAULT NULL COMMENT '外科',
  `yan_ke` double(18, 2) NULL DEFAULT NULL COMMENT '眼科',
  `er_bi_hou` double(18, 2) NULL DEFAULT NULL COMMENT '耳鼻喉',
  `kou_qiang` double(18, 2) NULL DEFAULT NULL COMMENT '口腔',
  `remark` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '医生建议',
  `create_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '录入时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户评估' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_health_score
-- ----------------------------
INSERT INTO `user_health_score` VALUES (2004060937210000, 1812120000000000, 1812120000000000, 1.00, 2.00, 3.00, 4.00, 5.00, '6', '2020-04-06 09:37:21');
INSERT INTO `user_health_score` VALUES (2004061038320003, 1812120000000000, 1812120000000000, 4.00, 5.00, 6.00, 7.00, 8.00, '9', '2020-04-06 10:38:32');
INSERT INTO `user_health_score` VALUES (2004061038490004, 2003241032560000, 1812120000000000, 4.50, 5.60, 7.80, 8.10, 8.60, '打发打发打发', '2020-04-06 10:38:49');
INSERT INTO `user_health_score` VALUES (2004061041290001, 1812120000000000, 1812120000000000, 1.20, 2.10, 3.50, 4.50, 6.50, '大幅度反弹', '2020-04-06 10:41:29');
INSERT INTO `user_health_score` VALUES (2004061121230005, 2004061107510000, 1902201008290000, 1.10, 2.20, 3.30, 4.40, 5.50, '6666666666', '2020-04-06 11:21:23');
INSERT INTO `user_health_score` VALUES (2004061121390006, 2004061107510000, 1902201008290000, 2.20, 3.30, 4.40, 8.00, 6.60, '的境况的九分裤对讲机', '2020-04-06 11:21:39');
INSERT INTO `user_health_score` VALUES (2004061123090008, 2004061107510000, 1903010941380000, 3.30, 4.40, 5.50, 6.60, 7.70, '打开路径放口袋里附件登录', '2020-04-06 11:23:09');

-- ----------------------------
-- Table structure for user_log
-- ----------------------------
DROP TABLE IF EXISTS `user_log`;
CREATE TABLE `user_log`  (
  `id` bigint(16) NOT NULL COMMENT '主键',
  `user_id` bigint(16) NULL DEFAULT NULL COMMENT '用户',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标题',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '内容',
  `create_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '日志模块' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_log
-- ----------------------------
INSERT INTO `user_log` VALUES (2004060742190000, 1812120000000000, '111', '<p>1111</p>', '2020-04-06 07:42:19');
INSERT INTO `user_log` VALUES (2004060926010001, 1812120000000000, '222', '<p>&nbsp; &nbsp; 222222222<br></p>', '2020-04-06 09:26:01');
INSERT INTO `user_log` VALUES (2004061013440001, 2003241032560000, '999', '<p>99999</p>', '2020-04-06 10:13:44');
INSERT INTO `user_log` VALUES (2004061013520002, 2003241032560000, '88', '<p>88888</p>', '2020-04-06 10:13:52');
INSERT INTO `user_log` VALUES (2004061119440000, 2004061107510000, '55555', '<p>大幅度会计法跌幅较大555555555</p><p>点击放大丽枫酒店框架</p>', '2020-04-06 11:19:44');
INSERT INTO `user_log` VALUES (2004061119510001, 2004061107510000, '9999', '<p>等级京东分开了附近的考虑跌幅较大框架</p><p>的监控加6666666666</p>', '2020-04-06 11:19:51');

-- ----------------------------
-- Table structure for user_secret_protect
-- ----------------------------
DROP TABLE IF EXISTS `user_secret_protect`;
CREATE TABLE `user_secret_protect`  (
  `id` bigint(16) NOT NULL COMMENT '编号',
  `question` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '问题',
  `answer` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '回答',
  `user_id` bigint(16) NULL DEFAULT NULL COMMENT '用户',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '密保问题' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_secret_protect
-- ----------------------------
INSERT INTO `user_secret_protect` VALUES (2003241032560001, '性别', '男', 2003241032560000);
INSERT INTO `user_secret_protect` VALUES (2003241032560002, '体重', '60', 2003241032560000);
INSERT INTO `user_secret_protect` VALUES (2004061109150003, '性别', 'nan', 2004061107510000);
INSERT INTO `user_secret_protect` VALUES (2004061109150004, '学号', '111', 2004061107510000);

SET FOREIGN_KEY_CHECKS = 1;
