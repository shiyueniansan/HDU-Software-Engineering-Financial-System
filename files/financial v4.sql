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

 Date: 30/05/2023 22:46:13
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
INSERT INTO `affair` VALUES (1, 28, '顾子异', 9, '大学语文', 15);
INSERT INTO `affair` VALUES (2, 28, '沈杰宏', 3, '大学英语', 13);
INSERT INTO `affair` VALUES (3, 11, '任子韬', 5, '高等数学', 12);
INSERT INTO `affair` VALUES (4, 26, '秦璐', 4, '大学语文', 12);
INSERT INTO `affair` VALUES (5, 5, '贾睿', 6, '计算机网络', 10);
INSERT INTO `affair` VALUES (6, 10, '韦晓明', 5, '大学英语', 17);
INSERT INTO `affair` VALUES (7, 6, '金岚', 4, '数据库原理', 23);
INSERT INTO `affair` VALUES (8, 25, '贾云熙', 5, '工科数学分析', 12);
INSERT INTO `affair` VALUES (9, 14, '江詩涵', 5, '数理逻辑和集合论', 18);
INSERT INTO `affair` VALUES (10, 5, '朱致远', 11, '微观经济学', 6);
INSERT INTO `affair` VALUES (11, 26, '钟岚', 6, '宏观经济学', 7);
INSERT INTO `affair` VALUES (12, 26, '田嘉伦', 1, '计量经济学', 15);
INSERT INTO `affair` VALUES (13, 12, '余子异', 1, '金融理论', 6);
INSERT INTO `affair` VALUES (14, 25, '萧秀英', 4, '发展经济学', 16);
INSERT INTO `affair` VALUES (15, 29, '江詩涵', 7, '制度经济学', 18);
INSERT INTO `affair` VALUES (16, 14, '顾岚', 2, 'WTO专题', 9);
INSERT INTO `affair` VALUES (17, 8, '郑安琪', 9, '国际贸易实务', 7);
INSERT INTO `affair` VALUES (18, 5, '崔睿', 3, '国际企业管理', 11);
INSERT INTO `affair` VALUES (19, 4, '魏晓明', 5, '人力资源管理', 15);
INSERT INTO `affair` VALUES (20, 21, '傅秀英', 4, '西方经济学', 19);
INSERT INTO `affair` VALUES (21, 23, '汪詩涵', 6, '国际经济学', 16);
INSERT INTO `affair` VALUES (22, 14, '何秀英', 5, '电子商务概论', 9);
INSERT INTO `affair` VALUES (23, 22, '方璐', 4, '网络营销', 6);
INSERT INTO `affair` VALUES (24, 10, '周璐', 5, '信息系统概论', 16);
INSERT INTO `affair` VALUES (25, 24, '龙睿', 5, '保险学', 14);
INSERT INTO `affair` VALUES (26, 12, '林秀英', 11, '金融学', 19);
INSERT INTO `affair` VALUES (27, 10, '姚秀英', 6, '国际金融学', 8);
INSERT INTO `affair` VALUES (28, 28, '毛岚', 1, '证券投资学', 12);
INSERT INTO `affair` VALUES (29, 15, '杨睿', 1, '会计学', 14);
INSERT INTO `affair` VALUES (30, 5, '叶杰宏', 4, '财务管理', 9);
INSERT INTO `affair` VALUES (31, 1, '方致远', 7, '审计学', 13);
INSERT INTO `affair` VALUES (32, 32, '史璐', 2, '艺术设计概论', 8);
INSERT INTO `affair` VALUES (33, 11, '谭晓明', 9, '中国艺术设计史', 7);
INSERT INTO `affair` VALUES (34, 5, '丁安琪', 3, '外国艺术设计史', 9);
INSERT INTO `affair` VALUES (35, 30, '黎宇宁', 5, '艺术考古学', 9);
INSERT INTO `affair` VALUES (36, 17, '高睿', 9, '文化史迹考察', 14);
INSERT INTO `affair` VALUES (37, 25, '金子异', 3, '设计素描', 12);
INSERT INTO `affair` VALUES (38, 10, '黄嘉伦', 5, '设计表达技法', 6);
INSERT INTO `affair` VALUES (39, 29, '王致远', 4, '平面构成与设计', 12);
INSERT INTO `affair` VALUES (40, 2, '陶晓明', 6, '立体构成与设计', 19);
INSERT INTO `affair` VALUES (41, 31, '蒋子异', 5, '工业设计导论', 16);
INSERT INTO `affair` VALUES (42, 27, '蒋岚', 4, '工业设计史', 8);
INSERT INTO `affair` VALUES (43, 8, '贺震南', 5, '工程制图', 18);
INSERT INTO `affair` VALUES (44, 22, '顾杰宏', 5, '机械设计基础', 18);
INSERT INTO `affair` VALUES (45, 10, '钱宇宁', 11, '技术美学', 19);
INSERT INTO `affair` VALUES (46, 16, '邓子异', 6, '动画艺术概论', 18);
INSERT INTO `affair` VALUES (47, 2, '金安琪', 1, '电影视听语言', 18);
INSERT INTO `affair` VALUES (48, 26, '夏子异', 1, '分镜头剧本设计', 5);
INSERT INTO `affair` VALUES (49, 12, '苏子异', 4, '导演基础', 16);
INSERT INTO `affair` VALUES (50, 26, '段宇宁', 7, '动画片创作', 14);
INSERT INTO `affair` VALUES (51, 21, '韦宇宁', 2, '产品设计原理', 20);
INSERT INTO `affair` VALUES (52, 7, '余震南', 9, '产品创新设计', 6);
INSERT INTO `affair` VALUES (53, 11, '于睿', 3, '结构力学', 20);
INSERT INTO `affair` VALUES (54, 10, '钱杰宏', 5, '材料力学', 10);
INSERT INTO `affair` VALUES (55, 30, '杨嘉伦', 4, '建筑材料', 8);
INSERT INTO `affair` VALUES (56, 16, '陈秀英', 6, '流体力学', 20);
INSERT INTO `affair` VALUES (57, 18, '汪杰宏', 5, '荷载与结构设计原理', 9);
INSERT INTO `affair` VALUES (58, 2, '汤安琪', 4, '钢筋混凝土结构', 18);
INSERT INTO `affair` VALUES (59, 30, '阎岚', 5, '地基基础', 18);
INSERT INTO `affair` VALUES (60, 11, '廖晓明', 5, '高层建筑结构', 18);
INSERT INTO `affair` VALUES (61, 24, '张秀英', 11, '地下工程', 9);
INSERT INTO `affair` VALUES (62, 9, '廖安琪', 6, '建筑结构抗震 ', 5);
INSERT INTO `affair` VALUES (63, 31, '沈子异', 1, '工程经济', 11);
INSERT INTO `affair` VALUES (64, 21, '邱宇宁', 1, '建设项目管理', 15);
INSERT INTO `affair` VALUES (65, 23, '贺秀英', 4, 'C语言程序设计', 17);
INSERT INTO `affair` VALUES (66, 28, '韩子韬', 7, '计算机组成原理', 17);
INSERT INTO `affair` VALUES (67, 3, '徐震南', 2, '数据结构', 11);
INSERT INTO `affair` VALUES (68, 31, '韦睿', 9, '操作系统', 6);
INSERT INTO `affair` VALUES (69, 17, '孟宇宁', 3, '微机原理', 19);
INSERT INTO `affair` VALUES (70, 26, '蔡子韬', 5, '计算机网络', 14);
INSERT INTO `affair` VALUES (71, 33, '金岚', 4, '计算机系统结构', 19);
INSERT INTO `affair` VALUES (72, 21, '潘杰宏', 6, '软件工程', 15);
INSERT INTO `affair` VALUES (73, 4, '邵震南', 5, '面向对象程序设计', 7);
INSERT INTO `affair` VALUES (74, 30, '姜岚', 4, '分布式系统', 8);
INSERT INTO `affair` VALUES (75, 4, '李宇宁', 5, '软件工程', 7);
INSERT INTO `affair` VALUES (76, 9, '阎岚', 5, 'Oracle数据库系统', 13);
INSERT INTO `affair` VALUES (77, 23, '钟致远', 11, '电子商务', 19);
INSERT INTO `affair` VALUES (78, 18, '汪安琪', 6, '物流管理', 7);
INSERT INTO `affair` VALUES (79, 15, '贾杰宏', 1, '商务网站建设', 15);
INSERT INTO `affair` VALUES (80, 26, '于睿', 1, '计算机图形学', 17);
INSERT INTO `affair` VALUES (81, 15, '叶璐', 4, '人工智能', 5);
INSERT INTO `affair` VALUES (82, 18, '蒋璐', 7, '数字信号处理', 7);
INSERT INTO `affair` VALUES (83, 19, '毛致远', 2, '信息对抗', 15);
INSERT INTO `affair` VALUES (84, 14, '夏子韬', 9, '移动计算', 6);
INSERT INTO `affair` VALUES (85, 26, '薛詩涵', 3, '微机系统', 6);
INSERT INTO `affair` VALUES (86, 29, '江宇宁', 5, '人机界面设计', 13);
INSERT INTO `affair` VALUES (87, 14, '杨晓明', 4, '计算机网络', 5);
INSERT INTO `affair` VALUES (88, 27, '姚子韬', 6, '信息安全', 15);
INSERT INTO `affair` VALUES (89, 23, '周宇宁', 5, '电子技术', 12);
INSERT INTO `affair` VALUES (90, 26, '姜宇宁', 4, '程序设计', 5);
INSERT INTO `affair` VALUES (91, 11, '潘震南', 5, '商务网站建设', 16);
INSERT INTO `affair` VALUES (92, 17, '卢安琪', 5, '供应链管理', 11);
INSERT INTO `affair` VALUES (93, 7, '魏安琪', 11, '国际商务管理', 12);
INSERT INTO `affair` VALUES (94, 32, '邹宇宁', 6, '物流管理', 13);
INSERT INTO `affair` VALUES (95, 8, '李宇宁', 1, '编译原理', 15);
INSERT INTO `affair` VALUES (96, 5, '任宇宁', 1, '管理学原理', 11);
INSERT INTO `affair` VALUES (97, 26, '郝嘉伦', 4, '电子商务', 13);
INSERT INTO `affair` VALUES (98, 2, '陆睿', 7, '应用密码学基础', 18);
INSERT INTO `affair` VALUES (99, 14, '刘詩涵', 2, '计算机通讯原理', 17);
INSERT INTO `affair` VALUES (100, 27, '黎睿', 9, '数论与有限域基础', 18);
INSERT INTO `affair` VALUES (101, 28, '汤致远', 3, '计算机系统结构', 10);
INSERT INTO `affair` VALUES (102, 28, '史子韬', 5, '数字图像处理', 8);
INSERT INTO `affair` VALUES (103, 11, '阎致远', 9, '多媒体信息处理技术', 9);
INSERT INTO `affair` VALUES (104, 26, '孟致远', 3, '算法设计与分析', 18);
INSERT INTO `affair` VALUES (105, 5, '胡安琪', 5, '汇编语言', 14);
INSERT INTO `affair` VALUES (106, 10, '史致远', 4, '计算机电路基础', 19);
INSERT INTO `affair` VALUES (107, 6, '傅致远', 6, '信息隐藏技术', 10);
INSERT INTO `affair` VALUES (108, 25, '高宇宁', 5, '网络安全编程', 17);
INSERT INTO `affair` VALUES (109, 14, '廖岚', 4, '网络安全风险评估', 17);
INSERT INTO `affair` VALUES (110, 5, '陆宇宁', 5, '信息安全数学基础', 10);
INSERT INTO `affair` VALUES (111, 10, '段子异', 5, '现代艺术', 12);

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
  `basic_pay` float NULL DEFAULT 0 COMMENT '基本工资',
  `living_subsidy` float NULL DEFAULT 0 COMMENT '生活补贴',
  `reading_subsidy` float NULL DEFAULT 0 COMMENT '书报费',
  `transportation_subsidy` float NULL DEFAULT 0 COMMENT '交通费',
  `washing_subsidy` float NULL DEFAULT 0 COMMENT '洗理费',
  `quota_hour` float NULL DEFAULT 0 COMMENT '定额课时',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `staff_position`(`job` ASC) USING BTREE,
  INDEX `professional_title`(`title` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '教职工表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of faculty
-- ----------------------------
INSERT INTO `faculty` VALUES (1, '张璐', 0, 3, 1, 13923, 260.58, 69.68, 228.62, 127.7, 45);
INSERT INTO `faculty` VALUES (2, '廖宇宁', 1, 0, 3, 5860.16, 327.66, 51.67, 261.13, 147.39, 34);
INSERT INTO `faculty` VALUES (3, '夏晓明', 0, 1, 1, 8582.1, 259.46, 6.27, 255.03, 117.92, 33);
INSERT INTO `faculty` VALUES (4, '蔡璐', 0, 4, 4, 16966, 53.99, 54.01, 315.78, 140.84, 58);
INSERT INTO `faculty` VALUES (5, '顾杰宏', 1, 1, 7, 9756.86, 199.68, 32.47, 164.07, 25.78, 42);
INSERT INTO `faculty` VALUES (6, '顾宇宁', 0, 0, 4, 9441.27, 892.27, 23.41, 237.59, 108.26, 48);
INSERT INTO `faculty` VALUES (7, '江秀英', 1, 3, 4, 11563.9, 246.96, 39.1, 97.94, 56.1, 57);
INSERT INTO `faculty` VALUES (8, '谭子异', 0, 1, 0, 18780.5, 174.52, 70.16, 434.96, 199.04, 33);
INSERT INTO `faculty` VALUES (9, '陆杰宏', 1, 2, 6, 5511.1, 736.25, 52.82, 274.45, 28.82, 57);
INSERT INTO `faculty` VALUES (10, '薛岚', 1, 3, 7, 9045.74, 530.15, 13, 0.11, 116.84, 47);
INSERT INTO `faculty` VALUES (11, '曾睿', 0, 3, 4, 18379.8, 248.81, 70.33, 344.08, 41.85, 35);
INSERT INTO `faculty` VALUES (12, '莫杰宏', 1, 4, 1, 7846.48, 660.49, 98.67, 136.66, 112.93, 53);
INSERT INTO `faculty` VALUES (13, '雷睿', 1, 2, 3, 10459.2, 348.27, 12.03, 37.22, 162.02, 32);
INSERT INTO `faculty` VALUES (14, '廖詩涵', 0, 3, 0, 15603.2, 870.52, 28.3, 83.04, 141.25, 45);
INSERT INTO `faculty` VALUES (15, '黄云熙', 1, 3, 3, 12623.9, 127.9, 81.96, 451.95, 107.47, 45);
INSERT INTO `faculty` VALUES (16, '龙子异', 1, 2, 7, 6137.76, 310.77, 44.57, 485.14, 182.04, 57);
INSERT INTO `faculty` VALUES (17, '杜晓明', 1, 4, 6, 8002.86, 734.06, 21.57, 136.39, 81.15, 31);
INSERT INTO `faculty` VALUES (18, '江子异', 1, 3, 7, 10317, 511.21, 84.84, 397.52, 20.94, 37);
INSERT INTO `faculty` VALUES (19, '熊晓明', 0, 2, 2, 5224.87, 320.93, 5.14, 33.18, 173.39, 31);
INSERT INTO `faculty` VALUES (20, '苏杰宏', 0, 3, 1, 6524.05, 351.04, 87.64, 266.15, 4.14, 37);
INSERT INTO `faculty` VALUES (21, '阎璐', 0, 0, 4, 13509.9, 827.72, 63.33, 156.6, 145.35, 37);
INSERT INTO `faculty` VALUES (22, '徐秀英', 0, 4, 4, 16092.9, 410.85, 68.17, 79.08, 67.77, 59);
INSERT INTO `faculty` VALUES (23, '韦嘉伦', 0, 2, 2, 14784.6, 322.74, 57.5, 90.31, 127.61, 41);
INSERT INTO `faculty` VALUES (24, '程安琪', 0, 2, 8, 18176.6, 349.06, 48.25, 167.31, 6.37, 49);
INSERT INTO `faculty` VALUES (25, '梁子异', 1, 4, 1, 9678.73, 714.87, 77.77, 159.56, 13.93, 43);
INSERT INTO `faculty` VALUES (26, '姜嘉伦', 1, 1, 3, 5390.73, 21.03, 44.25, 260.07, 153.66, 56);
INSERT INTO `faculty` VALUES (27, '吴睿', 0, 1, 4, 8979.09, 809.37, 13.21, 317.54, 155.25, 44);
INSERT INTO `faculty` VALUES (28, '蒋宇宁', 0, 2, 3, 17212, 104.98, 44.54, 68.34, 61.82, 30);
INSERT INTO `faculty` VALUES (29, '丁子韬', 0, 1, 6, 8987.26, 401.15, 30.74, 481.55, 14.82, 43);
INSERT INTO `faculty` VALUES (30, '于安琪', 0, 4, 1, 17947.7, 921.5, 43.8, 409.71, 146.68, 31);
INSERT INTO `faculty` VALUES (31, '林致远', 0, 4, 0, 10333.1, 548.09, 5.15, 247.95, 182.88, 43);
INSERT INTO `faculty` VALUES (32, '李岚', 0, 3, 4, 7931.19, 803.34, 58.48, 85.04, 130.22, 43);
INSERT INTO `faculty` VALUES (33, '卢嘉伦', 0, 2, 2, 7455.76, 41.17, 42.33, 387.84, 142.14, 42);
INSERT INTO `faculty` VALUES (34, '李杰宏', 0, 3, 7, 7489.29, 81.52, 30.45, 364.43, 116.12, 35);
INSERT INTO `faculty` VALUES (35, '徐岚', 1, 1, 5, 12632.5, 202.27, 81.74, 288.77, 108.59, 53);
INSERT INTO `faculty` VALUES (36, '蒋嘉伦', 0, 2, 5, 12980.7, 118.88, 17.98, 319.28, 113.77, 57);
INSERT INTO `faculty` VALUES (37, '冯璐', 0, 3, 4, 6862.41, 878.92, 10.7, 439.35, 87.19, 50);
INSERT INTO `faculty` VALUES (38, '丁震南', 1, 0, 3, 5917.93, 305.83, 5.83, 445.02, 133.42, 59);
INSERT INTO `faculty` VALUES (39, '高璐', 0, 2, 5, 11190.1, 346.89, 67.66, 466.11, 46.46, 58);
INSERT INTO `faculty` VALUES (40, '钱秀英', 0, 2, 5, 12144, 20.15, 61.61, 385.74, 96.6, 59);
INSERT INTO `faculty` VALUES (41, '严子韬', 1, 1, 3, 10009.8, 563.49, 65.23, 236.29, 185.89, 33);
INSERT INTO `faculty` VALUES (42, '曾嘉伦', 0, 1, 4, 15294.7, 80.8, 25.39, 167.84, 188.47, 41);
INSERT INTO `faculty` VALUES (43, '卢宇宁', 1, 0, 7, 6258.95, 447.85, 79.97, 487.57, 145.54, 32);
INSERT INTO `faculty` VALUES (44, '董晓明', 0, 0, 4, 14752.3, 300.31, 20.59, 191.49, 43.76, 54);
INSERT INTO `faculty` VALUES (45, '孟宇宁', 1, 3, 3, 12790.7, 478.95, 63.19, 243.37, 180.45, 38);
INSERT INTO `faculty` VALUES (46, '毛杰宏', 1, 3, 6, 19052.9, 294.19, 35.03, 355.89, 105.31, 38);
INSERT INTO `faculty` VALUES (47, '姜安琪', 0, 3, 3, 6784.61, 670.34, 76.4, 91.38, 77.3, 55);
INSERT INTO `faculty` VALUES (48, '范子异', 0, 3, 1, 10394.3, 592.18, 90.14, 256.55, 39.77, 42);
INSERT INTO `faculty` VALUES (49, '韩睿', 0, 4, 6, 17739.7, 621.39, 10.77, 476.06, 66.93, 56);
INSERT INTO `faculty` VALUES (50, '何晓明', 0, 2, 5, 15588.3, 895.99, 16.06, 27.52, 87.13, 56);
INSERT INTO `faculty` VALUES (51, '叶璐', 1, 2, 4, 14566.5, 128.53, 90.06, 286, 178.85, 43);
INSERT INTO `faculty` VALUES (52, '孙晓明', 1, 4, 7, 9969.29, 404.91, 38.31, 54.5, 180.94, 42);
INSERT INTO `faculty` VALUES (53, '许岚', 1, 2, 4, 14626.7, 689.48, 6.29, 55.49, 175.94, 33);
INSERT INTO `faculty` VALUES (54, '张璐', 0, 2, 4, 6826.39, 793.55, 6.09, 154.33, 2.68, 40);
INSERT INTO `faculty` VALUES (55, '石璐', 0, 3, 7, 16634.8, 849.83, 43.3, 469.08, 36.19, 39);
INSERT INTO `faculty` VALUES (56, '金晓明', 0, 2, 4, 13038.5, 906.03, 21.36, 257.69, 109.8, 37);
INSERT INTO `faculty` VALUES (57, '邹岚', 1, 2, 1, 6048.9, 848.48, 56.16, 13.97, 164.8, 49);
INSERT INTO `faculty` VALUES (58, '段宇宁', 1, 0, 2, 9766.37, 304, 27.83, 66.18, 34.13, 56);
INSERT INTO `faculty` VALUES (59, '孟致远', 0, 1, 6, 10204.4, 282.36, 19.58, 470.98, 76.57, 39);
INSERT INTO `faculty` VALUES (60, '吴致远', 0, 3, 2, 19967.9, 908.79, 34.37, 408.11, 148.8, 48);
INSERT INTO `faculty` VALUES (61, '段嘉伦', 1, 3, 8, 19522.4, 193.12, 31.27, 353.72, 183.56, 44);
INSERT INTO `faculty` VALUES (62, '熊致远', 1, 2, 2, 17070.8, 682.63, 87.19, 293.61, 110.53, 49);
INSERT INTO `faculty` VALUES (63, '薛杰宏', 0, 3, 4, 9616.21, 882.03, 53.36, 198.49, 198.74, 46);
INSERT INTO `faculty` VALUES (64, '方子异', 0, 1, 7, 8050.71, 538.66, 49.96, 226.73, 15.45, 42);
INSERT INTO `faculty` VALUES (65, '石岚', 0, 4, 6, 18077.2, 383.88, 32.2, 340.65, 97.06, 50);
INSERT INTO `faculty` VALUES (66, '薛子韬', 1, 3, 3, 17659.9, 61.85, 62.22, 367.57, 193.79, 44);
INSERT INTO `faculty` VALUES (67, '黎晓明', 0, 3, 3, 9997.06, 645.22, 45.47, 69.7, 65.49, 55);
INSERT INTO `faculty` VALUES (68, '邱子韬', 0, 3, 2, 10021.6, 955.23, 48.99, 427.76, 60.36, 31);
INSERT INTO `faculty` VALUES (69, '朱子韬', 0, 1, 5, 17056.7, 529.5, 51.25, 289.63, 25.24, 55);
INSERT INTO `faculty` VALUES (70, '顾云熙', 0, 4, 5, 12551.7, 609.85, 6.44, 147.55, 169.5, 48);
INSERT INTO `faculty` VALUES (71, '陶睿', 0, 0, 5, 18028.7, 811.9, 68.75, 193.57, 199.34, 32);
INSERT INTO `faculty` VALUES (72, '马杰宏', 1, 2, 5, 15935, 451.36, 74.57, 303.8, 36.3, 50);
INSERT INTO `faculty` VALUES (73, '王云熙', 0, 0, 3, 19905.9, 832.39, 64.95, 158.26, 167, 55);
INSERT INTO `faculty` VALUES (74, '许安琪', 0, 2, 5, 13193, 886.04, 16.7, 98.06, 194.91, 59);
INSERT INTO `faculty` VALUES (75, '任睿', 0, 1, 8, 12175.3, 419.16, 61.51, 362.85, 131.72, 44);
INSERT INTO `faculty` VALUES (76, '雷云熙', 0, 2, 4, 14537.8, 955.29, 15.48, 368.32, 192.22, 54);
INSERT INTO `faculty` VALUES (77, '石嘉伦', 1, 1, 5, 19341.8, 113.64, 36.44, 252.49, 119.03, 44);
INSERT INTO `faculty` VALUES (78, '袁晓明', 0, 3, 1, 11478.8, 770.19, 12.75, 447.79, 5.69, 32);
INSERT INTO `faculty` VALUES (79, '梁子异', 1, 3, 8, 7473.37, 901.3, 53.02, 232.31, 85.09, 53);
INSERT INTO `faculty` VALUES (80, '王致远', 1, 3, 5, 18835.3, 430.11, 6.46, 46.15, 108.42, 56);
INSERT INTO `faculty` VALUES (81, '李晓明', 0, 2, 0, 18264.3, 927.49, 56.89, 259.09, 157.93, 34);
INSERT INTO `faculty` VALUES (82, '吴秀英', 0, 2, 4, 8858.45, 859.55, 31.83, 450.28, 18.89, 32);
INSERT INTO `faculty` VALUES (83, '吕震南', 1, 2, 2, 18367.4, 519.89, 70.24, 176.63, 52.82, 50);
INSERT INTO `faculty` VALUES (84, '冯震南', 0, 3, 7, 19626.8, 492.58, 12.03, 340.44, 99.65, 53);
INSERT INTO `faculty` VALUES (85, '朱杰宏', 1, 0, 7, 15260.1, 347.64, 99.98, 301, 82.11, 32);
INSERT INTO `faculty` VALUES (86, '唐云熙', 0, 0, 1, 15352.2, 602.18, 50.92, 172.52, 101.51, 56);
INSERT INTO `faculty` VALUES (87, '魏璐', 1, 2, 3, 15368.1, 787.11, 96.71, 383.76, 185.12, 45);
INSERT INTO `faculty` VALUES (88, '曾致远', 1, 3, 7, 10316.9, 907.97, 38.89, 449.36, 23.06, 42);
INSERT INTO `faculty` VALUES (89, '何詩涵', 0, 4, 6, 9654.61, 864.24, 17.25, 47.54, 169.89, 41);
INSERT INTO `faculty` VALUES (90, '严璐', 1, 4, 1, 18559.3, 462.74, 18.22, 218.81, 61.82, 44);
INSERT INTO `faculty` VALUES (91, '方子异', 1, 2, 4, 19099.4, 390.74, 32.49, 245.41, 104.93, 56);
INSERT INTO `faculty` VALUES (92, '蔡杰宏', 1, 1, 6, 5755.95, 809.63, 71.09, 262.07, 148.9, 33);
INSERT INTO `faculty` VALUES (93, '陆震南', 1, 2, 4, 16650.4, 14.07, 16.36, 223.27, 124.43, 53);
INSERT INTO `faculty` VALUES (94, '金安琪', 0, 3, 7, 16821.3, 74.72, 25.94, 223.5, 71.2, 58);
INSERT INTO `faculty` VALUES (95, '罗云熙', 0, 2, 6, 13196.6, 20.35, 52.5, 182.91, 29.46, 32);
INSERT INTO `faculty` VALUES (96, '萧杰宏', 0, 2, 2, 17523.4, 602.16, 86.84, 234.93, 53.36, 51);
INSERT INTO `faculty` VALUES (97, '尹子异', 1, 3, 1, 15101, 620.78, 87.77, 195.66, 120.14, 53);
INSERT INTO `faculty` VALUES (98, '何岚', 1, 4, 7, 18693.8, 840.38, 53.31, 429.44, 134.47, 56);
INSERT INTO `faculty` VALUES (99, '龚安琪', 1, 4, 2, 9665.13, 965.78, 25.49, 431.44, 195.97, 48);
INSERT INTO `faculty` VALUES (100, '顾宇宁', 0, 1, 4, 18999.9, 947.59, 6.82, 139.63, 196.71, 44);

-- ----------------------------
-- Table structure for faculty_monthly
-- ----------------------------
DROP TABLE IF EXISTS `faculty_monthly`;
CREATE TABLE `faculty_monthly`  (
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
  PRIMARY KEY (`faculty_id`, `month`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 55 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '教职工月度表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of faculty_monthly
-- ----------------------------
INSERT INTO `faculty_monthly` VALUES (1, '龚嘉伦', 1, 5259.73, 2190.32, 3772.36, 10147.2, 762.6, 597.18, 171.17, 18755.2);
INSERT INTO `faculty_monthly` VALUES (2, '叶云熙', 2, 2527.7, 49.56, 2462.93, 15607.1, 593.9, 726.91, 540.07, 12496.4);
INSERT INTO `faculty_monthly` VALUES (3, '林震南', 3, 3228.42, 2802.99, 134.22, 16957.5, 416.39, 298.88, 915.43, 12550.2);
INSERT INTO `faculty_monthly` VALUES (4, '吴岚', 4, 7544.67, 2300.4, 1382.5, 9897.04, 324.55, 27.84, 125.78, 7227.57);
INSERT INTO `faculty_monthly` VALUES (5, '刘睿', 5, 3122.63, 2959.62, 45.56, 18204.2, 123.03, 76.28, 986.48, 18067.9);
INSERT INTO `faculty_monthly` VALUES (6, '张致远', 6, 6830.87, 2478.15, 2467.1, 12991.3, 560.41, 761.64, 723.84, 11477.7);
INSERT INTO `faculty_monthly` VALUES (7, '江晓明', 7, 7190.89, 2531.79, 365.07, 13717.1, 864.54, 66.88, 753.84, 16288.4);
INSERT INTO `faculty_monthly` VALUES (8, '孔安琪', 8, 2965.99, 4403.36, 2248.3, 19506, 361.37, 293.63, 119.19, 12362.2);
INSERT INTO `faculty_monthly` VALUES (9, '孔致远', 9, 3870.06, 3556.72, 3754.71, 16361.5, 397.73, 787.84, 428.65, 15275.3);
INSERT INTO `faculty_monthly` VALUES (10, '范云熙', 10, 4329.02, 793.14, 373.22, 17708.9, 295.57, 170.91, 985.17, 15816.7);
INSERT INTO `faculty_monthly` VALUES (11, '向子韬', 11, 3514.33, 4043.88, 3442.58, 11265.8, 287.02, 248.72, 865.18, 15985.5);
INSERT INTO `faculty_monthly` VALUES (12, '贺璐', 12, 4883.92, 3950.7, 895.78, 16889.2, 187.81, 316.84, 5.08, 11590);
INSERT INTO `faculty_monthly` VALUES (13, '黄秀英', 1, 1222.89, 257.94, 2419.38, 11627.4, 239.04, 308.11, 992.13, 8430.33);
INSERT INTO `faculty_monthly` VALUES (14, '史杰宏', 2, 10.59, 930.94, 2646.11, 13479.5, 752.35, 51.56, 757.48, 13803);
INSERT INTO `faculty_monthly` VALUES (15, '萧璐', 3, 4856.64, 3111.8, 2636.37, 11512.2, 385.11, 843.85, 390.84, 10426.8);
INSERT INTO `faculty_monthly` VALUES (16, '石睿', 4, 5648.4, 4052.73, 669.33, 11054.9, 402.61, 695.94, 841.45, 8511.64);
INSERT INTO `faculty_monthly` VALUES (17, '陈睿', 5, 3260.92, 4814.96, 2661.91, 15365.8, 53.57, 675.69, 708.44, 12544.1);
INSERT INTO `faculty_monthly` VALUES (18, '杜杰宏', 6, 576.6, 999.89, 2128.23, 18607.9, 807.08, 446.98, 74.46, 16713.6);
INSERT INTO `faculty_monthly` VALUES (19, '苏云熙', 7, 908.05, 1528.43, 3989.41, 14163.6, 764.58, 534.07, 885.3, 7531.09);
INSERT INTO `faculty_monthly` VALUES (20, '任云熙', 8, 6557.23, 2925.91, 1769.95, 10630, 442.17, 734.75, 246.8, 10007);
INSERT INTO `faculty_monthly` VALUES (21, '沈震南', 9, 1891.57, 4890.28, 2718.35, 15855.6, 226.68, 812.52, 754.01, 12165.3);
INSERT INTO `faculty_monthly` VALUES (22, '唐岚', 10, 2642.95, 2514.64, 1287.31, 18797.1, 225.26, 712.68, 268.13, 12057.5);
INSERT INTO `faculty_monthly` VALUES (23, '赵璐', 11, 6862.05, 3095.4, 3700.64, 15681.8, 804, 630.97, 558.55, 12459.6);
INSERT INTO `faculty_monthly` VALUES (24, '钱子异', 12, 4251.8, 4624.09, 2653.08, 16610.7, 753.71, 867.18, 375.36, 9019.64);
INSERT INTO `faculty_monthly` VALUES (25, '邱子韬', 1, 544.89, 4224.77, 166.28, 13867.7, 562.56, 262.03, 963.32, 7553.32);
INSERT INTO `faculty_monthly` VALUES (26, '潘致远', 2, 5777.7, 4678.77, 1723.09, 11067.2, 870.34, 18.77, 150.62, 16642.3);
INSERT INTO `faculty_monthly` VALUES (27, '姚子异', 3, 867.6, 1025.37, 2664.14, 10522.5, 622.16, 136.66, 562.89, 10501.7);
INSERT INTO `faculty_monthly` VALUES (28, '郝秀英', 4, 5854.76, 2877.83, 3997.86, 8173.11, 647.51, 955.52, 743.21, 13356.8);
INSERT INTO `faculty_monthly` VALUES (29, '姜秀英', 5, 154.14, 2874.03, 3807.01, 10823.8, 265.85, 142.95, 859.77, 18998.9);
INSERT INTO `faculty_monthly` VALUES (30, '邱子韬', 6, 2754, 728.33, 911.14, 14197, 908.9, 785.35, 293.72, 16561.9);
INSERT INTO `faculty_monthly` VALUES (31, '周致远', 7, 5737.47, 4343.64, 382.32, 8756.21, 538.24, 432.26, 337.53, 16473.7);
INSERT INTO `faculty_monthly` VALUES (32, '胡子韬', 8, 7615.31, 1395.58, 3811.55, 11718.3, 510.81, 950.55, 755.76, 10741);
INSERT INTO `faculty_monthly` VALUES (33, '顾安琪', 9, 6652.57, 3707.92, 2987.21, 8515.57, 332.04, 621.4, 624.05, 11988.3);
INSERT INTO `faculty_monthly` VALUES (34, '魏睿', 10, 4797.69, 2840.99, 3382.44, 19523.7, 950.95, 753.46, 465.24, 14905.6);
INSERT INTO `faculty_monthly` VALUES (35, '胡嘉伦', 11, 233.98, 941.62, 1015.81, 19402.4, 890.84, 284.74, 37.66, 11965.8);
INSERT INTO `faculty_monthly` VALUES (36, '钱秀英', 12, 3218.04, 4782.26, 2635.6, 9071.64, 44.26, 958.09, 337, 16996);
INSERT INTO `faculty_monthly` VALUES (37, '高睿', 1, 1903.3, 1126.09, 529.03, 17913.1, 70.36, 981.58, 769.22, 7429.22);
INSERT INTO `faculty_monthly` VALUES (38, '孙璐', 2, 239.51, 4857.77, 3119.11, 15357.2, 13.27, 397.1, 290.41, 11161.1);
INSERT INTO `faculty_monthly` VALUES (39, '钟岚', 3, 5274.18, 2358.42, 3795.58, 10051.6, 329.27, 103.65, 109.09, 12523.1);
INSERT INTO `faculty_monthly` VALUES (40, '沈杰宏', 4, 614.86, 3311.82, 3178.76, 19423.5, 791.46, 634.74, 463.65, 7329.62);
INSERT INTO `faculty_monthly` VALUES (41, '黄秀英', 5, 846.83, 2839.7, 2534.08, 17018.8, 143.44, 812.27, 482.23, 9475.96);
INSERT INTO `faculty_monthly` VALUES (42, '姚詩涵', 6, 1931.95, 1424.56, 671.03, 12447.6, 137.08, 286.1, 550.99, 14967.2);
INSERT INTO `faculty_monthly` VALUES (43, '廖秀英', 7, 1819.06, 2632.26, 1822.95, 9355.22, 711.8, 762.12, 641.1, 17029.8);
INSERT INTO `faculty_monthly` VALUES (44, '熊子异', 8, 1314.81, 3845.22, 3528.33, 11262.5, 437.67, 21.53, 800.73, 10163.7);
INSERT INTO `faculty_monthly` VALUES (45, '郭震南', 9, 19.53, 2647.66, 2963.71, 12207.6, 342.94, 180.12, 999.16, 11697);
INSERT INTO `faculty_monthly` VALUES (46, '邵宇宁', 10, 2478.75, 2027.34, 3325.29, 17022.5, 689.11, 983.82, 320.81, 8597.88);
INSERT INTO `faculty_monthly` VALUES (47, '熊嘉伦', 1, 6129.79, 4375.13, 182.59, 10195.8, 891.51, 665.77, 626.64, 17306.7);
INSERT INTO `faculty_monthly` VALUES (48, '毛子韬', 2, 6222.17, 1642.36, 990.74, 13323.1, 211.28, 223.75, 460.22, 8889.81);
INSERT INTO `faculty_monthly` VALUES (49, '韩杰宏', 3, 7758.99, 2057.66, 302.53, 9138.09, 646.23, 793.01, 168.1, 7822.36);
INSERT INTO `faculty_monthly` VALUES (50, '尹子异', 4, 1935.8, 3308.69, 2735.68, 13221.4, 890.93, 672.85, 186.42, 10701.8);
INSERT INTO `faculty_monthly` VALUES (51, '邱安琪', 5, 6443.27, 343.32, 1688.06, 10279.1, 680.03, 790.73, 421.69, 15425.2);
INSERT INTO `faculty_monthly` VALUES (52, '熊致远', 6, 2529.09, 3270.42, 2581.39, 13494.1, 173.2, 54.02, 939.72, 8590.14);
INSERT INTO `faculty_monthly` VALUES (53, '曹云熙', 7, 410.36, 933.72, 1891.33, 18988.5, 74.9, 372.39, 339.07, 9338.46);
INSERT INTO `faculty_monthly` VALUES (54, '夏杰宏', 8, 902.61, 4176.49, 3451.48, 18255.8, 889.38, 594.78, 691.8, 15632.7);
INSERT INTO `faculty_monthly` VALUES (55, '薛睿', 9, 7259.41, 4762.63, 2983.06, 13225.7, 874.37, 438.36, 321.15, 8890.27);
INSERT INTO `faculty_monthly` VALUES (56, '周子韬', 10, 3298.49, 769.63, 942.03, 13480.9, 488.71, 554.3, 105.44, 11025.8);
INSERT INTO `faculty_monthly` VALUES (57, '石致远', 11, 5744.95, 3584.87, 3961.83, 9183.24, 940.38, 380.48, 409.88, 18830.8);
INSERT INTO `faculty_monthly` VALUES (58, '戴子异', 12, 5728.8, 1890.48, 2737.25, 10114.6, 948.25, 566.43, 815.46, 16010.7);
INSERT INTO `faculty_monthly` VALUES (59, '许詩涵', 1, 7132.86, 2444.9, 3008.98, 9518.63, 257.22, 796.65, 997.53, 13386.4);
INSERT INTO `faculty_monthly` VALUES (60, '薛致远', 2, 5561.09, 2199.4, 3178.2, 13617.4, 870.44, 868.37, 301.43, 13558.4);
INSERT INTO `faculty_monthly` VALUES (61, '龙晓明', 3, 953.64, 2640.69, 3716.56, 13296.1, 30.84, 406.66, 276.79, 14391.7);
INSERT INTO `faculty_monthly` VALUES (62, '常睿', 4, 6986.99, 1179.11, 254.99, 19004.2, 216.73, 645.35, 234.59, 11322.4);
INSERT INTO `faculty_monthly` VALUES (63, '徐璐', 5, 4095.56, 3138.64, 3538.74, 12343.8, 178.35, 659.65, 156.73, 12058);
INSERT INTO `faculty_monthly` VALUES (64, '孙安琪', 6, 7461.47, 2684.39, 1048.54, 16542.4, 672.99, 276.22, 937.42, 11500.5);
INSERT INTO `faculty_monthly` VALUES (65, '苏宇宁', 7, 982.63, 3505.4, 1761.65, 18757.8, 622.37, 18.51, 705.35, 9185.38);
INSERT INTO `faculty_monthly` VALUES (66, '蒋子异', 8, 1077.54, 408.6, 3447.49, 17640.6, 52.79, 543.4, 571.46, 8251.23);
INSERT INTO `faculty_monthly` VALUES (67, '龙晓明', 9, 3652.74, 1871.59, 2814.26, 19783.3, 298.31, 643.7, 554.7, 12576.2);
INSERT INTO `faculty_monthly` VALUES (68, '武云熙', 10, 4223.98, 2028.08, 1458.56, 10363.7, 71.79, 241.39, 462.05, 12362.5);
INSERT INTO `faculty_monthly` VALUES (69, '蔡晓明', 11, 2312.62, 2469.77, 255.38, 13851.7, 592.75, 916.68, 235.42, 14041.6);
INSERT INTO `faculty_monthly` VALUES (70, '叶安琪', 12, 7322.9, 1054.58, 2436.84, 13721.5, 818.48, 246.96, 520.62, 13363.1);
INSERT INTO `faculty_monthly` VALUES (71, '徐震南', 1, 2139.85, 4390.58, 2137.21, 12980.8, 910.73, 276.6, 569.99, 16190.9);
INSERT INTO `faculty_monthly` VALUES (72, '夏子异', 2, 7143.65, 1891.37, 1449.32, 14210.7, 403.7, 870.81, 283.64, 12867.5);
INSERT INTO `faculty_monthly` VALUES (73, '曾子韬', 3, 7206.64, 4894.64, 1451.79, 10964.5, 803.44, 808.5, 678.21, 10683.3);
INSERT INTO `faculty_monthly` VALUES (74, '张晓明', 4, 5069.77, 2963.01, 3794.41, 16889.3, 276.91, 604.54, 437.23, 8707.14);
INSERT INTO `faculty_monthly` VALUES (75, '郝致远', 5, 4304.87, 3778.09, 2027.8, 19262.9, 91.71, 968.72, 145.95, 12036.4);
INSERT INTO `faculty_monthly` VALUES (76, '何詩涵', 6, 7401.56, 2762.78, 289.43, 12894, 63.27, 706.34, 566.88, 13937.9);
INSERT INTO `faculty_monthly` VALUES (77, '孔宇宁', 7, 7876.24, 1422.67, 2325.71, 14583.4, 170.38, 995.05, 320.53, 10377.5);
INSERT INTO `faculty_monthly` VALUES (78, '田致远', 8, 2989.92, 3739.61, 54.62, 14731.2, 710.79, 240.87, 710.78, 16289.2);
INSERT INTO `faculty_monthly` VALUES (79, '石云熙', 9, 7437.63, 4986.97, 1782.39, 17453.6, 935.79, 774.43, 168.65, 13140.9);
INSERT INTO `faculty_monthly` VALUES (80, '任晓明', 10, 6990.58, 809.18, 2315.89, 19756.7, 183.74, 908.96, 342.34, 13992.5);
INSERT INTO `faculty_monthly` VALUES (81, '梁璐', 11, 1456.32, 1783.64, 3436.13, 14688.8, 19.55, 15, 819.51, 15703.6);
INSERT INTO `faculty_monthly` VALUES (82, '何詩涵', 12, 4872.5, 322.57, 3726.2, 12325.8, 506.22, 137.94, 154.21, 16068.1);
INSERT INTO `faculty_monthly` VALUES (83, '姜震南', 1, 5445.14, 1647.26, 2543.63, 11817.3, 742.39, 352.94, 26.6, 8352.98);
INSERT INTO `faculty_monthly` VALUES (84, '尹岚', 2, 1865.74, 4681.77, 274.6, 16845, 339.81, 395.75, 576.73, 10371.3);
INSERT INTO `faculty_monthly` VALUES (85, '陶宇宁', 3, 1254.72, 39.11, 1501.2, 17247.8, 590.03, 145.59, 169.98, 18634);
INSERT INTO `faculty_monthly` VALUES (86, '马安琪', 4, 2643.79, 347.04, 561.24, 9462.13, 693.42, 981.92, 617.46, 18718.2);
INSERT INTO `faculty_monthly` VALUES (87, '谭詩涵', 5, 883.02, 1036.69, 1681.77, 13586.9, 486.82, 923.94, 480.33, 12046.3);
INSERT INTO `faculty_monthly` VALUES (88, '汤璐', 6, 1499.44, 2942.12, 1377.07, 9322.58, 690.76, 679.99, 20.03, 14815.7);
INSERT INTO `faculty_monthly` VALUES (89, '冯岚', 7, 1569.44, 3835.02, 926.04, 15921.3, 655.92, 729.99, 905.76, 16228.2);
INSERT INTO `faculty_monthly` VALUES (90, '汤岚', 8, 1453.39, 3548.94, 2641.18, 13727.6, 333.54, 914.58, 863.77, 13251.2);
INSERT INTO `faculty_monthly` VALUES (91, '李睿', 9, 6347.18, 2577.15, 3798.05, 8933.01, 754.8, 660.24, 373.59, 18033.3);
INSERT INTO `faculty_monthly` VALUES (92, '雷秀英', 10, 6647.69, 4247.49, 2130.2, 12641.5, 882.19, 559.79, 143.97, 17799.5);
INSERT INTO `faculty_monthly` VALUES (93, '顾子异', 11, 1352.4, 3687.82, 2862.57, 13222.1, 47.16, 662.61, 921.54, 15794.5);
INSERT INTO `faculty_monthly` VALUES (94, '王睿', 12, 3343.53, 4909.95, 1270.7, 19125.2, 292.76, 262.8, 219.39, 13423.5);
INSERT INTO `faculty_monthly` VALUES (95, '黎詩涵', 1, 332.63, 537.14, 1614.63, 18179.6, 714.84, 907.18, 361.16, 10361.3);
INSERT INTO `faculty_monthly` VALUES (96, '叶詩涵', 2, 2003.7, 4667.57, 3920.83, 8828.77, 964.79, 723.96, 406.5, 10568.2);
INSERT INTO `faculty_monthly` VALUES (97, '贾睿', 3, 7539.48, 1127.42, 3981.71, 8682.99, 939.81, 789.99, 490.01, 10918.5);
INSERT INTO `faculty_monthly` VALUES (98, '苏震南', 4, 7969.47, 4019.87, 869.38, 15170.9, 438.6, 456.41, 614.95, 14337.3);
INSERT INTO `faculty_monthly` VALUES (99, '杨宇宁', 5, 4410.45, 2463.2, 2830.19, 8417.27, 409.84, 37.24, 664.09, 10855.1);
INSERT INTO `faculty_monthly` VALUES (100, '郝震南', 6, 7285.9, 567.15, 784.6, 11597.9, 248.68, 17.39, 517.55, 15090.4);

-- ----------------------------
-- Table structure for faculty_yearly
-- ----------------------------
DROP TABLE IF EXISTS `faculty_yearly`;
CREATE TABLE `faculty_yearly`  (
  `faculty_id` bigint NOT NULL COMMENT '教职工编号',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '姓名',
  `total_pay` float NULL DEFAULT 0 COMMENT '本年度累计工资总额',
  `hour` float NULL DEFAULT 0 COMMENT '本年度累计授课时数',
  `avg_pay` float NULL DEFAULT 0 COMMENT '上年度月平均工资',
  `net_pay` float NULL DEFAULT 0 COMMENT '本年度累计实发工资',
  PRIMARY KEY (`faculty_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 55 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '教职工年度表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of faculty_yearly
-- ----------------------------
INSERT INTO `faculty_yearly` VALUES (1, '金晓明', 40053.6, 1041, 4946.86, 73970.6);
INSERT INTO `faculty_yearly` VALUES (2, '夏睿', 18924.8, 60, 4826.69, 44715.2);
INSERT INTO `faculty_yearly` VALUES (3, '罗璐', 53018.7, 1104, 14940.7, 14238.4);
INSERT INTO `faculty_yearly` VALUES (4, '黎晓明', 9055.69, 60, 11472.8, 16308.1);
INSERT INTO `faculty_yearly` VALUES (5, '孔杰宏', 75307.5, 60, 13633.2, 77293.4);
INSERT INTO `faculty_yearly` VALUES (6, '程璐', 66766.5, 450, 14437.5, 55856);
INSERT INTO `faculty_yearly` VALUES (7, '唐云熙', 78621.8, 60, 15626.4, 45609.8);
INSERT INTO `faculty_yearly` VALUES (8, '龚岚', 22173, 60, 15649.6, 61326.5);
INSERT INTO `faculty_yearly` VALUES (9, '郭璐', 46059, 60, 4183.37, 39062.9);
INSERT INTO `faculty_yearly` VALUES (10, '高秀英', 65731.2, 101, 15576.2, 43672.3);
INSERT INTO `faculty_yearly` VALUES (11, '刘秀英', 67215, 60, 5768.08, 51788.4);
INSERT INTO `faculty_yearly` VALUES (12, '方杰宏', 45914.2, 1112, 3996.56, 21364.9);
INSERT INTO `faculty_yearly` VALUES (13, '卢秀英', 79100, 60, 9909.18, 18455);
INSERT INTO `faculty_yearly` VALUES (14, '韦岚', 38860.7, 969, 14867.2, 14293.3);
INSERT INTO `faculty_yearly` VALUES (15, '曾子韬', 52615, 60, 12871.5, 56628.1);
INSERT INTO `faculty_yearly` VALUES (16, '余晓明', 55499.1, 910, 17651.2, 64720.5);
INSERT INTO `faculty_yearly` VALUES (17, '郑宇宁', 65697, 293, 19478.6, 75505.5);
INSERT INTO `faculty_yearly` VALUES (18, '严杰宏', 30000.8, 60, 8620.39, 10591.1);
INSERT INTO `faculty_yearly` VALUES (19, '熊岚', 58555.2, 184, 8605.01, 13376.5);
INSERT INTO `faculty_yearly` VALUES (20, '于云熙', 28295.5, 60, 15005.7, 42825.3);
INSERT INTO `faculty_yearly` VALUES (21, '戴子韬', 21366.2, 650, 10181.8, 33305.9);
INSERT INTO `faculty_yearly` VALUES (22, '贺子韬', 39432.7, 60, 12970.2, 13744);
INSERT INTO `faculty_yearly` VALUES (23, '萧詩涵', 89380, 996, 8409.24, 78553.6);
INSERT INTO `faculty_yearly` VALUES (24, '曹詩涵', 84609.2, 503, 18498, 43608.8);
INSERT INTO `faculty_yearly` VALUES (25, '胡睿', 22481.8, 60, 19257.6, 69233.2);
INSERT INTO `faculty_yearly` VALUES (26, '韩安琪', 72590.8, 1056, 14718.8, 32880.8);
INSERT INTO `faculty_yearly` VALUES (27, '陆岚', 13223.7, 60, 5446.64, 48980.5);
INSERT INTO `faculty_yearly` VALUES (28, '陆璐', 39464.7, 613, 14584.8, 58645.4);
INSERT INTO `faculty_yearly` VALUES (29, '袁岚', 25648.9, 157, 8025.05, 58588.5);
INSERT INTO `faculty_yearly` VALUES (30, '姜宇宁', 56431.7, 1157, 4050.72, 74109.1);
INSERT INTO `faculty_yearly` VALUES (31, '严杰宏', 35766.4, 258, 5262.08, 63540.4);
INSERT INTO `faculty_yearly` VALUES (32, '宋云熙', 81010.4, 60, 15496, 68157);
INSERT INTO `faculty_yearly` VALUES (33, '吴岚', 28175.7, 565, 6767.61, 50846.1);
INSERT INTO `faculty_yearly` VALUES (34, '谭岚', 74715.8, 60, 10223.5, 30602.4);
INSERT INTO `faculty_yearly` VALUES (35, '崔安琪', 30508, 304, 11385.3, 9018.39);
INSERT INTO `faculty_yearly` VALUES (36, '谭嘉伦', 33748.2, 1150, 9505.48, 10884.3);
INSERT INTO `faculty_yearly` VALUES (37, '郑子异', 19246.4, 528, 16095.5, 79470.4);
INSERT INTO `faculty_yearly` VALUES (38, '武岚', 53884.6, 60, 9049.82, 53833.1);
INSERT INTO `faculty_yearly` VALUES (39, '江璐', 80263.5, 60, 9966.05, 57762.4);
INSERT INTO `faculty_yearly` VALUES (40, '丁晓明', 80065.8, 60, 8638.97, 41520);
INSERT INTO `faculty_yearly` VALUES (41, '潘璐', 70630.3, 60, 14376.7, 9923.88);
INSERT INTO `faculty_yearly` VALUES (42, '金睿', 62966.9, 60, 10846.4, 51106.4);
INSERT INTO `faculty_yearly` VALUES (43, '秦岚', 45268.8, 885, 16993.8, 13059.4);
INSERT INTO `faculty_yearly` VALUES (44, '邓嘉伦', 18640.8, 60, 10603.6, 79825.4);
INSERT INTO `faculty_yearly` VALUES (45, '林致远', 33925.9, 60, 4777, 67248.5);
INSERT INTO `faculty_yearly` VALUES (46, '沈安琪', 64196.6, 60, 17540.5, 28820);
INSERT INTO `faculty_yearly` VALUES (47, '郝安琪', 88679.9, 60, 16921.4, 74857);
INSERT INTO `faculty_yearly` VALUES (48, '傅致远', 15593.3, 267, 12888.7, 57437.7);
INSERT INTO `faculty_yearly` VALUES (49, '戴云熙', 19635, 60, 14772.9, 65241.6);
INSERT INTO `faculty_yearly` VALUES (50, '高晓明', 32308.8, 890, 6762.27, 66493.9);
INSERT INTO `faculty_yearly` VALUES (51, '廖秀英', 33222.6, 1103, 16942.2, 76461.5);
INSERT INTO `faculty_yearly` VALUES (52, '李安琪', 31033.8, 1117, 17413.8, 16131);
INSERT INTO `faculty_yearly` VALUES (53, '顾安琪', 88291.2, 1162, 11829.2, 79144.9);
INSERT INTO `faculty_yearly` VALUES (54, '魏震南', 19263.5, 60, 16745.5, 75202.2);
INSERT INTO `faculty_yearly` VALUES (55, '马嘉伦', 42159.5, 301, 6213.14, 42378.3);
INSERT INTO `faculty_yearly` VALUES (56, '雷子异', 40228.7, 60, 14013.7, 47009.5);
INSERT INTO `faculty_yearly` VALUES (57, '王致远', 15761.8, 705, 15242.4, 76610.6);
INSERT INTO `faculty_yearly` VALUES (58, '钱安琪', 87078.8, 60, 12687.5, 75198.2);
INSERT INTO `faculty_yearly` VALUES (59, '廖震南', 84364.5, 60, 13706.3, 29117.6);
INSERT INTO `faculty_yearly` VALUES (60, '董震南', 66214.1, 876, 10254.7, 9216.99);
INSERT INTO `faculty_yearly` VALUES (61, '孔嘉伦', 8223.45, 1159, 17603.5, 30618.4);
INSERT INTO `faculty_yearly` VALUES (62, '孟杰宏', 25224.5, 115, 9870.52, 17456.4);
INSERT INTO `faculty_yearly` VALUES (63, '李岚', 41505.5, 60, 19506.2, 28303.2);
INSERT INTO `faculty_yearly` VALUES (64, '罗子韬', 78432.9, 255, 14353.8, 62396.8);
INSERT INTO `faculty_yearly` VALUES (65, '董震南', 84522.6, 724, 7482.37, 38799.9);
INSERT INTO `faculty_yearly` VALUES (66, '杜子异', 13032.7, 1104, 15550.5, 55809.9);
INSERT INTO `faculty_yearly` VALUES (67, '常子异', 27141, 994, 13568.9, 79827.4);
INSERT INTO `faculty_yearly` VALUES (68, '薛晓明', 38484, 60, 16773.3, 34103.2);
INSERT INTO `faculty_yearly` VALUES (69, '丁安琪', 73244.7, 60, 11903.4, 36834.2);
INSERT INTO `faculty_yearly` VALUES (70, '宋詩涵', 78821.5, 538, 11271.2, 60649.7);
INSERT INTO `faculty_yearly` VALUES (71, '曾震南', 57774.2, 60, 16928.5, 65792.1);
INSERT INTO `faculty_yearly` VALUES (72, '傅子韬', 22843.6, 60, 13100.1, 31064.4);
INSERT INTO `faculty_yearly` VALUES (73, '严晓明', 69982.7, 1105, 19693.9, 69368);
INSERT INTO `faculty_yearly` VALUES (74, '范杰宏', 45298.9, 60, 9984.61, 10584.3);
INSERT INTO `faculty_yearly` VALUES (75, '田秀英', 43062.6, 445, 8112.15, 60606.1);
INSERT INTO `faculty_yearly` VALUES (76, '唐宇宁', 65753.2, 117, 12710.5, 24677.9);
INSERT INTO `faculty_yearly` VALUES (77, '阎睿', 73395.4, 60, 9215.33, 40740.4);
INSERT INTO `faculty_yearly` VALUES (78, '韦云熙', 12759.6, 60, 4955.47, 13718);
INSERT INTO `faculty_yearly` VALUES (79, '龚岚', 13747.1, 734, 18944.9, 47859.3);
INSERT INTO `faculty_yearly` VALUES (80, '郭子异', 55502.3, 60, 14358.4, 53617.7);
INSERT INTO `faculty_yearly` VALUES (81, '夏震南', 88377.1, 60, 17340.3, 35378.4);
INSERT INTO `faculty_yearly` VALUES (82, '段子韬', 22438.4, 60, 4504.22, 62388.4);
INSERT INTO `faculty_yearly` VALUES (83, '叶杰宏', 60369.8, 707, 11181.8, 38220.3);
INSERT INTO `faculty_yearly` VALUES (84, '龚嘉伦', 56118.9, 60, 9957.5, 62355.5);
INSERT INTO `faculty_yearly` VALUES (85, '夏子韬', 81806.6, 491, 12674.2, 53656.3);
INSERT INTO `faculty_yearly` VALUES (86, '吕致远', 39934.6, 60, 18378.8, 62708.4);
INSERT INTO `faculty_yearly` VALUES (87, '汤嘉伦', 43667.3, 60, 4712.78, 37419.4);
INSERT INTO `faculty_yearly` VALUES (88, '郑嘉伦', 70960, 347, 12719.9, 8042.04);
INSERT INTO `faculty_yearly` VALUES (89, '严嘉伦', 22404.3, 60, 16013.3, 11497);
INSERT INTO `faculty_yearly` VALUES (90, '姜晓明', 50564.5, 422, 10058, 61098.1);
INSERT INTO `faculty_yearly` VALUES (91, '徐璐', 85955.3, 765, 7516.42, 65420.6);
INSERT INTO `faculty_yearly` VALUES (92, '史子异', 30194, 902, 17234.5, 69661.8);
INSERT INTO `faculty_yearly` VALUES (93, '丁璐', 60264.9, 603, 19605.4, 11972.8);
INSERT INTO `faculty_yearly` VALUES (94, '郑璐', 79475.7, 309, 7130.3, 66126.1);
INSERT INTO `faculty_yearly` VALUES (95, '钟致远', 46665.7, 60, 10880.4, 57549.7);
INSERT INTO `faculty_yearly` VALUES (96, '程子韬', 12787, 1068, 4543.43, 21675);
INSERT INTO `faculty_yearly` VALUES (97, '贾睿', 74164.3, 748, 5228.32, 74921.3);
INSERT INTO `faculty_yearly` VALUES (98, '傅秀英', 77991.9, 60, 18026.4, 52671.3);
INSERT INTO `faculty_yearly` VALUES (99, '姜子韬', 57427, 851, 6485.4, 22795.2);
INSERT INTO `faculty_yearly` VALUES (100, '潘岚', 56354.2, 249, 17022, 58052.9);

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
INSERT INTO `gen_table` VALUES (6, 'faculty', '教职工表', NULL, NULL, 'Faculty', 'crud', 'com.ruoyi.financial', 'financial', 'faculty', '教职工', 'Keven', '0', '/', '{\"parentMenuId\":\"2052\"}', 'admin', '2023-05-30 17:42:08', '', '2023-05-30 22:06:15', NULL);
INSERT INTO `gen_table` VALUES (10, 'title', '职称表', NULL, NULL, 'Title', 'crud', 'com.ruoyi.financial', 'financial', 'title', '职称', 'Keven', '0', '/', '{\"parentMenuId\":\"2052\"}', 'admin', '2023-05-30 17:42:08', '', '2023-05-30 21:08:30', NULL);
INSERT INTO `gen_table` VALUES (13, 'faculty_yearly', '教职工年度表', NULL, NULL, 'FacultyYearly', 'crud', 'com.ruoyi.financial', 'financial', 'yearly', '教职工年度', 'Keven', '0', '/', '{}', 'admin', '2023-05-30 17:48:44', '', '2023-05-30 21:35:41', NULL);
INSERT INTO `gen_table` VALUES (14, 'job', '职务表', NULL, NULL, 'Job', 'crud', 'com.ruoyi.financial', 'financial', 'job', '职务', 'Keven', '0', '/', '{\"parentMenuId\":\"2052\"}', 'admin', '2023-05-30 17:48:44', '', '2023-05-30 18:43:07', NULL);
INSERT INTO `gen_table` VALUES (15, 'affair', '事务（课时任务）表', NULL, NULL, 'Affair', 'crud', 'com.ruoyi.financial', 'financial', 'affair', '事务', 'Keven', '0', '/', '{}', 'admin', '2023-05-30 18:07:22', '', '2023-05-30 21:36:46', NULL);
INSERT INTO `gen_table` VALUES (17, 'faculty_monthly1', '教职工月度表', NULL, NULL, 'Pay', 'crud', 'com.ruoyi.financial', 'financial', 'pay', '工资表', 'Keven', '0', '/', '{}', 'admin', '2023-05-30 21:35:48', '', '2023-05-30 21:49:34', NULL);
INSERT INTO `gen_table` VALUES (18, 'faculty_monthly', '教职工月度表', NULL, NULL, 'PayDetail', 'crud', 'com.ruoyi.financial', 'financial', 'payDetail', '工资明细表', 'Keven', '0', '/', '{}', 'admin', '2023-05-30 21:37:20', '', '2023-05-30 21:49:40', NULL);

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
INSERT INTO `gen_table_column` VALUES (35, '6', 'id', '编号', 'bigint', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-05-30 17:42:08', '', '2023-05-30 22:06:15');
INSERT INTO `gen_table_column` VALUES (36, '6', 'name', '姓名', 'varchar(30)', 'String', 'name', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2023-05-30 17:42:08', '', '2023-05-30 22:06:15');
INSERT INTO `gen_table_column` VALUES (37, '6', 'type', '教师/职工', 'int', 'Long', 'type', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', 'faculty_type', 3, 'admin', '2023-05-30 17:42:08', '', '2023-05-30 22:06:15');
INSERT INTO `gen_table_column` VALUES (38, '6', 'title', '职称', 'int', 'Long', 'title', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'faculty_title', 4, 'admin', '2023-05-30 17:42:08', '', '2023-05-30 22:06:15');
INSERT INTO `gen_table_column` VALUES (39, '6', 'job', '职务', 'int', 'Long', 'job', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'faculty_job', 5, 'admin', '2023-05-30 17:42:08', '', '2023-05-30 22:06:15');
INSERT INTO `gen_table_column` VALUES (40, '6', 'basic_pay', '基本工资', 'float', 'Long', 'basicPay', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2023-05-30 17:42:08', '', '2023-05-30 22:06:15');
INSERT INTO `gen_table_column` VALUES (41, '6', 'living_subsidy', '生活补贴', 'float', 'Long', 'livingSubsidy', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2023-05-30 17:42:08', '', '2023-05-30 22:06:15');
INSERT INTO `gen_table_column` VALUES (42, '6', 'reading_subsidy', '书报费', 'float', 'Long', 'readingSubsidy', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2023-05-30 17:42:08', '', '2023-05-30 22:06:15');
INSERT INTO `gen_table_column` VALUES (43, '6', 'transportation_subsidy', '交通费', 'float', 'Long', 'transportationSubsidy', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2023-05-30 17:42:08', '', '2023-05-30 22:06:15');
INSERT INTO `gen_table_column` VALUES (44, '6', 'washing_subsidy', '洗理费', 'float', 'Long', 'washingSubsidy', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2023-05-30 17:42:08', '', '2023-05-30 22:06:15');
INSERT INTO `gen_table_column` VALUES (45, '6', 'quota_hour', '定额课时', 'float', 'Long', 'quotaHour', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', '2023-05-30 17:42:08', '', '2023-05-30 22:06:15');
INSERT INTO `gen_table_column` VALUES (67, '10', 'id', '编号', 'bigint', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-05-30 17:42:08', '', '2023-05-30 21:08:30');
INSERT INTO `gen_table_column` VALUES (68, '10', 'des', '职称', 'varchar(60)', 'String', 'des', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-05-30 17:42:08', '', '2023-05-30 21:08:30');
INSERT INTO `gen_table_column` VALUES (69, '10', 'factor', '职称系数', 'float', 'Long', 'factor', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-05-30 17:42:08', '', '2023-05-30 21:08:30');
INSERT INTO `gen_table_column` VALUES (89, '13', 'faculty_id', '教职工编号', 'bigint', 'Long', 'facultyId', '0', '0', '1', '0', '0', '1', '1', 'EQ', 'input', '', 1, 'admin', '2023-05-30 17:48:44', '', '2023-05-30 21:35:41');
INSERT INTO `gen_table_column` VALUES (90, '13', 'name', '姓名', 'varchar(30)', 'String', 'name', '0', '0', '1', '0', '0', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2023-05-30 17:48:44', '', '2023-05-30 21:35:41');
INSERT INTO `gen_table_column` VALUES (91, '13', 'total_pay', '本年度累计工资总额', 'float', 'Long', 'totalPay', '0', '0', NULL, '0', '0', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-05-30 17:48:44', '', '2023-05-30 21:35:41');
INSERT INTO `gen_table_column` VALUES (92, '13', 'hour', '本年度累计授课时数', 'float', 'Long', 'hour', '0', '0', NULL, '0', '0', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-05-30 17:48:44', '', '2023-05-30 21:35:41');
INSERT INTO `gen_table_column` VALUES (93, '13', 'avg_pay', '上年度月平均工资', 'float', 'Long', 'avgPay', '0', '0', NULL, '0', '0', '1', '1', 'EQ', 'input', '', 5, 'admin', '2023-05-30 17:48:44', '', '2023-05-30 21:35:41');
INSERT INTO `gen_table_column` VALUES (94, '13', 'net_pay', '本年度累计实发工资', 'float', 'Long', 'netPay', '0', '0', NULL, '0', '0', '1', '1', 'EQ', 'input', '', 6, 'admin', '2023-05-30 17:48:44', '', '2023-05-30 21:35:41');
INSERT INTO `gen_table_column` VALUES (95, '14', 'id', '编号', 'bigint', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-05-30 17:48:44', '', '2023-05-30 18:43:07');
INSERT INTO `gen_table_column` VALUES (96, '14', 'des', '职务', 'varchar(60)', 'String', 'des', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-05-30 17:48:44', '', '2023-05-30 18:43:07');
INSERT INTO `gen_table_column` VALUES (97, '15', 'id', '编号', 'bigint', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-05-30 18:07:22', '', '2023-05-30 21:36:46');
INSERT INTO `gen_table_column` VALUES (98, '15', 'faculty_id', '教职工编号', 'bigint', 'Long', 'facultyId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-05-30 18:07:22', '', '2023-05-30 21:36:46');
INSERT INTO `gen_table_column` VALUES (99, '15', 'name', '姓名', 'varchar(30)', 'String', 'name', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2023-05-30 18:07:22', '', '2023-05-30 21:36:46');
INSERT INTO `gen_table_column` VALUES (100, '15', 'month', '月份', 'int', 'Long', 'month', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-05-30 18:07:22', '', '2023-05-30 21:36:46');
INSERT INTO `gen_table_column` VALUES (101, '15', 'des', '描述', 'varchar(90)', 'String', 'des', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2023-05-30 18:07:22', '', '2023-05-30 21:36:46');
INSERT INTO `gen_table_column` VALUES (102, '15', 'hour', '时长', 'float', 'Long', 'hour', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2023-05-30 18:07:22', '', '2023-05-30 21:36:46');
INSERT INTO `gen_table_column` VALUES (115, '17', 'faculty_id', '教职工编号', 'bigint', 'Long', 'facultyId', '1', '0', NULL, '0', NULL, '1', '1', 'EQ', 'input', '', 1, 'admin', '2023-05-30 21:35:48', '', '2023-05-30 21:49:34');
INSERT INTO `gen_table_column` VALUES (116, '17', 'name', '姓名', 'varchar(30)', 'String', 'name', '0', '0', '0', '0', '0', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2023-05-30 21:35:48', '', '2023-05-30 21:49:34');
INSERT INTO `gen_table_column` VALUES (117, '17', 'month', '月份', 'int', 'Long', 'month', '1', '0', NULL, '0', NULL, '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-05-30 21:35:48', '', '2023-05-30 21:49:34');
INSERT INTO `gen_table_column` VALUES (118, '17', 'teacher_pay', '课时费', 'float', 'Long', 'teacherPay', '0', '0', NULL, '0', '0', '0', '0', 'EQ', 'input', '', 4, 'admin', '2023-05-30 21:35:48', '', '2023-05-30 21:49:34');
INSERT INTO `gen_table_column` VALUES (119, '17', 'staff_pay', '岗位津贴', 'float', 'Long', 'staffPay', '0', '0', NULL, '0', '0', '0', '0', 'EQ', 'input', '', 5, 'admin', '2023-05-30 21:35:48', '', '2023-05-30 21:49:34');
INSERT INTO `gen_table_column` VALUES (120, '17', 'extra_teacher_pay', '超额课时费', 'float', 'Long', 'extraTeacherPay', '0', '0', NULL, '0', '0', '0', '0', 'EQ', 'input', '', 6, 'admin', '2023-05-30 21:35:48', '', '2023-05-30 21:49:34');
INSERT INTO `gen_table_column` VALUES (121, '17', 'total_pay', '工资总额', 'float', 'Long', 'totalPay', '0', '0', NULL, '0', '0', '0', '0', 'EQ', 'input', '', 7, 'admin', '2023-05-30 21:35:48', '', '2023-05-30 21:49:34');
INSERT INTO `gen_table_column` VALUES (122, '17', 'tax', '个人所得税', 'float', 'Long', 'tax', '0', '0', NULL, '0', '0', '0', '0', 'EQ', 'input', '', 8, 'admin', '2023-05-30 21:35:48', '', '2023-05-30 21:49:34');
INSERT INTO `gen_table_column` VALUES (123, '17', 'housing', '住房公积金', 'float', 'Long', 'housing', '0', '0', NULL, '0', '0', '0', '0', 'EQ', 'input', '', 9, 'admin', '2023-05-30 21:35:48', '', '2023-05-30 21:49:34');
INSERT INTO `gen_table_column` VALUES (124, '17', 'insurance', '保险费', 'float', 'Long', 'insurance', '0', '0', NULL, '0', '0', '0', '0', 'EQ', 'input', '', 10, 'admin', '2023-05-30 21:35:48', '', '2023-05-30 21:49:34');
INSERT INTO `gen_table_column` VALUES (125, '17', 'net_pay', '实发工资', 'float', 'Long', 'netPay', '0', '0', NULL, '0', '0', '1', '1', 'EQ', 'input', '', 11, 'admin', '2023-05-30 21:35:48', '', '2023-05-30 21:49:34');
INSERT INTO `gen_table_column` VALUES (126, '18', 'faculty_id', '教职工编号', 'bigint', 'Long', 'facultyId', '1', '0', NULL, '0', NULL, '1', '1', 'EQ', 'input', '', 1, 'admin', '2023-05-30 21:37:20', '', '2023-05-30 21:49:40');
INSERT INTO `gen_table_column` VALUES (127, '18', 'name', '姓名', 'varchar(30)', 'String', 'name', '0', '0', '0', '0', '0', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2023-05-30 21:37:20', '', '2023-05-30 21:49:40');
INSERT INTO `gen_table_column` VALUES (128, '18', 'month', '月份', 'int', 'Long', 'month', '1', '0', NULL, '0', NULL, '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-05-30 21:37:20', '', '2023-05-30 21:49:40');
INSERT INTO `gen_table_column` VALUES (129, '18', 'teacher_pay', '课时费', 'float', 'Long', 'teacherPay', '0', '0', NULL, '0', '0', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-05-30 21:37:20', '', '2023-05-30 21:49:40');
INSERT INTO `gen_table_column` VALUES (130, '18', 'staff_pay', '岗位津贴', 'float', 'Long', 'staffPay', '0', '0', NULL, '0', '0', '1', '1', 'EQ', 'input', '', 5, 'admin', '2023-05-30 21:37:20', '', '2023-05-30 21:49:40');
INSERT INTO `gen_table_column` VALUES (131, '18', 'extra_teacher_pay', '超额课时费', 'float', 'Long', 'extraTeacherPay', '0', '0', NULL, '0', '0', '1', '1', 'EQ', 'input', '', 6, 'admin', '2023-05-30 21:37:20', '', '2023-05-30 21:49:40');
INSERT INTO `gen_table_column` VALUES (132, '18', 'total_pay', '工资总额', 'float', 'Long', 'totalPay', '0', '0', NULL, '0', '0', '1', '1', 'EQ', 'input', '', 7, 'admin', '2023-05-30 21:37:20', '', '2023-05-30 21:49:40');
INSERT INTO `gen_table_column` VALUES (133, '18', 'tax', '个人所得税', 'float', 'Long', 'tax', '0', '0', NULL, '0', '0', '1', '1', 'EQ', 'input', '', 8, 'admin', '2023-05-30 21:37:20', '', '2023-05-30 21:49:40');
INSERT INTO `gen_table_column` VALUES (134, '18', 'housing', '住房公积金', 'float', 'Long', 'housing', '0', '0', NULL, '0', '0', '1', '1', 'EQ', 'input', '', 9, 'admin', '2023-05-30 21:37:20', '', '2023-05-30 21:49:40');
INSERT INTO `gen_table_column` VALUES (135, '18', 'insurance', '保险费', 'float', 'Long', 'insurance', '0', '0', NULL, '0', '0', '1', '1', 'EQ', 'input', '', 10, 'admin', '2023-05-30 21:37:20', '', '2023-05-30 21:49:40');
INSERT INTO `gen_table_column` VALUES (136, '18', 'net_pay', '实发工资', 'float', 'Long', 'netPay', '0', '0', NULL, '0', '0', '1', '1', 'EQ', 'input', '', 11, 'admin', '2023-05-30 21:37:20', '', '2023-05-30 21:49:40');

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
INSERT INTO `sys_logininfor` VALUES (174, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '密码输入错误1次', '2023-05-30 21:07:32');
INSERT INTO `sys_logininfor` VALUES (175, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '用户不存在/密码错误', '2023-05-30 21:07:32');
INSERT INTO `sys_logininfor` VALUES (176, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '验证码错误', '2023-05-30 21:07:37');
INSERT INTO `sys_logininfor` VALUES (177, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-30 21:07:41');

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
INSERT INTO `sys_menu` VALUES (2125, '事务', 0, 4, 'affair', 'financial/affair/index', NULL, 1, 0, 'C', '0', '0', 'financial:affair:list', 'education', 'admin', '2023-05-30 21:51:40', 'admin', '2023-05-30 21:59:46', '事务菜单');
INSERT INTO `sys_menu` VALUES (2126, '事务查询', 2125, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'financial:affair:query', '#', 'admin', '2023-05-30 21:51:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2127, '事务新增', 2125, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'financial:affair:add', '#', 'admin', '2023-05-30 21:51:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2128, '事务修改', 2125, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'financial:affair:edit', '#', 'admin', '2023-05-30 21:51:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2129, '事务删除', 2125, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'financial:affair:remove', '#', 'admin', '2023-05-30 21:51:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2130, '事务导出', 2125, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'financial:affair:export', '#', 'admin', '2023-05-30 21:51:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2131, '教职工', 2052, 1, 'faculty', 'financial/faculty/index', NULL, 1, 0, 'C', '0', '0', 'financial:faculty:list', 'people', 'admin', '2023-05-30 21:52:11', 'admin', '2023-05-30 22:10:20', '教职工菜单');
INSERT INTO `sys_menu` VALUES (2132, '教职工查询', 2131, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'financial:faculty:query', '#', 'admin', '2023-05-30 21:52:11', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2133, '教职工新增', 2131, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'financial:faculty:add', '#', 'admin', '2023-05-30 21:52:11', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2134, '教职工修改', 2131, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'financial:faculty:edit', '#', 'admin', '2023-05-30 21:52:11', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2135, '教职工删除', 2131, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'financial:faculty:remove', '#', 'admin', '2023-05-30 21:52:11', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2136, '教职工导出', 2131, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'financial:faculty:export', '#', 'admin', '2023-05-30 21:52:11', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2137, '职称', 2052, 1, 'title', 'financial/title/index', NULL, 1, 0, 'C', '0', '0', 'financial:title:list', 'post', 'admin', '2023-05-30 21:52:29', 'admin', '2023-05-30 22:10:35', '职称菜单');
INSERT INTO `sys_menu` VALUES (2138, '职称查询', 2137, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'financial:title:query', '#', 'admin', '2023-05-30 21:52:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2139, '职称新增', 2137, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'financial:title:add', '#', 'admin', '2023-05-30 21:52:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2140, '职称修改', 2137, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'financial:title:edit', '#', 'admin', '2023-05-30 21:52:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2141, '职称删除', 2137, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'financial:title:remove', '#', 'admin', '2023-05-30 21:52:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2142, '职称导出', 2137, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'financial:title:export', '#', 'admin', '2023-05-30 21:52:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2143, '职务', 2052, 1, 'job', 'financial/job/index', NULL, 1, 0, 'C', '0', '0', 'financial:job:list', 'post', 'admin', '2023-05-30 21:52:42', 'admin', '2023-05-30 22:10:43', '职务菜单');
INSERT INTO `sys_menu` VALUES (2144, '职务查询', 2143, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'financial:job:query', '#', 'admin', '2023-05-30 21:52:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2145, '职务新增', 2143, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'financial:job:add', '#', 'admin', '2023-05-30 21:52:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2146, '职务修改', 2143, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'financial:job:edit', '#', 'admin', '2023-05-30 21:52:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2147, '职务删除', 2143, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'financial:job:remove', '#', 'admin', '2023-05-30 21:52:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2148, '职务导出', 2143, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'financial:job:export', '#', 'admin', '2023-05-30 21:52:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2149, '教职工年度', 0, 5, 'yearly', 'financial/yearly/index', NULL, 1, 0, 'C', '0', '0', 'financial:yearly:list', 'build', 'admin', '2023-05-30 21:52:54', 'admin', '2023-05-30 22:10:00', '教职工年度菜单');
INSERT INTO `sys_menu` VALUES (2150, '教职工年度查询', 2149, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'financial:yearly:query', '#', 'admin', '2023-05-30 21:52:54', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2151, '教职工年度新增', 2149, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'financial:yearly:add', '#', 'admin', '2023-05-30 21:52:54', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2152, '教职工年度修改', 2149, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'financial:yearly:edit', '#', 'admin', '2023-05-30 21:52:54', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2153, '教职工年度删除', 2149, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'financial:yearly:remove', '#', 'admin', '2023-05-30 21:52:54', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2154, '教职工年度导出', 2149, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'financial:yearly:export', '#', 'admin', '2023-05-30 21:52:54', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2155, '工资明细表', 0, 2, 'payDetail', 'financial/payDetail/index', NULL, 1, 0, 'C', '0', '0', 'financial:payDetail:list', 'money', 'admin', '2023-05-30 21:53:28', 'admin', '2023-05-30 21:57:28', '工资明细表菜单');
INSERT INTO `sys_menu` VALUES (2156, '工资明细表查询', 2155, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'financial:payDetail:query', '#', 'admin', '2023-05-30 21:53:28', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2157, '工资明细表新增', 2155, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'financial:payDetail:add', '#', 'admin', '2023-05-30 21:53:28', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2158, '工资明细表修改', 2155, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'financial:payDetail:edit', '#', 'admin', '2023-05-30 21:53:28', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2159, '工资明细表删除', 2155, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'financial:payDetail:remove', '#', 'admin', '2023-05-30 21:53:28', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2160, '工资明细表导出', 2155, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'financial:payDetail:export', '#', 'admin', '2023-05-30 21:53:28', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2161, '工资表', 0, 2, 'pay', 'financial/pay/index', NULL, 1, 0, 'C', '0', '0', 'financial:pay:list', 'money', 'admin', '2023-05-30 21:53:36', 'admin', '2023-05-30 21:57:35', '工资表菜单');
INSERT INTO `sys_menu` VALUES (2162, '工资表查询', 2161, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'financial:pay:query', '#', 'admin', '2023-05-30 21:53:36', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2163, '工资表新增', 2161, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'financial:pay:add', '#', 'admin', '2023-05-30 21:53:36', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2164, '工资表修改', 2161, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'financial:pay:edit', '#', 'admin', '2023-05-30 21:53:36', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2165, '工资表删除', 2161, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'financial:pay:remove', '#', 'admin', '2023-05-30 21:53:36', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2166, '工资表导出', 2161, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'financial:pay:export', '#', 'admin', '2023-05-30 21:53:36', '', NULL, '');

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
INSERT INTO `sys_oper_log` VALUES (237, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"title\",\"className\":\"Title\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"编号\",\"columnId\":67,\"columnName\":\"id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 17:42:08\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":10,\"updateBy\":\"\",\"updateTime\":\"2023-05-30 18:37:25\",\"usableColumn\":false},{\"capJavaField\":\"Des\",\"columnComment\":\"职称\",\"columnId\":68,\"columnName\":\"des\",\"columnType\":\"varchar(60)\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 17:42:08\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"des\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":10,\"updateBy\":\"\",\"updateTime\":\"2023-05-30 18:37:25\",\"usableColumn\":false},{\"capJavaField\":\"Factor\",\"columnComment\":\"职称系数\",\"columnId\":69,\"columnName\":\"factor\",\"columnType\":\"float\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 17:42:08\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"factor\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":10,\"updateBy\":\"\",\"updateTime\":\"2023-05-30 18:37:25\",\"usableColumn\":false}],\"crud\":true,\"functionAuthor\":\"Keven\",\"functionName\":\"职称\",\"genPath\":\"/\",\"genType\":\"0\",\"moduleName\":\"financial\",\"options\":\"{\\\"parentMenuId\\\":\\\"2052\\\"}\",\"packageName\":\"com.ruoyi.financial\",\"params\":{\"parentMenuId\":\"2052\"},\"parentMenuId\":\"2052\",\"sub\":false,\"tableComment\":\"职称表\",\"tableId\":10,\"tableName\":\"title', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-30 21:08:00', 49);
INSERT INTO `sys_oper_log` VALUES (238, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"title\",\"className\":\"Title\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"编号\",\"columnId\":67,\"columnName\":\"id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 17:42:08\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":10,\"updateBy\":\"\",\"updateTime\":\"2023-05-30 21:08:00\",\"usableColumn\":false},{\"capJavaField\":\"Des\",\"columnComment\":\"职称\",\"columnId\":68,\"columnName\":\"des\",\"columnType\":\"varchar(60)\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 17:42:08\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"des\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":10,\"updateBy\":\"\",\"updateTime\":\"2023-05-30 21:08:00\",\"usableColumn\":false},{\"capJavaField\":\"Factor\",\"columnComment\":\"职称系数\",\"columnId\":69,\"columnName\":\"factor\",\"columnType\":\"float\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 17:42:08\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"factor\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":10,\"updateBy\":\"\",\"updateTime\":\"2023-05-30 21:08:00\",\"usableColumn\":false}],\"crud\":true,\"functionAuthor\":\"Keven\",\"functionName\":\"职称\",\"genPath\":\"/\",\"genType\":\"0\",\"moduleName\":\"financial\",\"options\":\"{\\\"parentMenuId\\\":\\\"2052\\\"}\",\"packageName\":\"com.ruoyi.financial\",\"params\":{\"parentMenuId\":\"2052\"},\"parentMenuId\":\"2052\",\"sub\":false,\"tableComment\":\"职称表\",\"tableId\":10,\"tableName\":\"title', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-30 21:08:30', 14);
INSERT INTO `sys_oper_log` VALUES (239, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"payDetail\",\"className\":\"PayDetail\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"编号\",\"columnId\":76,\"columnName\":\"id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 17:48:44\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":12,\"updateBy\":\"\",\"updateTime\":\"2023-05-30 18:42:50\",\"usableColumn\":false},{\"capJavaField\":\"FacultyId\",\"columnComment\":\"教职工编号\",\"columnId\":77,\"columnName\":\"faculty_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 17:48:44\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"facultyId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":12,\"updateBy\":\"\",\"updateTime\":\"2023-05-30 18:42:50\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"姓名\",\"columnId\":78,\"columnName\":\"name\",\"columnType\":\"varchar(30)\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 17:48:44\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":12,\"updateBy\":\"\",\"updateTime\":\"2023-05-30 18:42:50\",\"usableColumn\":false},{\"capJavaField\":\"Month\",\"columnComment\":\"月份\",\"columnId\":79,\"columnName\":\"month\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 17:48:44\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isLi', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-30 21:11:13', 32);
INSERT INTO `sys_oper_log` VALUES (240, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"faculty_monthly\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-30 21:11:19', 66);
INSERT INTO `sys_oper_log` VALUES (241, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"pay\",\"className\":\"Pay\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"编号\",\"columnId\":103,\"columnName\":\"id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 21:11:19\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":16,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"FacultyId\",\"columnComment\":\"教职工编号\",\"columnId\":104,\"columnName\":\"faculty_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 21:11:19\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"facultyId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":16,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"姓名\",\"columnId\":105,\"columnName\":\"name\",\"columnType\":\"varchar(30)\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 21:11:19\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":16,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Month\",\"columnComment\":\"月份\",\"columnId\":106,\"columnName\":\"month\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 21:11:19\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"month\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-30 21:12:30', 23);
INSERT INTO `sys_oper_log` VALUES (242, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"yearly\",\"className\":\"FacultyYearly\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"编号\",\"columnId\":88,\"columnName\":\"id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 17:48:44\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":13,\"updateBy\":\"\",\"updateTime\":\"2023-05-30 18:41:56\",\"usableColumn\":false},{\"capJavaField\":\"FacultyId\",\"columnComment\":\"教职工编号\",\"columnId\":89,\"columnName\":\"faculty_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 17:48:44\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"0\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"facultyId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":13,\"updateBy\":\"\",\"updateTime\":\"2023-05-30 18:41:56\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"姓名\",\"columnId\":90,\"columnName\":\"name\",\"columnType\":\"varchar(30)\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 17:48:44\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"0\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":13,\"updateBy\":\"\",\"updateTime\":\"2023-05-30 18:41:56\",\"usableColumn\":false},{\"capJavaField\":\"TotalPay\",\"columnComment\":\"本年度累计工资总额\",\"columnId\":91,\"columnName\":\"total_pay\",\"columnType\":\"float\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 17:48:44\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"0\",\"isIncrement\":\"0\",', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-30 21:15:54', 13);
INSERT INTO `sys_oper_log` VALUES (243, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"payDetail\",\"className\":\"PayDetail\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"编号\",\"columnId\":76,\"columnName\":\"id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 17:48:44\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":12,\"updateBy\":\"\",\"updateTime\":\"2023-05-30 21:11:13\",\"usableColumn\":false},{\"capJavaField\":\"FacultyId\",\"columnComment\":\"教职工编号\",\"columnId\":77,\"columnName\":\"faculty_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 17:48:44\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"0\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"facultyId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":12,\"updateBy\":\"\",\"updateTime\":\"2023-05-30 21:11:13\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"姓名\",\"columnId\":78,\"columnName\":\"name\",\"columnType\":\"varchar(30)\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 17:48:44\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"0\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":12,\"updateBy\":\"\",\"updateTime\":\"2023-05-30 21:11:13\",\"usableColumn\":false},{\"capJavaField\":\"Month\",\"columnComment\":\"月份\",\"columnId\":79,\"columnName\":\"month\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 17:48:44\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"0\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"i', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-30 21:16:33', 24);
INSERT INTO `sys_oper_log` VALUES (244, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"pay\",\"className\":\"Pay\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"编号\",\"columnId\":103,\"columnName\":\"id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 21:11:19\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":16,\"updateBy\":\"\",\"updateTime\":\"2023-05-30 21:12:30\",\"usableColumn\":false},{\"capJavaField\":\"FacultyId\",\"columnComment\":\"教职工编号\",\"columnId\":104,\"columnName\":\"faculty_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 21:11:19\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":false,\"isEdit\":\"0\",\"isIncrement\":\"0\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"facultyId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":16,\"updateBy\":\"\",\"updateTime\":\"2023-05-30 21:12:30\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"姓名\",\"columnId\":105,\"columnName\":\"name\",\"columnType\":\"varchar(30)\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 21:11:19\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":false,\"isEdit\":\"0\",\"isIncrement\":\"0\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":16,\"updateBy\":\"\",\"updateTime\":\"2023-05-30 21:12:30\",\"usableColumn\":false},{\"capJavaField\":\"Month\",\"columnComment\":\"月份\",\"columnId\":106,\"columnName\":\"month\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 21:11:19\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":false,\"isEdit\":\"0\",\"isIncrement\":\"0\",\"isInsert\":\"0\",\"isLis', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-30 21:21:08', 28);
INSERT INTO `sys_oper_log` VALUES (245, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', 1, 'admin', NULL, '/tool/gen/synchDb/faculty_yearly', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-30 21:34:45', 34);
INSERT INTO `sys_oper_log` VALUES (246, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', 1, 'admin', NULL, '/tool/gen/synchDb/pay_detail', '127.0.0.1', '内网IP', '{}', NULL, 1, '同步数据失败，原表结构不存在', '2023-05-30 21:34:53', 9);
INSERT INTO `sys_oper_log` VALUES (247, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', NULL, '/tool/gen/12,16', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-30 21:35:01', 6);
INSERT INTO `sys_oper_log` VALUES (248, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"yearly\",\"className\":\"FacultyYearly\",\"columns\":[{\"capJavaField\":\"FacultyId\",\"columnComment\":\"教职工编号\",\"columnId\":89,\"columnName\":\"faculty_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 17:48:44\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":false,\"isEdit\":\"0\",\"isIncrement\":\"0\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"facultyId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":1,\"superColumn\":false,\"tableId\":13,\"updateBy\":\"\",\"updateTime\":\"2023-05-30 21:34:45\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"姓名\",\"columnId\":90,\"columnName\":\"name\",\"columnType\":\"varchar(30)\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 17:48:44\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":false,\"isEdit\":\"0\",\"isIncrement\":\"0\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":13,\"updateBy\":\"\",\"updateTime\":\"2023-05-30 21:34:45\",\"usableColumn\":false},{\"capJavaField\":\"TotalPay\",\"columnComment\":\"本年度累计工资总额\",\"columnId\":91,\"columnName\":\"total_pay\",\"columnType\":\"float\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 17:48:44\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":false,\"isEdit\":\"0\",\"isIncrement\":\"0\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"totalPay\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":13,\"updateBy\":\"\",\"updateTime\":\"2023-05-30 21:34:45\",\"usableColumn\":false},{\"capJavaField\":\"Hour\",\"columnComment\":\"本年度累计授课时数\",\"columnId\":92,\"columnName\":\"hour\",\"columnType\":\"float\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 17:48:44\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"inc', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-30 21:35:41', 12);
INSERT INTO `sys_oper_log` VALUES (249, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"faculty_monthly\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-30 21:35:48', 27);
INSERT INTO `sys_oper_log` VALUES (250, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"affair\",\"className\":\"Affair\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"编号\",\"columnId\":97,\"columnName\":\"id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 18:07:22\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":15,\"updateBy\":\"\",\"updateTime\":\"2023-05-30 18:09:43\",\"usableColumn\":false},{\"capJavaField\":\"FacultyId\",\"columnComment\":\"教职工编号\",\"columnId\":98,\"columnName\":\"faculty_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 18:07:22\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"facultyId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":15,\"updateBy\":\"\",\"updateTime\":\"2023-05-30 18:09:43\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"姓名\",\"columnId\":99,\"columnName\":\"name\",\"columnType\":\"varchar(30)\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 18:07:22\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":15,\"updateBy\":\"\",\"updateTime\":\"2023-05-30 18:09:43\",\"usableColumn\":false},{\"capJavaField\":\"Month\",\"columnComment\":\"月份\",\"columnId\":100,\"columnName\":\"month\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 18:07:22\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-30 21:36:17', 10);
INSERT INTO `sys_oper_log` VALUES (251, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"affair\",\"className\":\"Affair\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"编号\",\"columnId\":97,\"columnName\":\"id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 18:07:22\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":15,\"updateBy\":\"\",\"updateTime\":\"2023-05-30 21:36:17\",\"usableColumn\":false},{\"capJavaField\":\"FacultyId\",\"columnComment\":\"教职工编号\",\"columnId\":98,\"columnName\":\"faculty_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 18:07:22\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"facultyId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":15,\"updateBy\":\"\",\"updateTime\":\"2023-05-30 21:36:17\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"姓名\",\"columnId\":99,\"columnName\":\"name\",\"columnType\":\"varchar(30)\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 18:07:22\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":15,\"updateBy\":\"\",\"updateTime\":\"2023-05-30 21:36:17\",\"usableColumn\":false},{\"capJavaField\":\"Month\",\"columnComment\":\"月份\",\"columnId\":100,\"columnName\":\"month\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 18:07:22\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-30 21:36:46', 15);
INSERT INTO `sys_oper_log` VALUES (252, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"faculty_monthly_test\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-30 21:37:20', 24);
INSERT INTO `sys_oper_log` VALUES (253, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"monthly\",\"className\":\"Pay\",\"columns\":[{\"capJavaField\":\"FacultyId\",\"columnComment\":\"教职工编号\",\"columnId\":115,\"columnName\":\"faculty_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 21:35:48\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":false,\"isIncrement\":\"0\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"1\",\"isQuery\":\"1\",\"javaField\":\"facultyId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":true,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":17,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"姓名\",\"columnId\":116,\"columnName\":\"name\",\"columnType\":\"varchar(30)\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 21:35:48\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":false,\"isEdit\":\"0\",\"isIncrement\":\"0\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":17,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Month\",\"columnComment\":\"月份\",\"columnId\":117,\"columnName\":\"month\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 21:35:48\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":false,\"isIncrement\":\"0\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"1\",\"isQuery\":\"1\",\"javaField\":\"month\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":true,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":17,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"TeacherPay\",\"columnComment\":\"课时费\",\"columnId\":118,\"columnName\":\"teacher_pay\",\"columnType\":\"float\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 21:35:48\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":false,\"isEdit\":\"0\",\"isIncrement\":\"0\",\"isInsert\":\"0\",\"isList\":\"0\",\"isPk\":\"0\",\"isQuery\":\"0\",\"javaField\":\"teacherPay\",\"javaType\":\"Long\",\"list\":fal', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-30 21:39:20', 20);
INSERT INTO `sys_oper_log` VALUES (254, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"pay\",\"className\":\"Pay\",\"columns\":[{\"capJavaField\":\"FacultyId\",\"columnComment\":\"教职工编号\",\"columnId\":115,\"columnName\":\"faculty_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 21:35:48\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":false,\"isIncrement\":\"0\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"1\",\"isQuery\":\"1\",\"javaField\":\"facultyId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":true,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":17,\"updateBy\":\"\",\"updateTime\":\"2023-05-30 21:39:20\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"姓名\",\"columnId\":116,\"columnName\":\"name\",\"columnType\":\"varchar(30)\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 21:35:48\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":false,\"isEdit\":\"0\",\"isIncrement\":\"0\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":17,\"updateBy\":\"\",\"updateTime\":\"2023-05-30 21:39:20\",\"usableColumn\":false},{\"capJavaField\":\"Month\",\"columnComment\":\"月份\",\"columnId\":117,\"columnName\":\"month\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 21:35:48\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":false,\"isIncrement\":\"0\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"1\",\"isQuery\":\"1\",\"javaField\":\"month\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":true,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":17,\"updateBy\":\"\",\"updateTime\":\"2023-05-30 21:39:20\",\"usableColumn\":false},{\"capJavaField\":\"TeacherPay\",\"columnComment\":\"课时费\",\"columnId\":118,\"columnName\":\"teacher_pay\",\"columnType\":\"float\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 21:35:48\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":false,\"isEdit\":\"0\",\"isIncrement\":\"0\",\"isI', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-30 21:40:38', 17);
INSERT INTO `sys_oper_log` VALUES (255, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"test\",\"className\":\"FacultyMonthlyTest\",\"columns\":[{\"capJavaField\":\"FacultyId\",\"columnComment\":\"教职工编号\",\"columnId\":126,\"columnName\":\"faculty_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 21:37:20\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"facultyId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":18,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"姓名\",\"columnId\":127,\"columnName\":\"name\",\"columnType\":\"varchar(30)\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 21:37:20\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":18,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Month\",\"columnComment\":\"月份\",\"columnId\":128,\"columnName\":\"month\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 21:37:20\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"month\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":18,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"TeacherPay\",\"columnComment\":\"课时费\",\"columnId\":129,\"columnName\":\"teacher_pay\",\"columnType\":\"float\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 21:37:20\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"teacherPay\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"query', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-30 21:40:47', 15);
INSERT INTO `sys_oper_log` VALUES (256, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"payDetail\",\"className\":\"PayDetail\",\"columns\":[{\"capJavaField\":\"FacultyId\",\"columnComment\":\"教职工编号\",\"columnId\":126,\"columnName\":\"faculty_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 21:37:20\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":false,\"isIncrement\":\"0\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"1\",\"isQuery\":\"1\",\"javaField\":\"facultyId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":true,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":18,\"updateBy\":\"\",\"updateTime\":\"2023-05-30 21:40:47\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"姓名\",\"columnId\":127,\"columnName\":\"name\",\"columnType\":\"varchar(30)\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 21:37:20\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":false,\"isEdit\":\"0\",\"isIncrement\":\"0\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":18,\"updateBy\":\"\",\"updateTime\":\"2023-05-30 21:40:47\",\"usableColumn\":false},{\"capJavaField\":\"Month\",\"columnComment\":\"月份\",\"columnId\":128,\"columnName\":\"month\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 21:37:20\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":false,\"isIncrement\":\"0\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"1\",\"isQuery\":\"1\",\"javaField\":\"month\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":true,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":18,\"updateBy\":\"\",\"updateTime\":\"2023-05-30 21:40:47\",\"usableColumn\":false},{\"capJavaField\":\"TeacherPay\",\"columnComment\":\"课时费\",\"columnId\":129,\"columnName\":\"teacher_pay\",\"columnType\":\"float\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 21:37:20\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":false,\"isEdit\":\"0\",\"isIncreme', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-30 21:43:13', 16);
INSERT INTO `sys_oper_log` VALUES (257, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"faculty,title,faculty_yearly,job,affair,faculty_monthly,faculty_monthly\"}', NULL, 1, 'nested exception is org.apache.ibatis.exceptions.TooManyResultsException: Expected one result (or null) to be returned by selectOne(), but found: 2', '2023-05-30 21:44:23', 130);
INSERT INTO `sys_oper_log` VALUES (258, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"faculty,title,faculty_yearly,job,affair,faculty_monthly,faculty_monthly\"}', NULL, 1, 'nested exception is org.apache.ibatis.exceptions.TooManyResultsException: Expected one result (or null) to be returned by selectOne(), but found: 2', '2023-05-30 21:44:27', 111);
INSERT INTO `sys_oper_log` VALUES (259, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"faculty,title,faculty_yearly,job,affair,faculty_monthly\"}', NULL, 1, 'nested exception is org.apache.ibatis.exceptions.TooManyResultsException: Expected one result (or null) to be returned by selectOne(), but found: 2', '2023-05-30 21:44:43', 102);
INSERT INTO `sys_oper_log` VALUES (260, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"faculty,title,faculty_yearly,job,affair\"}', NULL, 0, NULL, '2023-05-30 21:44:51', 98);
INSERT INTO `sys_oper_log` VALUES (261, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"faculty,title,faculty_yearly,job,affair\"}', NULL, 0, NULL, '2023-05-30 21:44:51', 95);
INSERT INTO `sys_oper_log` VALUES (262, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"faculty,title,faculty_yearly,job,affair\"}', NULL, 0, NULL, '2023-05-30 21:44:51', 95);
INSERT INTO `sys_oper_log` VALUES (263, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"faculty_monthly\"}', NULL, 1, 'nested exception is org.apache.ibatis.exceptions.TooManyResultsException: Expected one result (or null) to be returned by selectOne(), but found: 2', '2023-05-30 21:44:57', 3);
INSERT INTO `sys_oper_log` VALUES (264, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"payDetail\",\"className\":\"PayDetail\",\"columns\":[{\"capJavaField\":\"FacultyId\",\"columnComment\":\"教职工编号\",\"columnId\":126,\"columnName\":\"faculty_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 21:37:20\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":false,\"isIncrement\":\"0\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"1\",\"isQuery\":\"1\",\"javaField\":\"facultyId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":true,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":18,\"updateBy\":\"\",\"updateTime\":\"2023-05-30 21:43:13\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"姓名\",\"columnId\":127,\"columnName\":\"name\",\"columnType\":\"varchar(30)\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 21:37:20\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":false,\"isEdit\":\"0\",\"isIncrement\":\"0\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":18,\"updateBy\":\"\",\"updateTime\":\"2023-05-30 21:43:13\",\"usableColumn\":false},{\"capJavaField\":\"Month\",\"columnComment\":\"月份\",\"columnId\":128,\"columnName\":\"month\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 21:37:20\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":false,\"isIncrement\":\"0\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"1\",\"isQuery\":\"1\",\"javaField\":\"month\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":true,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":18,\"updateBy\":\"\",\"updateTime\":\"2023-05-30 21:43:13\",\"usableColumn\":false},{\"capJavaField\":\"TeacherPay\",\"columnComment\":\"课时费\",\"columnId\":129,\"columnName\":\"teacher_pay\",\"columnType\":\"float\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 21:37:20\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":false,\"isEdit\":\"0\",\"isIncreme', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-30 21:45:24', 14);
INSERT INTO `sys_oper_log` VALUES (265, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"faculty_monthly\"}', NULL, 0, NULL, '2023-05-30 21:45:28', 21);
INSERT INTO `sys_oper_log` VALUES (266, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"faculty_monthly\"}', NULL, 0, NULL, '2023-05-30 21:45:28', 20);
INSERT INTO `sys_oper_log` VALUES (267, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"pay\",\"className\":\"Pay\",\"columns\":[{\"capJavaField\":\"FacultyId\",\"columnComment\":\"教职工编号\",\"columnId\":115,\"columnName\":\"faculty_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 21:35:48\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":false,\"isIncrement\":\"0\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"1\",\"isQuery\":\"1\",\"javaField\":\"facultyId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":true,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":17,\"updateBy\":\"\",\"updateTime\":\"2023-05-30 21:40:38\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"姓名\",\"columnId\":116,\"columnName\":\"name\",\"columnType\":\"varchar(30)\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 21:35:48\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":false,\"isEdit\":\"0\",\"isIncrement\":\"0\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":17,\"updateBy\":\"\",\"updateTime\":\"2023-05-30 21:40:38\",\"usableColumn\":false},{\"capJavaField\":\"Month\",\"columnComment\":\"月份\",\"columnId\":117,\"columnName\":\"month\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 21:35:48\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":false,\"isIncrement\":\"0\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"1\",\"isQuery\":\"1\",\"javaField\":\"month\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":true,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":17,\"updateBy\":\"\",\"updateTime\":\"2023-05-30 21:40:38\",\"usableColumn\":false},{\"capJavaField\":\"TeacherPay\",\"columnComment\":\"课时费\",\"columnId\":118,\"columnName\":\"teacher_pay\",\"columnType\":\"float\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 21:35:48\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":false,\"isEdit\":\"0\",\"isIncrement\":\"0\",\"isI', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-30 21:49:34', 18);
INSERT INTO `sys_oper_log` VALUES (268, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"payDetail\",\"className\":\"PayDetail\",\"columns\":[{\"capJavaField\":\"FacultyId\",\"columnComment\":\"教职工编号\",\"columnId\":126,\"columnName\":\"faculty_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 21:37:20\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":false,\"isIncrement\":\"0\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"1\",\"isQuery\":\"1\",\"javaField\":\"facultyId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":true,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":18,\"updateBy\":\"\",\"updateTime\":\"2023-05-30 21:45:24\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"姓名\",\"columnId\":127,\"columnName\":\"name\",\"columnType\":\"varchar(30)\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 21:37:20\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":false,\"isEdit\":\"0\",\"isIncrement\":\"0\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":18,\"updateBy\":\"\",\"updateTime\":\"2023-05-30 21:45:24\",\"usableColumn\":false},{\"capJavaField\":\"Month\",\"columnComment\":\"月份\",\"columnId\":128,\"columnName\":\"month\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 21:37:20\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":false,\"isIncrement\":\"0\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"1\",\"isQuery\":\"1\",\"javaField\":\"month\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":true,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":18,\"updateBy\":\"\",\"updateTime\":\"2023-05-30 21:45:24\",\"usableColumn\":false},{\"capJavaField\":\"TeacherPay\",\"columnComment\":\"课时费\",\"columnId\":129,\"columnName\":\"teacher_pay\",\"columnType\":\"float\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 21:37:20\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":false,\"isEdit\":\"0\",\"isIncreme', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-30 21:49:41', 13);
INSERT INTO `sys_oper_log` VALUES (269, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"faculty_monthly\"}', NULL, 0, NULL, '2023-05-30 21:49:44', 26);
INSERT INTO `sys_oper_log` VALUES (270, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"faculty_monthly\"}', NULL, 0, NULL, '2023-05-30 21:49:44', 25);
INSERT INTO `sys_oper_log` VALUES (271, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"financial/pay/index\",\"createTime\":\"2023-05-30 21:53:36\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2161,\"menuName\":\"工资表\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"pay\",\"perms\":\"financial:pay:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-30 21:54:20', 14);
INSERT INTO `sys_oper_log` VALUES (272, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"financial/pay/index\",\"createTime\":\"2023-05-30 21:53:36\",\"icon\":\"money\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2161,\"menuName\":\"工资表\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"pay\",\"perms\":\"financial:pay:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-30 21:54:29', 8);
INSERT INTO `sys_oper_log` VALUES (273, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"financial/payDetail/index\",\"createTime\":\"2023-05-30 21:53:28\",\"icon\":\"money\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2155,\"menuName\":\"工资明细表\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"payDetail\",\"perms\":\"financial:payDetail:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-30 21:54:40', 5);
INSERT INTO `sys_oper_log` VALUES (274, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"financial/payDetail/index\",\"createTime\":\"2023-05-30 21:53:28\",\"icon\":\"money\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2155,\"menuName\":\"工资明细表\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":0,\"path\":\"payDetail\",\"perms\":\"financial:payDetail:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-30 21:57:28', 5);
INSERT INTO `sys_oper_log` VALUES (275, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"financial/pay/index\",\"createTime\":\"2023-05-30 21:53:36\",\"icon\":\"money\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2161,\"menuName\":\"工资表\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":0,\"path\":\"pay\",\"perms\":\"financial:pay:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-30 21:57:35', 8);
INSERT INTO `sys_oper_log` VALUES (276, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"financial/yearly/index\",\"createTime\":\"2023-05-30 21:52:54\",\"icon\":\"download\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2149,\"menuName\":\"教职工年度\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":3,\"path\":\"yearly\",\"perms\":\"financial:yearly:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-30 21:58:44', 5);
INSERT INTO `sys_oper_log` VALUES (277, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"financial/yearly/index\",\"createTime\":\"2023-05-30 21:52:54\",\"icon\":\"download\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2149,\"menuName\":\"教职工年度\",\"menuType\":\"C\",\"orderNum\":4,\"params\":{},\"parentId\":3,\"path\":\"yearly\",\"perms\":\"financial:yearly:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-30 21:59:01', 4);
INSERT INTO `sys_oper_log` VALUES (278, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"financial/yearly/index\",\"createTime\":\"2023-05-30 21:52:54\",\"icon\":\"download\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2149,\"menuName\":\"教职工年度\",\"menuType\":\"C\",\"orderNum\":4,\"params\":{},\"parentId\":0,\"path\":\"yearly\",\"perms\":\"financial:yearly:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-30 21:59:07', 8);
INSERT INTO `sys_oper_log` VALUES (279, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"financial/affair/index\",\"createTime\":\"2023-05-30 21:51:40\",\"icon\":\"education\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2125,\"menuName\":\"事务\",\"menuType\":\"C\",\"orderNum\":4,\"params\":{},\"parentId\":0,\"path\":\"affair\",\"perms\":\"financial:affair:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-30 21:59:46', 4);
INSERT INTO `sys_oper_log` VALUES (280, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"financial/yearly/index\",\"createTime\":\"2023-05-30 21:52:54\",\"icon\":\"download\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2149,\"menuName\":\"教职工年度\",\"menuType\":\"C\",\"orderNum\":5,\"params\":{},\"parentId\":0,\"path\":\"yearly\",\"perms\":\"financial:yearly:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-30 21:59:50', 9);
INSERT INTO `sys_oper_log` VALUES (281, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"faculty\",\"className\":\"Faculty\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"编号\",\"columnId\":35,\"columnName\":\"id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 17:42:08\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":6,\"updateBy\":\"\",\"updateTime\":\"2023-05-30 18:13:50\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"姓名\",\"columnId\":36,\"columnName\":\"name\",\"columnType\":\"varchar(30)\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 17:42:08\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":6,\"updateBy\":\"\",\"updateTime\":\"2023-05-30 18:13:50\",\"usableColumn\":false},{\"capJavaField\":\"Type\",\"columnComment\":\"教师/职工\",\"columnId\":37,\"columnName\":\"type\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 17:42:08\",\"dictType\":\"faculty_type\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"type\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":6,\"updateBy\":\"\",\"updateTime\":\"2023-05-30 18:13:50\",\"usableColumn\":false},{\"capJavaField\":\"Title\",\"columnComment\":\"职称\",\"columnId\":38,\"columnName\":\"title\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-05-30 17:42:08\",\"dictType\":\"faculty_title\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isL', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-30 22:06:15', 83);
INSERT INTO `sys_oper_log` VALUES (282, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"faculty\"}', NULL, 0, NULL, '2023-05-30 22:06:18', 185);
INSERT INTO `sys_oper_log` VALUES (283, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"faculty\"}', NULL, 0, NULL, '2023-05-30 22:06:18', 33);
INSERT INTO `sys_oper_log` VALUES (284, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"financial/yearly/index\",\"createTime\":\"2023-05-30 21:52:54\",\"icon\":\"build\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2149,\"menuName\":\"教职工年度\",\"menuType\":\"C\",\"orderNum\":5,\"params\":{},\"parentId\":0,\"path\":\"yearly\",\"perms\":\"financial:yearly:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-30 22:10:00', 13);
INSERT INTO `sys_oper_log` VALUES (285, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"financial/faculty/index\",\"createTime\":\"2023-05-30 21:52:11\",\"icon\":\"people\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2131,\"menuName\":\"教职工\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2052,\"path\":\"faculty\",\"perms\":\"financial:faculty:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-30 22:10:20', 7);
INSERT INTO `sys_oper_log` VALUES (286, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"financial/title/index\",\"createTime\":\"2023-05-30 21:52:29\",\"icon\":\"post\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2137,\"menuName\":\"职称\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2052,\"path\":\"title\",\"perms\":\"financial:title:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-30 22:10:35', 7);
INSERT INTO `sys_oper_log` VALUES (287, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"financial/job/index\",\"createTime\":\"2023-05-30 21:52:42\",\"icon\":\"post\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2143,\"menuName\":\"职务\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2052,\"path\":\"job\",\"perms\":\"financial:job:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-30 22:10:43', 14);

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
INSERT INTO `sys_user` VALUES (1, 103, 'admin', '若依', '00', 'ry@163.com', '15888888888', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2023-05-30 21:07:41', 'admin', '2023-05-28 07:54:27', '', '2023-05-30 21:07:41', '管理员', NULL);
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
