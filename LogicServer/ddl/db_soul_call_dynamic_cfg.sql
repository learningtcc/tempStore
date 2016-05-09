/*
Navicat MySQL Data Transfer

Source Server         : 时界内网
Source Server Version : 50624
Source Host           : 192.168.100.80:3306
Source Database       : db_soul_call_dynamic_cfg

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2016-05-09 17:34:29
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_activity_define
-- ----------------------------
DROP TABLE IF EXISTS `t_activity_define`;
CREATE TABLE `t_activity_define` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `define_id` int(10) NOT NULL COMMENT '活动id',
  `name` varchar(30) NOT NULL COMMENT '活动名称',
  `type` int(10) NOT NULL COMMENT '活动类型',
  `start_time` timestamp NOT NULL DEFAULT '1979-01-01 00:00:00',
  `end_time` timestamp NOT NULL DEFAULT '1979-01-01 00:00:00',
  `week_time` varchar(20) NOT NULL COMMENT '每周有哪几天开',
  `start_hour` int(5) NOT NULL DEFAULT '0' COMMENT '开始小时数',
  `end_hour` int(5) NOT NULL DEFAULT '24' COMMENT '结束小时数',
  `chapter_ids` varchar(500) NOT NULL COMMENT '回合数',
  `create_time` timestamp NOT NULL DEFAULT '1979-01-01 00:00:00' COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT '1979-01-01 00:00:00' COMMENT '修改时间',
  `re_data_time` timestamp NULL DEFAULT NULL COMMENT '重置数据时间',
  `title` varchar(50) DEFAULT '',
  `context` varchar(256) DEFAULT '',
  `status` tinyint(4) DEFAULT '0' COMMENT '状态(0: 礼包未发放， 1:礼包发放完成, N: 自定义)',
  `type_class` tinyint(4) DEFAULT '0' COMMENT '活动类型类别，客户端显示tab使用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='活动定义表';

-- ----------------------------
-- Records of t_activity_define
-- ----------------------------
INSERT INTO `t_activity_define` VALUES ('1', '1001', '进化乐园', '1', '2015-08-27 00:00:00', '2016-12-31 00:00:00', '1_2_3_4_5_6_7_', '0', '24', '7030011_7030012_7030013_7030014_7030015_7030016_', '1979-01-01 00:00:00', '1979-01-01 00:00:00', null, '周三、周五、周日\\n开启', '', '0', '2');
INSERT INTO `t_activity_define` VALUES ('2', '1002', '材料窟', '1', '2015-08-27 00:00:00', '2015-12-31 00:00:00', '4_7_', '0', '24', '7020004_7020005_7020006_', '1979-01-01 00:00:00', '1979-01-01 00:00:00', null, '周四、周日开启', '', '0', '0');
INSERT INTO `t_activity_define` VALUES ('3', '1003', '进化殿堂', '1', '2015-08-27 00:00:00', '2015-12-31 00:00:00', '1_2_3_4_5_6_7_', '0', '24', '7020007_7020008_7020009_', '1979-01-01 00:00:00', '1979-01-01 00:00:00', null, '周二、四、周六\\n开启', '', '0', '2');
INSERT INTO `t_activity_define` VALUES ('4', '1004', '欲望之源', '1', '2015-08-27 00:00:00', '2016-12-31 00:00:00', '1_2_3_4_5_6_7_', '0', '24', '7030001_7030002_7030003_', '1979-01-01 00:00:00', '1979-01-01 00:00:00', null, ' 周一 周五 \\n开启', '', '0', '2');
INSERT INTO `t_activity_define` VALUES ('5', '1005', '战魂聚集地', '1', '2015-08-27 00:00:00', '2016-12-31 00:00:00', '1_2_3_', '1', '24', '7050001_7050002_7050003_7050004_7050005_7050006_', '1979-01-01 00:00:00', '1979-01-01 00:00:00', '2015-07-06 16:49:40', '周一、周三开启', '', '0', '4');
INSERT INTO `t_activity_define` VALUES ('6', '1006', '宝藏峡谷', '1', '2015-08-27 00:00:00', '2016-12-31 00:00:00', '1_2_3_4_5_6_7_', '0', '24', '7040011_7040012_7040013_', '1979-01-01 00:00:00', '1979-01-01 00:00:00', null, '周二、周六\\n开启', '', '0', '3');
INSERT INTO `t_activity_define` VALUES ('7', '2001', '光明顶峰', '2', '2015-08-24 00:00:00', '2016-12-31 00:00:00', '1_2_3_4_5_6_7_', '15', '24', '7050011_', '1979-01-01 00:00:00', '1979-01-01 00:00:00', null, '周六、周日\\n14:00-22:00开启', '', '0', '4');
INSERT INTO `t_activity_define` VALUES ('8', '2002', '暗黑深渊', '2', '2015-08-24 00:00:00', '2016-12-31 00:00:00', '1_2_3_4_5_6_7_', '14', '22', '7050021_', '1979-01-01 00:00:00', '1979-01-01 00:00:00', null, '周六、周日\\n14:00-22:00点开启', '', '0', '4');
INSERT INTO `t_activity_define` VALUES ('9', '2003', '烈焰之岩', '2', '2014-06-24 00:00:00', '2014-07-15 00:00:00', '1_2_3_4_5_6_7_', '8', '22', '7030003', '1979-01-01 00:00:00', '1979-01-01 00:00:00', null, '', '', '0', '0');
INSERT INTO `t_activity_define` VALUES ('10', '2004', '绿色大地', '2', '2014-06-24 00:00:00', '2014-07-16 00:00:00', '1_2_3_4_5_6_7_', '8', '22', '7030004', '1979-01-01 00:00:00', '1979-01-01 00:00:00', null, '', '', '0', '0');
INSERT INTO `t_activity_define` VALUES ('11', '2005', '冰天雪地', '2', '2014-06-24 00:00:00', '2014-07-17 00:00:00', '1_2_3_4_5_6_7_', '8', '22', '7030005', '1979-01-01 00:00:00', '1979-01-01 00:00:00', null, '', '', '0', '0');
INSERT INTO `t_activity_define` VALUES ('12', '2006', '雷电谷', '2', '2014-06-24 00:00:00', '2014-07-18 00:00:00', '1_2_3_4_5_6_7_', '8', '22', '7030006', '1979-01-01 00:00:00', '1979-01-01 00:00:00', null, '', '', '0', '0');
INSERT INTO `t_activity_define` VALUES ('13', '2007', '万物生', '2', '2014-06-24 00:00:00', '2014-07-19 00:00:00', '1_2_3_4_5_6_7_', '8', '22', '7030007', '1979-01-01 00:00:00', '1979-01-01 00:00:00', null, '', '', '0', '0');
INSERT INTO `t_activity_define` VALUES ('14', '3001', '金币多多', '3', '2015-08-24 00:00:00', '2016-12-31 00:00:00', '1_2_3_4_5_6_7_', '0', '24', '7040001_7040002_7040003_', '1979-01-01 00:00:00', '1979-01-01 00:00:00', null, '', '', '0', '3');
INSERT INTO `t_activity_define` VALUES ('15', '3002', '经验多多', '3', '2015-08-24 00:00:00', '2016-12-31 00:00:00', '1_2_3_4_5_6_7_', '0', '24', '7020001_7020002_7020003_7020004_7020005_7020006_', '1979-01-01 00:00:00', '1979-01-01 00:00:00', null, '', '', '0', '1');
INSERT INTO `t_activity_define` VALUES ('16', '5001', '关卡产出翻倍', '4', '2015-08-25 00:00:00', '2015-12-31 00:00:00', '1_2_3_4_5_6_7_', '9', '24', '', '1979-01-01 00:00:00', '1979-01-01 00:00:00', null, '', '', '0', '0');
INSERT INTO `t_activity_define` VALUES ('17', '5002', '体力减半', '4', '2015-09-01 00:00:00', '2015-10-31 00:00:00', '1_2_3_4_5_6_7_', '0', '24', '', '1979-01-01 00:00:00', '1979-01-01 00:00:00', null, '', '', '0', '0');
INSERT INTO `t_activity_define` VALUES ('18', '4001', '限时购买魂币送礼', '5', '2014-08-14 00:00:00', '2015-08-25 00:00:00', '1_2_3_4_5_6_7_', '0', '24', '', '1979-01-01 00:00:00', '1979-01-01 00:00:00', null, '限时礼包', '活动期间内，累计充值满300魂钻，即可获得以下奖励', '0', '0');
INSERT INTO `t_activity_define` VALUES ('19', '5003', '乱入概率翻倍', '4', '2015-08-12 00:00:00', '2015-08-10 00:00:00', '1_2_3_4_5_6_7_', '9', '24', '', '1979-01-01 00:00:00', '1979-01-01 00:00:00', null, '\"\"', '\"\"', '0', '0');
INSERT INTO `t_activity_define` VALUES ('20', '5004', '友情点翻倍', '4', '2015-10-01 00:00:00', '2015-10-26 00:00:00', '1_2_3_4_5_6_7_', '0', '24', '', '1979-01-01 00:00:00', '1979-01-01 00:00:00', null, '', '', '0', '0');
INSERT INTO `t_activity_define` VALUES ('21', '5005', '强化大成功概率', '4', '1979-01-01 00:00:00', '2016-09-16 00:00:00', '1_2_3_4_5_6_7_', '0', '24', '', '1979-01-01 00:00:00', '1979-01-01 00:00:00', null, '', '', '0', '0');
INSERT INTO `t_activity_define` VALUES ('22', '5006', '强化超成功概率', '4', '1979-01-01 00:00:00', '2016-11-11 00:00:00', '1_2_3_4_5_6_7_', '0', '24', '', '1979-01-01 00:00:00', '1979-01-01 00:00:00', null, '', '', '0', '0');
INSERT INTO `t_activity_define` VALUES ('23', '5007', '强化技能概率', '4', '1979-01-01 00:00:00', '2016-10-13 00:00:00', '1_2_3_4_5_6_7_', '0', '24', '', '1979-01-01 00:00:00', '1979-01-01 00:00:00', null, '', '', '0', '0');
INSERT INTO `t_activity_define` VALUES ('24', '5008', '召唤战魂概率', '4', '2015-09-03 00:00:00', '2015-09-06 00:00:00', '1_2_3_4_5_6_7_', '0', '24', '', '1979-01-01 00:00:00', '1979-01-01 00:00:00', null, '', '', '0', '0');
INSERT INTO `t_activity_define` VALUES ('25', '5009', '友情召唤出指定战魂', '4', '2014-06-24 00:00:00', '2015-08-23 00:00:00', '1_2_3_4_5_6_7_', '0', '24', '', '1979-01-01 00:00:00', '1979-01-01 00:00:00', null, '黑铳神来袭', '活动期间内，友情召唤有一定几率召唤出5星黑铳神诺诺阿  ', '0', '0');
INSERT INTO `t_activity_define` VALUES ('26', '5010', '魂币召唤出指定战魂', '4', '2015-09-03 00:00:00', '2016-10-31 00:00:00', '1_2_3_4_5_6_7_', '0', '24', '', '1979-01-01 00:00:00', '1979-01-01 00:00:00', null, '光明骑士', '活动期间内，通过魂钻召唤就有几率召唤出五星圣骑将莱恩~', '0', '0');
INSERT INTO `t_activity_define` VALUES ('27', '4002', '限量购买魂币送礼', '6', '2014-06-24 00:00:00', '2015-07-30 00:00:00', '1_2_3_4_5_6_7_', '8', '22', '', '1979-01-01 00:00:00', '1979-01-01 00:00:00', null, '', '', '0', '0');
INSERT INTO `t_activity_define` VALUES ('28', '4003', '战魂仓库格子打折', '6', '2015-09-03 00:00:00', '2015-10-14 00:00:00', '1_2_3_4_5_6_7_', '0', '24', '', '1979-01-01 00:00:00', '1979-01-01 00:00:00', null, '', '', '0', '0');
INSERT INTO `t_activity_define` VALUES ('29', '4004', '道具仓库格子打折', '6', '2015-09-03 00:00:00', '2015-09-30 00:00:00', '1_2_3_4_5_6_7_', '0', '24', '', '1979-01-01 00:00:00', '1979-01-01 00:00:00', null, '', '', '0', '0');
INSERT INTO `t_activity_define` VALUES ('30', '4005', '好友上限数量打折', '6', '2015-08-30 00:00:00', '2015-09-03 00:00:00', '1_2_3_4_5_6_7_', '0', '24', '', '1979-01-01 00:00:00', '1979-01-01 00:00:00', null, '', '', '0', '0');
INSERT INTO `t_activity_define` VALUES ('31', '4006', '体力打折', '6', '2015-04-01 00:00:00', '2015-10-07 00:00:00', '1_2_3_4_5_6_7_', '0', '24', '', '1979-01-01 00:00:00', '1979-01-01 00:00:00', null, '商城活动', '', '0', '0');
INSERT INTO `t_activity_define` VALUES ('32', '4007', '竞技点打折', '6', '2014-06-24 00:00:00', '2016-08-31 00:00:00', '1_2_3_4_5_6_7_', '0', '24', '', '1979-01-01 00:00:00', '1979-01-01 00:00:00', null, '', '', '0', '0');
INSERT INTO `t_activity_define` VALUES ('33', '4008', '免费领体力', '6', '1979-01-01 00:00:00', '2017-07-28 00:00:00', '1_2_3_4_5_6_7_', '12', '14', '0_', '1979-01-01 00:00:00', '1979-01-01 00:00:00', null, '\"\"', '\"\"', '0', '0');
INSERT INTO `t_activity_define` VALUES ('34', '4009', '免费领体力', '6', '1979-01-01 00:00:00', '2016-09-30 00:00:00', '1_2_3_4_5_6_7_', '20', '22', '0_', '1979-01-01 00:00:00', '1979-01-01 00:00:00', null, '\"\"', '\"\"', '0', '0');
INSERT INTO `t_activity_define` VALUES ('36', '5011', '冲级活动', '7', '2015-08-27 00:00:00', '2016-12-31 00:00:00', '1_2_3_4_5_6_7_', '0', '24', '', '1979-01-01 00:00:00', '1979-01-01 00:00:00', null, '冲级活动', '', '0', '0');
INSERT INTO `t_activity_define` VALUES ('37', '5012', '连续登陆活动', '7', '2015-10-20 00:00:00', '2016-11-30 00:00:00', '1_2_3_4_5_6_7_', '0', '24', '', '1979-01-01 00:00:00', '1979-01-01 00:00:00', null, '连续登陆活动', '', '0', '0');
INSERT INTO `t_activity_define` VALUES ('38', '5013', '首冲活动', '7', '2015-08-27 00:00:00', '2019-03-31 00:00:00', '1_2_3_4_5_6_7_', '0', '24', '', '1979-01-01 00:00:00', '1979-01-01 00:00:00', null, '首冲活动', '第一次充值送的奖励,3倍魂钻奖励，对应一个礼包', '0', '0');
INSERT INTO `t_activity_define` VALUES ('41', '5014', '限时礼包活动', '7', '2015-09-28 00:00:00', '2015-12-31 00:00:00', '1_2_3_4_5_6_7_', '0', '24', '', '1979-01-01 00:00:00', '1979-01-01 00:00:00', null, '限时礼包活动', '累计充值送礼包 ！', '0', '0');
INSERT INTO `t_activity_define` VALUES ('43', '5016', '冲榜赛活动', '7', '2015-09-06 00:00:00', '2017-12-15 00:00:00', '1_2_3_4_5_6_7_', '0', '24', '', '1979-01-01 00:00:00', '1979-01-01 00:00:00', null, '冲榜赛活动', '活动说明：活动开放期间所有玩家均可参与，待活动结束后排名前十的玩家可获得丰厚奖励，奖励在活动结束后以邮件方式发送给玩家。', '0', '0');
INSERT INTO `t_activity_define` VALUES ('44', '5015', '开服有礼', '7', '2015-08-27 00:00:00', '2017-01-01 00:00:00', '1_2_3_4_5_6_7_', '0', '24', '', '1979-01-01 00:00:00', '1979-01-01 00:00:00', null, '《时界物语》开服有礼！', '欢迎参与最炫战斗策略回合制《时界物语》的勇者之旅，开服豪礼送不停，荣耀之路属于你，开始战斗吧！', '0', '0');
INSERT INTO `t_activity_define` VALUES ('45', '5017', '每日充值送豪礼', '7', '1979-01-01 00:00:00', '2016-03-15 00:00:00', '1_2_3_4_5_6_7_', '0', '24', '', '1979-01-01 00:00:00', '1979-01-01 00:00:00', null, '', '', '0', '0');
INSERT INTO `t_activity_define` VALUES ('46', '5018', '收集送礼', '7', '1979-01-01 00:00:00', '2016-03-15 00:00:00', '1_2_3_4_5_6_7_', '0', '24', '', '1979-01-01 00:00:00', '1979-01-01 00:00:00', null, '', '', '0', '0');
INSERT INTO `t_activity_define` VALUES ('47', '5019', '消费送礼', '7', '1979-01-01 00:00:00', '2016-03-15 00:00:00', '1_2_3_4_5_6_7_', '0', '24', '', '1979-01-01 00:00:00', '1979-01-01 00:00:00', null, '', '', '0', '0');
INSERT INTO `t_activity_define` VALUES ('48', '5020', '在线礼包', '7', '1979-01-01 00:00:00', '2016-12-31 00:00:00', '1_2_3_4_5_6_7_', '0', '24', '', '1979-01-01 00:00:00', '1979-01-01 00:00:00', null, '', '', '0', '0');
INSERT INTO `t_activity_define` VALUES ('49', '5021', '登陆送礼', '7', '1979-01-01 00:00:00', '2016-12-31 00:00:00', '1_2_3_4_5_6_7_', '0', '24', '', '1979-01-01 00:00:00', '1979-01-01 00:00:00', null, '《时界物语》每天登陆送不停！', '活动期间内，每日登录即可领取丰厚奖励。', '0', '0');
INSERT INTO `t_activity_define` VALUES ('50', '10001', '世界boss活动', '8', '1979-01-01 00:00:00', '2015-12-31 00:00:00', '1_2_3_4_5_6_7_', '0', '24', '', '1979-01-01 00:00:00', '1979-01-01 00:00:00', null, '\"\"', '\"\"', '0', '0');
INSERT INTO `t_activity_define` VALUES ('51', '10001', '世界boss活动', '8', '1979-01-01 00:00:00', '2015-12-31 00:00:00', '1_2_3_4_5_6_7_', '0', '24', ' ', '1979-01-01 00:00:00', '1979-01-01 00:00:00', null, '\"\"', '\"\"', '0', '0');
INSERT INTO `t_activity_define` VALUES ('52', '5022', '全民福利', '8', '1979-01-01 00:00:00', '2020-01-01 00:00:00', '1_2_3_4_5_6_7_', '0', '24', '', '1979-01-01 00:00:00', '1979-01-01 00:00:00', null, '', '', '0', '0');
INSERT INTO `t_activity_define` VALUES ('53', '5023', '七天送礼', '8', '1979-01-01 00:00:00', '2020-01-01 00:00:00', '1_2_3_4_5_6_7_', '0', '24', '', '1979-01-01 00:00:00', '1979-01-01 00:00:00', null, '\"\"', '\"\"', '0', '0');
INSERT INTO `t_activity_define` VALUES ('54', '5024', '开服活动', '8', '2016-03-22 00:00:00', '2016-12-31 00:00:00', '1_2_3_4_5_6_7_', '0', '24', '', '1979-01-01 00:00:00', '1979-01-01 00:00:00', null, '', '', '0', '0');
INSERT INTO `t_activity_define` VALUES ('55', '5025', '开服活动七天额外奖励', '8', '1979-01-01 00:00:00', '2020-01-01 00:00:00', '1_2_3_4_5_6_7_', '0', '24', '', '1979-01-01 00:00:00', '1979-01-01 00:00:00', null, '', '', '0', '0');
INSERT INTO `t_activity_define` VALUES ('56', '6001', '武器', '1', '1979-01-01 00:00:00', '2017-03-21 00:00:00', '1_2_3_4_5_6_7_', '0', '24', '7070001_7070002_7070003_', '1979-01-01 00:00:00', '1979-01-01 00:00:00', null, '武器掉落', '\"\"', '0', '5');
INSERT INTO `t_activity_define` VALUES ('57', '6002', '饰品', '1', '1979-01-01 00:00:00', '2016-12-21 00:00:00', '1_2_3_4_5_6_7_', '0', '24', '7070011_7070012_7070013_', '1979-01-01 00:00:00', '1979-01-01 00:00:00', null, '饰品掉落', '\"\"', '0', '5');

-- ----------------------------
-- Table structure for t_buy_coin_gift
-- ----------------------------
DROP TABLE IF EXISTS `t_buy_coin_gift`;
CREATE TABLE `t_buy_coin_gift` (
  `id` int(11) NOT NULL,
  `game_coin` int(11) DEFAULT NULL COMMENT '游戏币',
  `goods` varchar(1028) DEFAULT NULL COMMENT '奖励物品',
  `mail_context` varchar(1028) DEFAULT NULL COMMENT '邮件内容',
  `mail_tital` varchar(64) DEFAULT NULL COMMENT '邮件主题',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_buy_coin_gift
-- ----------------------------
INSERT INTO `t_buy_coin_gift` VALUES ('1', '200', '[{\"goodsId\":3030001,\"type\":2,\"num\":100,\"level\":0},{\"goodsId\":3010001,\"type\":4,\"num\":1,\"level\":0},{\"goodsId\":1010001,\"type\":1,\"num\":1,\"level\":1},{\"goodsId\":3020019,\"type\":4,\"num\":1,\"level\":0}]', '充值送你一个大美女', '好活动好');

-- ----------------------------
-- Table structure for t_drop_rate_multiple
-- ----------------------------
DROP TABLE IF EXISTS `t_drop_rate_multiple`;
CREATE TABLE `t_drop_rate_multiple` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `define_id` int(11) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL COMMENT '章节的地点',
  `multiple` int(11) DEFAULT NULL COMMENT '掉落概率翻倍',
  `goods_type` int(11) DEFAULT NULL COMMENT '指定掉落的物品类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=132 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_drop_rate_multiple
-- ----------------------------
INSERT INTO `t_drop_rate_multiple` VALUES ('32', '5002', '105', '2', '0');
INSERT INTO `t_drop_rate_multiple` VALUES ('49', '5010', '1010029', '2', '1');
INSERT INTO `t_drop_rate_multiple` VALUES ('52', '5008', '1010088', '2', '1');
INSERT INTO `t_drop_rate_multiple` VALUES ('59', '1005', '1', '2', '1');
INSERT INTO `t_drop_rate_multiple` VALUES ('60', '1005', '2', '2', '1');
INSERT INTO `t_drop_rate_multiple` VALUES ('99', '5002', '115', '2', '0');
INSERT INTO `t_drop_rate_multiple` VALUES ('106', '5009', '1010091', '2', '1');
INSERT INTO `t_drop_rate_multiple` VALUES ('107', '5002', '112', '2', '0');
INSERT INTO `t_drop_rate_multiple` VALUES ('111', '5002', '107', '2', '0');
INSERT INTO `t_drop_rate_multiple` VALUES ('116', '4001', '0', '3', '6');
INSERT INTO `t_drop_rate_multiple` VALUES ('117', '5002', '104', '2', '0');
INSERT INTO `t_drop_rate_multiple` VALUES ('118', '5002', '106', '2', '0');
INSERT INTO `t_drop_rate_multiple` VALUES ('119', '5002', '108', '2', '0');
INSERT INTO `t_drop_rate_multiple` VALUES ('120', '5002', '109', '2', '0');
INSERT INTO `t_drop_rate_multiple` VALUES ('121', '5002', '110', '2', '0');
INSERT INTO `t_drop_rate_multiple` VALUES ('122', '5002', '111', '2', '0');
INSERT INTO `t_drop_rate_multiple` VALUES ('123', '5002', '113', '2', '0');
INSERT INTO `t_drop_rate_multiple` VALUES ('124', '5002', '114', '2', '0');
INSERT INTO `t_drop_rate_multiple` VALUES ('125', '5002', '116', '2', '0');
INSERT INTO `t_drop_rate_multiple` VALUES ('126', '5002', '117', '2', '0');
INSERT INTO `t_drop_rate_multiple` VALUES ('127', '5002', '118', '2', '0');
INSERT INTO `t_drop_rate_multiple` VALUES ('128', '5002', '119', '2', '0');
INSERT INTO `t_drop_rate_multiple` VALUES ('129', '5002', '120', '2', '0');
INSERT INTO `t_drop_rate_multiple` VALUES ('130', '5002', '121', '2', '0');
INSERT INTO `t_drop_rate_multiple` VALUES ('131', '5002', '122', '2', '0');

-- ----------------------------
-- Table structure for t_flash_gift_bag
-- ----------------------------
DROP TABLE IF EXISTS `t_flash_gift_bag`;
CREATE TABLE `t_flash_gift_bag` (
  `id` int(11) NOT NULL,
  `max_num` int(11) DEFAULT '0' COMMENT '礼包最大数量',
  `goods` varchar(1024) DEFAULT NULL COMMENT '物品',
  `price` int(11) DEFAULT NULL COMMENT '价格',
  `buy_num` int(11) DEFAULT '0' COMMENT '已被购买数量',
  `mail_tital` varchar(15) DEFAULT NULL COMMENT '邮件标题',
  `mail_context` varchar(50) DEFAULT NULL COMMENT '邮件内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_flash_gift_bag
-- ----------------------------
INSERT INTO `t_flash_gift_bag` VALUES ('1', '4', '[{\"goodsId\":0,\"type\":6,\"num\":63,\"level\":0}]', '648', '5', '充值快来呀', '充值快来呀');

-- ----------------------------
-- Table structure for t_zone_config
-- ----------------------------
DROP TABLE IF EXISTS `t_zone_config`;
CREATE TABLE `t_zone_config` (
  `id` int(11) NOT NULL,
  `val` int(11) NOT NULL,
  `ac_soul_capacity_price` int(11) DEFAULT '1' COMMENT '活动战魂仓库价格',
  `ac_friend_capacity_price` int(11) DEFAULT '1' COMMENT '活动好友上限价格',
  `ac_item_capacity_price` int(11) DEFAULT '1' COMMENT '活动包裹格子价格',
  `ac_stamina_price` int(11) DEFAULT '1' COMMENT '活动体力价格折扣(取值范围: 1-10)',
  `ac_athletics_point` int(11) DEFAULT '1' COMMENT '活动竞技点价格',
  `create_time` timestamp NOT NULL DEFAULT '1979-01-01 00:00:00',
  `update_time` timestamp NOT NULL DEFAULT '1979-01-01 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='区配置';

-- ----------------------------
-- Records of t_zone_config
-- ----------------------------
INSERT INTO `t_zone_config` VALUES ('1', '503975223', '15', '15', '15', '9', '1', '2013-12-24 00:00:00', '2016-01-14 17:53:05');
