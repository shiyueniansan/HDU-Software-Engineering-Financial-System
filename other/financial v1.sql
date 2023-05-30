/*
 Navicat Premium Data Transfer

 Source Server         : laptop
 Source Server Type    : MySQL
 Source Server Version : 80031
 Source Host           : localhost:3306
 Source Schema         : financial

 Target Server Type    : MySQL
 Target Server Version : 80031
 File Encoding         : 65001

 Date: 30/05/2023 18:57:28
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for affair
-- ----------------------------
DROP TABLE IF EXISTS `affair`;
CREATE TABLE `affair`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `faculty_id` bigint NOT NULL COMMENT '教职工编号',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '姓名',
  `month` int NOT NULL COMMENT '月份',
  `des` varchar(90) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '描述',
  `hour` float NOT NULL DEFAULT 0 COMMENT '时长',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1112 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '事务（课时任务）表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of affair
-- ----------------------------
INSERT INTO `affair` VALUES (1, 28, '', 0, '大学语文', 15);
INSERT INTO `affair` VALUES (2, 28, '', 0, '大学英语', 13);
INSERT INTO `affair` VALUES (3, 11, '', 0, '高等数学', 12);
INSERT INTO `affair` VALUES (4, 26, '', 0, '大学语文', 12);
INSERT INTO `affair` VALUES (5, 5, '', 0, '计算机网络', 10);
INSERT INTO `affair` VALUES (6, 10, '', 0, '大学英语', 17);
INSERT INTO `affair` VALUES (7, 6, '', 0, '数据库原理', 23);
INSERT INTO `affair` VALUES (8, 25, '', 0, '工科数学分析', 12);
INSERT INTO `affair` VALUES (9, 14, '', 0, '数理逻辑和集合论', 18);
INSERT INTO `affair` VALUES (10, 5, '', 0, '微观经济学', 6);
INSERT INTO `affair` VALUES (11, 26, '', 0, '宏观经济学', 7);
INSERT INTO `affair` VALUES (12, 26, '', 0, '计量经济学', 15);
INSERT INTO `affair` VALUES (13, 12, '', 0, '金融理论', 6);
INSERT INTO `affair` VALUES (14, 25, '', 0, '发展经济学', 16);
INSERT INTO `affair` VALUES (15, 29, '', 0, '制度经济学', 18);
INSERT INTO `affair` VALUES (16, 14, '', 0, 'WTO专题', 9);
INSERT INTO `affair` VALUES (17, 8, '', 0, '国际贸易实务', 7);
INSERT INTO `affair` VALUES (18, 5, '', 0, '国际企业管理', 11);
INSERT INTO `affair` VALUES (19, 4, '', 0, '人力资源管理', 15);
INSERT INTO `affair` VALUES (20, 21, '', 0, '西方经济学', 19);
INSERT INTO `affair` VALUES (21, 23, '', 0, '国际经济学', 16);
INSERT INTO `affair` VALUES (22, 14, '', 0, '电子商务概论', 9);
INSERT INTO `affair` VALUES (23, 22, '', 0, '网络营销', 6);
INSERT INTO `affair` VALUES (24, 10, '', 0, '信息系统概论', 16);
INSERT INTO `affair` VALUES (25, 24, '', 0, '保险学', 14);
INSERT INTO `affair` VALUES (26, 12, '', 0, '金融学', 19);
INSERT INTO `affair` VALUES (27, 10, '', 0, '国际金融学', 8);
INSERT INTO `affair` VALUES (28, 28, '', 0, '证券投资学', 12);
INSERT INTO `affair` VALUES (29, 15, '', 0, '会计学', 14);
INSERT INTO `affair` VALUES (30, 5, '', 0, '财务管理', 9);
INSERT INTO `affair` VALUES (31, 1, '', 0, '审计学', 13);
INSERT INTO `affair` VALUES (32, 32, '', 0, '艺术设计概论', 8);
INSERT INTO `affair` VALUES (33, 11, '', 0, '中国艺术设计史', 7);
INSERT INTO `affair` VALUES (34, 5, '', 0, '外国艺术设计史', 9);
INSERT INTO `affair` VALUES (35, 30, '', 0, '艺术考古学', 9);
INSERT INTO `affair` VALUES (36, 17, '', 0, '文化史迹考察', 14);
INSERT INTO `affair` VALUES (37, 25, '', 0, '设计素描', 12);
INSERT INTO `affair` VALUES (38, 10, '', 0, '设计表达技法', 6);
INSERT INTO `affair` VALUES (39, 29, '', 0, '平面构成与设计', 12);
INSERT INTO `affair` VALUES (40, 2, '', 0, '立体构成与设计', 19);
INSERT INTO `affair` VALUES (41, 31, '', 0, '工业设计导论', 16);
INSERT INTO `affair` VALUES (42, 27, '', 0, '工业设计史', 8);
INSERT INTO `affair` VALUES (43, 8, '', 0, '工程制图', 18);
INSERT INTO `affair` VALUES (44, 22, '', 0, '机械设计基础', 18);
INSERT INTO `affair` VALUES (45, 10, '', 0, '技术美学', 19);
INSERT INTO `affair` VALUES (46, 16, '', 0, '动画艺术概论', 18);
INSERT INTO `affair` VALUES (47, 2, '', 0, '电影视听语言', 18);
INSERT INTO `affair` VALUES (48, 26, '', 0, '分镜头剧本设计', 5);
INSERT INTO `affair` VALUES (49, 12, '', 0, '导演基础', 16);
INSERT INTO `affair` VALUES (50, 26, '', 0, '动画片创作', 14);
INSERT INTO `affair` VALUES (51, 21, '', 0, '产品设计原理', 20);
INSERT INTO `affair` VALUES (52, 7, '', 0, '产品创新设计', 6);
INSERT INTO `affair` VALUES (53, 11, '', 0, '结构力学', 20);
INSERT INTO `affair` VALUES (54, 10, '', 0, '材料力学', 10);
INSERT INTO `affair` VALUES (55, 30, '', 0, '建筑材料', 8);
INSERT INTO `affair` VALUES (56, 16, '', 0, '流体力学', 20);
INSERT INTO `affair` VALUES (57, 18, '', 0, '荷载与结构设计原理', 9);
INSERT INTO `affair` VALUES (58, 2, '', 0, '钢筋混凝土结构', 18);
INSERT INTO `affair` VALUES (59, 30, '', 0, '地基基础', 18);
INSERT INTO `affair` VALUES (60, 11, '', 0, '高层建筑结构', 18);
INSERT INTO `affair` VALUES (61, 24, '', 0, '地下工程', 9);
INSERT INTO `affair` VALUES (62, 9, '', 0, '建筑结构抗震 ', 5);
INSERT INTO `affair` VALUES (63, 31, '', 0, '工程经济', 11);
INSERT INTO `affair` VALUES (64, 21, '', 0, '建设项目管理', 15);
INSERT INTO `affair` VALUES (65, 23, '', 0, 'C语言程序设计', 17);
INSERT INTO `affair` VALUES (66, 28, '', 0, '计算机组成原理', 17);
INSERT INTO `affair` VALUES (67, 3, '', 0, '数据结构', 11);
INSERT INTO `affair` VALUES (68, 31, '', 0, '操作系统', 6);
INSERT INTO `affair` VALUES (69, 17, '', 0, '微机原理', 19);
INSERT INTO `affair` VALUES (70, 26, '', 0, '计算机网络', 14);
INSERT INTO `affair` VALUES (71, 33, '', 0, '计算机系统结构', 19);
INSERT INTO `affair` VALUES (72, 21, '', 0, '软件工程', 15);
INSERT INTO `affair` VALUES (73, 4, '', 0, '面向对象程序设计', 7);
INSERT INTO `affair` VALUES (74, 30, '', 0, '分布式系统', 8);
INSERT INTO `affair` VALUES (75, 4, '', 0, '软件工程', 7);
INSERT INTO `affair` VALUES (76, 9, '', 0, 'Oracle数据库系统', 13);
INSERT INTO `affair` VALUES (77, 23, '', 0, '电子商务', 19);
INSERT INTO `affair` VALUES (78, 18, '', 0, '物流管理', 7);
INSERT INTO `affair` VALUES (79, 15, '', 0, '商务网站建设', 15);
INSERT INTO `affair` VALUES (80, 26, '', 0, '计算机图形学', 17);
INSERT INTO `affair` VALUES (81, 15, '', 0, '人工智能', 5);
INSERT INTO `affair` VALUES (82, 18, '', 0, '数字信号处理', 7);
INSERT INTO `affair` VALUES (83, 19, '', 0, '信息对抗', 15);
INSERT INTO `affair` VALUES (84, 14, '', 0, '移动计算', 6);
INSERT INTO `affair` VALUES (85, 26, '', 0, '微机系统', 6);
INSERT INTO `affair` VALUES (86, 29, '', 0, '人机界面设计', 13);
INSERT INTO `affair` VALUES (87, 14, '', 0, '计算机网络', 5);
INSERT INTO `affair` VALUES (88, 27, '', 0, '信息安全', 15);
INSERT INTO `affair` VALUES (89, 23, '', 0, '电子技术', 12);
INSERT INTO `affair` VALUES (90, 26, '', 0, '程序设计', 5);
INSERT INTO `affair` VALUES (91, 11, '', 0, '商务网站建设', 16);
INSERT INTO `affair` VALUES (92, 17, '', 0, '供应链管理', 11);
INSERT INTO `affair` VALUES (93, 7, '', 0, '国际商务管理', 12);
INSERT INTO `affair` VALUES (94, 32, '', 0, '物流管理', 13);
INSERT INTO `affair` VALUES (95, 8, '', 0, '编译原理', 15);
INSERT INTO `affair` VALUES (96, 5, '', 0, '管理学原理', 11);
INSERT INTO `affair` VALUES (97, 26, '', 0, '电子商务', 13);
INSERT INTO `affair` VALUES (98, 2, '', 0, '应用密码学基础', 18);
INSERT INTO `affair` VALUES (99, 14, '', 0, '计算机通讯原理', 17);
INSERT INTO `affair` VALUES (100, 27, '', 0, '数论与有限域基础', 18);
INSERT INTO `affair` VALUES (101, 28, '', 0, '计算机系统结构', 10);
INSERT INTO `affair` VALUES (102, 28, '', 0, '数字图像处理', 8);
INSERT INTO `affair` VALUES (103, 11, '', 0, '多媒体信息处理技术', 9);
INSERT INTO `affair` VALUES (104, 26, '', 0, '算法设计与分析', 18);
INSERT INTO `affair` VALUES (105, 5, '', 0, '汇编语言', 14);
INSERT INTO `affair` VALUES (106, 10, '', 0, '计算机电路基础', 19);
INSERT INTO `affair` VALUES (107, 6, '', 0, '信息隐藏技术', 10);
INSERT INTO `affair` VALUES (108, 25, '', 0, '网络安全编程', 17);
INSERT INTO `affair` VALUES (109, 14, '', 0, '网络安全风险评估', 17);
INSERT INTO `affair` VALUES (110, 5, '', 0, '信息安全数学基础', 10);
INSERT INTO `affair` VALUES (111, 10, '', 0, '现代艺术', 12);
INSERT INTO `affair` VALUES (1001, 11, '', 0, '', 0);
INSERT INTO `affair` VALUES (1002, 17, '', 0, '', 0);
INSERT INTO `affair` VALUES (1003, 3, '', 0, '', 0);
INSERT INTO `affair` VALUES (1004, 5, '', 0, '', 0);
INSERT INTO `affair` VALUES (1005, 10, '', 0, '', 0);
INSERT INTO `affair` VALUES (1006, 7, '', 0, '', 0);
INSERT INTO `affair` VALUES (1007, 20, '', 0, '', 0);
INSERT INTO `affair` VALUES (1008, 5, '', 0, '', 0);
INSERT INTO `affair` VALUES (1009, 13, '', 0, '', 0);
INSERT INTO `affair` VALUES (1010, 27, '', 0, '', 0);
INSERT INTO `affair` VALUES (1011, 8, '', 0, '', 0);
INSERT INTO `affair` VALUES (1012, 29, '', 0, '', 0);
INSERT INTO `affair` VALUES (1013, 28, '', 0, '', 0);
INSERT INTO `affair` VALUES (1014, 8, '', 0, '', 0);
INSERT INTO `affair` VALUES (1015, 16, '', 0, '', 0);
INSERT INTO `affair` VALUES (1016, 19, '', 0, '', 0);
INSERT INTO `affair` VALUES (1017, 33, '', 0, '', 0);
INSERT INTO `affair` VALUES (1018, 31, '', 0, '', 0);
INSERT INTO `affair` VALUES (1019, 18, '', 0, '', 0);
INSERT INTO `affair` VALUES (1020, 21, '', 0, '', 0);
INSERT INTO `affair` VALUES (1021, 8, '', 0, '', 0);
INSERT INTO `affair` VALUES (1022, 27, '', 0, '', 0);
INSERT INTO `affair` VALUES (1023, 6, '', 0, '', 0);
INSERT INTO `affair` VALUES (1024, 25, '', 0, '', 0);
INSERT INTO `affair` VALUES (1025, 2, '', 0, '', 0);
INSERT INTO `affair` VALUES (1026, 6, '', 0, '', 0);
INSERT INTO `affair` VALUES (1027, 11, '', 0, '', 0);
INSERT INTO `affair` VALUES (1028, 16, '', 0, '', 0);
INSERT INTO `affair` VALUES (1029, 7, '', 0, '', 0);
INSERT INTO `affair` VALUES (1030, 22, '', 0, '', 0);
INSERT INTO `affair` VALUES (1031, 21, '', 0, '', 0);
INSERT INTO `affair` VALUES (1032, 21, '', 0, '', 0);
INSERT INTO `affair` VALUES (1033, 21, '', 0, '', 0);
INSERT INTO `affair` VALUES (1034, 31, '', 0, '', 0);
INSERT INTO `affair` VALUES (1035, 7, '', 0, '', 0);
INSERT INTO `affair` VALUES (1036, 15, '', 0, '', 0);
INSERT INTO `affair` VALUES (1037, 33, '', 0, '', 0);
INSERT INTO `affair` VALUES (1038, 8, '', 0, '', 0);
INSERT INTO `affair` VALUES (1039, 16, '', 0, '', 0);
INSERT INTO `affair` VALUES (1040, 4, '', 0, '', 0);
INSERT INTO `affair` VALUES (1041, 18, '', 0, '', 0);
INSERT INTO `affair` VALUES (1042, 2, '', 0, '', 0);
INSERT INTO `affair` VALUES (1043, 9, '', 0, '', 0);
INSERT INTO `affair` VALUES (1044, 27, '', 0, '', 0);
INSERT INTO `affair` VALUES (1045, 14, '', 0, '', 0);
INSERT INTO `affair` VALUES (1046, 18, '', 0, '', 0);
INSERT INTO `affair` VALUES (1047, 24, '', 0, '', 0);
INSERT INTO `affair` VALUES (1048, 8, '', 0, '', 0);
INSERT INTO `affair` VALUES (1049, 8, '', 0, '', 0);
INSERT INTO `affair` VALUES (1050, 15, '', 0, '', 0);
INSERT INTO `affair` VALUES (1051, 30, '', 0, '', 0);
INSERT INTO `affair` VALUES (1052, 10, '', 0, '', 0);
INSERT INTO `affair` VALUES (1053, 5, '', 0, '', 0);
INSERT INTO `affair` VALUES (1054, 20, '', 0, '', 0);
INSERT INTO `affair` VALUES (1055, 29, '', 0, '', 0);
INSERT INTO `affair` VALUES (1056, 3, '', 0, '', 0);
INSERT INTO `affair` VALUES (1057, 4, '', 0, '', 0);
INSERT INTO `affair` VALUES (1058, 26, '', 0, '', 0);
INSERT INTO `affair` VALUES (1059, 10, '', 0, '', 0);
INSERT INTO `affair` VALUES (1060, 20, '', 0, '', 0);
INSERT INTO `affair` VALUES (1061, 30, '', 0, '', 0);
INSERT INTO `affair` VALUES (1062, 9, '', 0, '', 0);
INSERT INTO `affair` VALUES (1063, 17, '', 0, '', 0);
INSERT INTO `affair` VALUES (1064, 22, '', 0, '', 0);
INSERT INTO `affair` VALUES (1065, 33, '', 0, '', 0);
INSERT INTO `affair` VALUES (1066, 11, '', 0, '', 0);
INSERT INTO `affair` VALUES (1067, 9, '', 0, '', 0);
INSERT INTO `affair` VALUES (1068, 30, '', 0, '', 0);
INSERT INTO `affair` VALUES (1069, 12, '', 0, '', 0);
INSERT INTO `affair` VALUES (1070, 7, '', 0, '', 0);
INSERT INTO `affair` VALUES (1071, 22, '', 0, '', 0);
INSERT INTO `affair` VALUES (1072, 18, '', 0, '', 0);
INSERT INTO `affair` VALUES (1073, 6, '', 0, '', 0);
INSERT INTO `affair` VALUES (1074, 22, '', 0, '', 0);
INSERT INTO `affair` VALUES (1075, 31, '', 0, '', 0);
INSERT INTO `affair` VALUES (1076, 9, '', 0, '', 0);
INSERT INTO `affair` VALUES (1077, 5, '', 0, '', 0);
INSERT INTO `affair` VALUES (1078, 5, '', 0, '', 0);
INSERT INTO `affair` VALUES (1079, 32, '', 0, '', 0);
INSERT INTO `affair` VALUES (1080, 33, '', 0, '', 0);
INSERT INTO `affair` VALUES (1081, 12, '', 0, '', 0);
INSERT INTO `affair` VALUES (1082, 24, '', 0, '', 0);
INSERT INTO `affair` VALUES (1083, 25, '', 0, '', 0);
INSERT INTO `affair` VALUES (1084, 19, '', 0, '', 0);
INSERT INTO `affair` VALUES (1085, 6, '', 0, '', 0);
INSERT INTO `affair` VALUES (1086, 12, '', 0, '', 0);
INSERT INTO `affair` VALUES (1087, 20, '', 0, '', 0);
INSERT INTO `affair` VALUES (1088, 13, '', 0, '', 0);
INSERT INTO `affair` VALUES (1089, 10, '', 0, '', 0);
INSERT INTO `affair` VALUES (1090, 30, '', 0, '', 0);
INSERT INTO `affair` VALUES (1091, 6, '', 0, '', 0);
INSERT INTO `affair` VALUES (1092, 4, '', 0, '', 0);
INSERT INTO `affair` VALUES (1093, 21, '', 0, '', 0);
INSERT INTO `affair` VALUES (1094, 16, '', 0, '', 0);
INSERT INTO `affair` VALUES (1095, 20, '', 0, '', 0);
INSERT INTO `affair` VALUES (1096, 26, '', 0, '', 0);
INSERT INTO `affair` VALUES (1097, 21, '', 0, '', 0);
INSERT INTO `affair` VALUES (1098, 29, '', 0, '', 0);
INSERT INTO `affair` VALUES (1099, 33, '', 0, '', 0);
INSERT INTO `affair` VALUES (1100, 1, '', 0, '', 0);
INSERT INTO `affair` VALUES (1101, 2, '', 0, '', 0);
INSERT INTO `affair` VALUES (1102, 21, '', 0, '', 0);
INSERT INTO `affair` VALUES (1103, 3, '', 0, '', 0);
INSERT INTO `affair` VALUES (1104, 19, '', 0, '', 0);
INSERT INTO `affair` VALUES (1105, 3, '', 0, '', 0);
INSERT INTO `affair` VALUES (1106, 22, '', 0, '', 0);
INSERT INTO `affair` VALUES (1107, 26, '', 0, '', 0);
INSERT INTO `affair` VALUES (1108, 19, '', 0, '', 0);
INSERT INTO `affair` VALUES (1109, 5, '', 0, '', 0);
INSERT INTO `affair` VALUES (1110, 31, '', 0, '', 0);
INSERT INTO `affair` VALUES (1111, 13, '', 0, '', 0);

-- ----------------------------
-- Table structure for faculty
-- ----------------------------
DROP TABLE IF EXISTS `faculty`;
CREATE TABLE `faculty`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '姓名',
  `type` int NOT NULL COMMENT '教师/职工',
  `title` int NULL DEFAULT 0 COMMENT '职称',
  `job` int NULL DEFAULT 0 COMMENT '职务',
  `basic_pay` float NULL DEFAULT 0,
  `living_subsidy` float NULL DEFAULT 0,
  `reading_subsidy` float NULL DEFAULT 0,
  `transportation_subsidy` float NULL DEFAULT 0,
  `washing_subsidy` float NULL DEFAULT 0,
  `quota_hour` float NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `staff_position`(`job` ASC) USING BTREE,
  INDEX `professional_title`(`title` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '教职工表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of faculty
-- ----------------------------
INSERT INTO `faculty` VALUES (1, '赵四', 0, 1, 6, NULL, NULL, NULL, 0, 0, 0);
INSERT INTO `faculty` VALUES (2, '张全', 1, 1, 1, NULL, NULL, NULL, 0, 0, 0);
INSERT INTO `faculty` VALUES (3, '李四', 0, 3, 9, NULL, NULL, NULL, 0, 0, 0);
INSERT INTO `faculty` VALUES (4, '赵红', 0, 1, 8, NULL, NULL, NULL, 0, 0, 0);
INSERT INTO `faculty` VALUES (5, '李四', 0, 1, 9, NULL, NULL, NULL, 0, 0, 0);
INSERT INTO `faculty` VALUES (6, '赵红', 0, 2, 2, NULL, NULL, NULL, 0, 0, 0);
INSERT INTO `faculty` VALUES (7, '王万', 0, 4, 3, NULL, NULL, NULL, 0, 0, 0);
INSERT INTO `faculty` VALUES (8, '大江', 1, 1, 6, NULL, NULL, NULL, 0, 0, 0);
INSERT INTO `faculty` VALUES (9, '李勇', 0, 4, 3, NULL, NULL, NULL, 0, 0, 0);
INSERT INTO `faculty` VALUES (10, '王兑', 0, 2, 6, NULL, NULL, NULL, 0, 0, 0);
INSERT INTO `faculty` VALUES (11, '李红', 0, 4, 4, NULL, NULL, NULL, 0, 0, 0);
INSERT INTO `faculty` VALUES (12, '陈坤', 0, 3, 4, NULL, NULL, NULL, 0, 0, 0);
INSERT INTO `faculty` VALUES (13, '赵爱国', 0, 3, 1, NULL, NULL, NULL, 0, 0, 0);
INSERT INTO `faculty` VALUES (14, '李白', 0, 3, 8, NULL, NULL, NULL, 0, 0, 0);
INSERT INTO `faculty` VALUES (15, '僪琳瑜', 0, 2, 6, NULL, NULL, NULL, 0, 0, 0);
INSERT INTO `faculty` VALUES (16, '卞芊丽', 0, 3, 2, NULL, NULL, NULL, 0, 0, 0);
INSERT INTO `faculty` VALUES (17, '过媛女', 0, 4, 6, NULL, NULL, NULL, 0, 0, 0);
INSERT INTO `faculty` VALUES (18, '蚁芷蝶', 0, 4, 4, NULL, NULL, NULL, 0, 0, 0);
INSERT INTO `faculty` VALUES (19, '官兴邦', 0, 2, 8, NULL, NULL, NULL, 0, 0, 0);
INSERT INTO `faculty` VALUES (20, '甄代桃', 0, 3, 9, NULL, NULL, NULL, 0, 0, 0);
INSERT INTO `faculty` VALUES (21, '储清淑', 0, 2, 5, NULL, NULL, NULL, 0, 0, 0);
INSERT INTO `faculty` VALUES (22, '卯浩荡', 1, 4, 4, NULL, NULL, NULL, 0, 0, 0);
INSERT INTO `faculty` VALUES (23, '纳喇寄文', 0, 2, 7, NULL, NULL, NULL, 0, 0, 0);
INSERT INTO `faculty` VALUES (24, '闾夏旋', 0, 2, 1, NULL, NULL, NULL, 0, 0, 0);
INSERT INTO `faculty` VALUES (25, '貊春竹', 0, 4, 7, NULL, NULL, NULL, 0, 0, 0);
INSERT INTO `faculty` VALUES (26, '惠姣妍', 0, 2, 6, NULL, NULL, NULL, 0, 0, 0);
INSERT INTO `faculty` VALUES (27, '孛语心', 0, 2, 6, NULL, NULL, NULL, 0, 0, 0);
INSERT INTO `faculty` VALUES (28, '邗思凡', 0, 1, 6, NULL, NULL, NULL, 0, 0, 0);
INSERT INTO `faculty` VALUES (29, '洛和怡', 0, 2, 3, NULL, NULL, NULL, 0, 0, 0);
INSERT INTO `faculty` VALUES (30, '哀涵衍', 0, 2, 9, NULL, NULL, NULL, 0, 0, 0);
INSERT INTO `faculty` VALUES (31, '檀英哲', 0, 4, 3, NULL, NULL, NULL, 0, 0, 0);
INSERT INTO `faculty` VALUES (32, '花醉柳', 0, 4, 3, NULL, NULL, NULL, 0, 0, 0);
INSERT INTO `faculty` VALUES (33, '曹叶彤', 0, 3, 2, NULL, NULL, NULL, 0, 0, 0);
INSERT INTO `faculty` VALUES (34, '频元彤', 0, 2, 1, NULL, NULL, NULL, 0, 0, 0);
INSERT INTO `faculty` VALUES (35, '鲜于梦菲', 0, 2, 4, NULL, NULL, NULL, 0, 0, 0);
INSERT INTO `faculty` VALUES (36, '勇清晖', 0, 3, 8, NULL, NULL, NULL, 0, 0, 0);
INSERT INTO `faculty` VALUES (37, '竭君博', 0, 2, 3, NULL, NULL, NULL, 0, 0, 0);
INSERT INTO `faculty` VALUES (38, '雪半双', 0, 2, 8, NULL, NULL, NULL, 0, 0, 0);
INSERT INTO `faculty` VALUES (39, '冷建业', 0, 4, 9, NULL, NULL, NULL, 0, 0, 0);
INSERT INTO `faculty` VALUES (40, '士玟丽', 0, 2, 3, NULL, NULL, NULL, 0, 0, 0);
INSERT INTO `faculty` VALUES (41, '行清秋', 0, 1, 9, NULL, NULL, NULL, 0, 0, 0);
INSERT INTO `faculty` VALUES (42, '史雨安', 0, 1, 1, NULL, NULL, NULL, 0, 0, 0);
INSERT INTO `faculty` VALUES (43, '司璞玉', 0, 1, 1, NULL, NULL, NULL, 0, 0, 0);
INSERT INTO `faculty` VALUES (44, '马佳侠骞', 0, 2, 9, NULL, NULL, NULL, 0, 0, 0);
INSERT INTO `faculty` VALUES (45, '析璞玉', 0, 3, 6, NULL, NULL, NULL, 0, 0, 0);
INSERT INTO `faculty` VALUES (46, '崔雅达', 0, 3, 2, NULL, NULL, NULL, 0, 0, 0);
INSERT INTO `faculty` VALUES (47, '都曼冬', 0, 2, 7, NULL, NULL, NULL, 0, 0, 0);
INSERT INTO `faculty` VALUES (48, '子车星星', 0, 3, 8, NULL, NULL, NULL, 0, 0, 0);
INSERT INTO `faculty` VALUES (49, '繁曾琪', 0, 3, 1, NULL, NULL, NULL, 0, 0, 0);
INSERT INTO `faculty` VALUES (50, '游小宸', 0, 2, 2, NULL, NULL, NULL, 0, 0, 0);
INSERT INTO `faculty` VALUES (51, '邝奇邃', 0, 3, 8, NULL, NULL, NULL, 0, 0, 0);
INSERT INTO `faculty` VALUES (52, '苍成龙', 0, 3, 4, NULL, NULL, NULL, 0, 0, 0);
INSERT INTO `faculty` VALUES (53, '湛清晖', 0, 2, 3, NULL, NULL, NULL, 0, 0, 0);

-- ----------------------------
-- Table structure for faculty_monthly
-- ----------------------------
DROP TABLE IF EXISTS `faculty_monthly`;
CREATE TABLE `faculty_monthly`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `faculty_id` bigint NOT NULL COMMENT '教职工编号',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '姓名',
  `month` int NOT NULL COMMENT '月份',
  `teacher_pay` float NULL DEFAULT 0 COMMENT '课时费',
  `staff_pay` float NULL DEFAULT 0 COMMENT '岗位津贴',
  `extra_teacher_pay` float NULL DEFAULT 0 COMMENT '超额课时费',
  `total_pay` float NULL DEFAULT 0 COMMENT '工资总额',
  `tax` float NULL DEFAULT 0 COMMENT '个人所得税',
  `housing` float NULL DEFAULT 0 COMMENT '住房公积金',
  `insurance` float NULL DEFAULT 0 COMMENT '保险费',
  `net_pay` float NULL DEFAULT 0 COMMENT '实发工资',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 55 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '教职工月度表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of faculty_monthly
-- ----------------------------
INSERT INTO `faculty_monthly` VALUES (1, 0, '赵四', 0, NULL, NULL, NULL, 0, 0, 0, 0, 0);
INSERT INTO `faculty_monthly` VALUES (2, 0, '张全', 0, NULL, NULL, NULL, 0, 0, 0, 0, 0);
INSERT INTO `faculty_monthly` VALUES (3, 0, '李四', 0, NULL, NULL, NULL, 0, 0, 0, 0, 0);
INSERT INTO `faculty_monthly` VALUES (4, 0, '赵红', 0, NULL, NULL, NULL, 0, 0, 0, 0, 0);
INSERT INTO `faculty_monthly` VALUES (5, 0, '李四', 0, NULL, NULL, NULL, 0, 0, 0, 0, 0);
INSERT INTO `faculty_monthly` VALUES (6, 0, '赵红', 0, NULL, NULL, NULL, 0, 0, 0, 0, 0);
INSERT INTO `faculty_monthly` VALUES (7, 0, '王万', 0, NULL, NULL, NULL, 0, 0, 0, 0, 0);
INSERT INTO `faculty_monthly` VALUES (8, 0, '大江', 0, NULL, NULL, NULL, 0, 0, 0, 0, 0);
INSERT INTO `faculty_monthly` VALUES (9, 0, '李勇', 0, NULL, NULL, NULL, 0, 0, 0, 0, 0);
INSERT INTO `faculty_monthly` VALUES (10, 0, '王兑', 0, NULL, NULL, NULL, 0, 0, 0, 0, 0);
INSERT INTO `faculty_monthly` VALUES (11, 0, '李红', 0, NULL, NULL, NULL, 0, 0, 0, 0, 0);
INSERT INTO `faculty_monthly` VALUES (12, 0, '陈坤', 0, NULL, NULL, NULL, 0, 0, 0, 0, 0);
INSERT INTO `faculty_monthly` VALUES (13, 0, '赵爱国', 0, NULL, NULL, NULL, 0, 0, 0, 0, 0);
INSERT INTO `faculty_monthly` VALUES (14, 0, '李白', 0, NULL, NULL, NULL, 0, 0, 0, 0, 0);
INSERT INTO `faculty_monthly` VALUES (15, 0, '僪琳瑜', 0, NULL, NULL, NULL, 0, 0, 0, 0, 0);
INSERT INTO `faculty_monthly` VALUES (16, 0, '卞芊丽', 0, NULL, NULL, NULL, 0, 0, 0, 0, 0);
INSERT INTO `faculty_monthly` VALUES (17, 0, '过媛女', 0, NULL, NULL, NULL, 0, 0, 0, 0, 0);
INSERT INTO `faculty_monthly` VALUES (18, 0, '蚁芷蝶', 0, NULL, NULL, NULL, 0, 0, 0, 0, 0);
INSERT INTO `faculty_monthly` VALUES (19, 0, '官兴邦', 0, NULL, NULL, NULL, 0, 0, 0, 0, 0);
INSERT INTO `faculty_monthly` VALUES (20, 0, '甄代桃', 0, NULL, NULL, NULL, 0, 0, 0, 0, 0);
INSERT INTO `faculty_monthly` VALUES (21, 0, '储清淑', 0, NULL, NULL, NULL, 0, 0, 0, 0, 0);
INSERT INTO `faculty_monthly` VALUES (22, 0, '卯浩荡', 0, NULL, NULL, NULL, 0, 0, 0, 0, 0);
INSERT INTO `faculty_monthly` VALUES (23, 0, '纳喇寄文', 0, NULL, NULL, NULL, 0, 0, 0, 0, 0);
INSERT INTO `faculty_monthly` VALUES (24, 0, '闾夏旋', 0, NULL, NULL, NULL, 0, 0, 0, 0, 0);
INSERT INTO `faculty_monthly` VALUES (25, 0, '貊春竹', 0, NULL, NULL, NULL, 0, 0, 0, 0, 0);
INSERT INTO `faculty_monthly` VALUES (26, 0, '惠姣妍', 0, NULL, NULL, NULL, 0, 0, 0, 0, 0);
INSERT INTO `faculty_monthly` VALUES (27, 0, '孛语心', 0, NULL, NULL, NULL, 0, 0, 0, 0, 0);
INSERT INTO `faculty_monthly` VALUES (28, 0, '邗思凡', 0, NULL, NULL, NULL, 0, 0, 0, 0, 0);
INSERT INTO `faculty_monthly` VALUES (29, 0, '洛和怡', 0, NULL, NULL, NULL, 0, 0, 0, 0, 0);
INSERT INTO `faculty_monthly` VALUES (30, 0, '哀涵衍', 0, NULL, NULL, NULL, 0, 0, 0, 0, 0);
INSERT INTO `faculty_monthly` VALUES (31, 0, '檀英哲', 0, NULL, NULL, NULL, 0, 0, 0, 0, 0);
INSERT INTO `faculty_monthly` VALUES (32, 0, '花醉柳', 0, NULL, NULL, NULL, 0, 0, 0, 0, 0);
INSERT INTO `faculty_monthly` VALUES (33, 0, '曹叶彤', 0, NULL, NULL, NULL, 0, 0, 0, 0, 0);
INSERT INTO `faculty_monthly` VALUES (34, 0, '频元彤', 0, NULL, NULL, NULL, 0, 0, 0, 0, 0);
INSERT INTO `faculty_monthly` VALUES (35, 0, '鲜于梦菲', 0, NULL, NULL, NULL, 0, 0, 0, 0, 0);
INSERT INTO `faculty_monthly` VALUES (36, 0, '勇清晖', 0, NULL, NULL, NULL, 0, 0, 0, 0, 0);
INSERT INTO `faculty_monthly` VALUES (37, 0, '竭君博', 0, NULL, NULL, NULL, 0, 0, 0, 0, 0);
INSERT INTO `faculty_monthly` VALUES (38, 0, '雪半双', 0, NULL, NULL, NULL, 0, 0, 0, 0, 0);
INSERT INTO `faculty_monthly` VALUES (39, 0, '冷建业', 0, NULL, NULL, NULL, 0, 0, 0, 0, 0);
INSERT INTO `faculty_monthly` VALUES (40, 0, '士玟丽', 0, NULL, NULL, NULL, 0, 0, 0, 0, 0);
INSERT INTO `faculty_monthly` VALUES (41, 0, '行清秋', 0, NULL, NULL, NULL, 0, 0, 0, 0, 0);
INSERT INTO `faculty_monthly` VALUES (42, 0, '史雨安', 0, NULL, NULL, NULL, 0, 0, 0, 0, 0);
INSERT INTO `faculty_monthly` VALUES (43, 0, '司璞玉', 0, NULL, NULL, NULL, 0, 0, 0, 0, 0);
INSERT INTO `faculty_monthly` VALUES (44, 0, '马佳侠骞', 0, NULL, NULL, NULL, 0, 0, 0, 0, 0);
INSERT INTO `faculty_monthly` VALUES (45, 0, '析璞玉', 0, NULL, NULL, NULL, 0, 0, 0, 0, 0);
INSERT INTO `faculty_monthly` VALUES (46, 0, '崔雅达', 0, NULL, NULL, NULL, 0, 0, 0, 0, 0);
INSERT INTO `faculty_monthly` VALUES (47, 0, '都曼冬', 0, NULL, NULL, NULL, 0, 0, 0, 0, 0);
INSERT INTO `faculty_monthly` VALUES (48, 0, '子车星星', 0, NULL, NULL, NULL, 0, 0, 0, 0, 0);
INSERT INTO `faculty_monthly` VALUES (49, 0, '繁曾琪', 0, NULL, NULL, NULL, 0, 0, 0, 0, 0);
INSERT INTO `faculty_monthly` VALUES (50, 0, '游小宸', 0, NULL, NULL, NULL, 0, 0, 0, 0, 0);
INSERT INTO `faculty_monthly` VALUES (51, 0, '邝奇邃', 0, NULL, NULL, NULL, 0, 0, 0, 0, 0);
INSERT INTO `faculty_monthly` VALUES (52, 0, '苍成龙', 0, NULL, NULL, NULL, 0, 0, 0, 0, 0);
INSERT INTO `faculty_monthly` VALUES (53, 0, '湛清晖', 0, NULL, NULL, NULL, 0, 0, 0, 0, 0);

-- ----------------------------
-- Table structure for faculty_yearly
-- ----------------------------
DROP TABLE IF EXISTS `faculty_yearly`;
CREATE TABLE `faculty_yearly`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `faculty_id` bigint NOT NULL COMMENT '教职工编号',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '姓名',
  `total_pay` float NULL DEFAULT 0 COMMENT '本年度累计工资总额',
  `hour` float NULL DEFAULT 0 COMMENT '本年度累计授课时数',
  `avg_pay` float NULL DEFAULT 0 COMMENT '上年度月平均工资',
  `net_pay` float NULL DEFAULT 0 COMMENT '本年度累计实发工资',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 55 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '教职工年度表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of faculty_yearly
-- ----------------------------
INSERT INTO `faculty_yearly` VALUES (1, 0, '赵四', 0, 0, 0, 0);
INSERT INTO `faculty_yearly` VALUES (2, 0, '张全', 0, 0, 0, 0);
INSERT INTO `faculty_yearly` VALUES (3, 0, '李四', 0, 0, 0, 0);
INSERT INTO `faculty_yearly` VALUES (4, 0, '赵红', 0, 0, 0, 0);
INSERT INTO `faculty_yearly` VALUES (5, 0, '李四', 0, 0, 0, 0);
INSERT INTO `faculty_yearly` VALUES (6, 0, '赵红', 0, 0, 0, 0);
INSERT INTO `faculty_yearly` VALUES (7, 0, '王万', 0, 0, 0, 0);
INSERT INTO `faculty_yearly` VALUES (8, 0, '大江', 0, 0, 0, 0);
INSERT INTO `faculty_yearly` VALUES (9, 0, '李勇', 0, 0, 0, 0);
INSERT INTO `faculty_yearly` VALUES (10, 0, '王兑', 0, 0, 0, 0);
INSERT INTO `faculty_yearly` VALUES (11, 0, '李红', 0, 0, 0, 0);
INSERT INTO `faculty_yearly` VALUES (12, 0, '陈坤', 0, 0, 0, 0);
INSERT INTO `faculty_yearly` VALUES (13, 0, '赵爱国', 0, 0, 0, 0);
INSERT INTO `faculty_yearly` VALUES (14, 0, '李白', 0, 0, 0, 0);
INSERT INTO `faculty_yearly` VALUES (15, 0, '僪琳瑜', 0, 0, 0, 0);
INSERT INTO `faculty_yearly` VALUES (16, 0, '卞芊丽', 0, 0, 0, 0);
INSERT INTO `faculty_yearly` VALUES (17, 0, '过媛女', 0, 0, 0, 0);
INSERT INTO `faculty_yearly` VALUES (18, 0, '蚁芷蝶', 0, 0, 0, 0);
INSERT INTO `faculty_yearly` VALUES (19, 0, '官兴邦', 0, 0, 0, 0);
INSERT INTO `faculty_yearly` VALUES (20, 0, '甄代桃', 0, 0, 0, 0);
INSERT INTO `faculty_yearly` VALUES (21, 0, '储清淑', 0, 0, 0, 0);
INSERT INTO `faculty_yearly` VALUES (22, 0, '卯浩荡', 0, 0, 0, 0);
INSERT INTO `faculty_yearly` VALUES (23, 0, '纳喇寄文', 0, 0, 0, 0);
INSERT INTO `faculty_yearly` VALUES (24, 0, '闾夏旋', 0, 0, 0, 0);
INSERT INTO `faculty_yearly` VALUES (25, 0, '貊春竹', 0, 0, 0, 0);
INSERT INTO `faculty_yearly` VALUES (26, 0, '惠姣妍', 0, 0, 0, 0);
INSERT INTO `faculty_yearly` VALUES (27, 0, '孛语心', 0, 0, 0, 0);
INSERT INTO `faculty_yearly` VALUES (28, 0, '邗思凡', 0, 0, 0, 0);
INSERT INTO `faculty_yearly` VALUES (29, 0, '洛和怡', 0, 0, 0, 0);
INSERT INTO `faculty_yearly` VALUES (30, 0, '哀涵衍', 0, 0, 0, 0);
INSERT INTO `faculty_yearly` VALUES (31, 0, '檀英哲', 0, 0, 0, 0);
INSERT INTO `faculty_yearly` VALUES (32, 0, '花醉柳', 0, 0, 0, 0);
INSERT INTO `faculty_yearly` VALUES (33, 0, '曹叶彤', 0, 0, 0, 0);
INSERT INTO `faculty_yearly` VALUES (34, 0, '频元彤', 0, 0, 0, 0);
INSERT INTO `faculty_yearly` VALUES (35, 0, '鲜于梦菲', 0, 0, 0, 0);
INSERT INTO `faculty_yearly` VALUES (36, 0, '勇清晖', 0, 0, 0, 0);
INSERT INTO `faculty_yearly` VALUES (37, 0, '竭君博', 0, 0, 0, 0);
INSERT INTO `faculty_yearly` VALUES (38, 0, '雪半双', 0, 0, 0, 0);
INSERT INTO `faculty_yearly` VALUES (39, 0, '冷建业', 0, 0, 0, 0);
INSERT INTO `faculty_yearly` VALUES (40, 0, '士玟丽', 0, 0, 0, 0);
INSERT INTO `faculty_yearly` VALUES (41, 0, '行清秋', 0, 0, 0, 0);
INSERT INTO `faculty_yearly` VALUES (42, 0, '史雨安', 0, 0, 0, 0);
INSERT INTO `faculty_yearly` VALUES (43, 0, '司璞玉', 0, 0, 0, 0);
INSERT INTO `faculty_yearly` VALUES (44, 0, '马佳侠骞', 0, 0, 0, 0);
INSERT INTO `faculty_yearly` VALUES (45, 0, '析璞玉', 0, 0, 0, 0);
INSERT INTO `faculty_yearly` VALUES (46, 0, '崔雅达', 0, 0, 0, 0);
INSERT INTO `faculty_yearly` VALUES (47, 0, '都曼冬', 0, 0, 0, 0);
INSERT INTO `faculty_yearly` VALUES (48, 0, '子车星星', 0, 0, 0, 0);
INSERT INTO `faculty_yearly` VALUES (49, 0, '繁曾琪', 0, 0, 0, 0);
INSERT INTO `faculty_yearly` VALUES (50, 0, '游小宸', 0, 0, 0, 0);
INSERT INTO `faculty_yearly` VALUES (51, 0, '邝奇邃', 0, 0, 0, 0);
INSERT INTO `faculty_yearly` VALUES (52, 0, '苍成龙', 0, 0, 0, 0);
INSERT INTO `faculty_yearly` VALUES (53, 0, '湛清晖', 0, 0, 0, 0);

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
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '代码生成业务表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES (6, 'faculty', '教职工表', NULL, NULL, 'Faculty', 'crud', 'com.ruoyi.financial', 'financial', 'faculty', '教职工', 'Keven', '0', '/', '{\"parentMenuId\":\"2052\"}', 'admin', '2023-05-30 17:42:08', '', '2023-05-30 18:13:50', NULL);
INSERT INTO `gen_table` VALUES (10, 'title', '职称表', NULL, NULL, 'Title', 'crud', 'com.ruoyi.financial', 'financial', 'title', '职称', 'Keven', '0', '/', '{\"parentMenuId\":\"2052\"}', 'admin', '2023-05-30 17:42:08', '', '2023-05-30 18:37:25', NULL);
INSERT INTO `gen_table` VALUES (12, 'faculty_monthly', '教职工月度表', NULL, NULL, 'FacultyMonthly', 'crud', 'com.ruoyi.financial', 'financial', 'pay', '工资', 'Keven', '0', '/', '{}', 'admin', '2023-05-30 17:48:44', '', '2023-05-30 18:42:50', NULL);
INSERT INTO `gen_table` VALUES (13, 'faculty_yearly', '教职工年度表', NULL, NULL, 'FacultyYearly', 'crud', 'com.ruoyi.financial', 'financial', 'yearly', '教职工年度', 'Keven', '0', '/', '{}', 'admin', '2023-05-30 17:48:44', '', '2023-05-30 18:41:56', NULL);
INSERT INTO `gen_table` VALUES (14, 'job', '职务表', NULL, NULL, 'Job', 'crud', 'com.ruoyi.financial', 'financial', 'job', '职务', 'Keven', '0', '/', '{\"parentMenuId\":\"2052\"}', 'admin', '2023-05-30 17:48:44', '', '2023-05-30 18:43:07', NULL);
INSERT INTO `gen_table` VALUES (15, 'affair', '事务（课时任务）表', NULL, NULL, 'Affair', 'crud', 'com.ruoyi.financial', 'financial', 'affair', '事务', 'Keven', '0', '/', '{}', 'admin', '2023-05-30 18:07:22', '', '2023-05-30 18:09:43', NULL);

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
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '代码生成业务表字段' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES (35, '6', 'id', '编号', 'bigint', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-05-30 17:42:08', '', '2023-05-30 18:13:50');
INSERT INTO `gen_table_column` VALUES (36, '6', 'name', '姓名', 'varchar(30)', 'String', 'name', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2023-05-30 17:42:08', '', '2023-05-30 18:13:50');
INSERT INTO `gen_table_column` VALUES (37, '6', 'type', '教师/职工', 'int', 'Long', 'type', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', 'faculty_type', 3, 'admin', '2023-05-30 17:42:08', '', '2023-05-30 18:13:50');
INSERT INTO `gen_table_column` VALUES (38, '6', 'title', '职称', 'int', 'Long', 'title', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'faculty_title', 4, 'admin', '2023-05-30 17:42:08', '', '2023-05-30 18:13:50');
INSERT INTO `gen_table_column` VALUES (39, '6', 'job', '职务', 'int', 'Long', 'job', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'faculty_job', 5, 'admin', '2023-05-30 17:42:08', '', '2023-05-30 18:13:50');
INSERT INTO `gen_table_column` VALUES (40, '6', 'basic_pay', NULL, 'float', 'Long', 'basicPay', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2023-05-30 17:42:08', '', '2023-05-30 18:13:50');
INSERT INTO `gen_table_column` VALUES (41, '6', 'living_subsidy', NULL, 'float', 'Long', 'livingSubsidy', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2023-05-30 17:42:08', '', '2023-05-30 18:13:50');
INSERT INTO `gen_table_column` VALUES (42, '6', 'reading_subsidy', NULL, 'float', 'Long', 'readingSubsidy', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2023-05-30 17:42:08', '', '2023-05-30 18:13:50');
INSERT INTO `gen_table_column` VALUES (43, '6', 'transportation_subsidy', NULL, 'float', 'Long', 'transportationSubsidy', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2023-05-30 17:42:08', '', '2023-05-30 18:13:50');
INSERT INTO `gen_table_column` VALUES (44, '6', 'washing_subsidy', NULL, 'float', 'Long', 'washingSubsidy', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2023-05-30 17:42:08', '', '2023-05-30 18:13:50');
INSERT INTO `gen_table_column` VALUES (45, '6', 'quota_hour', NULL, 'float', 'Long', 'quotaHour', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', '2023-05-30 17:42:08', '', '2023-05-30 18:13:50');
INSERT INTO `gen_table_column` VALUES (67, '10', 'id', '编号', 'bigint', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-05-30 17:42:08', '', '2023-05-30 18:37:25');
INSERT INTO `gen_table_column` VALUES (68, '10', 'des', '职称', 'varchar(60)', 'String', 'des', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-05-30 17:42:08', '', '2023-05-30 18:37:25');
INSERT INTO `gen_table_column` VALUES (69, '10', 'factor', '职称系数', 'float', 'Long', 'factor', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-05-30 17:42:08', '', '2023-05-30 18:37:25');
INSERT INTO `gen_table_column` VALUES (76, '12', 'id', '编号', 'bigint', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-05-30 17:48:44', '', '2023-05-30 18:42:50');
INSERT INTO `gen_table_column` VALUES (77, '12', 'faculty_id', '教职工编号', 'bigint', 'Long', 'facultyId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-05-30 17:48:44', '', '2023-05-30 18:42:50');
INSERT INTO `gen_table_column` VALUES (78, '12', 'name', '姓名', 'varchar(30)', 'String', 'name', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2023-05-30 17:48:44', '', '2023-05-30 18:42:50');
INSERT INTO `gen_table_column` VALUES (79, '12', 'month', '月份', 'int', 'Long', 'month', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-05-30 17:48:44', '', '2023-05-30 18:42:50');
INSERT INTO `gen_table_column` VALUES (80, '12', 'teacher_pay', '课时费', 'float', 'Long', 'teacherPay', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2023-05-30 17:48:44', '', '2023-05-30 18:42:50');
INSERT INTO `gen_table_column` VALUES (81, '12', 'staff_pay', '岗位津贴', 'float', 'Long', 'staffPay', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2023-05-30 17:48:44', '', '2023-05-30 18:42:50');
INSERT INTO `gen_table_column` VALUES (82, '12', 'extra_teacher_pay', '超额课时费', 'float', 'Long', 'extraTeacherPay', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2023-05-30 17:48:44', '', '2023-05-30 18:42:50');
INSERT INTO `gen_table_column` VALUES (83, '12', 'total_pay', '工资总额', 'float', 'Long', 'totalPay', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2023-05-30 17:48:44', '', '2023-05-30 18:42:50');
INSERT INTO `gen_table_column` VALUES (84, '12', 'tax', '个人所得税', 'float', 'Long', 'tax', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2023-05-30 17:48:44', '', '2023-05-30 18:42:50');
INSERT INTO `gen_table_column` VALUES (85, '12', 'housing', '住房公积金', 'float', 'Long', 'housing', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2023-05-30 17:48:44', '', '2023-05-30 18:42:50');
INSERT INTO `gen_table_column` VALUES (86, '12', 'insurance', '保险费', 'float', 'Long', 'insurance', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', '2023-05-30 17:48:44', '', '2023-05-30 18:42:50');
INSERT INTO `gen_table_column` VALUES (87, '12', 'net_pay', '实发工资', 'float', 'Long', 'netPay', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 12, 'admin', '2023-05-30 17:48:44', '', '2023-05-30 18:42:50');
INSERT INTO `gen_table_column` VALUES (88, '13', 'id', '编号', 'bigint', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-05-30 17:48:44', '', '2023-05-30 18:41:56');
INSERT INTO `gen_table_column` VALUES (89, '13', 'faculty_id', '教职工编号', 'bigint', 'Long', 'facultyId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-05-30 17:48:44', '', '2023-05-30 18:41:56');
INSERT INTO `gen_table_column` VALUES (90, '13', 'name', '姓名', 'varchar(30)', 'String', 'name', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2023-05-30 17:48:44', '', '2023-05-30 18:41:56');
INSERT INTO `gen_table_column` VALUES (91, '13', 'total_pay', '本年度累计工资总额', 'float', 'Long', 'totalPay', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-05-30 17:48:44', '', '2023-05-30 18:41:56');
INSERT INTO `gen_table_column` VALUES (92, '13', 'hour', '本年度累计授课时数', 'float', 'Long', 'hour', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2023-05-30 17:48:44', '', '2023-05-30 18:41:56');
INSERT INTO `gen_table_column` VALUES (93, '13', 'avg_pay', '上年度月平均工资', 'float', 'Long', 'avgPay', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2023-05-30 17:48:44', '', '2023-05-30 18:41:56');
INSERT INTO `gen_table_column` VALUES (94, '13', 'net_pay', '本年度累计实发工资', 'float', 'Long', 'netPay', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2023-05-30 17:48:44', '', '2023-05-30 18:41:56');
INSERT INTO `gen_table_column` VALUES (95, '14', 'id', '编号', 'bigint', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-05-30 17:48:44', '', '2023-05-30 18:43:07');
INSERT INTO `gen_table_column` VALUES (96, '14', 'des', '职务', 'varchar(60)', 'String', 'des', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-05-30 17:48:44', '', '2023-05-30 18:43:07');
INSERT INTO `gen_table_column` VALUES (97, '15', 'id', '编号', 'bigint', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-05-30 18:07:22', '', '2023-05-30 18:09:43');
INSERT INTO `gen_table_column` VALUES (98, '15', 'faculty_id', '教职工编号', 'bigint', 'Long', 'facultyId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-05-30 18:07:22', '', '2023-05-30 18:09:43');
INSERT INTO `gen_table_column` VALUES (99, '15', 'name', '姓名', 'varchar(30)', 'String', 'name', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2023-05-30 18:07:22', '', '2023-05-30 18:09:43');
INSERT INTO `gen_table_column` VALUES (100, '15', 'month', '月份', 'int', 'Long', 'month', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-05-30 18:07:22', '', '2023-05-30 18:09:43');
INSERT INTO `gen_table_column` VALUES (101, '15', 'des', '描述', 'varchar(90)', 'String', 'des', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2023-05-30 18:07:22', '', '2023-05-30 18:09:43');
INSERT INTO `gen_table_column` VALUES (102, '15', 'hour', '时长', 'float', 'Long', 'hour', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2023-05-30 18:07:22', '', '2023-05-30 18:09:43');

-- ----------------------------
-- Table structure for job
-- ----------------------------
DROP TABLE IF EXISTS `job`;
CREATE TABLE `job`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `des` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '职务',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '职务表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of job
-- ----------------------------
INSERT INTO `job` VALUES (1, '校长');
INSERT INTO `job` VALUES (2, '副校长');
INSERT INTO `job` VALUES (3, '处长');
INSERT INTO `job` VALUES (4, '副处长');
INSERT INTO `job` VALUES (5, '科长');
INSERT INTO `job` VALUES (6, '副科长');
INSERT INTO `job` VALUES (7, '主管');
INSERT INTO `job` VALUES (8, '职员');
INSERT INTO `job` VALUES (9, '无');

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
INSERT INTO `sys_dict_data` VALUES (102, 0, '校长', '1', 'faculty_job', NULL, 'default', 'N', '0', 'admin', '2023-05-27 18:17:00', 'admin', '2023-05-27 18:19:29', NULL);
INSERT INTO `sys_dict_data` VALUES (103, 1, '副校长', '2', 'faculty_job', NULL, 'default', 'N', '0', 'admin', '2023-05-27 18:19:39', 'admin', '2023-05-27 19:04:36', NULL);
INSERT INTO `sys_dict_data` VALUES (104, 2, '处长', '3', 'faculty_job', NULL, 'default', 'N', '0', 'admin', '2023-05-27 18:20:14', 'admin', '2023-05-27 19:04:53', NULL);
INSERT INTO `sys_dict_data` VALUES (105, 3, '副处长', '4', 'faculty_job', NULL, 'default', 'N', '0', 'admin', '2023-05-27 18:20:22', 'admin', '2023-05-27 19:04:57', NULL);
INSERT INTO `sys_dict_data` VALUES (106, 4, '科长', '5', 'faculty_job', NULL, 'default', 'N', '0', 'admin', '2023-05-27 18:20:36', 'admin', '2023-05-27 19:05:08', NULL);
INSERT INTO `sys_dict_data` VALUES (107, 5, '副科长', '6', 'faculty_job', NULL, 'default', 'N', '0', 'admin', '2023-05-27 18:20:50', 'admin', '2023-05-27 19:05:16', NULL);
INSERT INTO `sys_dict_data` VALUES (108, 6, '主管', '7', 'faculty_job', NULL, 'default', 'N', '0', 'admin', '2023-05-27 18:22:22', 'admin', '2023-05-30 17:44:06', NULL);
INSERT INTO `sys_dict_data` VALUES (109, 7, '职员', '8', 'faculty_job', NULL, 'default', 'N', '0', 'admin', '2023-05-27 18:22:33', 'admin', '2023-05-30 17:44:02', NULL);
INSERT INTO `sys_dict_data` VALUES (110, 9, '无', '0', 'faculty_job', NULL, 'default', 'N', '0', 'admin', '2023-05-27 18:22:43', 'admin', '2023-05-30 17:44:15', NULL);
INSERT INTO `sys_dict_data` VALUES (111, 0, '教授', '1', 'faculty_title', NULL, 'default', 'N', '0', 'admin', '2023-05-27 18:59:11', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (112, 1, '副教授', '2', 'faculty_title', NULL, 'default', 'N', '0', 'admin', '2023-05-27 18:59:28', 'admin', '2023-05-27 19:05:55', NULL);
INSERT INTO `sys_dict_data` VALUES (113, 2, '讲师', '3', 'faculty_title', NULL, 'default', 'N', '0', 'admin', '2023-05-27 18:59:37', 'admin', '2023-05-27 19:06:04', NULL);
INSERT INTO `sys_dict_data` VALUES (114, 3, '助教', '4', 'faculty_title', NULL, 'default', 'N', '0', 'admin', '2023-05-27 18:59:45', 'admin', '2023-05-27 19:06:00', NULL);
INSERT INTO `sys_dict_data` VALUES (115, 4, '无', '0', 'faculty_title', NULL, 'default', 'N', '0', 'admin', '2023-05-27 18:59:54', 'admin', '2023-05-30 17:44:28', NULL);

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
INSERT INTO `sys_dict_type` VALUES (101, '职工职务', 'faculty_job', '0', 'admin', '2023-05-27 15:40:35', 'admin', '2023-05-30 17:43:25', NULL);
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
) ENGINE = InnoDB AUTO_INCREMENT = 174 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '系统访问记录' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES (173, '管理员', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-29 21:44:37');

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
INSERT INTO `sys_menu` VALUES (2052, '人事', 0, 3, 'personnel', NULL, NULL, 1, 0, 'M', '0', '0', NULL, 'peoples', 'admin', '2023-05-30 18:03:36', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2065, '事务', 0, 2, 'affair', 'financial/affair/index', NULL, 1, 0, 'C', '0', '0', 'financial:affair:list', 'education', 'admin', '2023-05-30 18:10:54', 'admin', '2023-05-30 18:57:07', '事务菜单');
INSERT INTO `sys_menu` VALUES (2066, '事务查询', 2065, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'financial:affair:query', '#', 'admin', '2023-05-30 18:10:54', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2067, '事务新增', 2065, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'financial:affair:add', '#', 'admin', '2023-05-30 18:10:54', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2068, '事务修改', 2065, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'financial:affair:edit', '#', 'admin', '2023-05-30 18:10:54', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2069, '事务删除', 2065, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'financial:affair:remove', '#', 'admin', '2023-05-30 18:10:54', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2070, '事务导出', 2065, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'financial:affair:export', '#', 'admin', '2023-05-30 18:10:54', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2089, '工资明细表', 0, 1, 'pay', 'financial/pay/index', NULL, 1, 0, 'C', '0', '0', 'financial:pay:list', 'money', 'admin', '2023-05-30 18:20:41', 'admin', '2023-05-30 18:28:07', '工资明细表菜单');
INSERT INTO `sys_menu` VALUES (2090, '工资明细表查询', 2089, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'financial:pay:query', '#', 'admin', '2023-05-30 18:20:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2091, '工资明细表新增', 2089, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'financial:pay:add', '#', 'admin', '2023-05-30 18:20:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2092, '工资明细表修改', 2089, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'financial:pay:edit', '#', 'admin', '2023-05-30 18:20:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2093, '工资明细表删除', 2089, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'financial:pay:remove', '#', 'admin', '2023-05-30 18:20:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2094, '工资明细表导出', 2089, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'financial:pay:export', '#', 'admin', '2023-05-30 18:20:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2095, '工资表', 0, 1, 'pay', 'financial/pay/index', NULL, 1, 0, 'C', '0', '0', 'financial:pay:list', 'money', 'admin', '2023-05-30 18:23:25', 'admin', '2023-05-30 18:28:18', '工资表菜单');
INSERT INTO `sys_menu` VALUES (2096, '工资表查询', 2095, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'financial:pay:query', '#', 'admin', '2023-05-30 18:23:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2097, '工资表新增', 2095, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'financial:pay:add', '#', 'admin', '2023-05-30 18:23:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2098, '工资表修改', 2095, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'financial:pay:edit', '#', 'admin', '2023-05-30 18:23:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2099, '工资表删除', 2095, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'financial:pay:remove', '#', 'admin', '2023-05-30 18:23:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2100, '工资表导出', 2095, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'financial:pay:export', '#', 'admin', '2023-05-30 18:23:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2101, '报表', 0, 1, 'pay', 'financial/pay/index', NULL, 1, 0, 'C', '1', '1', 'financial:pay:list', 'money', 'admin', '2023-05-30 18:25:18', 'admin', '2023-05-30 18:51:43', '报表菜单');
INSERT INTO `sys_menu` VALUES (2102, '报表查询', 2101, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'financial:pay:query', '#', 'admin', '2023-05-30 18:25:18', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2103, '报表新增', 2101, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'financial:pay:add', '#', 'admin', '2023-05-30 18:25:18', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2104, '报表修改', 2101, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'financial:pay:edit', '#', 'admin', '2023-05-30 18:25:18', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2105, '报表删除', 2101, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'financial:pay:remove', '#', 'admin', '2023-05-30 18:25:18', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2106, '报表导出', 2101, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'financial:pay:export', '#', 'admin', '2023-05-30 18:25:18', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2107, '职称', 2052, 1, 'title', 'financial/title/index', NULL, 1, 0, 'C', '0', '0', 'financial:title:list', '#', 'admin', '2023-05-30 18:55:51', '', NULL, '职称菜单');
INSERT INTO `sys_menu` VALUES (2108, '职称查询', 2107, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'financial:title:query', '#', 'admin', '2023-05-30 18:55:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2109, '职称新增', 2107, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'financial:title:add', '#', 'admin', '2023-05-30 18:55:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2110, '职称修改', 2107, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'financial:title:edit', '#', 'admin', '2023-05-30 18:55:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2111, '职称删除', 2107, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'financial:title:remove', '#', 'admin', '2023-05-30 18:55:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2112, '职称导出', 2107, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'financial:title:export', '#', 'admin', '2023-05-30 18:55:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2113, '教职工年度', 3, 1, 'yearly', 'financial/yearly/index', NULL, 1, 0, 'C', '0', '0', 'financial:yearly:list', '#', 'admin', '2023-05-30 18:55:58', '', NULL, '教职工年度菜单');
INSERT INTO `sys_menu` VALUES (2114, '教职工年度查询', 2113, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'financial:yearly:query', '#', 'admin', '2023-05-30 18:55:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2115, '教职工年度新增', 2113, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'financial:yearly:add', '#', 'admin', '2023-05-30 18:55:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2116, '教职工年度修改', 2113, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'financial:yearly:edit', '#', 'admin', '2023-05-30 18:55:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2117, '教职工年度删除', 2113, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'financial:yearly:remove', '#', 'admin', '2023-05-30 18:55:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2118, '教职工年度导出', 2113, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'financial:yearly:export', '#', 'admin', '2023-05-30 18:55:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2119, '职务', 2052, 2, 'job', 'financial/job/index', NULL, 1, 0, 'C', '0', '0', 'financial:job:list', '#', 'admin', '2023-05-30 18:56:18', 'admin', '2023-05-30 18:56:45', '职务菜单');
INSERT INTO `sys_menu` VALUES (2120, '职务查询', 2119, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'financial:job:query', '#', 'admin', '2023-05-30 18:56:18', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2121, '职务新增', 2119, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'financial:job:add', '#', 'admin', '2023-05-30 18:56:18', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2122, '职务修改', 2119, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'financial:job:edit', '#', 'admin', '2023-05-30 18:56:18', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2123, '职务删除', 2119, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'financial:job:remove', '#', 'admin', '2023-05-30 18:56:18', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2124, '职务导出', 2119, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'financial:job:export', '#', 'admin', '2023-05-30 18:56:18', '', NULL, '');

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
INSERT INTO `sys_oper_log` VALUES (152, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', NULL, '/tool/gen/1,3,4,5', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-30 17:41:37', 18);
INSERT INTO `sys_oper_log` VALUES (153, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"faculty_yearly,faculty_monthly,work,job,title,faculty\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-30 17:42:08', 116);
INSERT INTO `sys_oper_log` VALUES (154, '字典类型', 2, 'com.ruoyi.web.controller.system.SysDictTypeController.edit()', 'PUT', 1, 'admin', NULL, '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2023-05-27 15:40:35\",\"dictId\":101,\"dictName\":\"职工职务\",\"dictType\":\"faculty_job\",\"params\":{},\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-30 17:43:25', 16);
INSERT INTO `sys_oper_log` VALUES (155, '字典数据', 2, 'com.ruoyi.web.controller.system.SysDictDataController.edit()', 'PUT', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2023-05-27 18:22:43\",\"default\":false,\"dictCode\":110,\"dictLabel\":\"无\",\"dictSort\":0,\"dictType\":\"faculty_job\",\"dictValue\":\"0\",\"isDefault\":\"N\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-30 17:43:42', 7);
INSERT INTO `sys_oper_log` VALUES (156, '字典数据', 2, 'com.ruoyi.web.controller.system.SysDictDataController.edit()', 'PUT', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2023-05-27 18:22:33\",\"default\":false,\"dictCode\":109,\"dictLabel\":\"职员\",\"dictSort\":8,\"dictType\":\"faculty_job\",\"dictValue\":\"8\",\"isDefault\":\"N\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-30 17:43:49', 6);
INSERT INTO `sys_oper_log` VALUES (157, '字典数据', 2, 'com.ruoyi.web.controller.system.SysDictDataController.edit()', 'PUT', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2023-05-27 18:22:22\",\"default\":false,\"dictCode\":108,\"dictLabel\":\"主管\",\"dictSort\":7,\"dictType\":\"faculty_job\",\"dictValue\":\"7\",\"isDefault\":\"N\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-30 17:43:53', 6);
INSERT INTO `sys_oper_log` VALUES (158, '字典数据', 2, 'com.ruoyi.web.controller.system.SysDictDataController.edit()', 'PUT', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2023-05-27 18:22:33\",\"default\":false,\"dictCode\":109,\"dictLabel\":\"职员\",\"dictSort\":7,\"dictType\":\"faculty_job\",\"dictValue\":\"8\",\"isDefault\":\"N\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-30 17:44:02', 10);
INSERT INTO `sys_oper_log` VALUES (159, '字典数据', 2, 'com.ruoyi.web.controller.system.SysDictDataController.edit()', 'PUT', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2023-05-27 18:22:22\",\"default\":false,\"dictCode\":108,\"dictLabel\":\"主管\",\"dictSort\":6,\"dictType\":\"faculty_job\",\"dictValue\":\"7\",\"isDefault\":\"N\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-30 17:44:06', 5);
INSERT INTO `sys_oper_log` VALUES (160, '字典数据', 2, 'com.ruoyi.web.controller.system.SysDictDataController.edit()', 'PUT', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2023-05-27 18:22:43\",\"default\":false,\"dictCode\":110,\"dictLabel\":\"无\",\"dictSort\":9,\"dictType\":\"faculty_job\",\"dictValue\":\"0\",\"isDefault\":\"N\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-30 17:44:15', 10);
INSERT INTO `sys_oper_log` VALUES (161, '字典数据', 2, 'com.ruoyi.web.controller.system.SysDictDataController.edit()', 'PUT', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2023-05-27 18:59:54\",\"default\":false,\"dictCode\":115,\"dictLabel\":\"无\",\"dictSort\":4,\"dictType\":\"faculty_title\",\"dictValue\":\"0\",\"isDefault\":\"N\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-30 17:44:28', 6);
INSERT INTO `sys_oper_log` VALUES (162, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"faculty\",\"className\":\"Faculty\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"编号\",\"columnId\":35,\"columnName\":\"id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 17:42:08\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":6,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"姓名\",\"columnId\":36,\"columnName\":\"name\",\"columnType\":\"varchar(30)\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 17:42:08\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":6,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Type\",\"columnComment\":\"教师/职工\",\"columnId\":37,\"columnName\":\"type\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 17:42:08\",\"dictType\":\"faculty_type\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"type\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":6,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Title\",\"columnComment\":\"职称\",\"columnId\":38,\"columnName\":\"title\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 17:42:08\",\"dictType\":\"faculty_title\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"title\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":fals', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-30 17:46:56', 27);
INSERT INTO `sys_oper_log` VALUES (163, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"faculty\",\"className\":\"Faculty\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"编号\",\"columnId\":35,\"columnName\":\"id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 17:42:08\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":6,\"updateBy\":\"\",\"updateTime\":\"2023-05-30 17:46:56\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"姓名\",\"columnId\":36,\"columnName\":\"name\",\"columnType\":\"varchar(30)\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 17:42:08\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":6,\"updateBy\":\"\",\"updateTime\":\"2023-05-30 17:46:56\",\"usableColumn\":false},{\"capJavaField\":\"Type\",\"columnComment\":\"教师/职工\",\"columnId\":37,\"columnName\":\"type\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 17:42:08\",\"dictType\":\"faculty_type\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"type\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":6,\"updateBy\":\"\",\"updateTime\":\"2023-05-30 17:46:56\",\"usableColumn\":false},{\"capJavaField\":\"Title\",\"columnComment\":\"职称\",\"columnId\":38,\"columnName\":\"title\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 17:42:08\",\"dictType\":\"faculty_title\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isL', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-30 17:47:08', 22);
INSERT INTO `sys_oper_log` VALUES (164, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', NULL, '/tool/gen/7,8,9', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-30 17:48:39', 10);
INSERT INTO `sys_oper_log` VALUES (165, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"job,faculty_yearly,faculty_monthly\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-30 17:48:44', 41);
INSERT INTO `sys_oper_log` VALUES (166, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"monthly\",\"className\":\"FacultyMonthly\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"编号\",\"columnId\":46,\"columnName\":\"id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 17:42:08\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"FacultyId\",\"columnComment\":\"教职工编号\",\"columnId\":47,\"columnName\":\"faculty_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 17:42:08\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"facultyId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"姓名\",\"columnId\":48,\"columnName\":\"name\",\"columnType\":\"varchar(30)\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 17:42:08\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Month\",\"columnComment\":\"月份\",\"columnId\":49,\"columnName\":\"month\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 17:42:08\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"month\",\"javaType\":\"Long\",\"list\":true,\"para', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-30 17:50:25', 3);
INSERT INTO `sys_oper_log` VALUES (167, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"monthly\",\"className\":\"FacultyMonthly\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"编号\",\"columnId\":76,\"columnName\":\"id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 17:48:44\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":12,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"FacultyId\",\"columnComment\":\"教职工编号\",\"columnId\":77,\"columnName\":\"faculty_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 17:48:44\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"facultyId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":12,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"姓名\",\"columnId\":78,\"columnName\":\"name\",\"columnType\":\"varchar(30)\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 17:48:44\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":12,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Month\",\"columnComment\":\"月份\",\"columnId\":79,\"columnName\":\"month\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 17:48:44\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"month\",\"javaType\":\"Long\",\"list\":true,\"p', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-30 17:51:26', 16);
INSERT INTO `sys_oper_log` VALUES (168, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"yearly\",\"className\":\"FacultyYearly\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"编号\",\"columnId\":88,\"columnName\":\"id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 17:48:44\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":13,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"FacultyId\",\"columnComment\":\"教职工编号\",\"columnId\":89,\"columnName\":\"faculty_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 17:48:44\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"facultyId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":13,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"姓名\",\"columnId\":90,\"columnName\":\"name\",\"columnType\":\"varchar(30)\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 17:48:44\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":13,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"TotalPay\",\"columnComment\":\"本年度累计工资总额\",\"columnId\":91,\"columnName\":\"total_pay\",\"columnType\":\"float\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 17:48:44\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"totalPay\",\"javaType\":\"Long\",\"list\":true,\"p', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-30 17:52:17', 14);
INSERT INTO `sys_oper_log` VALUES (169, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-05-27 15:14:16\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[],\"params\":{},\"roleId\":100,\"roleKey\":\"finance\",\"roleName\":\"会计\",\"roleSort\":3,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-30 17:55:45', 9);
INSERT INTO `sys_oper_log` VALUES (170, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-05-27 15:15:11\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":false,\"menuIds\":[],\"params\":{},\"roleId\":101,\"roleKey\":\"faculty\",\"roleName\":\"教职工\",\"roleSort\":4,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-30 17:55:51', 10);
INSERT INTO `sys_oper_log` VALUES (171, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-05-27 19:11:17\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":false,\"menuIds\":[],\"params\":{},\"roleId\":102,\"roleKey\":\"root\",\"roleName\":\"管理员\",\"roleSort\":5,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-30 17:55:58', 11);
INSERT INTO `sys_oper_log` VALUES (172, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-05-27 19:12:01\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":false,\"menuIds\":[],\"params\":{},\"roleId\":103,\"roleKey\":\"bank\",\"roleName\":\"银行\",\"roleSort\":6,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-30 17:56:02', 11);
INSERT INTO `sys_oper_log` VALUES (173, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2011', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"存在子菜单,不允许删除\",\"code\":601}', 0, NULL, '2023-05-30 17:56:22', 3);
INSERT INTO `sys_oper_log` VALUES (174, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"job\",\"className\":\"Job\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"编号\",\"columnId\":95,\"columnName\":\"id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 17:48:44\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":14,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Des\",\"columnComment\":\"职务\",\"columnId\":96,\"columnName\":\"des\",\"columnType\":\"varchar(60)\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 17:48:44\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"des\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":14,\"updateBy\":\"\",\"usableColumn\":false}],\"crud\":true,\"functionAuthor\":\"ruoyi\",\"functionName\":\"职务\",\"genPath\":\"/\",\"genType\":\"0\",\"moduleName\":\"system\",\"options\":\"{}\",\"packageName\":\"com.ruoyi.system\",\"params\":{},\"sub\":false,\"tableComment\":\"职务表\",\"tableId\":14,\"tableName\":\"job\",\"tplCategory\":\"crud\",\"tree\":false}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-30 17:57:55', 10);
INSERT INTO `sys_oper_log` VALUES (175, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"icon\":\"peoples\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"人事\",\"menuType\":\"M\",\"orderNum\":3,\"params\":{},\"parentId\":0,\"path\":\"personnel\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-30 18:03:36', 8);
INSERT INTO `sys_oper_log` VALUES (176, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"job\",\"className\":\"Job\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"编号\",\"columnId\":95,\"columnName\":\"id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 17:48:44\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":14,\"updateBy\":\"\",\"updateTime\":\"2023-05-30 17:57:55\",\"usableColumn\":false},{\"capJavaField\":\"Des\",\"columnComment\":\"职务\",\"columnId\":96,\"columnName\":\"des\",\"columnType\":\"varchar(60)\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 17:48:44\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"des\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":14,\"updateBy\":\"\",\"updateTime\":\"2023-05-30 17:57:55\",\"usableColumn\":false}],\"crud\":true,\"functionAuthor\":\"Keven\",\"functionName\":\"职务\",\"genPath\":\"/\",\"genType\":\"0\",\"moduleName\":\"system\",\"options\":\"{}\",\"packageName\":\"com.ruoyi.system\",\"params\":{},\"sub\":false,\"tableComment\":\"职务表\",\"tableId\":14,\"tableName\":\"job\",\"tplCategory\":\"crud\",\"tree\":false}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-30 18:04:00', 12);
INSERT INTO `sys_oper_log` VALUES (177, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"faculty\",\"className\":\"Faculty\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"编号\",\"columnId\":35,\"columnName\":\"id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 17:42:08\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":6,\"updateBy\":\"\",\"updateTime\":\"2023-05-30 17:47:08\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"姓名\",\"columnId\":36,\"columnName\":\"name\",\"columnType\":\"varchar(30)\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 17:42:08\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":6,\"updateBy\":\"\",\"updateTime\":\"2023-05-30 17:47:08\",\"usableColumn\":false},{\"capJavaField\":\"Type\",\"columnComment\":\"教师/职工\",\"columnId\":37,\"columnName\":\"type\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 17:42:08\",\"dictType\":\"faculty_type\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"type\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":6,\"updateBy\":\"\",\"updateTime\":\"2023-05-30 17:47:08\",\"usableColumn\":false},{\"capJavaField\":\"Title\",\"columnComment\":\"职称\",\"columnId\":38,\"columnName\":\"title\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 17:42:08\",\"dictType\":\"faculty_title\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isL', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-30 18:04:10', 17);
INSERT INTO `sys_oper_log` VALUES (178, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"title\",\"className\":\"Title\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"编号\",\"columnId\":67,\"columnName\":\"id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 17:42:08\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":10,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Des\",\"columnComment\":\"职称\",\"columnId\":68,\"columnName\":\"des\",\"columnType\":\"varchar(60)\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 17:42:08\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"des\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":10,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Factor\",\"columnComment\":\"职称系数\",\"columnId\":69,\"columnName\":\"factor\",\"columnType\":\"float\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 17:42:08\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"factor\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":10,\"updateBy\":\"\",\"usableColumn\":false}],\"crud\":true,\"functionAuthor\":\"Keven\",\"functionName\":\"职称\",\"genPath\":\"/\",\"genType\":\"0\",\"moduleName\":\"system\",\"options\":\"{\\\"parentMenuId\\\":2052}\",\"packageName\":\"com.ruoyi.system\",\"params\":{\"parentMenuId\":2052},\"parentMenuId\":\"2052\",\"sub\":false,\"tableComment\":\"职称表\",\"tableId\":10,\"tableName\":\"title\",\"tplCategory\":\"crud\",\"tree\":false}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-30 18:04:48', 6);
INSERT INTO `sys_oper_log` VALUES (179, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', NULL, '/tool/gen/11', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-30 18:06:50', 5);
INSERT INTO `sys_oper_log` VALUES (180, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"affair\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-30 18:07:22', 18);
INSERT INTO `sys_oper_log` VALUES (181, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"job\",\"className\":\"Job\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"编号\",\"columnId\":95,\"columnName\":\"id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 17:48:44\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":14,\"updateBy\":\"\",\"updateTime\":\"2023-05-30 18:04:00\",\"usableColumn\":false},{\"capJavaField\":\"Des\",\"columnComment\":\"职务\",\"columnId\":96,\"columnName\":\"des\",\"columnType\":\"varchar(60)\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 17:48:44\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"des\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":14,\"updateBy\":\"\",\"updateTime\":\"2023-05-30 18:04:00\",\"usableColumn\":false}],\"crud\":true,\"functionAuthor\":\"Keven\",\"functionName\":\"职务\",\"genPath\":\"/\",\"genType\":\"0\",\"moduleName\":\"system\",\"options\":\"{\\\"parentMenuId\\\":2052}\",\"packageName\":\"com.ruoyi.system\",\"params\":{\"parentMenuId\":2052},\"parentMenuId\":\"2052\",\"sub\":false,\"tableComment\":\"职务表\",\"tableId\":14,\"tableName\":\"job\",\"tplCategory\":\"crud\",\"tree\":false}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-30 18:07:41', 10);
INSERT INTO `sys_oper_log` VALUES (182, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"affair\",\"className\":\"Affair\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"编号\",\"columnId\":97,\"columnName\":\"id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 18:07:22\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":15,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"FacultyId\",\"columnComment\":\"教职工编号\",\"columnId\":98,\"columnName\":\"faculty_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 18:07:22\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"facultyId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":15,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"姓名\",\"columnId\":99,\"columnName\":\"name\",\"columnType\":\"varchar(30)\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 18:07:22\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":15,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Month\",\"columnComment\":\"月份\",\"columnId\":100,\"columnName\":\"month\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 18:07:22\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"month\",\"javaType\":\"Long\",\"list\":true,\"params\":{', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-30 18:09:43', 8);
INSERT INTO `sys_oper_log` VALUES (183, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"faculty,title,faculty_monthly,faculty_yearly,job,affair\"}', NULL, 0, NULL, '2023-05-30 18:09:47', 126);
INSERT INTO `sys_oper_log` VALUES (184, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"faculty,title,faculty_monthly,faculty_yearly,job,affair\"}', NULL, 0, NULL, '2023-05-30 18:09:48', 109);
INSERT INTO `sys_oper_log` VALUES (185, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"faculty,title,faculty_monthly,faculty_yearly,job,affair\"}', NULL, 0, NULL, '2023-05-30 18:09:48', 106);
INSERT INTO `sys_oper_log` VALUES (186, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2071', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"存在子菜单,不允许删除\",\"code\":601}', 0, NULL, '2023-05-30 18:13:00', 13);
INSERT INTO `sys_oper_log` VALUES (187, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"faculty\",\"className\":\"Faculty\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"编号\",\"columnId\":35,\"columnName\":\"id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 17:42:08\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":6,\"updateBy\":\"\",\"updateTime\":\"2023-05-30 18:04:10\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"姓名\",\"columnId\":36,\"columnName\":\"name\",\"columnType\":\"varchar(30)\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 17:42:08\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":6,\"updateBy\":\"\",\"updateTime\":\"2023-05-30 18:04:10\",\"usableColumn\":false},{\"capJavaField\":\"Type\",\"columnComment\":\"教师/职工\",\"columnId\":37,\"columnName\":\"type\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 17:42:08\",\"dictType\":\"faculty_type\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"type\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":6,\"updateBy\":\"\",\"updateTime\":\"2023-05-30 18:04:10\",\"usableColumn\":false},{\"capJavaField\":\"Title\",\"columnComment\":\"职称\",\"columnId\":38,\"columnName\":\"title\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 17:42:08\",\"dictType\":\"faculty_title\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isL', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-30 18:13:50', 60);
INSERT INTO `sys_oper_log` VALUES (188, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"financial/monthly/index\",\"createTime\":\"2023-05-30 18:10:40\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2053,\"menuName\":\"工资明细\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"monthly\",\"perms\":\"financial:monthly:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-30 18:14:22', 12);
INSERT INTO `sys_oper_log` VALUES (189, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"financial/affair/index\",\"createTime\":\"2023-05-30 18:10:54\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2065,\"menuName\":\"事务\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"affair\",\"perms\":\"financial:affair:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-30 18:14:27', 11);
INSERT INTO `sys_oper_log` VALUES (190, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/yearly/index\",\"createTime\":\"2023-05-30 18:11:04\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2077,\"menuName\":\"教职工年度\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"yearly\",\"perms\":\"system:yearly:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-30 18:14:37', 7);
INSERT INTO `sys_oper_log` VALUES (191, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/yearly/index\",\"createTime\":\"2023-05-30 18:11:04\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2077,\"menuName\":\"教职工年度\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"yearly\",\"perms\":\"system:yearly:list\",\"status\":\"1\",\"updateBy\":\"admin\",\"visible\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-30 18:14:44', 11);
INSERT INTO `sys_oper_log` VALUES (192, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"pay\",\"className\":\"FacultyMonthly\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"编号\",\"columnId\":76,\"columnName\":\"id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 17:48:44\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":12,\"updateBy\":\"\",\"updateTime\":\"2023-05-30 17:51:26\",\"usableColumn\":false},{\"capJavaField\":\"FacultyId\",\"columnComment\":\"教职工编号\",\"columnId\":77,\"columnName\":\"faculty_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 17:48:44\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"facultyId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":12,\"updateBy\":\"\",\"updateTime\":\"2023-05-30 17:51:26\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"姓名\",\"columnId\":78,\"columnName\":\"name\",\"columnType\":\"varchar(30)\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 17:48:44\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":12,\"updateBy\":\"\",\"updateTime\":\"2023-05-30 17:51:26\",\"usableColumn\":false},{\"capJavaField\":\"Month\",\"columnComment\":\"月份\",\"columnId\":79,\"columnName\":\"month\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 17:48:44\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isLis', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-30 18:17:03', 28);
INSERT INTO `sys_oper_log` VALUES (193, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"pay\",\"className\":\"FacultyMonthly\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"编号\",\"columnId\":76,\"columnName\":\"id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 17:48:44\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":12,\"updateBy\":\"\",\"updateTime\":\"2023-05-30 18:17:03\",\"usableColumn\":false},{\"capJavaField\":\"FacultyId\",\"columnComment\":\"教职工编号\",\"columnId\":77,\"columnName\":\"faculty_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 17:48:44\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"facultyId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":12,\"updateBy\":\"\",\"updateTime\":\"2023-05-30 18:17:03\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"姓名\",\"columnId\":78,\"columnName\":\"name\",\"columnType\":\"varchar(30)\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 17:48:44\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":12,\"updateBy\":\"\",\"updateTime\":\"2023-05-30 18:17:03\",\"usableColumn\":false},{\"capJavaField\":\"Month\",\"columnComment\":\"月份\",\"columnId\":79,\"columnName\":\"month\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 17:48:44\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isLis', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-30 18:17:43', 24);
INSERT INTO `sys_oper_log` VALUES (194, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"faculty_monthly\"}', NULL, 0, NULL, '2023-05-30 18:18:39', 181);
INSERT INTO `sys_oper_log` VALUES (195, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"faculty_monthly\"}', NULL, 0, NULL, '2023-05-30 18:18:39', 30);
INSERT INTO `sys_oper_log` VALUES (196, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"financial/pay/index\",\"createTime\":\"2023-05-30 18:20:41\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2089,\"menuName\":\"工资明细表\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"pay\",\"perms\":\"financial:pay:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-30 18:21:11', 6);
INSERT INTO `sys_oper_log` VALUES (197, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"pay\",\"className\":\"FacultyMonthly\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"编号\",\"columnId\":76,\"columnName\":\"id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 17:48:44\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":12,\"updateBy\":\"\",\"updateTime\":\"2023-05-30 18:17:43\",\"usableColumn\":false},{\"capJavaField\":\"FacultyId\",\"columnComment\":\"教职工编号\",\"columnId\":77,\"columnName\":\"faculty_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 17:48:44\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"facultyId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":12,\"updateBy\":\"\",\"updateTime\":\"2023-05-30 18:17:43\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"姓名\",\"columnId\":78,\"columnName\":\"name\",\"columnType\":\"varchar(30)\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 17:48:44\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":12,\"updateBy\":\"\",\"updateTime\":\"2023-05-30 18:17:43\",\"usableColumn\":false},{\"capJavaField\":\"Month\",\"columnComment\":\"月份\",\"columnId\":79,\"columnName\":\"month\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 17:48:44\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isLis', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-30 18:22:01', 23);
INSERT INTO `sys_oper_log` VALUES (198, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"faculty_monthly\"}', NULL, 0, NULL, '2023-05-30 18:22:34', 31);
INSERT INTO `sys_oper_log` VALUES (199, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"faculty_monthly\"}', NULL, 0, NULL, '2023-05-30 18:22:34', 32);
INSERT INTO `sys_oper_log` VALUES (200, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"faculty_monthly\"}', NULL, 0, NULL, '2023-05-30 18:22:39', 30);
INSERT INTO `sys_oper_log` VALUES (201, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"faculty_monthly\"}', NULL, 0, NULL, '2023-05-30 18:22:39', 30);
INSERT INTO `sys_oper_log` VALUES (202, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"faculty_monthly\"}', NULL, 0, NULL, '2023-05-30 18:22:48', 28);
INSERT INTO `sys_oper_log` VALUES (203, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"faculty_monthly\"}', NULL, 0, NULL, '2023-05-30 18:22:48', 28);
INSERT INTO `sys_oper_log` VALUES (204, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"financial/pay/index\",\"createTime\":\"2023-05-30 18:23:25\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2095,\"menuName\":\"工资表\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"pay\",\"perms\":\"financial:pay:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-30 18:23:41', 6);
INSERT INTO `sys_oper_log` VALUES (205, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"pay\",\"className\":\"FacultyMonthly\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"编号\",\"columnId\":76,\"columnName\":\"id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 17:48:44\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":12,\"updateBy\":\"\",\"updateTime\":\"2023-05-30 18:22:01\",\"usableColumn\":false},{\"capJavaField\":\"FacultyId\",\"columnComment\":\"教职工编号\",\"columnId\":77,\"columnName\":\"faculty_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 17:48:44\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"facultyId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":12,\"updateBy\":\"\",\"updateTime\":\"2023-05-30 18:22:01\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"姓名\",\"columnId\":78,\"columnName\":\"name\",\"columnType\":\"varchar(30)\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 17:48:44\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":12,\"updateBy\":\"\",\"updateTime\":\"2023-05-30 18:22:01\",\"usableColumn\":false},{\"capJavaField\":\"Month\",\"columnComment\":\"月份\",\"columnId\":79,\"columnName\":\"month\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 17:48:44\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isLis', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-30 18:24:20', 21);
INSERT INTO `sys_oper_log` VALUES (206, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"faculty_monthly\"}', NULL, 0, NULL, '2023-05-30 18:24:26', 36);
INSERT INTO `sys_oper_log` VALUES (207, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"faculty_monthly\"}', NULL, 0, NULL, '2023-05-30 18:24:27', 26);
INSERT INTO `sys_oper_log` VALUES (208, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"financial/pay/index\",\"createTime\":\"2023-05-30 18:25:18\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2101,\"menuName\":\"报表\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"pay\",\"perms\":\"financial:pay:list\",\"status\":\"1\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-30 18:25:44', 9);
INSERT INTO `sys_oper_log` VALUES (209, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"pay\",\"className\":\"FacultyMonthly\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"编号\",\"columnId\":76,\"columnName\":\"id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 17:48:44\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":12,\"updateBy\":\"\",\"updateTime\":\"2023-05-30 18:24:20\",\"usableColumn\":false},{\"capJavaField\":\"FacultyId\",\"columnComment\":\"教职工编号\",\"columnId\":77,\"columnName\":\"faculty_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 17:48:44\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"facultyId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":12,\"updateBy\":\"\",\"updateTime\":\"2023-05-30 18:24:20\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"姓名\",\"columnId\":78,\"columnName\":\"name\",\"columnType\":\"varchar(30)\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 17:48:44\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":12,\"updateBy\":\"\",\"updateTime\":\"2023-05-30 18:24:20\",\"usableColumn\":false},{\"capJavaField\":\"Month\",\"columnComment\":\"月份\",\"columnId\":79,\"columnName\":\"month\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 17:48:44\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isLis', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-30 18:26:25', 21);
INSERT INTO `sys_oper_log` VALUES (210, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"faculty_monthly\"}', NULL, 0, NULL, '2023-05-30 18:26:35', 24);
INSERT INTO `sys_oper_log` VALUES (211, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"faculty_monthly\"}', NULL, 0, NULL, '2023-05-30 18:26:35', 24);
INSERT INTO `sys_oper_log` VALUES (212, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"financial/pay/index\",\"createTime\":\"2023-05-30 18:20:41\",\"icon\":\"money\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2089,\"menuName\":\"工资明细表\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"pay\",\"perms\":\"financial:pay:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-30 18:28:07', 10);
INSERT INTO `sys_oper_log` VALUES (213, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"financial/pay/index\",\"createTime\":\"2023-05-30 18:23:25\",\"icon\":\"money\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2095,\"menuName\":\"工资表\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"pay\",\"perms\":\"financial:pay:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-30 18:28:18', 5);
INSERT INTO `sys_oper_log` VALUES (214, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"financial/affair/index\",\"createTime\":\"2023-05-30 18:10:54\",\"icon\":\"education\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2065,\"menuName\":\"事务\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"affair\",\"perms\":\"financial:affair:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-30 18:29:22', 9);
INSERT INTO `sys_oper_log` VALUES (215, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"financial/pay/index\",\"createTime\":\"2023-05-30 18:25:18\",\"icon\":\"money\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2101,\"menuName\":\"报表\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"pay\",\"perms\":\"financial:pay:list\",\"status\":\"1\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-30 18:29:36', 9);
INSERT INTO `sys_oper_log` VALUES (216, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/yearly/index\",\"createTime\":\"2023-05-30 18:11:04\",\"icon\":\"people\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2077,\"menuName\":\"教职工年度\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"yearly\",\"perms\":\"system:yearly:list\",\"status\":\"1\",\"updateBy\":\"admin\",\"visible\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-30 18:32:09', 9);
INSERT INTO `sys_oper_log` VALUES (217, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"faculty,title,faculty_monthly,faculty_yearly,job,affair\"}', NULL, 0, NULL, '2023-05-30 18:35:56', 140);
INSERT INTO `sys_oper_log` VALUES (218, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"faculty,title,faculty_monthly,faculty_yearly,job,affair\"}', NULL, 0, NULL, '2023-05-30 18:35:57', 125);
INSERT INTO `sys_oper_log` VALUES (219, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"faculty,title,faculty_monthly,faculty_yearly,job,affair\"}', NULL, 0, NULL, '2023-05-30 18:35:57', 126);
INSERT INTO `sys_oper_log` VALUES (220, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"faculty,title,faculty_monthly,faculty_yearly,job,affair\"}', NULL, 0, NULL, '2023-05-30 18:36:17', 118);
INSERT INTO `sys_oper_log` VALUES (221, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"faculty,title,faculty_monthly,faculty_yearly,job,affair\"}', NULL, 0, NULL, '2023-05-30 18:36:17', 117);
INSERT INTO `sys_oper_log` VALUES (222, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"faculty,title,faculty_monthly,faculty_yearly,job,affair\"}', NULL, 0, NULL, '2023-05-30 18:36:17', 116);
INSERT INTO `sys_oper_log` VALUES (223, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"title\",\"className\":\"Title\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"编号\",\"columnId\":67,\"columnName\":\"id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 17:42:08\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":10,\"updateBy\":\"\",\"updateTime\":\"2023-05-30 18:04:48\",\"usableColumn\":false},{\"capJavaField\":\"Des\",\"columnComment\":\"职称\",\"columnId\":68,\"columnName\":\"des\",\"columnType\":\"varchar(60)\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 17:42:08\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"des\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":10,\"updateBy\":\"\",\"updateTime\":\"2023-05-30 18:04:48\",\"usableColumn\":false},{\"capJavaField\":\"Factor\",\"columnComment\":\"职称系数\",\"columnId\":69,\"columnName\":\"factor\",\"columnType\":\"float\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 17:42:08\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"factor\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":10,\"updateBy\":\"\",\"updateTime\":\"2023-05-30 18:04:48\",\"usableColumn\":false}],\"crud\":true,\"functionAuthor\":\"Keven\",\"functionName\":\"职称\",\"genPath\":\"/\",\"genType\":\"0\",\"moduleName\":\"financial\",\"options\":\"{\\\"parentMenuId\\\":\\\"2052\\\"}\",\"packageName\":\"com.ruoyi.financial\",\"params\":{\"parentMenuId\":\"2052\"},\"parentMenuId\":\"2052\",\"sub\":false,\"tableComment\":\"职称表\",\"tableId\":10,\"tableName\":\"title', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-30 18:37:25', 7);
INSERT INTO `sys_oper_log` VALUES (224, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"pay\",\"className\":\"Pay\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"编号\",\"columnId\":76,\"columnName\":\"id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 17:48:44\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":12,\"updateBy\":\"\",\"updateTime\":\"2023-05-30 18:26:25\",\"usableColumn\":false},{\"capJavaField\":\"FacultyId\",\"columnComment\":\"教职工编号\",\"columnId\":77,\"columnName\":\"faculty_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 17:48:44\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"facultyId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":12,\"updateBy\":\"\",\"updateTime\":\"2023-05-30 18:26:25\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"姓名\",\"columnId\":78,\"columnName\":\"name\",\"columnType\":\"varchar(30)\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 17:48:44\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":12,\"updateBy\":\"\",\"updateTime\":\"2023-05-30 18:26:25\",\"usableColumn\":false},{\"capJavaField\":\"Month\",\"columnComment\":\"月份\",\"columnId\":79,\"columnName\":\"month\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 17:48:44\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isP', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-30 18:38:44', 21);
INSERT INTO `sys_oper_log` VALUES (225, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"pay\",\"className\":\"Pay\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"编号\",\"columnId\":76,\"columnName\":\"id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 17:48:44\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":12,\"updateBy\":\"\",\"updateTime\":\"2023-05-30 18:38:44\",\"usableColumn\":false},{\"capJavaField\":\"FacultyId\",\"columnComment\":\"教职工编号\",\"columnId\":77,\"columnName\":\"faculty_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 17:48:44\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"facultyId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":12,\"updateBy\":\"\",\"updateTime\":\"2023-05-30 18:38:44\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"姓名\",\"columnId\":78,\"columnName\":\"name\",\"columnType\":\"varchar(30)\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 17:48:44\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":12,\"updateBy\":\"\",\"updateTime\":\"2023-05-30 18:38:44\",\"usableColumn\":false},{\"capJavaField\":\"Month\",\"columnComment\":\"月份\",\"columnId\":79,\"columnName\":\"month\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 17:48:44\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isP', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-30 18:39:17', 16);
INSERT INTO `sys_oper_log` VALUES (226, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"pay\",\"className\":\"Pay\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"编号\",\"columnId\":76,\"columnName\":\"id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 17:48:44\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":12,\"updateBy\":\"\",\"updateTime\":\"2023-05-30 18:39:17\",\"usableColumn\":false},{\"capJavaField\":\"FacultyId\",\"columnComment\":\"教职工编号\",\"columnId\":77,\"columnName\":\"faculty_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 17:48:44\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"facultyId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":12,\"updateBy\":\"\",\"updateTime\":\"2023-05-30 18:39:17\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"姓名\",\"columnId\":78,\"columnName\":\"name\",\"columnType\":\"varchar(30)\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 17:48:44\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":12,\"updateBy\":\"\",\"updateTime\":\"2023-05-30 18:39:17\",\"usableColumn\":false},{\"capJavaField\":\"Month\",\"columnComment\":\"月份\",\"columnId\":79,\"columnName\":\"month\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 17:48:44\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isP', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-30 18:39:30', 20);
INSERT INTO `sys_oper_log` VALUES (227, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"pay\",\"className\":\"Pay\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"编号\",\"columnId\":76,\"columnName\":\"id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 17:48:44\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":12,\"updateBy\":\"\",\"updateTime\":\"2023-05-30 18:39:30\",\"usableColumn\":false},{\"capJavaField\":\"FacultyId\",\"columnComment\":\"教职工编号\",\"columnId\":77,\"columnName\":\"faculty_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 17:48:44\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"facultyId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":12,\"updateBy\":\"\",\"updateTime\":\"2023-05-30 18:39:30\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"姓名\",\"columnId\":78,\"columnName\":\"name\",\"columnType\":\"varchar(30)\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 17:48:44\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":12,\"updateBy\":\"\",\"updateTime\":\"2023-05-30 18:39:30\",\"usableColumn\":false},{\"capJavaField\":\"Month\",\"columnComment\":\"月份\",\"columnId\":79,\"columnName\":\"month\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 17:48:44\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isP', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-30 18:39:38', 19);
INSERT INTO `sys_oper_log` VALUES (228, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"yearly\",\"className\":\"FacultyYearly\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"编号\",\"columnId\":88,\"columnName\":\"id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 17:48:44\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":13,\"updateBy\":\"\",\"updateTime\":\"2023-05-30 17:52:17\",\"usableColumn\":false},{\"capJavaField\":\"FacultyId\",\"columnComment\":\"教职工编号\",\"columnId\":89,\"columnName\":\"faculty_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 17:48:44\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"facultyId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":13,\"updateBy\":\"\",\"updateTime\":\"2023-05-30 17:52:17\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"姓名\",\"columnId\":90,\"columnName\":\"name\",\"columnType\":\"varchar(30)\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 17:48:44\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":13,\"updateBy\":\"\",\"updateTime\":\"2023-05-30 17:52:17\",\"usableColumn\":false},{\"capJavaField\":\"TotalPay\",\"columnComment\":\"本年度累计工资总额\",\"columnId\":91,\"columnName\":\"total_pay\",\"columnType\":\"float\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 17:48:44\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"is', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-30 18:41:56', 15);
INSERT INTO `sys_oper_log` VALUES (229, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"pay\",\"className\":\"FacultyMonthly\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"编号\",\"columnId\":76,\"columnName\":\"id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 17:48:44\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":12,\"updateBy\":\"\",\"updateTime\":\"2023-05-30 18:39:38\",\"usableColumn\":false},{\"capJavaField\":\"FacultyId\",\"columnComment\":\"教职工编号\",\"columnId\":77,\"columnName\":\"faculty_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 17:48:44\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"facultyId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":12,\"updateBy\":\"\",\"updateTime\":\"2023-05-30 18:39:38\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"姓名\",\"columnId\":78,\"columnName\":\"name\",\"columnType\":\"varchar(30)\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 17:48:44\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":12,\"updateBy\":\"\",\"updateTime\":\"2023-05-30 18:39:38\",\"usableColumn\":false},{\"capJavaField\":\"Month\",\"columnComment\":\"月份\",\"columnId\":79,\"columnName\":\"month\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 17:48:44\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isLis', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-30 18:42:50', 17);
INSERT INTO `sys_oper_log` VALUES (230, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"job\",\"className\":\"Job\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"编号\",\"columnId\":95,\"columnName\":\"id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 17:48:44\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":14,\"updateBy\":\"\",\"updateTime\":\"2023-05-30 18:07:41\",\"usableColumn\":false},{\"capJavaField\":\"Des\",\"columnComment\":\"职务\",\"columnId\":96,\"columnName\":\"des\",\"columnType\":\"varchar(60)\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 17:48:44\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"des\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":14,\"updateBy\":\"\",\"updateTime\":\"2023-05-30 18:07:41\",\"usableColumn\":false}],\"crud\":true,\"functionAuthor\":\"Keven\",\"functionName\":\"职务\",\"genPath\":\"/\",\"genType\":\"0\",\"moduleName\":\"financial\",\"options\":\"{\\\"parentMenuId\\\":\\\"2052\\\"}\",\"packageName\":\"com.ruoyi.financial\",\"params\":{\"parentMenuId\":\"2052\"},\"parentMenuId\":\"2052\",\"sub\":false,\"tableComment\":\"职务表\",\"tableId\":14,\"tableName\":\"job\",\"tplCategory\":\"crud\",\"tree\":false}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-30 18:43:07', 5);
INSERT INTO `sys_oper_log` VALUES (231, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"faculty,title,faculty_monthly,faculty_yearly,job,affair\"}', NULL, 0, NULL, '2023-05-30 18:43:19', 116);
INSERT INTO `sys_oper_log` VALUES (232, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"faculty,title,faculty_monthly,faculty_yearly,job,affair\"}', NULL, 0, NULL, '2023-05-30 18:43:20', 110);
INSERT INTO `sys_oper_log` VALUES (233, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"faculty,title,faculty_monthly,faculty_yearly,job,affair\"}', NULL, 0, NULL, '2023-05-30 18:43:20', 121);
INSERT INTO `sys_oper_log` VALUES (234, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"financial/pay/index\",\"createTime\":\"2023-05-30 18:25:18\",\"icon\":\"money\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2101,\"menuName\":\"报表\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"pay\",\"perms\":\"financial:pay:list\",\"status\":\"1\",\"updateBy\":\"admin\",\"visible\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-30 18:51:43', 32);
INSERT INTO `sys_oper_log` VALUES (235, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"financial/job/index\",\"createTime\":\"2023-05-30 18:56:18\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2119,\"menuName\":\"职务\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":2052,\"path\":\"job\",\"perms\":\"financial:job:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-30 18:56:45', 12);
INSERT INTO `sys_oper_log` VALUES (236, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"financial/affair/index\",\"createTime\":\"2023-05-30 18:10:54\",\"icon\":\"education\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2065,\"menuName\":\"事务\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":0,\"path\":\"affair\",\"perms\":\"financial:affair:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-30 18:57:07', 9);

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
INSERT INTO `sys_role` VALUES (100, '会计', 'finance', 3, '1', 1, 1, '0', '0', 'admin', '2023-05-27 15:14:16', 'admin', '2023-05-30 17:55:45', NULL);
INSERT INTO `sys_role` VALUES (101, '教职工', 'faculty', 4, '1', 0, 1, '0', '0', 'admin', '2023-05-27 15:15:11', 'admin', '2023-05-30 17:55:51', NULL);
INSERT INTO `sys_role` VALUES (102, '管理员', 'root', 5, '1', 0, 1, '0', '0', 'admin', '2023-05-27 19:11:17', 'admin', '2023-05-30 17:55:58', NULL);
INSERT INTO `sys_role` VALUES (103, '银行', 'bank', 6, '1', 0, 1, '0', '0', 'admin', '2023-05-27 19:12:01', 'admin', '2023-05-30 17:56:02', NULL);

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
INSERT INTO `sys_user` VALUES (1, 103, 'admin', '若依', '00', 'ry@163.com', '15888888888', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2023-05-29 19:18:35', 'admin', '2023-05-28 07:54:27', '', '2023-05-29 19:18:35', '管理员', NULL);
INSERT INTO `sys_user` VALUES (2, 105, 'ry', '若依', '00', 'ry@qq.com', '15666666666', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2023-05-28 07:54:27', 'admin', '2023-05-28 07:54:27', '', NULL, '测试员', NULL);
INSERT INTO `sys_user` VALUES (100, NULL, '会计', '会计', '00', '', '', '0', '', '$2a$10$GIAJySInsBxv1mmg9FwDeOzmn.oVTnCGvngbwy0Uye2MJYj2hJsuK', '0', '0', '', NULL, 'admin', '2023-05-27 15:16:18', '', NULL, NULL, 2);
INSERT INTO `sys_user` VALUES (101, NULL, '张三', '张三', '00', '', '', '0', '', '$2a$10$IDvnC7OcqO2h/cIiuyBvwe0iu8VoLH.sL.1htCChn9zdQ3NGhweJe', '0', '0', '127.0.0.1', '2023-05-29 18:47:14', 'admin', '2023-05-27 15:16:43', '', '2023-05-29 18:47:13', NULL, 1);
INSERT INTO `sys_user` VALUES (102, NULL, '管理员', '管理员', '00', '', '', '0', '', '$2a$10$3qU6MrBmHx1DOD2vGym.cOpsKkuoom/giTLbAenY4BmmE0a2Izc1y', '0', '0', '127.0.0.1', '2023-05-29 21:44:38', 'admin', '2023-05-27 19:22:32', '', '2023-05-29 21:44:37', NULL, NULL);
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
  `factor` float NOT NULL DEFAULT 1 COMMENT '职称系数',
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

SET FOREIGN_KEY_CHECKS = 1;
