/*
 Navicat Premium Data Transfer

 Source Server         : laptop
 Source Server Type    : MySQL
 Source Server Version : 80031
 Source Host           : localhost:3306
 Source Schema         : ry-vue

 Target Server Type    : MySQL
 Target Server Version : 80031
 File Encoding         : 65001

 Date: 29/05/2023 16:52:22
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for faculty
-- ----------------------------
DROP TABLE IF EXISTS `faculty`;
CREATE TABLE `faculty`  (
  `id` bigint NOT NULL COMMENT '编号',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '姓名',
  `type` int NOT NULL DEFAULT 0 COMMENT '教师/职工',
  `position` int NULL DEFAULT 9 COMMENT '职务',
  `title` int NULL DEFAULT 5 COMMENT '职称',
  `month` double NULL DEFAULT NULL COMMENT '月工资',
  `year` double NULL DEFAULT NULL COMMENT '年工资',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `staff_position`(`position` ASC) USING BTREE,
  INDEX `professional_title`(`title` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '教职工表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of faculty
-- ----------------------------
INSERT INTO `faculty` VALUES (1, '赵四', 0, 6, 1, 5000, 70000);
INSERT INTO `faculty` VALUES (2, '张全', 1, 1, 1, 5000, 70000);
INSERT INTO `faculty` VALUES (3, '李四', 0, 9, 3, 5000, 70000);
INSERT INTO `faculty` VALUES (4, '赵红', 0, 8, 1, NULL, NULL);
INSERT INTO `faculty` VALUES (5, '李四', 0, 9, 1, NULL, NULL);
INSERT INTO `faculty` VALUES (6, '赵红', 0, 2, 2, NULL, NULL);
INSERT INTO `faculty` VALUES (7, '王万', 0, 3, 4, NULL, NULL);
INSERT INTO `faculty` VALUES (8, '大江', 1, 6, 1, NULL, NULL);
INSERT INTO `faculty` VALUES (9, '李勇', 0, 3, 4, NULL, NULL);
INSERT INTO `faculty` VALUES (10, '王兑', 0, 6, 2, NULL, NULL);
INSERT INTO `faculty` VALUES (11, '李红', 0, 4, 4, NULL, NULL);
INSERT INTO `faculty` VALUES (12, '陈坤', 0, 4, 3, NULL, NULL);
INSERT INTO `faculty` VALUES (13, '赵爱国', 0, 1, 3, NULL, NULL);
INSERT INTO `faculty` VALUES (14, '李白', 0, 8, 3, NULL, NULL);
INSERT INTO `faculty` VALUES (15, '僪琳瑜', 0, 6, 2, NULL, NULL);
INSERT INTO `faculty` VALUES (16, '卞芊丽', 0, 2, 3, NULL, NULL);
INSERT INTO `faculty` VALUES (17, '过媛女', 0, 6, 4, NULL, NULL);
INSERT INTO `faculty` VALUES (18, '蚁芷蝶', 0, 4, 4, NULL, NULL);
INSERT INTO `faculty` VALUES (19, '官兴邦', 0, 8, 2, NULL, NULL);
INSERT INTO `faculty` VALUES (20, '甄代桃', 0, 9, 3, NULL, NULL);
INSERT INTO `faculty` VALUES (21, '储清淑', 0, 5, 2, NULL, NULL);
INSERT INTO `faculty` VALUES (22, '卯浩荡', 1, 4, 4, NULL, NULL);
INSERT INTO `faculty` VALUES (23, '纳喇寄文', 0, 7, 2, NULL, NULL);
INSERT INTO `faculty` VALUES (24, '闾夏旋', 0, 1, 2, NULL, NULL);
INSERT INTO `faculty` VALUES (25, '貊春竹', 0, 7, 4, NULL, NULL);
INSERT INTO `faculty` VALUES (26, '惠姣妍', 0, 6, 2, NULL, NULL);
INSERT INTO `faculty` VALUES (27, '孛语心', 0, 6, 2, NULL, NULL);
INSERT INTO `faculty` VALUES (28, '邗思凡', 0, 6, 1, NULL, NULL);
INSERT INTO `faculty` VALUES (29, '洛和怡', 0, 3, 2, NULL, NULL);
INSERT INTO `faculty` VALUES (30, '哀涵衍', 0, 9, 2, NULL, NULL);
INSERT INTO `faculty` VALUES (31, '檀英哲', 0, 3, 4, NULL, NULL);
INSERT INTO `faculty` VALUES (32, '花醉柳', 0, 3, 4, NULL, NULL);
INSERT INTO `faculty` VALUES (33, '曹叶彤', 0, 2, 3, NULL, NULL);
INSERT INTO `faculty` VALUES (34, '频元彤', 0, 1, 2, NULL, NULL);
INSERT INTO `faculty` VALUES (35, '鲜于梦菲', 0, 4, 2, NULL, NULL);
INSERT INTO `faculty` VALUES (36, '勇清晖', 0, 8, 3, NULL, NULL);
INSERT INTO `faculty` VALUES (37, '竭君博', 0, 3, 2, NULL, NULL);
INSERT INTO `faculty` VALUES (38, '雪半双', 0, 8, 2, NULL, NULL);
INSERT INTO `faculty` VALUES (39, '冷建业', 0, 9, 4, NULL, NULL);
INSERT INTO `faculty` VALUES (40, '士玟丽', 0, 3, 2, NULL, NULL);
INSERT INTO `faculty` VALUES (41, '行清秋', 0, 9, 1, NULL, NULL);
INSERT INTO `faculty` VALUES (42, '史雨安', 0, 1, 1, NULL, NULL);
INSERT INTO `faculty` VALUES (43, '司璞玉', 0, 1, 1, NULL, NULL);
INSERT INTO `faculty` VALUES (44, '马佳侠骞', 0, 9, 2, NULL, NULL);
INSERT INTO `faculty` VALUES (45, '析璞玉', 0, 6, 3, NULL, NULL);
INSERT INTO `faculty` VALUES (46, '崔雅达', 0, 2, 3, NULL, NULL);
INSERT INTO `faculty` VALUES (47, '都曼冬', 0, 7, 2, NULL, NULL);
INSERT INTO `faculty` VALUES (48, '子车星星', 0, 8, 3, NULL, NULL);
INSERT INTO `faculty` VALUES (49, '繁曾琪', 0, 1, 3, NULL, NULL);
INSERT INTO `faculty` VALUES (50, '游小宸', 0, 2, 2, NULL, NULL);
INSERT INTO `faculty` VALUES (51, '邝奇邃', 0, 8, 3, NULL, NULL);
INSERT INTO `faculty` VALUES (52, '苍成龙', 0, 4, 3, NULL, NULL);
INSERT INTO `faculty` VALUES (53, '湛清晖', 0, 3, 2, NULL, NULL);

-- ----------------------------
-- Table structure for faculty_work
-- ----------------------------
DROP TABLE IF EXISTS `faculty_work`;
CREATE TABLE `faculty_work`  (
  `faculty_id` bigint NOT NULL COMMENT '教职工编号',
  `work_id` bigint NOT NULL COMMENT '课时任务编号',
  PRIMARY KEY (`work_id`, `faculty_id`) USING BTREE,
  INDEX `staff_number`(`faculty_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '教职工和课时任务关联表（弃）' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of faculty_work
-- ----------------------------
INSERT INTO `faculty_work` VALUES (1, 2);
INSERT INTO `faculty_work` VALUES (1, 4);
INSERT INTO `faculty_work` VALUES (1, 5);
INSERT INTO `faculty_work` VALUES (3, 8);
INSERT INTO `faculty_work` VALUES (3, 9);
INSERT INTO `faculty_work` VALUES (3, 10);
INSERT INTO `faculty_work` VALUES (3, 11);
INSERT INTO `faculty_work` VALUES (3, 12);
INSERT INTO `faculty_work` VALUES (3, 14);
INSERT INTO `faculty_work` VALUES (3, 15);
INSERT INTO `faculty_work` VALUES (3, 16);
INSERT INTO `faculty_work` VALUES (3, 17);
INSERT INTO `faculty_work` VALUES (3, 18);
INSERT INTO `faculty_work` VALUES (3, 19);
INSERT INTO `faculty_work` VALUES (3, 20);
INSERT INTO `faculty_work` VALUES (3, 22);
INSERT INTO `faculty_work` VALUES (3, 23);
INSERT INTO `faculty_work` VALUES (3, 24);
INSERT INTO `faculty_work` VALUES (3, 25);
INSERT INTO `faculty_work` VALUES (3, 26);
INSERT INTO `faculty_work` VALUES (3, 27);
INSERT INTO `faculty_work` VALUES (3, 28);
INSERT INTO `faculty_work` VALUES (3, 29);
INSERT INTO `faculty_work` VALUES (3, 44);
INSERT INTO `faculty_work` VALUES (3, 65);
INSERT INTO `faculty_work` VALUES (4, 13);
INSERT INTO `faculty_work` VALUES (4, 30);
INSERT INTO `faculty_work` VALUES (4, 31);
INSERT INTO `faculty_work` VALUES (4, 32);
INSERT INTO `faculty_work` VALUES (4, 33);
INSERT INTO `faculty_work` VALUES (4, 34);
INSERT INTO `faculty_work` VALUES (4, 35);
INSERT INTO `faculty_work` VALUES (4, 36);
INSERT INTO `faculty_work` VALUES (4, 37);
INSERT INTO `faculty_work` VALUES (4, 38);
INSERT INTO `faculty_work` VALUES (4, 39);
INSERT INTO `faculty_work` VALUES (4, 40);
INSERT INTO `faculty_work` VALUES (4, 41);
INSERT INTO `faculty_work` VALUES (4, 42);
INSERT INTO `faculty_work` VALUES (4, 43);
INSERT INTO `faculty_work` VALUES (4, 45);
INSERT INTO `faculty_work` VALUES (4, 46);
INSERT INTO `faculty_work` VALUES (4, 47);
INSERT INTO `faculty_work` VALUES (4, 48);
INSERT INTO `faculty_work` VALUES (5, 21);
INSERT INTO `faculty_work` VALUES (5, 49);
INSERT INTO `faculty_work` VALUES (5, 50);
INSERT INTO `faculty_work` VALUES (5, 51);
INSERT INTO `faculty_work` VALUES (5, 52);
INSERT INTO `faculty_work` VALUES (5, 53);
INSERT INTO `faculty_work` VALUES (5, 54);
INSERT INTO `faculty_work` VALUES (5, 55);
INSERT INTO `faculty_work` VALUES (5, 56);
INSERT INTO `faculty_work` VALUES (5, 57);
INSERT INTO `faculty_work` VALUES (5, 58);
INSERT INTO `faculty_work` VALUES (5, 59);
INSERT INTO `faculty_work` VALUES (5, 60);
INSERT INTO `faculty_work` VALUES (5, 61);
INSERT INTO `faculty_work` VALUES (5, 62);
INSERT INTO `faculty_work` VALUES (5, 63);
INSERT INTO `faculty_work` VALUES (5, 64);
INSERT INTO `faculty_work` VALUES (5, 66);
INSERT INTO `faculty_work` VALUES (5, 67);
INSERT INTO `faculty_work` VALUES (5, 68);
INSERT INTO `faculty_work` VALUES (5, 69);
INSERT INTO `faculty_work` VALUES (5, 70);
INSERT INTO `faculty_work` VALUES (5, 71);
INSERT INTO `faculty_work` VALUES (5, 72);
INSERT INTO `faculty_work` VALUES (5, 73);
INSERT INTO `faculty_work` VALUES (5, 74);
INSERT INTO `faculty_work` VALUES (5, 75);
INSERT INTO `faculty_work` VALUES (5, 76);
INSERT INTO `faculty_work` VALUES (5, 77);
INSERT INTO `faculty_work` VALUES (5, 78);
INSERT INTO `faculty_work` VALUES (5, 79);
INSERT INTO `faculty_work` VALUES (5, 80);
INSERT INTO `faculty_work` VALUES (5, 81);
INSERT INTO `faculty_work` VALUES (5, 82);
INSERT INTO `faculty_work` VALUES (5, 83);
INSERT INTO `faculty_work` VALUES (5, 84);
INSERT INTO `faculty_work` VALUES (6, 85);
INSERT INTO `faculty_work` VALUES (6, 86);
INSERT INTO `faculty_work` VALUES (6, 87);
INSERT INTO `faculty_work` VALUES (6, 88);
INSERT INTO `faculty_work` VALUES (6, 89);
INSERT INTO `faculty_work` VALUES (6, 90);
INSERT INTO `faculty_work` VALUES (6, 91);
INSERT INTO `faculty_work` VALUES (6, 92);
INSERT INTO `faculty_work` VALUES (6, 93);
INSERT INTO `faculty_work` VALUES (6, 94);
INSERT INTO `faculty_work` VALUES (6, 95);
INSERT INTO `faculty_work` VALUES (6, 96);
INSERT INTO `faculty_work` VALUES (6, 97);
INSERT INTO `faculty_work` VALUES (6, 98);
INSERT INTO `faculty_work` VALUES (6, 99);
INSERT INTO `faculty_work` VALUES (6, 100);
INSERT INTO `faculty_work` VALUES (6, 101);
INSERT INTO `faculty_work` VALUES (6, 102);
INSERT INTO `faculty_work` VALUES (6, 103);
INSERT INTO `faculty_work` VALUES (6, 104);
INSERT INTO `faculty_work` VALUES (6, 105);
INSERT INTO `faculty_work` VALUES (6, 106);
INSERT INTO `faculty_work` VALUES (6, 107);
INSERT INTO `faculty_work` VALUES (6, 108);
INSERT INTO `faculty_work` VALUES (6, 109);
INSERT INTO `faculty_work` VALUES (6, 110);
INSERT INTO `faculty_work` VALUES (6, 111);

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table`  (
  `table_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `package_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '代码生成业务表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES (1, 'sys_user', '用户信息表', NULL, NULL, 'SysUser', 'crud', 'com.ruoyi.system', 'system', 'sysUser', '用户信息', 'ruoyi', '0', '/', '{}', 'admin', '2023-05-28 14:41:50', '', '2023-05-29 14:00:12', NULL);
INSERT INTO `gen_table` VALUES (2, 'work', '课时任务', '', '', 'Work', 'crud', 'com.ruoyi.financial', 'financial', 'work', '课时任务', 'ruoyi', '0', '/', '{}', 'admin', '2023-05-29 08:20:30', '', '2023-05-29 08:22:43', NULL);

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column`  (
  `column_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '字典类型',
  `sort` int NULL DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '代码生成业务表字段' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES (1, '1', 'user_id', '用户ID', 'bigint', 'Long', 'userId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-05-28 14:41:51', '', '2023-05-29 14:00:12');
INSERT INTO `gen_table_column` VALUES (2, '1', 'dept_id', '部门ID', 'bigint', 'Long', 'deptId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-05-28 14:41:51', '', '2023-05-29 14:00:12');
INSERT INTO `gen_table_column` VALUES (3, '1', 'user_name', '用户账号', 'varchar(30)', 'String', 'userName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2023-05-28 14:41:51', '', '2023-05-29 14:00:12');
INSERT INTO `gen_table_column` VALUES (4, '1', 'nick_name', '用户昵称', 'varchar(30)', 'String', 'nickName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 4, 'admin', '2023-05-28 14:41:51', '', '2023-05-29 14:00:12');
INSERT INTO `gen_table_column` VALUES (5, '1', 'user_type', '用户类型（00系统用户）', 'varchar(2)', 'String', 'userType', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', '', 5, 'admin', '2023-05-28 14:41:51', '', '2023-05-29 14:00:12');
INSERT INTO `gen_table_column` VALUES (6, '1', 'email', '用户邮箱', 'varchar(50)', 'String', 'email', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2023-05-28 14:41:51', '', '2023-05-29 14:00:12');
INSERT INTO `gen_table_column` VALUES (7, '1', 'phonenumber', '手机号码', 'varchar(11)', 'String', 'phonenumber', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2023-05-28 14:41:51', '', '2023-05-29 14:00:12');
INSERT INTO `gen_table_column` VALUES (8, '1', 'sex', '用户性别（0男 1女 2未知）', 'char(1)', 'String', 'sex', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', '', 8, 'admin', '2023-05-28 14:41:51', '', '2023-05-29 14:00:12');
INSERT INTO `gen_table_column` VALUES (9, '1', 'avatar', '头像地址', 'varchar(100)', 'String', 'avatar', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2023-05-28 14:41:51', '', '2023-05-29 14:00:12');
INSERT INTO `gen_table_column` VALUES (10, '1', 'password', '密码', 'varchar(100)', 'String', 'password', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2023-05-28 14:41:51', '', '2023-05-29 14:00:12');
INSERT INTO `gen_table_column` VALUES (11, '1', 'status', '帐号状态（0正常 1停用）', 'char(1)', 'String', 'status', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', '', 11, 'admin', '2023-05-28 14:41:51', '', '2023-05-29 14:00:12');
INSERT INTO `gen_table_column` VALUES (12, '1', 'del_flag', '删除标志（0代表存在 2代表删除）', 'char(1)', 'String', 'delFlag', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 12, 'admin', '2023-05-28 14:41:51', '', '2023-05-29 14:00:12');
INSERT INTO `gen_table_column` VALUES (13, '1', 'login_ip', '最后登录IP', 'varchar(128)', 'String', 'loginIp', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 13, 'admin', '2023-05-28 14:41:51', '', '2023-05-29 14:00:12');
INSERT INTO `gen_table_column` VALUES (14, '1', 'login_date', '最后登录时间', 'datetime', 'Date', 'loginDate', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 14, 'admin', '2023-05-28 14:41:51', '', '2023-05-29 14:00:12');
INSERT INTO `gen_table_column` VALUES (15, '1', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 15, 'admin', '2023-05-28 14:41:51', '', '2023-05-29 14:00:12');
INSERT INTO `gen_table_column` VALUES (16, '1', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 16, 'admin', '2023-05-28 14:41:51', '', '2023-05-29 14:00:12');
INSERT INTO `gen_table_column` VALUES (17, '1', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 17, 'admin', '2023-05-28 14:41:51', '', '2023-05-29 14:00:12');
INSERT INTO `gen_table_column` VALUES (18, '1', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 18, 'admin', '2023-05-28 14:41:51', '', '2023-05-29 14:00:12');
INSERT INTO `gen_table_column` VALUES (19, '1', 'remark', '备注', 'varchar(500)', 'String', 'remark', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'textarea', '', 19, 'admin', '2023-05-28 14:41:51', '', '2023-05-29 14:00:12');
INSERT INTO `gen_table_column` VALUES (20, '1', 'faculty_id', '教职工编号', 'bigint', 'Long', 'facultyId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 20, 'admin', '2023-05-28 14:41:51', '', '2023-05-29 14:00:12');
INSERT INTO `gen_table_column` VALUES (21, '2', 'id', '编号', 'bigint', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-05-29 08:20:30', '', '2023-05-29 08:22:43');
INSERT INTO `gen_table_column` VALUES (22, '2', 'des', '描述', 'varchar(90)', 'String', 'des', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-05-29 08:20:30', '', '2023-05-29 08:22:43');
INSERT INTO `gen_table_column` VALUES (23, '2', 'hour', '时长', 'int', 'Long', 'hour', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-05-29 08:20:30', '', '2023-05-29 08:22:43');
INSERT INTO `gen_table_column` VALUES (24, '2', 'faculty_id', '教职工编号', 'bigint', 'Long', 'facultyId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-05-29 08:20:30', '', '2023-05-29 08:22:43');

-- ----------------------------
-- Table structure for position
-- ----------------------------
DROP TABLE IF EXISTS `position`;
CREATE TABLE `position`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `des` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '职务',
  `wage` int NOT NULL COMMENT '基本薪资',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '职位表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of position
-- ----------------------------
INSERT INTO `position` VALUES (1, '校长', 8000);
INSERT INTO `position` VALUES (2, '副校长', 7500);
INSERT INTO `position` VALUES (3, '处长', 7000);
INSERT INTO `position` VALUES (4, '副处长', 6500);
INSERT INTO `position` VALUES (5, '科长', 6000);
INSERT INTO `position` VALUES (6, '副科长', 5500);
INSERT INTO `position` VALUES (7, '主管', 5000);
INSERT INTO `position` VALUES (8, '职员', 4500);
INSERT INTO `position` VALUES (9, '无', 0);

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `config_id` int NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '参数配置表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2023-05-28 07:54:27', '', NULL, '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES (2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2023-05-28 07:54:27', '', NULL, '初始化密码 123456');
INSERT INTO `sys_config` VALUES (3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2023-05-28 07:54:27', '', NULL, '深色主题theme-dark，浅色主题theme-light');
INSERT INTO `sys_config` VALUES (4, '账号自助-验证码开关', 'sys.account.captchaEnabled', 'true', 'Y', 'admin', '2023-05-28 07:54:27', '', NULL, '是否开启验证码功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES (5, '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'false', 'Y', 'admin', '2023-05-28 07:54:27', '', NULL, '是否开启注册用户功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES (6, '用户登录-黑名单列表', 'sys.login.blackIPList', '', 'Y', 'admin', '2023-05-28 07:54:27', '', NULL, '设置登录IP黑名单限制，多个匹配项以;分隔，支持匹配（*通配、网段）');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `dept_id` bigint NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint NULL DEFAULT 0 COMMENT '父部门id',
  `ancestors` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '部门名称',
  `order_num` int NULL DEFAULT 0 COMMENT '显示顺序',
  `leader` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '邮箱',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 200 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '部门表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (100, 0, '0', '若依科技', 0, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-05-28 07:54:27', '', NULL);
INSERT INTO `sys_dept` VALUES (101, 100, '0,100', '深圳总公司', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-05-28 07:54:27', '', NULL);
INSERT INTO `sys_dept` VALUES (102, 100, '0,100', '长沙分公司', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-05-28 07:54:27', '', NULL);
INSERT INTO `sys_dept` VALUES (103, 101, '0,100,101', '研发部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-05-28 07:54:27', '', NULL);
INSERT INTO `sys_dept` VALUES (104, 101, '0,100,101', '市场部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-05-28 07:54:27', '', NULL);
INSERT INTO `sys_dept` VALUES (105, 101, '0,100,101', '测试部门', 3, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-05-28 07:54:27', '', NULL);
INSERT INTO `sys_dept` VALUES (106, 101, '0,100,101', '财务部门', 4, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-05-28 07:54:27', '', NULL);
INSERT INTO `sys_dept` VALUES (107, 101, '0,100,101', '运维部门', 5, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-05-28 07:54:27', '', NULL);
INSERT INTO `sys_dept` VALUES (108, 102, '0,100,102', '市场部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-05-28 07:54:27', '', NULL);
INSERT INTO `sys_dept` VALUES (109, 102, '0,100,102', '财务部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-05-28 07:54:27', '', NULL);

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data`  (
  `dict_code` bigint NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int NULL DEFAULT 0 COMMENT '字典排序',
  `dict_label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 116 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '字典数据表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES (1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2023-05-28 07:54:27', '', NULL, '性别男');
INSERT INTO `sys_dict_data` VALUES (2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2023-05-28 07:54:27', '', NULL, '性别女');
INSERT INTO `sys_dict_data` VALUES (3, 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2023-05-28 07:54:27', '', NULL, '性别未知');
INSERT INTO `sys_dict_data` VALUES (4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2023-05-28 07:54:27', '', NULL, '显示菜单');
INSERT INTO `sys_dict_data` VALUES (5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2023-05-28 07:54:27', '', NULL, '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES (6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2023-05-28 07:54:27', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (7, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2023-05-28 07:54:27', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (8, 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2023-05-28 07:54:27', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (9, 2, '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2023-05-28 07:54:27', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (10, 1, '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2023-05-28 07:54:27', '', NULL, '默认分组');
INSERT INTO `sys_dict_data` VALUES (11, 2, '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2023-05-28 07:54:27', '', NULL, '系统分组');
INSERT INTO `sys_dict_data` VALUES (12, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2023-05-28 07:54:27', '', NULL, '系统默认是');
INSERT INTO `sys_dict_data` VALUES (13, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2023-05-28 07:54:27', '', NULL, '系统默认否');
INSERT INTO `sys_dict_data` VALUES (14, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2023-05-28 07:54:27', '', NULL, '通知');
INSERT INTO `sys_dict_data` VALUES (15, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2023-05-28 07:54:27', '', NULL, '公告');
INSERT INTO `sys_dict_data` VALUES (16, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2023-05-28 07:54:27', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (17, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2023-05-28 07:54:27', '', NULL, '关闭状态');
INSERT INTO `sys_dict_data` VALUES (18, 99, '其他', '0', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2023-05-28 07:54:27', '', NULL, '其他操作');
INSERT INTO `sys_dict_data` VALUES (19, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2023-05-28 07:54:27', '', NULL, '新增操作');
INSERT INTO `sys_dict_data` VALUES (20, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2023-05-28 07:54:27', '', NULL, '修改操作');
INSERT INTO `sys_dict_data` VALUES (21, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2023-05-28 07:54:27', '', NULL, '删除操作');
INSERT INTO `sys_dict_data` VALUES (22, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2023-05-28 07:54:27', '', NULL, '授权操作');
INSERT INTO `sys_dict_data` VALUES (23, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2023-05-28 07:54:27', '', NULL, '导出操作');
INSERT INTO `sys_dict_data` VALUES (24, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2023-05-28 07:54:27', '', NULL, '导入操作');
INSERT INTO `sys_dict_data` VALUES (25, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2023-05-28 07:54:27', '', NULL, '强退操作');
INSERT INTO `sys_dict_data` VALUES (26, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2023-05-28 07:54:27', '', NULL, '生成操作');
INSERT INTO `sys_dict_data` VALUES (27, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2023-05-28 07:54:27', '', NULL, '清空操作');
INSERT INTO `sys_dict_data` VALUES (28, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2023-05-28 07:54:27', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (29, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2023-05-28 07:54:27', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (100, 0, '教师', '0', 'faculty_type', NULL, 'default', 'N', '0', 'admin', '2023-05-27 17:51:49', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (101, 1, '职工', '1', 'faculty_type', NULL, 'default', 'N', '0', 'admin', '2023-05-27 17:51:55', 'admin', '2023-05-27 19:04:21', NULL);
INSERT INTO `sys_dict_data` VALUES (102, 0, '校长', '1', 'faculty_position', NULL, 'default', 'N', '0', 'admin', '2023-05-27 18:17:00', 'admin', '2023-05-27 18:19:29', NULL);
INSERT INTO `sys_dict_data` VALUES (103, 1, '副校长', '2', 'faculty_position', NULL, 'default', 'N', '0', 'admin', '2023-05-27 18:19:39', 'admin', '2023-05-27 19:04:36', NULL);
INSERT INTO `sys_dict_data` VALUES (104, 2, '处长', '3', 'faculty_position', NULL, 'default', 'N', '0', 'admin', '2023-05-27 18:20:14', 'admin', '2023-05-27 19:04:53', NULL);
INSERT INTO `sys_dict_data` VALUES (105, 3, '副处长', '4', 'faculty_position', NULL, 'default', 'N', '0', 'admin', '2023-05-27 18:20:22', 'admin', '2023-05-27 19:04:57', NULL);
INSERT INTO `sys_dict_data` VALUES (106, 4, '科长', '5', 'faculty_position', NULL, 'default', 'N', '0', 'admin', '2023-05-27 18:20:36', 'admin', '2023-05-27 19:05:08', NULL);
INSERT INTO `sys_dict_data` VALUES (107, 5, '副科长', '6', 'faculty_position', NULL, 'default', 'N', '0', 'admin', '2023-05-27 18:20:50', 'admin', '2023-05-27 19:05:16', NULL);
INSERT INTO `sys_dict_data` VALUES (108, 6, '主管', '7', 'faculty_position', NULL, 'default', 'N', '0', 'admin', '2023-05-27 18:22:22', 'admin', '2023-05-27 19:05:28', NULL);
INSERT INTO `sys_dict_data` VALUES (109, 7, '职员', '8', 'faculty_position', NULL, 'default', 'N', '0', 'admin', '2023-05-27 18:22:33', 'admin', '2023-05-27 19:05:32', NULL);
INSERT INTO `sys_dict_data` VALUES (110, 8, '无', '9', 'faculty_position', NULL, 'default', 'N', '0', 'admin', '2023-05-27 18:22:43', 'admin', '2023-05-27 19:05:45', NULL);
INSERT INTO `sys_dict_data` VALUES (111, 0, '教授', '1', 'faculty_title', NULL, 'default', 'N', '0', 'admin', '2023-05-27 18:59:11', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (112, 1, '副教授', '2', 'faculty_title', NULL, 'default', 'N', '0', 'admin', '2023-05-27 18:59:28', 'admin', '2023-05-27 19:05:55', NULL);
INSERT INTO `sys_dict_data` VALUES (113, 2, '讲师', '3', 'faculty_title', NULL, 'default', 'N', '0', 'admin', '2023-05-27 18:59:37', 'admin', '2023-05-27 19:06:04', NULL);
INSERT INTO `sys_dict_data` VALUES (114, 3, '助教', '4', 'faculty_title', NULL, 'default', 'N', '0', 'admin', '2023-05-27 18:59:45', 'admin', '2023-05-27 19:06:00', NULL);
INSERT INTO `sys_dict_data` VALUES (115, 4, '无', '5', 'faculty_title', NULL, 'default', 'N', '0', 'admin', '2023-05-27 18:59:54', 'admin', '2023-05-27 19:06:11', NULL);

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type`  (
  `dict_id` bigint NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '字典类型',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE INDEX `dict_type`(`dict_type` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 103 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '字典类型表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES (1, '用户性别', 'sys_user_sex', '0', 'admin', '2023-05-28 07:54:27', '', NULL, '用户性别列表');
INSERT INTO `sys_dict_type` VALUES (2, '菜单状态', 'sys_show_hide', '0', 'admin', '2023-05-28 07:54:27', '', NULL, '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES (3, '系统开关', 'sys_normal_disable', '0', 'admin', '2023-05-28 07:54:27', '', NULL, '系统开关列表');
INSERT INTO `sys_dict_type` VALUES (4, '任务状态', 'sys_job_status', '0', 'admin', '2023-05-28 07:54:27', '', NULL, '任务状态列表');
INSERT INTO `sys_dict_type` VALUES (5, '任务分组', 'sys_job_group', '0', 'admin', '2023-05-28 07:54:27', '', NULL, '任务分组列表');
INSERT INTO `sys_dict_type` VALUES (6, '系统是否', 'sys_yes_no', '0', 'admin', '2023-05-28 07:54:27', '', NULL, '系统是否列表');
INSERT INTO `sys_dict_type` VALUES (7, '通知类型', 'sys_notice_type', '0', 'admin', '2023-05-28 07:54:27', '', NULL, '通知类型列表');
INSERT INTO `sys_dict_type` VALUES (8, '通知状态', 'sys_notice_status', '0', 'admin', '2023-05-28 07:54:27', '', NULL, '通知状态列表');
INSERT INTO `sys_dict_type` VALUES (9, '操作类型', 'sys_oper_type', '0', 'admin', '2023-05-28 07:54:27', '', NULL, '操作类型列表');
INSERT INTO `sys_dict_type` VALUES (10, '系统状态', 'sys_common_status', '0', 'admin', '2023-05-28 07:54:27', '', NULL, '登录状态列表');
INSERT INTO `sys_dict_type` VALUES (100, '教师/职工', 'faculty_type', '0', 'admin', '2023-05-27 15:39:15', 'admin', '2023-05-27 17:23:22', NULL);
INSERT INTO `sys_dict_type` VALUES (101, '教师职务', 'faculty_position', '0', 'admin', '2023-05-27 15:40:35', 'admin', '2023-05-27 18:16:10', NULL);
INSERT INTO `sys_dict_type` VALUES (102, '教师职称', 'faculty_title', '0', 'admin', '2023-05-27 15:41:26', 'admin', '2023-05-27 18:16:13', NULL);

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job`  (
  `job_id` bigint NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '定时任务调度表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES (1, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2023-05-28 07:54:27', '', NULL, '');
INSERT INTO `sys_job` VALUES (2, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2023-05-28 07:54:27', '', NULL, '');
INSERT INTO `sys_job` VALUES (3, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2023-05-28 07:54:27', '', NULL, '');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log`  (
  `job_log_id` bigint NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '日志信息',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '异常信息',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '定时任务调度日志表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor`  (
  `info_id` bigint NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `user_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '操作系统',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '提示消息',
  `login_time` datetime NULL DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`) USING BTREE,
  INDEX `idx_sys_logininfor_s`(`status` ASC) USING BTREE,
  INDEX `idx_sys_logininfor_lt`(`login_time` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 159 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '系统访问记录' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` bigint NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '菜单名称',
  `parent_id` bigint NULL DEFAULT 0 COMMENT '父菜单ID',
  `order_num` int NULL DEFAULT 0 COMMENT '显示顺序',
  `path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '组件路径',
  `query` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '路由参数',
  `is_frame` int NULL DEFAULT 1 COMMENT '是否为外链（0是 1否）',
  `is_cache` int NULL DEFAULT 0 COMMENT '是否缓存（0缓存 1不缓存）',
  `menu_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2052 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '菜单权限表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '系统管理', 0, 1, 'system', NULL, '', 1, 0, 'M', '0', '0', '', 'system', 'admin', '2023-05-28 07:54:27', '', NULL, '系统管理目录');
INSERT INTO `sys_menu` VALUES (2, '系统监控', 0, 1, 'monitor', NULL, '', 1, 0, 'M', '1', '0', '', 'monitor', 'admin', '2023-05-28 07:54:27', 'admin', '2023-05-28 12:00:53', '系统监控目录');
INSERT INTO `sys_menu` VALUES (3, '系统工具', 0, 1, 'tool', NULL, '', 1, 0, 'M', '0', '0', '', 'tool', 'admin', '2023-05-28 07:54:27', 'admin', '2023-05-28 12:01:09', '系统工具目录');
INSERT INTO `sys_menu` VALUES (100, '用户管理', 1, 1, 'user', 'system/user/index', '', 1, 0, 'C', '0', '0', 'system:user:list', 'user', 'admin', '2023-05-28 07:54:27', '', NULL, '用户管理菜单');
INSERT INTO `sys_menu` VALUES (101, '角色管理', 1, 2, 'role', 'system/role/index', '', 1, 0, 'C', '0', '0', 'system:role:list', 'peoples', 'admin', '2023-05-28 07:54:27', '', NULL, '角色管理菜单');
INSERT INTO `sys_menu` VALUES (102, '菜单管理', 1, 3, 'menu', 'system/menu/index', '', 1, 0, 'C', '0', '0', 'system:menu:list', 'tree-table', 'admin', '2023-05-28 07:54:27', '', NULL, '菜单管理菜单');
INSERT INTO `sys_menu` VALUES (103, '部门管理', 1, 4, 'dept', 'system/dept/index', '', 1, 0, 'C', '1', '0', 'system:dept:list', 'tree', 'admin', '2023-05-28 07:54:27', 'admin', '2023-05-28 12:09:48', '部门管理菜单');
INSERT INTO `sys_menu` VALUES (104, '岗位管理', 1, 5, 'post', 'system/post/index', '', 1, 0, 'C', '1', '0', 'system:post:list', 'post', 'admin', '2023-05-28 07:54:27', 'admin', '2023-05-28 12:10:00', '岗位管理菜单');
INSERT INTO `sys_menu` VALUES (105, '字典管理', 1, 6, 'dict', 'system/dict/index', '', 1, 0, 'C', '0', '0', 'system:dict:list', 'dict', 'admin', '2023-05-28 07:54:27', '', NULL, '字典管理菜单');
INSERT INTO `sys_menu` VALUES (106, '参数设置', 1, 7, 'config', 'system/config/index', '', 1, 0, 'C', '0', '0', 'system:config:list', 'edit', 'admin', '2023-05-28 07:54:27', '', NULL, '参数设置菜单');
INSERT INTO `sys_menu` VALUES (107, '通知公告', 1, 8, 'notice', 'system/notice/index', '', 1, 0, 'C', '1', '0', 'system:notice:list', 'message', 'admin', '2023-05-28 07:54:27', 'admin', '2023-05-28 12:14:49', '通知公告菜单');
INSERT INTO `sys_menu` VALUES (108, '日志管理', 1, 9, 'log', '', '', 1, 0, 'M', '1', '0', '', 'log', 'admin', '2023-05-28 07:54:27', 'admin', '2023-05-28 12:14:25', '日志管理菜单');
INSERT INTO `sys_menu` VALUES (109, '在线用户', 2, 1, 'online', 'monitor/online/index', '', 1, 0, 'C', '0', '0', 'monitor:online:list', 'online', 'admin', '2023-05-28 07:54:27', '', NULL, '在线用户菜单');
INSERT INTO `sys_menu` VALUES (110, '定时任务', 2, 2, 'job', 'monitor/job/index', '', 1, 0, 'C', '0', '0', 'monitor:job:list', 'job', 'admin', '2023-05-28 07:54:27', '', NULL, '定时任务菜单');
INSERT INTO `sys_menu` VALUES (111, '数据监控', 2, 3, 'druid', 'monitor/druid/index', '', 1, 0, 'C', '0', '0', 'monitor:druid:list', 'druid', 'admin', '2023-05-28 07:54:27', '', NULL, '数据监控菜单');
INSERT INTO `sys_menu` VALUES (112, '服务监控', 2, 4, 'server', 'monitor/server/index', '', 1, 0, 'C', '0', '0', 'monitor:server:list', 'server', 'admin', '2023-05-28 07:54:27', '', NULL, '服务监控菜单');
INSERT INTO `sys_menu` VALUES (113, '缓存监控', 2, 5, 'cache', 'monitor/cache/index', '', 1, 0, 'C', '0', '0', 'monitor:cache:list', 'redis', 'admin', '2023-05-28 07:54:27', '', NULL, '缓存监控菜单');
INSERT INTO `sys_menu` VALUES (114, '缓存列表', 2, 6, 'cacheList', 'monitor/cache/list', '', 1, 0, 'C', '0', '0', 'monitor:cache:list', 'redis-list', 'admin', '2023-05-28 07:54:27', '', NULL, '缓存列表菜单');
INSERT INTO `sys_menu` VALUES (115, '表单构建', 3, 1, 'build', 'tool/build/index', '', 1, 0, 'C', '0', '0', 'tool:build:list', 'build', 'admin', '2023-05-28 07:54:27', '', NULL, '表单构建菜单');
INSERT INTO `sys_menu` VALUES (116, '代码生成', 3, 2, 'gen', 'tool/gen/index', '', 1, 0, 'C', '0', '0', 'tool:gen:list', 'code', 'admin', '2023-05-28 07:54:27', '', NULL, '代码生成菜单');
INSERT INTO `sys_menu` VALUES (117, '系统接口', 3, 3, 'swagger', 'tool/swagger/index', '', 1, 0, 'C', '0', '0', 'tool:swagger:list', 'swagger', 'admin', '2023-05-28 07:54:27', '', NULL, '系统接口菜单');
INSERT INTO `sys_menu` VALUES (500, '操作日志', 108, 1, 'operlog', 'monitor/operlog/index', '', 1, 0, 'C', '0', '0', 'monitor:operlog:list', 'form', 'admin', '2023-05-28 07:54:27', '', NULL, '操作日志菜单');
INSERT INTO `sys_menu` VALUES (501, '登录日志', 108, 2, 'logininfor', 'monitor/logininfor/index', '', 1, 0, 'C', '0', '0', 'monitor:logininfor:list', 'logininfor', 'admin', '2023-05-28 07:54:27', '', NULL, '登录日志菜单');
INSERT INTO `sys_menu` VALUES (1000, '用户查询', 100, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:user:query', '#', 'admin', '2023-05-28 07:54:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1001, '用户新增', 100, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:user:add', '#', 'admin', '2023-05-28 07:54:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1002, '用户修改', 100, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:user:edit', '#', 'admin', '2023-05-28 07:54:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1003, '用户删除', 100, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:user:remove', '#', 'admin', '2023-05-28 07:54:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1004, '用户导出', 100, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:user:export', '#', 'admin', '2023-05-28 07:54:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1005, '用户导入', 100, 6, '', '', '', 1, 0, 'F', '0', '0', 'system:user:import', '#', 'admin', '2023-05-28 07:54:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1006, '重置密码', 100, 7, '', '', '', 1, 0, 'F', '0', '0', 'system:user:resetPwd', '#', 'admin', '2023-05-28 07:54:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1007, '角色查询', 101, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:role:query', '#', 'admin', '2023-05-28 07:54:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1008, '角色新增', 101, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:role:add', '#', 'admin', '2023-05-28 07:54:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1009, '角色修改', 101, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:role:edit', '#', 'admin', '2023-05-28 07:54:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1010, '角色删除', 101, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:role:remove', '#', 'admin', '2023-05-28 07:54:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1011, '角色导出', 101, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:role:export', '#', 'admin', '2023-05-28 07:54:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1012, '菜单查询', 102, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:query', '#', 'admin', '2023-05-28 07:54:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1013, '菜单新增', 102, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:add', '#', 'admin', '2023-05-28 07:54:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1014, '菜单修改', 102, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:edit', '#', 'admin', '2023-05-28 07:54:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1015, '菜单删除', 102, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:remove', '#', 'admin', '2023-05-28 07:54:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1016, '部门查询', 103, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:query', '#', 'admin', '2023-05-28 07:54:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1017, '部门新增', 103, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:add', '#', 'admin', '2023-05-28 07:54:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1018, '部门修改', 103, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:edit', '#', 'admin', '2023-05-28 07:54:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1019, '部门删除', 103, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:remove', '#', 'admin', '2023-05-28 07:54:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1020, '岗位查询', 104, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:post:query', '#', 'admin', '2023-05-28 07:54:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1021, '岗位新增', 104, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:post:add', '#', 'admin', '2023-05-28 07:54:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1022, '岗位修改', 104, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:post:edit', '#', 'admin', '2023-05-28 07:54:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1023, '岗位删除', 104, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:post:remove', '#', 'admin', '2023-05-28 07:54:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1024, '岗位导出', 104, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:post:export', '#', 'admin', '2023-05-28 07:54:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1025, '字典查询', 105, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:query', '#', 'admin', '2023-05-28 07:54:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1026, '字典新增', 105, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:add', '#', 'admin', '2023-05-28 07:54:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1027, '字典修改', 105, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:edit', '#', 'admin', '2023-05-28 07:54:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1028, '字典删除', 105, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:remove', '#', 'admin', '2023-05-28 07:54:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1029, '字典导出', 105, 5, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:export', '#', 'admin', '2023-05-28 07:54:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1030, '参数查询', 106, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:query', '#', 'admin', '2023-05-28 07:54:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1031, '参数新增', 106, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:add', '#', 'admin', '2023-05-28 07:54:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1032, '参数修改', 106, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:edit', '#', 'admin', '2023-05-28 07:54:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1033, '参数删除', 106, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:remove', '#', 'admin', '2023-05-28 07:54:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1034, '参数导出', 106, 5, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:export', '#', 'admin', '2023-05-28 07:54:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1035, '公告查询', 107, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:query', '#', 'admin', '2023-05-28 07:54:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1036, '公告新增', 107, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:add', '#', 'admin', '2023-05-28 07:54:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1037, '公告修改', 107, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:edit', '#', 'admin', '2023-05-28 07:54:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1038, '公告删除', 107, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:remove', '#', 'admin', '2023-05-28 07:54:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1039, '操作查询', 500, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:query', '#', 'admin', '2023-05-28 07:54:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1040, '操作删除', 500, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:remove', '#', 'admin', '2023-05-28 07:54:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1041, '日志导出', 500, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:export', '#', 'admin', '2023-05-28 07:54:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1042, '登录查询', 501, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:query', '#', 'admin', '2023-05-28 07:54:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1043, '登录删除', 501, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:remove', '#', 'admin', '2023-05-28 07:54:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1044, '日志导出', 501, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:export', '#', 'admin', '2023-05-28 07:54:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1045, '账户解锁', 501, 4, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:unlock', '#', 'admin', '2023-05-28 07:54:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1046, '在线查询', 109, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:query', '#', 'admin', '2023-05-28 07:54:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1047, '批量强退', 109, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:batchLogout', '#', 'admin', '2023-05-28 07:54:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1048, '单条强退', 109, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:forceLogout', '#', 'admin', '2023-05-28 07:54:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1049, '任务查询', 110, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:query', '#', 'admin', '2023-05-28 07:54:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1050, '任务新增', 110, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:add', '#', 'admin', '2023-05-28 07:54:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1051, '任务修改', 110, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:edit', '#', 'admin', '2023-05-28 07:54:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1052, '任务删除', 110, 4, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:remove', '#', 'admin', '2023-05-28 07:54:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1053, '状态修改', 110, 5, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:changeStatus', '#', 'admin', '2023-05-28 07:54:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1054, '任务导出', 110, 6, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:export', '#', 'admin', '2023-05-28 07:54:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1055, '生成查询', 116, 1, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:query', '#', 'admin', '2023-05-28 07:54:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1056, '生成修改', 116, 2, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:edit', '#', 'admin', '2023-05-28 07:54:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1057, '生成删除', 116, 3, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:remove', '#', 'admin', '2023-05-28 07:54:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1058, '导入代码', 116, 4, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:import', '#', 'admin', '2023-05-28 07:54:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1059, '预览代码', 116, 5, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:preview', '#', 'admin', '2023-05-28 07:54:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1060, '生成代码', 116, 6, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:code', '#', 'admin', '2023-05-28 07:54:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2008, '工资规则', 0, 5, 'param', NULL, NULL, 1, 0, 'M', '0', '0', '', 'edit', 'admin', '2023-05-27 14:06:19', 'admin', '2023-05-27 19:24:38', '');
INSERT INTO `sys_menu` VALUES (2011, '教职工工资', 0, 2, 'faculty', 'financial/faculty/index', NULL, 1, 0, 'C', '0', '0', 'financial:faculty:menu', 'money', 'admin', '2023-05-27 17:12:58', 'admin', '2023-05-28 17:20:30', '教职工菜单');
INSERT INTO `sys_menu` VALUES (2012, '教职工查询', 2011, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'financial:faculty:query', '#', 'admin', '2023-05-27 17:12:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2013, '教职工新增', 2011, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'financial:faculty:add', '#', 'admin', '2023-05-27 17:12:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2014, '教职工修改', 2011, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'financial:faculty:edit', '#', 'admin', '2023-05-27 17:12:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2015, '教职工删除', 2011, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'financial:faculty:remove', '#', 'admin', '2023-05-27 17:12:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2016, '教职工导出', 2011, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'financial:faculty:export', '#', 'admin', '2023-05-27 17:12:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2023, '课时任务', 0, 3, 'work', 'financial/work/index', NULL, 1, 0, 'C', '0', '0', 'financial:work:menu', 'education', 'admin', '2023-05-27 19:30:00', 'admin', '2023-05-28 17:26:02', '课时任务菜单');
INSERT INTO `sys_menu` VALUES (2024, '课时任务查询', 2023, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'financial:work:query', '#', 'admin', '2023-05-27 19:30:00', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2025, '课时任务新增', 2023, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'financial:work:add', '#', 'admin', '2023-05-27 19:30:00', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2026, '课时任务修改', 2023, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'financial:work:edit', '#', 'admin', '2023-05-27 19:30:00', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2027, '课时任务删除', 2023, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'financial:work:remove', '#', 'admin', '2023-05-27 19:30:00', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2028, '课时任务导出', 2023, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'financial:work:export', '#', 'admin', '2023-05-27 19:30:00', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2029, '职务', 2008, 1, 'position', 'financial/position/index', NULL, 1, 0, 'C', '0', '0', 'financial:position:list', 'post', 'admin', '2023-05-27 19:48:05', 'admin', '2023-05-27 20:06:54', '职务菜单');
INSERT INTO `sys_menu` VALUES (2030, '职务查询', 2029, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'financial:position:query', '#', 'admin', '2023-05-27 19:48:05', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2031, '职务新增', 2029, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'financial:position:add', '#', 'admin', '2023-05-27 19:48:05', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2032, '职务修改', 2029, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'financial:position:edit', '#', 'admin', '2023-05-27 19:48:05', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2033, '职务删除', 2029, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'financial:position:remove', '#', 'admin', '2023-05-27 19:48:05', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2034, '职务导出', 2029, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'financial:position:export', '#', 'admin', '2023-05-27 19:48:06', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2035, '职称', 2008, 1, 'title', 'financial/title/index', NULL, 1, 0, 'C', '0', '0', 'financial:title:list', 'post', 'admin', '2023-05-27 20:04:16', 'admin', '2023-05-27 20:07:02', '职称菜单');
INSERT INTO `sys_menu` VALUES (2036, '职称查询', 2035, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'financial:title:query', '#', 'admin', '2023-05-27 20:04:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2037, '职称新增', 2035, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'financial:title:add', '#', 'admin', '2023-05-27 20:04:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2038, '职称修改', 2035, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'financial:title:edit', '#', 'admin', '2023-05-27 20:04:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2039, '职称删除', 2035, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'financial:title:remove', '#', 'admin', '2023-05-27 20:04:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2040, '职称导出', 2035, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'financial:title:export', '#', 'admin', '2023-05-27 20:04:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2041, '教职工查询个人', 2011, 7, '', NULL, NULL, 1, 0, 'F', '0', '0', 'financial:faculty:queryself', '#', 'admin', '2023-05-27 20:25:09', 'admin', '2023-05-29 13:18:11', '');
INSERT INTO `sys_menu` VALUES (2042, '教职工导出个人', 2011, 8, '', NULL, NULL, 1, 0, 'F', '0', '0', 'financial:faculty:exportself', '#', 'admin', '2023-05-27 20:31:04', 'admin', '2023-05-29 13:18:26', '');
INSERT INTO `sys_menu` VALUES (2043, '课时任务查询个人', 2023, 7, '', NULL, NULL, 1, 0, 'F', '0', '0', 'financial:work:queryself', '#', 'admin', '2023-05-27 20:32:33', 'admin', '2023-05-29 13:21:13', '');
INSERT INTO `sys_menu` VALUES (2044, '课时任务新增个人', 2023, 8, '', NULL, NULL, 1, 0, 'F', '0', '0', 'financial:work:addself', '#', 'admin', '2023-05-27 20:33:24', 'admin', '2023-05-29 13:21:57', '');
INSERT INTO `sys_menu` VALUES (2045, '课时任务修改个人', 2023, 9, '', NULL, NULL, 1, 0, 'F', '0', '0', 'financial:work:editself', '#', 'admin', '2023-05-27 20:34:06', 'admin', '2023-05-29 13:21:51', '');
INSERT INTO `sys_menu` VALUES (2046, '课时任务删除个人', 2023, 10, '', NULL, NULL, 1, 0, 'F', '0', '0', 'financial:work:removeself', '#', 'admin', '2023-05-27 20:34:40', 'admin', '2023-05-29 13:21:29', '');
INSERT INTO `sys_menu` VALUES (2047, '课时任务导出个人', 2023, 11, '', NULL, NULL, 1, 0, 'F', '0', '0', 'financial:work:exportself', '#', 'admin', '2023-05-27 20:35:07', 'admin', '2023-05-29 13:21:19', '');
INSERT INTO `sys_menu` VALUES (2048, '教职工列表', 2011, 0, '1', NULL, NULL, 1, 0, 'C', '1', '0', 'financial:faculty:list', '#', 'admin', '2023-05-28 17:28:31', 'admin', '2023-05-28 17:31:48', '');
INSERT INTO `sys_menu` VALUES (2049, '课时任务列表', 2023, 0, 'financial:work:list', NULL, NULL, 1, 0, 'C', '1', '0', NULL, '#', 'admin', '2023-05-28 17:32:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2050, '教职工个人', 2011, 6, '2', NULL, NULL, 1, 0, 'C', '1', '0', 'financial:faculty:self', '#', 'admin', '2023-05-29 13:17:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2051, '课时任务个人', 2023, 6, '2', NULL, NULL, 1, 0, 'C', '1', '0', 'financial:work:self', '#', 'admin', '2023-05-29 13:19:45', 'admin', '2023-05-29 13:20:52', '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `notice_id` int NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '公告标题',
  `notice_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` longblob NULL COMMENT '公告内容',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '通知公告表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES (1, '温馨提醒：2018-07-01 若依新版本发布啦', '2', 0xE696B0E78988E69CACE58685E5AEB9, '0', 'admin', '2023-05-28 07:54:27', '', NULL, '管理员');
INSERT INTO `sys_notice` VALUES (2, '维护通知：2018-07-01 若依系统凌晨维护', '1', 0xE7BBB4E68AA4E58685E5AEB9, '0', 'admin', '2023-05-28 07:54:27', '', NULL, '管理员');

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log`  (
  `oper_id` bigint NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '模块标题',
  `business_type` int NULL DEFAULT 0 COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '请求方式',
  `operator_type` int NULL DEFAULT 0 COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '返回参数',
  `status` int NULL DEFAULT 0 COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime NULL DEFAULT NULL COMMENT '操作时间',
  `cost_time` bigint NULL DEFAULT 0 COMMENT '消耗时间',
  PRIMARY KEY (`oper_id`) USING BTREE,
  INDEX `idx_sys_oper_log_bt`(`business_type` ASC) USING BTREE,
  INDEX `idx_sys_oper_log_s`(`status` ASC) USING BTREE,
  INDEX `idx_sys_oper_log_ot`(`oper_time` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 152 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '操作日志记录' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post`  (
  `post_id` bigint NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '岗位名称',
  `post_sort` int NOT NULL COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '岗位信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES (1, 'ceo', '董事长', 1, '0', 'admin', '2023-05-28 07:54:27', '', NULL, '');
INSERT INTO `sys_post` VALUES (2, 'se', '项目经理', 2, '0', 'admin', '2023-05-28 07:54:27', '', NULL, '');
INSERT INTO `sys_post` VALUES (3, 'hr', '人力资源', 3, '0', 'admin', '2023-05-28 07:54:27', '', NULL, '');
INSERT INTO `sys_post` VALUES (4, 'user', '普通员工', 4, '0', 'admin', '2023-05-28 07:54:27', '', NULL, '');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` bigint NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色权限字符串',
  `role_sort` int NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `menu_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '菜单树选择项是否关联显示',
  `dept_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '部门树选择项是否关联显示',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 104 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '角色信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '超级管理员', 'admin', 1, '1', 1, 1, '0', '0', 'admin', '2023-05-28 07:54:27', '', NULL, '超级管理员');
INSERT INTO `sys_role` VALUES (2, '普通角色', 'common', 2, '2', 1, 1, '0', '0', 'admin', '2023-05-28 07:54:27', 'admin', '2023-05-28 12:01:26', '普通角色');
INSERT INTO `sys_role` VALUES (100, '财务', 'finance', 3, '1', 1, 1, '0', '0', 'admin', '2023-05-27 15:14:16', 'admin', '2023-05-27 20:12:13', NULL);
INSERT INTO `sys_role` VALUES (101, '教职工', 'faculty', 4, '1', 0, 1, '0', '0', 'admin', '2023-05-27 15:15:11', 'admin', '2023-05-29 16:28:50', NULL);
INSERT INTO `sys_role` VALUES (102, '管理员', 'root', 5, '1', 0, 1, '0', '0', 'admin', '2023-05-27 19:11:17', 'admin', '2023-05-29 08:27:21', NULL);
INSERT INTO `sys_role` VALUES (103, '银行', 'bank', 6, '1', 0, 1, '0', '0', 'admin', '2023-05-27 19:12:01', 'admin', '2023-05-29 08:27:05', NULL);

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept`  (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `dept_id` bigint NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`, `dept_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '角色和部门关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES (2, 100);
INSERT INTO `sys_role_dept` VALUES (2, 101);
INSERT INTO `sys_role_dept` VALUES (2, 105);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `menu_id` bigint NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '角色和菜单关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (2, 1);
INSERT INTO `sys_role_menu` VALUES (2, 2);
INSERT INTO `sys_role_menu` VALUES (2, 3);
INSERT INTO `sys_role_menu` VALUES (2, 100);
INSERT INTO `sys_role_menu` VALUES (2, 101);
INSERT INTO `sys_role_menu` VALUES (2, 102);
INSERT INTO `sys_role_menu` VALUES (2, 103);
INSERT INTO `sys_role_menu` VALUES (2, 104);
INSERT INTO `sys_role_menu` VALUES (2, 105);
INSERT INTO `sys_role_menu` VALUES (2, 106);
INSERT INTO `sys_role_menu` VALUES (2, 107);
INSERT INTO `sys_role_menu` VALUES (2, 108);
INSERT INTO `sys_role_menu` VALUES (2, 109);
INSERT INTO `sys_role_menu` VALUES (2, 110);
INSERT INTO `sys_role_menu` VALUES (2, 111);
INSERT INTO `sys_role_menu` VALUES (2, 112);
INSERT INTO `sys_role_menu` VALUES (2, 113);
INSERT INTO `sys_role_menu` VALUES (2, 114);
INSERT INTO `sys_role_menu` VALUES (2, 115);
INSERT INTO `sys_role_menu` VALUES (2, 116);
INSERT INTO `sys_role_menu` VALUES (2, 117);
INSERT INTO `sys_role_menu` VALUES (2, 500);
INSERT INTO `sys_role_menu` VALUES (2, 501);
INSERT INTO `sys_role_menu` VALUES (2, 1000);
INSERT INTO `sys_role_menu` VALUES (2, 1001);
INSERT INTO `sys_role_menu` VALUES (2, 1002);
INSERT INTO `sys_role_menu` VALUES (2, 1003);
INSERT INTO `sys_role_menu` VALUES (2, 1004);
INSERT INTO `sys_role_menu` VALUES (2, 1005);
INSERT INTO `sys_role_menu` VALUES (2, 1006);
INSERT INTO `sys_role_menu` VALUES (2, 1007);
INSERT INTO `sys_role_menu` VALUES (2, 1008);
INSERT INTO `sys_role_menu` VALUES (2, 1009);
INSERT INTO `sys_role_menu` VALUES (2, 1010);
INSERT INTO `sys_role_menu` VALUES (2, 1011);
INSERT INTO `sys_role_menu` VALUES (2, 1012);
INSERT INTO `sys_role_menu` VALUES (2, 1013);
INSERT INTO `sys_role_menu` VALUES (2, 1014);
INSERT INTO `sys_role_menu` VALUES (2, 1015);
INSERT INTO `sys_role_menu` VALUES (2, 1016);
INSERT INTO `sys_role_menu` VALUES (2, 1017);
INSERT INTO `sys_role_menu` VALUES (2, 1018);
INSERT INTO `sys_role_menu` VALUES (2, 1019);
INSERT INTO `sys_role_menu` VALUES (2, 1020);
INSERT INTO `sys_role_menu` VALUES (2, 1021);
INSERT INTO `sys_role_menu` VALUES (2, 1022);
INSERT INTO `sys_role_menu` VALUES (2, 1023);
INSERT INTO `sys_role_menu` VALUES (2, 1024);
INSERT INTO `sys_role_menu` VALUES (2, 1025);
INSERT INTO `sys_role_menu` VALUES (2, 1026);
INSERT INTO `sys_role_menu` VALUES (2, 1027);
INSERT INTO `sys_role_menu` VALUES (2, 1028);
INSERT INTO `sys_role_menu` VALUES (2, 1029);
INSERT INTO `sys_role_menu` VALUES (2, 1030);
INSERT INTO `sys_role_menu` VALUES (2, 1031);
INSERT INTO `sys_role_menu` VALUES (2, 1032);
INSERT INTO `sys_role_menu` VALUES (2, 1033);
INSERT INTO `sys_role_menu` VALUES (2, 1034);
INSERT INTO `sys_role_menu` VALUES (2, 1035);
INSERT INTO `sys_role_menu` VALUES (2, 1036);
INSERT INTO `sys_role_menu` VALUES (2, 1037);
INSERT INTO `sys_role_menu` VALUES (2, 1038);
INSERT INTO `sys_role_menu` VALUES (2, 1039);
INSERT INTO `sys_role_menu` VALUES (2, 1040);
INSERT INTO `sys_role_menu` VALUES (2, 1041);
INSERT INTO `sys_role_menu` VALUES (2, 1042);
INSERT INTO `sys_role_menu` VALUES (2, 1043);
INSERT INTO `sys_role_menu` VALUES (2, 1044);
INSERT INTO `sys_role_menu` VALUES (2, 1045);
INSERT INTO `sys_role_menu` VALUES (2, 1046);
INSERT INTO `sys_role_menu` VALUES (2, 1047);
INSERT INTO `sys_role_menu` VALUES (2, 1048);
INSERT INTO `sys_role_menu` VALUES (2, 1049);
INSERT INTO `sys_role_menu` VALUES (2, 1050);
INSERT INTO `sys_role_menu` VALUES (2, 1051);
INSERT INTO `sys_role_menu` VALUES (2, 1052);
INSERT INTO `sys_role_menu` VALUES (2, 1053);
INSERT INTO `sys_role_menu` VALUES (2, 1054);
INSERT INTO `sys_role_menu` VALUES (2, 1055);
INSERT INTO `sys_role_menu` VALUES (2, 1056);
INSERT INTO `sys_role_menu` VALUES (2, 1057);
INSERT INTO `sys_role_menu` VALUES (2, 1058);
INSERT INTO `sys_role_menu` VALUES (2, 1059);
INSERT INTO `sys_role_menu` VALUES (2, 1060);
INSERT INTO `sys_role_menu` VALUES (100, 2008);
INSERT INTO `sys_role_menu` VALUES (100, 2029);
INSERT INTO `sys_role_menu` VALUES (100, 2030);
INSERT INTO `sys_role_menu` VALUES (100, 2031);
INSERT INTO `sys_role_menu` VALUES (100, 2032);
INSERT INTO `sys_role_menu` VALUES (100, 2033);
INSERT INTO `sys_role_menu` VALUES (100, 2034);
INSERT INTO `sys_role_menu` VALUES (100, 2035);
INSERT INTO `sys_role_menu` VALUES (100, 2036);
INSERT INTO `sys_role_menu` VALUES (100, 2037);
INSERT INTO `sys_role_menu` VALUES (100, 2038);
INSERT INTO `sys_role_menu` VALUES (100, 2039);
INSERT INTO `sys_role_menu` VALUES (100, 2040);
INSERT INTO `sys_role_menu` VALUES (101, 2011);
INSERT INTO `sys_role_menu` VALUES (101, 2023);
INSERT INTO `sys_role_menu` VALUES (101, 2042);
INSERT INTO `sys_role_menu` VALUES (101, 2043);
INSERT INTO `sys_role_menu` VALUES (101, 2044);
INSERT INTO `sys_role_menu` VALUES (101, 2045);
INSERT INTO `sys_role_menu` VALUES (101, 2046);
INSERT INTO `sys_role_menu` VALUES (101, 2047);
INSERT INTO `sys_role_menu` VALUES (101, 2050);
INSERT INTO `sys_role_menu` VALUES (101, 2051);
INSERT INTO `sys_role_menu` VALUES (102, 2008);
INSERT INTO `sys_role_menu` VALUES (102, 2011);
INSERT INTO `sys_role_menu` VALUES (102, 2012);
INSERT INTO `sys_role_menu` VALUES (102, 2013);
INSERT INTO `sys_role_menu` VALUES (102, 2014);
INSERT INTO `sys_role_menu` VALUES (102, 2015);
INSERT INTO `sys_role_menu` VALUES (102, 2016);
INSERT INTO `sys_role_menu` VALUES (102, 2023);
INSERT INTO `sys_role_menu` VALUES (102, 2024);
INSERT INTO `sys_role_menu` VALUES (102, 2025);
INSERT INTO `sys_role_menu` VALUES (102, 2026);
INSERT INTO `sys_role_menu` VALUES (102, 2027);
INSERT INTO `sys_role_menu` VALUES (102, 2028);
INSERT INTO `sys_role_menu` VALUES (102, 2029);
INSERT INTO `sys_role_menu` VALUES (102, 2030);
INSERT INTO `sys_role_menu` VALUES (102, 2031);
INSERT INTO `sys_role_menu` VALUES (102, 2032);
INSERT INTO `sys_role_menu` VALUES (102, 2033);
INSERT INTO `sys_role_menu` VALUES (102, 2034);
INSERT INTO `sys_role_menu` VALUES (102, 2035);
INSERT INTO `sys_role_menu` VALUES (102, 2036);
INSERT INTO `sys_role_menu` VALUES (102, 2037);
INSERT INTO `sys_role_menu` VALUES (102, 2038);
INSERT INTO `sys_role_menu` VALUES (102, 2039);
INSERT INTO `sys_role_menu` VALUES (102, 2040);
INSERT INTO `sys_role_menu` VALUES (102, 2048);
INSERT INTO `sys_role_menu` VALUES (102, 2049);
INSERT INTO `sys_role_menu` VALUES (103, 2011);
INSERT INTO `sys_role_menu` VALUES (103, 2012);
INSERT INTO `sys_role_menu` VALUES (103, 2016);
INSERT INTO `sys_role_menu` VALUES (103, 2048);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` bigint NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint NULL DEFAULT NULL COMMENT '部门ID',
  `user_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '手机号码',
  `sex` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '密码',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime NULL DEFAULT NULL COMMENT '最后登录时间',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '备注',
  `faculty_id` bigint NULL DEFAULT NULL COMMENT '教职工编号',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 106 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '用户信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 103, 'admin', '若依', '00', 'ry@163.com', '15888888888', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2023-05-29 16:27:35', 'admin', '2023-05-28 07:54:27', '', '2023-05-29 16:27:35', '管理员', NULL);
INSERT INTO `sys_user` VALUES (2, 105, 'ry', '若依', '00', 'ry@qq.com', '15666666666', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2023-05-28 07:54:27', 'admin', '2023-05-28 07:54:27', '', NULL, '测试员', NULL);
INSERT INTO `sys_user` VALUES (100, NULL, '会计', '会计', '00', '', '', '0', '', '$2a$10$GIAJySInsBxv1mmg9FwDeOzmn.oVTnCGvngbwy0Uye2MJYj2hJsuK', '0', '0', '', NULL, 'admin', '2023-05-27 15:16:18', '', NULL, NULL, 2);
INSERT INTO `sys_user` VALUES (101, NULL, '张三', '张三', '00', '', '', '0', '', '$2a$10$IDvnC7OcqO2h/cIiuyBvwe0iu8VoLH.sL.1htCChn9zdQ3NGhweJe', '0', '0', '127.0.0.1', '2023-05-29 15:50:36', 'admin', '2023-05-27 15:16:43', '', '2023-05-29 15:50:36', NULL, 1);
INSERT INTO `sys_user` VALUES (102, NULL, '管理员', '管理员', '00', '', '', '0', '', '$2a$10$3qU6MrBmHx1DOD2vGym.cOpsKkuoom/giTLbAenY4BmmE0a2Izc1y', '0', '0', '127.0.0.1', '2023-05-29 16:25:25', 'admin', '2023-05-27 19:22:32', '', '2023-05-29 16:25:25', NULL, NULL);
INSERT INTO `sys_user` VALUES (103, NULL, '银行', '银行', '00', '', '', '0', '', '$2a$10$2.kU9IFrlDDZvxf63yUQEuPTZGeZcsrn99oR0Kf97IzoTS2MloovG', '0', '0', '', NULL, 'admin', '2023-05-27 19:23:11', '', NULL, NULL, NULL);
INSERT INTO `sys_user` VALUES (104, NULL, '李四', '李四', '00', '', '', '0', '', '$2a$10$sznQVulcqjy97edpdmzpDuwUfY1aWSHBnv/HI8Hg7L1dY5uVi1w2u', '0', '0', '127.0.0.1', '2023-05-29 13:09:01', 'admin', '2023-05-28 15:15:59', '', '2023-05-29 13:09:01', NULL, NULL);
INSERT INTO `sys_user` VALUES (105, NULL, '王五', '王五', '00', '', '', '0', '', '$2a$10$dp312W9GwZDhNFqdmvTkY.gkOtzoo0/sI9eTZ6h5hNNLKqPFaTNa.', '0', '0', '127.0.0.1', '2023-05-29 08:44:08', 'admin', '2023-05-28 15:27:55', '', '2023-05-29 08:44:08', NULL, 5);

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post`  (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `post_id` bigint NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`, `post_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '用户与岗位关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES (1, 1);
INSERT INTO `sys_user_post` VALUES (2, 2);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `role_id` bigint NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '用户和角色关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 1);
INSERT INTO `sys_user_role` VALUES (2, 2);
INSERT INTO `sys_user_role` VALUES (100, 100);
INSERT INTO `sys_user_role` VALUES (101, 101);
INSERT INTO `sys_user_role` VALUES (102, 102);
INSERT INTO `sys_user_role` VALUES (103, 103);
INSERT INTO `sys_user_role` VALUES (104, 101);
INSERT INTO `sys_user_role` VALUES (105, 101);

-- ----------------------------
-- Table structure for title
-- ----------------------------
DROP TABLE IF EXISTS `title`;
CREATE TABLE `title`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `des` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '职称',
  `wage` int NOT NULL COMMENT '基本工资',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '职称表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of title
-- ----------------------------
INSERT INTO `title` VALUES (1, '教授', 6000);
INSERT INTO `title` VALUES (2, '副教授', 5000);
INSERT INTO `title` VALUES (3, '讲师', 4000);
INSERT INTO `title` VALUES (4, '助教', 3000);
INSERT INTO `title` VALUES (5, '无', 0);

-- ----------------------------
-- Table structure for work
-- ----------------------------
DROP TABLE IF EXISTS `work`;
CREATE TABLE `work`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `des` varchar(90) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '描述',
  `hour` int NULL DEFAULT 0 COMMENT '时长',
  `faculty_id` bigint NULL DEFAULT NULL COMMENT '教职工编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1112 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '课时任务表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of work
-- ----------------------------
INSERT INTO `work` VALUES (1, '大学语文', 15, 28);
INSERT INTO `work` VALUES (2, '大学英语', 13, 28);
INSERT INTO `work` VALUES (3, '高等数学', 12, 11);
INSERT INTO `work` VALUES (4, '大学语文', 12, 26);
INSERT INTO `work` VALUES (5, '计算机网络', 10, 5);
INSERT INTO `work` VALUES (6, '大学英语', 17, 10);
INSERT INTO `work` VALUES (7, '数据库原理', 23, 6);
INSERT INTO `work` VALUES (8, '工科数学分析', 12, 25);
INSERT INTO `work` VALUES (9, '数理逻辑和集合论', 18, 14);
INSERT INTO `work` VALUES (10, '微观经济学', 6, 5);
INSERT INTO `work` VALUES (11, '宏观经济学', 7, 26);
INSERT INTO `work` VALUES (12, '计量经济学', 15, 26);
INSERT INTO `work` VALUES (13, '金融理论', 6, 12);
INSERT INTO `work` VALUES (14, '发展经济学', 16, 25);
INSERT INTO `work` VALUES (15, '制度经济学', 18, 29);
INSERT INTO `work` VALUES (16, 'WTO专题', 9, 14);
INSERT INTO `work` VALUES (17, '国际贸易实务', 7, 8);
INSERT INTO `work` VALUES (18, '国际企业管理', 11, 5);
INSERT INTO `work` VALUES (19, '人力资源管理', 15, 4);
INSERT INTO `work` VALUES (20, '西方经济学', 19, 21);
INSERT INTO `work` VALUES (21, '国际经济学', 16, 23);
INSERT INTO `work` VALUES (22, '电子商务概论', 9, 14);
INSERT INTO `work` VALUES (23, '网络营销', 6, 22);
INSERT INTO `work` VALUES (24, '信息系统概论', 16, 10);
INSERT INTO `work` VALUES (25, '保险学', 14, 24);
INSERT INTO `work` VALUES (26, '金融学', 19, 12);
INSERT INTO `work` VALUES (27, '国际金融学', 8, 10);
INSERT INTO `work` VALUES (28, '证券投资学', 12, 28);
INSERT INTO `work` VALUES (29, '会计学', 14, 15);
INSERT INTO `work` VALUES (30, '财务管理', 9, 5);
INSERT INTO `work` VALUES (31, '审计学', 13, 1);
INSERT INTO `work` VALUES (32, '艺术设计概论', 8, 32);
INSERT INTO `work` VALUES (33, '中国艺术设计史', 7, 11);
INSERT INTO `work` VALUES (34, '外国艺术设计史', 9, 5);
INSERT INTO `work` VALUES (35, '艺术考古学', 9, 30);
INSERT INTO `work` VALUES (36, '文化史迹考察', 14, 17);
INSERT INTO `work` VALUES (37, '设计素描', 12, 25);
INSERT INTO `work` VALUES (38, '设计表达技法', 6, 10);
INSERT INTO `work` VALUES (39, '平面构成与设计', 12, 29);
INSERT INTO `work` VALUES (40, '立体构成与设计', 19, 2);
INSERT INTO `work` VALUES (41, '工业设计导论', 16, 31);
INSERT INTO `work` VALUES (42, '工业设计史', 8, 27);
INSERT INTO `work` VALUES (43, '工程制图', 18, 8);
INSERT INTO `work` VALUES (44, '机械设计基础', 18, 22);
INSERT INTO `work` VALUES (45, '技术美学', 19, 10);
INSERT INTO `work` VALUES (46, '动画艺术概论', 18, 16);
INSERT INTO `work` VALUES (47, '电影视听语言', 18, 2);
INSERT INTO `work` VALUES (48, '分镜头剧本设计', 5, 26);
INSERT INTO `work` VALUES (49, '导演基础', 16, 12);
INSERT INTO `work` VALUES (50, '动画片创作', 14, 26);
INSERT INTO `work` VALUES (51, '产品设计原理', 20, 21);
INSERT INTO `work` VALUES (52, '产品创新设计', 6, 7);
INSERT INTO `work` VALUES (53, '结构力学', 20, 11);
INSERT INTO `work` VALUES (54, '材料力学', 10, 10);
INSERT INTO `work` VALUES (55, '建筑材料', 8, 30);
INSERT INTO `work` VALUES (56, '流体力学', 20, 16);
INSERT INTO `work` VALUES (57, '荷载与结构设计原理', 9, 18);
INSERT INTO `work` VALUES (58, '钢筋混凝土结构', 18, 2);
INSERT INTO `work` VALUES (59, '地基基础', 18, 30);
INSERT INTO `work` VALUES (60, '高层建筑结构', 18, 11);
INSERT INTO `work` VALUES (61, '地下工程', 9, 24);
INSERT INTO `work` VALUES (62, '建筑结构抗震 ', 5, 9);
INSERT INTO `work` VALUES (63, '工程经济', 11, 31);
INSERT INTO `work` VALUES (64, '建设项目管理', 15, 21);
INSERT INTO `work` VALUES (65, 'C语言程序设计', 17, 23);
INSERT INTO `work` VALUES (66, '计算机组成原理', 17, 28);
INSERT INTO `work` VALUES (67, '数据结构', 11, 3);
INSERT INTO `work` VALUES (68, '操作系统', 6, 31);
INSERT INTO `work` VALUES (69, '微机原理', 19, 17);
INSERT INTO `work` VALUES (70, '计算机网络', 14, 26);
INSERT INTO `work` VALUES (71, '计算机系统结构', 19, 33);
INSERT INTO `work` VALUES (72, '软件工程', 15, 21);
INSERT INTO `work` VALUES (73, '面向对象程序设计', 7, 4);
INSERT INTO `work` VALUES (74, '分布式系统', 8, 30);
INSERT INTO `work` VALUES (75, '软件工程', 7, 4);
INSERT INTO `work` VALUES (76, 'Oracle数据库系统', 13, 9);
INSERT INTO `work` VALUES (77, '电子商务', 19, 23);
INSERT INTO `work` VALUES (78, '物流管理', 7, 18);
INSERT INTO `work` VALUES (79, '商务网站建设', 15, 15);
INSERT INTO `work` VALUES (80, '计算机图形学', 17, 26);
INSERT INTO `work` VALUES (81, '人工智能', 5, 15);
INSERT INTO `work` VALUES (82, '数字信号处理', 7, 18);
INSERT INTO `work` VALUES (83, '信息对抗', 15, 19);
INSERT INTO `work` VALUES (84, '移动计算', 6, 14);
INSERT INTO `work` VALUES (85, '微机系统', 6, 26);
INSERT INTO `work` VALUES (86, '人机界面设计', 13, 29);
INSERT INTO `work` VALUES (87, '计算机网络', 5, 14);
INSERT INTO `work` VALUES (88, '信息安全', 15, 27);
INSERT INTO `work` VALUES (89, '电子技术', 12, 23);
INSERT INTO `work` VALUES (90, '程序设计', 5, 26);
INSERT INTO `work` VALUES (91, '商务网站建设', 16, 11);
INSERT INTO `work` VALUES (92, '供应链管理', 11, 17);
INSERT INTO `work` VALUES (93, '国际商务管理', 12, 7);
INSERT INTO `work` VALUES (94, '物流管理', 13, 32);
INSERT INTO `work` VALUES (95, '编译原理', 15, 8);
INSERT INTO `work` VALUES (96, '管理学原理', 11, 5);
INSERT INTO `work` VALUES (97, '电子商务', 13, 26);
INSERT INTO `work` VALUES (98, '应用密码学基础', 18, 2);
INSERT INTO `work` VALUES (99, '计算机通讯原理', 17, 14);
INSERT INTO `work` VALUES (100, '数论与有限域基础', 18, 27);
INSERT INTO `work` VALUES (101, '计算机系统结构', 10, 28);
INSERT INTO `work` VALUES (102, '数字图像处理', 8, 28);
INSERT INTO `work` VALUES (103, '多媒体信息处理技术', 9, 11);
INSERT INTO `work` VALUES (104, '算法设计与分析', 18, 26);
INSERT INTO `work` VALUES (105, '汇编语言', 14, 5);
INSERT INTO `work` VALUES (106, '计算机电路基础', 19, 10);
INSERT INTO `work` VALUES (107, '信息隐藏技术', 10, 6);
INSERT INTO `work` VALUES (108, '网络安全编程', 17, 25);
INSERT INTO `work` VALUES (109, '网络安全风险评估', 17, 14);
INSERT INTO `work` VALUES (110, '信息安全数学基础', 10, 5);
INSERT INTO `work` VALUES (111, '现代艺术', 12, 10);
INSERT INTO `work` VALUES (1001, '', 0, 11);
INSERT INTO `work` VALUES (1002, '', 0, 17);
INSERT INTO `work` VALUES (1003, '', 0, 3);
INSERT INTO `work` VALUES (1004, '', 0, 5);
INSERT INTO `work` VALUES (1005, '', 0, 10);
INSERT INTO `work` VALUES (1006, '', 0, 7);
INSERT INTO `work` VALUES (1007, '', 0, 20);
INSERT INTO `work` VALUES (1008, '', 0, 5);
INSERT INTO `work` VALUES (1009, '', 0, 13);
INSERT INTO `work` VALUES (1010, '', 0, 27);
INSERT INTO `work` VALUES (1011, '', 0, 8);
INSERT INTO `work` VALUES (1012, '', 0, 29);
INSERT INTO `work` VALUES (1013, '', 0, 28);
INSERT INTO `work` VALUES (1014, '', 0, 8);
INSERT INTO `work` VALUES (1015, '', 0, 16);
INSERT INTO `work` VALUES (1016, '', 0, 19);
INSERT INTO `work` VALUES (1017, '', 0, 33);
INSERT INTO `work` VALUES (1018, '', 0, 31);
INSERT INTO `work` VALUES (1019, '', 0, 18);
INSERT INTO `work` VALUES (1020, '', 0, 21);
INSERT INTO `work` VALUES (1021, '', 0, 8);
INSERT INTO `work` VALUES (1022, '', 0, 27);
INSERT INTO `work` VALUES (1023, '', 0, 6);
INSERT INTO `work` VALUES (1024, '', 0, 25);
INSERT INTO `work` VALUES (1025, '', 0, 2);
INSERT INTO `work` VALUES (1026, '', 0, 6);
INSERT INTO `work` VALUES (1027, '', 0, 11);
INSERT INTO `work` VALUES (1028, '', 0, 16);
INSERT INTO `work` VALUES (1029, '', 0, 7);
INSERT INTO `work` VALUES (1030, '', 0, 22);
INSERT INTO `work` VALUES (1031, '', 0, 21);
INSERT INTO `work` VALUES (1032, '', 0, 21);
INSERT INTO `work` VALUES (1033, '', 0, 21);
INSERT INTO `work` VALUES (1034, '', 0, 31);
INSERT INTO `work` VALUES (1035, '', 0, 7);
INSERT INTO `work` VALUES (1036, '', 0, 15);
INSERT INTO `work` VALUES (1037, '', 0, 33);
INSERT INTO `work` VALUES (1038, '', 0, 8);
INSERT INTO `work` VALUES (1039, '', 0, 16);
INSERT INTO `work` VALUES (1040, '', 0, 4);
INSERT INTO `work` VALUES (1041, '', 0, 18);
INSERT INTO `work` VALUES (1042, '', 0, 2);
INSERT INTO `work` VALUES (1043, '', 0, 9);
INSERT INTO `work` VALUES (1044, '', 0, 27);
INSERT INTO `work` VALUES (1045, '', 0, 14);
INSERT INTO `work` VALUES (1046, '', 0, 18);
INSERT INTO `work` VALUES (1047, '', 0, 24);
INSERT INTO `work` VALUES (1048, '', 0, 8);
INSERT INTO `work` VALUES (1049, '', 0, 8);
INSERT INTO `work` VALUES (1050, '', 0, 15);
INSERT INTO `work` VALUES (1051, '', 0, 30);
INSERT INTO `work` VALUES (1052, '', 0, 10);
INSERT INTO `work` VALUES (1053, '', 0, 5);
INSERT INTO `work` VALUES (1054, '', 0, 20);
INSERT INTO `work` VALUES (1055, '', 0, 29);
INSERT INTO `work` VALUES (1056, '', 0, 3);
INSERT INTO `work` VALUES (1057, '', 0, 4);
INSERT INTO `work` VALUES (1058, '', 0, 26);
INSERT INTO `work` VALUES (1059, '', 0, 10);
INSERT INTO `work` VALUES (1060, '', 0, 20);
INSERT INTO `work` VALUES (1061, '', 0, 30);
INSERT INTO `work` VALUES (1062, '', 0, 9);
INSERT INTO `work` VALUES (1063, '', 0, 17);
INSERT INTO `work` VALUES (1064, '', 0, 22);
INSERT INTO `work` VALUES (1065, '', 0, 33);
INSERT INTO `work` VALUES (1066, '', 0, 11);
INSERT INTO `work` VALUES (1067, '', 0, 9);
INSERT INTO `work` VALUES (1068, '', 0, 30);
INSERT INTO `work` VALUES (1069, '', 0, 12);
INSERT INTO `work` VALUES (1070, '', 0, 7);
INSERT INTO `work` VALUES (1071, '', 0, 22);
INSERT INTO `work` VALUES (1072, '', 0, 18);
INSERT INTO `work` VALUES (1073, '', 0, 6);
INSERT INTO `work` VALUES (1074, '', 0, 22);
INSERT INTO `work` VALUES (1075, '', 0, 31);
INSERT INTO `work` VALUES (1076, '', 0, 9);
INSERT INTO `work` VALUES (1077, '', 0, 5);
INSERT INTO `work` VALUES (1078, '', 0, 5);
INSERT INTO `work` VALUES (1079, '', 0, 32);
INSERT INTO `work` VALUES (1080, '', 0, 33);
INSERT INTO `work` VALUES (1081, '', 0, 12);
INSERT INTO `work` VALUES (1082, '', 0, 24);
INSERT INTO `work` VALUES (1083, '', 0, 25);
INSERT INTO `work` VALUES (1084, '', 0, 19);
INSERT INTO `work` VALUES (1085, '', 0, 6);
INSERT INTO `work` VALUES (1086, '', 0, 12);
INSERT INTO `work` VALUES (1087, '', 0, 20);
INSERT INTO `work` VALUES (1088, '', 0, 13);
INSERT INTO `work` VALUES (1089, '', 0, 10);
INSERT INTO `work` VALUES (1090, '', 0, 30);
INSERT INTO `work` VALUES (1091, '', 0, 6);
INSERT INTO `work` VALUES (1092, '', 0, 4);
INSERT INTO `work` VALUES (1093, '', 0, 21);
INSERT INTO `work` VALUES (1094, '', 0, 16);
INSERT INTO `work` VALUES (1095, '', 0, 20);
INSERT INTO `work` VALUES (1096, '', 0, 26);
INSERT INTO `work` VALUES (1097, '', 0, 21);
INSERT INTO `work` VALUES (1098, '', 0, 29);
INSERT INTO `work` VALUES (1099, '', 0, 33);
INSERT INTO `work` VALUES (1100, '', 0, 1);
INSERT INTO `work` VALUES (1101, '', 0, 2);
INSERT INTO `work` VALUES (1102, '', 0, 21);
INSERT INTO `work` VALUES (1103, '', 0, 3);
INSERT INTO `work` VALUES (1104, '', 0, 19);
INSERT INTO `work` VALUES (1105, '', 0, 3);
INSERT INTO `work` VALUES (1106, '', 0, 22);
INSERT INTO `work` VALUES (1107, '', 0, 26);
INSERT INTO `work` VALUES (1108, '', 0, 19);
INSERT INTO `work` VALUES (1109, '', 0, 5);
INSERT INTO `work` VALUES (1110, '', 0, 31);
INSERT INTO `work` VALUES (1111, '', 0, 13);

SET FOREIGN_KEY_CHECKS = 1;
