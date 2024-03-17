/*
 Navicat Premium Data Transfer

 Source Server         : my
 Source Server Type    : MySQL
 Source Server Version : 50731
 Source Host           : localhost:3306
 Source Schema         : gedan_db

 Target Server Type    : MySQL
 Target Server Version : 50731
 File Encoding         : 65001

 Date: 17/03/2024 17:25:36
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for music
-- ----------------------------
DROP TABLE IF EXISTS `music`;
CREATE TABLE `music`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `type` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '类型',
  `music` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '音乐名',
  `tags` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '标签列表（json 数组）',
  `userId` bigint(20) NULL DEFAULT NULL COMMENT '创建用户 id',
  `createTime` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `updateTime` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `isDelete` tinyint(4) NOT NULL DEFAULT 0 COMMENT '是否删除',
  `singer` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_userId`(`userId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 151 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '歌单' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of music
-- ----------------------------
INSERT INTO `music` VALUES (1, NULL, '骁', NULL, NULL, '2024-03-17 00:23:31', '2024-03-17 00:23:31', 0, '井胧/井迪');
INSERT INTO `music` VALUES (2, NULL, '南下', NULL, NULL, '2024-03-17 00:26:07', '2024-03-17 00:26:07', 0, '徐海俏');
INSERT INTO `music` VALUES (3, NULL, '雨媒', NULL, NULL, '2024-03-17 00:29:33', '2024-03-17 00:29:33', 0, '');
INSERT INTO `music` VALUES (4, NULL, '画心', NULL, NULL, '2024-03-17 00:29:33', '2024-03-17 00:29:33', 0, '');
INSERT INTO `music` VALUES (5, NULL, '模特儿', NULL, NULL, '2024-03-17 00:29:33', '2024-03-17 00:29:33', 0, '');
INSERT INTO `music` VALUES (6, NULL, '刀马旦', NULL, NULL, '2024-03-17 00:29:33', '2024-03-17 17:14:10', 0, '翁立友');
INSERT INTO `music` VALUES (7, NULL, '再见深海', NULL, NULL, '2024-03-17 00:29:33', '2024-03-17 17:13:13', 0, '唐汉霄');
INSERT INTO `music` VALUES (8, NULL, '我怀念的', NULL, NULL, '2024-03-17 00:29:33', '2024-03-17 00:29:33', 0, '');
INSERT INTO `music` VALUES (9, NULL, '谁', NULL, NULL, '2024-03-17 00:29:33', '2024-03-17 00:29:33', 0, '');
INSERT INTO `music` VALUES (10, NULL, '难却', NULL, NULL, '2024-03-17 00:29:33', '2024-03-17 00:29:33', 0, '');
INSERT INTO `music` VALUES (11, NULL, '心墙', NULL, NULL, '2024-03-17 00:29:33', '2024-03-17 00:29:33', 0, '');
INSERT INTO `music` VALUES (12, NULL, '天下', NULL, NULL, '2024-03-17 00:29:33', '2024-03-17 17:18:50', 0, '张杰');
INSERT INTO `music` VALUES (13, NULL, '人世间', NULL, NULL, '2024-03-17 00:29:33', '2024-03-17 17:07:16', 0, '雷佳');
INSERT INTO `music` VALUES (14, NULL, '风筝误', NULL, NULL, '2024-03-17 00:29:33', '2024-03-17 00:29:33', 0, '');
INSERT INTO `music` VALUES (15, NULL, '孤独颂歌', NULL, NULL, '2024-03-17 00:29:33', '2024-03-17 17:21:37', 0, '胡彬');
INSERT INTO `music` VALUES (16, NULL, '岁月神偷', NULL, NULL, '2024-03-17 00:29:33', '2024-03-17 00:29:33', 0, '');
INSERT INTO `music` VALUES (17, NULL, '爱你', NULL, NULL, '2024-03-17 00:29:33', '2024-03-17 00:29:33', 0, '');
INSERT INTO `music` VALUES (18, NULL, '你走', NULL, NULL, '2024-03-17 00:29:33', '2024-03-17 17:12:21', 0, '李宗锦');
INSERT INTO `music` VALUES (19, NULL, '迷宫', NULL, NULL, '2024-03-17 00:29:33', '2024-03-17 00:29:33', 0, '');
INSERT INTO `music` VALUES (20, NULL, '如愿', NULL, NULL, '2024-03-17 00:29:33', '2024-03-17 17:19:47', 0, '王菲');
INSERT INTO `music` VALUES (21, NULL, '年轮说', NULL, NULL, '2024-03-17 00:29:33', '2024-03-17 00:29:33', 0, '');
INSERT INTO `music` VALUES (22, NULL, '入阵曲', NULL, NULL, '2024-03-17 00:29:33', '2024-03-17 17:13:00', 0, '张晓涵');
INSERT INTO `music` VALUES (23, NULL, '故里逢春', NULL, NULL, '2024-03-17 00:29:33', '2024-03-17 00:29:33', 0, '');
INSERT INTO `music` VALUES (24, NULL, '身骑白马', NULL, NULL, '2024-03-17 00:29:33', '2024-03-17 00:29:33', 0, '');
INSERT INTO `music` VALUES (25, NULL, '安静', NULL, NULL, '2024-03-17 00:29:33', '2024-03-17 17:22:02', 0, '周杰伦');
INSERT INTO `music` VALUES (26, NULL, '如愿', NULL, NULL, '2024-03-17 00:29:33', '2024-03-17 17:20:12', 1, '');
INSERT INTO `music` VALUES (27, NULL, '爱味', NULL, NULL, '2024-03-17 00:29:33', '2024-03-17 00:29:33', 0, '');
INSERT INTO `music` VALUES (28, NULL, '赤怜', NULL, NULL, '2024-03-17 00:29:33', '2024-03-17 00:29:33', 0, '');
INSERT INTO `music` VALUES (29, NULL, 'Lydia', NULL, NULL, '2024-03-17 00:29:33', '2024-03-17 17:04:52', 0, '飞儿乐团');
INSERT INTO `music` VALUES (30, NULL, '若把你', NULL, NULL, '2024-03-17 00:29:33', '2024-03-17 00:29:33', 0, '');
INSERT INTO `music` VALUES (31, NULL, '光的方向', NULL, NULL, '2024-03-17 00:29:33', '2024-03-17 17:12:46', 0, '张碧晨');
INSERT INTO `music` VALUES (32, NULL, '不醉不会', NULL, NULL, '2024-03-17 00:29:33', '2024-03-17 17:06:12', 0, '田馥甄');
INSERT INTO `music` VALUES (33, NULL, '嘉宾', NULL, NULL, '2024-03-17 00:29:33', '2024-03-17 17:17:36', 0, '张远');
INSERT INTO `music` VALUES (34, NULL, '踏雪', NULL, NULL, '2024-03-17 00:29:33', '2024-03-17 00:29:33', 0, '');
INSERT INTO `music` VALUES (35, NULL, '人质', NULL, NULL, '2024-03-17 00:29:33', '2024-03-17 17:07:35', 0, '周华健');
INSERT INTO `music` VALUES (36, NULL, '海底', NULL, NULL, '2024-03-17 00:29:33', '2024-03-17 00:29:33', 0, '');
INSERT INTO `music` VALUES (37, NULL, '百利甜', NULL, NULL, '2024-03-17 00:29:33', '2024-03-17 00:29:33', 0, '');
INSERT INTO `music` VALUES (38, NULL, '说说话', NULL, NULL, '2024-03-17 00:29:33', '2024-03-17 00:29:33', 0, '');
INSERT INTO `music` VALUES (39, NULL, '路过人间', NULL, NULL, '2024-03-17 00:29:33', '2024-03-17 00:29:33', 0, '');
INSERT INTO `music` VALUES (40, NULL, '岁月神偷', NULL, NULL, '2024-03-17 00:29:33', '2024-03-17 00:29:33', 0, '');
INSERT INTO `music` VALUES (41, NULL, '诀爱', NULL, NULL, '2024-03-17 00:29:33', '2024-03-17 00:29:33', 0, '');
INSERT INTO `music` VALUES (42, NULL, '走马', NULL, NULL, '2024-03-17 00:29:33', '2024-03-17 00:29:33', 0, '');
INSERT INTO `music` VALUES (43, NULL, '凉凉', NULL, NULL, '2024-03-17 00:29:33', '2024-03-17 17:13:42', 0, '张碧晨/杨宗纬');
INSERT INTO `music` VALUES (44, NULL, '若梦', NULL, NULL, '2024-03-17 00:29:33', '2024-03-17 00:29:33', 0, '');
INSERT INTO `music` VALUES (45, NULL, '好想你', NULL, NULL, '2024-03-17 00:29:33', '2024-03-17 17:19:34', 0, '蔡依林');
INSERT INTO `music` VALUES (46, NULL, '想某人', NULL, NULL, '2024-03-17 00:29:33', '2024-03-17 00:29:33', 0, '');
INSERT INTO `music` VALUES (47, NULL, '玫瑰少年', NULL, NULL, '2024-03-17 00:29:33', '2024-03-17 00:29:33', 0, '');
INSERT INTO `music` VALUES (48, NULL, '爱人错过', NULL, NULL, '2024-03-17 00:29:33', '2024-03-17 00:29:33', 0, '');
INSERT INTO `music` VALUES (49, NULL, '空生', NULL, NULL, '2024-03-17 00:29:33', '2024-03-17 00:29:33', 0, '');
INSERT INTO `music` VALUES (50, NULL, '改变', NULL, NULL, '2024-03-17 00:29:33', '2024-03-17 00:29:33', 0, '');
INSERT INTO `music` VALUES (51, NULL, '红马', NULL, NULL, '2024-03-17 00:29:33', '2024-03-17 00:29:33', 0, '');
INSERT INTO `music` VALUES (52, NULL, '成都', NULL, NULL, '2024-03-17 00:29:33', '2024-03-17 00:29:33', 0, '');
INSERT INTO `music` VALUES (53, NULL, '喜欢你', NULL, NULL, '2024-03-17 00:29:33', '2024-03-17 17:17:22', 0, 'Beyond');
INSERT INTO `music` VALUES (54, NULL, '野摩托', NULL, NULL, '2024-03-17 00:29:33', '2024-03-17 00:29:33', 0, '');
INSERT INTO `music` VALUES (55, NULL, '深海回响', NULL, NULL, '2024-03-17 00:29:33', '2024-03-17 00:29:33', 0, '');
INSERT INTO `music` VALUES (56, NULL, '无人之岛', NULL, NULL, '2024-03-17 00:29:33', '2024-03-17 00:29:33', 0, '');
INSERT INTO `music` VALUES (57, NULL, '落霜', NULL, NULL, '2024-03-17 00:29:33', '2024-03-17 00:29:33', 0, '');
INSERT INTO `music` VALUES (58, NULL, '泡沫', NULL, NULL, '2024-03-17 00:29:33', '2024-03-17 00:29:33', 0, '');
INSERT INTO `music` VALUES (59, NULL, '雾里', NULL, NULL, '2024-03-17 00:29:33', '2024-03-17 00:29:33', 0, '');
INSERT INTO `music` VALUES (60, NULL, '指纹', NULL, NULL, '2024-03-17 00:29:33', '2024-03-17 00:29:33', 0, '');
INSERT INTO `music` VALUES (61, NULL, '龙卷风', NULL, NULL, '2024-03-17 00:29:33', '2024-03-17 00:29:33', 0, '');
INSERT INTO `music` VALUES (62, NULL, '虞兮叹', NULL, NULL, '2024-03-17 00:29:33', '2024-03-17 00:29:33', 0, '');
INSERT INTO `music` VALUES (63, NULL, 'Letting go', NULL, NULL, '2024-03-17 00:29:33', '2024-03-17 17:04:29', 0, '蔡健雅');
INSERT INTO `music` VALUES (64, NULL, '蝴蝶飓风', NULL, NULL, '2024-03-17 00:29:33', '2024-03-17 00:29:33', 0, '');
INSERT INTO `music` VALUES (65, NULL, '叶子', NULL, NULL, '2024-03-17 00:31:07', '2024-03-17 17:17:03', 0, '阿桑');
INSERT INTO `music` VALUES (66, NULL, '心之火', NULL, NULL, '2024-03-17 00:31:07', '2024-03-17 00:31:07', 0, '');
INSERT INTO `music` VALUES (67, NULL, '别错过', NULL, NULL, '2024-03-17 00:31:07', '2024-03-17 17:14:23', 0, '程佳佳');
INSERT INTO `music` VALUES (68, NULL, '盗墓笔记·十年人间', NULL, NULL, '2024-03-17 00:31:07', '2024-03-17 17:15:16', 0, '李常超');
INSERT INTO `music` VALUES (69, NULL, '南屏晚钟', NULL, NULL, '2024-03-17 00:31:07', '2024-03-17 17:16:10', 0, '崔萍');
INSERT INTO `music` VALUES (70, NULL, '海芋恋', NULL, NULL, '2024-03-17 00:31:07', '2024-03-17 00:31:07', 0, '');
INSERT INTO `music` VALUES (71, NULL, '从前说', NULL, NULL, '2024-03-17 00:31:07', '2024-03-17 17:07:47', 0, '小阿七');
INSERT INTO `music` VALUES (72, NULL, '提拉米苏', NULL, NULL, '2024-03-17 00:31:07', '2024-03-17 00:31:07', 0, '');
INSERT INTO `music` VALUES (73, NULL, '我们的爱', NULL, NULL, '2024-03-17 00:31:07', '2024-03-17 00:31:07', 0, '');
INSERT INTO `music` VALUES (74, NULL, '长安姑娘', NULL, NULL, '2024-03-17 00:31:07', '2024-03-17 00:31:07', 0, '');
INSERT INTO `music` VALUES (75, NULL, '小情歌', NULL, NULL, '2024-03-17 00:31:07', '2024-03-17 00:31:07', 0, '');
INSERT INTO `music` VALUES (76, NULL, '盗将行', NULL, NULL, '2024-03-17 00:31:07', '2024-03-17 00:31:07', 0, '');
INSERT INTO `music` VALUES (77, NULL, '香格里拉', NULL, NULL, '2024-03-17 00:31:07', '2024-03-17 00:31:07', 0, '');
INSERT INTO `music` VALUES (78, NULL, '光年之外', NULL, NULL, '2024-03-17 00:31:07', '2024-03-17 17:12:34', 0, 'G.E.M. 邓紫棋');
INSERT INTO `music` VALUES (79, NULL, '香格里拉', NULL, NULL, '2024-03-17 00:31:07', '2024-03-17 00:31:07', 0, '');
INSERT INTO `music` VALUES (80, NULL, '小幸运', NULL, NULL, '2024-03-17 00:31:07', '2024-03-17 17:24:12', 0, '田馥甄');
INSERT INTO `music` VALUES (81, NULL, '牵丝戏', NULL, NULL, '2024-03-17 00:31:07', '2024-03-17 00:31:07', 0, '');
INSERT INTO `music` VALUES (82, NULL, '写给黄淮', NULL, NULL, '2024-03-17 00:31:07', '2024-03-17 17:13:26', 0, '邵帅');
INSERT INTO `music` VALUES (83, NULL, '千年之恋', NULL, NULL, '2024-03-17 00:31:07', '2024-03-17 17:15:32', 0, 'Felicia蔡菲凡');
INSERT INTO `music` VALUES (84, NULL, '胡广生', NULL, NULL, '2024-03-17 00:33:02', '2024-03-17 00:33:02', 0, '');
INSERT INTO `music` VALUES (85, NULL, '斑马斑马', NULL, NULL, '2024-03-17 00:33:02', '2024-03-17 00:33:02', 0, '');
INSERT INTO `music` VALUES (86, NULL, 'A.I.N.Y.', NULL, NULL, '2024-03-17 00:33:02', '2024-03-17 17:03:36', 0, '张雨佳/曾榆超');
INSERT INTO `music` VALUES (87, NULL, '红昭愿', NULL, NULL, '2024-03-17 00:33:02', '2024-03-17 00:33:02', 0, '');
INSERT INTO `music` VALUES (88, NULL, '枕边童话', NULL, NULL, '2024-03-17 00:33:02', '2024-03-17 00:33:02', 0, '');
INSERT INTO `music` VALUES (89, NULL, '出境入境', NULL, NULL, '2024-03-17 00:33:02', '2024-03-17 17:13:54', 0, '欧阳菲菲');
INSERT INTO `music` VALUES (90, NULL, '孙大剩', NULL, NULL, '2024-03-17 00:33:02', '2024-03-17 17:21:06', 0, '白亮');
INSERT INTO `music` VALUES (91, NULL, '安河桥', NULL, NULL, '2024-03-17 00:33:02', '2024-03-17 17:21:50', 0, '宋冬野');
INSERT INTO `music` VALUES (92, NULL, '最后一页', NULL, NULL, '2024-03-17 00:33:02', '2024-03-17 00:33:02', 0, '');
INSERT INTO `music` VALUES (93, NULL, '达尔文', NULL, NULL, '2024-03-17 00:33:02', '2024-03-17 00:33:02', 0, '');
INSERT INTO `music` VALUES (94, NULL, '盗将行', NULL, NULL, '2024-03-17 00:33:02', '2024-03-17 00:33:02', 0, '');
INSERT INTO `music` VALUES (95, NULL, '自娱自乐', NULL, NULL, '2024-03-17 00:33:02', '2024-03-17 00:33:02', 0, '');
INSERT INTO `music` VALUES (96, NULL, '天下无双', NULL, NULL, '2024-03-17 00:33:02', '2024-03-17 17:19:04', 0, '陈奕迅');
INSERT INTO `music` VALUES (97, NULL, '别错过', NULL, NULL, '2024-03-17 00:33:02', '2024-03-17 17:14:29', 1, '');
INSERT INTO `music` VALUES (98, NULL, '七月上', NULL, NULL, '2024-03-17 00:33:02', '2024-03-17 17:05:58', 0, 'Jam');
INSERT INTO `music` VALUES (99, NULL, '暖一杯茶', NULL, NULL, '2024-03-17 00:33:02', '2024-03-17 00:33:02', 0, '');
INSERT INTO `music` VALUES (100, NULL, '天黑黑', NULL, NULL, '2024-03-17 00:33:02', '2024-03-17 17:19:20', 0, '张学友');
INSERT INTO `music` VALUES (101, NULL, '无字碑', NULL, NULL, '2024-03-17 00:33:02', '2024-03-17 00:33:02', 0, '');
INSERT INTO `music` VALUES (102, NULL, '夏天的风', NULL, NULL, '2024-03-17 00:33:02', '2024-03-17 17:18:37', 0, '温岚');
INSERT INTO `music` VALUES (103, NULL, '我知道', NULL, NULL, '2024-03-17 00:33:02', '2024-03-17 00:33:02', 0, '');
INSERT INTO `music` VALUES (104, NULL, '差三岁', NULL, NULL, '2024-03-17 00:33:02', '2024-03-17 00:33:02', 0, '');
INSERT INTO `music` VALUES (105, NULL, '自娱自乐', NULL, NULL, '2024-03-17 00:33:02', '2024-03-17 00:33:02', 0, '');
INSERT INTO `music` VALUES (106, NULL, '追光者', NULL, NULL, '2024-03-17 00:33:02', '2024-03-17 00:33:02', 0, '');
INSERT INTO `music` VALUES (107, NULL, '我要你', NULL, NULL, '2024-03-17 00:33:02', '2024-03-17 00:33:02', 0, '');
INSERT INTO `music` VALUES (108, NULL, '说散就散', NULL, NULL, '2024-03-17 00:33:02', '2024-03-17 00:33:02', 0, '');
INSERT INTO `music` VALUES (109, NULL, '零点零一分', NULL, NULL, '2024-03-17 00:34:27', '2024-03-17 00:34:27', 0, '');
INSERT INTO `music` VALUES (110, NULL, '如果云知道', NULL, NULL, '2024-03-17 00:34:27', '2024-03-17 17:20:28', 0, '许茹芸');
INSERT INTO `music` VALUES (111, NULL, '敢为天下先', NULL, NULL, '2024-03-17 00:34:27', '2024-03-17 00:34:27', 0, '');
INSERT INTO `music` VALUES (112, NULL, '我从崖边跌落', NULL, NULL, '2024-03-17 00:34:27', '2024-03-17 00:34:27', 0, '');
INSERT INTO `music` VALUES (113, NULL, '走在冷风中', NULL, NULL, '2024-03-17 00:34:27', '2024-03-17 00:34:27', 0, '');
INSERT INTO `music` VALUES (114, NULL, '遗失的心跳', NULL, NULL, '2024-03-17 00:34:27', '2024-03-17 00:34:27', 0, '');
INSERT INTO `music` VALUES (115, NULL, '有一种悲伤', NULL, NULL, '2024-03-17 00:34:27', '2024-03-17 00:34:27', 0, '');
INSERT INTO `music` VALUES (116, NULL, '20岁的某一天', NULL, NULL, '2024-03-17 00:34:27', '2024-03-17 17:03:13', 0, '花粥');
INSERT INTO `music` VALUES (117, NULL, '红色高跟鞋', NULL, NULL, '2024-03-17 00:34:27', '2024-03-17 00:34:27', 0, '');
INSERT INTO `music` VALUES (118, NULL, '云深不知处', NULL, NULL, '2024-03-17 00:34:27', '2024-03-17 17:07:02', 0, '七音盒');
INSERT INTO `music` VALUES (119, NULL, '盛夏的果实', NULL, NULL, '2024-03-17 00:34:27', '2024-03-17 00:34:27', 0, '');
INSERT INTO `music` VALUES (120, NULL, '是妈妈是女儿', NULL, NULL, '2024-03-17 00:34:27', '2024-03-17 00:34:27', 0, '');
INSERT INTO `music` VALUES (121, NULL, '没那么简单', NULL, NULL, '2024-03-17 00:34:27', '2024-03-17 00:34:27', 0, '');
INSERT INTO `music` VALUES (122, NULL, '九九八十一', NULL, NULL, '2024-03-17 00:34:27', '2024-03-17 17:06:26', 0, '乐正绫');
INSERT INTO `music` VALUES (123, NULL, '小手拉大手', NULL, NULL, '2024-03-17 00:34:27', '2024-03-17 00:34:27', 0, '');
INSERT INTO `music` VALUES (124, NULL, '你眼里带着笑', NULL, NULL, '2024-03-17 00:34:27', '2024-03-17 17:12:05', 0, ' 曾惜');
INSERT INTO `music` VALUES (125, NULL, '神奇能力歌', NULL, NULL, '2024-03-17 00:34:27', '2024-03-17 00:34:27', 0, '');
INSERT INTO `music` VALUES (126, NULL, 'DearJohn', NULL, NULL, '2024-03-17 00:34:27', '2024-03-17 17:03:50', 0, '郑添媛');
INSERT INTO `music` VALUES (127, NULL, '遗失的心跳', NULL, NULL, '2024-03-17 00:34:27', '2024-03-17 00:34:27', 0, '');
INSERT INTO `music` VALUES (128, NULL, '想你的365天', NULL, NULL, '2024-03-17 00:34:27', '2024-03-17 00:34:27', 0, '');
INSERT INTO `music` VALUES (129, NULL, '如果爱下去', NULL, NULL, '2024-03-17 00:34:27', '2024-03-17 17:20:39', 0, '张靓颖');
INSERT INTO `music` VALUES (130, NULL, '爱就一个字', NULL, NULL, '2024-03-17 00:34:27', '2024-03-17 00:34:27', 0, '');
INSERT INTO `music` VALUES (131, NULL, '如果爱忘了', NULL, NULL, '2024-03-17 00:34:27', '2024-03-17 17:20:54', 0, '戚薇');
INSERT INTO `music` VALUES (132, NULL, '春暖花开去见你', NULL, NULL, '2024-03-17 00:34:27', '2024-03-17 00:34:27', 0, '');
INSERT INTO `music` VALUES (133, NULL, '终于等到你', NULL, NULL, '2024-03-17 00:34:27', '2024-03-17 00:34:27', 0, '');
INSERT INTO `music` VALUES (134, NULL, '我们说好的', NULL, NULL, '2024-03-17 00:34:27', '2024-03-17 00:34:27', 0, '');
INSERT INTO `music` VALUES (135, NULL, '你在，不在', NULL, NULL, '2024-03-17 00:34:27', '2024-03-17 17:11:47', 0, '郭采洁');
INSERT INTO `music` VALUES (136, NULL, '回不去的何止时间', NULL, NULL, '2024-03-17 00:34:27', '2024-03-17 17:18:12', 0, '吖毛');
INSERT INTO `music` VALUES (137, NULL, '把耳朵叫醒', NULL, NULL, '2024-03-17 00:34:27', '2024-03-17 00:34:27', 0, '');
INSERT INTO `music` VALUES (138, NULL, '贝加尔湖畔', NULL, NULL, '2024-03-17 00:34:27', '2024-03-17 00:34:27', 0, '');
INSERT INTO `music` VALUES (139, NULL, '一个像夏天一个像秋天', NULL, NULL, '2024-03-17 00:34:58', '2024-03-17 17:05:44', 0, '范玮琪');
INSERT INTO `music` VALUES (140, NULL, '宗旨', NULL, NULL, '2024-03-17 00:36:41', '2024-03-17 17:22:44', 0, '侯博林');
INSERT INTO `music` VALUES (141, NULL, '庆功酒', NULL, NULL, '2024-03-17 00:36:41', '2024-03-17 00:36:41', 0, '');
INSERT INTO `music` VALUES (142, NULL, '霓虹旅店', NULL, NULL, '2024-03-17 00:36:41', '2024-03-17 00:36:41', 0, '');
INSERT INTO `music` VALUES (143, NULL, '感谢你曾来过', NULL, NULL, '2024-03-17 00:36:41', '2024-03-17 00:36:41', 0, '');
INSERT INTO `music` VALUES (144, NULL, '山楂树之恋', NULL, NULL, '2024-03-17 00:36:41', '2024-03-17 00:36:41', 0, '');
INSERT INTO `music` VALUES (145, NULL, '差不多姑娘', NULL, NULL, '2024-03-17 00:36:41', '2024-03-17 00:36:41', 0, '');
INSERT INTO `music` VALUES (146, NULL, '据说真的有神', NULL, NULL, '2024-03-17 00:36:41', '2024-03-17 00:36:41', 0, '');
INSERT INTO `music` VALUES (147, NULL, '来自世界的恶意', NULL, NULL, '2024-03-17 00:36:41', '2024-03-17 00:36:41', 0, '');
INSERT INTO `music` VALUES (148, NULL, 'PUMA', NULL, NULL, '2024-03-17 00:36:41', '2024-03-17 17:05:30', 0, 'NINEONE');
INSERT INTO `music` VALUES (149, NULL, 'Diablo', NULL, NULL, '2024-03-17 00:36:41', '2024-03-17 17:04:11', 0, '沈常楽/司琛/李伯原Lucas/Kons');
INSERT INTO `music` VALUES (150, NULL, '吸引住', NULL, NULL, '2024-03-17 17:22:32', '2024-03-17 17:22:32', 0, NULL);

-- ----------------------------
-- Table structure for post
-- ----------------------------
DROP TABLE IF EXISTS `post`;
CREATE TABLE `post`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `title` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '标题',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '内容',
  `tags` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '标签列表（json 数组）',
  `thumbNum` int(11) NOT NULL DEFAULT 0 COMMENT '点赞数',
  `favourNum` int(11) NOT NULL DEFAULT 0 COMMENT '收藏数',
  `userId` bigint(20) NOT NULL COMMENT '创建用户 id',
  `createTime` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `updateTime` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `isDelete` tinyint(4) NOT NULL DEFAULT 0 COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_userId`(`userId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '帖子' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of post
-- ----------------------------

-- ----------------------------
-- Table structure for post_favour
-- ----------------------------
DROP TABLE IF EXISTS `post_favour`;
CREATE TABLE `post_favour`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `postId` bigint(20) NOT NULL COMMENT '帖子 id',
  `userId` bigint(20) NOT NULL COMMENT '创建用户 id',
  `createTime` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `updateTime` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_postId`(`postId`) USING BTREE,
  INDEX `idx_userId`(`userId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci COMMENT = '帖子收藏' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of post_favour
-- ----------------------------

-- ----------------------------
-- Table structure for post_thumb
-- ----------------------------
DROP TABLE IF EXISTS `post_thumb`;
CREATE TABLE `post_thumb`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `postId` bigint(20) NOT NULL COMMENT '帖子 id',
  `userId` bigint(20) NOT NULL COMMENT '创建用户 id',
  `createTime` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `updateTime` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_postId`(`postId`) USING BTREE,
  INDEX `idx_userId`(`userId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci COMMENT = '帖子点赞' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of post_thumb
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `userAccount` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '账号',
  `userPassword` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '密码',
  `unionId` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '微信开放平台id',
  `mpOpenId` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '公众号openId',
  `userName` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户昵称',
  `userAvatar` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户头像',
  `userProfile` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户简介',
  `userRole` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user' COMMENT '用户角色：user/admin/ban',
  `createTime` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `updateTime` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `isDelete` tinyint(4) NOT NULL DEFAULT 0 COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_unionId`(`unionId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '用户' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
