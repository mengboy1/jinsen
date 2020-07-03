/*
Navicat MySQL Data Transfer

Source Server         : 007
Source Server Version : 50728
Source Host           : localhost:3306
Source Database       : jinsen

Target Server Type    : MYSQL
Target Server Version : 50728
File Encoding         : 65001

Date: 2020-07-03 15:24:36
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for academic_title
-- ----------------------------
DROP TABLE IF EXISTS `academic_title`;
CREATE TABLE `academic_title` (
  `staff_id` varchar(20) NOT NULL,
  `gain_time` date NOT NULL,
  `infect_time` date NOT NULL,
  `profession_titles` varchar(30) NOT NULL,
  `certificate_of_title` varchar(30) NOT NULL,
  `input_time` date NOT NULL,
  `manager` varchar(20) NOT NULL,
  PRIMARY KEY (`staff_id`,`gain_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of academic_title
-- ----------------------------
INSERT INTO `academic_title` VALUES ('1', '2019-12-22', '2019-12-22', '?????', 'C:\\fakepath\\????.docx', '2019-12-22', '??');

-- ----------------------------
-- Table structure for attence
-- ----------------------------
DROP TABLE IF EXISTS `attence`;
CREATE TABLE `attence` (
  `staff_id` varchar(20) NOT NULL,
  `attence_month` int(11) NOT NULL,
  `attence_date` date NOT NULL,
  `attence_mwtime` timestamp NULL DEFAULT NULL,
  `attence_mwtimes` timestamp NULL DEFAULT NULL,
  `attence_awtime` timestamp NULL DEFAULT NULL,
  `attence_awtimes` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`staff_id`,`attence_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of attence
-- ----------------------------
INSERT INTO `attence` VALUES ('1', '11', '2019-11-15', '2019-11-15 12:25:04', '2019-11-15 12:25:10', '2019-11-15 12:25:13', '2019-11-15 12:25:17');
INSERT INTO `attence` VALUES ('1', '12', '2019-12-07', '2019-12-07 07:23:23', '2019-12-07 12:23:31', '2019-12-07 14:23:35', '2019-12-07 18:23:45');
INSERT INTO `attence` VALUES ('1', '12', '2019-12-08', '2019-12-08 07:59:00', '2019-12-08 12:10:01', '2019-12-08 13:44:25', '2019-12-08 18:00:00');
INSERT INTO `attence` VALUES ('2', '5', '2019-05-15', '2019-05-15 20:35:45', '2019-05-22 20:35:59', '2019-05-15 20:36:07', '2019-05-15 20:36:23');
INSERT INTO `attence` VALUES ('3', '7', '2019-12-15', '2019-12-15 20:36:37', '2019-12-15 20:36:40', '2019-12-15 20:36:44', '2019-12-15 20:36:46');
INSERT INTO `attence` VALUES ('3', '7', '2019-12-16', '2019-12-16 20:36:59', '2019-12-16 20:37:02', '2019-12-16 20:37:06', '2019-12-16 20:37:09');

-- ----------------------------
-- Table structure for basicpay
-- ----------------------------
DROP TABLE IF EXISTS `basicpay`;
CREATE TABLE `basicpay` (
  `staff_post` varchar(100) NOT NULL,
  `basicpay` double NOT NULL,
  PRIMARY KEY (`staff_post`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of basicpay
-- ----------------------------
INSERT INTO `basicpay` VALUES ('会计', '5600');
INSERT INTO `basicpay` VALUES ('总管', '6000');
INSERT INTO `basicpay` VALUES ('经理', '8000');
INSERT INTO `basicpay` VALUES ('统计', '3500');

-- ----------------------------
-- Table structure for codepage
-- ----------------------------
DROP TABLE IF EXISTS `codepage`;
CREATE TABLE `codepage` (
  `codeid` double NOT NULL,
  `shipping` varchar(100) NOT NULL,
  `command` varchar(50) NOT NULL DEFAULT '福建金森公司',
  `cutNum` double NOT NULL,
  `checkNum` double NOT NULL,
  `takeIn` varchar(100) NOT NULL,
  `checkSIte` varchar(50) NOT NULL,
  `getPerson` varchar(20) NOT NULL,
  `begintime` datetime NOT NULL,
  `endtime` datetime NOT NULL,
  `transportNum` double NOT NULL,
  `tolTree` double NOT NULL,
  `tolStere` double NOT NULL,
  `entrust` varchar(20) NOT NULL,
  `forperson` varchar(20) NOT NULL,
  `staff_id_1` varchar(11) DEFAULT NULL,
  `staff_id_2` varchar(11) DEFAULT NULL,
  `staff_id_3` varchar(11) NOT NULL,
  `workid` double(11,0) NOT NULL DEFAULT '0',
  `countid` double(11,0) NOT NULL DEFAULT '0',
  `manageUnit` varchar(50) NOT NULL,
  `leader` varchar(20) NOT NULL,
  `procharge` varchar(20) NOT NULL,
  `shipplace` varchar(120) NOT NULL,
  `finbuyer` varchar(20) NOT NULL,
  PRIMARY KEY (`codeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of codepage
-- ----------------------------
INSERT INTO `codepage` VALUES ('2', '福1', '福建金森公司', '2', '11', '福', '福清', '肖站', '2019-01-01 00:00:00', '2019-04-01 00:00:00', '1', '4', '4', '张三', '张敏', '王', '123.0', '强', '0', '2710', '福3', '李四', '三水', '福清', '王博');
INSERT INTO `codepage` VALUES ('3', '福1', '福建金森公司', '2', '11', '福', '福清', '肖站', '2019-02-01 00:00:00', '2019-05-01 00:00:00', '1', '40', '0', '张三', '张敏', '王', '0', '强', '0', '2712', '福3', '李四', '三水', '福清', '王博');
INSERT INTO `codepage` VALUES ('4', '福1', '福建金森公司', '2', '11', '福', '福清', '肖站', '2019-03-01 00:00:00', '2019-05-01 00:00:00', '1', '100', '1', '张三', '张敏', '王', '123.0', '强', '0', '2713', '福3', '李四', '三水', '福清', '王博');
INSERT INTO `codepage` VALUES ('5', '江1', '福建金森公司', '999', '888', '江', '江3', '旺旺', '2019-04-01 00:00:00', '2019-06-01 00:00:00', '13', '50', '0', '朱一龙', '李丽', '吴', '吴', '霖', '6', '2714', '江4', '李现', '肖站', '江7', '炎亚纶');
INSERT INTO `codepage` VALUES ('6', '安1', '福建金森公司', '123', '1234', '安', '安3', '马原', '2019-01-01 00:00:00', '2019-11-02 00:00:00', '14', '100', '1', '千禧', '李媛', '百元', '0', '梨园', '5', '0', '安4', '王远', '张元', '安和', '郑源');
INSERT INTO `codepage` VALUES ('7', '7', '福建金森公司', '7', '7', '四', '7', '7', '2019-05-01 00:00:00', '2018-09-01 00:00:00', '7', '60', '0', '7', '7', '王', null, '强', '5', '2716', '7', '7', '7', '7', '7');
INSERT INTO `codepage` VALUES ('8', '福建金农', '福建金森公司', '3', '4', '森田', '三明', '林哲', '2018-04-05 00:00:00', '2018-06-17 00:00:00', '7', '40', '0', '朱一龙', '张敏', '王', '0', '强', '0', '2718', '福建金森', '李现', '肖站', '三明三水', '炎亚纶');
INSERT INTO `codepage` VALUES ('9', '那', '福建金森公司', '9', '9', '娜娜', '娜娜', '牛牛牛', '2019-09-09 00:00:00', '2019-09-30 00:00:00', '77', '200', '2', '那', '密码', '密码', '瞬时', '地点', '0', '2719', '方法', 'ff', '方法', '方法', '发放');
INSERT INTO `codepage` VALUES ('32211', '金森林业', '福建金森公司', '182251', '11', '将乐三田', '江三', '肖站', '2020-01-02 00:00:00', '2020-01-04 00:00:00', '9', '20', '3', '张三', '张敏', '王', '0', '强', '0', '0', '金森', '李现', '三水', '将乐三田', '王博');
INSERT INTO `codepage` VALUES ('362426', '金森林业', '福建金森公司', '197355', '11', '基隆', '福清', '肖站', '2020-01-02 00:00:00', '2020-01-05 00:00:00', '9', '40', '0', '张三', '张敏', '王', '0', '梨园', '0', '1', '将乐县', '李现', '三水', '福清', '王博');
INSERT INTO `codepage` VALUES ('4533630', '金森公司', '福建金森公司', '182244', '11', '源鑫木材加工厂', '福清', '侯德瓷', '2020-01-01 00:00:00', '2020-01-01 00:00:00', '9', '20', '0', '张三', '李丽', '王', null, '强', '0', '2721', '福建金森林业', '李现', '三水', '福清', '木材加工厂');
INSERT INTO `codepage` VALUES ('4533633', '金森林业', '福建金森公司', '182244', '11', '将乐木材', '将乐县才木村', '肖站', '2020-01-01 00:00:00', '2020-01-05 00:00:00', '9', '20', '0', '张三', '张敏', '王', null, '霖', '2', '2722', '将乐县金森公司', '李四', '三水', '将乐县才木村', '王博');

-- ----------------------------
-- Table structure for codestatus
-- ----------------------------
DROP TABLE IF EXISTS `codestatus`;
CREATE TABLE `codestatus` (
  `workid` double NOT NULL,
  `status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`workid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of codestatus
-- ----------------------------
INSERT INTO `codestatus` VALUES ('2', 'back');
INSERT INTO `codestatus` VALUES ('1234', 'delete');
INSERT INTO `codestatus` VALUES ('10101', 'delete');

-- ----------------------------
-- Table structure for company
-- ----------------------------
DROP TABLE IF EXISTS `company`;
CREATE TABLE `company` (
  `cm_id` varchar(20) NOT NULL,
  `cm_name` varchar(255) NOT NULL,
  `cm_info` varchar(2500) DEFAULT '',
  PRIMARY KEY (`cm_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of company
-- ----------------------------
INSERT INTO `company` VALUES ('3', 'xxx公司', '子公司');
INSERT INTO `company` VALUES ('2', 'x公司', '子公司');
INSERT INTO `company` VALUES ('5', '房价过高', '');
INSERT INTO `company` VALUES ('6', '金森5', '');
INSERT INTO `company` VALUES ('1', '金森公司', '总部');
INSERT INTO `company` VALUES ('4', '金森第四子公司', '');

-- ----------------------------
-- Table structure for count
-- ----------------------------
DROP TABLE IF EXISTS `count`;
CREATE TABLE `count` (
  `﻿codeid` varchar(255) DEFAULT NULL,
  `checknum` varchar(255) DEFAULT NULL,
  `cutnum` varchar(255) DEFAULT NULL,
  `shipping` varchar(255) DEFAULT NULL,
  `shipplace` varchar(255) DEFAULT NULL,
  `finbuyer` varchar(255) DEFAULT NULL,
  `getperson` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of count
-- ----------------------------

-- ----------------------------
-- Table structure for customer
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `workid` double NOT NULL,
  `kname` varchar(100) CHARACTER SET utf8 NOT NULL,
  `address` varchar(50) CHARACTER SET utf8 NOT NULL,
  `company` varchar(100) CHARACTER SET utf8 NOT NULL,
  `treetype` varchar(100) CHARACTER SET utf8 NOT NULL,
  `num` double NOT NULL,
  PRIMARY KEY (`workid`,`kname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of customer
-- ----------------------------
INSERT INTO `customer` VALUES ('1', '张三', '福建', '福建顺利木材厂', '杉小径', '100');
INSERT INTO `customer` VALUES ('2', '李四', '浙江', '浙江家具1厂', '杉小径', '100');
INSERT INTO `customer` VALUES ('3', '王二', '浙江', '浙江家具1厂', '杉小径', '100');

-- ----------------------------
-- Table structure for cutnum
-- ----------------------------
DROP TABLE IF EXISTS `cutnum`;
CREATE TABLE `cutnum` (
  `cutnum` double NOT NULL,
  `number` double NOT NULL,
  `company` varchar(255) CHARACTER SET utf8 NOT NULL,
  `cutsite` varchar(255) CHARACTER SET utf8 NOT NULL,
  `sizhi` varchar(255) CHARACTER SET utf8 NOT NULL,
  `treeorigin` varchar(255) CHARACTER SET utf8 NOT NULL,
  `foresttype` varchar(255) CHARACTER SET utf8 NOT NULL,
  `treetype` varchar(50) CHARACTER SET utf8 NOT NULL,
  `ownership` varchar(255) CHARACTER SET utf8 NOT NULL,
  `forestid` varchar(50) CHARACTER SET utf8 NOT NULL,
  `cuttype` varchar(20) CHARACTER SET utf8 NOT NULL,
  `cutmethod` varchar(20) CHARACTER SET utf8 NOT NULL,
  `cutqiang` varchar(20) CHARACTER SET utf8 NOT NULL,
  `cutarea` varchar(20) CHARACTER SET utf8 NOT NULL,
  `treenum` double NOT NULL,
  `cutstore` double NOT NULL,
  `volume` double NOT NULL,
  `starttime` datetime NOT NULL,
  `endtime` datetime NOT NULL,
  `certifier` varchar(20) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`cutnum`,`number`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of cutnum
-- ----------------------------
INSERT INTO `cutnum` VALUES ('999', '101', '金森林业有限公司', '将乐林厂', '至东西南北', '天然林', '一般川材林', '杉原木', '国有', '将证林字（2015）00251号', '其他采伐', '砍伐', '100%', '0.14', '215', '22.2', '17.7', '2020-06-01 00:00:00', '2020-11-30 00:00:00', '潘进');
INSERT INTO `cutnum` VALUES ('1234', '101', '金森林业有限公司', '将乐林厂', '至东西南北', '天然林', '一般川材林', '杉原木', '国有', '将证林字（2015）00251号', '其他采伐', '砍伐', '100%', '0.14', '215', '22.2', '17.7', '2020-04-07 00:00:00', '2020-05-07 00:00:00', '潘进');
INSERT INTO `cutnum` VALUES ('17158', '1234', '金森林业有限公司', '将乐林厂', '至东西南北', '天然林', '一般川材林', '杉原木', '国有', '将证林字（2015）00251号', '其他采伐', '砍伐', '100%', '0.14', '215', '22.2', '17.7', '2020-05-01 00:00:00', '2020-06-01 00:00:00', '潘进');
INSERT INTO `cutnum` VALUES ('182450', '101', '金森林业有限公司', '将乐林厂', '至东西南北', '天然林', '一般川材林', '杉原木', '国有', '将证林字（2015）00251号', '其他采伐', '砍伐', '100%', '0.14', '215', '22.2', '17.7', '2020-06-01 00:00:00', '2020-11-30 00:00:00', '潘进');

-- ----------------------------
-- Table structure for department
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department` (
  `dp_id` varchar(20) NOT NULL,
  `dp_name` varchar(255) NOT NULL,
  `dp_info` varchar(2500) DEFAULT NULL,
  `cm_id` varchar(20) NOT NULL,
  PRIMARY KEY (`dp_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of department
-- ----------------------------
INSERT INTO `department` VALUES ('01', '人力资源部', null, '1');
INSERT INTO `department` VALUES ('03', '技术部', null, '1');
INSERT INTO `department` VALUES ('04', '的(504)', null, '5');
INSERT INTO `department` VALUES ('05', '财务部(605)', null, '6');
INSERT INTO `department` VALUES ('02', '采购部', null, '1');

-- ----------------------------
-- Table structure for depart_performance
-- ----------------------------
DROP TABLE IF EXISTS `depart_performance`;
CREATE TABLE `depart_performance` (
  `dp_id` varchar(50) NOT NULL,
  `depart_performance` double NOT NULL,
  `depart_kpi` double NOT NULL,
  `depart_perfor_total` double NOT NULL,
  `depart_perfor_yetpay` double NOT NULL,
  `depart_perfor_residue` double NOT NULL,
  `depart_perfor_year` int(11) NOT NULL,
  `depart_perfor_score` double NOT NULL,
  `depart_remark` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`dp_id`,`depart_perfor_year`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of depart_performance
-- ----------------------------
INSERT INTO `depart_performance` VALUES ('', '0', '33', '0', '0', '0', '2019', '0', '33');
INSERT INTO `depart_performance` VALUES ('b1', '3.3', '4.2', '520', '0', '520', '2019', '1.386', '');
INSERT INTO `depart_performance` VALUES ('b2', '0', '52', '0', '0', '0', '2019', '0', '');

-- ----------------------------
-- Table structure for education
-- ----------------------------
DROP TABLE IF EXISTS `education`;
CREATE TABLE `education` (
  `staff_id` varchar(20) NOT NULL,
  `enrollment_time` date NOT NULL,
  `graduation_time` date NOT NULL,
  `certificate` varchar(20) NOT NULL,
  `graduation_unit` varchar(50) NOT NULL,
  `staff_certificate` varchar(50) NOT NULL,
  `input_time` date NOT NULL,
  `manager` varchar(20) NOT NULL,
  PRIMARY KEY (`staff_id`,`enrollment_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of education
-- ----------------------------
INSERT INTO `education` VALUES ('11', '2018-02-09', '2020-06-11', '本科', '福建工程学院', '', '2020-06-17', '小王');
INSERT INTO `education` VALUES ('2', '2019-12-12', '2019-12-12', '大专', '112', '1233', '2019-12-12', '4');
INSERT INTO `education` VALUES ('3', '2019-12-12', '2019-12-12', '研究生', '1233', '12323', '2019-12-12', '4');

-- ----------------------------
-- Table structure for education_table
-- ----------------------------
DROP TABLE IF EXISTS `education_table`;
CREATE TABLE `education_table` (
  `education_id` int(11) NOT NULL,
  `education_name` varchar(255) NOT NULL,
  PRIMARY KEY (`education_id`,`education_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of education_table
-- ----------------------------

-- ----------------------------
-- Table structure for inauguration
-- ----------------------------
DROP TABLE IF EXISTS `inauguration`;
CREATE TABLE `inauguration` (
  `staff_id` varchar(20) NOT NULL,
  `it_reason` varchar(1000) DEFAULT NULL,
  `it_time` datetime NOT NULL,
  `it_status` varchar(20) NOT NULL DEFAULT '',
  `it_pic` varchar(1000) DEFAULT NULL,
  `admin_id` varchar(20) NOT NULL,
  `it_redate` datetime NOT NULL,
  `it_oldpost` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`staff_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of inauguration
-- ----------------------------
INSERT INTO `inauguration` VALUES ('0001010', '阿斯顿', '2019-12-22 17:57:18', '已离职', '暂无', '员工id暂未接入', '2019-12-22 17:57:18', '123');
INSERT INTO `inauguration` VALUES ('123213', '年满退休', '2019-12-20 11:33:13', '已退休', '暂无', '员工id暂未接入', '2019-12-20 11:33:13', '123');

-- ----------------------------
-- Table structure for inyard
-- ----------------------------
DROP TABLE IF EXISTS `inyard`;
CREATE TABLE `inyard` (
  `workid` double NOT NULL,
  `cutNum` double NOT NULL,
  `yarddate` datetime NOT NULL,
  `cutSite` varchar(255) CHARACTER SET utf8 NOT NULL,
  `carNumber` varchar(100) CHARACTER SET utf8 NOT NULL,
  `yard` varchar(255) CHARACTER SET utf8 NOT NULL,
  `batchNum` double NOT NULL,
  `surveyor` varchar(255) CHARACTER SET utf8 NOT NULL,
  `toltree` double NOT NULL,
  `tolstere` double NOT NULL,
  PRIMARY KEY (`workid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of inyard
-- ----------------------------
INSERT INTO `inyard` VALUES ('2', '999', '2020-01-01 00:00:00', '将乐林厂', '闽A313', '三名', '3', '高振赫', '0', '0');
INSERT INTO `inyard` VALUES ('12', '999', '2020-02-05 00:00:00', '将乐林厂', '闽A313', '三名', '4', '高振赫', '0', '0');
INSERT INTO `inyard` VALUES ('13', '999', '2020-03-03 00:00:00', '将乐林厂', '闽A313', '三名', '5', '高振赫', '0', '0');
INSERT INTO `inyard` VALUES ('14', '999', '2020-03-03 00:00:00', '将乐林厂', '闽A313', '三名', '6', '高振赫', '0', '0');
INSERT INTO `inyard` VALUES ('15', '999', '2020-02-05 00:00:00', '将乐林厂', '闽A313', '三名', '7', '高振赫', '0', '0');
INSERT INTO `inyard` VALUES ('16', '999', '2020-02-06 00:00:00', '将乐林厂', '闽A313', '三名', '7', '高振赫', '0', '0');
INSERT INTO `inyard` VALUES ('17', '999', '2020-03-05 00:00:00', '将乐林厂', '闽A313', '三名', '7', '高振赫', '0', '0');
INSERT INTO `inyard` VALUES ('18', '999', '2020-03-07 00:00:00', '将乐林厂', '闽A313', '三名', '8', '高振赫', '0', '0');
INSERT INTO `inyard` VALUES ('19', '999', '2020-06-07 00:00:00', '将乐林厂', '闽A313', '三名', '7', '高振赫', '0', '0');
INSERT INTO `inyard` VALUES ('20', '999', '2020-02-14 00:00:00', '将乐林厂', '闽A313', '三名', '8', '高振赫', '0', '0');
INSERT INTO `inyard` VALUES ('21', '999', '2020-06-10 00:00:00', '将乐林厂', '闽A313', '三名', '9', '张三', '0', '0');
INSERT INTO `inyard` VALUES ('22', '123', '2020-02-15 00:00:00', '将乐林厂', '闽A313', '三名', '11', '高振赫', '0', '0');
INSERT INTO `inyard` VALUES ('23', '999', '2020-06-07 00:00:00', '将乐林厂', '闽A313', '三名', '12', '高振赫', '0', '0');
INSERT INTO `inyard` VALUES ('24', '113', '2020-02-19 00:00:00', '将乐林厂', '闽A313', '三名', '12', '高振赫', '0', '0');
INSERT INTO `inyard` VALUES ('25', '123', '2020-04-17 00:00:00', '将乐林厂', '闽A313', '三名', '1', '高振赫', '200', '15.4');
INSERT INTO `inyard` VALUES ('26', '113', '2020-02-01 00:00:00', '将乐林厂', '闽A313', '三名', '2', '张三', '20', '4.2');
INSERT INTO `inyard` VALUES ('27', '113', '2020-01-03 00:00:00', '将乐林厂', '闽A313', '三名', '2', '张三', '200', '13.790000000000001');
INSERT INTO `inyard` VALUES ('28', '999', '2020-02-04 00:00:00', '将乐林厂', '闽A313', '三名', '2', '张三', '100', '13.200000000000001');
INSERT INTO `inyard` VALUES ('29', '999', '2020-02-07 00:00:00', '将乐林厂', '闽A313', '三名', '9', '张三', '100', '4.5');
INSERT INTO `inyard` VALUES ('30', '999', '2020-02-11 00:00:00', '将乐林厂', '闽A313', '三名', '2', '张三', '200', '5.7');
INSERT INTO `inyard` VALUES ('31', '1234', '2020-03-04 00:00:00', '将乐林厂', '闽A3135', '三名', '1', '张三', '100', '15.6');
INSERT INTO `inyard` VALUES ('32', '1234', '2020-02-06 00:00:00', '将乐林厂', '闽A3135', '三名', '2', '张三', '100', '1.11');
INSERT INTO `inyard` VALUES ('101', '999', '2020-06-11 00:00:00', '将乐林厂', '闽A313', '三名', '2', '高振赫', '0', '0');
INSERT INTO `inyard` VALUES ('104', '999', '2020-05-01 00:00:00', '将乐林厂', '闽A313', '三名', '1', '高振赫', '0', '0');
INSERT INTO `inyard` VALUES ('106', '999', '2020-05-03 00:00:00', '将乐林厂', '闽A313', '三名', '2', '高振赫', '0', '0');
INSERT INTO `inyard` VALUES ('107', '113', '2020-02-07 00:00:00', '将乐林厂', '闽A313', '三名', '9', '高振赫', '0', '0');
INSERT INTO `inyard` VALUES ('125', '999', '2020-06-05 00:00:00', '将乐林厂', '闽A313', '三名', '13', '高振赫', '0', '0');

-- ----------------------------
-- Table structure for labor
-- ----------------------------
DROP TABLE IF EXISTS `labor`;
CREATE TABLE `labor` (
  `staff_id` varchar(20) NOT NULL,
  `ct_pname` varchar(20) DEFAULT NULL,
  `ct_begintime` datetime NOT NULL,
  `ct_overtime` datetime DEFAULT NULL,
  `ct_years` tinyint(2) DEFAULT NULL,
  `ct_qdtime` datetime DEFAULT NULL,
  `ct_status` varchar(50) NOT NULL,
  `ct_pic` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`staff_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of labor
-- ----------------------------

-- ----------------------------
-- Table structure for laowu
-- ----------------------------
DROP TABLE IF EXISTS `laowu`;
CREATE TABLE `laowu` (
  `cutnum` double NOT NULL,
  `checknum` double NOT NULL,
  `forperson` varchar(20) CHARACTER SET utf8 NOT NULL,
  `manageUnit` varchar(20) CHARACTER SET utf8 NOT NULL,
  `treetype` varchar(20) CHARACTER SET utf8 NOT NULL,
  `unitprice` double NOT NULL,
  `price` double NOT NULL,
  `person` varchar(20) CHARACTER SET utf8 NOT NULL,
  `ttvolume` double NOT NULL,
  `tprice` double NOT NULL,
  PRIMARY KEY (`cutnum`,`checknum`,`forperson`,`manageUnit`,`treetype`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of laowu
-- ----------------------------
INSERT INTO `laowu` VALUES ('123', '190102', '肖兴毫', '营林分工司', '杉原木', '120', '540.0000214576721', '林英', '8.800000324845314', '1056.0000389814377');
INSERT INTO `laowu` VALUES ('123', '190102', '肖兴毫', '营林分工司', '松小径', '120', '516.0000175237656', '林英', '8.800000324845314', '1056.0000389814377');

-- ----------------------------
-- Table structure for leave
-- ----------------------------
DROP TABLE IF EXISTS `leave`;
CREATE TABLE `leave` (
  `staff_id` varchar(20) NOT NULL,
  `leave_time` date NOT NULL,
  `leave_times` date NOT NULL,
  `leave_reason` text NOT NULL,
  `leave_type` varchar(30) DEFAULT NULL,
  `leave_state` varchar(20) NOT NULL,
  PRIMARY KEY (`staff_id`,`leave_times`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of leave
-- ----------------------------

-- ----------------------------
-- Table structure for leavef
-- ----------------------------
DROP TABLE IF EXISTS `leavef`;
CREATE TABLE `leavef` (
  `leave_id` int(11) NOT NULL AUTO_INCREMENT,
  `staff_id` varchar(20) NOT NULL,
  `staff_name` varchar(255) NOT NULL,
  `leave_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `leave_times` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `leave_reason` text NOT NULL,
  `leave_type` varchar(30) NOT NULL,
  `leave_state` varchar(20) NOT NULL,
  PRIMARY KEY (`leave_id`,`staff_id`,`leave_times`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of leavef
-- ----------------------------
INSERT INTO `leavef` VALUES ('1', '1', '白鲁茜', '2019-12-16 16:18:08', '2019-12-12 11:50:00', '11', '1', '1');
INSERT INTO `leavef` VALUES ('3', '1', '白鲁茜', '2019-12-13 16:17:33', '2019-12-16 16:17:41', '请假', '2', '1');
INSERT INTO `leavef` VALUES ('3', '123', '1231', '2019-12-10 03:30:00', '2020-01-10 03:30:00', '123', '事假', '通过');
INSERT INTO `leavef` VALUES ('4', '001', '姜山', '2020-01-14 02:05:00', '2020-01-14 13:57:00', '生病', '病假', '通过');

-- ----------------------------
-- Table structure for leavetype
-- ----------------------------
DROP TABLE IF EXISTS `leavetype`;
CREATE TABLE `leavetype` (
  `leavetype_id` int(11) NOT NULL,
  `leavetype_type` varchar(30) NOT NULL,
  `leavetype_stand` double NOT NULL,
  PRIMARY KEY (`leavetype_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of leavetype
-- ----------------------------
INSERT INTO `leavetype` VALUES ('1', '事假', '0.7');
INSERT INTO `leavetype` VALUES ('2', '病假', '0.6');
INSERT INTO `leavetype` VALUES ('3', '1', '111');
INSERT INTO `leavetype` VALUES ('4', '2', '199');

-- ----------------------------
-- Table structure for manager
-- ----------------------------
DROP TABLE IF EXISTS `manager`;
CREATE TABLE `manager` (
  `staff_id` varchar(20) NOT NULL,
  `staff_name` varchar(100) NOT NULL,
  `staff_department` varchar(100) NOT NULL,
  `staff_station` varchar(100) NOT NULL,
  `staff_photo` varchar(255) DEFAULT NULL,
  `workstatus` tinyint(100) NOT NULL,
  `createtime` datetime NOT NULL,
  `backups` varchar(100) DEFAULT NULL,
  `power_type` varchar(100) NOT NULL,
  PRIMARY KEY (`staff_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of manager
-- ----------------------------

-- ----------------------------
-- Table structure for newtree
-- ----------------------------
DROP TABLE IF EXISTS `newtree`;
CREATE TABLE `newtree` (
  `codeid` double NOT NULL,
  `﻿year` double NOT NULL,
  `month` double NOT NULL,
  `treetype` varchar(50) CHARACTER SET utf8 NOT NULL,
  `unitprice` double DEFAULT NULL,
  `totalnum` double DEFAULT NULL,
  PRIMARY KEY (`codeid`,`﻿year`,`month`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of newtree
-- ----------------------------
INSERT INTO `newtree` VALUES ('1', '2019', '3', '杉原木', '1', '1');
INSERT INTO `newtree` VALUES ('2', '2019', '4', '2', '0', '0');
INSERT INTO `newtree` VALUES ('3', '2019', '5', '杂原木', '1', '1');
INSERT INTO `newtree` VALUES ('4', '2019', '6', '松原木', '1', '1');
INSERT INTO `newtree` VALUES ('5', '2019', '7', '杂原木', '1', '1');

-- ----------------------------
-- Table structure for newtree_copy
-- ----------------------------
DROP TABLE IF EXISTS `newtree_copy`;
CREATE TABLE `newtree_copy` (
  `codeid` double NOT NULL,
  `﻿year` double NOT NULL,
  `month` double NOT NULL,
  `treetype` varchar(50) CHARACTER SET utf8 NOT NULL,
  `unitprice` double DEFAULT NULL,
  `totalnum` double DEFAULT NULL,
  PRIMARY KEY (`codeid`,`﻿year`,`month`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of newtree_copy
-- ----------------------------
INSERT INTO `newtree_copy` VALUES ('1', '2019', '3', '杉原木', '1', '1');
INSERT INTO `newtree_copy` VALUES ('2', '2019', '4', '2', '0', '0');
INSERT INTO `newtree_copy` VALUES ('3', '2019', '5', '杂原木', '1', '1');
INSERT INTO `newtree_copy` VALUES ('4', '2019', '6', '松原木', '1', '1');
INSERT INTO `newtree_copy` VALUES ('5', '2019', '7', '杂原木', '1', '1');

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `countid` double NOT NULL,
  `shipping` varchar(100) NOT NULL,
  `shipplace` varchar(100) NOT NULL,
  `finbuyer` varchar(20) NOT NULL,
  PRIMARY KEY (`countid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order
-- ----------------------------

-- ----------------------------
-- Table structure for orderpage
-- ----------------------------
DROP TABLE IF EXISTS `orderpage`;
CREATE TABLE `orderpage` (
  `countid` double NOT NULL,
  PRIMARY KEY (`countid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orderpage
-- ----------------------------
INSERT INTO `orderpage` VALUES ('1');
INSERT INTO `orderpage` VALUES ('2');

-- ----------------------------
-- Table structure for outyard
-- ----------------------------
DROP TABLE IF EXISTS `outyard`;
CREATE TABLE `outyard` (
  `workid` double NOT NULL,
  `yarddate` datetime NOT NULL,
  `carNumber` varchar(100) CHARACTER SET utf8 NOT NULL,
  `yard` varchar(255) CHARACTER SET utf8 NOT NULL,
  `batchNum` varchar(100) CHARACTER SET utf8 NOT NULL,
  `surveyor` varchar(255) CHARACTER SET utf8 NOT NULL,
  `toltree` double NOT NULL,
  `tolstere` double NOT NULL,
  PRIMARY KEY (`workid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of outyard
-- ----------------------------
INSERT INTO `outyard` VALUES ('1', '2020-06-01 00:00:00', '闽A313', '三名', '1', '高振赫', '0', '0');
INSERT INTO `outyard` VALUES ('104', '2020-03-01 00:00:00', '闽A313', '三名', '2', '高振赫', '0', '0');
INSERT INTO `outyard` VALUES ('105', '2020-06-03 00:00:00', '闽A315', '三峡', '13', '高振赫', '0', '0');
INSERT INTO `outyard` VALUES ('106', '2020-06-04 00:00:00', '闽A315', '三峡', '3', '高振赫', '0', '0');
INSERT INTO `outyard` VALUES ('107', '2020-06-06 00:00:00', '闽A316', '三峡', '4', '高振赫', '0', '0');
INSERT INTO `outyard` VALUES ('108', '2020-06-06 00:00:00', '闽A316', '三峡', '5', '高振赫', '0', '0');
INSERT INTO `outyard` VALUES ('109', '2020-02-07 00:00:00', '闽A313', '三名', '1-国标', '张三', '0', '0');
INSERT INTO `outyard` VALUES ('120', '2020-01-19 00:00:00', '闽A313', '三名', '2-双足码', '张三', '0', '0');
INSERT INTO `outyard` VALUES ('121', '2020-01-03 00:00:00', '闽A3136', '营林', '2-双足码', '高振赫', '140', '7.66');

-- ----------------------------
-- Table structure for overtime
-- ----------------------------
DROP TABLE IF EXISTS `overtime`;
CREATE TABLE `overtime` (
  `overtime_id` int(11) NOT NULL AUTO_INCREMENT,
  `staff_id` varchar(20) NOT NULL,
  `staff_name` varchar(20) NOT NULL,
  `overtime_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `overtime_times` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `overtime_reason` text NOT NULL,
  `overtime_type` varchar(20) NOT NULL,
  `overtime_state` varchar(20) NOT NULL,
  PRIMARY KEY (`overtime_id`,`staff_id`,`overtime_time`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of overtime
-- ----------------------------
INSERT INTO `overtime` VALUES ('19', '001', '姜山', '2020-06-09 01:01:00', '2020-06-09 06:03:00', '1', '加班', '通过');

-- ----------------------------
-- Table structure for overtimetype
-- ----------------------------
DROP TABLE IF EXISTS `overtimetype`;
CREATE TABLE `overtimetype` (
  `overtimetype_id` int(11) NOT NULL AUTO_INCREMENT,
  `overtimetype_type` varchar(30) NOT NULL,
  `overtimetype_stand` double NOT NULL,
  PRIMARY KEY (`overtimetype_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of overtimetype
-- ----------------------------
INSERT INTO `overtimetype` VALUES ('5', '加班', '0.6');
INSERT INTO `overtimetype` VALUES ('6', '假期', '0.5');

-- ----------------------------
-- Table structure for pborrow
-- ----------------------------
DROP TABLE IF EXISTS `pborrow`;
CREATE TABLE `pborrow` (
  `pb_oldpost` varchar(20) DEFAULT NULL,
  `pb_post` varchar(20) DEFAULT NULL,
  `pb_begintime` datetime DEFAULT NULL,
  `pb_overtime` datetime DEFAULT NULL,
  `pb_reason` varchar(255) DEFAULT NULL,
  `staff_id` varchar(20) DEFAULT NULL,
  `admin_id` varchar(20) NOT NULL,
  `pb_redate` datetime NOT NULL,
  PRIMARY KEY (`admin_id`,`pb_redate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pborrow
-- ----------------------------

-- ----------------------------
-- Table structure for post
-- ----------------------------
DROP TABLE IF EXISTS `post`;
CREATE TABLE `post` (
  `ps_id` varchar(20) NOT NULL,
  `ps_name` varchar(255) NOT NULL,
  `ps_info` varchar(2500) DEFAULT NULL,
  `dp_id` varchar(20) NOT NULL,
  `all_id` varchar(40) NOT NULL,
  PRIMARY KEY (`all_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of post
-- ----------------------------
INSERT INTO `post` VALUES ('04', '人事经理', 'test', '01', '10004');
INSERT INTO `post` VALUES ('02', '人事高级管理员', 'test', '01', '10012');
INSERT INTO `post` VALUES ('02', '开发工程师', 'test\'', '02', '10202');
INSERT INTO `post` VALUES ('03', '大数据开发工程师', 'test', '02', '10203');
INSERT INTO `post` VALUES ('16', 'Python工程师', null, '06', '10616');
INSERT INTO `post` VALUES ('13', '不能显示，若显示则数据库异常', 'test', '07', '10713');
INSERT INTO `post` VALUES ('01', '科创部主管', 'test', '03', '20301');
INSERT INTO `post` VALUES ('17', '结算员', null, '05', '60517');

-- ----------------------------
-- Table structure for postadjaly
-- ----------------------------
DROP TABLE IF EXISTS `postadjaly`;
CREATE TABLE `postadjaly` (
  `staff_id` varchar(255) NOT NULL,
  `tf_applytime` datetime NOT NULL,
  `tf_reason` varchar(1000) DEFAULT NULL,
  `tf_status` varchar(20) NOT NULL,
  `tf_pid` varchar(20) NOT NULL,
  `admin_id` varchar(20) NOT NULL,
  PRIMARY KEY (`staff_id`,`tf_applytime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of postadjaly
-- ----------------------------

-- ----------------------------
-- Table structure for postadrecord
-- ----------------------------
DROP TABLE IF EXISTS `postadrecord`;
CREATE TABLE `postadrecord` (
  `staff_id` varchar(20) NOT NULL,
  `tf_time` datetime NOT NULL,
  `tf_oldcompany` varchar(20) NOT NULL,
  `tf_department` varchar(20) NOT NULL,
  `tf_post` varchar(20) NOT NULL,
  `tf_company` varchar(20) NOT NULL,
  `tf_newdepartment` varchar(20) NOT NULL,
  `tf_newposted` varchar(20) NOT NULL,
  `tf_applytime` datetime NOT NULL,
  `admin_id` varchar(20) NOT NULL,
  PRIMARY KEY (`staff_id`,`tf_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of postadrecord
-- ----------------------------

-- ----------------------------
-- Table structure for profession_table
-- ----------------------------
DROP TABLE IF EXISTS `profession_table`;
CREATE TABLE `profession_table` (
  `profession_id` int(11) NOT NULL,
  `profession_name` varchar(255) NOT NULL,
  PRIMARY KEY (`profession_id`,`profession_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of profession_table
-- ----------------------------

-- ----------------------------
-- Table structure for ptransfer
-- ----------------------------
DROP TABLE IF EXISTS `ptransfer`;
CREATE TABLE `ptransfer` (
  `pt_rdate` datetime NOT NULL,
  `staff_id` varchar(20) NOT NULL,
  `pt_department` varchar(20) DEFAULT NULL,
  `pt_post` varchar(20) DEFAULT NULL,
  `pt_number` int(10) DEFAULT NULL,
  `pt_cletime` datetime DEFAULT NULL,
  `pt_reason` varchar(1000) DEFAULT NULL,
  `pt_applytime` datetime NOT NULL,
  `pt_status` varchar(255) NOT NULL,
  `admin_id` varchar(20) NOT NULL,
  PRIMARY KEY (`admin_id`,`pt_rdate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ptransfer
-- ----------------------------

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `role_num` int(100) NOT NULL,
  `role_name` varchar(200) NOT NULL,
  `remark` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`role_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', 'asdf', 'fdg');
INSERT INTO `role` VALUES ('7', '检尺员', '');
INSERT INTO `role` VALUES ('22', 'dsfs', '');
INSERT INTO `role` VALUES ('131', '管理员', '1');
INSERT INTO `role` VALUES ('213', 'dfasf', 'afasdf');
INSERT INTO `role` VALUES ('231', '123', '123');

-- ----------------------------
-- Table structure for saleman
-- ----------------------------
DROP TABLE IF EXISTS `saleman`;
CREATE TABLE `saleman` (
  `workid` double NOT NULL,
  `treetype` varchar(255) CHARACTER SET utf8 NOT NULL,
  `unitprice` double NOT NULL,
  `price` double NOT NULL,
  `salesman` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`workid`,`treetype`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of saleman
-- ----------------------------
INSERT INTO `saleman` VALUES ('1', '杂原木', '5', '182.99999833106995', '任');
INSERT INTO `saleman` VALUES ('104', '杉原木', '2', '41.999998688697815', '任哥');
INSERT INTO `saleman` VALUES ('105', '杉原木', '3', '39.59999978542328', '星月');
INSERT INTO `saleman` VALUES ('106', '杉原木', '100', '309.9999949336052', '李三');
INSERT INTO `saleman` VALUES ('107', '杂小径', '10', '100', '张三');
INSERT INTO `saleman` VALUES ('108', '杂原木', '50', '154.9999974668026', '任河');
INSERT INTO `saleman` VALUES ('108', '杂小径', '100', '520.0000107288361', '任河');
INSERT INTO `saleman` VALUES ('110', '杉小径', '330', '1385.999956727028', '酷酷酷');
INSERT INTO `saleman` VALUES ('110', '松原木', '240', '624.0000128746033', '酷酷酷');
INSERT INTO `saleman` VALUES ('110', '松小径', '580', '3073.9999637007713', '酷酷酷');
INSERT INTO `saleman` VALUES ('121', '杉原木', '130', '410.8000189065933', '张一');
INSERT INTO `saleman` VALUES ('121', '松原木', '300', '1350.0000536441803', '张一');

-- ----------------------------
-- Table structure for staff
-- ----------------------------
DROP TABLE IF EXISTS `staff`;
CREATE TABLE `staff` (
  `staff_id` varchar(20) NOT NULL,
  `staff_name` varchar(20) NOT NULL,
  `dp_id` varchar(20) NOT NULL,
  `staff_sex` varchar(10) NOT NULL,
  `cm_id` varchar(20) NOT NULL,
  `ps_id` varchar(20) NOT NULL,
  `staff_born` datetime NOT NULL,
  `staff_province` varchar(10) DEFAULT NULL,
  `staff_city` varchar(20) DEFAULT NULL,
  `staff_county` varchar(50) DEFAULT NULL,
  `staff_address` varchar(50) DEFAULT NULL,
  `staff_idnumber` varchar(18) NOT NULL,
  `staff_time` datetime NOT NULL,
  `staff_phone` varchar(11) NOT NULL,
  `staff_pic` varchar(50) DEFAULT NULL,
  `staff_dangan` varchar(255) DEFAULT NULL,
  `staff_status` varchar(20) DEFAULT '',
  `staff_position` varchar(255) NOT NULL,
  PRIMARY KEY (`staff_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of staff
-- ----------------------------
INSERT INTO `staff` VALUES ('0001010', '李四', '123', '男', '123', '123', '2019-12-06 11:11:52', '福建', '福州', '闽侯', '福建工程学院', '35045219989855510', '2019-12-06 11:12:26', '17895875211', '暂无', '暂无', '已离职', '');
INSERT INTO `staff` VALUES ('123', '发生的事', '无', '男', '无', '无', '2019-12-20 00:00:00', '福建', '三明', '建宁', '福建工程学院', '21321312321321312', '2019-12-21 00:00:00', '12321313123', '', '', '已离职', '');
INSERT INTO `staff` VALUES ('123213', '速度', '123', '男', '213', '123', '2019-12-12 22:36:13', '23', '23', '2323', '23', '2132131', '2019-12-12 22:36:20', '12321', '123', '2132', '已退休', '');

-- ----------------------------
-- Table structure for staffr
-- ----------------------------
DROP TABLE IF EXISTS `staffr`;
CREATE TABLE `staffr` (
  `staff_id` varchar(20) NOT NULL,
  `staff_name` varchar(20) NOT NULL,
  `dp_id` varchar(20) NOT NULL,
  `staff_sex` varchar(10) NOT NULL,
  `cm_id` varchar(20) NOT NULL,
  `ps_id` varchar(20) NOT NULL,
  `staff_born` datetime NOT NULL,
  `staff_province` varchar(10) DEFAULT NULL,
  `staff_city` varchar(20) DEFAULT NULL,
  `staff_county` varchar(50) DEFAULT NULL,
  `staff_address` varchar(50) DEFAULT NULL,
  `staff_idnumber` varchar(18) NOT NULL,
  `staff_time` datetime NOT NULL,
  `staff_phone` varchar(11) NOT NULL,
  `staff_pic` varchar(50) DEFAULT NULL,
  `staff_dangan` varchar(255) DEFAULT NULL,
  `staff_status` varchar(20) DEFAULT '',
  `staff_position` varchar(255) NOT NULL,
  PRIMARY KEY (`staff_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of staffr
-- ----------------------------
INSERT INTO `staffr` VALUES ('0001010', '李四', '123', '男', '123', '123', '2019-12-06 11:11:52', '福建', '福州', '闽侯', '福建工程学院', '35045219989855510', '2019-12-06 11:12:26', '17895875211', '暂无', '暂无', '在职', '');
INSERT INTO `staffr` VALUES ('123', '发生的事', '无', '男', '无', '无', '2019-12-20 00:00:00', '福建', '三明', '建宁', '福建工程学院', '21321312321321312', '2019-12-21 00:00:00', '12321313123', '', '', '已离职', '');
INSERT INTO `staffr` VALUES ('123213', '速度', '123', '男', '213', '123', '2019-12-12 22:36:13', '23', '23', '2323', '23', '2132131', '2019-12-12 22:36:20', '12321', '123', '2132', '已退休', '');

-- ----------------------------
-- Table structure for staff_jobsalary
-- ----------------------------
DROP TABLE IF EXISTS `staff_jobsalary`;
CREATE TABLE `staff_jobsalary` (
  `staff_id` varchar(20) NOT NULL,
  `staff_post` varchar(100) NOT NULL,
  `staff_jobsalary_basicpay` double NOT NULL,
  `admin_id` varchar(20) NOT NULL,
  `staff_jobsalary_changetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`staff_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of staff_jobsalary
-- ----------------------------
INSERT INTO `staff_jobsalary` VALUES ('1', '会计', '3500', '4', '2019-12-21 15:40:29');
INSERT INTO `staff_jobsalary` VALUES ('2', '统计', '3500', '4', '2019-12-21 15:40:03');

-- ----------------------------
-- Table structure for staff_performance
-- ----------------------------
DROP TABLE IF EXISTS `staff_performance`;
CREATE TABLE `staff_performance` (
  `staff_id` varchar(20) NOT NULL,
  `staff_performance_remark` varchar(100) DEFAULT NULL,
  `staff_performance_coefficient` double NOT NULL DEFAULT '0',
  `staff_performance_kpi` double NOT NULL DEFAULT '0',
  `staff_performance_year` int(11) NOT NULL DEFAULT '0',
  `staff_performance_changetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `admin_id` varchar(20) NOT NULL,
  PRIMARY KEY (`staff_id`,`staff_performance_year`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of staff_performance
-- ----------------------------
INSERT INTO `staff_performance` VALUES ('1', '', '2.3', '1.5', '2019', '2019-12-16 17:17:26', '4');
INSERT INTO `staff_performance` VALUES ('123213', '1', '11', '11', '2019', '2019-12-21 17:11:58', '4');
INSERT INTO `staff_performance` VALUES ('2', '', '1', '42', '2019', '2019-12-16 17:17:33', '4');

-- ----------------------------
-- Table structure for staff_performance_list
-- ----------------------------
DROP TABLE IF EXISTS `staff_performance_list`;
CREATE TABLE `staff_performance_list` (
  `staff_id` varchar(20) NOT NULL,
  `staff_performance_list_yetpay` double NOT NULL,
  `staff_performance_list_residue` double NOT NULL,
  `staff_performance_list_status` varchar(10) NOT NULL,
  `staff_performance_list_year` int(11) NOT NULL,
  `staff_performance_list_paytime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `admin_id` varchar(20) NOT NULL,
  `staff_performance_list_total` double NOT NULL,
  PRIMARY KEY (`staff_id`,`staff_performance_list_year`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of staff_performance_list
-- ----------------------------
INSERT INTO `staff_performance_list` VALUES ('1', '0', '141.10429447852758', '未发放', '2019', '2019-12-16 17:51:09', 'admin_id', '141.10429447852758');
INSERT INTO `staff_performance_list` VALUES ('2', '0', '858.8957055214723', '未发放', '2019', '2019-12-16 17:51:09', 'admin_id', '858.8957055214723');

-- ----------------------------
-- Table structure for staff_salary_list
-- ----------------------------
DROP TABLE IF EXISTS `staff_salary_list`;
CREATE TABLE `staff_salary_list` (
  `staff_id` varchar(20) NOT NULL,
  `staff_salary_list_attendday` double(11,5) NOT NULL,
  `staff_salary_list_offnum` double(11,5) NOT NULL,
  `staff_salary_list_absentnum` double(11,5) NOT NULL,
  `staff_salary_list_deductmoney` double NOT NULL,
  `staff_salary_list_ssalary` double NOT NULL,
  `staff_salary_list_netpayroll` double NOT NULL,
  `staff_salary_list_yetpay` double NOT NULL,
  `staff_salary_list_residue` double NOT NULL,
  `staff_salary_list_stockdater` date NOT NULL,
  `staff_salary_list_status` varchar(4) NOT NULL,
  `staff_salary_list_remark` varchar(100) DEFAULT NULL,
  `staff_salary_list_paytime` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `staff_salary_list_overtime` double(11,5) DEFAULT NULL,
  `staff_salary_list_overtimesalary` double DEFAULT NULL,
  `staff_salary_list_year` int(11) NOT NULL,
  `staff_salary_list_month` int(11) NOT NULL,
  PRIMARY KEY (`staff_id`,`staff_salary_list_year`,`staff_salary_list_month`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of staff_salary_list
-- ----------------------------
INSERT INTO `staff_salary_list` VALUES ('1', '1.50000', '0.00000', '0.00000', '0', '7000', '7000', '7000', '0', '2019-12-16', '未发完', null, '2019-12-16 18:24:16', '1.00000', '200', '2019', '12');
INSERT INTO `staff_salary_list` VALUES ('2', '0.00000', '0.00000', '0.00000', '0', '6500', '6500', '6500', '0', '2019-12-16', '未发完', null, '2019-12-16 18:24:16', '2.00000', '800', '2019', '12');
INSERT INTO `staff_salary_list` VALUES ('3', '0.00000', '0.00000', '0.00000', '0', '7000', '7000', '7000', '0', '2019-12-16', '未发完', null, '2019-12-16 18:24:16', '0.00000', '0', '2019', '12');

-- ----------------------------
-- Table structure for totaltree
-- ----------------------------
DROP TABLE IF EXISTS `totaltree`;
CREATE TABLE `totaltree` (
  `codeid` double NOT NULL AUTO_INCREMENT,
  `syear` double NOT NULL,
  `smonth` double NOT NULL,
  `treetype` varchar(50) NOT NULL,
  `unitprice` double DEFAULT NULL,
  `totalnum` double DEFAULT NULL,
  PRIMARY KEY (`codeid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of totaltree
-- ----------------------------
INSERT INTO `totaltree` VALUES ('1', '2019', '7', '杂原木', '1', '1');
INSERT INTO `totaltree` VALUES ('2', '2019', '4', '2', '0', '0');
INSERT INTO `totaltree` VALUES ('3', '2019', '4', 'za', '2', '4');
INSERT INTO `totaltree` VALUES ('4', '2019', '5', '杂原木', '1', '1');
INSERT INTO `totaltree` VALUES ('5', '2019', '5', '松原木', '1', '1');
INSERT INTO `totaltree` VALUES ('6', '2019', '6', '杉原木', '1', '1');
INSERT INTO `totaltree` VALUES ('7', '2019', '11', '杂小径', '1', '1');
INSERT INTO `totaltree` VALUES ('8', '2018', '9', '松小径', '1', '1');
INSERT INTO `totaltree` VALUES ('9', '2019', '2', '杉小径', '1', '1');

-- ----------------------------
-- Table structure for train
-- ----------------------------
DROP TABLE IF EXISTS `train`;
CREATE TABLE `train` (
  `staff_id` varchar(20) NOT NULL,
  `train_name` varchar(40) NOT NULL,
  `train_start_time` date NOT NULL,
  `train_end_time` date NOT NULL,
  `train_certificate` varchar(50) NOT NULL,
  `input_time` date NOT NULL,
  `manager` varchar(20) NOT NULL,
  PRIMARY KEY (`staff_id`,`train_start_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of train
-- ----------------------------
INSERT INTO `train` VALUES ('1001', '信息管理培训', '2019-10-02', '2019-12-03', 'C:\\Users\\小猴\\Pictures\\1.jpg', '2019-12-15', '小王');

-- ----------------------------
-- Table structure for tree
-- ----------------------------
DROP TABLE IF EXISTS `tree`;
CREATE TABLE `tree` (
  `workid` double NOT NULL,
  `treetype` varchar(50) NOT NULL,
  `tlong` double NOT NULL,
  `tradius` double NOT NULL,
  `num` double NOT NULL,
  `tvolume` double NOT NULL,
  `unitprice` double DEFAULT NULL,
  `totalnum` double DEFAULT NULL,
  PRIMARY KEY (`workid`,`treetype`,`tlong`,`tradius`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tree
-- ----------------------------
INSERT INTO `tree` VALUES ('1', '杂原木', '4', '2.6', '20', '0.22599999999999998', '1', '1');
INSERT INTO `tree` VALUES ('2', '松原木', '18', '4', '100', '13.199999928474426', '1', '1');
INSERT INTO `tree` VALUES ('2', '松小径', '4', '8.8', '100', '4.1600000113248825', '1', '1');
INSERT INTO `tree` VALUES ('3', '杂原木', '4', '6.8', '40', '0.45199999999999996', '1', '1');
INSERT INTO `tree` VALUES ('4', '松原木', '4', '8.8', '100', '1.13', '1', '1');
INSERT INTO `tree` VALUES ('5', '杉原木', '4', '9', '50', '0.565', '1', '1');
INSERT INTO `tree` VALUES ('6', '杂小径', '4', '8.8', '40', '0.45199999999999996', '1', '1');
INSERT INTO `tree` VALUES ('7', '松小径', '4', '6.8', '60', '0.6779999999999999', '1', '1');
INSERT INTO `tree` VALUES ('8', '杉小径', '4', '9', '40', '0.45199999999999996', '1', '1');
INSERT INTO `tree` VALUES ('9', '杂原木', '4', '9', '40', '0.45199999999999996', '1', '1');
INSERT INTO `tree` VALUES ('12', '杂原木', '18', '4', '100', '13.199999928474426', '1', '1');
INSERT INTO `tree` VALUES ('12', '杉原木', '4', '4', '100', '1.1300000362098217', '1', '1');
INSERT INTO `tree` VALUES ('13', '杉小径', '18', '2.6', '100', '7.900000363588333', '1', '1');
INSERT INTO `tree` VALUES ('13', '松原木', '18', '2', '100', '5.900000035762787', '1', '1');
INSERT INTO `tree` VALUES ('14', '杉小径', '4', '4', '100', '1.1300000362098217', '1', '1');
INSERT INTO `tree` VALUES ('15', '杉小径', '8', '4', '100', '3.099999949336052', '1', '1');
INSERT INTO `tree` VALUES ('15', '松小径', '4', '2.6', '100', '0.5900000222027302', '1', '1');
INSERT INTO `tree` VALUES ('16', '杂小径', '8', '4', '100', '3.099999949336052', '1', '1');
INSERT INTO `tree` VALUES ('16', '松原木', '18', '8.8', '100', '36.59999966621399', '1', '1');
INSERT INTO `tree` VALUES ('17', '杉小径', '18', '4', '100', '13.199999928474426', '1', '1');
INSERT INTO `tree` VALUES ('19', '杉原木', '4', '4', '100', '1.1300000362098217', '1', '1');
INSERT INTO `tree` VALUES ('19', '松小径', '8', '4', '100', '3.099999949336052', '1', '1');
INSERT INTO `tree` VALUES ('20', '杉原木', '4', '5.8', '100', '2.10999995470047', '1', '1');
INSERT INTO `tree` VALUES ('20', '杉小径', '18', '8.8', '100', '36.59999966621399', '1', '1');
INSERT INTO `tree` VALUES ('21', '杉小径', '4', '4', '100', '1.1300000362098217', '1', '1');
INSERT INTO `tree` VALUES ('21', '松原木', '6', '2.6', '100', '1.1099999770522118', '1', '1');
INSERT INTO `tree` VALUES ('22', '杉原木', '10', '4', '100', '4.500000178813934', '1', '1');
INSERT INTO `tree` VALUES ('22', '松小径', '13', '2.6', '100', '4.30000014603138', '1', '1');
INSERT INTO `tree` VALUES ('23', '杉小径', '4', '2.6', '100', '0.5900000222027302', '1', '1');
INSERT INTO `tree` VALUES ('24', '杉原木', '4', '2.6', '100', '0.5900000222027302', '1', '1');
INSERT INTO `tree` VALUES ('25', '松原木', '18', '2.6', '100', '7.900000363588333', '1', '1');
INSERT INTO `tree` VALUES ('25', '松小径', '10', '5.8', '100', '7.500000298023224', '1', '1');
INSERT INTO `tree` VALUES ('26', '杉小径', '18', '5.8', '20', '4.1999998688697815', '1', '1');
INSERT INTO `tree` VALUES ('27', '杉小径', '18', '4', '100', '13.199999928474426', '1', '1');
INSERT INTO `tree` VALUES ('27', '松原木', '4', '2.6', '100', '0.5900000222027302', '1', '1');
INSERT INTO `tree` VALUES ('28', '杉原木', '18', '5.8', '100', '20.999999344348907', '1', '1');
INSERT INTO `tree` VALUES ('29', '松小径', '10', '4', '100', '4.500000178813934', '1', '1');
INSERT INTO `tree` VALUES ('30', '杉小径', '8', '4', '100', '3.099999949336052', '1', '1');
INSERT INTO `tree` VALUES ('30', '松原木', '10', '2.6', '100', '2.6000000536441803', '1', '1');
INSERT INTO `tree` VALUES ('31', '杉原木', '18', '4.6', '100', '15.600000321865082', '1', '1');
INSERT INTO `tree` VALUES ('32', '松原木', '6', '4', '100', '2.0099999383091927', '1', '1');
INSERT INTO `tree` VALUES ('101', '松原木', '18', '5.8', '100', '20.999999344348907', '1', '1');
INSERT INTO `tree` VALUES ('103', '松原木', '9', '9', '100', '12.399999797344208', '1', '1');
INSERT INTO `tree` VALUES ('104', '杉小径', '4', '2.6', '100', '0.5900000222027302', '1', '1');
INSERT INTO `tree` VALUES ('104', '松原木', '8', '4', '100', '3.099999949336052', '1', '1');
INSERT INTO `tree` VALUES ('104', '松小径', '18', '5.8', '100', '20.999999344348907', '1', '1');
INSERT INTO `tree` VALUES ('105', '杂原木', '18', '6.8', '40', '0', '1', '1');
INSERT INTO `tree` VALUES ('105', '杉小径', '30', '8.8', '100', '0', '1', '1');
INSERT INTO `tree` VALUES ('106', '杂小径', '18', '8.8', '100', '36.59999966621399', '1', '1');
INSERT INTO `tree` VALUES ('107', '杂原木', '18', '2.6', '100', '7.900000363588333', '1', '1');
INSERT INTO `tree` VALUES ('107', '松原木', '18', '4', '20', '2.6399999856948853', '1', '1');
INSERT INTO `tree` VALUES ('107', '松小径', '10', '4', '40', '1.8000000715255737', '1', '1');
INSERT INTO `tree` VALUES ('109', '杉小径', '4', '4', '100', '1.1300000362098217', '1', '1');
INSERT INTO `tree` VALUES ('109', '松原木', '18', '4', '100', '13.199999928474426', '1', '1');
INSERT INTO `tree` VALUES ('125', '杉小径', '10', '4', '100', '4.500000178813934', '1', '1');
INSERT INTO `tree` VALUES ('125', '松原木', '18', '8.8', '100', '36.59999966621399', '1', '1');
INSERT INTO `tree` VALUES ('1071', '杉原木', '4', '8.8', '100', '4.1600000113248825', '1', '1');
INSERT INTO `tree` VALUES ('1071', '松原木', '18', '4', '100', '13.199999928474426', '1', '1');
INSERT INTO `tree` VALUES ('1212', '杉原木', '9', '4.2', '100', '12.399999797344208', '1', '1');
INSERT INTO `tree` VALUES ('1212', '杉小径', '9', '4', '100', '12.399999797344208', '1', '1');
INSERT INTO `tree` VALUES ('1213', '杉小径', '6', '4', '100', '2.0099999383091927', '1', '1');
INSERT INTO `tree` VALUES ('1213', '松小径', '9', '4', '100', '3.799999877810478', '1', '1');
INSERT INTO `tree` VALUES ('1234', '杉原木', '5', '7.2', '40', '0.8720000088214874', '1', '1');
INSERT INTO `tree` VALUES ('1234', '松原木', '6', '2.2', '60', '2.2380001097917557', '1', '1');
INSERT INTO `tree` VALUES ('32211', '杉原木', '10', '9', '20', '3.4000000000000004', '1', '1');
INSERT INTO `tree` VALUES ('362426', '杂原木', '30', '8.8', '40', '100', '1', '1');
INSERT INTO `tree` VALUES ('4533630', '杉原木', '4', '9', '20', '0.22599999999999998', '1', '1');
INSERT INTO `tree` VALUES ('4533633', '杉原木', '20', '6.6', '20', '200', '1', '1');

-- ----------------------------
-- Table structure for treeout
-- ----------------------------
DROP TABLE IF EXISTS `treeout`;
CREATE TABLE `treeout` (
  `workid` double NOT NULL,
  `treetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `tlong` double NOT NULL,
  `tradius` double NOT NULL,
  `num` double NOT NULL,
  `tvolume` double NOT NULL,
  `unitprice` double DEFAULT NULL,
  `totalnum` double DEFAULT NULL,
  PRIMARY KEY (`workid`,`treetype`,`tlong`,`tradius`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of treeout
-- ----------------------------
INSERT INTO `treeout` VALUES ('1', '杂原木', '18', '8.8', '100', '36.59999966621399', '50', '1829.9999833106995');
INSERT INTO `treeout` VALUES ('1', '杉原木', '4', '8.8', '100', '4.1600000113248825', '130', '540.8000014722347');
INSERT INTO `treeout` VALUES ('2', '杉原木', '9', '4', '100', '3.799999877810478', '2', '7.599999755620956');
INSERT INTO `treeout` VALUES ('2', '杉小径', '10', '9.2', '100', '14.900000393390656', '2', '29.80000078678131');
INSERT INTO `treeout` VALUES ('103', '杉小径', '6', '8.8', '100', '3.7300001829862595', '2', '7.460000365972519');
INSERT INTO `treeout` VALUES ('103', '松小径', '18', '8.8', '100', '2', '2', '4');
INSERT INTO `treeout` VALUES ('104', '杉原木', '18', '5.8', '100', '20.999999344348907', '130', '2729.999914765358');
INSERT INTO `treeout` VALUES ('104', '杉小径', '4', '2.6', '100', '0.5900000222027302', '330', '194.70000732690096');
INSERT INTO `treeout` VALUES ('105', '杉原木', '18', '4', '100', '13.199999928474426', '130', '1715.9999907016754');
INSERT INTO `treeout` VALUES ('105', '松原木', '8', '2.6', '100', '1.7999999225139618', '300', '539.9999767541885');
INSERT INTO `treeout` VALUES ('106', '杉原木', '8', '4', '100', '3.099999949336052', '130', '402.99999341368675');
INSERT INTO `treeout` VALUES ('106', '杉小径', '4', '2.6', '100', '0.5900000222027302', '330', '194.70000732690096');
INSERT INTO `treeout` VALUES ('106', '松原木', '10', '4', '100', '4.500000178813934', '300', '1350.0000536441803');
INSERT INTO `treeout` VALUES ('108', '杂原木', '8', '4', '100', '3.099999949336052', '50', '154.9999974668026');
INSERT INTO `treeout` VALUES ('108', '杂小径', '10', '2.6', '200', '5.200000107288361', '100', '520.0000107288361');
INSERT INTO `treeout` VALUES ('109', '松原木', '18', '8.8', '100', '36.59999966621399', '300', '10979.999899864197');
INSERT INTO `treeout` VALUES ('109', '松小径', '30', '4', '100', '34.40000116825104', '580', '19952.0006775856');
INSERT INTO `treeout` VALUES ('120', '杂原木', '22', '4', '100', '19.099999964237213', '1', '1');
INSERT INTO `treeout` VALUES ('121', '杉原木', '18', '2.6', '40', '3.1600001454353333', '130', '410.8000189065933');
INSERT INTO `treeout` VALUES ('121', '松原木', '10', '4', '100', '4.500000178813934', '300', '1350.0000536441803');
INSERT INTO `treeout` VALUES ('123', '杉原木', '4', '8.8', '100', '1.1300000362098217', '2', '2.2600000724196434');
INSERT INTO `treeout` VALUES ('123', '杉小径', '20', '9', '100', '0', '2', '0');

-- ----------------------------
-- Table structure for treepicpath
-- ----------------------------
DROP TABLE IF EXISTS `treepicpath`;
CREATE TABLE `treepicpath` (
  `workid` double NOT NULL,
  `pic` varchar(255) CHARACTER SET utf8 NOT NULL,
  `src` varchar(255) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`workid`,`pic`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of treepicpath
-- ----------------------------

-- ----------------------------
-- Table structure for treeprice
-- ----------------------------
DROP TABLE IF EXISTS `treeprice`;
CREATE TABLE `treeprice` (
  `tname` varchar(20) NOT NULL,
  `treeradius` double NOT NULL,
  `price` double NOT NULL,
  `sesson` double NOT NULL,
  PRIMARY KEY (`tname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of treeprice
-- ----------------------------

-- ----------------------------
-- Table structure for usermanage
-- ----------------------------
DROP TABLE IF EXISTS `usermanage`;
CREATE TABLE `usermanage` (
  `staff_id` varchar(20) NOT NULL,
  `staff_name` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `backups` varchar(100) DEFAULT NULL,
  `power_type` varchar(100) NOT NULL,
  `is_delete` tinyint(5) NOT NULL,
  `is_lock` tinyint(5) NOT NULL,
  `logintime` timestamp NULL DEFAULT NULL,
  `exittime` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`staff_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of usermanage
-- ----------------------------
INSERT INTO `usermanage` VALUES ('', '', '', '2019-12-22 12:28:14', '', '管理员', '1', '0', null, null);
INSERT INTO `usermanage` VALUES ('0101', '高振赫', '123456', '2020-06-15 20:04:36', '', '管理部门', '0', '0', '2020-06-15 20:04:36', null);
INSERT INTO `usermanage` VALUES ('0102', '仁宥纶', '123456', '2020-06-13 17:05:53', '', '生产部', '0', '0', null, null);
INSERT INTO `usermanage` VALUES ('0103', '张九', '123456', '2020-06-13 17:06:52', '', '销售部', '0', '0', null, null);
INSERT INTO `usermanage` VALUES ('0104', '高熙', '123456', '2020-06-13 17:07:25', '', '货场管理员', '0', '0', null, null);
INSERT INTO `usermanage` VALUES ('0105', '星月', '123456', '2020-06-13 17:08:12', '', '生产业主', '0', '0', null, null);
INSERT INTO `usermanage` VALUES ('0106', '秦书', '123456', '2020-06-14 14:42:58', '', '生产业主', '0', '0', '2020-06-14 14:42:58', null);
INSERT INTO `usermanage` VALUES ('0107', '易天', '123456', '2020-07-01 12:06:55', '', '伐区管理员', '0', '0', '2020-07-01 12:06:55', null);
INSERT INTO `usermanage` VALUES ('0108', '肖战', '123456', '2020-06-13 17:37:23', '', '检尺员', '0', '0', '2020-06-13 17:37:23', null);
INSERT INTO `usermanage` VALUES ('0109', '高和田', '123456', '2020-06-13 17:10:39', '', '信息中心', '0', '0', null, null);
INSERT INTO `usermanage` VALUES ('1', 'aaa', '123456', '2020-06-13 16:04:30', '1', '管理员', '0', '0', '2020-06-13 16:04:30', '2019-12-07 00:00:00');
INSERT INTO `usermanage` VALUES ('10', 'zz', '111', '2019-12-07 00:00:00', '', '产销部门', '0', '0', null, null);
INSERT INTO `usermanage` VALUES ('11', 'xxx', '111', '2019-12-07 00:00:00', '', '产销部门', '0', '0', null, null);
INSERT INTO `usermanage` VALUES ('111', 'qqqqq', '111', '2019-12-07 00:00:00', '', '产销部门', '0', '0', null, null);
INSERT INTO `usermanage` VALUES ('112', 'dddd', '111', '2019-12-07 21:05:26', '', '产销部门', '0', '0', null, null);
INSERT INTO `usermanage` VALUES ('113', 'adasdas', '111', '2019-12-10 13:58:58', '', '产销部门', '1', '0', null, null);
INSERT INTO `usermanage` VALUES ('114', 'asdasdasd', '11111', '2019-12-10 13:58:50', '', '产销部门', '1', '0', null, null);
INSERT INTO `usermanage` VALUES ('1234', '张一山', '123456', '2020-06-13 17:03:26', '', '管理部门', '0', '0', '2020-06-13 17:03:26', null);
INSERT INTO `usermanage` VALUES ('2', 'bbb', '111', '2020-06-13 17:37:40', '1', '超级管理员', '0', '0', '2020-06-13 17:37:40', '2019-12-07 00:00:00');
INSERT INTO `usermanage` VALUES ('3', 'ccc', '111', '2019-01-01 00:00:00', '', '产销部门', '0', '0', '2019-12-07 00:00:00', '2019-12-07 00:00:00');
INSERT INTO `usermanage` VALUES ('4', 'ddd', '123456', '2019-01-01 00:00:00', '', '人事部门', '0', '1', '2019-12-07 00:00:00', '2019-12-07 00:00:00');
INSERT INTO `usermanage` VALUES ('5', '小明', '111', '2019-11-30 00:00:00', '', '产销部门', '1', '0', '2019-12-07 00:00:00', '2019-12-07 00:00:00');
INSERT INTO `usermanage` VALUES ('6', '姜钧译', '111', '2020-06-15 19:41:49', '', '超级管理员', '0', '0', '2020-06-15 19:41:49', '2019-12-07 00:00:00');
INSERT INTO `usermanage` VALUES ('666', 'asd', '111', '2019-12-07 21:48:54', '', '产销部门', '0', '0', null, null);
INSERT INTO `usermanage` VALUES ('6666', 'dfs', '111', '2019-12-07 21:49:51', '', '产销部门', '0', '0', null, null);
INSERT INTO `usermanage` VALUES ('7', 'qqq', '111', '2019-12-07 00:00:00', '', '产销部门', '0', '0', null, null);
INSERT INTO `usermanage` VALUES ('8', 'www', '111', '2019-12-07 00:00:00', '', '产销部门', '0', '0', null, null);
INSERT INTO `usermanage` VALUES ('9', 'eee', '111', '2019-12-07 00:00:00', '', '产销部门', '0', '0', null, null);

-- ----------------------------
-- Table structure for volume
-- ----------------------------
DROP TABLE IF EXISTS `volume`;
CREATE TABLE `volume` (
  `tlong` double NOT NULL,
  `tradius` double NOT NULL,
  `mvolume` double DEFAULT NULL,
  PRIMARY KEY (`tlong`,`tradius`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of volume
-- ----------------------------
INSERT INTO `volume` VALUES ('4', '2', '0.0041');
INSERT INTO `volume` VALUES ('4', '2.2', '0.0047');
INSERT INTO `volume` VALUES ('4', '2.4', '0.0053');
INSERT INTO `volume` VALUES ('4', '2.6', '0.0059');
INSERT INTO `volume` VALUES ('4', '2.8', '0.0066');
INSERT INTO `volume` VALUES ('4', '3', '0.0073');
INSERT INTO `volume` VALUES ('4', '3.2', '0.008');
INSERT INTO `volume` VALUES ('4', '3.4', '0.0088');
INSERT INTO `volume` VALUES ('4', '3.6', '0.0096');
INSERT INTO `volume` VALUES ('4', '3.8', '0.0104');
INSERT INTO `volume` VALUES ('4', '4', '0.0113');
INSERT INTO `volume` VALUES ('4', '4.2', '0.0122');
INSERT INTO `volume` VALUES ('4', '4.4', '0.0132');
INSERT INTO `volume` VALUES ('4', '4.6', '0.0142');
INSERT INTO `volume` VALUES ('4', '4.8', '0.0152');
INSERT INTO `volume` VALUES ('4', '5', '0.0163');
INSERT INTO `volume` VALUES ('4', '5.2', '0.0175');
INSERT INTO `volume` VALUES ('4', '5.4', '0.0186');
INSERT INTO `volume` VALUES ('4', '5.6', '0.0199');
INSERT INTO `volume` VALUES ('4', '5.8', '0.0211');
INSERT INTO `volume` VALUES ('4', '6', '0.0224');
INSERT INTO `volume` VALUES ('4', '6.2', '0.0238');
INSERT INTO `volume` VALUES ('4', '6.4', '0.0252');
INSERT INTO `volume` VALUES ('4', '6.6', '0.0266');
INSERT INTO `volume` VALUES ('4', '6.8', '0.0281');
INSERT INTO `volume` VALUES ('4', '7', '0.0297');
INSERT INTO `volume` VALUES ('4', '7.2', '0.0313');
INSERT INTO `volume` VALUES ('4', '7.4', '0.033');
INSERT INTO `volume` VALUES ('4', '7.6', '0.0347');
INSERT INTO `volume` VALUES ('4', '7.8', '0.0364');
INSERT INTO `volume` VALUES ('4', '8', '0.0382');
INSERT INTO `volume` VALUES ('4', '8.2', '0.04');
INSERT INTO `volume` VALUES ('4', '8.4', '0.042');
INSERT INTO `volume` VALUES ('4', '8.6', '0.044');
INSERT INTO `volume` VALUES ('4', '8.8', '0.0416');
INSERT INTO `volume` VALUES ('4', '9', '0.0481');
INSERT INTO `volume` VALUES ('4', '9.2', '0.0503');
INSERT INTO `volume` VALUES ('4', '9.4', '0.0525');
INSERT INTO `volume` VALUES ('4', '9.6', '0.0547');
INSERT INTO `volume` VALUES ('4', '9.8', '0.0571');
INSERT INTO `volume` VALUES ('4', '10', '0.0594');
INSERT INTO `volume` VALUES ('4', '10.2', null);
INSERT INTO `volume` VALUES ('4', '10.4', null);
INSERT INTO `volume` VALUES ('4', '10.6', null);
INSERT INTO `volume` VALUES ('4', '10.8', null);
INSERT INTO `volume` VALUES ('4', '11', null);
INSERT INTO `volume` VALUES ('4', '11.2', null);
INSERT INTO `volume` VALUES ('4', '11.4', null);
INSERT INTO `volume` VALUES ('4', '11.6', null);
INSERT INTO `volume` VALUES ('4', '11.8', null);
INSERT INTO `volume` VALUES ('4', '12', null);
INSERT INTO `volume` VALUES ('4', '12.2', null);
INSERT INTO `volume` VALUES ('4', '12.4', null);
INSERT INTO `volume` VALUES ('4', '12.6', null);
INSERT INTO `volume` VALUES ('4', '12.8', null);
INSERT INTO `volume` VALUES ('4', '13', null);
INSERT INTO `volume` VALUES ('4', '13.2', null);
INSERT INTO `volume` VALUES ('4', '13.4', null);
INSERT INTO `volume` VALUES ('4', '13.6', null);
INSERT INTO `volume` VALUES ('4', '13.8', null);
INSERT INTO `volume` VALUES ('4', '14', null);
INSERT INTO `volume` VALUES ('5', '2', '0.0058');
INSERT INTO `volume` VALUES ('5', '2.2', '0.0066');
INSERT INTO `volume` VALUES ('5', '2.4', '0.0074');
INSERT INTO `volume` VALUES ('5', '2.6', '0.0083');
INSERT INTO `volume` VALUES ('5', '2.8', '0.0092');
INSERT INTO `volume` VALUES ('5', '3', '0.0101');
INSERT INTO `volume` VALUES ('5', '3.2', '0.0111');
INSERT INTO `volume` VALUES ('5', '3.4', '0.0121');
INSERT INTO `volume` VALUES ('5', '3.6', '0.0132');
INSERT INTO `volume` VALUES ('5', '3.8', '0.0143');
INSERT INTO `volume` VALUES ('5', '4', '0.0154');
INSERT INTO `volume` VALUES ('5', '4.2', '0.0166');
INSERT INTO `volume` VALUES ('5', '4.4', '0.0178');
INSERT INTO `volume` VALUES ('5', '4.6', '0.0191');
INSERT INTO `volume` VALUES ('5', '4.8', '0.0204');
INSERT INTO `volume` VALUES ('5', '5', '0.0218');
INSERT INTO `volume` VALUES ('5', '5.2', '0.0232');
INSERT INTO `volume` VALUES ('5', '5.4', '0.0247');
INSERT INTO `volume` VALUES ('5', '5.6', '0.0262');
INSERT INTO `volume` VALUES ('5', '5.8', '0.0278');
INSERT INTO `volume` VALUES ('5', '6', '0.0294');
INSERT INTO `volume` VALUES ('5', '6.2', '0.0311');
INSERT INTO `volume` VALUES ('5', '6.4', '0.0328');
INSERT INTO `volume` VALUES ('5', '6.6', '0.0346');
INSERT INTO `volume` VALUES ('5', '6.8', '0.0364');
INSERT INTO `volume` VALUES ('5', '7', '0.0383');
INSERT INTO `volume` VALUES ('5', '7.2', '0.0403');
INSERT INTO `volume` VALUES ('5', '7.4', '0.0423');
INSERT INTO `volume` VALUES ('5', '7.6', '0.0444');
INSERT INTO `volume` VALUES ('5', '7.8', '0.0465');
INSERT INTO `volume` VALUES ('5', '8', '0.0487');
INSERT INTO `volume` VALUES ('5', '8.2', '0.0509');
INSERT INTO `volume` VALUES ('5', '8.4', '0.0532');
INSERT INTO `volume` VALUES ('5', '8.6', '0.0556');
INSERT INTO `volume` VALUES ('5', '8.8', '0.058');
INSERT INTO `volume` VALUES ('5', '9', '0.0605');
INSERT INTO `volume` VALUES ('5', '9.2', '0.063');
INSERT INTO `volume` VALUES ('5', '9.4', '0.0657');
INSERT INTO `volume` VALUES ('5', '9.6', '0.0683');
INSERT INTO `volume` VALUES ('5', '9.8', '0.0711');
INSERT INTO `volume` VALUES ('5', '10', '0.0739');
INSERT INTO `volume` VALUES ('5', '10.2', null);
INSERT INTO `volume` VALUES ('5', '10.4', null);
INSERT INTO `volume` VALUES ('5', '10.6', null);
INSERT INTO `volume` VALUES ('5', '10.8', null);
INSERT INTO `volume` VALUES ('5', '11', null);
INSERT INTO `volume` VALUES ('5', '11.2', null);
INSERT INTO `volume` VALUES ('5', '11.4', null);
INSERT INTO `volume` VALUES ('5', '11.6', null);
INSERT INTO `volume` VALUES ('5', '11.8', null);
INSERT INTO `volume` VALUES ('5', '12', null);
INSERT INTO `volume` VALUES ('5', '12.2', null);
INSERT INTO `volume` VALUES ('5', '12.4', null);
INSERT INTO `volume` VALUES ('5', '12.6', null);
INSERT INTO `volume` VALUES ('5', '12.8', null);
INSERT INTO `volume` VALUES ('5', '13', null);
INSERT INTO `volume` VALUES ('5', '13.2', null);
INSERT INTO `volume` VALUES ('5', '13.4', null);
INSERT INTO `volume` VALUES ('5', '13.6', null);
INSERT INTO `volume` VALUES ('5', '13.8', null);
INSERT INTO `volume` VALUES ('5', '14', null);
INSERT INTO `volume` VALUES ('6', '2', '0.0079');
INSERT INTO `volume` VALUES ('6', '2.2', '0.0089');
INSERT INTO `volume` VALUES ('6', '2.4', '0.01');
INSERT INTO `volume` VALUES ('6', '2.6', '0.0111');
INSERT INTO `volume` VALUES ('6', '2.8', '0.0122');
INSERT INTO `volume` VALUES ('6', '3', '0.0134');
INSERT INTO `volume` VALUES ('6', '3.2', '0.0147');
INSERT INTO `volume` VALUES ('6', '3.4', '0.016');
INSERT INTO `volume` VALUES ('6', '3.6', '0.0173');
INSERT INTO `volume` VALUES ('6', '3.8', '0.0187');
INSERT INTO `volume` VALUES ('6', '4', '0.0201');
INSERT INTO `volume` VALUES ('6', '4.2', '0.0216');
INSERT INTO `volume` VALUES ('6', '4.4', '0.0231');
INSERT INTO `volume` VALUES ('6', '4.6', '0.0247');
INSERT INTO `volume` VALUES ('6', '4.8', '0.0263');
INSERT INTO `volume` VALUES ('6', '5', '0.028');
INSERT INTO `volume` VALUES ('6', '5.2', '0.0298');
INSERT INTO `volume` VALUES ('6', '5.4', '0.0316');
INSERT INTO `volume` VALUES ('6', '5.6', '0.0334');
INSERT INTO `volume` VALUES ('6', '5.8', '0.0354');
INSERT INTO `volume` VALUES ('6', '6', '0.0373');
INSERT INTO `volume` VALUES ('6', '6.2', '0.0394');
INSERT INTO `volume` VALUES ('6', '6.4', '0.0414');
INSERT INTO `volume` VALUES ('6', '6.6', '0.0436');
INSERT INTO `volume` VALUES ('6', '6.8', '0.0458');
INSERT INTO `volume` VALUES ('6', '7', '0.0481');
INSERT INTO `volume` VALUES ('6', '7.2', '0.0504');
INSERT INTO `volume` VALUES ('6', '7.4', '0.0528');
INSERT INTO `volume` VALUES ('6', '7.6', '0.0552');
INSERT INTO `volume` VALUES ('6', '7.8', '0.0578');
INSERT INTO `volume` VALUES ('6', '8', '0.0603');
INSERT INTO `volume` VALUES ('6', '8.2', '0.063');
INSERT INTO `volume` VALUES ('6', '8.4', '0.0657');
INSERT INTO `volume` VALUES ('6', '8.6', '0.0685');
INSERT INTO `volume` VALUES ('6', '8.8', '0.0713');
INSERT INTO `volume` VALUES ('6', '9', '0.0743');
INSERT INTO `volume` VALUES ('6', '9.2', '0.077');
INSERT INTO `volume` VALUES ('6', '9.4', '0.0803');
INSERT INTO `volume` VALUES ('6', '9.6', '0.0834');
INSERT INTO `volume` VALUES ('6', '9.8', '0.0866');
INSERT INTO `volume` VALUES ('6', '10', '0.0899');
INSERT INTO `volume` VALUES ('6', '10.2', null);
INSERT INTO `volume` VALUES ('6', '10.4', null);
INSERT INTO `volume` VALUES ('6', '10.6', null);
INSERT INTO `volume` VALUES ('6', '10.8', null);
INSERT INTO `volume` VALUES ('6', '11', null);
INSERT INTO `volume` VALUES ('6', '11.2', null);
INSERT INTO `volume` VALUES ('6', '11.4', null);
INSERT INTO `volume` VALUES ('6', '11.6', null);
INSERT INTO `volume` VALUES ('6', '11.8', null);
INSERT INTO `volume` VALUES ('6', '12', null);
INSERT INTO `volume` VALUES ('6', '12.2', null);
INSERT INTO `volume` VALUES ('6', '12.4', null);
INSERT INTO `volume` VALUES ('6', '12.6', null);
INSERT INTO `volume` VALUES ('6', '12.8', null);
INSERT INTO `volume` VALUES ('6', '13', null);
INSERT INTO `volume` VALUES ('6', '13.2', null);
INSERT INTO `volume` VALUES ('6', '13.4', null);
INSERT INTO `volume` VALUES ('6', '13.6', null);
INSERT INTO `volume` VALUES ('6', '13.8', null);
INSERT INTO `volume` VALUES ('6', '14', null);
INSERT INTO `volume` VALUES ('7', '2', '0.0103');
INSERT INTO `volume` VALUES ('7', '2.2', '0.0116');
INSERT INTO `volume` VALUES ('7', '2.4', '0.0128');
INSERT INTO `volume` VALUES ('7', '2.6', '0.0143');
INSERT INTO `volume` VALUES ('7', '2.8', '0.0157');
INSERT INTO `volume` VALUES ('7', '3', '0.0172');
INSERT INTO `volume` VALUES ('7', '3.2', '0.0188');
INSERT INTO `volume` VALUES ('7', '3.4', '0.0204');
INSERT INTO `volume` VALUES ('7', '3.6', '0.022');
INSERT INTO `volume` VALUES ('7', '3.8', '0.0237');
INSERT INTO `volume` VALUES ('7', '4', '0.0254');
INSERT INTO `volume` VALUES ('7', '4.2', '0.0273');
INSERT INTO `volume` VALUES ('7', '4.4', '0.0291');
INSERT INTO `volume` VALUES ('7', '4.6', '0.031');
INSERT INTO `volume` VALUES ('7', '4.8', '0.033');
INSERT INTO `volume` VALUES ('7', '5', '0.0351');
INSERT INTO `volume` VALUES ('7', '5.2', '0.0372');
INSERT INTO `volume` VALUES ('7', '5.4', '0.0393');
INSERT INTO `volume` VALUES ('7', '5.6', '0.0416');
INSERT INTO `volume` VALUES ('7', '5.8', '0.0438');
INSERT INTO `volume` VALUES ('7', '6', '0.0462');
INSERT INTO `volume` VALUES ('7', '6.2', '0.0486');
INSERT INTO `volume` VALUES ('7', '6.4', '0.0511');
INSERT INTO `volume` VALUES ('7', '6.6', '0.0536');
INSERT INTO `volume` VALUES ('7', '6.8', '0.0562');
INSERT INTO `volume` VALUES ('7', '7', '0.0589');
INSERT INTO `volume` VALUES ('7', '7.2', '0.0616');
INSERT INTO `volume` VALUES ('7', '7.4', '0.0644');
INSERT INTO `volume` VALUES ('7', '7.6', '0.0673');
INSERT INTO `volume` VALUES ('7', '7.8', '0.0703');
INSERT INTO `volume` VALUES ('7', '8', '0.0733');
INSERT INTO `volume` VALUES ('7', '8.2', '0.0764');
INSERT INTO `volume` VALUES ('7', '8.4', '0.0795');
INSERT INTO `volume` VALUES ('7', '8.6', '0.0828');
INSERT INTO `volume` VALUES ('7', '8.8', '0.0861');
INSERT INTO `volume` VALUES ('7', '9', '0.0895');
INSERT INTO `volume` VALUES ('7', '9.2', '0.0929');
INSERT INTO `volume` VALUES ('7', '9.4', '0.0965');
INSERT INTO `volume` VALUES ('7', '9.6', '0.1');
INSERT INTO `volume` VALUES ('7', '9.8', '0.1037');
INSERT INTO `volume` VALUES ('7', '10', '0.1075');
INSERT INTO `volume` VALUES ('7', '10.2', null);
INSERT INTO `volume` VALUES ('7', '10.4', null);
INSERT INTO `volume` VALUES ('7', '10.6', null);
INSERT INTO `volume` VALUES ('7', '10.8', null);
INSERT INTO `volume` VALUES ('7', '11', null);
INSERT INTO `volume` VALUES ('7', '11.2', null);
INSERT INTO `volume` VALUES ('7', '11.4', null);
INSERT INTO `volume` VALUES ('7', '11.6', null);
INSERT INTO `volume` VALUES ('7', '11.8', null);
INSERT INTO `volume` VALUES ('7', '12', null);
INSERT INTO `volume` VALUES ('7', '12.2', null);
INSERT INTO `volume` VALUES ('7', '12.4', null);
INSERT INTO `volume` VALUES ('7', '12.6', null);
INSERT INTO `volume` VALUES ('7', '12.8', null);
INSERT INTO `volume` VALUES ('7', '13', null);
INSERT INTO `volume` VALUES ('7', '13.2', null);
INSERT INTO `volume` VALUES ('7', '13.4', null);
INSERT INTO `volume` VALUES ('7', '13.6', null);
INSERT INTO `volume` VALUES ('7', '13.8', null);
INSERT INTO `volume` VALUES ('7', '14', null);
INSERT INTO `volume` VALUES ('8', '2', '0.013');
INSERT INTO `volume` VALUES ('8', '2.2', '0.015');
INSERT INTO `volume` VALUES ('8', '2.4', '0.016');
INSERT INTO `volume` VALUES ('8', '2.6', '0.018');
INSERT INTO `volume` VALUES ('8', '2.8', '0.02');
INSERT INTO `volume` VALUES ('8', '3', '0.021');
INSERT INTO `volume` VALUES ('8', '3.2', '0.023');
INSERT INTO `volume` VALUES ('8', '3.4', '0.025');
INSERT INTO `volume` VALUES ('8', '3.6', '0.027');
INSERT INTO `volume` VALUES ('8', '3.8', '0.029');
INSERT INTO `volume` VALUES ('8', '4', '0.031');
INSERT INTO `volume` VALUES ('8', '4.2', '0.034');
INSERT INTO `volume` VALUES ('8', '4.4', '0.036');
INSERT INTO `volume` VALUES ('8', '4.6', '0.038');
INSERT INTO `volume` VALUES ('8', '4.8', '0.04');
INSERT INTO `volume` VALUES ('8', '5', '0.043');
INSERT INTO `volume` VALUES ('8', '5.2', '0.045');
INSERT INTO `volume` VALUES ('8', '5.4', '0.048');
INSERT INTO `volume` VALUES ('8', '5.6', '0.051');
INSERT INTO `volume` VALUES ('8', '5.8', '0.053');
INSERT INTO `volume` VALUES ('8', '6', '0.056');
INSERT INTO `volume` VALUES ('8', '6.2', '0.059');
INSERT INTO `volume` VALUES ('8', '6.4', '0.062');
INSERT INTO `volume` VALUES ('8', '6.6', '0.065');
INSERT INTO `volume` VALUES ('8', '6.8', '0.068');
INSERT INTO `volume` VALUES ('8', '7', '0.071');
INSERT INTO `volume` VALUES ('8', '7.2', '0.074');
INSERT INTO `volume` VALUES ('8', '7.4', '0.077');
INSERT INTO `volume` VALUES ('8', '7.6', '0.081');
INSERT INTO `volume` VALUES ('8', '7.8', '0.084');
INSERT INTO `volume` VALUES ('8', '8', '0.087');
INSERT INTO `volume` VALUES ('8', '8.2', '0.091');
INSERT INTO `volume` VALUES ('8', '8.4', '0.095');
INSERT INTO `volume` VALUES ('8', '8.6', '0.098');
INSERT INTO `volume` VALUES ('8', '8.8', '0.102');
INSERT INTO `volume` VALUES ('8', '9', '0.106');
INSERT INTO `volume` VALUES ('8', '9.2', '0.11');
INSERT INTO `volume` VALUES ('8', '9.4', '0.114');
INSERT INTO `volume` VALUES ('8', '9.6', '0.118');
INSERT INTO `volume` VALUES ('8', '9.8', '0.122');
INSERT INTO `volume` VALUES ('8', '10', '0.127');
INSERT INTO `volume` VALUES ('8', '10.2', null);
INSERT INTO `volume` VALUES ('8', '10.4', null);
INSERT INTO `volume` VALUES ('8', '10.6', null);
INSERT INTO `volume` VALUES ('8', '10.8', null);
INSERT INTO `volume` VALUES ('8', '11', null);
INSERT INTO `volume` VALUES ('8', '11.2', null);
INSERT INTO `volume` VALUES ('8', '11.4', null);
INSERT INTO `volume` VALUES ('8', '11.6', null);
INSERT INTO `volume` VALUES ('8', '11.8', null);
INSERT INTO `volume` VALUES ('8', '12', null);
INSERT INTO `volume` VALUES ('8', '12.2', null);
INSERT INTO `volume` VALUES ('8', '12.4', null);
INSERT INTO `volume` VALUES ('8', '12.6', null);
INSERT INTO `volume` VALUES ('8', '12.8', null);
INSERT INTO `volume` VALUES ('8', '13', null);
INSERT INTO `volume` VALUES ('8', '13.2', null);
INSERT INTO `volume` VALUES ('8', '13.4', null);
INSERT INTO `volume` VALUES ('8', '13.6', null);
INSERT INTO `volume` VALUES ('8', '13.8', null);
INSERT INTO `volume` VALUES ('8', '14', null);
INSERT INTO `volume` VALUES ('9', '2', '0.016');
INSERT INTO `volume` VALUES ('9', '2.2', '0.018');
INSERT INTO `volume` VALUES ('9', '2.4', '0.02');
INSERT INTO `volume` VALUES ('9', '2.6', '0.022');
INSERT INTO `volume` VALUES ('9', '2.8', '0.024');
INSERT INTO `volume` VALUES ('9', '3', '0.026');
INSERT INTO `volume` VALUES ('9', '3.2', '0.028');
INSERT INTO `volume` VALUES ('9', '3.4', '0.031');
INSERT INTO `volume` VALUES ('9', '3.6', '0.033');
INSERT INTO `volume` VALUES ('9', '3.8', '0.036');
INSERT INTO `volume` VALUES ('9', '4', '0.038');
INSERT INTO `volume` VALUES ('9', '4.2', '0.041');
INSERT INTO `volume` VALUES ('9', '4.4', '0.043');
INSERT INTO `volume` VALUES ('9', '4.6', '0.046');
INSERT INTO `volume` VALUES ('9', '4.8', '0.049');
INSERT INTO `volume` VALUES ('9', '5', '0.051');
INSERT INTO `volume` VALUES ('9', '5.2', '0.054');
INSERT INTO `volume` VALUES ('9', '5.4', '0.057');
INSERT INTO `volume` VALUES ('9', '5.6', '0.06');
INSERT INTO `volume` VALUES ('9', '5.8', '0.064');
INSERT INTO `volume` VALUES ('9', '6', '0.067');
INSERT INTO `volume` VALUES ('9', '6.2', '0.07');
INSERT INTO `volume` VALUES ('9', '6.4', '0.073');
INSERT INTO `volume` VALUES ('9', '6.6', '0.077');
INSERT INTO `volume` VALUES ('9', '6.8', '0.08');
INSERT INTO `volume` VALUES ('9', '7', '0.084');
INSERT INTO `volume` VALUES ('9', '7.2', '0.088');
INSERT INTO `volume` VALUES ('9', '7.4', '0.091');
INSERT INTO `volume` VALUES ('9', '7.6', '0.095');
INSERT INTO `volume` VALUES ('9', '7.8', '0.099');
INSERT INTO `volume` VALUES ('9', '8', '0.103');
INSERT INTO `volume` VALUES ('9', '8.2', '0.107');
INSERT INTO `volume` VALUES ('9', '8.4', '0.111');
INSERT INTO `volume` VALUES ('9', '8.6', '0.115');
INSERT INTO `volume` VALUES ('9', '8.8', '0.12');
INSERT INTO `volume` VALUES ('9', '9', '0.124');
INSERT INTO `volume` VALUES ('9', '9.2', '0.129');
INSERT INTO `volume` VALUES ('9', '9.4', '0.133');
INSERT INTO `volume` VALUES ('9', '9.6', '0.138');
INSERT INTO `volume` VALUES ('9', '9.8', '0.143');
INSERT INTO `volume` VALUES ('9', '10', '0.147');
INSERT INTO `volume` VALUES ('9', '10.2', null);
INSERT INTO `volume` VALUES ('9', '10.4', null);
INSERT INTO `volume` VALUES ('9', '10.6', null);
INSERT INTO `volume` VALUES ('9', '10.8', null);
INSERT INTO `volume` VALUES ('9', '11', null);
INSERT INTO `volume` VALUES ('9', '11.2', null);
INSERT INTO `volume` VALUES ('9', '11.4', null);
INSERT INTO `volume` VALUES ('9', '11.6', null);
INSERT INTO `volume` VALUES ('9', '11.8', null);
INSERT INTO `volume` VALUES ('9', '12', null);
INSERT INTO `volume` VALUES ('9', '12.2', null);
INSERT INTO `volume` VALUES ('9', '12.4', null);
INSERT INTO `volume` VALUES ('9', '12.6', null);
INSERT INTO `volume` VALUES ('9', '12.8', null);
INSERT INTO `volume` VALUES ('9', '13', null);
INSERT INTO `volume` VALUES ('9', '13.2', null);
INSERT INTO `volume` VALUES ('9', '13.4', null);
INSERT INTO `volume` VALUES ('9', '13.6', null);
INSERT INTO `volume` VALUES ('9', '13.8', null);
INSERT INTO `volume` VALUES ('9', '14', null);
INSERT INTO `volume` VALUES ('10', '2', '0.019');
INSERT INTO `volume` VALUES ('10', '2.2', '0.022');
INSERT INTO `volume` VALUES ('10', '2.4', '0.024');
INSERT INTO `volume` VALUES ('10', '2.6', '0.026');
INSERT INTO `volume` VALUES ('10', '2.8', '0.029');
INSERT INTO `volume` VALUES ('10', '3', '0.031');
INSERT INTO `volume` VALUES ('10', '3.2', '0.034');
INSERT INTO `volume` VALUES ('10', '3.4', '0.037');
INSERT INTO `volume` VALUES ('10', '3.6', '0.04');
INSERT INTO `volume` VALUES ('10', '3.8', '0.042');
INSERT INTO `volume` VALUES ('10', '4', '0.045');
INSERT INTO `volume` VALUES ('10', '4.2', '0.048');
INSERT INTO `volume` VALUES ('10', '4.4', '0.051');
INSERT INTO `volume` VALUES ('10', '4.6', '0.054');
INSERT INTO `volume` VALUES ('10', '4.8', '0.058');
INSERT INTO `volume` VALUES ('10', '5', '0.061');
INSERT INTO `volume` VALUES ('10', '5.2', '0.064');
INSERT INTO `volume` VALUES ('10', '5.4', '0.068');
INSERT INTO `volume` VALUES ('10', '5.6', '0.071');
INSERT INTO `volume` VALUES ('10', '5.8', '0.075');
INSERT INTO `volume` VALUES ('10', '6', '0.078');
INSERT INTO `volume` VALUES ('10', '6.2', '0.082');
INSERT INTO `volume` VALUES ('10', '6.4', '0.086');
INSERT INTO `volume` VALUES ('10', '6.6', '0.09');
INSERT INTO `volume` VALUES ('10', '6.8', '0.094');
INSERT INTO `volume` VALUES ('10', '7', '0.098');
INSERT INTO `volume` VALUES ('10', '7.2', '0.102');
INSERT INTO `volume` VALUES ('10', '7.4', '0.106');
INSERT INTO `volume` VALUES ('10', '7.6', '0.111');
INSERT INTO `volume` VALUES ('10', '7.8', '0.115');
INSERT INTO `volume` VALUES ('10', '8', '0.12');
INSERT INTO `volume` VALUES ('10', '8.2', '0.124');
INSERT INTO `volume` VALUES ('10', '8.4', '0.129');
INSERT INTO `volume` VALUES ('10', '8.6', '0.134');
INSERT INTO `volume` VALUES ('10', '8.8', '0.139');
INSERT INTO `volume` VALUES ('10', '9', '0.144');
INSERT INTO `volume` VALUES ('10', '9.2', '0.149');
INSERT INTO `volume` VALUES ('10', '9.4', '0.154');
INSERT INTO `volume` VALUES ('10', '9.6', '0.159');
INSERT INTO `volume` VALUES ('10', '9.8', '0.164');
INSERT INTO `volume` VALUES ('10', '10', '0.17');
INSERT INTO `volume` VALUES ('10', '10.2', null);
INSERT INTO `volume` VALUES ('10', '10.4', null);
INSERT INTO `volume` VALUES ('10', '10.6', null);
INSERT INTO `volume` VALUES ('10', '10.8', null);
INSERT INTO `volume` VALUES ('10', '11', null);
INSERT INTO `volume` VALUES ('10', '11.2', null);
INSERT INTO `volume` VALUES ('10', '11.4', null);
INSERT INTO `volume` VALUES ('10', '11.6', null);
INSERT INTO `volume` VALUES ('10', '11.8', null);
INSERT INTO `volume` VALUES ('10', '12', null);
INSERT INTO `volume` VALUES ('10', '12.2', null);
INSERT INTO `volume` VALUES ('10', '12.4', null);
INSERT INTO `volume` VALUES ('10', '12.6', null);
INSERT INTO `volume` VALUES ('10', '12.8', null);
INSERT INTO `volume` VALUES ('10', '13', null);
INSERT INTO `volume` VALUES ('10', '13.2', null);
INSERT INTO `volume` VALUES ('10', '13.4', null);
INSERT INTO `volume` VALUES ('10', '13.6', null);
INSERT INTO `volume` VALUES ('10', '13.8', null);
INSERT INTO `volume` VALUES ('10', '14', null);
INSERT INTO `volume` VALUES ('11', '2', '0.023');
INSERT INTO `volume` VALUES ('11', '2.2', '0.026');
INSERT INTO `volume` VALUES ('11', '2.4', '0.028');
INSERT INTO `volume` VALUES ('11', '2.6', '0.031');
INSERT INTO `volume` VALUES ('11', '2.8', '0.034');
INSERT INTO `volume` VALUES ('11', '3', '0.037');
INSERT INTO `volume` VALUES ('11', '3.2', '0.04');
INSERT INTO `volume` VALUES ('11', '3.4', '0.043');
INSERT INTO `volume` VALUES ('11', '3.6', '0.046');
INSERT INTO `volume` VALUES ('11', '3.8', '0.05');
INSERT INTO `volume` VALUES ('11', '4', '0.053');
INSERT INTO `volume` VALUES ('11', '4.2', '0.057');
INSERT INTO `volume` VALUES ('11', '4.4', '0.06');
INSERT INTO `volume` VALUES ('11', '4.6', '0.064');
INSERT INTO `volume` VALUES ('11', '4.8', '0.067');
INSERT INTO `volume` VALUES ('11', '5', '0.071');
INSERT INTO `volume` VALUES ('11', '5.2', '0.075');
INSERT INTO `volume` VALUES ('11', '5.4', '0.079');
INSERT INTO `volume` VALUES ('11', '5.6', '0.083');
INSERT INTO `volume` VALUES ('11', '5.8', '0.087');
INSERT INTO `volume` VALUES ('11', '6', '0.091');
INSERT INTO `volume` VALUES ('11', '6.2', '0.095');
INSERT INTO `volume` VALUES ('11', '6.4', '0.1');
INSERT INTO `volume` VALUES ('11', '6.6', '0.104');
INSERT INTO `volume` VALUES ('11', '6.8', '0.109');
INSERT INTO `volume` VALUES ('11', '7', '0.0113');
INSERT INTO `volume` VALUES ('11', '7.2', '0.118');
INSERT INTO `volume` VALUES ('11', '7.4', '0.123');
INSERT INTO `volume` VALUES ('11', '7.6', '0.128');
INSERT INTO `volume` VALUES ('11', '7.8', '0.133');
INSERT INTO `volume` VALUES ('11', '8', '0.138');
INSERT INTO `volume` VALUES ('11', '8.2', '0.143');
INSERT INTO `volume` VALUES ('11', '8.4', '0.148');
INSERT INTO `volume` VALUES ('11', '8.6', '0.153');
INSERT INTO `volume` VALUES ('11', '8.8', '0.159');
INSERT INTO `volume` VALUES ('11', '9', '0.164');
INSERT INTO `volume` VALUES ('11', '9.2', '0.17');
INSERT INTO `volume` VALUES ('11', '9.4', '0.176');
INSERT INTO `volume` VALUES ('11', '9.6', '0.182');
INSERT INTO `volume` VALUES ('11', '9.8', '0.188');
INSERT INTO `volume` VALUES ('11', '10', '0.194');
INSERT INTO `volume` VALUES ('11', '10.2', '0.206');
INSERT INTO `volume` VALUES ('11', '10.4', '0.218');
INSERT INTO `volume` VALUES ('11', '10.6', '0.225');
INSERT INTO `volume` VALUES ('11', '10.8', '0.232');
INSERT INTO `volume` VALUES ('11', '11', '0.24');
INSERT INTO `volume` VALUES ('11', '11.2', '0.247');
INSERT INTO `volume` VALUES ('11', '11.4', '0.254');
INSERT INTO `volume` VALUES ('11', '11.6', '0.262');
INSERT INTO `volume` VALUES ('11', '11.8', '0.27');
INSERT INTO `volume` VALUES ('11', '12', '0.277');
INSERT INTO `volume` VALUES ('11', '12.2', '0.285');
INSERT INTO `volume` VALUES ('11', '12.4', '0.293');
INSERT INTO `volume` VALUES ('11', '12.6', '0.302');
INSERT INTO `volume` VALUES ('11', '12.8', '0.31');
INSERT INTO `volume` VALUES ('11', '13', '0.319');
INSERT INTO `volume` VALUES ('11', '13.2', '0.327');
INSERT INTO `volume` VALUES ('11', '13.4', '0.336');
INSERT INTO `volume` VALUES ('11', '13.6', '0.345');
INSERT INTO `volume` VALUES ('11', '13.8', '0.354');
INSERT INTO `volume` VALUES ('11', '14', '0.363');
INSERT INTO `volume` VALUES ('12', '2', '0.027');
INSERT INTO `volume` VALUES ('12', '2.2', '0.03');
INSERT INTO `volume` VALUES ('12', '2.4', '0.033');
INSERT INTO `volume` VALUES ('12', '2.6', '0.037');
INSERT INTO `volume` VALUES ('12', '2.8', '0.04');
INSERT INTO `volume` VALUES ('12', '3', '0.043');
INSERT INTO `volume` VALUES ('12', '3.2', '0.047');
INSERT INTO `volume` VALUES ('12', '3.4', '0.05');
INSERT INTO `volume` VALUES ('12', '3.6', '0.054');
INSERT INTO `volume` VALUES ('12', '3.8', '0.058');
INSERT INTO `volume` VALUES ('12', '4', '0.062');
INSERT INTO `volume` VALUES ('12', '4.2', '0.065');
INSERT INTO `volume` VALUES ('12', '4.4', '0.069');
INSERT INTO `volume` VALUES ('12', '4.6', '0.074');
INSERT INTO `volume` VALUES ('12', '4.8', '0.078');
INSERT INTO `volume` VALUES ('12', '5', '0.082');
INSERT INTO `volume` VALUES ('12', '5.2', '0.086');
INSERT INTO `volume` VALUES ('12', '5.4', '0.091');
INSERT INTO `volume` VALUES ('12', '5.6', '0.095');
INSERT INTO `volume` VALUES ('12', '5.8', '0.1');
INSERT INTO `volume` VALUES ('12', '6', '0.105');
INSERT INTO `volume` VALUES ('12', '6.2', '0.109');
INSERT INTO `volume` VALUES ('12', '6.4', '0.114');
INSERT INTO `volume` VALUES ('12', '6.6', '0.119');
INSERT INTO `volume` VALUES ('12', '6.8', '0.124');
INSERT INTO `volume` VALUES ('12', '7', '0.13');
INSERT INTO `volume` VALUES ('12', '7.2', '0.135');
INSERT INTO `volume` VALUES ('12', '7.4', '0.14');
INSERT INTO `volume` VALUES ('12', '7.6', '0.146');
INSERT INTO `volume` VALUES ('12', '7.8', '0.151');
INSERT INTO `volume` VALUES ('12', '8', '0.157');
INSERT INTO `volume` VALUES ('12', '8.2', '0.163');
INSERT INTO `volume` VALUES ('12', '8.4', '0.168');
INSERT INTO `volume` VALUES ('12', '8.6', '0.174');
INSERT INTO `volume` VALUES ('12', '8.8', '0.18');
INSERT INTO `volume` VALUES ('12', '9', '0.187');
INSERT INTO `volume` VALUES ('12', '9.2', '0.193');
INSERT INTO `volume` VALUES ('12', '9.4', '0.199');
INSERT INTO `volume` VALUES ('12', '9.6', '0.206');
INSERT INTO `volume` VALUES ('12', '9.8', '0.212');
INSERT INTO `volume` VALUES ('12', '10', '0.219');
INSERT INTO `volume` VALUES ('12', '10.2', '0.233');
INSERT INTO `volume` VALUES ('12', '10.4', '0.246');
INSERT INTO `volume` VALUES ('12', '10.6', '0.254');
INSERT INTO `volume` VALUES ('12', '10.8', '0.262');
INSERT INTO `volume` VALUES ('12', '11', '0.27');
INSERT INTO `volume` VALUES ('12', '11.2', '0.278');
INSERT INTO `volume` VALUES ('12', '11.4', '0.286');
INSERT INTO `volume` VALUES ('12', '11.6', '0.294');
INSERT INTO `volume` VALUES ('12', '11.8', '0.302');
INSERT INTO `volume` VALUES ('12', '12', '0.311');
INSERT INTO `volume` VALUES ('12', '12.2', '0.32');
INSERT INTO `volume` VALUES ('12', '12.4', '0.329');
INSERT INTO `volume` VALUES ('12', '12.6', '0.338');
INSERT INTO `volume` VALUES ('12', '12.8', '0.347');
INSERT INTO `volume` VALUES ('12', '13', '0.356');
INSERT INTO `volume` VALUES ('12', '13.2', '0.365');
INSERT INTO `volume` VALUES ('12', '13.4', '0.375');
INSERT INTO `volume` VALUES ('12', '13.6', '0.385');
INSERT INTO `volume` VALUES ('12', '13.8', '0.394');
INSERT INTO `volume` VALUES ('12', '14', '0.404');
INSERT INTO `volume` VALUES ('13', '2', '0.031');
INSERT INTO `volume` VALUES ('13', '2.2', '0.035');
INSERT INTO `volume` VALUES ('13', '2.4', '0.039');
INSERT INTO `volume` VALUES ('13', '2.6', '0.043');
INSERT INTO `volume` VALUES ('13', '2.8', '0.047');
INSERT INTO `volume` VALUES ('13', '3', '0.051');
INSERT INTO `volume` VALUES ('13', '3.2', '0.055');
INSERT INTO `volume` VALUES ('13', '3.4', '0.059');
INSERT INTO `volume` VALUES ('13', '3.6', '0.064');
INSERT INTO `volume` VALUES ('13', '3.8', '0.068');
INSERT INTO `volume` VALUES ('13', '4', '0.073');
INSERT INTO `volume` VALUES ('13', '4.2', '0.078');
INSERT INTO `volume` VALUES ('13', '4.4', '0.082');
INSERT INTO `volume` VALUES ('13', '4.6', '0.087');
INSERT INTO `volume` VALUES ('13', '4.8', '0.093');
INSERT INTO `volume` VALUES ('13', '5', '0.098');
INSERT INTO `volume` VALUES ('13', '5.2', '0.103');
INSERT INTO `volume` VALUES ('13', '5.4', '0.109');
INSERT INTO `volume` VALUES ('13', '5.6', '0.114');
INSERT INTO `volume` VALUES ('13', '5.8', '0.12');
INSERT INTO `volume` VALUES ('13', '6', '0.126');
INSERT INTO `volume` VALUES ('13', '6.2', '0.132');
INSERT INTO `volume` VALUES ('13', '6.4', '0.138');
INSERT INTO `volume` VALUES ('13', '6.6', '0.144');
INSERT INTO `volume` VALUES ('13', '6.8', '0.15');
INSERT INTO `volume` VALUES ('13', '7', '0.157');
INSERT INTO `volume` VALUES ('13', '7.2', '0.163');
INSERT INTO `volume` VALUES ('13', '7.4', '0.17');
INSERT INTO `volume` VALUES ('13', '7.6', '0.177');
INSERT INTO `volume` VALUES ('13', '7.8', '0.184');
INSERT INTO `volume` VALUES ('13', '8', '0.191');
INSERT INTO `volume` VALUES ('13', '8.2', '0.198');
INSERT INTO `volume` VALUES ('13', '8.4', '0.206');
INSERT INTO `volume` VALUES ('13', '8.6', '0.213');
INSERT INTO `volume` VALUES ('13', '8.8', '0.221');
INSERT INTO `volume` VALUES ('13', '9', '0.229');
INSERT INTO `volume` VALUES ('13', '9.2', '0.237');
INSERT INTO `volume` VALUES ('13', '9.4', '0.245');
INSERT INTO `volume` VALUES ('13', '9.6', '0.253');
INSERT INTO `volume` VALUES ('13', '9.8', '0.262');
INSERT INTO `volume` VALUES ('13', '10', '0.271');
INSERT INTO `volume` VALUES ('13', '10.2', '0.274');
INSERT INTO `volume` VALUES ('13', '10.4', '0.276');
INSERT INTO `volume` VALUES ('13', '10.6', '0.284');
INSERT INTO `volume` VALUES ('13', '10.8', '0.293');
INSERT INTO `volume` VALUES ('13', '11', '0.301');
INSERT INTO `volume` VALUES ('13', '11.2', '0.31');
INSERT INTO `volume` VALUES ('13', '11.4', '0.319');
INSERT INTO `volume` VALUES ('13', '11.6', '0.328');
INSERT INTO `volume` VALUES ('13', '11.8', '0.337');
INSERT INTO `volume` VALUES ('13', '12', '0.347');
INSERT INTO `volume` VALUES ('13', '12.2', '0.356');
INSERT INTO `volume` VALUES ('13', '12.4', '0.366');
INSERT INTO `volume` VALUES ('13', '12.6', '0.375');
INSERT INTO `volume` VALUES ('13', '12.8', '0.385');
INSERT INTO `volume` VALUES ('13', '13', '0.395');
INSERT INTO `volume` VALUES ('13', '13.2', '0.406');
INSERT INTO `volume` VALUES ('13', '13.4', '0.416');
INSERT INTO `volume` VALUES ('13', '13.6', '0.427');
INSERT INTO `volume` VALUES ('13', '13.8', '0.437');
INSERT INTO `volume` VALUES ('13', '14', '0.448');
INSERT INTO `volume` VALUES ('14', '2', '0.036');
INSERT INTO `volume` VALUES ('14', '2.2', '0.04');
INSERT INTO `volume` VALUES ('14', '2.4', '0.045');
INSERT INTO `volume` VALUES ('14', '2.6', '0.049');
INSERT INTO `volume` VALUES ('14', '2.8', '0.054');
INSERT INTO `volume` VALUES ('14', '3', '0.058');
INSERT INTO `volume` VALUES ('14', '3.2', '0.063');
INSERT INTO `volume` VALUES ('14', '3.4', '0.068');
INSERT INTO `volume` VALUES ('14', '3.6', '0.073');
INSERT INTO `volume` VALUES ('14', '3.8', '0.078');
INSERT INTO `volume` VALUES ('14', '4', '0.083');
INSERT INTO `volume` VALUES ('14', '4.2', '0.089');
INSERT INTO `volume` VALUES ('14', '4.4', '0.094');
INSERT INTO `volume` VALUES ('14', '4.6', '0.1');
INSERT INTO `volume` VALUES ('14', '4.8', '0.105');
INSERT INTO `volume` VALUES ('14', '5', '0.111');
INSERT INTO `volume` VALUES ('14', '5.2', '0.117');
INSERT INTO `volume` VALUES ('14', '5.4', '0.123');
INSERT INTO `volume` VALUES ('14', '5.6', '0.129');
INSERT INTO `volume` VALUES ('14', '5.8', '0.136');
INSERT INTO `volume` VALUES ('14', '6', '0.142');
INSERT INTO `volume` VALUES ('14', '6.2', '0.149');
INSERT INTO `volume` VALUES ('14', '6.4', '0.156');
INSERT INTO `volume` VALUES ('14', '6.6', '0.162');
INSERT INTO `volume` VALUES ('14', '6.8', '0.169');
INSERT INTO `volume` VALUES ('14', '7', '0.176');
INSERT INTO `volume` VALUES ('14', '7.2', '0.184');
INSERT INTO `volume` VALUES ('14', '7.4', '0.191');
INSERT INTO `volume` VALUES ('14', '7.6', '0.199');
INSERT INTO `volume` VALUES ('14', '7.8', '0.206');
INSERT INTO `volume` VALUES ('14', '8', '0.214');
INSERT INTO `volume` VALUES ('14', '8.2', '0.222');
INSERT INTO `volume` VALUES ('14', '8.4', '0.23');
INSERT INTO `volume` VALUES ('14', '8.6', '0.239');
INSERT INTO `volume` VALUES ('14', '8.8', '0.247');
INSERT INTO `volume` VALUES ('14', '9', '0.256');
INSERT INTO `volume` VALUES ('14', '9.2', '0.264');
INSERT INTO `volume` VALUES ('14', '9.4', '0.273');
INSERT INTO `volume` VALUES ('14', '9.6', '0.282');
INSERT INTO `volume` VALUES ('14', '9.8', '0.292');
INSERT INTO `volume` VALUES ('14', '10', '0.301');
INSERT INTO `volume` VALUES ('14', '10.2', '0.304');
INSERT INTO `volume` VALUES ('14', '10.4', '0.307');
INSERT INTO `volume` VALUES ('14', '10.6', '0.316');
INSERT INTO `volume` VALUES ('14', '10.8', '0.325');
INSERT INTO `volume` VALUES ('14', '11', '0.335');
INSERT INTO `volume` VALUES ('14', '11.2', '0.344');
INSERT INTO `volume` VALUES ('14', '11.4', '0.354');
INSERT INTO `volume` VALUES ('14', '11.6', '0.364');
INSERT INTO `volume` VALUES ('14', '11.8', '0.374');
INSERT INTO `volume` VALUES ('14', '12', '0.384');
INSERT INTO `volume` VALUES ('14', '12.2', '0.394');
INSERT INTO `volume` VALUES ('14', '12.4', '0.405');
INSERT INTO `volume` VALUES ('14', '12.6', '0.415');
INSERT INTO `volume` VALUES ('14', '12.8', '3.426');
INSERT INTO `volume` VALUES ('14', '13', '0.437');
INSERT INTO `volume` VALUES ('14', '13.2', '0.448');
INSERT INTO `volume` VALUES ('14', '13.4', '0.459');
INSERT INTO `volume` VALUES ('14', '13.6', '0.471');
INSERT INTO `volume` VALUES ('14', '13.8', '0.482');
INSERT INTO `volume` VALUES ('14', '14', '0.494');
INSERT INTO `volume` VALUES ('15', '2', '0.041');
INSERT INTO `volume` VALUES ('15', '2.2', '0.046');
INSERT INTO `volume` VALUES ('15', '2.4', '0.051');
INSERT INTO `volume` VALUES ('15', '2.6', '0.056');
INSERT INTO `volume` VALUES ('15', '2.8', '0.061');
INSERT INTO `volume` VALUES ('15', '3', '0.066');
INSERT INTO `volume` VALUES ('15', '3.2', '0.072');
INSERT INTO `volume` VALUES ('15', '3.4', '0.077');
INSERT INTO `volume` VALUES ('15', '3.6', '0.083');
INSERT INTO `volume` VALUES ('15', '3.8', '0.088');
INSERT INTO `volume` VALUES ('15', '4', '0.094');
INSERT INTO `volume` VALUES ('15', '4.2', '0.1');
INSERT INTO `volume` VALUES ('15', '4.4', '0.106');
INSERT INTO `volume` VALUES ('15', '4.6', '0.113');
INSERT INTO `volume` VALUES ('15', '4.8', '0.119');
INSERT INTO `volume` VALUES ('15', '5', '0.126');
INSERT INTO `volume` VALUES ('15', '5.2', '0.132');
INSERT INTO `volume` VALUES ('15', '5.4', '0.139');
INSERT INTO `volume` VALUES ('15', '5.6', '0.146');
INSERT INTO `volume` VALUES ('15', '5.8', '0.153');
INSERT INTO `volume` VALUES ('15', '6', '0.16');
INSERT INTO `volume` VALUES ('15', '6.2', '0.167');
INSERT INTO `volume` VALUES ('15', '6.4', '0.175');
INSERT INTO `volume` VALUES ('15', '6.6', '0.182');
INSERT INTO `volume` VALUES ('15', '6.8', '0.19');
INSERT INTO `volume` VALUES ('15', '7', '0.198');
INSERT INTO `volume` VALUES ('15', '7.2', '0.206');
INSERT INTO `volume` VALUES ('15', '7.4', '0.214');
INSERT INTO `volume` VALUES ('15', '7.6', '0.222');
INSERT INTO `volume` VALUES ('15', '7.8', '0.23');
INSERT INTO `volume` VALUES ('15', '8', '0.239');
INSERT INTO `volume` VALUES ('15', '8.2', '0.248');
INSERT INTO `volume` VALUES ('15', '8.4', '0.256');
INSERT INTO `volume` VALUES ('15', '8.6', '0.266');
INSERT INTO `volume` VALUES ('15', '8.8', '0.275');
INSERT INTO `volume` VALUES ('15', '9', '0.284');
INSERT INTO `volume` VALUES ('15', '9.2', '0.294');
INSERT INTO `volume` VALUES ('15', '9.4', '0.303');
INSERT INTO `volume` VALUES ('15', '9.6', '0.313');
INSERT INTO `volume` VALUES ('15', '9.8', '0.323');
INSERT INTO `volume` VALUES ('15', '10', '0.333');
INSERT INTO `volume` VALUES ('15', '10.2', '0.336');
INSERT INTO `volume` VALUES ('15', '10.4', '0.339');
INSERT INTO `volume` VALUES ('15', '10.6', '0.349');
INSERT INTO `volume` VALUES ('15', '10.8', '0.36');
INSERT INTO `volume` VALUES ('15', '11', '0.37');
INSERT INTO `volume` VALUES ('15', '11.2', '0.38');
INSERT INTO `volume` VALUES ('15', '11.4', '0.391');
INSERT INTO `volume` VALUES ('15', '11.6', '0.401');
INSERT INTO `volume` VALUES ('15', '11.8', '0.412');
INSERT INTO `volume` VALUES ('15', '12', '0.423');
INSERT INTO `volume` VALUES ('15', '12.2', '0.435');
INSERT INTO `volume` VALUES ('15', '12.4', '0.446');
INSERT INTO `volume` VALUES ('15', '12.6', '0.457');
INSERT INTO `volume` VALUES ('15', '12.8', '0.4689');
INSERT INTO `volume` VALUES ('15', '13', '0.481');
INSERT INTO `volume` VALUES ('15', '13.2', '0.493');
INSERT INTO `volume` VALUES ('15', '13.4', '0.505');
INSERT INTO `volume` VALUES ('15', '13.6', '0.517');
INSERT INTO `volume` VALUES ('15', '13.8', '0.529');
INSERT INTO `volume` VALUES ('15', '14', '0.542');
INSERT INTO `volume` VALUES ('16', '2', '0.047');
INSERT INTO `volume` VALUES ('16', '2.2', '0.052');
INSERT INTO `volume` VALUES ('16', '2.4', '0.058');
INSERT INTO `volume` VALUES ('16', '2.6', '0.063');
INSERT INTO `volume` VALUES ('16', '2.8', '0.069');
INSERT INTO `volume` VALUES ('16', '3', '0.075');
INSERT INTO `volume` VALUES ('16', '3.2', '0.081');
INSERT INTO `volume` VALUES ('16', '3.4', '0.087');
INSERT INTO `volume` VALUES ('16', '3.6', '0.093');
INSERT INTO `volume` VALUES ('16', '3.8', '0.1');
INSERT INTO `volume` VALUES ('16', '4', '0.106');
INSERT INTO `volume` VALUES ('16', '4.2', '0.113');
INSERT INTO `volume` VALUES ('16', '4.4', '0.12');
INSERT INTO `volume` VALUES ('16', '4.6', '0.126');
INSERT INTO `volume` VALUES ('16', '4.8', '0.134');
INSERT INTO `volume` VALUES ('16', '5', '0.141');
INSERT INTO `volume` VALUES ('16', '5.2', '0.148');
INSERT INTO `volume` VALUES ('16', '5.4', '0.155');
INSERT INTO `volume` VALUES ('16', '5.6', '0.163');
INSERT INTO `volume` VALUES ('16', '5.8', '0.171');
INSERT INTO `volume` VALUES ('16', '6', '0.179');
INSERT INTO `volume` VALUES ('16', '6.2', '0.187');
INSERT INTO `volume` VALUES ('16', '6.4', '0.195');
INSERT INTO `volume` VALUES ('16', '6.6', '0.203');
INSERT INTO `volume` VALUES ('16', '6.8', '0.211');
INSERT INTO `volume` VALUES ('16', '7', '0.22');
INSERT INTO `volume` VALUES ('16', '7.2', '0.229');
INSERT INTO `volume` VALUES ('16', '7.4', '0.238');
INSERT INTO `volume` VALUES ('16', '7.6', '0.247');
INSERT INTO `volume` VALUES ('16', '7.8', '0.256');
INSERT INTO `volume` VALUES ('16', '8', '0.265');
INSERT INTO `volume` VALUES ('16', '8.2', '0.274');
INSERT INTO `volume` VALUES ('16', '8.4', '0.284');
INSERT INTO `volume` VALUES ('16', '8.6', '0.294');
INSERT INTO `volume` VALUES ('16', '8.8', '0.304');
INSERT INTO `volume` VALUES ('16', '9', '0.314');
INSERT INTO `volume` VALUES ('16', '9.2', '0.324');
INSERT INTO `volume` VALUES ('16', '9.4', '0.335');
INSERT INTO `volume` VALUES ('16', '9.6', '0.345');
INSERT INTO `volume` VALUES ('16', '9.8', '0.356');
INSERT INTO `volume` VALUES ('16', '10', '0.367');
INSERT INTO `volume` VALUES ('16', '10.2', '0.371');
INSERT INTO `volume` VALUES ('16', '10.4', '0.374');
INSERT INTO `volume` VALUES ('16', '10.6', '0.385');
INSERT INTO `volume` VALUES ('16', '10.8', '0.396');
INSERT INTO `volume` VALUES ('16', '11', '0.407');
INSERT INTO `volume` VALUES ('16', '11.2', '0.418');
INSERT INTO `volume` VALUES ('16', '11.4', '0.429');
INSERT INTO `volume` VALUES ('16', '11.6', '0.441');
INSERT INTO `volume` VALUES ('16', '11.8', '0.453');
INSERT INTO `volume` VALUES ('16', '12', '0.465');
INSERT INTO `volume` VALUES ('16', '12.2', '0.477');
INSERT INTO `volume` VALUES ('16', '12.4', '0.489');
INSERT INTO `volume` VALUES ('16', '12.6', '0.501');
INSERT INTO `volume` VALUES ('16', '12.8', '0.514');
INSERT INTO `volume` VALUES ('16', '13', '0.527');
INSERT INTO `volume` VALUES ('16', '13.2', '0.539');
INSERT INTO `volume` VALUES ('16', '13.4', '0.552');
INSERT INTO `volume` VALUES ('16', '13.6', '0.566');
INSERT INTO `volume` VALUES ('16', '13.8', '0.579');
INSERT INTO `volume` VALUES ('16', '14', '0.592');
INSERT INTO `volume` VALUES ('17', '2', '0.052');
INSERT INTO `volume` VALUES ('17', '2.2', '0.058');
INSERT INTO `volume` VALUES ('17', '2.4', '0.065');
INSERT INTO `volume` VALUES ('17', '2.6', '0.071');
INSERT INTO `volume` VALUES ('17', '2.8', '0.077');
INSERT INTO `volume` VALUES ('17', '3', '0.084');
INSERT INTO `volume` VALUES ('17', '3.2', '0.091');
INSERT INTO `volume` VALUES ('17', '3.4', '0.097');
INSERT INTO `volume` VALUES ('17', '3.6', '0.104');
INSERT INTO `volume` VALUES ('17', '3.8', '0.111');
INSERT INTO `volume` VALUES ('17', '4', '0.119');
INSERT INTO `volume` VALUES ('17', '4.2', '0.126');
INSERT INTO `volume` VALUES ('17', '4.4', '0.133');
INSERT INTO `volume` VALUES ('17', '4.6', '0.141');
INSERT INTO `volume` VALUES ('17', '4.8', '0.149');
INSERT INTO `volume` VALUES ('17', '5', '0.157');
INSERT INTO `volume` VALUES ('17', '5.2', '0.165');
INSERT INTO `volume` VALUES ('17', '5.4', '0.173');
INSERT INTO `volume` VALUES ('17', '5.6', '0.181');
INSERT INTO `volume` VALUES ('17', '5.8', '0.19');
INSERT INTO `volume` VALUES ('17', '6', '0.198');
INSERT INTO `volume` VALUES ('17', '6.2', '0.207');
INSERT INTO `volume` VALUES ('17', '6.4', '0.216');
INSERT INTO `volume` VALUES ('17', '6.6', '0.225');
INSERT INTO `volume` VALUES ('17', '6.8', '0.234');
INSERT INTO `volume` VALUES ('17', '7', '0.243');
INSERT INTO `volume` VALUES ('17', '7.2', '0.253');
INSERT INTO `volume` VALUES ('17', '7.4', '0.263');
INSERT INTO `volume` VALUES ('17', '7.6', '0.272');
INSERT INTO `volume` VALUES ('17', '7.8', '0.282');
INSERT INTO `volume` VALUES ('17', '8', '0.292');
INSERT INTO `volume` VALUES ('17', '8.2', '0.303');
INSERT INTO `volume` VALUES ('17', '8.4', '0.313');
INSERT INTO `volume` VALUES ('17', '8.6', '0.324');
INSERT INTO `volume` VALUES ('17', '8.8', '0.334');
INSERT INTO `volume` VALUES ('17', '9', '0.345');
INSERT INTO `volume` VALUES ('17', '9.2', '0.356');
INSERT INTO `volume` VALUES ('17', '9.4', '0.368');
INSERT INTO `volume` VALUES ('17', '9.6', '0.379');
INSERT INTO `volume` VALUES ('17', '9.8', '0.391');
INSERT INTO `volume` VALUES ('17', '10', '0.403');
INSERT INTO `volume` VALUES ('17', '10.2', '0.407');
INSERT INTO `volume` VALUES ('17', '10.4', '0.41');
INSERT INTO `volume` VALUES ('17', '10.6', '0.422');
INSERT INTO `volume` VALUES ('17', '10.8', '0.434');
INSERT INTO `volume` VALUES ('17', '11', '0.446');
INSERT INTO `volume` VALUES ('17', '11.2', '0.458');
INSERT INTO `volume` VALUES ('17', '11.4', '0.47');
INSERT INTO `volume` VALUES ('17', '11.6', '0.482');
INSERT INTO `volume` VALUES ('17', '11.8', '0.495');
INSERT INTO `volume` VALUES ('17', '12', '0.508');
INSERT INTO `volume` VALUES ('17', '12.2', '0.521');
INSERT INTO `volume` VALUES ('17', '12.4', '0.534');
INSERT INTO `volume` VALUES ('17', '12.6', '0.547');
INSERT INTO `volume` VALUES ('17', '12.8', '0.561');
INSERT INTO `volume` VALUES ('17', '13', '0.574');
INSERT INTO `volume` VALUES ('17', '13.2', '0.588');
INSERT INTO `volume` VALUES ('17', '13.4', '0.602');
INSERT INTO `volume` VALUES ('17', '13.6', '0.616');
INSERT INTO `volume` VALUES ('17', '13.8', '0.631');
INSERT INTO `volume` VALUES ('17', '14', '0.645');
INSERT INTO `volume` VALUES ('18', '2', '0.059');
INSERT INTO `volume` VALUES ('18', '2.2', '0.065');
INSERT INTO `volume` VALUES ('18', '2.4', '0.072');
INSERT INTO `volume` VALUES ('18', '2.6', '0.079');
INSERT INTO `volume` VALUES ('18', '2.8', '0.086');
INSERT INTO `volume` VALUES ('18', '3', '0.093');
INSERT INTO `volume` VALUES ('18', '3.2', '0.101');
INSERT INTO `volume` VALUES ('18', '3.4', '0.108');
INSERT INTO `volume` VALUES ('18', '3.6', '0.116');
INSERT INTO `volume` VALUES ('18', '3.8', '0.124');
INSERT INTO `volume` VALUES ('18', '4', '0.132');
INSERT INTO `volume` VALUES ('18', '4.2', '0.14');
INSERT INTO `volume` VALUES ('18', '4.4', '0.148');
INSERT INTO `volume` VALUES ('18', '4.6', '0.156');
INSERT INTO `volume` VALUES ('18', '4.8', '0.165');
INSERT INTO `volume` VALUES ('18', '5', '0.174');
INSERT INTO `volume` VALUES ('18', '5.2', '0.182');
INSERT INTO `volume` VALUES ('18', '5.4', '0.191');
INSERT INTO `volume` VALUES ('18', '5.6', '0.201');
INSERT INTO `volume` VALUES ('18', '5.8', '0.21');
INSERT INTO `volume` VALUES ('18', '6', '0.219');
INSERT INTO `volume` VALUES ('18', '6.2', '0.229');
INSERT INTO `volume` VALUES ('18', '6.4', '0.238');
INSERT INTO `volume` VALUES ('18', '6.6', '0.248');
INSERT INTO `volume` VALUES ('18', '6.8', '0.258');
INSERT INTO `volume` VALUES ('18', '7', '0.268');
INSERT INTO `volume` VALUES ('18', '7.2', '0.278');
INSERT INTO `volume` VALUES ('18', '7.4', '0.289');
INSERT INTO `volume` VALUES ('18', '7.6', '0.3');
INSERT INTO `volume` VALUES ('18', '7.8', '0.31');
INSERT INTO `volume` VALUES ('18', '8', '0.321');
INSERT INTO `volume` VALUES ('18', '8.2', '0.332');
INSERT INTO `volume` VALUES ('18', '8.4', '0.343');
INSERT INTO `volume` VALUES ('18', '8.6', '0.355');
INSERT INTO `volume` VALUES ('18', '8.8', '0.366');
INSERT INTO `volume` VALUES ('18', '9', '0.378');
INSERT INTO `volume` VALUES ('18', '9.2', '0.39');
INSERT INTO `volume` VALUES ('18', '9.4', '0.402');
INSERT INTO `volume` VALUES ('18', '9.6', '0.414');
INSERT INTO `volume` VALUES ('18', '9.8', '0.427');
INSERT INTO `volume` VALUES ('18', '10', '0.44');
INSERT INTO `volume` VALUES ('18', '10.2', '0.444');
INSERT INTO `volume` VALUES ('18', '10.4', '0.448');
INSERT INTO `volume` VALUES ('18', '10.6', '0.46');
INSERT INTO `volume` VALUES ('18', '10.8', '0.473');
INSERT INTO `volume` VALUES ('18', '11', '0.486');
INSERT INTO `volume` VALUES ('18', '11.2', '0.499');
INSERT INTO `volume` VALUES ('18', '11.4', '0.512');
INSERT INTO `volume` VALUES ('18', '11.6', '0.526');
INSERT INTO `volume` VALUES ('18', '11.8', '0.539');
INSERT INTO `volume` VALUES ('18', '12', '0.553');
INSERT INTO `volume` VALUES ('18', '12.2', '0.567');
INSERT INTO `volume` VALUES ('18', '12.4', '0.581');
INSERT INTO `volume` VALUES ('18', '12.6', '0.595');
INSERT INTO `volume` VALUES ('18', '12.8', '0.61');
INSERT INTO `volume` VALUES ('18', '13', '0.624');
INSERT INTO `volume` VALUES ('18', '13.2', '0.639');
INSERT INTO `volume` VALUES ('18', '13.4', '0.654');
INSERT INTO `volume` VALUES ('18', '13.6', '0.669');
INSERT INTO `volume` VALUES ('18', '13.8', '0.684');
INSERT INTO `volume` VALUES ('18', '14', '0.7');
INSERT INTO `volume` VALUES ('19', '2', '0.065');
INSERT INTO `volume` VALUES ('19', '2.2', '0.072');
INSERT INTO `volume` VALUES ('19', '2.4', '0.08');
INSERT INTO `volume` VALUES ('19', '2.6', '0.088');
INSERT INTO `volume` VALUES ('19', '2.8', '0.095');
INSERT INTO `volume` VALUES ('19', '3', '0.103');
INSERT INTO `volume` VALUES ('19', '3.2', '0.112');
INSERT INTO `volume` VALUES ('19', '3.4', '0.12');
INSERT INTO `volume` VALUES ('19', '3.6', '0.128');
INSERT INTO `volume` VALUES ('19', '3.8', '0.137');
INSERT INTO `volume` VALUES ('19', '4', '0.146');
INSERT INTO `volume` VALUES ('19', '4.2', '0.155');
INSERT INTO `volume` VALUES ('19', '4.4', '0.164');
INSERT INTO `volume` VALUES ('19', '4.6', '0.173');
INSERT INTO `volume` VALUES ('19', '4.8', '0.182');
INSERT INTO `volume` VALUES ('19', '5', '0.191');
INSERT INTO `volume` VALUES ('19', '5.2', '0.201');
INSERT INTO `volume` VALUES ('19', '5.4', '0.211');
INSERT INTO `volume` VALUES ('19', '5.6', '0.221');
INSERT INTO `volume` VALUES ('19', '5.8', '0.231');
INSERT INTO `volume` VALUES ('19', '6', '0.241');
INSERT INTO `volume` VALUES ('19', '6.2', '0.251');
INSERT INTO `volume` VALUES ('19', '6.4', '0.262');
INSERT INTO `volume` VALUES ('19', '6.6', '0.272');
INSERT INTO `volume` VALUES ('19', '6.8', '0.283');
INSERT INTO `volume` VALUES ('19', '7', '0.294');
INSERT INTO `volume` VALUES ('19', '7.2', '0.305');
INSERT INTO `volume` VALUES ('19', '7.4', '0.317');
INSERT INTO `volume` VALUES ('19', '7.6', '0.328');
INSERT INTO `volume` VALUES ('19', '7.8', '0.34');
INSERT INTO `volume` VALUES ('19', '8', '0.351');
INSERT INTO `volume` VALUES ('19', '8.2', '0.363');
INSERT INTO `volume` VALUES ('19', '8.4', '0.375');
INSERT INTO `volume` VALUES ('19', '8.6', '0.387');
INSERT INTO `volume` VALUES ('19', '8.8', '0.4');
INSERT INTO `volume` VALUES ('19', '9', '0.413');
INSERT INTO `volume` VALUES ('19', '9.2', '0.425');
INSERT INTO `volume` VALUES ('19', '9.4', '0.438');
INSERT INTO `volume` VALUES ('19', '9.6', '0.451');
INSERT INTO `volume` VALUES ('19', '9.8', '0.465');
INSERT INTO `volume` VALUES ('19', '10', '0.478');
INSERT INTO `volume` VALUES ('19', '10.2', '0.483');
INSERT INTO `volume` VALUES ('19', '10.4', '0.487');
INSERT INTO `volume` VALUES ('19', '10.6', '0.501');
INSERT INTO `volume` VALUES ('19', '10.8', '0.514');
INSERT INTO `volume` VALUES ('19', '11', '0.528');
INSERT INTO `volume` VALUES ('19', '11.2', '0.542');
INSERT INTO `volume` VALUES ('19', '11.4', '0.556');
INSERT INTO `volume` VALUES ('19', '11.6', '0.571');
INSERT INTO `volume` VALUES ('19', '11.8', '0.585');
INSERT INTO `volume` VALUES ('19', '12', '0.6');
INSERT INTO `volume` VALUES ('19', '12.2', '0.615');
INSERT INTO `volume` VALUES ('19', '12.4', '0.63');
INSERT INTO `volume` VALUES ('19', '12.6', '0.645');
INSERT INTO `volume` VALUES ('19', '12.8', '0.661');
INSERT INTO `volume` VALUES ('19', '13', '0.676');
INSERT INTO `volume` VALUES ('19', '13.2', '0.692');
INSERT INTO `volume` VALUES ('19', '13.4', '0.708');
INSERT INTO `volume` VALUES ('19', '13.6', '0.724');
INSERT INTO `volume` VALUES ('19', '13.8', '0.741');
INSERT INTO `volume` VALUES ('19', '14', '0.757');
INSERT INTO `volume` VALUES ('20', '2', '0.072');
INSERT INTO `volume` VALUES ('20', '2.2', '0.08');
INSERT INTO `volume` VALUES ('20', '2.4', '0.088');
INSERT INTO `volume` VALUES ('20', '2.6', '0.097');
INSERT INTO `volume` VALUES ('20', '2.8', '0.105');
INSERT INTO `volume` VALUES ('20', '3', '0.114');
INSERT INTO `volume` VALUES ('20', '3.2', '0.123');
INSERT INTO `volume` VALUES ('20', '3.4', '0.132');
INSERT INTO `volume` VALUES ('20', '3.6', '0.141');
INSERT INTO `volume` VALUES ('20', '3.8', '0.151');
INSERT INTO `volume` VALUES ('20', '4', '0.16');
INSERT INTO `volume` VALUES ('20', '4.2', '1.17');
INSERT INTO `volume` VALUES ('20', '4.4', '0.18');
INSERT INTO `volume` VALUES ('20', '4.6', '0.19');
INSERT INTO `volume` VALUES ('20', '4.8', '0.2');
INSERT INTO `volume` VALUES ('20', '5', '0.21');
INSERT INTO `volume` VALUES ('20', '5.2', '0.221');
INSERT INTO `volume` VALUES ('20', '5.4', '0.231');
INSERT INTO `volume` VALUES ('20', '5.6', '0.242');
INSERT INTO `volume` VALUES ('20', '5.8', '0.253');
INSERT INTO `volume` VALUES ('20', '6', '0.264');
INSERT INTO `volume` VALUES ('20', '6.2', '0.275');
INSERT INTO `volume` VALUES ('20', '6.4', '0.286');
INSERT INTO `volume` VALUES ('20', '6.6', '0.298');
INSERT INTO `volume` VALUES ('20', '6.8', '0.309');
INSERT INTO `volume` VALUES ('20', '7', '0.321');
INSERT INTO `volume` VALUES ('20', '7.2', '0.333');
INSERT INTO `volume` VALUES ('20', '7.4', '0.345');
INSERT INTO `volume` VALUES ('20', '7.6', '0.358');
INSERT INTO `volume` VALUES ('20', '7.8', '0.37');
INSERT INTO `volume` VALUES ('20', '8', '0.383');
INSERT INTO `volume` VALUES ('20', '8.2', '0.395');
INSERT INTO `volume` VALUES ('20', '8.4', '0.408');
INSERT INTO `volume` VALUES ('20', '8.6', '0.422');
INSERT INTO `volume` VALUES ('20', '8.8', '0.435');
INSERT INTO `volume` VALUES ('20', '9', '0.448');
INSERT INTO `volume` VALUES ('20', '9.2', '0.462');
INSERT INTO `volume` VALUES ('20', '9.4', '0.476');
INSERT INTO `volume` VALUES ('20', '9.6', '0.49');
INSERT INTO `volume` VALUES ('20', '9.8', '0.504');
INSERT INTO `volume` VALUES ('20', '10', '0.519');
INSERT INTO `volume` VALUES ('20', '10.2', '0.524');
INSERT INTO `volume` VALUES ('20', '10.4', '0.528');
INSERT INTO `volume` VALUES ('20', '10.6', '0.513');
INSERT INTO `volume` VALUES ('20', '10.8', '0.557');
INSERT INTO `volume` VALUES ('20', '11', '0.572');
INSERT INTO `volume` VALUES ('20', '11.2', '0.587');
INSERT INTO `volume` VALUES ('20', '11.4', '0.602');
INSERT INTO `volume` VALUES ('20', '11.6', '0.618');
INSERT INTO `volume` VALUES ('20', '11.8', '0.633');
INSERT INTO `volume` VALUES ('20', '12', '0.649');
INSERT INTO `volume` VALUES ('20', '12.2', '0.665');
INSERT INTO `volume` VALUES ('20', '12.4', '0.681');
INSERT INTO `volume` VALUES ('20', '12.6', '0.697');
INSERT INTO `volume` VALUES ('20', '12.8', '0.714');
INSERT INTO `volume` VALUES ('20', '13', '0.73');
INSERT INTO `volume` VALUES ('20', '13.2', '0.747');
INSERT INTO `volume` VALUES ('20', '13.4', '0.764');
INSERT INTO `volume` VALUES ('20', '13.6', '0.781');
INSERT INTO `volume` VALUES ('20', '13.8', '0.799');
INSERT INTO `volume` VALUES ('20', '14', '0.816');
INSERT INTO `volume` VALUES ('21', '2', '0.079');
INSERT INTO `volume` VALUES ('21', '2.2', '0.088');
INSERT INTO `volume` VALUES ('21', '2.4', '0.097');
INSERT INTO `volume` VALUES ('21', '2.6', '0.106');
INSERT INTO `volume` VALUES ('21', '2.8', '0.116');
INSERT INTO `volume` VALUES ('21', '3', '0.125');
INSERT INTO `volume` VALUES ('21', '3.2', '0.135');
INSERT INTO `volume` VALUES ('21', '3.4', '0.145');
INSERT INTO `volume` VALUES ('21', '3.6', '0.155');
INSERT INTO `volume` VALUES ('21', '3.8', '0.165');
INSERT INTO `volume` VALUES ('21', '4', '0.175');
INSERT INTO `volume` VALUES ('21', '4.2', '0.186');
INSERT INTO `volume` VALUES ('21', '4.4', '0.197');
INSERT INTO `volume` VALUES ('21', '4.6', '0.207');
INSERT INTO `volume` VALUES ('21', '4.8', '0.218');
INSERT INTO `volume` VALUES ('21', '5', '0.23');
INSERT INTO `volume` VALUES ('21', '5.2', '0.241');
INSERT INTO `volume` VALUES ('21', '5.4', '0.252');
INSERT INTO `volume` VALUES ('21', '5.6', '0.264');
INSERT INTO `volume` VALUES ('21', '5.8', '0.276');
INSERT INTO `volume` VALUES ('21', '6', '0.288');
INSERT INTO `volume` VALUES ('21', '6.2', '0.3');
INSERT INTO `volume` VALUES ('21', '6.4', '0.312');
INSERT INTO `volume` VALUES ('21', '6.6', '0.324');
INSERT INTO `volume` VALUES ('21', '6.8', '0.337');
INSERT INTO `volume` VALUES ('21', '7', '0.35');
INSERT INTO `volume` VALUES ('21', '7.2', '0.362');
INSERT INTO `volume` VALUES ('21', '7.4', '0.375');
INSERT INTO `volume` VALUES ('21', '7.6', '0.389');
INSERT INTO `volume` VALUES ('21', '7.8', '0.402');
INSERT INTO `volume` VALUES ('21', '8', '0.416');
INSERT INTO `volume` VALUES ('21', '8.2', '0.429');
INSERT INTO `volume` VALUES ('21', '8.4', '0.443');
INSERT INTO `volume` VALUES ('21', '8.6', '0.457');
INSERT INTO `volume` VALUES ('21', '8.8', '0.471');
INSERT INTO `volume` VALUES ('21', '9', '0.486');
INSERT INTO `volume` VALUES ('21', '9.2', '0.5');
INSERT INTO `volume` VALUES ('21', '9.4', '0.515');
INSERT INTO `volume` VALUES ('21', '9.6', '0.53');
INSERT INTO `volume` VALUES ('21', '9.8', '0.545');
INSERT INTO `volume` VALUES ('21', '10', '0.561');
INSERT INTO `volume` VALUES ('21', '10.2', '0.566');
INSERT INTO `volume` VALUES ('21', '10.4', '0.571');
INSERT INTO `volume` VALUES ('21', '10.6', '0.589');
INSERT INTO `volume` VALUES ('21', '10.8', '0.602');
INSERT INTO `volume` VALUES ('21', '11', '0.618');
INSERT INTO `volume` VALUES ('21', '11.2', '0.634');
INSERT INTO `volume` VALUES ('21', '11.4', '0.65');
INSERT INTO `volume` VALUES ('21', '11.6', '0.667');
INSERT INTO `volume` VALUES ('21', '11.8', '0.683');
INSERT INTO `volume` VALUES ('21', '12', '0.7');
INSERT INTO `volume` VALUES ('21', '12.2', '0.717');
INSERT INTO `volume` VALUES ('21', '12.4', '0.734');
INSERT INTO `volume` VALUES ('21', '12.6', '0.751');
INSERT INTO `volume` VALUES ('21', '12.8', '0.769');
INSERT INTO `volume` VALUES ('21', '13', '0.787');
INSERT INTO `volume` VALUES ('21', '13.2', '0.804');
INSERT INTO `volume` VALUES ('21', '13.4', '0.823');
INSERT INTO `volume` VALUES ('21', '13.6', '0.841');
INSERT INTO `volume` VALUES ('21', '13.8', '0.859');
INSERT INTO `volume` VALUES ('21', '14', '0.878');
INSERT INTO `volume` VALUES ('22', '2', '0.086');
INSERT INTO `volume` VALUES ('22', '2.2', '0.096');
INSERT INTO `volume` VALUES ('22', '2.4', '0.106');
INSERT INTO `volume` VALUES ('22', '2.6', '0.116');
INSERT INTO `volume` VALUES ('22', '2.8', '0.126');
INSERT INTO `volume` VALUES ('22', '3', '0.137');
INSERT INTO `volume` VALUES ('22', '3.2', '0.147');
INSERT INTO `volume` VALUES ('22', '3.4', '0.158');
INSERT INTO `volume` VALUES ('22', '3.6', '0.169');
INSERT INTO `volume` VALUES ('22', '3.8', '0.18');
INSERT INTO `volume` VALUES ('22', '4', '0.191');
INSERT INTO `volume` VALUES ('22', '4.2', '0.203');
INSERT INTO `volume` VALUES ('22', '4.4', '0.214');
INSERT INTO `volume` VALUES ('22', '4.6', '0.226');
INSERT INTO `volume` VALUES ('22', '4.8', '0.238');
INSERT INTO `volume` VALUES ('22', '5', '0.25');
INSERT INTO `volume` VALUES ('22', '5.2', '0.262');
INSERT INTO `volume` VALUES ('22', '5.4', '0.275');
INSERT INTO `volume` VALUES ('22', '5.6', '0.287');
INSERT INTO `volume` VALUES ('22', '5.8', '0.3');
INSERT INTO `volume` VALUES ('22', '6', '0.313');
INSERT INTO `volume` VALUES ('22', '6.2', '0.326');
INSERT INTO `volume` VALUES ('22', '6.4', '0.339');
INSERT INTO `volume` VALUES ('22', '6.6', '0.352');
INSERT INTO `volume` VALUES ('22', '6.8', '0.365');
INSERT INTO `volume` VALUES ('22', '7', '0.379');
INSERT INTO `volume` VALUES ('22', '7.2', '0.393');
INSERT INTO `volume` VALUES ('22', '7.4', '0.407');
INSERT INTO `volume` VALUES ('22', '7.6', '0.421');
INSERT INTO `volume` VALUES ('22', '7.8', '0.435');
INSERT INTO `volume` VALUES ('22', '8', '0.45');
INSERT INTO `volume` VALUES ('22', '8.2', '0.464');
INSERT INTO `volume` VALUES ('22', '8.4', '0.479');
INSERT INTO `volume` VALUES ('22', '8.6', '0.494');
INSERT INTO `volume` VALUES ('22', '8.8', '0.509');
INSERT INTO `volume` VALUES ('22', '9', '0.525');
INSERT INTO `volume` VALUES ('22', '9.2', '0.54');
INSERT INTO `volume` VALUES ('22', '9.4', '0.556');
INSERT INTO `volume` VALUES ('22', '9.6', '0.572');
INSERT INTO `volume` VALUES ('22', '9.8', '0.588');
INSERT INTO `volume` VALUES ('22', '10', '0.604');
INSERT INTO `volume` VALUES ('22', '10.2', '0.61');
INSERT INTO `volume` VALUES ('22', '10.4', '0.616');
INSERT INTO `volume` VALUES ('22', '10.6', '0.632');
INSERT INTO `volume` VALUES ('22', '10.8', '0.649');
INSERT INTO `volume` VALUES ('22', '11', '0.666');
INSERT INTO `volume` VALUES ('22', '11.2', '0.683');
INSERT INTO `volume` VALUES ('22', '11.4', '0.7');
INSERT INTO `volume` VALUES ('22', '11.6', '0.717');
INSERT INTO `volume` VALUES ('22', '11.8', '0.735');
INSERT INTO `volume` VALUES ('22', '12', '0.753');
INSERT INTO `volume` VALUES ('22', '12.2', '0.771');
INSERT INTO `volume` VALUES ('22', '12.4', '0.789');
INSERT INTO `volume` VALUES ('22', '12.6', '0.807');
INSERT INTO `volume` VALUES ('22', '12.8', '0.826');
INSERT INTO `volume` VALUES ('22', '13', '0.845');
INSERT INTO `volume` VALUES ('22', '13.2', '0.864');
INSERT INTO `volume` VALUES ('22', '13.4', '0.883');
INSERT INTO `volume` VALUES ('22', '13.6', '0.902');
INSERT INTO `volume` VALUES ('22', '13.8', '0.922');
INSERT INTO `volume` VALUES ('22', '14', '0.942');
INSERT INTO `volume` VALUES ('23', '2', '0.094');
INSERT INTO `volume` VALUES ('23', '2.2', '0.105');
INSERT INTO `volume` VALUES ('23', '2.4', '0.115');
INSERT INTO `volume` VALUES ('23', '2.6', '0.126');
INSERT INTO `volume` VALUES ('23', '2.8', '0.138');
INSERT INTO `volume` VALUES ('23', '3', '0.149');
INSERT INTO `volume` VALUES ('23', '3.2', '0.16');
INSERT INTO `volume` VALUES ('23', '3.4', '0.172');
INSERT INTO `volume` VALUES ('23', '3.6', '0.184');
INSERT INTO `volume` VALUES ('23', '3.8', '0.196');
INSERT INTO `volume` VALUES ('23', '4', '0.208');
INSERT INTO `volume` VALUES ('23', '4.2', '0.22');
INSERT INTO `volume` VALUES ('23', '4.4', '0.233');
INSERT INTO `volume` VALUES ('23', '4.6', '0.245');
INSERT INTO `volume` VALUES ('23', '4.8', '0.258');
INSERT INTO `volume` VALUES ('23', '5', '0.271');
INSERT INTO `volume` VALUES ('23', '5.2', '0.284');
INSERT INTO `volume` VALUES ('23', '5.4', '0.298');
INSERT INTO `volume` VALUES ('23', '5.6', '0.311');
INSERT INTO `volume` VALUES ('23', '5.8', '0.325');
INSERT INTO `volume` VALUES ('23', '6', '0.339');
INSERT INTO `volume` VALUES ('23', '6.2', '0.352');
INSERT INTO `volume` VALUES ('23', '6.4', '0.367');
INSERT INTO `volume` VALUES ('23', '6.6', '0.381');
INSERT INTO `volume` VALUES ('23', '6.8', '0.395');
INSERT INTO `volume` VALUES ('23', '7', '0.41');
INSERT INTO `volume` VALUES ('23', '7.2', '0.425');
INSERT INTO `volume` VALUES ('23', '7.4', '0.439');
INSERT INTO `volume` VALUES ('23', '7.6', '0.455');
INSERT INTO `volume` VALUES ('23', '7.8', '0.47');
INSERT INTO `volume` VALUES ('23', '8', '0.485');
INSERT INTO `volume` VALUES ('23', '8.2', '0.501');
INSERT INTO `volume` VALUES ('23', '8.4', '0.517');
INSERT INTO `volume` VALUES ('23', '8.6', '0.532');
INSERT INTO `volume` VALUES ('23', '8.8', '0.549');
INSERT INTO `volume` VALUES ('23', '9', '0.565');
INSERT INTO `volume` VALUES ('23', '9.2', '0.581');
INSERT INTO `volume` VALUES ('23', '9.4', '0.598');
INSERT INTO `volume` VALUES ('23', '9.6', '0.615');
INSERT INTO `volume` VALUES ('23', '9.8', '0.632');
INSERT INTO `volume` VALUES ('23', '10', '0.65');
INSERT INTO `volume` VALUES ('23', '10.2', '0.656');
INSERT INTO `volume` VALUES ('23', '10.4', '0.662');
INSERT INTO `volume` VALUES ('23', '10.6', '0.679');
INSERT INTO `volume` VALUES ('23', '10.8', '0.697');
INSERT INTO `volume` VALUES ('23', '11', '0.715');
INSERT INTO `volume` VALUES ('23', '11.2', '0.733');
INSERT INTO `volume` VALUES ('23', '11.4', '0.751');
INSERT INTO `volume` VALUES ('23', '11.6', '0.77');
INSERT INTO `volume` VALUES ('23', '11.8', '0.788');
INSERT INTO `volume` VALUES ('23', '12', '0.807');
INSERT INTO `volume` VALUES ('23', '12.2', '0.826');
INSERT INTO `volume` VALUES ('23', '12.4', '0.846');
INSERT INTO `volume` VALUES ('23', '12.6', '0.865');
INSERT INTO `volume` VALUES ('23', '12.8', '0.885');
INSERT INTO `volume` VALUES ('23', '13', '0.905');
INSERT INTO `volume` VALUES ('23', '13.2', '0.925');
INSERT INTO `volume` VALUES ('23', '13.4', '0.946');
INSERT INTO `volume` VALUES ('23', '13.6', '0.966');
INSERT INTO `volume` VALUES ('23', '13.8', '0.987');
INSERT INTO `volume` VALUES ('23', '14', '1.008');
INSERT INTO `volume` VALUES ('24', '2', '0.102');
INSERT INTO `volume` VALUES ('24', '2.2', '0.114');
INSERT INTO `volume` VALUES ('24', '2.4', '0.125');
INSERT INTO `volume` VALUES ('24', '2.6', '0.137');
INSERT INTO `volume` VALUES ('24', '2.8', '0.149');
INSERT INTO `volume` VALUES ('24', '3', '0.161');
INSERT INTO `volume` VALUES ('24', '3.2', '0.174');
INSERT INTO `volume` VALUES ('24', '3.4', '0.186');
INSERT INTO `volume` VALUES ('24', '3.6', '0.199');
INSERT INTO `volume` VALUES ('24', '3.8', '0.212');
INSERT INTO `volume` VALUES ('24', '4', '0.225');
INSERT INTO `volume` VALUES ('24', '4.2', '0.239');
INSERT INTO `volume` VALUES ('24', '4.4', '0.252');
INSERT INTO `volume` VALUES ('24', '4.6', '0.266');
INSERT INTO `volume` VALUES ('24', '4.8', '0.279');
INSERT INTO `volume` VALUES ('24', '5', '0.293');
INSERT INTO `volume` VALUES ('24', '5.2', '0.308');
INSERT INTO `volume` VALUES ('24', '5.4', '0.322');
INSERT INTO `volume` VALUES ('24', '5.6', '0.336');
INSERT INTO `volume` VALUES ('24', '5.8', '0.351');
INSERT INTO `volume` VALUES ('24', '6', '0.366');
INSERT INTO `volume` VALUES ('24', '6.2', '0.38');
INSERT INTO `volume` VALUES ('24', '6.4', '0.396');
INSERT INTO `volume` VALUES ('24', '6.6', '0.411');
INSERT INTO `volume` VALUES ('24', '6.8', '0.426');
INSERT INTO `volume` VALUES ('24', '7', '0.442');
INSERT INTO `volume` VALUES ('24', '7.2', '0.457');
INSERT INTO `volume` VALUES ('24', '7.4', '0.473');
INSERT INTO `volume` VALUES ('24', '7.6', '0.489');
INSERT INTO `volume` VALUES ('24', '7.8', '0.506');
INSERT INTO `volume` VALUES ('24', '8', '0.522');
INSERT INTO `volume` VALUES ('24', '8.2', '0.539');
INSERT INTO `volume` VALUES ('24', '8.4', '0.555');
INSERT INTO `volume` VALUES ('24', '8.6', '0.572');
INSERT INTO `volume` VALUES ('24', '8.8', '0.589');
INSERT INTO `volume` VALUES ('24', '9', '0.607');
INSERT INTO `volume` VALUES ('24', '9.2', '0.624');
INSERT INTO `volume` VALUES ('24', '9.4', '0.642');
INSERT INTO `volume` VALUES ('24', '9.6', '0.66');
INSERT INTO `volume` VALUES ('24', '9.8', '0.678');
INSERT INTO `volume` VALUES ('24', '10', '0.697');
INSERT INTO `volume` VALUES ('24', '10.2', '0.703');
INSERT INTO `volume` VALUES ('24', '10.4', '0.709');
INSERT INTO `volume` VALUES ('24', '10.6', '0.728');
INSERT INTO `volume` VALUES ('24', '10.8', '0.747');
INSERT INTO `volume` VALUES ('24', '11', '0.766');
INSERT INTO `volume` VALUES ('24', '11.2', '0.785');
INSERT INTO `volume` VALUES ('24', '11.4', '0.804');
INSERT INTO `volume` VALUES ('24', '11.6', '0.824');
INSERT INTO `volume` VALUES ('24', '11.8', '0.844');
INSERT INTO `volume` VALUES ('24', '12', '0.864');
INSERT INTO `volume` VALUES ('24', '12.2', '0.884');
INSERT INTO `volume` VALUES ('24', '12.4', '0.905');
INSERT INTO `volume` VALUES ('24', '12.6', '0.925');
INSERT INTO `volume` VALUES ('24', '12.8', '0.946');
INSERT INTO `volume` VALUES ('24', '13', '0.967');
INSERT INTO `volume` VALUES ('24', '13.2', '0.989');
INSERT INTO `volume` VALUES ('24', '13.4', '1.01');
INSERT INTO `volume` VALUES ('24', '13.6', '1.032');
INSERT INTO `volume` VALUES ('24', '13.8', '1.054');
INSERT INTO `volume` VALUES ('24', '14', '1.076');
INSERT INTO `volume` VALUES ('25', '2', '0.111');
INSERT INTO `volume` VALUES ('25', '2.2', '0.123');
INSERT INTO `volume` VALUES ('25', '2.4', '0.136');
INSERT INTO `volume` VALUES ('25', '2.6', '0.149');
INSERT INTO `volume` VALUES ('25', '2.8', '0.161');
INSERT INTO `volume` VALUES ('25', '3', '0.175');
INSERT INTO `volume` VALUES ('25', '3.2', '0.188');
INSERT INTO `volume` VALUES ('25', '3.4', '0.202');
INSERT INTO `volume` VALUES ('25', '3.6', '0.215');
INSERT INTO `volume` VALUES ('25', '3.8', '0.229');
INSERT INTO `volume` VALUES ('25', '4', '0.243');
INSERT INTO `volume` VALUES ('25', '4.2', '0.258');
INSERT INTO `volume` VALUES ('25', '4.4', '0.272');
INSERT INTO `volume` VALUES ('25', '4.6', '0.287');
INSERT INTO `volume` VALUES ('25', '4.8', '0.301');
INSERT INTO `volume` VALUES ('25', '5', '0.316');
INSERT INTO `volume` VALUES ('25', '5.2', '0.332');
INSERT INTO `volume` VALUES ('25', '5.4', '0.347');
INSERT INTO `volume` VALUES ('25', '5.6', '0.362');
INSERT INTO `volume` VALUES ('25', '5.8', '0.378');
INSERT INTO `volume` VALUES ('25', '6', '0.394');
INSERT INTO `volume` VALUES ('25', '6.2', '0.41');
INSERT INTO `volume` VALUES ('25', '6.4', '0.426');
INSERT INTO `volume` VALUES ('25', '6.6', '0.442');
INSERT INTO `volume` VALUES ('25', '6.8', '0.458');
INSERT INTO `volume` VALUES ('25', '7', '0.475');
INSERT INTO `volume` VALUES ('25', '7.2', '0.492');
INSERT INTO `volume` VALUES ('25', '7.4', '0.508');
INSERT INTO `volume` VALUES ('25', '7.6', '0.526');
INSERT INTO `volume` VALUES ('25', '7.8', '0.543');
INSERT INTO `volume` VALUES ('25', '8', '0.56');
INSERT INTO `volume` VALUES ('25', '8.2', '0.578');
INSERT INTO `volume` VALUES ('25', '8.4', '0.596');
INSERT INTO `volume` VALUES ('25', '8.6', '0.614');
INSERT INTO `volume` VALUES ('25', '8.8', '0.632');
INSERT INTO `volume` VALUES ('25', '9', '0.65');
INSERT INTO `volume` VALUES ('25', '9.2', '0.669');
INSERT INTO `volume` VALUES ('25', '9.4', '0.687');
INSERT INTO `volume` VALUES ('25', '9.6', '0.706');
INSERT INTO `volume` VALUES ('25', '9.8', '0.726');
INSERT INTO `volume` VALUES ('25', '10', '0.745');
INSERT INTO `volume` VALUES ('25', '10.2', '0.752');
INSERT INTO `volume` VALUES ('25', '10.4', '0.759');
INSERT INTO `volume` VALUES ('25', '10.6', '0.779');
INSERT INTO `volume` VALUES ('25', '10.8', '0.798');
INSERT INTO `volume` VALUES ('25', '11', '0.819');
INSERT INTO `volume` VALUES ('25', '11.2', '0.839');
INSERT INTO `volume` VALUES ('25', '11.4', '0.86');
INSERT INTO `volume` VALUES ('25', '11.6', '0.88');
INSERT INTO `volume` VALUES ('25', '11.8', '0.901');
INSERT INTO `volume` VALUES ('25', '12', '0.923');
INSERT INTO `volume` VALUES ('25', '12.2', '0.944');
INSERT INTO `volume` VALUES ('25', '12.4', '0.966');
INSERT INTO `volume` VALUES ('25', '12.6', '0.988');
INSERT INTO `volume` VALUES ('25', '12.8', '1.01');
INSERT INTO `volume` VALUES ('25', '13', '1.032');
INSERT INTO `volume` VALUES ('25', '13.2', '1.054');
INSERT INTO `volume` VALUES ('25', '13.4', '1.077');
INSERT INTO `volume` VALUES ('25', '13.6', '1.1');
INSERT INTO `volume` VALUES ('25', '13.8', '1.123');
INSERT INTO `volume` VALUES ('25', '14', '1.147');
INSERT INTO `volume` VALUES ('26', '2', '0.12');
INSERT INTO `volume` VALUES ('26', '2.2', '0.133');
INSERT INTO `volume` VALUES ('26', '2.4', '0.146');
INSERT INTO `volume` VALUES ('26', '2.6', '0.16');
INSERT INTO `volume` VALUES ('26', '2.8', '0.174');
INSERT INTO `volume` VALUES ('26', '3', '0.188');
INSERT INTO `volume` VALUES ('26', '3.2', '0.203');
INSERT INTO `volume` VALUES ('26', '3.4', '0.217');
INSERT INTO `volume` VALUES ('26', '3.6', '0.232');
INSERT INTO `volume` VALUES ('26', '3.8', '0.247');
INSERT INTO `volume` VALUES ('26', '4', '0.262');
INSERT INTO `volume` VALUES ('26', '4.2', '0.277');
INSERT INTO `volume` VALUES ('26', '4.4', '0.293');
INSERT INTO `volume` VALUES ('26', '4.6', '0.308');
INSERT INTO `volume` VALUES ('26', '4.8', '0.324');
INSERT INTO `volume` VALUES ('26', '5', '0.34');
INSERT INTO `volume` VALUES ('26', '5.2', '0.356');
INSERT INTO `volume` VALUES ('26', '5.4', '0.373');
INSERT INTO `volume` VALUES ('26', '5.6', '0.389');
INSERT INTO `volume` VALUES ('26', '5.8', '0.406');
INSERT INTO `volume` VALUES ('26', '6', '0.423');
INSERT INTO `volume` VALUES ('26', '6.2', '0.44');
INSERT INTO `volume` VALUES ('26', '6.4', '0.457');
INSERT INTO `volume` VALUES ('26', '6.6', '0.474');
INSERT INTO `volume` VALUES ('26', '6.8', '0.491');
INSERT INTO `volume` VALUES ('26', '7', '0.509');
INSERT INTO `volume` VALUES ('26', '7.2', '0.527');
INSERT INTO `volume` VALUES ('26', '7.4', '0.545');
INSERT INTO `volume` VALUES ('26', '7.6', '0.563');
INSERT INTO `volume` VALUES ('26', '7.8', '0.581');
INSERT INTO `volume` VALUES ('26', '8', '0.6');
INSERT INTO `volume` VALUES ('26', '8.2', '0.618');
INSERT INTO `volume` VALUES ('26', '8.4', '0.637');
INSERT INTO `volume` VALUES ('26', '8.6', '0.656');
INSERT INTO `volume` VALUES ('26', '8.8', '0.676');
INSERT INTO `volume` VALUES ('26', '9', '0.695');
INSERT INTO `volume` VALUES ('26', '9.2', '0.715');
INSERT INTO `volume` VALUES ('26', '9.4', '0.734');
INSERT INTO `volume` VALUES ('26', '9.6', '0.754');
INSERT INTO `volume` VALUES ('26', '9.8', '0.775');
INSERT INTO `volume` VALUES ('26', '10', '0.795');
INSERT INTO `volume` VALUES ('26', '10.2', '0.803');
INSERT INTO `volume` VALUES ('26', '10.4', '0.81');
INSERT INTO `volume` VALUES ('26', '10.6', '0.831');
INSERT INTO `volume` VALUES ('26', '10.8', '0.852');
INSERT INTO `volume` VALUES ('26', '11', '0.873');
INSERT INTO `volume` VALUES ('26', '11.2', '0.895');
INSERT INTO `volume` VALUES ('26', '11.4', '0.916');
INSERT INTO `volume` VALUES ('26', '11.6', '0.938');
INSERT INTO `volume` VALUES ('26', '11.8', '0.961');
INSERT INTO `volume` VALUES ('26', '12', '0.983');
INSERT INTO `volume` VALUES ('26', '12.2', '1.006');
INSERT INTO `volume` VALUES ('26', '12.4', '1.029');
INSERT INTO `volume` VALUES ('26', '12.6', '1.052');
INSERT INTO `volume` VALUES ('26', '12.8', '1.075');
INSERT INTO `volume` VALUES ('26', '13', '1.099');
INSERT INTO `volume` VALUES ('26', '13.2', '1.122');
INSERT INTO `volume` VALUES ('26', '13.4', '1.146');
INSERT INTO `volume` VALUES ('26', '13.6', '1.171');
INSERT INTO `volume` VALUES ('26', '13.8', '1.195');
INSERT INTO `volume` VALUES ('26', '14', '1.22');
INSERT INTO `volume` VALUES ('27', '2', '0.129');
INSERT INTO `volume` VALUES ('27', '2.2', '0.143');
INSERT INTO `volume` VALUES ('27', '2.4', '0.158');
INSERT INTO `volume` VALUES ('27', '2.6', '0.172');
INSERT INTO `volume` VALUES ('27', '2.8', '0.187');
INSERT INTO `volume` VALUES ('27', '3', '0.203');
INSERT INTO `volume` VALUES ('27', '3.2', '0.218');
INSERT INTO `volume` VALUES ('27', '3.4', '0.233');
INSERT INTO `volume` VALUES ('27', '3.6', '0.249');
INSERT INTO `volume` VALUES ('27', '3.8', '0.265');
INSERT INTO `volume` VALUES ('27', '4', '0.281');
INSERT INTO `volume` VALUES ('27', '4.2', '0.298');
INSERT INTO `volume` VALUES ('27', '4.4', '0.314');
INSERT INTO `volume` VALUES ('27', '4.6', '0.331');
INSERT INTO `volume` VALUES ('27', '4.8', '0.348');
INSERT INTO `volume` VALUES ('27', '5', '0.365');
INSERT INTO `volume` VALUES ('27', '5.2', '0.382');
INSERT INTO `volume` VALUES ('27', '5.4', '0.4');
INSERT INTO `volume` VALUES ('27', '5.6', '0.417');
INSERT INTO `volume` VALUES ('27', '5.8', '0.435');
INSERT INTO `volume` VALUES ('27', '6', '0.453');
INSERT INTO `volume` VALUES ('27', '6.2', '0.471');
INSERT INTO `volume` VALUES ('27', '6.4', '0.489');
INSERT INTO `volume` VALUES ('27', '6.6', '0.507');
INSERT INTO `volume` VALUES ('27', '6.8', '0.526');
INSERT INTO `volume` VALUES ('27', '7', '0.545');
INSERT INTO `volume` VALUES ('27', '7.2', '0.563');
INSERT INTO `volume` VALUES ('27', '7.4', '0.583');
INSERT INTO `volume` VALUES ('27', '7.6', '0.602');
INSERT INTO `volume` VALUES ('27', '7.8', '0.621');
INSERT INTO `volume` VALUES ('27', '8', '0.641');
INSERT INTO `volume` VALUES ('27', '8.2', '0.66');
INSERT INTO `volume` VALUES ('27', '8.4', '0.68');
INSERT INTO `volume` VALUES ('27', '8.6', '0.7');
INSERT INTO `volume` VALUES ('27', '8.8', '0.721');
INSERT INTO `volume` VALUES ('27', '9', '0.741');
INSERT INTO `volume` VALUES ('27', '9.2', '0.762');
INSERT INTO `volume` VALUES ('27', '9.4', '0.783');
INSERT INTO `volume` VALUES ('27', '9.6', '0.804');
INSERT INTO `volume` VALUES ('27', '9.8', '0.825');
INSERT INTO `volume` VALUES ('27', '10', '0.847');
INSERT INTO `volume` VALUES ('27', '10.2', '0.855');
INSERT INTO `volume` VALUES ('27', '10.4', '0.863');
INSERT INTO `volume` VALUES ('27', '10.6', '0.885');
INSERT INTO `volume` VALUES ('27', '10.8', '0.907');
INSERT INTO `volume` VALUES ('27', '11', '0.93');
INSERT INTO `volume` VALUES ('27', '11.2', '0.952');
INSERT INTO `volume` VALUES ('27', '11.4', '0.975');
INSERT INTO `volume` VALUES ('27', '11.6', '0.998');
INSERT INTO `volume` VALUES ('27', '11.8', '1.022');
INSERT INTO `volume` VALUES ('27', '12', '1.045');
INSERT INTO `volume` VALUES ('27', '12.2', '1.069');
INSERT INTO `volume` VALUES ('27', '12.4', '1.093');
INSERT INTO `volume` VALUES ('27', '12.6', '1.118');
INSERT INTO `volume` VALUES ('27', '12.8', '1.142');
INSERT INTO `volume` VALUES ('27', '13', '1.167');
INSERT INTO `volume` VALUES ('27', '13.2', '1.192');
INSERT INTO `volume` VALUES ('27', '13.4', '1.217');
INSERT INTO `volume` VALUES ('27', '13.6', '1.243');
INSERT INTO `volume` VALUES ('27', '13.8', '1.269');
INSERT INTO `volume` VALUES ('27', '14', '1.295');
INSERT INTO `volume` VALUES ('28', '2', '0.138');
INSERT INTO `volume` VALUES ('28', '2.2', '0.154');
INSERT INTO `volume` VALUES ('28', '2.4', '0.169');
INSERT INTO `volume` VALUES ('28', '2.6', '0.185');
INSERT INTO `volume` VALUES ('28', '2.8', '0.201');
INSERT INTO `volume` VALUES ('28', '3', '0.217');
INSERT INTO `volume` VALUES ('28', '3.2', '0.234');
INSERT INTO `volume` VALUES ('28', '3.4', '0.25');
INSERT INTO `volume` VALUES ('28', '3.6', '0.267');
INSERT INTO `volume` VALUES ('28', '3.8', '0.284');
INSERT INTO `volume` VALUES ('28', '4', '0.302');
INSERT INTO `volume` VALUES ('28', '4.2', '0.319');
INSERT INTO `volume` VALUES ('28', '4.4', '0.337');
INSERT INTO `volume` VALUES ('28', '4.6', '0.354');
INSERT INTO `volume` VALUES ('28', '4.8', '0.372');
INSERT INTO `volume` VALUES ('28', '5', '0.391');
INSERT INTO `volume` VALUES ('28', '5.2', '0.409');
INSERT INTO `volume` VALUES ('28', '5.4', '0.427');
INSERT INTO `volume` VALUES ('28', '5.6', '0.446');
INSERT INTO `volume` VALUES ('28', '5.8', '0.465');
INSERT INTO `volume` VALUES ('28', '6', '0.484');
INSERT INTO `volume` VALUES ('28', '6.2', '0.503');
INSERT INTO `volume` VALUES ('28', '6.4', '0.522');
INSERT INTO `volume` VALUES ('28', '6.6', '0.542');
INSERT INTO `volume` VALUES ('28', '6.8', '0.561');
INSERT INTO `volume` VALUES ('28', '7', '0.581');
INSERT INTO `volume` VALUES ('28', '7.2', '0.601');
INSERT INTO `volume` VALUES ('28', '7.4', '0.621');
INSERT INTO `volume` VALUES ('28', '7.6', '0.642');
INSERT INTO `volume` VALUES ('28', '7.8', '0.662');
INSERT INTO `volume` VALUES ('28', '8', '0.683');
INSERT INTO `volume` VALUES ('28', '8.2', '0.704');
INSERT INTO `volume` VALUES ('28', '8.4', '0.725');
INSERT INTO `volume` VALUES ('28', '8.6', '0.746');
INSERT INTO `volume` VALUES ('28', '8.8', '0.767');
INSERT INTO `volume` VALUES ('28', '9', '0.789');
INSERT INTO `volume` VALUES ('28', '9.2', '0.811');
INSERT INTO `volume` VALUES ('28', '9.4', '0.833');
INSERT INTO `volume` VALUES ('28', '9.6', '0.855');
INSERT INTO `volume` VALUES ('28', '9.8', '0.878');
INSERT INTO `volume` VALUES ('28', '10', '0.9');
INSERT INTO `volume` VALUES ('28', '10.2', '0.909');
INSERT INTO `volume` VALUES ('28', '10.4', '0.917');
INSERT INTO `volume` VALUES ('28', '10.6', '0.94');
INSERT INTO `volume` VALUES ('28', '10.8', '0.964');
INSERT INTO `volume` VALUES ('28', '11', '0.988');
INSERT INTO `volume` VALUES ('28', '11.2', '1.012');
INSERT INTO `volume` VALUES ('28', '11.4', '1.036');
INSERT INTO `volume` VALUES ('28', '11.6', '1.06');
INSERT INTO `volume` VALUES ('28', '11.8', '1.085');
INSERT INTO `volume` VALUES ('28', '12', '1.11');
INSERT INTO `volume` VALUES ('28', '12.2', '1.135');
INSERT INTO `volume` VALUES ('28', '12.4', '1.16');
INSERT INTO `volume` VALUES ('28', '12.6', '1.186');
INSERT INTO `volume` VALUES ('28', '12.8', '1.212');
INSERT INTO `volume` VALUES ('28', '13', '1.238');
INSERT INTO `volume` VALUES ('28', '13.2', '1.264');
INSERT INTO `volume` VALUES ('28', '13.4', '1.291');
INSERT INTO `volume` VALUES ('28', '13.6', '1.318');
INSERT INTO `volume` VALUES ('28', '13.8', '1.345');
INSERT INTO `volume` VALUES ('28', '14', '1.372');
INSERT INTO `volume` VALUES ('29', '2', '0.148');
INSERT INTO `volume` VALUES ('29', '2.2', '0.164');
INSERT INTO `volume` VALUES ('29', '2.4', '0.181');
INSERT INTO `volume` VALUES ('29', '2.6', '0.198');
INSERT INTO `volume` VALUES ('29', '2.8', '0.215');
INSERT INTO `volume` VALUES ('29', '3', '0.232');
INSERT INTO `volume` VALUES ('29', '3.2', '0.25');
INSERT INTO `volume` VALUES ('29', '3.4', '0.268');
INSERT INTO `volume` VALUES ('29', '3.6', '0.286');
INSERT INTO `volume` VALUES ('29', '3.8', '0.304');
INSERT INTO `volume` VALUES ('29', '4', '0.322');
INSERT INTO `volume` VALUES ('29', '4.2', '0.341');
INSERT INTO `volume` VALUES ('29', '4.4', '0.36');
INSERT INTO `volume` VALUES ('29', '4.6', '0.379');
INSERT INTO `volume` VALUES ('29', '4.8', '0.398');
INSERT INTO `volume` VALUES ('29', '5', '0.417');
INSERT INTO `volume` VALUES ('29', '5.2', '0.436');
INSERT INTO `volume` VALUES ('29', '5.4', '0.456');
INSERT INTO `volume` VALUES ('29', '5.6', '0.476');
INSERT INTO `volume` VALUES ('29', '5.8', '0.496');
INSERT INTO `volume` VALUES ('29', '6', '0.516');
INSERT INTO `volume` VALUES ('29', '6.2', '0.536');
INSERT INTO `volume` VALUES ('29', '6.4', '0.557');
INSERT INTO `volume` VALUES ('29', '6.6', '0.577');
INSERT INTO `volume` VALUES ('29', '6.8', '0.598');
INSERT INTO `volume` VALUES ('29', '7', '0.619');
INSERT INTO `volume` VALUES ('29', '7.2', '0.64');
INSERT INTO `volume` VALUES ('29', '7.4', '0.662');
INSERT INTO `volume` VALUES ('29', '7.6', '0.683');
INSERT INTO `volume` VALUES ('29', '7.8', '0.705');
INSERT INTO `volume` VALUES ('29', '8', '0.727');
INSERT INTO `volume` VALUES ('29', '8.2', '0.749');
INSERT INTO `volume` VALUES ('29', '8.4', '0.771');
INSERT INTO `volume` VALUES ('29', '8.6', '0.793');
INSERT INTO `volume` VALUES ('29', '8.8', '0.816');
INSERT INTO `volume` VALUES ('29', '9', '0.838');
INSERT INTO `volume` VALUES ('29', '9.2', '0.8612');
INSERT INTO `volume` VALUES ('29', '9.4', '0.885');
INSERT INTO `volume` VALUES ('29', '9.6', '0.908');
INSERT INTO `volume` VALUES ('29', '9.8', '0.932');
INSERT INTO `volume` VALUES ('29', '10', '0.956');
INSERT INTO `volume` VALUES ('29', '10.2', '0.965');
INSERT INTO `volume` VALUES ('29', '10.4', '0.973');
INSERT INTO `volume` VALUES ('29', '10.6', '0.998');
INSERT INTO `volume` VALUES ('29', '10.8', '1.022');
INSERT INTO `volume` VALUES ('29', '11', '1.047');
INSERT INTO `volume` VALUES ('29', '11.2', '1.073');
INSERT INTO `volume` VALUES ('29', '11.4', '1.098');
INSERT INTO `volume` VALUES ('29', '11.6', '1.124');
INSERT INTO `volume` VALUES ('29', '11.8', '1.15');
INSERT INTO `volume` VALUES ('29', '12', '1.176');
INSERT INTO `volume` VALUES ('29', '12.2', '1.202');
INSERT INTO `volume` VALUES ('29', '12.4', '1.229');
INSERT INTO `volume` VALUES ('29', '12.6', '1.256');
INSERT INTO `volume` VALUES ('29', '12.8', '1.283');
INSERT INTO `volume` VALUES ('29', '13', '1.311');
INSERT INTO `volume` VALUES ('29', '13.2', '1.338');
INSERT INTO `volume` VALUES ('29', '13.4', '1.366');
INSERT INTO `volume` VALUES ('29', '13.6', '1.394');
INSERT INTO `volume` VALUES ('29', '13.8', '1.423');
INSERT INTO `volume` VALUES ('29', '14', '1.452');
INSERT INTO `volume` VALUES ('30', '2', '0.158');
INSERT INTO `volume` VALUES ('30', '2.2', '0.176');
INSERT INTO `volume` VALUES ('30', '2.4', '0.193');
INSERT INTO `volume` VALUES ('30', '2.6', '0.211');
INSERT INTO `volume` VALUES ('30', '2.8', '0.23');
INSERT INTO `volume` VALUES ('30', '3', '0.248');
INSERT INTO `volume` VALUES ('30', '3.2', '0.267');
INSERT INTO `volume` VALUES ('30', '3.4', '0.286');
INSERT INTO `volume` VALUES ('30', '3.6', '0.305');
INSERT INTO `volume` VALUES ('30', '3.8', '0.324');
INSERT INTO `volume` VALUES ('30', '4', '0.344');
INSERT INTO `volume` VALUES ('30', '4.2', '0.364');
INSERT INTO `volume` VALUES ('30', '4.4', '0.383');
INSERT INTO `volume` VALUES ('30', '4.6', '0.404');
INSERT INTO `volume` VALUES ('30', '4.8', '0.424');
INSERT INTO `volume` VALUES ('30', '5', '0.444');
INSERT INTO `volume` VALUES ('30', '5.2', '0.465');
INSERT INTO `volume` VALUES ('30', '5.4', '0.486');
INSERT INTO `volume` VALUES ('30', '5.6', '0.507');
INSERT INTO `volume` VALUES ('30', '5.8', '0.528');
INSERT INTO `volume` VALUES ('30', '6', '0.549');
INSERT INTO `volume` VALUES ('30', '6.2', '0.571');
INSERT INTO `volume` VALUES ('30', '6.4', '0.592');
INSERT INTO `volume` VALUES ('30', '6.6', '0.614');
INSERT INTO `volume` VALUES ('30', '6.8', '0.636');
INSERT INTO `volume` VALUES ('30', '7', '0.658');
INSERT INTO `volume` VALUES ('30', '7.2', '0.681');
INSERT INTO `volume` VALUES ('30', '7.4', '0.703');
INSERT INTO `volume` VALUES ('30', '7.6', '0.726');
INSERT INTO `volume` VALUES ('30', '7.8', '0.748');
INSERT INTO `volume` VALUES ('30', '8', '0.771');
INSERT INTO `volume` VALUES ('30', '8.2', '0.795');
INSERT INTO `volume` VALUES ('30', '8.4', '0.818');
INSERT INTO `volume` VALUES ('30', '8.6', '0.842');
INSERT INTO `volume` VALUES ('30', '8.8', '0.865');
INSERT INTO `volume` VALUES ('30', '9', '0.889');
INSERT INTO `volume` VALUES ('30', '9.2', '0.913');
INSERT INTO `volume` VALUES ('30', '9.4', '0.938');
INSERT INTO `volume` VALUES ('30', '9.6', '0.962');
INSERT INTO `volume` VALUES ('30', '9.8', '0.987');
INSERT INTO `volume` VALUES ('30', '10', '1.012');
INSERT INTO `volume` VALUES ('30', '10.2', '1.022');
INSERT INTO `volume` VALUES ('30', '10.4', '1.031');
INSERT INTO `volume` VALUES ('30', '10.6', '1.057');
INSERT INTO `volume` VALUES ('30', '10.8', '1.083');
INSERT INTO `volume` VALUES ('30', '11', '1.109');
INSERT INTO `volume` VALUES ('30', '11.2', '1.136');
INSERT INTO `volume` VALUES ('30', '11.4', '1.162');
INSERT INTO `volume` VALUES ('30', '11.6', '1.189');
INSERT INTO `volume` VALUES ('30', '11.8', '1.217');
INSERT INTO `volume` VALUES ('30', '12', '1.244');
INSERT INTO `volume` VALUES ('30', '12.2', '1.272');
INSERT INTO `volume` VALUES ('30', '12.4', '1.3');
INSERT INTO `volume` VALUES ('30', '12.6', '1.328');
INSERT INTO `volume` VALUES ('30', '12.8', '1.357');
INSERT INTO `volume` VALUES ('30', '13', '1.386');
INSERT INTO `volume` VALUES ('30', '13.2', '1.415');
INSERT INTO `volume` VALUES ('30', '13.4', '1.444');
INSERT INTO `volume` VALUES ('30', '13.6', '1.473');
INSERT INTO `volume` VALUES ('30', '13.8', '1.503');
INSERT INTO `volume` VALUES ('30', '14', '1.533');
INSERT INTO `volume` VALUES ('31', '2', '0.169');
INSERT INTO `volume` VALUES ('31', '2.2', '0.187');
INSERT INTO `volume` VALUES ('31', '2.4', '0.206');
INSERT INTO `volume` VALUES ('31', '2.6', '0.225');
INSERT INTO `volume` VALUES ('31', '2.8', '0.245');
INSERT INTO `volume` VALUES ('31', '3', '0.264');
INSERT INTO `volume` VALUES ('31', '3.2', '0.284');
INSERT INTO `volume` VALUES ('31', '3.4', '0.304');
INSERT INTO `volume` VALUES ('31', '3.6', '0.325');
INSERT INTO `volume` VALUES ('31', '3.8', '0.345');
INSERT INTO `volume` VALUES ('31', '4', '0.366');
INSERT INTO `volume` VALUES ('31', '4.2', '0.387');
INSERT INTO `volume` VALUES ('31', '4.4', '0.408');
INSERT INTO `volume` VALUES ('31', '4.6', '0.429');
INSERT INTO `volume` VALUES ('31', '4.8', '0.451');
INSERT INTO `volume` VALUES ('31', '5', '0.473');
INSERT INTO `volume` VALUES ('31', '5.2', '0.494');
INSERT INTO `volume` VALUES ('31', '5.4', '0.516');
INSERT INTO `volume` VALUES ('31', '5.6', '0.539');
INSERT INTO `volume` VALUES ('31', '5.8', '0.561');
INSERT INTO `volume` VALUES ('31', '6', '0.583');
INSERT INTO `volume` VALUES ('31', '6.2', '0.606');
INSERT INTO `volume` VALUES ('31', '6.4', '0.629');
INSERT INTO `volume` VALUES ('31', '6.6', '0.652');
INSERT INTO `volume` VALUES ('31', '6.8', '0.675');
INSERT INTO `volume` VALUES ('31', '7', '0.699');
INSERT INTO `volume` VALUES ('31', '7.2', '0.722');
INSERT INTO `volume` VALUES ('31', '7.4', '0.746');
INSERT INTO `volume` VALUES ('31', '7.6', '0.77');
INSERT INTO `volume` VALUES ('31', '7.8', '0.794');
INSERT INTO `volume` VALUES ('31', '8', '0.818');
INSERT INTO `volume` VALUES ('31', '8.2', '0.842');
INSERT INTO `volume` VALUES ('31', '8.4', '0.867');
INSERT INTO `volume` VALUES ('31', '8.6', '0.891');
INSERT INTO `volume` VALUES ('31', '8.8', '0.916');
INSERT INTO `volume` VALUES ('31', '9', '0.941');
INSERT INTO `volume` VALUES ('31', '9.2', '0.967');
INSERT INTO `volume` VALUES ('31', '9.4', '0.992');
INSERT INTO `volume` VALUES ('31', '9.6', '1.018');
INSERT INTO `volume` VALUES ('31', '9.8', '1.044');
INSERT INTO `volume` VALUES ('31', '10', '1.071');
INSERT INTO `volume` VALUES ('31', '10.2', '1.081');
INSERT INTO `volume` VALUES ('31', '10.4', '1.09');
INSERT INTO `volume` VALUES ('31', '10.6', '1.1174');
INSERT INTO `volume` VALUES ('31', '10.8', '1.145');
INSERT INTO `volume` VALUES ('31', '11', '1.172');
INSERT INTO `volume` VALUES ('31', '11.2', '1.2');
INSERT INTO `volume` VALUES ('31', '11.4', '1.228');
INSERT INTO `volume` VALUES ('31', '11.6', '1.257');
INSERT INTO `volume` VALUES ('31', '11.8', '1.285');
INSERT INTO `volume` VALUES ('31', '12', '1.314');
INSERT INTO `volume` VALUES ('31', '12.2', '1.343');
INSERT INTO `volume` VALUES ('31', '12.4', '1.373');
INSERT INTO `volume` VALUES ('31', '12.6', '1.402');
INSERT INTO `volume` VALUES ('31', '12.8', '1.432');
INSERT INTO `volume` VALUES ('31', '13', '1.463');
INSERT INTO `volume` VALUES ('31', '13.2', '1.493');
INSERT INTO `volume` VALUES ('31', '13.4', '1.524');
INSERT INTO `volume` VALUES ('31', '13.6', '1.555');
INSERT INTO `volume` VALUES ('31', '13.8', '1.586');
INSERT INTO `volume` VALUES ('31', '14', '1.617');
INSERT INTO `volume` VALUES ('32', '2', '0.18');
INSERT INTO `volume` VALUES ('32', '2.2', '0.199');
INSERT INTO `volume` VALUES ('32', '2.4', '0.219');
INSERT INTO `volume` VALUES ('32', '2.6', '0.24');
INSERT INTO `volume` VALUES ('32', '2.8', '0.26');
INSERT INTO `volume` VALUES ('32', '3', '0.281');
INSERT INTO `volume` VALUES ('32', '3.2', '0.302');
INSERT INTO `volume` VALUES ('32', '3.4', '0.324');
INSERT INTO `volume` VALUES ('32', '3.6', '0.345');
INSERT INTO `volume` VALUES ('32', '3.8', '0.367');
INSERT INTO `volume` VALUES ('32', '4', '0.389');
INSERT INTO `volume` VALUES ('32', '4.2', '0.411');
INSERT INTO `volume` VALUES ('32', '4.4', '0.433');
INSERT INTO `volume` VALUES ('32', '4.6', '0.456');
INSERT INTO `volume` VALUES ('32', '4.8', '0.479');
INSERT INTO `volume` VALUES ('32', '5', '0.502');
INSERT INTO `volume` VALUES ('32', '5.2', '0.525');
INSERT INTO `volume` VALUES ('32', '5.4', '0.548');
INSERT INTO `volume` VALUES ('32', '5.6', '0.571');
INSERT INTO `volume` VALUES ('32', '5.8', '0.595');
INSERT INTO `volume` VALUES ('32', '6', '0.619');
INSERT INTO `volume` VALUES ('32', '6.2', '0.643');
INSERT INTO `volume` VALUES ('32', '6.4', '0.667');
INSERT INTO `volume` VALUES ('32', '6.6', '0.691');
INSERT INTO `volume` VALUES ('32', '6.8', '0.715');
INSERT INTO `volume` VALUES ('32', '7', '0.74');
INSERT INTO `volume` VALUES ('32', '7.2', '0.765');
INSERT INTO `volume` VALUES ('32', '7.4', '0.79');
INSERT INTO `volume` VALUES ('32', '7.6', '0.815');
INSERT INTO `volume` VALUES ('32', '7.8', '0.84');
INSERT INTO `volume` VALUES ('32', '8', '0.865');
INSERT INTO `volume` VALUES ('32', '8.2', '0.891');
INSERT INTO `volume` VALUES ('32', '8.4', '0.917');
INSERT INTO `volume` VALUES ('32', '8.6', '0.943');
INSERT INTO `volume` VALUES ('32', '8.8', '0.969');
INSERT INTO `volume` VALUES ('32', '9', '0.995');
INSERT INTO `volume` VALUES ('32', '9.2', '1.022');
INSERT INTO `volume` VALUES ('32', '9.4', '1.049');
INSERT INTO `volume` VALUES ('32', '9.6', '1.076');
INSERT INTO `volume` VALUES ('32', '9.8', '1.103');
INSERT INTO `volume` VALUES ('32', '10', '1.131');
INSERT INTO `volume` VALUES ('32', '10.2', '1.141');
INSERT INTO `volume` VALUES ('32', '10.4', '1.151');
INSERT INTO `volume` VALUES ('32', '10.6', '1.18');
INSERT INTO `volume` VALUES ('32', '10.8', '1.209');
INSERT INTO `volume` VALUES ('32', '11', '1.238');
INSERT INTO `volume` VALUES ('32', '11.2', '1.267');
INSERT INTO `volume` VALUES ('32', '11.4', '1.296');
INSERT INTO `volume` VALUES ('32', '11.6', '1.326');
INSERT INTO `volume` VALUES ('32', '11.8', '1.356');
INSERT INTO `volume` VALUES ('32', '12', '1.386');
INSERT INTO `volume` VALUES ('32', '12.2', '1.417');
INSERT INTO `volume` VALUES ('32', '12.4', '1.448');
INSERT INTO `volume` VALUES ('32', '12.6', '1.479');
INSERT INTO `volume` VALUES ('32', '12.8', '1.51');
INSERT INTO `volume` VALUES ('32', '13', '1.542');
INSERT INTO `volume` VALUES ('32', '13.2', '1.573');
INSERT INTO `volume` VALUES ('32', '13.4', '1.606');
INSERT INTO `volume` VALUES ('32', '13.6', '1.638');
INSERT INTO `volume` VALUES ('32', '13.8', '1.671');
INSERT INTO `volume` VALUES ('32', '14', '1.704');
INSERT INTO `volume` VALUES ('33', '2', '0.191');
INSERT INTO `volume` VALUES ('33', '2.2', '0.212');
INSERT INTO `volume` VALUES ('33', '2.4', '0.233');
INSERT INTO `volume` VALUES ('33', '2.6', '0.255');
INSERT INTO `volume` VALUES ('33', '2.8', '0.276');
INSERT INTO `volume` VALUES ('33', '3', '0.298');
INSERT INTO `volume` VALUES ('33', '3.2', '0.321');
INSERT INTO `volume` VALUES ('33', '3.4', '0.343');
INSERT INTO `volume` VALUES ('33', '3.6', '0.366');
INSERT INTO `volume` VALUES ('33', '3.8', '0.389');
INSERT INTO `volume` VALUES ('33', '4', '0.412');
INSERT INTO `volume` VALUES ('33', '4.2', '0.436');
INSERT INTO `volume` VALUES ('33', '4.4', '0.459');
INSERT INTO `volume` VALUES ('33', '4.6', '0.483');
INSERT INTO `volume` VALUES ('33', '4.8', '0.507');
INSERT INTO `volume` VALUES ('33', '5', '0.532');
INSERT INTO `volume` VALUES ('33', '5.2', '0.556');
INSERT INTO `volume` VALUES ('33', '5.4', '0.58');
INSERT INTO `volume` VALUES ('33', '5.6', '0.605');
INSERT INTO `volume` VALUES ('33', '5.8', '0.63');
INSERT INTO `volume` VALUES ('33', '6', '0.655');
INSERT INTO `volume` VALUES ('33', '6.2', '0.68');
INSERT INTO `volume` VALUES ('33', '6.4', '0.706');
INSERT INTO `volume` VALUES ('33', '6.6', '0.731');
INSERT INTO `volume` VALUES ('33', '6.8', '0.757');
INSERT INTO `volume` VALUES ('33', '7', '0.783');
INSERT INTO `volume` VALUES ('33', '7.2', '0.809');
INSERT INTO `volume` VALUES ('33', '7.4', '0.835');
INSERT INTO `volume` VALUES ('33', '7.6', '0.861');
INSERT INTO `volume` VALUES ('33', '7.8', '0.888');
INSERT INTO `volume` VALUES ('33', '8', '0.914');
INSERT INTO `volume` VALUES ('33', '8.2', '0.941');
INSERT INTO `volume` VALUES ('33', '8.4', '0.968');
INSERT INTO `volume` VALUES ('33', '8.6', '0.995');
INSERT INTO `volume` VALUES ('33', '8.8', '1.023');
INSERT INTO `volume` VALUES ('33', '9', '1.051');
INSERT INTO `volume` VALUES ('33', '9.2', '1.078');
INSERT INTO `volume` VALUES ('33', '9.4', '1.106');
INSERT INTO `volume` VALUES ('33', '9.6', '1.135');
INSERT INTO `volume` VALUES ('33', '9.8', '1.163');
INSERT INTO `volume` VALUES ('33', '10', '1.192');
INSERT INTO `volume` VALUES ('33', '10.2', '1.203');
INSERT INTO `volume` VALUES ('33', '10.4', '1.214');
INSERT INTO `volume` VALUES ('33', '10.6', '1.244');
INSERT INTO `volume` VALUES ('33', '10.8', '1.274');
INSERT INTO `volume` VALUES ('33', '11', '1.304');
INSERT INTO `volume` VALUES ('33', '11.2', '1.335');
INSERT INTO `volume` VALUES ('33', '11.4', '1.366');
INSERT INTO `volume` VALUES ('33', '11.6', '1.397');
INSERT INTO `volume` VALUES ('33', '11.8', '1.428');
INSERT INTO `volume` VALUES ('33', '12', '1.46');
INSERT INTO `volume` VALUES ('33', '12.2', '1.492');
INSERT INTO `volume` VALUES ('33', '12.4', '1.524');
INSERT INTO `volume` VALUES ('33', '12.6', '1.557');
INSERT INTO `volume` VALUES ('33', '12.8', '1.59');
INSERT INTO `volume` VALUES ('33', '13', '1.623');
INSERT INTO `volume` VALUES ('33', '13.2', '1.656');
INSERT INTO `volume` VALUES ('33', '13.4', '1.69');
INSERT INTO `volume` VALUES ('33', '13.6', '1.723');
INSERT INTO `volume` VALUES ('33', '13.8', '1.758');
INSERT INTO `volume` VALUES ('33', '14', '1.792');
INSERT INTO `volume` VALUES ('34', '2', '0.202');
INSERT INTO `volume` VALUES ('34', '2.2', '0.224');
INSERT INTO `volume` VALUES ('34', '2.4', '0.247');
INSERT INTO `volume` VALUES ('34', '2.6', '0.27');
INSERT INTO `volume` VALUES ('34', '2.8', '0.293');
INSERT INTO `volume` VALUES ('34', '3', '0.316');
INSERT INTO `volume` VALUES ('34', '3.2', '0.34');
INSERT INTO `volume` VALUES ('34', '3.4', '0.364');
INSERT INTO `volume` VALUES ('34', '3.6', '0.388');
INSERT INTO `volume` VALUES ('34', '3.8', '0.412');
INSERT INTO `volume` VALUES ('34', '4', '0.437');
INSERT INTO `volume` VALUES ('34', '4.2', '0.461');
INSERT INTO `volume` VALUES ('34', '4.4', '0.486');
INSERT INTO `volume` VALUES ('34', '4.6', '0.511');
INSERT INTO `volume` VALUES ('34', '4.8', '0.537');
INSERT INTO `volume` VALUES ('34', '5', '0.562');
INSERT INTO `volume` VALUES ('34', '5.2', '0.588');
INSERT INTO `volume` VALUES ('34', '5.4', '0.614');
INSERT INTO `volume` VALUES ('34', '5.6', '0.64');
INSERT INTO `volume` VALUES ('34', '5.8', '0.666');
INSERT INTO `volume` VALUES ('34', '6', '0.692');
INSERT INTO `volume` VALUES ('34', '6.2', '0.719');
INSERT INTO `volume` VALUES ('34', '6.4', '0.746');
INSERT INTO `volume` VALUES ('34', '6.6', '0.772');
INSERT INTO `volume` VALUES ('34', '6.8', '0.799');
INSERT INTO `volume` VALUES ('34', '7', '0.827');
INSERT INTO `volume` VALUES ('34', '7.2', '0.854');
INSERT INTO `volume` VALUES ('34', '7.4', '0.881');
INSERT INTO `volume` VALUES ('34', '7.6', '0.909');
INSERT INTO `volume` VALUES ('34', '7.8', '0.937');
INSERT INTO `volume` VALUES ('34', '8', '0.965');
INSERT INTO `volume` VALUES ('34', '8.2', '0.993');
INSERT INTO `volume` VALUES ('34', '8.4', '1.021');
INSERT INTO `volume` VALUES ('34', '8.6', '1.05');
INSERT INTO `volume` VALUES ('34', '8.8', '1.078');
INSERT INTO `volume` VALUES ('34', '9', '1.107');
INSERT INTO `volume` VALUES ('34', '9.2', '1.136');
INSERT INTO `volume` VALUES ('34', '9.4', '1.166');
INSERT INTO `volume` VALUES ('34', '9.6', '1.195');
INSERT INTO `volume` VALUES ('34', '9.8', '1.225');
INSERT INTO `volume` VALUES ('34', '10', '1.255');
INSERT INTO `volume` VALUES ('34', '10.2', '1.267');
INSERT INTO `volume` VALUES ('34', '10.4', '1.278');
INSERT INTO `volume` VALUES ('34', '10.6', '1.31');
INSERT INTO `volume` VALUES ('34', '10.8', '1.341');
INSERT INTO `volume` VALUES ('34', '11', '1.373');
INSERT INTO `volume` VALUES ('34', '11.2', '1.405');
INSERT INTO `volume` VALUES ('34', '11.4', '1.437');
INSERT INTO `volume` VALUES ('34', '11.6', '1.47');
INSERT INTO `volume` VALUES ('34', '11.8', '1.503');
INSERT INTO `volume` VALUES ('34', '12', '1.536');
INSERT INTO `volume` VALUES ('34', '12.2', '1.569');
INSERT INTO `volume` VALUES ('34', '12.4', '1.603');
INSERT INTO `volume` VALUES ('34', '12.6', '1.637');
INSERT INTO `volume` VALUES ('34', '12.8', '1.671');
INSERT INTO `volume` VALUES ('34', '13', '1.706');
INSERT INTO `volume` VALUES ('34', '13.2', '1.741');
INSERT INTO `volume` VALUES ('34', '13.4', '1.776');
INSERT INTO `volume` VALUES ('34', '13.6', '1.811');
INSERT INTO `volume` VALUES ('34', '13.8', '1.847');
INSERT INTO `volume` VALUES ('34', '14', '1.883');
INSERT INTO `volume` VALUES ('35', '2', '0.214');
INSERT INTO `volume` VALUES ('35', '2.2', '0.238');
INSERT INTO `volume` VALUES ('35', '2.4', '0.261');
INSERT INTO `volume` VALUES ('35', '2.6', '0.285');
INSERT INTO `volume` VALUES ('35', '2.8', '0.31');
INSERT INTO `volume` VALUES ('35', '3', '0.335');
INSERT INTO `volume` VALUES ('35', '3.2', '0.359');
INSERT INTO `volume` VALUES ('35', '3.4', '0.385');
INSERT INTO `volume` VALUES ('35', '3.6', '0.41');
INSERT INTO `volume` VALUES ('35', '3.8', '0.436');
INSERT INTO `volume` VALUES ('35', '4', '0.462');
INSERT INTO `volume` VALUES ('35', '4.2', '0.488');
INSERT INTO `volume` VALUES ('35', '4.4', '0.514');
INSERT INTO `volume` VALUES ('35', '4.6', '0.54');
INSERT INTO `volume` VALUES ('35', '4.8', '0.567');
INSERT INTO `volume` VALUES ('35', '5', '0.594');
INSERT INTO `volume` VALUES ('35', '5.2', '0.621');
INSERT INTO `volume` VALUES ('35', '5.4', '0.648');
INSERT INTO `volume` VALUES ('35', '5.6', '0.676');
INSERT INTO `volume` VALUES ('35', '5.8', '0.703');
INSERT INTO `volume` VALUES ('35', '6', '0.731');
INSERT INTO `volume` VALUES ('35', '6.2', '0.759');
INSERT INTO `volume` VALUES ('35', '6.4', '0.787');
INSERT INTO `volume` VALUES ('35', '6.6', '0.815');
INSERT INTO `volume` VALUES ('35', '6.8', '0.843');
INSERT INTO `volume` VALUES ('35', '7', '0.872');
INSERT INTO `volume` VALUES ('35', '7.2', '0.9');
INSERT INTO `volume` VALUES ('35', '7.4', '0.929');
INSERT INTO `volume` VALUES ('35', '7.6', '0.958');
INSERT INTO `volume` VALUES ('35', '7.8', '0.987');
INSERT INTO `volume` VALUES ('35', '8', '1.016');
INSERT INTO `volume` VALUES ('35', '8.2', '1.046');
INSERT INTO `volume` VALUES ('35', '8.4', '1.076');
INSERT INTO `volume` VALUES ('35', '8.6', '1.105');
INSERT INTO `volume` VALUES ('35', '8.8', '1.135');
INSERT INTO `volume` VALUES ('35', '9', '1.166');
INSERT INTO `volume` VALUES ('35', '9.2', '1.196');
INSERT INTO `volume` VALUES ('35', '9.4', '1.227');
INSERT INTO `volume` VALUES ('35', '9.6', '1.258');
INSERT INTO `volume` VALUES ('35', '9.8', '1.289');
INSERT INTO `volume` VALUES ('35', '10', '1.32');
INSERT INTO `volume` VALUES ('35', '10.2', '1.333');
INSERT INTO `volume` VALUES ('35', '10.4', '1.345');
INSERT INTO `volume` VALUES ('35', '10.6', '1.377');
INSERT INTO `volume` VALUES ('35', '10.8', '1.41');
INSERT INTO `volume` VALUES ('35', '11', '1.443');
INSERT INTO `volume` VALUES ('35', '11.2', '1.477');
INSERT INTO `volume` VALUES ('35', '11.4', '1.511');
INSERT INTO `volume` VALUES ('35', '11.6', '1.545');
INSERT INTO `volume` VALUES ('35', '11.8', '1.579');
INSERT INTO `volume` VALUES ('35', '12', '1.614');
INSERT INTO `volume` VALUES ('35', '12.2', '1.649');
INSERT INTO `volume` VALUES ('35', '12.4', '1.684');
INSERT INTO `volume` VALUES ('35', '12.6', '1.719');
INSERT INTO `volume` VALUES ('35', '12.8', '1.755');
INSERT INTO `volume` VALUES ('35', '13', '1.791');
INSERT INTO `volume` VALUES ('35', '13.2', '1.827');
INSERT INTO `volume` VALUES ('35', '13.4', '1.864');
INSERT INTO `volume` VALUES ('35', '13.6', '1.901');
INSERT INTO `volume` VALUES ('35', '13.8', '1.938');
INSERT INTO `volume` VALUES ('35', '14', '1.976');
INSERT INTO `volume` VALUES ('36', '2', '0.226');
INSERT INTO `volume` VALUES ('36', '2.2', '0.251');
INSERT INTO `volume` VALUES ('36', '2.4', '0.276');
INSERT INTO `volume` VALUES ('36', '2.6', '0.302');
INSERT INTO `volume` VALUES ('36', '2.8', '0.327');
INSERT INTO `volume` VALUES ('36', '3', '0.353');
INSERT INTO `volume` VALUES ('36', '3.2', '0.38');
INSERT INTO `volume` VALUES ('36', '3.4', '0.406');
INSERT INTO `volume` VALUES ('36', '3.6', '0.433');
INSERT INTO `volume` VALUES ('36', '3.8', '0.46');
INSERT INTO `volume` VALUES ('36', '4', '0.487');
INSERT INTO `volume` VALUES ('36', '4.2', '0.515');
INSERT INTO `volume` VALUES ('36', '4.4', '0.542');
INSERT INTO `volume` VALUES ('36', '4.6', '0.57');
INSERT INTO `volume` VALUES ('36', '4.8', '0.598');
INSERT INTO `volume` VALUES ('36', '5', '0.626');
INSERT INTO `volume` VALUES ('36', '5.2', '0.655');
INSERT INTO `volume` VALUES ('36', '5.4', '0.683');
INSERT INTO `volume` VALUES ('36', '5.6', '0.712');
INSERT INTO `volume` VALUES ('36', '5.8', '0.741');
INSERT INTO `volume` VALUES ('36', '6', '0.77');
INSERT INTO `volume` VALUES ('36', '6.2', '0.799');
INSERT INTO `volume` VALUES ('36', '6.4', '0.829');
INSERT INTO `volume` VALUES ('36', '6.6', '0.858');
INSERT INTO `volume` VALUES ('36', '6.8', '0.888');
INSERT INTO `volume` VALUES ('36', '7', '0.918');
INSERT INTO `volume` VALUES ('36', '7.2', '0.948');
INSERT INTO `volume` VALUES ('36', '7.4', '0.978');
INSERT INTO `volume` VALUES ('36', '7.6', '1.008');
INSERT INTO `volume` VALUES ('36', '7.8', '1.039');
INSERT INTO `volume` VALUES ('36', '8', '1.069');
INSERT INTO `volume` VALUES ('36', '8.2', '1.1');
INSERT INTO `volume` VALUES ('36', '8.4', '1.131');
INSERT INTO `volume` VALUES ('36', '8.6', '1.162');
INSERT INTO `volume` VALUES ('36', '8.8', '1.194');
INSERT INTO `volume` VALUES ('36', '9', '1.225');
INSERT INTO `volume` VALUES ('36', '9.2', '1.257');
INSERT INTO `volume` VALUES ('36', '9.4', '1.289');
INSERT INTO `volume` VALUES ('36', '9.6', '1.321');
INSERT INTO `volume` VALUES ('36', '9.8', '1.354');
INSERT INTO `volume` VALUES ('36', '10', '1.387');
INSERT INTO `volume` VALUES ('36', '10.2', '1.4');
INSERT INTO `volume` VALUES ('36', '10.4', '1.412');
INSERT INTO `volume` VALUES ('36', '10.6', '1.446');
INSERT INTO `volume` VALUES ('36', '10.8', '1.481');
INSERT INTO `volume` VALUES ('36', '11', '1.516');
INSERT INTO `volume` VALUES ('36', '11.2', '1.551');
INSERT INTO `volume` VALUES ('36', '11.4', '1.586');
INSERT INTO `volume` VALUES ('36', '11.6', '1.621');
INSERT INTO `volume` VALUES ('36', '11.8', '1.657');
INSERT INTO `volume` VALUES ('36', '12', '1.693');
INSERT INTO `volume` VALUES ('36', '12.2', '1.73');
INSERT INTO `volume` VALUES ('36', '12.4', '1.767');
INSERT INTO `volume` VALUES ('36', '12.6', '1.804');
INSERT INTO `volume` VALUES ('36', '12.8', '1.841');
INSERT INTO `volume` VALUES ('36', '13', '1.879');
INSERT INTO `volume` VALUES ('36', '13.2', '1.916');
INSERT INTO `volume` VALUES ('36', '13.4', '1.955');
INSERT INTO `volume` VALUES ('36', '13.6', '1.993');
INSERT INTO `volume` VALUES ('36', '13.8', '2.032');
INSERT INTO `volume` VALUES ('36', '14', '2.071');
INSERT INTO `volume` VALUES ('37', '2', '0.239');
INSERT INTO `volume` VALUES ('37', '2.2', '0.265');
INSERT INTO `volume` VALUES ('37', '2.4', '0.291');
INSERT INTO `volume` VALUES ('37', '2.6', '0.318');
INSERT INTO `volume` VALUES ('37', '2.8', '0.345');
INSERT INTO `volume` VALUES ('37', '3', '0.373');
INSERT INTO `volume` VALUES ('37', '3.2', '0.4');
INSERT INTO `volume` VALUES ('37', '3.4', '0.428');
INSERT INTO `volume` VALUES ('37', '3.6', '0.456');
INSERT INTO `volume` VALUES ('37', '3.8', '0.485');
INSERT INTO `volume` VALUES ('37', '4', '0.514');
INSERT INTO `volume` VALUES ('37', '4.2', '0.542');
INSERT INTO `volume` VALUES ('37', '4.4', '0.571');
INSERT INTO `volume` VALUES ('37', '4.6', '0.601');
INSERT INTO `volume` VALUES ('37', '4.8', '0.63');
INSERT INTO `volume` VALUES ('37', '5', '0.66');
INSERT INTO `volume` VALUES ('37', '5.2', '0.69');
INSERT INTO `volume` VALUES ('37', '5.4', '0.72');
INSERT INTO `volume` VALUES ('37', '5.6', '0.75');
INSERT INTO `volume` VALUES ('37', '5.8', '0.78');
INSERT INTO `volume` VALUES ('37', '6', '0.811');
INSERT INTO `volume` VALUES ('37', '6.2', '0.841');
INSERT INTO `volume` VALUES ('37', '6.4', '0.872');
INSERT INTO `volume` VALUES ('37', '6.6', '0.903');
INSERT INTO `volume` VALUES ('37', '6.8', '0.934');
INSERT INTO `volume` VALUES ('37', '7', '0.965');
INSERT INTO `volume` VALUES ('37', '7.2', '0.997');
INSERT INTO `volume` VALUES ('37', '7.4', '1.028');
INSERT INTO `volume` VALUES ('37', '7.6', '1.06');
INSERT INTO `volume` VALUES ('37', '7.8', '1.092');
INSERT INTO `volume` VALUES ('37', '8', '1.124');
INSERT INTO `volume` VALUES ('37', '8.2', '1.156');
INSERT INTO `volume` VALUES ('37', '8.4', '1.188');
INSERT INTO `volume` VALUES ('37', '8.6', '1.221');
INSERT INTO `volume` VALUES ('37', '8.8', '1.254');
INSERT INTO `volume` VALUES ('37', '9', '1.287');
INSERT INTO `volume` VALUES ('37', '9.2', '1.32');
INSERT INTO `volume` VALUES ('37', '9.4', '1.353');
INSERT INTO `volume` VALUES ('37', '9.6', '1.387');
INSERT INTO `volume` VALUES ('37', '9.8', '1.421');
INSERT INTO `volume` VALUES ('37', '10', '1.455');
INSERT INTO `volume` VALUES ('37', '10.2', '1.469');
INSERT INTO `volume` VALUES ('37', '10.4', '1.482');
INSERT INTO `volume` VALUES ('37', '10.6', '1.517');
INSERT INTO `volume` VALUES ('37', '10.8', '1.553');
INSERT INTO `volume` VALUES ('37', '11', '1.59');
INSERT INTO `volume` VALUES ('37', '11.2', '1.626');
INSERT INTO `volume` VALUES ('37', '11.4', '1.603');
INSERT INTO `volume` VALUES ('37', '11.6', '1.7');
INSERT INTO `volume` VALUES ('37', '11.8', '1.737');
INSERT INTO `volume` VALUES ('37', '12', '1.775');
INSERT INTO `volume` VALUES ('37', '12.2', '1.813');
INSERT INTO `volume` VALUES ('37', '12.4', '1.851');
INSERT INTO `volume` VALUES ('37', '12.6', '1.89');
INSERT INTO `volume` VALUES ('37', '12.8', '1.929');
INSERT INTO `volume` VALUES ('37', '13', '1.968');
INSERT INTO `volume` VALUES ('37', '13.2', '2.007');
INSERT INTO `volume` VALUES ('37', '13.4', '2.047');
INSERT INTO `volume` VALUES ('37', '13.6', '2.087');
INSERT INTO `volume` VALUES ('37', '13.8', '2.128');
INSERT INTO `volume` VALUES ('37', '14', '2.168');
INSERT INTO `volume` VALUES ('38', '2', '0.252');
INSERT INTO `volume` VALUES ('38', '2.2', '0.279');
INSERT INTO `volume` VALUES ('38', '2.4', '0.307');
INSERT INTO `volume` VALUES ('38', '2.6', '0.335');
INSERT INTO `volume` VALUES ('38', '2.8', '0.364');
INSERT INTO `volume` VALUES ('38', '3', '0.393');
INSERT INTO `volume` VALUES ('38', '3.2', '0.422');
INSERT INTO `volume` VALUES ('38', '3.4', '0.451');
INSERT INTO `volume` VALUES ('38', '3.6', '0.481');
INSERT INTO `volume` VALUES ('38', '3.8', '0.51');
INSERT INTO `volume` VALUES ('38', '4', '0.541');
INSERT INTO `volume` VALUES ('38', '4.2', '0.571');
INSERT INTO `volume` VALUES ('38', '4.4', '0.601');
INSERT INTO `volume` VALUES ('38', '4.6', '0.632');
INSERT INTO `volume` VALUES ('38', '4.8', '0.663');
INSERT INTO `volume` VALUES ('38', '5', '0.694');
INSERT INTO `volume` VALUES ('38', '5.2', '0.725');
INSERT INTO `volume` VALUES ('38', '5.4', '0.757');
INSERT INTO `volume` VALUES ('38', '5.6', '0.788');
INSERT INTO `volume` VALUES ('38', '5.8', '0.82');
INSERT INTO `volume` VALUES ('38', '6', '0.852');
INSERT INTO `volume` VALUES ('38', '6.2', '0.884');
INSERT INTO `volume` VALUES ('38', '6.4', '0.916');
INSERT INTO `volume` VALUES ('38', '6.6', '0.949');
INSERT INTO `volume` VALUES ('38', '6.8', '0.981');
INSERT INTO `volume` VALUES ('38', '7', '1.014');
INSERT INTO `volume` VALUES ('38', '7.2', '1.047');
INSERT INTO `volume` VALUES ('38', '7.4', '1.08');
INSERT INTO `volume` VALUES ('38', '7.6', '1.113');
INSERT INTO `volume` VALUES ('38', '7.8', '1.146');
INSERT INTO `volume` VALUES ('38', '8', '1.18');
INSERT INTO `volume` VALUES ('38', '8.2', '1.213');
INSERT INTO `volume` VALUES ('38', '8.4', '1.247');
INSERT INTO `volume` VALUES ('38', '8.6', '1.281');
INSERT INTO `volume` VALUES ('38', '8.8', '1.315');
INSERT INTO `volume` VALUES ('38', '9', '1.349');
INSERT INTO `volume` VALUES ('38', '9.2', '1.384');
INSERT INTO `volume` VALUES ('38', '9.4', '1.419');
INSERT INTO `volume` VALUES ('38', '9.6', '1.454');
INSERT INTO `volume` VALUES ('38', '9.8', '1.489');
INSERT INTO `volume` VALUES ('38', '10', '1.525');
INSERT INTO `volume` VALUES ('38', '10.2', '1.539');
INSERT INTO `volume` VALUES ('38', '10.4', '1.553');
INSERT INTO `volume` VALUES ('38', '10.6', '1.59');
INSERT INTO `volume` VALUES ('38', '10.8', '1.627');
INSERT INTO `volume` VALUES ('38', '11', '1.665');
INSERT INTO `volume` VALUES ('38', '11.2', '1.703');
INSERT INTO `volume` VALUES ('38', '11.4', '1.742');
INSERT INTO `volume` VALUES ('38', '11.6', '1.78');
INSERT INTO `volume` VALUES ('38', '11.8', '1.819');
INSERT INTO `volume` VALUES ('38', '12', '1.859');
INSERT INTO `volume` VALUES ('38', '12.2', '1.898');
INSERT INTO `volume` VALUES ('38', '12.4', '1.938');
INSERT INTO `volume` VALUES ('38', '12.6', '1.978');
INSERT INTO `volume` VALUES ('38', '12.8', '2.019');
INSERT INTO `volume` VALUES ('38', '13', '2.059');
INSERT INTO `volume` VALUES ('38', '13.2', '2.101');
INSERT INTO `volume` VALUES ('38', '13.4', '2.142');
INSERT INTO `volume` VALUES ('38', '13.6', '2.184');
INSERT INTO `volume` VALUES ('38', '13.8', '2.226');
INSERT INTO `volume` VALUES ('38', '14', '2.268');
INSERT INTO `volume` VALUES ('39', '2', '0.265');
INSERT INTO `volume` VALUES ('39', '2.2', '0.294');
INSERT INTO `volume` VALUES ('39', '2.4', '0.323');
INSERT INTO `volume` VALUES ('39', '2.6', '0.353');
INSERT INTO `volume` VALUES ('39', '2.8', '0.383');
INSERT INTO `volume` VALUES ('39', '3', '0.413');
INSERT INTO `volume` VALUES ('39', '3.2', '0.443');
INSERT INTO `volume` VALUES ('39', '3.4', '0.474');
INSERT INTO `volume` VALUES ('39', '3.6', '0.505');
INSERT INTO `volume` VALUES ('39', '3.8', '0.537');
INSERT INTO `volume` VALUES ('39', '4', '0.568');
INSERT INTO `volume` VALUES ('39', '4.2', '0.6');
INSERT INTO `volume` VALUES ('39', '4.4', '0.632');
INSERT INTO `volume` VALUES ('39', '4.6', '0.664');
INSERT INTO `volume` VALUES ('39', '4.8', '0.697');
INSERT INTO `volume` VALUES ('39', '5', '0.729');
INSERT INTO `volume` VALUES ('39', '5.2', '0.762');
INSERT INTO `volume` VALUES ('39', '5.4', '0.795');
INSERT INTO `volume` VALUES ('39', '5.6', '0.828');
INSERT INTO `volume` VALUES ('39', '5.8', '0.861');
INSERT INTO `volume` VALUES ('39', '6', '0.895');
INSERT INTO `volume` VALUES ('39', '6.2', '0.928');
INSERT INTO `volume` VALUES ('39', '6.4', '0.962');
INSERT INTO `volume` VALUES ('39', '6.6', '0.996');
INSERT INTO `volume` VALUES ('39', '6.8', '1.03');
INSERT INTO `volume` VALUES ('39', '7', '1.064');
INSERT INTO `volume` VALUES ('39', '7.2', '1.098');
INSERT INTO `volume` VALUES ('39', '7.4', '1.132');
INSERT INTO `volume` VALUES ('39', '7.6', '1.167');
INSERT INTO `volume` VALUES ('39', '7.8', '1.202');
INSERT INTO `volume` VALUES ('39', '8', '1.237');
INSERT INTO `volume` VALUES ('39', '8.2', '1.272');
INSERT INTO `volume` VALUES ('39', '8.4', '1.307');
INSERT INTO `volume` VALUES ('39', '8.6', '1.342');
INSERT INTO `volume` VALUES ('39', '8.8', '1.378');
INSERT INTO `volume` VALUES ('39', '9', '1.414');
INSERT INTO `volume` VALUES ('39', '9.2', '1.45');
INSERT INTO `volume` VALUES ('39', '9.4', '1.486');
INSERT INTO `volume` VALUES ('39', '9.6', '1.522');
INSERT INTO `volume` VALUES ('39', '9.8', '1.559');
INSERT INTO `volume` VALUES ('39', '10', '1.596');
INSERT INTO `volume` VALUES ('39', '10.2', '1.611');
INSERT INTO `volume` VALUES ('39', '10.4', '1.625');
INSERT INTO `volume` VALUES ('39', '10.6', '1.664');
INSERT INTO `volume` VALUES ('39', '10.8', '1.703');
INSERT INTO `volume` VALUES ('39', '11', '1.743');
INSERT INTO `volume` VALUES ('39', '11.2', '1.782');
INSERT INTO `volume` VALUES ('39', '11.4', '1.822');
INSERT INTO `volume` VALUES ('39', '11.6', '1.863');
INSERT INTO `volume` VALUES ('39', '11.8', '1.903');
INSERT INTO `volume` VALUES ('39', '12', '1.944');
INSERT INTO `volume` VALUES ('39', '12.2', '1.985');
INSERT INTO `volume` VALUES ('39', '12.4', '2.027');
INSERT INTO `volume` VALUES ('39', '12.6', '2.069');
INSERT INTO `volume` VALUES ('39', '12.8', '2.111');
INSERT INTO `volume` VALUES ('39', '13', '2.153');
INSERT INTO `volume` VALUES ('39', '13.2', '2.196');
INSERT INTO `volume` VALUES ('39', '13.4', '2.239');
INSERT INTO `volume` VALUES ('39', '13.6', '2.282');
INSERT INTO `volume` VALUES ('39', '13.8', '2.326');
INSERT INTO `volume` VALUES ('39', '14', '2.37');
INSERT INTO `volume` VALUES ('40', '2', '0.278');
INSERT INTO `volume` VALUES ('40', '2.2', '0.309');
INSERT INTO `volume` VALUES ('40', '2.4', '0.34');
INSERT INTO `volume` VALUES ('40', '2.6', '0.371');
INSERT INTO `volume` VALUES ('40', '2.8', '0.402');
INSERT INTO `volume` VALUES ('40', '3', '0.434');
INSERT INTO `volume` VALUES ('40', '3.2', '0.466');
INSERT INTO `volume` VALUES ('40', '3.4', '0.498');
INSERT INTO `volume` VALUES ('40', '3.6', '0.531');
INSERT INTO `volume` VALUES ('40', '3.8', '0.564');
INSERT INTO `volume` VALUES ('40', '4', '0.597');
INSERT INTO `volume` VALUES ('40', '4.2', '0.63');
INSERT INTO `volume` VALUES ('40', '4.4', '0.663');
INSERT INTO `volume` VALUES ('40', '4.6', '0.697');
INSERT INTO `volume` VALUES ('40', '4.8', '0.731');
INSERT INTO `volume` VALUES ('40', '5', '0.765');
INSERT INTO `volume` VALUES ('40', '5.2', '0.8');
INSERT INTO `volume` VALUES ('40', '5.4', '0.834');
INSERT INTO `volume` VALUES ('40', '5.6', '0.869');
INSERT INTO `volume` VALUES ('40', '5.8', '0.903');
INSERT INTO `volume` VALUES ('40', '6', '0.938');
INSERT INTO `volume` VALUES ('40', '6.2', '0.973');
INSERT INTO `volume` VALUES ('40', '6.4', '1.008');
INSERT INTO `volume` VALUES ('40', '6.6', '1.044');
INSERT INTO `volume` VALUES ('40', '6.8', '1.079');
INSERT INTO `volume` VALUES ('40', '7', '1.115');
INSERT INTO `volume` VALUES ('40', '7.2', '1.151');
INSERT INTO `volume` VALUES ('40', '7.4', '1.186');
INSERT INTO `volume` VALUES ('40', '7.6', '1.223');
INSERT INTO `volume` VALUES ('40', '7.8', '1.259');
INSERT INTO `volume` VALUES ('40', '8', '1.295');
INSERT INTO `volume` VALUES ('40', '8.2', '1.332');
INSERT INTO `volume` VALUES ('40', '8.4', '1.368');
INSERT INTO `volume` VALUES ('40', '8.6', '1.405');
INSERT INTO `volume` VALUES ('40', '8.8', '1.442');
INSERT INTO `volume` VALUES ('40', '9', '1.479');
INSERT INTO `volume` VALUES ('40', '9.2', '1.517');
INSERT INTO `volume` VALUES ('40', '9.4', '1.55');
INSERT INTO `volume` VALUES ('40', '9.6', '1.593');
INSERT INTO `volume` VALUES ('40', '9.8', '1.631');
INSERT INTO `volume` VALUES ('40', '10', '1.669');
INSERT INTO `volume` VALUES ('40', '10.2', '1.685');
INSERT INTO `volume` VALUES ('40', '10.4', '1.7');
INSERT INTO `volume` VALUES ('40', '10.6', '1.74');
INSERT INTO `volume` VALUES ('40', '10.8', '1.781');
INSERT INTO `volume` VALUES ('40', '11', '1.822');
INSERT INTO `volume` VALUES ('40', '11.2', '1.863');
INSERT INTO `volume` VALUES ('40', '11.4', '1.905');
INSERT INTO `volume` VALUES ('40', '11.6', '1.947');
INSERT INTO `volume` VALUES ('40', '11.8', '1.989');
INSERT INTO `volume` VALUES ('40', '12', '2.031');
INSERT INTO `volume` VALUES ('40', '12.2', '2.074');
INSERT INTO `volume` VALUES ('40', '12.4', '2.117');
INSERT INTO `volume` VALUES ('40', '12.6', '2.161');
INSERT INTO `volume` VALUES ('40', '12.8', '2.205');
INSERT INTO `volume` VALUES ('40', '13', '2.249');
INSERT INTO `volume` VALUES ('40', '13.2', '2.293');
INSERT INTO `volume` VALUES ('40', '13.4', '2.338');
INSERT INTO `volume` VALUES ('40', '13.6', '2.383');
INSERT INTO `volume` VALUES ('40', '13.8', '2.428');
INSERT INTO `volume` VALUES ('40', '14', '2.474');
INSERT INTO `volume` VALUES ('41', '2', '0.292');
INSERT INTO `volume` VALUES ('41', '2.2', '0.324');
INSERT INTO `volume` VALUES ('41', '2.4', '0.356');
INSERT INTO `volume` VALUES ('41', '2.6', '0.389');
INSERT INTO `volume` VALUES ('41', '2.8', '0.422');
INSERT INTO `volume` VALUES ('41', '3', '0.455');
INSERT INTO `volume` VALUES ('41', '3.2', '0.489');
INSERT INTO `volume` VALUES ('41', '3.4', '0.523');
INSERT INTO `volume` VALUES ('41', '3.6', '0.557');
INSERT INTO `volume` VALUES ('41', '3.8', '0.591');
INSERT INTO `volume` VALUES ('41', '4', '0.626');
INSERT INTO `volume` VALUES ('41', '4.2', '0.661');
INSERT INTO `volume` VALUES ('41', '4.4', '0.696');
INSERT INTO `volume` VALUES ('41', '4.6', '0.731');
INSERT INTO `volume` VALUES ('41', '4.8', '0.766');
INSERT INTO `volume` VALUES ('41', '5', '0.802');
INSERT INTO `volume` VALUES ('41', '5.2', '0.838');
INSERT INTO `volume` VALUES ('41', '5.4', '0.874');
INSERT INTO `volume` VALUES ('41', '5.6', '0.91');
INSERT INTO `volume` VALUES ('41', '5.8', '0.946');
INSERT INTO `volume` VALUES ('41', '6', '0.983');
INSERT INTO `volume` VALUES ('41', '6.2', '1.019');
INSERT INTO `volume` VALUES ('41', '6.4', '1.056');
INSERT INTO `volume` VALUES ('41', '6.6', '1.093');
INSERT INTO `volume` VALUES ('41', '6.8', '1.13');
INSERT INTO `volume` VALUES ('41', '7', '1.167');
INSERT INTO `volume` VALUES ('41', '7.2', '1.204');
INSERT INTO `volume` VALUES ('41', '7.4', '1.242');
INSERT INTO `volume` VALUES ('41', '7.6', '1.279');
INSERT INTO `volume` VALUES ('41', '7.8', '1.317');
INSERT INTO `volume` VALUES ('41', '8', '1.355');
INSERT INTO `volume` VALUES ('41', '8.2', '1.393');
INSERT INTO `volume` VALUES ('41', '8.4', '1.431');
INSERT INTO `volume` VALUES ('41', '8.6', '1.469');
INSERT INTO `volume` VALUES ('41', '8.8', '1.508');
INSERT INTO `volume` VALUES ('41', '9', '1.547');
INSERT INTO `volume` VALUES ('41', '9.2', '1.586');
INSERT INTO `volume` VALUES ('41', '9.4', '1.625');
INSERT INTO `volume` VALUES ('41', '9.6', '1.664');
INSERT INTO `volume` VALUES ('41', '9.8', '1.704');
INSERT INTO `volume` VALUES ('41', '10', '1.744');
INSERT INTO `volume` VALUES ('41', '10.2', '1.76');
INSERT INTO `volume` VALUES ('41', '10.4', '1.776');
INSERT INTO `volume` VALUES ('41', '10.6', '1.818');
INSERT INTO `volume` VALUES ('41', '10.8', '1.86');
INSERT INTO `volume` VALUES ('41', '11', '1.903');
INSERT INTO `volume` VALUES ('41', '11.2', '1.946');
INSERT INTO `volume` VALUES ('41', '11.4', '1.959');
INSERT INTO `volume` VALUES ('41', '11.6', '2.033');
INSERT INTO `volume` VALUES ('41', '11.8', '2.076');
INSERT INTO `volume` VALUES ('41', '12', '2.121');
INSERT INTO `volume` VALUES ('41', '12.2', '2.165');
INSERT INTO `volume` VALUES ('41', '12.4', '2.21');
INSERT INTO `volume` VALUES ('41', '12.6', '2.255');
INSERT INTO `volume` VALUES ('41', '12.8', '2.301');
INSERT INTO `volume` VALUES ('41', '13', '2.347');
INSERT INTO `volume` VALUES ('41', '13.2', '2.393');
INSERT INTO `volume` VALUES ('41', '13.4', '2.439');
INSERT INTO `volume` VALUES ('41', '13.6', '2.486');
INSERT INTO `volume` VALUES ('41', '13.8', '2.533');
INSERT INTO `volume` VALUES ('41', '14', '2.58');
INSERT INTO `volume` VALUES ('42', '2', '0.306');
INSERT INTO `volume` VALUES ('42', '2.2', '0.34');
INSERT INTO `volume` VALUES ('42', '2.4', '0.374');
INSERT INTO `volume` VALUES ('42', '2.6', '0.408');
INSERT INTO `volume` VALUES ('42', '2.8', '0.442');
INSERT INTO `volume` VALUES ('42', '3', '0.477');
INSERT INTO `volume` VALUES ('42', '3.2', '0.512');
INSERT INTO `volume` VALUES ('42', '3.4', '0.548');
INSERT INTO `volume` VALUES ('42', '3.6', '0.583');
INSERT INTO `volume` VALUES ('42', '3.8', '0.619');
INSERT INTO `volume` VALUES ('42', '4', '0.656');
INSERT INTO `volume` VALUES ('42', '4.2', '0.692');
INSERT INTO `volume` VALUES ('42', '4.4', '0.729');
INSERT INTO `volume` VALUES ('42', '4.6', '0.766');
INSERT INTO `volume` VALUES ('42', '4.8', '0.803');
INSERT INTO `volume` VALUES ('42', '5', '0.84');
INSERT INTO `volume` VALUES ('42', '5.2', '0.877');
INSERT INTO `volume` VALUES ('42', '5.4', '0.915');
INSERT INTO `volume` VALUES ('42', '5.6', '0.953');
INSERT INTO `volume` VALUES ('42', '5.8', '0.99');
INSERT INTO `volume` VALUES ('42', '6', '1.028');
INSERT INTO `volume` VALUES ('42', '6.2', '1.067');
INSERT INTO `volume` VALUES ('42', '6.4', '1.105');
INSERT INTO `volume` VALUES ('42', '6.6', '1.143');
INSERT INTO `volume` VALUES ('42', '6.8', '1.182');
INSERT INTO `volume` VALUES ('42', '7', '1.221');
INSERT INTO `volume` VALUES ('42', '7.2', '1.259');
INSERT INTO `volume` VALUES ('42', '7.4', '1.298');
INSERT INTO `volume` VALUES ('42', '7.6', '1.337');
INSERT INTO `volume` VALUES ('42', '7.8', '1.377');
INSERT INTO `volume` VALUES ('42', '8', '1.416');
INSERT INTO `volume` VALUES ('42', '8.2', '1.456');
INSERT INTO `volume` VALUES ('42', '8.4', '1.495');
INSERT INTO `volume` VALUES ('42', '8.6', '1.535');
INSERT INTO `volume` VALUES ('42', '8.8', '1.575');
INSERT INTO `volume` VALUES ('42', '9', '1.615');
INSERT INTO `volume` VALUES ('42', '9.2', '1.656');
INSERT INTO `volume` VALUES ('42', '9.4', '1.697');
INSERT INTO `volume` VALUES ('42', '9.6', '1.737');
INSERT INTO `volume` VALUES ('42', '9.8', '1.779');
INSERT INTO `volume` VALUES ('42', '10', '1.82');
INSERT INTO `volume` VALUES ('42', '10.2', '1.837');
INSERT INTO `volume` VALUES ('42', '10.4', '1.854');
INSERT INTO `volume` VALUES ('42', '10.6', '1.897');
INSERT INTO `volume` VALUES ('42', '10.8', '1.941');
INSERT INTO `volume` VALUES ('42', '11', '1.986');
INSERT INTO `volume` VALUES ('42', '11.2', '2.03');
INSERT INTO `volume` VALUES ('42', '11.4', '2.075');
INSERT INTO `volume` VALUES ('42', '11.6', '2.12');
INSERT INTO `volume` VALUES ('42', '11.8', '2.166');
INSERT INTO `volume` VALUES ('42', '12', '2.212');
INSERT INTO `volume` VALUES ('42', '12.2', '2.258');
INSERT INTO `volume` VALUES ('42', '12.4', '2.305');
INSERT INTO `volume` VALUES ('42', '12.6', '2.352');
INSERT INTO `volume` VALUES ('42', '12.8', '2.399');
INSERT INTO `volume` VALUES ('42', '13', '2.446');
INSERT INTO `volume` VALUES ('42', '13.2', '2.494');
INSERT INTO `volume` VALUES ('42', '13.4', '2.542');
INSERT INTO `volume` VALUES ('42', '13.6', '2.591');
INSERT INTO `volume` VALUES ('42', '13.8', '2.64');
INSERT INTO `volume` VALUES ('42', '14', '2.689');
INSERT INTO `volume` VALUES ('43', '2', '0.321');
INSERT INTO `volume` VALUES ('43', '2.2', '0.356');
INSERT INTO `volume` VALUES ('43', '2.4', '0.391');
INSERT INTO `volume` VALUES ('43', '2.6', '0.427');
INSERT INTO `volume` VALUES ('43', '2.8', '0.463');
INSERT INTO `volume` VALUES ('43', '3', '0.499');
INSERT INTO `volume` VALUES ('43', '3.2', '0.536');
INSERT INTO `volume` VALUES ('43', '3.4', '0.573');
INSERT INTO `volume` VALUES ('43', '3.6', '0.611');
INSERT INTO `volume` VALUES ('43', '3.8', '0.648');
INSERT INTO `volume` VALUES ('43', '4', '0.686');
INSERT INTO `volume` VALUES ('43', '4.2', '0.724');
INSERT INTO `volume` VALUES ('43', '4.4', '0.762');
INSERT INTO `volume` VALUES ('43', '4.6', '0.801');
INSERT INTO `volume` VALUES ('43', '4.8', '0.84');
INSERT INTO `volume` VALUES ('43', '5', '0.878');
INSERT INTO `volume` VALUES ('43', '5.2', '0.917');
INSERT INTO `volume` VALUES ('43', '5.4', '0.957');
INSERT INTO `volume` VALUES ('43', '5.6', '0.996');
INSERT INTO `volume` VALUES ('43', '5.8', '1.035');
INSERT INTO `volume` VALUES ('43', '6', '1.075');
INSERT INTO `volume` VALUES ('43', '6.2', '1.115');
INSERT INTO `volume` VALUES ('43', '6.4', '1.155');
INSERT INTO `volume` VALUES ('43', '6.6', '1.195');
INSERT INTO `volume` VALUES ('43', '6.8', '1.235');
INSERT INTO `volume` VALUES ('43', '7', '1.275');
INSERT INTO `volume` VALUES ('43', '7.2', '1.316');
INSERT INTO `volume` VALUES ('43', '7.4', '1.356');
INSERT INTO `volume` VALUES ('43', '7.6', '1.397');
INSERT INTO `volume` VALUES ('43', '7.8', '1.438');
INSERT INTO `volume` VALUES ('43', '8', '1.478');
INSERT INTO `volume` VALUES ('43', '8.2', '1.52');
INSERT INTO `volume` VALUES ('43', '8.4', '1.561');
INSERT INTO `volume` VALUES ('43', '8.6', '1.602');
INSERT INTO `volume` VALUES ('43', '8.8', '1.644');
INSERT INTO `volume` VALUES ('43', '9', '1.686');
INSERT INTO `volume` VALUES ('43', '9.2', '1.728');
INSERT INTO `volume` VALUES ('43', '9.4', '1.77');
INSERT INTO `volume` VALUES ('43', '9.6', '1.812');
INSERT INTO `volume` VALUES ('43', '9.8', '1.855');
INSERT INTO `volume` VALUES ('43', '10', '1.898');
INSERT INTO `volume` VALUES ('43', '10.2', '1.916');
INSERT INTO `volume` VALUES ('43', '10.4', '1.933');
INSERT INTO `volume` VALUES ('43', '10.6', '1.978');
INSERT INTO `volume` VALUES ('43', '10.8', '2.024');
INSERT INTO `volume` VALUES ('43', '11', '2.07');
INSERT INTO `volume` VALUES ('43', '11.2', '2.116');
INSERT INTO `volume` VALUES ('43', '11.4', '2.163');
INSERT INTO `volume` VALUES ('43', '11.6', '2.21');
INSERT INTO `volume` VALUES ('43', '11.8', '2.257');
INSERT INTO `volume` VALUES ('43', '12', '2.305');
INSERT INTO `volume` VALUES ('43', '12.2', '2.353');
INSERT INTO `volume` VALUES ('43', '12.4', '2.401');
INSERT INTO `volume` VALUES ('43', '12.6', '2.45');
INSERT INTO `volume` VALUES ('43', '12.8', '2.499');
INSERT INTO `volume` VALUES ('43', '13', '2.548');
INSERT INTO `volume` VALUES ('43', '13.2', '2.598');
INSERT INTO `volume` VALUES ('43', '13.4', '2.648');
INSERT INTO `volume` VALUES ('43', '13.6', '2.698');
INSERT INTO `volume` VALUES ('43', '13.8', '2.749');
INSERT INTO `volume` VALUES ('43', '14', '2.8');
INSERT INTO `volume` VALUES ('44', '2', '0.336');
INSERT INTO `volume` VALUES ('44', '2.2', '0.372');
INSERT INTO `volume` VALUES ('44', '2.4', '0.409');
INSERT INTO `volume` VALUES ('44', '2.6', '0.447');
INSERT INTO `volume` VALUES ('44', '2.8', '0.484');
INSERT INTO `volume` VALUES ('44', '3', '0.522');
INSERT INTO `volume` VALUES ('44', '3.2', '0.561');
INSERT INTO `volume` VALUES ('44', '3.4', '0.599');
INSERT INTO `volume` VALUES ('44', '3.6', '0.638');
INSERT INTO `volume` VALUES ('44', '3.8', '0.678');
INSERT INTO `volume` VALUES ('44', '4', '0.717');
INSERT INTO `volume` VALUES ('44', '4.2', '0.757');
INSERT INTO `volume` VALUES ('44', '4.4', '0.797');
INSERT INTO `volume` VALUES ('44', '4.6', '0.837');
INSERT INTO `volume` VALUES ('44', '4.8', '0.877');
INSERT INTO `volume` VALUES ('44', '5', '0.918');
INSERT INTO `volume` VALUES ('44', '5.2', '0.959');
INSERT INTO `volume` VALUES ('44', '5.4', '0.999');
INSERT INTO `volume` VALUES ('44', '5.6', '1.04');
INSERT INTO `volume` VALUES ('44', '5.8', '1.082');
INSERT INTO `volume` VALUES ('44', '6', '1.123');
INSERT INTO `volume` VALUES ('44', '6.2', '1.164');
INSERT INTO `volume` VALUES ('44', '6.4', '1.206');
INSERT INTO `volume` VALUES ('44', '6.6', '1.247');
INSERT INTO `volume` VALUES ('44', '6.8', '1.289');
INSERT INTO `volume` VALUES ('44', '7', '1.331');
INSERT INTO `volume` VALUES ('44', '7.2', '1.373');
INSERT INTO `volume` VALUES ('44', '7.4', '1.415');
INSERT INTO `volume` VALUES ('44', '7.6', '1.457');
INSERT INTO `volume` VALUES ('44', '7.8', '1.5');
INSERT INTO `volume` VALUES ('44', '8', '1.542');
INSERT INTO `volume` VALUES ('44', '8.2', '1.585');
INSERT INTO `volume` VALUES ('44', '8.4', '1.628');
INSERT INTO `volume` VALUES ('44', '8.6', '1.6712');
INSERT INTO `volume` VALUES ('44', '8.8', '1.714');
INSERT INTO `volume` VALUES ('44', '9', '1.757');
INSERT INTO `volume` VALUES ('44', '9.2', '1.801');
INSERT INTO `volume` VALUES ('44', '9.4', '1.845');
INSERT INTO `volume` VALUES ('44', '9.6', '1.889');
INSERT INTO `volume` VALUES ('44', '9.8', '1.933');
INSERT INTO `volume` VALUES ('44', '10', '1.978');
INSERT INTO `volume` VALUES ('44', '10.2', '1.996');
INSERT INTO `volume` VALUES ('44', '10.4', '2.014');
INSERT INTO `volume` VALUES ('44', '10.6', '2.061');
INSERT INTO `volume` VALUES ('44', '10.8', '2.108');
INSERT INTO `volume` VALUES ('44', '11', '2.156');
INSERT INTO `volume` VALUES ('44', '11.2', '2.204');
INSERT INTO `volume` VALUES ('44', '11.4', '2.253');
INSERT INTO `volume` VALUES ('44', '11.6', '2.301');
INSERT INTO `volume` VALUES ('44', '11.8', '2.351');
INSERT INTO `volume` VALUES ('44', '12', '2.4');
INSERT INTO `volume` VALUES ('44', '12.2', '2.45');
INSERT INTO `volume` VALUES ('44', '12.4', '2.5');
INSERT INTO `volume` VALUES ('44', '12.6', '2.55');
INSERT INTO `volume` VALUES ('44', '12.8', '2.601');
INSERT INTO `volume` VALUES ('44', '13', '2.652');
INSERT INTO `volume` VALUES ('44', '13.2', '2.704');
INSERT INTO `volume` VALUES ('44', '13.4', '2.756');
INSERT INTO `volume` VALUES ('44', '13.6', '2.808');
INSERT INTO `volume` VALUES ('44', '13.8', '2.86');
INSERT INTO `volume` VALUES ('44', '14', '2.913');
INSERT INTO `volume` VALUES ('45', '2', '0.351');
INSERT INTO `volume` VALUES ('45', '2.2', '0.389');
INSERT INTO `volume` VALUES ('45', '2.4', '0.428');
INSERT INTO `volume` VALUES ('45', '2.6', '0.467');
INSERT INTO `volume` VALUES ('45', '2.8', '0.506');
INSERT INTO `volume` VALUES ('45', '3', '0.546');
INSERT INTO `volume` VALUES ('45', '3.2', '0.586');
INSERT INTO `volume` VALUES ('45', '3.4', '0.626');
INSERT INTO `volume` VALUES ('45', '3.6', '0.667');
INSERT INTO `volume` VALUES ('45', '3.8', '0.708');
INSERT INTO `volume` VALUES ('45', '4', '0.749');
INSERT INTO `volume` VALUES ('45', '4.2', '0.79');
INSERT INTO `volume` VALUES ('45', '4.4', '0.832');
INSERT INTO `volume` VALUES ('45', '4.6', '0.874');
INSERT INTO `volume` VALUES ('45', '4.8', '0.916');
INSERT INTO `volume` VALUES ('45', '5', '0.958');
INSERT INTO `volume` VALUES ('45', '5.2', '1.001');
INSERT INTO `volume` VALUES ('45', '5.4', '1.043');
INSERT INTO `volume` VALUES ('45', '5.6', '1.086');
INSERT INTO `volume` VALUES ('45', '5.8', '1.129');
INSERT INTO `volume` VALUES ('45', '6', '1.172');
INSERT INTO `volume` VALUES ('45', '6.2', '1.215');
INSERT INTO `volume` VALUES ('45', '6.4', '1.258');
INSERT INTO `volume` VALUES ('45', '6.6', '1.301');
INSERT INTO `volume` VALUES ('45', '6.8', '1.344');
INSERT INTO `volume` VALUES ('45', '7', '1.388');
INSERT INTO `volume` VALUES ('45', '7.2', '1.432');
INSERT INTO `volume` VALUES ('45', '7.4', '1.475');
INSERT INTO `volume` VALUES ('45', '7.6', '1.519');
INSERT INTO `volume` VALUES ('45', '7.8', '1.563');
INSERT INTO `volume` VALUES ('45', '8', '1.607');
INSERT INTO `volume` VALUES ('45', '8.2', '1.652');
INSERT INTO `volume` VALUES ('45', '8.4', '1.696');
INSERT INTO `volume` VALUES ('45', '8.6', '1.741');
INSERT INTO `volume` VALUES ('45', '8.8', '1.786');
INSERT INTO `volume` VALUES ('45', '9', '1.831');
INSERT INTO `volume` VALUES ('45', '9.2', '1.876');
INSERT INTO `volume` VALUES ('45', '9.4', '1.921');
INSERT INTO `volume` VALUES ('45', '9.6', '1.967');
INSERT INTO `volume` VALUES ('45', '9.8', '2.013');
INSERT INTO `volume` VALUES ('45', '10', '2.059');
INSERT INTO `volume` VALUES ('45', '10.2', '2.078');
INSERT INTO `volume` VALUES ('45', '10.4', '2.097');
INSERT INTO `volume` VALUES ('45', '10.6', '2.146');
INSERT INTO `volume` VALUES ('45', '10.8', '2.195');
INSERT INTO `volume` VALUES ('45', '11', '2.244');
INSERT INTO `volume` VALUES ('45', '11.2', '2.294');
INSERT INTO `volume` VALUES ('45', '11.4', '2.344');
INSERT INTO `volume` VALUES ('45', '11.6', '2.395');
INSERT INTO `volume` VALUES ('45', '11.8', '2.446');
INSERT INTO `volume` VALUES ('45', '12', '2.497');
INSERT INTO `volume` VALUES ('45', '12.2', '2.549');
INSERT INTO `volume` VALUES ('45', '12.4', '2.6');
INSERT INTO `volume` VALUES ('45', '12.6', '2.653');
INSERT INTO `volume` VALUES ('45', '12.8', '2.705');
INSERT INTO `volume` VALUES ('45', '13', '2.758');
INSERT INTO `volume` VALUES ('45', '13.2', '2.812');
INSERT INTO `volume` VALUES ('45', '13.4', '2.865');
INSERT INTO `volume` VALUES ('45', '13.6', '2.919');
INSERT INTO `volume` VALUES ('45', '13.8', '2.974');
INSERT INTO `volume` VALUES ('45', '14', '3.028');
INSERT INTO `volume` VALUES ('46', '2', '0.367');
INSERT INTO `volume` VALUES ('46', '2.2', '0.406');
INSERT INTO `volume` VALUES ('46', '2.4', '0.447');
INSERT INTO `volume` VALUES ('46', '2.6', '0.487');
INSERT INTO `volume` VALUES ('46', '2.8', '0.528');
INSERT INTO `volume` VALUES ('46', '3', '0.57');
INSERT INTO `volume` VALUES ('46', '3.2', '0.612');
INSERT INTO `volume` VALUES ('46', '3.4', '0.654');
INSERT INTO `volume` VALUES ('46', '3.6', '0.696');
INSERT INTO `volume` VALUES ('46', '3.8', '0.739');
INSERT INTO `volume` VALUES ('46', '4', '0.782');
INSERT INTO `volume` VALUES ('46', '4.2', '0.825');
INSERT INTO `volume` VALUES ('46', '4.4', '0.868');
INSERT INTO `volume` VALUES ('46', '4.6', '0.912');
INSERT INTO `volume` VALUES ('46', '4.8', '0.955');
INSERT INTO `volume` VALUES ('46', '5', '0.999');
INSERT INTO `volume` VALUES ('46', '5.2', '1.043');
INSERT INTO `volume` VALUES ('46', '5.4', '1.088');
INSERT INTO `volume` VALUES ('46', '5.6', '1.132');
INSERT INTO `volume` VALUES ('46', '5.8', '1.177');
INSERT INTO `volume` VALUES ('46', '6', '1.221');
INSERT INTO `volume` VALUES ('46', '6.2', '1.266');
INSERT INTO `volume` VALUES ('46', '6.4', '1.311');
INSERT INTO `volume` VALUES ('46', '6.6', '1.356');
INSERT INTO `volume` VALUES ('46', '6.8', '1.401');
INSERT INTO `volume` VALUES ('46', '7', '1.446');
INSERT INTO `volume` VALUES ('46', '7.2', '1.492');
INSERT INTO `volume` VALUES ('46', '7.4', '1.537');
INSERT INTO `volume` VALUES ('46', '7.6', '1.583');
INSERT INTO `volume` VALUES ('46', '7.8', '1.628');
INSERT INTO `volume` VALUES ('46', '8', '1.674');
INSERT INTO `volume` VALUES ('46', '8.2', '1.72');
INSERT INTO `volume` VALUES ('46', '8.4', '1.766');
INSERT INTO `volume` VALUES ('46', '8.6', '1.812');
INSERT INTO `volume` VALUES ('46', '8.8', '1.859');
INSERT INTO `volume` VALUES ('46', '9', '1.905');
INSERT INTO `volume` VALUES ('46', '9.2', '1.952');
INSERT INTO `volume` VALUES ('46', '9.4', '1.999');
INSERT INTO `volume` VALUES ('46', '9.6', '2.046');
INSERT INTO `volume` VALUES ('46', '9.8', '2.094');
INSERT INTO `volume` VALUES ('46', '10', '2.142');
INSERT INTO `volume` VALUES ('46', '10.2', '2.162');
INSERT INTO `volume` VALUES ('46', '10.4', '2.181');
INSERT INTO `volume` VALUES ('46', '10.6', '2.2323');
INSERT INTO `volume` VALUES ('46', '10.8', '2.283');
INSERT INTO `volume` VALUES ('46', '11', '2.334');
INSERT INTO `volume` VALUES ('46', '11.2', '2.386');
INSERT INTO `volume` VALUES ('46', '11.4', '2.438');
INSERT INTO `volume` VALUES ('46', '11.6', '2.49');
INSERT INTO `volume` VALUES ('46', '11.8', '2.543');
INSERT INTO `volume` VALUES ('46', '12', '2.596');
INSERT INTO `volume` VALUES ('46', '12.2', '2.649');
INSERT INTO `volume` VALUES ('46', '12.4', '2.703');
INSERT INTO `volume` VALUES ('46', '12.6', '2.757');
INSERT INTO `volume` VALUES ('46', '12.8', '2.812');
INSERT INTO `volume` VALUES ('46', '13', '2.867');
INSERT INTO `volume` VALUES ('46', '13.2', '2.922');
INSERT INTO `volume` VALUES ('46', '13.4', '2.977');
INSERT INTO `volume` VALUES ('46', '13.6', '3.033');
INSERT INTO `volume` VALUES ('46', '13.8', '3.089');
INSERT INTO `volume` VALUES ('46', '14', '3.146');
INSERT INTO `volume` VALUES ('47', '2', '0.383');
INSERT INTO `volume` VALUES ('47', '2.2', '0.424');
INSERT INTO `volume` VALUES ('47', '2.4', '0.466');
INSERT INTO `volume` VALUES ('47', '2.6', '0.508');
INSERT INTO `volume` VALUES ('47', '2.8', '0.551');
INSERT INTO `volume` VALUES ('47', '3', '0.594');
INSERT INTO `volume` VALUES ('47', '3.2', '0.638');
INSERT INTO `volume` VALUES ('47', '3.4', '0.682');
INSERT INTO `volume` VALUES ('47', '3.6', '0.726');
INSERT INTO `volume` VALUES ('47', '3.8', '0.77');
INSERT INTO `volume` VALUES ('47', '4', '0.815');
INSERT INTO `volume` VALUES ('47', '4.2', '0.86');
INSERT INTO `volume` VALUES ('47', '4.4', '0.905');
INSERT INTO `volume` VALUES ('47', '4.6', '0.95');
INSERT INTO `volume` VALUES ('47', '4.8', '0.996');
INSERT INTO `volume` VALUES ('47', '5', '1.041');
INSERT INTO `volume` VALUES ('47', '5.2', '1.087');
INSERT INTO `volume` VALUES ('47', '5.4', '1.133');
INSERT INTO `volume` VALUES ('47', '5.6', '1.179');
INSERT INTO `volume` VALUES ('47', '5.8', '1.226');
INSERT INTO `volume` VALUES ('47', '6', '1.272');
INSERT INTO `volume` VALUES ('47', '6.2', '1.319');
INSERT INTO `volume` VALUES ('47', '6.4', '1.365');
INSERT INTO `volume` VALUES ('47', '6.6', '1.412');
INSERT INTO `volume` VALUES ('47', '6.8', '1.459');
INSERT INTO `volume` VALUES ('47', '7', '1.506');
INSERT INTO `volume` VALUES ('47', '7.2', '1.553');
INSERT INTO `volume` VALUES ('47', '7.4', '1.6');
INSERT INTO `volume` VALUES ('47', '7.6', '1.647');
INSERT INTO `volume` VALUES ('47', '7.8', '1.694');
INSERT INTO `volume` VALUES ('47', '8', '1.742');
INSERT INTO `volume` VALUES ('47', '8.2', '1.789');
INSERT INTO `volume` VALUES ('47', '8.4', '1.837');
INSERT INTO `volume` VALUES ('47', '8.6', '1.885');
INSERT INTO `volume` VALUES ('47', '8.8', '1.933');
INSERT INTO `volume` VALUES ('47', '9', '1.981');
INSERT INTO `volume` VALUES ('47', '9.2', '2.03');
INSERT INTO `volume` VALUES ('47', '9.4', '2.079');
INSERT INTO `volume` VALUES ('47', '9.6', '2.128');
INSERT INTO `volume` VALUES ('47', '9.8', '2.177');
INSERT INTO `volume` VALUES ('47', '10', '2.226');
INSERT INTO `volume` VALUES ('47', '10.2', '2.247');
INSERT INTO `volume` VALUES ('47', '10.4', '2.267');
INSERT INTO `volume` VALUES ('47', '10.6', '2.32');
INSERT INTO `volume` VALUES ('47', '10.8', '2.372');
INSERT INTO `volume` VALUES ('47', '11', '2.426');
INSERT INTO `volume` VALUES ('47', '11.2', '2.479');
INSERT INTO `volume` VALUES ('47', '11.4', '2.533');
INSERT INTO `volume` VALUES ('47', '11.6', '2.587');
INSERT INTO `volume` VALUES ('47', '11.8', '2.642');
INSERT INTO `volume` VALUES ('47', '12', '2.697');
INSERT INTO `volume` VALUES ('47', '12.2', '2.752');
INSERT INTO `volume` VALUES ('47', '12.4', '2.808');
INSERT INTO `volume` VALUES ('47', '12.6', '2.864');
INSERT INTO `volume` VALUES ('47', '12.8', '2.92');
INSERT INTO `volume` VALUES ('47', '13', '2.977');
INSERT INTO `volume` VALUES ('47', '13.2', '3.034');
INSERT INTO `volume` VALUES ('47', '13.4', '3.091');
INSERT INTO `volume` VALUES ('47', '13.6', '3.149');
INSERT INTO `volume` VALUES ('47', '13.8', '3.207');
INSERT INTO `volume` VALUES ('47', '14', '3.266');
INSERT INTO `volume` VALUES ('48', '2', '0.399');
INSERT INTO `volume` VALUES ('48', '2.2', '0.442');
INSERT INTO `volume` VALUES ('48', '2.4', '0.486');
INSERT INTO `volume` VALUES ('48', '2.6', '0.53');
INSERT INTO `volume` VALUES ('48', '2.8', '0.574');
INSERT INTO `volume` VALUES ('48', '3', '0.619');
INSERT INTO `volume` VALUES ('48', '3.2', '0.665');
INSERT INTO `volume` VALUES ('48', '3.4', '0.71');
INSERT INTO `volume` VALUES ('48', '3.6', '0.756');
INSERT INTO `volume` VALUES ('48', '3.8', '0.802');
INSERT INTO `volume` VALUES ('48', '4', '0.849');
INSERT INTO `volume` VALUES ('48', '4.2', '0.896');
INSERT INTO `volume` VALUES ('48', '4.4', '0.942');
INSERT INTO `volume` VALUES ('48', '4.6', '0.99');
INSERT INTO `volume` VALUES ('48', '4.8', '1.037');
INSERT INTO `volume` VALUES ('48', '5', '1.084');
INSERT INTO `volume` VALUES ('48', '5.2', '1.132');
INSERT INTO `volume` VALUES ('48', '5.4', '1.18');
INSERT INTO `volume` VALUES ('48', '5.6', '1.228');
INSERT INTO `volume` VALUES ('48', '5.8', '1.276');
INSERT INTO `volume` VALUES ('48', '6', '1.324');
INSERT INTO `volume` VALUES ('48', '6.2', '1.372');
INSERT INTO `volume` VALUES ('48', '6.4', '1.421');
INSERT INTO `volume` VALUES ('48', '6.6', '1.469');
INSERT INTO `volume` VALUES ('48', '6.8', '1.518');
INSERT INTO `volume` VALUES ('48', '7', '1.566');
INSERT INTO `volume` VALUES ('48', '7.2', '1.615');
INSERT INTO `volume` VALUES ('48', '7.4', '1.664');
INSERT INTO `volume` VALUES ('48', '7.6', '1.713');
INSERT INTO `volume` VALUES ('48', '7.8', '1.762');
INSERT INTO `volume` VALUES ('48', '8', '1.811');
INSERT INTO `volume` VALUES ('48', '8.2', '1.86');
INSERT INTO `volume` VALUES ('48', '8.4', '1.91');
INSERT INTO `volume` VALUES ('48', '8.6', '1.959');
INSERT INTO `volume` VALUES ('48', '8.8', '2.009');
INSERT INTO `volume` VALUES ('48', '9', '2.059');
INSERT INTO `volume` VALUES ('48', '9.2', '2.109');
INSERT INTO `volume` VALUES ('48', '9.4', '2.16');
INSERT INTO `volume` VALUES ('48', '9.6', '2.21');
INSERT INTO `volume` VALUES ('48', '10', '2.312');
INSERT INTO `volume` VALUES ('48', '10.2', '2.334');
INSERT INTO `volume` VALUES ('48', '10.4', '2.355');
INSERT INTO `volume` VALUES ('48', '10.6', '2.409');
INSERT INTO `volume` VALUES ('48', '10.8', '2.464');
INSERT INTO `volume` VALUES ('48', '11', '2.519');
INSERT INTO `volume` VALUES ('48', '11.2', '2.574');
INSERT INTO `volume` VALUES ('48', '11.4', '2.63');
INSERT INTO `volume` VALUES ('48', '11.6', '2.686');
INSERT INTO `volume` VALUES ('48', '11.8', '2.743');
INSERT INTO `volume` VALUES ('48', '12', '2.799');
INSERT INTO `volume` VALUES ('48', '12.2', '2.857');
INSERT INTO `volume` VALUES ('48', '12.4', '2.914');
INSERT INTO `volume` VALUES ('48', '12.6', '2.972');
INSERT INTO `volume` VALUES ('48', '12.8', '3.03');
INSERT INTO `volume` VALUES ('48', '13', '3.089');
INSERT INTO `volume` VALUES ('48', '13.2', '3.148');
INSERT INTO `volume` VALUES ('48', '13.4', '3.208');
INSERT INTO `volume` VALUES ('48', '13.6', '3.267');
INSERT INTO `volume` VALUES ('48', '13.8', '3.327');
INSERT INTO `volume` VALUES ('48', '14', '3.388');
INSERT INTO `volume` VALUES ('49', '2', '0.415');
INSERT INTO `volume` VALUES ('49', '2.2', '0.46');
INSERT INTO `volume` VALUES ('49', '2.4', '0.506');
INSERT INTO `volume` VALUES ('49', '2.6', '0.552');
INSERT INTO `volume` VALUES ('49', '2.8', '0.598');
INSERT INTO `volume` VALUES ('49', '3', '0.645');
INSERT INTO `volume` VALUES ('49', '3.2', '0.692');
INSERT INTO `volume` VALUES ('49', '3.4', '0.739');
INSERT INTO `volume` VALUES ('49', '3.6', '0.787');
INSERT INTO `volume` VALUES ('49', '3.8', '0.835');
INSERT INTO `volume` VALUES ('49', '4', '0.883');
INSERT INTO `volume` VALUES ('49', '4.2', '0.932');
INSERT INTO `volume` VALUES ('49', '4.4', '0.981');
INSERT INTO `volume` VALUES ('49', '4.6', '1.03');
INSERT INTO `volume` VALUES ('49', '4.8', '1.079');
INSERT INTO `volume` VALUES ('49', '5', '1.128');
INSERT INTO `volume` VALUES ('49', '5.2', '1.178');
INSERT INTO `volume` VALUES ('49', '5.4', '1.227');
INSERT INTO `volume` VALUES ('49', '5.6', '1.277');
INSERT INTO `volume` VALUES ('49', '5.8', '1.327');
INSERT INTO `volume` VALUES ('49', '6', '1.377');
INSERT INTO `volume` VALUES ('49', '6.2', '1.427');
INSERT INTO `volume` VALUES ('49', '6.4', '1.477');
INSERT INTO `volume` VALUES ('49', '6.6', '1.527');
INSERT INTO `volume` VALUES ('49', '6.8', '1.578');
INSERT INTO `volume` VALUES ('49', '7', '1.628');
INSERT INTO `volume` VALUES ('49', '7.2', '1.679');
INSERT INTO `volume` VALUES ('49', '7.4', '1.729');
INSERT INTO `volume` VALUES ('49', '7.6', '1.78');
INSERT INTO `volume` VALUES ('49', '7.8', '1.831');
INSERT INTO `volume` VALUES ('49', '8', '1.882');
INSERT INTO `volume` VALUES ('49', '8.2', '1.933');
INSERT INTO `volume` VALUES ('49', '8.4', '1.984');
INSERT INTO `volume` VALUES ('49', '8.6', '2.035');
INSERT INTO `volume` VALUES ('49', '8.8', '2.087');
INSERT INTO `volume` VALUES ('49', '9', '2.138');
INSERT INTO `volume` VALUES ('49', '9.2', '2.19');
INSERT INTO `volume` VALUES ('49', '9.4', '2.242');
INSERT INTO `volume` VALUES ('49', '9.6', '2.295');
INSERT INTO `volume` VALUES ('49', '9.8', '2.347');
INSERT INTO `volume` VALUES ('49', '10', '2.4');
INSERT INTO `volume` VALUES ('49', '10.2', '2.422');
INSERT INTO `volume` VALUES ('49', '10.4', '2.444');
INSERT INTO `volume` VALUES ('49', '10.6', '2.5');
INSERT INTO `volume` VALUES ('49', '10.8', '2.557');
INSERT INTO `volume` VALUES ('49', '11', '2.614');
INSERT INTO `volume` VALUES ('49', '11.2', '2.671');
INSERT INTO `volume` VALUES ('49', '11.4', '2.729');
INSERT INTO `volume` VALUES ('49', '11.6', '2.787');
INSERT INTO `volume` VALUES ('49', '11.8', '2.845');
INSERT INTO `volume` VALUES ('49', '12', '2.904');
INSERT INTO `volume` VALUES ('49', '12.2', '2.963');
INSERT INTO `volume` VALUES ('49', '12.4', '3.023');
INSERT INTO `volume` VALUES ('49', '12.6', '3.083');
INSERT INTO `volume` VALUES ('49', '12.8', '3.143');
INSERT INTO `volume` VALUES ('49', '13', '3.203');
INSERT INTO `volume` VALUES ('49', '13.2', '3.264');
INSERT INTO `volume` VALUES ('49', '13.4', '3.326');
INSERT INTO `volume` VALUES ('49', '13.6', '3.388');
INSERT INTO `volume` VALUES ('49', '13.8', '3.45');
INSERT INTO `volume` VALUES ('49', '14', '3.512');
INSERT INTO `volume` VALUES ('50', '2', '0.432');
INSERT INTO `volume` VALUES ('50', '2.2', '0.479');
INSERT INTO `volume` VALUES ('50', '2.4', '0.526');
INSERT INTO `volume` VALUES ('50', '2.6', '0.574');
INSERT INTO `volume` VALUES ('50', '2.8', '0.622');
INSERT INTO `volume` VALUES ('50', '3', '0.671');
INSERT INTO `volume` VALUES ('50', '3.2', '0.72');
INSERT INTO `volume` VALUES ('50', '3.4', '0.769');
INSERT INTO `volume` VALUES ('50', '3.6', '0.819');
INSERT INTO `volume` VALUES ('50', '3.8', '0.869');
INSERT INTO `volume` VALUES ('50', '4', '0.919');
INSERT INTO `volume` VALUES ('50', '4.2', '0.969');
INSERT INTO `volume` VALUES ('50', '4.4', '1.02');
INSERT INTO `volume` VALUES ('50', '4.6', '1.071');
INSERT INTO `volume` VALUES ('50', '4.8', '1.122');
INSERT INTO `volume` VALUES ('50', '5', '1.173');
INSERT INTO `volume` VALUES ('50', '5.2', '1.224');
INSERT INTO `volume` VALUES ('50', '5.4', '1.276');
INSERT INTO `volume` VALUES ('50', '5.6', '1.327');
INSERT INTO `volume` VALUES ('50', '5.8', '1.379');
INSERT INTO `volume` VALUES ('50', '6', '1.431');
INSERT INTO `volume` VALUES ('50', '6.2', '1.483');
INSERT INTO `volume` VALUES ('50', '6.4', '1.535');
INSERT INTO `volume` VALUES ('50', '6.6', '1.587');
INSERT INTO `volume` VALUES ('50', '6.8', '1.639');
INSERT INTO `volume` VALUES ('50', '7', '1.691');
INSERT INTO `volume` VALUES ('50', '7.2', '1.743');
INSERT INTO `volume` VALUES ('50', '7.4', '1.796');
INSERT INTO `volume` VALUES ('50', '7.6', '1.848');
INSERT INTO `volume` VALUES ('50', '7.8', '1.901');
INSERT INTO `volume` VALUES ('50', '8', '1.954');
INSERT INTO `volume` VALUES ('50', '8.2', '2.006');
INSERT INTO `volume` VALUES ('50', '8.4', '2.059');
INSERT INTO `volume` VALUES ('50', '8.6', '2.112');
INSERT INTO `volume` VALUES ('50', '8.8', '2.166');
INSERT INTO `volume` VALUES ('50', '9', '2.219');
INSERT INTO `volume` VALUES ('50', '9.2', '2.273');
INSERT INTO `volume` VALUES ('50', '9.4', '2.327');
INSERT INTO `volume` VALUES ('50', '9.6', '2.381');
INSERT INTO `volume` VALUES ('50', '9.8', '2.435');
INSERT INTO `volume` VALUES ('50', '10', '2.489');
INSERT INTO `volume` VALUES ('50', '10.2', '2.512');
INSERT INTO `volume` VALUES ('50', '10.4', '2.535');
INSERT INTO `volume` VALUES ('50', '10.6', '2.593');
INSERT INTO `volume` VALUES ('50', '10.8', '2.652');
INSERT INTO `volume` VALUES ('50', '11', '2.711');
INSERT INTO `volume` VALUES ('50', '11.2', '2.77');
INSERT INTO `volume` VALUES ('50', '11.4', '2.829');
INSERT INTO `volume` VALUES ('50', '11.6', '2.889');
INSERT INTO `volume` VALUES ('50', '11.8', '2.95');
INSERT INTO `volume` VALUES ('50', '12', '3.011');
INSERT INTO `volume` VALUES ('50', '12.2', '3.072');
INSERT INTO `volume` VALUES ('50', '12.4', '3.133');
INSERT INTO `volume` VALUES ('50', '12.6', '3.195');
INSERT INTO `volume` VALUES ('50', '12.8', '3.257');
INSERT INTO `volume` VALUES ('50', '13', '3.32');
INSERT INTO `volume` VALUES ('50', '13.2', '3.383');
INSERT INTO `volume` VALUES ('50', '13.4', '3.446');
INSERT INTO `volume` VALUES ('50', '13.6', '3.51');
INSERT INTO `volume` VALUES ('50', '13.8', '3.574');
INSERT INTO `volume` VALUES ('50', '14', '3.639');
INSERT INTO `volume` VALUES ('51', '2', '0.45');
INSERT INTO `volume` VALUES ('51', '2.2', '0.498');
INSERT INTO `volume` VALUES ('51', '2.4', '0.547');
INSERT INTO `volume` VALUES ('51', '2.6', '0.597');
INSERT INTO `volume` VALUES ('51', '2.8', '0.647');
INSERT INTO `volume` VALUES ('51', '3', '0.697');
INSERT INTO `volume` VALUES ('51', '3.2', '0.748');
INSERT INTO `volume` VALUES ('51', '3.4', '0.799');
INSERT INTO `volume` VALUES ('51', '3.6', '0.851');
INSERT INTO `volume` VALUES ('51', '3.8', '0.903');
INSERT INTO `volume` VALUES ('51', '4', '0.955');
INSERT INTO `volume` VALUES ('51', '4.2', '1.007');
INSERT INTO `volume` VALUES ('51', '4.4', '1.06');
INSERT INTO `volume` VALUES ('51', '4.6', '1.112');
INSERT INTO `volume` VALUES ('51', '4.8', '1.165');
INSERT INTO `volume` VALUES ('51', '5', '1.218');
INSERT INTO `volume` VALUES ('51', '5.2', '1.272');
INSERT INTO `volume` VALUES ('51', '5.4', '1.325');
INSERT INTO `volume` VALUES ('51', '5.6', '1.378');
INSERT INTO `volume` VALUES ('51', '5.8', '1.432');
INSERT INTO `volume` VALUES ('51', '6', '1.486');
INSERT INTO `volume` VALUES ('51', '6.2', '1.539');
INSERT INTO `volume` VALUES ('51', '6.4', '1.593');
INSERT INTO `volume` VALUES ('51', '6.6', '1.647');
INSERT INTO `volume` VALUES ('51', '6.8', '1.701');
INSERT INTO `volume` VALUES ('51', '7', '1.755');
INSERT INTO `volume` VALUES ('51', '7.2', '1.809');
INSERT INTO `volume` VALUES ('51', '7.4', '1.864');
INSERT INTO `volume` VALUES ('51', '7.6', '1.918');
INSERT INTO `volume` VALUES ('51', '7.8', '1.972');
INSERT INTO `volume` VALUES ('51', '8', '2.027');
INSERT INTO `volume` VALUES ('51', '8.2', '2.081');
INSERT INTO `volume` VALUES ('51', '8.4', '2.136');
INSERT INTO `volume` VALUES ('51', '8.6', '2.191');
INSERT INTO `volume` VALUES ('51', '8.8', '2.246');
INSERT INTO `volume` VALUES ('51', '9', '2.301');
INSERT INTO `volume` VALUES ('51', '9.2', '2.357');
INSERT INTO `volume` VALUES ('51', '9.4', '2.412');
INSERT INTO `volume` VALUES ('51', '9.6', '2.468');
INSERT INTO `volume` VALUES ('51', '9.8', '2.524');
INSERT INTO `volume` VALUES ('51', '10', '2.58');
INSERT INTO `volume` VALUES ('51', '10.2', '2.604');
INSERT INTO `volume` VALUES ('51', '10.4', '2.628');
INSERT INTO `volume` VALUES ('51', '10.6', '2.688');
INSERT INTO `volume` VALUES ('51', '10.8', '2.748');
INSERT INTO `volume` VALUES ('51', '11', '2.809');
INSERT INTO `volume` VALUES ('51', '11.2', '2.87');
INSERT INTO `volume` VALUES ('51', '11.4', '2.932');
INSERT INTO `volume` VALUES ('51', '11.6', '2.994');
INSERT INTO `volume` VALUES ('51', '11.8', '3.056');
INSERT INTO `volume` VALUES ('51', '12', '3.119');
INSERT INTO `volume` VALUES ('51', '12.2', '3.182');
INSERT INTO `volume` VALUES ('51', '12.4', '3.246');
INSERT INTO `volume` VALUES ('51', '12.6', '3.31');
INSERT INTO `volume` VALUES ('51', '12.8', '3.374');
INSERT INTO `volume` VALUES ('51', '13', '3.439');
INSERT INTO `volume` VALUES ('51', '13.2', '3.504');
INSERT INTO `volume` VALUES ('51', '13.4', '3.569');
INSERT INTO `volume` VALUES ('51', '13.6', '3.635');
INSERT INTO `volume` VALUES ('51', '13.8', '3.701');
INSERT INTO `volume` VALUES ('51', '14', '3.768');
INSERT INTO `volume` VALUES ('52', '2', '0.467');
INSERT INTO `volume` VALUES ('52', '2.2', '0.518');
INSERT INTO `volume` VALUES ('52', '2.4', '0.569');
INSERT INTO `volume` VALUES ('52', '2.6', '0.62');
INSERT INTO `volume` VALUES ('52', '2.8', '0.672');
INSERT INTO `volume` VALUES ('52', '3', '0.724');
INSERT INTO `volume` VALUES ('52', '3.2', '0.777');
INSERT INTO `volume` VALUES ('52', '3.4', '0.83');
INSERT INTO `volume` VALUES ('52', '3.6', '0.884');
INSERT INTO `volume` VALUES ('52', '3.8', '0.938');
INSERT INTO `volume` VALUES ('52', '4', '0.992');
INSERT INTO `volume` VALUES ('52', '4.2', '1.046');
INSERT INTO `volume` VALUES ('52', '4.4', '1.1');
INSERT INTO `volume` VALUES ('52', '4.6', '1.155');
INSERT INTO `volume` VALUES ('52', '4.8', '1.21');
INSERT INTO `volume` VALUES ('52', '5', '1.265');
INSERT INTO `volume` VALUES ('52', '5.2', '1.32');
INSERT INTO `volume` VALUES ('52', '5.4', '1.375');
INSERT INTO `volume` VALUES ('52', '5.6', '1.431');
INSERT INTO `volume` VALUES ('52', '5.8', '1.486');
INSERT INTO `volume` VALUES ('52', '6', '1.542');
INSERT INTO `volume` VALUES ('52', '6.2', '1.597');
INSERT INTO `volume` VALUES ('52', '6.4', '1.653');
INSERT INTO `volume` VALUES ('52', '6.6', '1.709');
INSERT INTO `volume` VALUES ('52', '6.8', '1.765');
INSERT INTO `volume` VALUES ('52', '7', '1.821');
INSERT INTO `volume` VALUES ('52', '7.2', '1.877');
INSERT INTO `volume` VALUES ('52', '7.4', '1.933');
INSERT INTO `volume` VALUES ('52', '7.6', '1.989');
INSERT INTO `volume` VALUES ('52', '7.8', '2.045');
INSERT INTO `volume` VALUES ('52', '8', '2.101');
INSERT INTO `volume` VALUES ('52', '8.2', '2.158');
INSERT INTO `volume` VALUES ('52', '8.4', '2.214');
INSERT INTO `volume` VALUES ('52', '8.6', '2.271');
INSERT INTO `volume` VALUES ('52', '8.8', '2.328');
INSERT INTO `volume` VALUES ('52', '9', '2.385');
INSERT INTO `volume` VALUES ('52', '9.2', '2.442');
INSERT INTO `volume` VALUES ('52', '9.4', '2.5');
INSERT INTO `volume` VALUES ('52', '9.6', '2.557');
INSERT INTO `volume` VALUES ('52', '9.8', '2.615');
INSERT INTO `volume` VALUES ('52', '10', '2.673');
INSERT INTO `volume` VALUES ('52', '10.2', '2.698');
INSERT INTO `volume` VALUES ('52', '10.4', '2.722');
INSERT INTO `volume` VALUES ('52', '10.6', '2.784');
INSERT INTO `volume` VALUES ('52', '10.8', '2.847');
INSERT INTO `volume` VALUES ('52', '11', '2.91');
INSERT INTO `volume` VALUES ('52', '11.2', '2.973');
INSERT INTO `volume` VALUES ('52', '11.4', '3.036');
INSERT INTO `volume` VALUES ('52', '11.6', '3.1');
INSERT INTO `volume` VALUES ('52', '11.8', '3.165');
INSERT INTO `volume` VALUES ('52', '12', '3.229');
INSERT INTO `volume` VALUES ('52', '12.2', '3.295');
INSERT INTO `volume` VALUES ('52', '12.4', '3.36');
INSERT INTO `volume` VALUES ('52', '12.6', '3.426');
INSERT INTO `volume` VALUES ('52', '12.8', '3.492');
INSERT INTO `volume` VALUES ('52', '13', '3.559');
INSERT INTO `volume` VALUES ('52', '13.2', '3.626');
INSERT INTO `volume` VALUES ('52', '13.4', '3.694');
INSERT INTO `volume` VALUES ('52', '13.6', '3.762');
INSERT INTO `volume` VALUES ('52', '13.8', '3.83');
INSERT INTO `volume` VALUES ('52', '14', '3.899');
INSERT INTO `volume` VALUES ('53', '2', '0.485');
INSERT INTO `volume` VALUES ('53', '2.2', '0.537');
INSERT INTO `volume` VALUES ('53', '2.4', '0.59');
INSERT INTO `volume` VALUES ('53', '2.6', '0.644');
INSERT INTO `volume` VALUES ('53', '2.8', '0.698');
INSERT INTO `volume` VALUES ('53', '3', '0.752');
INSERT INTO `volume` VALUES ('53', '3.2', '0.807');
INSERT INTO `volume` VALUES ('53', '3.4', '0.862');
INSERT INTO `volume` VALUES ('53', '3.6', '0.917');
INSERT INTO `volume` VALUES ('53', '3.8', '0.973');
INSERT INTO `volume` VALUES ('53', '4', '1.029');
INSERT INTO `volume` VALUES ('53', '4.2', '1.085');
INSERT INTO `volume` VALUES ('53', '4.4', '1.142');
INSERT INTO `volume` VALUES ('53', '4.6', '1.198');
INSERT INTO `volume` VALUES ('53', '4.8', '1.255');
INSERT INTO `volume` VALUES ('53', '5', '1.312');
INSERT INTO `volume` VALUES ('53', '5.2', '1.369');
INSERT INTO `volume` VALUES ('53', '5.4', '1.426');
INSERT INTO `volume` VALUES ('53', '5.6', '1.484');
INSERT INTO `volume` VALUES ('53', '5.8', '1.541');
INSERT INTO `volume` VALUES ('53', '6', '1.599');
INSERT INTO `volume` VALUES ('53', '6.2', '1.656');
INSERT INTO `volume` VALUES ('53', '6.4', '1.714');
INSERT INTO `volume` VALUES ('53', '6.6', '1.772');
INSERT INTO `volume` VALUES ('53', '6.8', '1.829');
INSERT INTO `volume` VALUES ('53', '7', '1.887');
INSERT INTO `volume` VALUES ('53', '7.2', '1.945');
INSERT INTO `volume` VALUES ('53', '7.4', '2.003');
INSERT INTO `volume` VALUES ('53', '7.6', '2.061');
INSERT INTO `volume` VALUES ('53', '7.8', '2.119');
INSERT INTO `volume` VALUES ('53', '8', '2.177');
INSERT INTO `volume` VALUES ('53', '8.2', '2.236');
INSERT INTO `volume` VALUES ('53', '8.4', '2.294');
INSERT INTO `volume` VALUES ('53', '8.6', '2.353');
INSERT INTO `volume` VALUES ('53', '8.8', '2.411');
INSERT INTO `volume` VALUES ('53', '9', '2.47');
INSERT INTO `volume` VALUES ('53', '9.2', '2.529');
INSERT INTO `volume` VALUES ('53', '9.4', '2.588');
INSERT INTO `volume` VALUES ('53', '9.6', '2.648');
INSERT INTO `volume` VALUES ('53', '9.8', '2.707');
INSERT INTO `volume` VALUES ('53', '10', '2.767');
INSERT INTO `volume` VALUES ('53', '10.2', '2.793');
INSERT INTO `volume` VALUES ('53', '10.4', '2.818');
INSERT INTO `volume` VALUES ('53', '10.6', '2.882');
INSERT INTO `volume` VALUES ('53', '10.8', '2.947');
INSERT INTO `volume` VALUES ('53', '11', '3.012');
INSERT INTO `volume` VALUES ('53', '11.2', '3.077');
INSERT INTO `volume` VALUES ('53', '11.4', '3.142');
INSERT INTO `volume` VALUES ('53', '11.6', '3.209');
INSERT INTO `volume` VALUES ('53', '11.8', '3.275');
INSERT INTO `volume` VALUES ('53', '12', '3.342');
INSERT INTO `volume` VALUES ('53', '12.2', '3.409');
INSERT INTO `volume` VALUES ('53', '12.4', '3.477');
INSERT INTO `volume` VALUES ('53', '12.6', '3.545');
INSERT INTO `volume` VALUES ('53', '12.8', '3.613');
INSERT INTO `volume` VALUES ('53', '13', '3.682');
INSERT INTO `volume` VALUES ('53', '13.2', '3.751');
INSERT INTO `volume` VALUES ('53', '13.4', '3.821');
INSERT INTO `volume` VALUES ('53', '13.6', '3.891');
INSERT INTO `volume` VALUES ('53', '13.8', '3.961');
INSERT INTO `volume` VALUES ('53', '14', '4.032');
INSERT INTO `volume` VALUES ('54', '2', '0.503');
INSERT INTO `volume` VALUES ('54', '2.2', '0.558');
INSERT INTO `volume` VALUES ('54', '2.4', '0.613');
INSERT INTO `volume` VALUES ('54', '2.6', '0.668');
INSERT INTO `volume` VALUES ('54', '2.8', '0.724');
INSERT INTO `volume` VALUES ('54', '3', '0.78');
INSERT INTO `volume` VALUES ('54', '3.2', '0.837');
INSERT INTO `volume` VALUES ('54', '3.4', '0.894');
INSERT INTO `volume` VALUES ('54', '3.6', '0.951');
INSERT INTO `volume` VALUES ('54', '3.8', '1.009');
INSERT INTO `volume` VALUES ('54', '4', '1.067');
INSERT INTO `volume` VALUES ('54', '4.2', '1.125');
INSERT INTO `volume` VALUES ('54', '4.4', '1.184');
INSERT INTO `volume` VALUES ('54', '4.6', '1.242');
INSERT INTO `volume` VALUES ('54', '4.8', '1.301');
INSERT INTO `volume` VALUES ('54', '5', '1.36');
INSERT INTO `volume` VALUES ('54', '5.2', '1.419');
INSERT INTO `volume` VALUES ('54', '5.4', '1.478');
INSERT INTO `volume` VALUES ('54', '5.6', '1.538');
INSERT INTO `volume` VALUES ('54', '5.8', '1.597');
INSERT INTO `volume` VALUES ('54', '6', '1.657');
INSERT INTO `volume` VALUES ('54', '6.2', '1.716');
INSERT INTO `volume` VALUES ('54', '6.4', '1.776');
INSERT INTO `volume` VALUES ('54', '6.6', '1.835');
INSERT INTO `volume` VALUES ('54', '6.8', '1.895');
INSERT INTO `volume` VALUES ('54', '7', '1.955');
INSERT INTO `volume` VALUES ('54', '7.2', '2.015');
INSERT INTO `volume` VALUES ('54', '7.4', '2.075');
INSERT INTO `volume` VALUES ('54', '7.6', '2.135');
INSERT INTO `volume` VALUES ('54', '7.8', '2.195');
INSERT INTO `volume` VALUES ('54', '8', '2.255');
INSERT INTO `volume` VALUES ('54', '8.2', '2.315');
INSERT INTO `volume` VALUES ('54', '8.4', '2.375');
INSERT INTO `volume` VALUES ('54', '8.6', '2.436');
INSERT INTO `volume` VALUES ('54', '8.8', '2.496');
INSERT INTO `volume` VALUES ('54', '9', '2.557');
INSERT INTO `volume` VALUES ('54', '9.2', '2.618');
INSERT INTO `volume` VALUES ('54', '9.4', '2.679');
INSERT INTO `volume` VALUES ('54', '9.6', '2.74');
INSERT INTO `volume` VALUES ('54', '9.8', '2.802');
INSERT INTO `volume` VALUES ('54', '10', '2.863');
INSERT INTO `volume` VALUES ('54', '10.2', '2.89');
INSERT INTO `volume` VALUES ('54', '10.4', '2.916');
INSERT INTO `volume` VALUES ('54', '10.6', '2.982');
INSERT INTO `volume` VALUES ('54', '10.8', '3.049');
INSERT INTO `volume` VALUES ('54', '11', '3.115');
INSERT INTO `volume` VALUES ('54', '11.2', '3.183');
INSERT INTO `volume` VALUES ('54', '11.4', '3.25');
INSERT INTO `volume` VALUES ('54', '11.6', '3.319');
INSERT INTO `volume` VALUES ('54', '11.8', '3.387');
INSERT INTO `volume` VALUES ('54', '12', '3.456');
INSERT INTO `volume` VALUES ('54', '12.2', '3.525');
INSERT INTO `volume` VALUES ('54', '12.4', '3.595');
INSERT INTO `volume` VALUES ('54', '12.6', '3.665');
INSERT INTO `volume` VALUES ('54', '12.8', '3.736');
INSERT INTO `volume` VALUES ('54', '13', '3.807');
INSERT INTO `volume` VALUES ('54', '13.2', '3.878');
INSERT INTO `volume` VALUES ('54', '13.4', '3.95');
INSERT INTO `volume` VALUES ('54', '13.6', '4.022');
INSERT INTO `volume` VALUES ('54', '13.8', '4.095');
INSERT INTO `volume` VALUES ('54', '14', '4.168');
INSERT INTO `volume` VALUES ('55', '2', '0.522');
INSERT INTO `volume` VALUES ('55', '2.2', '0.578');
INSERT INTO `volume` VALUES ('55', '2.4', '0.635');
INSERT INTO `volume` VALUES ('55', '2.6', '0.692');
INSERT INTO `volume` VALUES ('55', '2.8', '0.75');
INSERT INTO `volume` VALUES ('55', '3', '0.809');
INSERT INTO `volume` VALUES ('55', '3.2', '0.868');
INSERT INTO `volume` VALUES ('55', '3.4', '0.927');
INSERT INTO `volume` VALUES ('55', '3.6', '0.986');
INSERT INTO `volume` VALUES ('55', '3.8', '1.046');
INSERT INTO `volume` VALUES ('55', '4', '1.106');
INSERT INTO `volume` VALUES ('55', '4.2', '1.166');
INSERT INTO `volume` VALUES ('55', '4.4', '1.227');
INSERT INTO `volume` VALUES ('55', '4.6', '1.287');
INSERT INTO `volume` VALUES ('55', '4.8', '1.348');
INSERT INTO `volume` VALUES ('55', '5', '1.409');
INSERT INTO `volume` VALUES ('55', '5.2', '1.47');
INSERT INTO `volume` VALUES ('55', '5.4', '1.532');
INSERT INTO `volume` VALUES ('55', '5.6', '1.593');
INSERT INTO `volume` VALUES ('55', '5.8', '1.654');
INSERT INTO `volume` VALUES ('55', '6', '1.716');
INSERT INTO `volume` VALUES ('55', '6.2', '1.777');
INSERT INTO `volume` VALUES ('55', '6.4', '1.839');
INSERT INTO `volume` VALUES ('55', '6.6', '1.901');
INSERT INTO `volume` VALUES ('55', '6.8', '1.962');
INSERT INTO `volume` VALUES ('55', '7', '2.024');
INSERT INTO `volume` VALUES ('55', '7.2', '2.086');
INSERT INTO `volume` VALUES ('55', '7.4', '2.148');
INSERT INTO `volume` VALUES ('55', '7.6', '2.209');
INSERT INTO `volume` VALUES ('55', '7.8', '2.271');
INSERT INTO `volume` VALUES ('55', '8', '2.333');
INSERT INTO `volume` VALUES ('55', '8.2', '2.395');
INSERT INTO `volume` VALUES ('55', '8.4', '2.458');
INSERT INTO `volume` VALUES ('55', '8.6', '2.52');
INSERT INTO `volume` VALUES ('55', '8.8', '2.582');
INSERT INTO `volume` VALUES ('55', '9', '2.645');
INSERT INTO `volume` VALUES ('55', '9.2', '2.708');
INSERT INTO `volume` VALUES ('55', '9.4', '2.771');
INSERT INTO `volume` VALUES ('55', '9.6', '2.834');
INSERT INTO `volume` VALUES ('55', '9.8', '2.897');
INSERT INTO `volume` VALUES ('55', '10', '2.961');
INSERT INTO `volume` VALUES ('55', '10.2', '2.988');
INSERT INTO `volume` VALUES ('55', '10.4', '3.015');
INSERT INTO `volume` VALUES ('55', '10.6', '3.083');
INSERT INTO `volume` VALUES ('55', '10.8', '3.152');
INSERT INTO `volume` VALUES ('55', '11', '3.221');
INSERT INTO `volume` VALUES ('55', '11.2', '3.29');
INSERT INTO `volume` VALUES ('55', '11.4', '3.36');
INSERT INTO `volume` VALUES ('55', '11.6', '3.432');
INSERT INTO `volume` VALUES ('55', '11.8', '3.501');
INSERT INTO `volume` VALUES ('55', '12', '3.572');
INSERT INTO `volume` VALUES ('55', '12.2', '3.644');
INSERT INTO `volume` VALUES ('55', '12.4', '3.715');
INSERT INTO `volume` VALUES ('55', '12.6', '3.788');
INSERT INTO `volume` VALUES ('55', '12.8', '3.86');
INSERT INTO `volume` VALUES ('55', '13', '3.934');
INSERT INTO `volume` VALUES ('55', '13.2', '4.007');
INSERT INTO `volume` VALUES ('55', '13.4', '4.081');
INSERT INTO `volume` VALUES ('55', '13.6', '4.155');
INSERT INTO `volume` VALUES ('55', '13.8', '4.23');
INSERT INTO `volume` VALUES ('55', '14', '4.305');
INSERT INTO `volume` VALUES ('56', '2', '0.541');
INSERT INTO `volume` VALUES ('56', '2.2', '0.599');
INSERT INTO `volume` VALUES ('56', '2.4', '0.658');
INSERT INTO `volume` VALUES ('56', '2.6', '0.718');
INSERT INTO `volume` VALUES ('56', '2.8', '0.777');
INSERT INTO `volume` VALUES ('56', '3', '0.838');
INSERT INTO `volume` VALUES ('56', '3.2', '0.899');
INSERT INTO `volume` VALUES ('56', '3.4', '0.96');
INSERT INTO `volume` VALUES ('56', '3.6', '1.021');
INSERT INTO `volume` VALUES ('56', '3.8', '1.083');
INSERT INTO `volume` VALUES ('56', '4', '1.145');
INSERT INTO `volume` VALUES ('56', '4.2', '1.208');
INSERT INTO `volume` VALUES ('56', '4.4', '1.27');
INSERT INTO `volume` VALUES ('56', '4.6', '1.333');
INSERT INTO `volume` VALUES ('56', '4.8', '1.396');
INSERT INTO `volume` VALUES ('56', '5', '1.459');
INSERT INTO `volume` VALUES ('56', '5.2', '1.522');
INSERT INTO `volume` VALUES ('56', '5.4', '1.586');
INSERT INTO `volume` VALUES ('56', '5.6', '1.649');
INSERT INTO `volume` VALUES ('56', '5.8', '1.712');
INSERT INTO `volume` VALUES ('56', '6', '1.776');
INSERT INTO `volume` VALUES ('56', '6.2', '1.839');
INSERT INTO `volume` VALUES ('56', '6.4', '1.903');
INSERT INTO `volume` VALUES ('56', '6.6', '1.967');
INSERT INTO `volume` VALUES ('56', '6.8', '2.03');
INSERT INTO `volume` VALUES ('56', '7', '2.094');
INSERT INTO `volume` VALUES ('56', '7.2', '2.158');
INSERT INTO `volume` VALUES ('56', '7.4', '2.222');
INSERT INTO `volume` VALUES ('56', '7.6', '2.286');
INSERT INTO `volume` VALUES ('56', '7.8', '2.349');
INSERT INTO `volume` VALUES ('56', '8', '2.413');
INSERT INTO `volume` VALUES ('56', '8.2', '2.477');
INSERT INTO `volume` VALUES ('56', '8.4', '2.542');
INSERT INTO `volume` VALUES ('56', '8.6', '2.606');
INSERT INTO `volume` VALUES ('56', '8.8', '2.67');
INSERT INTO `volume` VALUES ('56', '9', '2.735');
INSERT INTO `volume` VALUES ('56', '9.2', '2.799');
INSERT INTO `volume` VALUES ('56', '9.4', '2.864');
INSERT INTO `volume` VALUES ('56', '9.6', '2.929');
INSERT INTO `volume` VALUES ('56', '9.8', '2.995');
INSERT INTO `volume` VALUES ('56', '10', '3.06');
INSERT INTO `volume` VALUES ('56', '10.2', '3.088');
INSERT INTO `volume` VALUES ('56', '10.4', '3.116');
INSERT INTO `volume` VALUES ('56', '10.6', '3.187');
INSERT INTO `volume` VALUES ('56', '10.8', '3.257');
INSERT INTO `volume` VALUES ('56', '11', '3.328');
INSERT INTO `volume` VALUES ('56', '11.2', '3.4');
INSERT INTO `volume` VALUES ('56', '11.4', '3.472');
INSERT INTO `volume` VALUES ('56', '11.6', '3.544');
INSERT INTO `volume` VALUES ('56', '11.8', '3.617');
INSERT INTO `volume` VALUES ('56', '12', '3.69');
INSERT INTO `volume` VALUES ('56', '12.2', '3.764');
INSERT INTO `volume` VALUES ('56', '12.4', '3.838');
INSERT INTO `volume` VALUES ('56', '12.6', '3.912');
INSERT INTO `volume` VALUES ('56', '12.8', '3.987');
INSERT INTO `volume` VALUES ('56', '13', '4.063');
INSERT INTO `volume` VALUES ('56', '13.2', '4.138');
INSERT INTO `volume` VALUES ('56', '13.4', '4.214');
INSERT INTO `volume` VALUES ('56', '13.6', '4.291');
INSERT INTO `volume` VALUES ('56', '13.8', '4.368');
INSERT INTO `volume` VALUES ('56', '14', '4.445');
INSERT INTO `volume` VALUES ('57', '2', '0.56');
INSERT INTO `volume` VALUES ('57', '2.2', '0.62');
INSERT INTO `volume` VALUES ('57', '2.4', '0.681');
INSERT INTO `volume` VALUES ('57', '2.6', '0.743');
INSERT INTO `volume` VALUES ('57', '2.8', '0.805');
INSERT INTO `volume` VALUES ('57', '3', '0.868');
INSERT INTO `volume` VALUES ('57', '3.2', '0.93');
INSERT INTO `volume` VALUES ('57', '3.4', '0.994');
INSERT INTO `volume` VALUES ('57', '3.6', '1.057');
INSERT INTO `volume` VALUES ('57', '3.8', '1.121');
INSERT INTO `volume` VALUES ('57', '4', '1.186');
INSERT INTO `volume` VALUES ('57', '4.2', '1.25');
INSERT INTO `volume` VALUES ('57', '4.4', '1.315');
INSERT INTO `volume` VALUES ('57', '4.6', '1.38');
INSERT INTO `volume` VALUES ('57', '4.8', '1.445');
INSERT INTO `volume` VALUES ('57', '5', '1.51');
INSERT INTO `volume` VALUES ('57', '5.2', '1.575');
INSERT INTO `volume` VALUES ('57', '5.4', '1.64');
INSERT INTO `volume` VALUES ('57', '5.6', '1.706');
INSERT INTO `volume` VALUES ('57', '5.8', '1.771');
INSERT INTO `volume` VALUES ('57', '6', '1.837');
INSERT INTO `volume` VALUES ('57', '6.2', '1.903');
INSERT INTO `volume` VALUES ('57', '6.4', '1.968');
INSERT INTO `volume` VALUES ('57', '6.6', '2.034');
INSERT INTO `volume` VALUES ('57', '6.8', '2.1');
INSERT INTO `volume` VALUES ('57', '7', '2.165');
INSERT INTO `volume` VALUES ('57', '7.2', '2.231');
INSERT INTO `volume` VALUES ('57', '7.4', '2.297');
INSERT INTO `volume` VALUES ('57', '7.6', '2.363');
INSERT INTO `volume` VALUES ('57', '7.8', '2.429');
INSERT INTO `volume` VALUES ('57', '8', '2.495');
INSERT INTO `volume` VALUES ('57', '8.2', '2.561');
INSERT INTO `volume` VALUES ('57', '8.4', '2.627');
INSERT INTO `volume` VALUES ('57', '8.6', '2.693');
INSERT INTO `volume` VALUES ('57', '8.8', '2.759');
INSERT INTO `volume` VALUES ('57', '9', '2.826');
INSERT INTO `volume` VALUES ('57', '9.2', '2.892');
INSERT INTO `volume` VALUES ('57', '9.4', '2.959');
INSERT INTO `volume` VALUES ('57', '9.6', '3.026');
INSERT INTO `volume` VALUES ('57', '9.8', '3.093');
INSERT INTO `volume` VALUES ('57', '10', '3.161');
INSERT INTO `volume` VALUES ('57', '10.2', '3.19');
INSERT INTO `volume` VALUES ('57', '10.4', '3.219');
INSERT INTO `volume` VALUES ('57', '10.6', '3.291');
INSERT INTO `volume` VALUES ('57', '10.8', '3.364');
INSERT INTO `volume` VALUES ('57', '11', '3.438');
INSERT INTO `volume` VALUES ('57', '11.2', '3.511');
INSERT INTO `volume` VALUES ('57', '11.4', '3.585');
INSERT INTO `volume` VALUES ('57', '11.6', '3.66');
INSERT INTO `volume` VALUES ('57', '11.8', '3.735');
INSERT INTO `volume` VALUES ('57', '12', '3.81');
INSERT INTO `volume` VALUES ('57', '12.2', '3.886');
INSERT INTO `volume` VALUES ('57', '12.4', '3.962');
INSERT INTO `volume` VALUES ('57', '12.6', '4.039');
INSERT INTO `volume` VALUES ('57', '12.8', '4.116');
INSERT INTO `volume` VALUES ('57', '13', '4.194');
INSERT INTO `volume` VALUES ('57', '13.2', '4.271');
INSERT INTO `volume` VALUES ('57', '13.4', '4.35');
INSERT INTO `volume` VALUES ('57', '13.6', '4.429');
INSERT INTO `volume` VALUES ('57', '13.8', '4.508');
INSERT INTO `volume` VALUES ('57', '14', '4.588');
INSERT INTO `volume` VALUES ('58', '2', '0.58');
INSERT INTO `volume` VALUES ('58', '2.2', '0.642');
INSERT INTO `volume` VALUES ('58', '2.4', '0.705');
INSERT INTO `volume` VALUES ('58', '2.6', '0.769');
INSERT INTO `volume` VALUES ('58', '2.8', '0.833');
INSERT INTO `volume` VALUES ('58', '3', '0.898');
INSERT INTO `volume` VALUES ('58', '3.2', '0.963');
INSERT INTO `volume` VALUES ('58', '3.4', '1.028');
INSERT INTO `volume` VALUES ('58', '3.6', '1.094');
INSERT INTO `volume` VALUES ('58', '3.8', '1.16');
INSERT INTO `volume` VALUES ('58', '4', '1.226');
INSERT INTO `volume` VALUES ('58', '4.2', '1.293');
INSERT INTO `volume` VALUES ('58', '4.4', '1.36');
INSERT INTO `volume` VALUES ('58', '4.6', '1.427');
INSERT INTO `volume` VALUES ('58', '4.8', '1.494');
INSERT INTO `volume` VALUES ('58', '5', '1.561');
INSERT INTO `volume` VALUES ('58', '5.2', '1.629');
INSERT INTO `volume` VALUES ('58', '5.4', '1.696');
INSERT INTO `volume` VALUES ('58', '5.6', '1.764');
INSERT INTO `volume` VALUES ('58', '5.8', '1.832');
INSERT INTO `volume` VALUES ('58', '6', '1.899');
INSERT INTO `volume` VALUES ('58', '6.2', '1.967');
INSERT INTO `volume` VALUES ('58', '6.4', '2.035');
INSERT INTO `volume` VALUES ('58', '6.6', '2.102');
INSERT INTO `volume` VALUES ('58', '6.8', '2.17');
INSERT INTO `volume` VALUES ('58', '7', '2.238');
INSERT INTO `volume` VALUES ('58', '7.2', '2.306');
INSERT INTO `volume` VALUES ('58', '7.4', '2.374');
INSERT INTO `volume` VALUES ('58', '7.6', '2.442');
INSERT INTO `volume` VALUES ('58', '7.8', '2.51');
INSERT INTO `volume` VALUES ('58', '8', '2.577');
INSERT INTO `volume` VALUES ('58', '8.2', '2.645');
INSERT INTO `volume` VALUES ('58', '8.4', '2.714');
INSERT INTO `volume` VALUES ('58', '8.6', '2.782');
INSERT INTO `volume` VALUES ('58', '8.8', '2.85');
INSERT INTO `volume` VALUES ('58', '9', '2.918');
INSERT INTO `volume` VALUES ('58', '9.2', '2.987');
INSERT INTO `volume` VALUES ('58', '9.4', '3.056');
INSERT INTO `volume` VALUES ('58', '9.6', '3.125');
INSERT INTO `volume` VALUES ('58', '9.8', '3.194');
INSERT INTO `volume` VALUES ('58', '10', '3.263');
INSERT INTO `volume` VALUES ('58', '10.2', '3.293');
INSERT INTO `volume` VALUES ('58', '10.4', '3.323');
INSERT INTO `volume` VALUES ('58', '10.6', '3.398');
INSERT INTO `volume` VALUES ('58', '10.8', '3.473');
INSERT INTO `volume` VALUES ('58', '11', '3.548');
INSERT INTO `volume` VALUES ('58', '11.2', '3.624');
INSERT INTO `volume` VALUES ('58', '11.4', '3.701');
INSERT INTO `volume` VALUES ('58', '11.6', '3.777');
INSERT INTO `volume` VALUES ('58', '11.8', '3.855');
INSERT INTO `volume` VALUES ('58', '12', '3.932');
INSERT INTO `volume` VALUES ('58', '12.2', '4.01');
INSERT INTO `volume` VALUES ('58', '12.4', '4.089');
INSERT INTO `volume` VALUES ('58', '12.6', '4.168');
INSERT INTO `volume` VALUES ('58', '12.8', '4.247');
INSERT INTO `volume` VALUES ('58', '13', '4.327');
INSERT INTO `volume` VALUES ('58', '13.2', '4.407');
INSERT INTO `volume` VALUES ('58', '13.4', '4.487');
INSERT INTO `volume` VALUES ('58', '13.6', '4.569');
INSERT INTO `volume` VALUES ('58', '13.8', '4.65');
INSERT INTO `volume` VALUES ('58', '14', '4.732');
INSERT INTO `volume` VALUES ('59', '2', '0.6');
INSERT INTO `volume` VALUES ('59', '2.2', '0.664');
INSERT INTO `volume` VALUES ('59', '2.4', '0.729');
INSERT INTO `volume` VALUES ('59', '2.6', '0.795');
INSERT INTO `volume` VALUES ('59', '2.8', '0.862');
INSERT INTO `volume` VALUES ('59', '3', '0.928');
INSERT INTO `volume` VALUES ('59', '3.2', '0.996');
INSERT INTO `volume` VALUES ('59', '3.4', '1.063');
INSERT INTO `volume` VALUES ('59', '3.6', '1.131');
INSERT INTO `volume` VALUES ('59', '3.8', '1.199');
INSERT INTO `volume` VALUES ('59', '4', '1.268');
INSERT INTO `volume` VALUES ('59', '4.2', '1.337');
INSERT INTO `volume` VALUES ('59', '4.4', '1.406');
INSERT INTO `volume` VALUES ('59', '4.6', '1.475');
INSERT INTO `volume` VALUES ('59', '4.8', '1.544');
INSERT INTO `volume` VALUES ('59', '5', '1.614');
INSERT INTO `volume` VALUES ('59', '5.2', '1.683');
INSERT INTO `volume` VALUES ('59', '5.4', '1.753');
INSERT INTO `volume` VALUES ('59', '5.6', '1.823');
INSERT INTO `volume` VALUES ('59', '5.8', '1.893');
INSERT INTO `volume` VALUES ('59', '6', '1.962');
INSERT INTO `volume` VALUES ('59', '6.2', '2.032');
INSERT INTO `volume` VALUES ('59', '6.4', '2.102');
INSERT INTO `volume` VALUES ('59', '6.6', '2.172');
INSERT INTO `volume` VALUES ('59', '6.8', '2.242');
INSERT INTO `volume` VALUES ('59', '7', '2.312');
INSERT INTO `volume` VALUES ('59', '7.2', '2.382');
INSERT INTO `volume` VALUES ('59', '7.4', '2.452');
INSERT INTO `volume` VALUES ('59', '7.6', '2.522');
INSERT INTO `volume` VALUES ('59', '7.8', '2.592');
INSERT INTO `volume` VALUES ('59', '8', '2.662');
INSERT INTO `volume` VALUES ('59', '8.2', '2.732');
INSERT INTO `volume` VALUES ('59', '8.4', '2.802');
INSERT INTO `volume` VALUES ('59', '8.6', '2.872');
INSERT INTO `volume` VALUES ('59', '8.8', '2.942');
INSERT INTO `volume` VALUES ('59', '9', '3.013');
INSERT INTO `volume` VALUES ('59', '9.2', '3.083');
INSERT INTO `volume` VALUES ('59', '9.4', '3.154');
INSERT INTO `volume` VALUES ('59', '9.6', '3.225');
INSERT INTO `volume` VALUES ('59', '9.8', '3.296');
INSERT INTO `volume` VALUES ('59', '10', '3.368');
INSERT INTO `volume` VALUES ('59', '10.2', '3.399');
INSERT INTO `volume` VALUES ('59', '10.4', '3.429');
INSERT INTO `volume` VALUES ('59', '10.6', '3.506');
INSERT INTO `volume` VALUES ('59', '10.8', '3.583');
INSERT INTO `volume` VALUES ('59', '11', '3.661');
INSERT INTO `volume` VALUES ('59', '11.2', '3.739');
INSERT INTO `volume` VALUES ('59', '11.4', '3.818');
INSERT INTO `volume` VALUES ('59', '11.6', '3.897');
INSERT INTO `volume` VALUES ('59', '11.8', '3.976');
INSERT INTO `volume` VALUES ('59', '12', '4.056');
INSERT INTO `volume` VALUES ('59', '12.2', '4.136');
INSERT INTO `volume` VALUES ('59', '12.4', '4.2174');
INSERT INTO `volume` VALUES ('59', '12.6', '4.298');
INSERT INTO `volume` VALUES ('59', '12.8', '4.38');
INSERT INTO `volume` VALUES ('59', '13', '4.462');
INSERT INTO `volume` VALUES ('59', '13.2', '4.544');
INSERT INTO `volume` VALUES ('59', '13.4', '4.627');
INSERT INTO `volume` VALUES ('59', '13.6', '4.711');
INSERT INTO `volume` VALUES ('59', '13.8', '4.794');
INSERT INTO `volume` VALUES ('59', '14', '4.879');
INSERT INTO `volume` VALUES ('60', '2', '0.62');
INSERT INTO `volume` VALUES ('60', '2.2', '0.687');
INSERT INTO `volume` VALUES ('60', '2.4', '0.754');
INSERT INTO `volume` VALUES ('60', '2.6', '0.822');
INSERT INTO `volume` VALUES ('60', '2.8', '0.89');
INSERT INTO `volume` VALUES ('60', '3', '0.959');
INSERT INTO `volume` VALUES ('60', '3.2', '1.029');
INSERT INTO `volume` VALUES ('60', '3.4', '1.099');
INSERT INTO `volume` VALUES ('60', '3.6', '1.169');
INSERT INTO `volume` VALUES ('60', '3.8', '1.239');
INSERT INTO `volume` VALUES ('60', '4', '1.31');
INSERT INTO `volume` VALUES ('60', '4.2', '1.381');
INSERT INTO `volume` VALUES ('60', '4.4', '1.452');
INSERT INTO `volume` VALUES ('60', '4.6', '1.524');
INSERT INTO `volume` VALUES ('60', '4.8', '1.595');
INSERT INTO `volume` VALUES ('60', '5', '1.667');
INSERT INTO `volume` VALUES ('60', '5.2', '1.739');
INSERT INTO `volume` VALUES ('60', '5.4', '1.811');
INSERT INTO `volume` VALUES ('60', '5.6', '1.883');
INSERT INTO `volume` VALUES ('60', '5.8', '1.955');
INSERT INTO `volume` VALUES ('60', '6', '2.027');
INSERT INTO `volume` VALUES ('60', '6.2', '2.099');
INSERT INTO `volume` VALUES ('60', '6.4', '2.171');
INSERT INTO `volume` VALUES ('60', '6.6', '2.243');
INSERT INTO `volume` VALUES ('60', '6.8', '2.315');
INSERT INTO `volume` VALUES ('60', '7', '2.387');
INSERT INTO `volume` VALUES ('60', '7.2', '2.459');
INSERT INTO `volume` VALUES ('60', '7.4', '2.531');
INSERT INTO `volume` VALUES ('60', '7.6', '2.603');
INSERT INTO `volume` VALUES ('60', '7.8', '2.675');
INSERT INTO `volume` VALUES ('60', '8', '2.747');
INSERT INTO `volume` VALUES ('60', '8.2', '2.819');
INSERT INTO `volume` VALUES ('60', '8.4', '2.891');
INSERT INTO `volume` VALUES ('60', '8.6', '2.963');
INSERT INTO `volume` VALUES ('60', '8.8', '3.036');
INSERT INTO `volume` VALUES ('60', '9', '3.108');
INSERT INTO `volume` VALUES ('60', '9.2', '3.181');
INSERT INTO `volume` VALUES ('60', '9.4', '3.254');
INSERT INTO `volume` VALUES ('60', '9.6', '3.327');
INSERT INTO `volume` VALUES ('60', '9.8', '3.4');
INSERT INTO `volume` VALUES ('60', '10', '3.473');
INSERT INTO `volume` VALUES ('60', '10.2', '3.505');
INSERT INTO `volume` VALUES ('60', '10.4', '3.537');
INSERT INTO `volume` VALUES ('60', '10.6', '3.616');
INSERT INTO `volume` VALUES ('60', '10.8', '3.695');
INSERT INTO `volume` VALUES ('60', '11', '3.775');
INSERT INTO `volume` VALUES ('60', '11.2', '3.856');
INSERT INTO `volume` VALUES ('60', '11.4', '3.937');
INSERT INTO `volume` VALUES ('60', '11.6', '4.018');
INSERT INTO `volume` VALUES ('60', '11.8', '4.1');
INSERT INTO `volume` VALUES ('60', '12', '4.182');
INSERT INTO `volume` VALUES ('60', '12.2', '4.264');
INSERT INTO `volume` VALUES ('60', '12.4', '4.347');
INSERT INTO `volume` VALUES ('60', '12.6', '4.431');
INSERT INTO `volume` VALUES ('60', '12.8', '4.515');
INSERT INTO `volume` VALUES ('60', '13', '4.599');
INSERT INTO `volume` VALUES ('60', '13.2', '4.684');
INSERT INTO `volume` VALUES ('60', '13.4', '4.769');
INSERT INTO `volume` VALUES ('60', '13.6', '4.855');
INSERT INTO `volume` VALUES ('60', '13.8', '4.941');
INSERT INTO `volume` VALUES ('60', '14', '5.028');
INSERT INTO `volume` VALUES ('61', '2', '0.641');
INSERT INTO `volume` VALUES ('61', '2.2', '0.709');
INSERT INTO `volume` VALUES ('61', '2.4', '0.779');
INSERT INTO `volume` VALUES ('61', '2.6', '0.849');
INSERT INTO `volume` VALUES ('61', '2.8', '0.92');
INSERT INTO `volume` VALUES ('61', '3', '0.991');
INSERT INTO `volume` VALUES ('61', '3.2', '1.063');
INSERT INTO `volume` VALUES ('61', '3.4', '1.135');
INSERT INTO `volume` VALUES ('61', '3.6', '1.207');
INSERT INTO `volume` VALUES ('61', '3.8', '1.28');
INSERT INTO `volume` VALUES ('61', '4', '1.353');
INSERT INTO `volume` VALUES ('61', '4.2', '1.426');
INSERT INTO `volume` VALUES ('61', '4.4', '1.5');
INSERT INTO `volume` VALUES ('61', '4.6', '1.574');
INSERT INTO `volume` VALUES ('61', '4.8', '1.647');
INSERT INTO `volume` VALUES ('61', '5', '1.721');
INSERT INTO `volume` VALUES ('61', '5.2', '1.795');
INSERT INTO `volume` VALUES ('61', '5.4', '1.869');
INSERT INTO `volume` VALUES ('61', '5.6', '1.944');
INSERT INTO `volume` VALUES ('61', '5.8', '2.018');
INSERT INTO `volume` VALUES ('61', '6', '2.092');
INSERT INTO `volume` VALUES ('61', '6.2', '2.166');
INSERT INTO `volume` VALUES ('61', '6.4', '2.24');
INSERT INTO `volume` VALUES ('61', '6.6', '2.315');
INSERT INTO `volume` VALUES ('61', '6.8', '2.389');
INSERT INTO `volume` VALUES ('61', '7', '2.463');
INSERT INTO `volume` VALUES ('61', '7.2', '2.537');
INSERT INTO `volume` VALUES ('61', '7.4', '2.611');
INSERT INTO `volume` VALUES ('61', '7.6', '2.685');
INSERT INTO `volume` VALUES ('61', '7.8', '2.76');
INSERT INTO `volume` VALUES ('61', '8', '2.834');
INSERT INTO `volume` VALUES ('61', '8.2', '2.908');
INSERT INTO `volume` VALUES ('61', '8.4', '2.982');
INSERT INTO `volume` VALUES ('61', '8.6', '3.056');
INSERT INTO `volume` VALUES ('61', '8.8', '3.131');
INSERT INTO `volume` VALUES ('61', '9', '3.205');
INSERT INTO `volume` VALUES ('61', '9.2', '3.28');
INSERT INTO `volume` VALUES ('61', '9.4', '3.355');
INSERT INTO `volume` VALUES ('61', '9.6', '3.43');
INSERT INTO `volume` VALUES ('61', '9.8', '3.505');
INSERT INTO `volume` VALUES ('61', '10', '3.581');
INSERT INTO `volume` VALUES ('61', '10.2', '3.613');
INSERT INTO `volume` VALUES ('61', '10.4', '3.646');
INSERT INTO `volume` VALUES ('61', '10.6', '3.728');
INSERT INTO `volume` VALUES ('61', '10.8', '3.809');
INSERT INTO `volume` VALUES ('61', '11', '3.892');
INSERT INTO `volume` VALUES ('61', '11.2', '3.974');
INSERT INTO `volume` VALUES ('61', '11.6', '4.141');
INSERT INTO `volume` VALUES ('61', '11.8', '4.225');
INSERT INTO `volume` VALUES ('61', '12', '4.309');
INSERT INTO `volume` VALUES ('61', '12.2', '4.394');
INSERT INTO `volume` VALUES ('61', '12.4', '4.48');
INSERT INTO `volume` VALUES ('61', '12.6', '4.566');
INSERT INTO `volume` VALUES ('61', '12.8', '4.652');
INSERT INTO `volume` VALUES ('61', '13', '4.739');
INSERT INTO `volume` VALUES ('61', '13.2', '4.826');
INSERT INTO `volume` VALUES ('61', '13.4', '4.913');
INSERT INTO `volume` VALUES ('61', '13.6', '5.001');
INSERT INTO `volume` VALUES ('61', '13.8', '5.09');
INSERT INTO `volume` VALUES ('61', '14', '5.179');
INSERT INTO `volume` VALUES ('62', '2', '0.661');
INSERT INTO `volume` VALUES ('62', '2.2', '0.733');
INSERT INTO `volume` VALUES ('62', '2.4', '0.804');
INSERT INTO `volume` VALUES ('62', '2.6', '0.877');
INSERT INTO `volume` VALUES ('62', '2.8', '0.95');
INSERT INTO `volume` VALUES ('62', '3', '1.023');
INSERT INTO `volume` VALUES ('62', '3.2', '1.097');
INSERT INTO `volume` VALUES ('62', '3.4', '1.172');
INSERT INTO `volume` VALUES ('62', '3.6', '1.246');
INSERT INTO `volume` VALUES ('62', '3.8', '1.321');
INSERT INTO `volume` VALUES ('62', '4', '1.397');
INSERT INTO `volume` VALUES ('62', '4.2', '1.472');
INSERT INTO `volume` VALUES ('62', '4.4', '1.548');
INSERT INTO `volume` VALUES ('62', '4.6', '1.624');
INSERT INTO `volume` VALUES ('62', '4.8', '1.7');
INSERT INTO `volume` VALUES ('62', '5', '1.776');
INSERT INTO `volume` VALUES ('62', '5.2', '1.853');
INSERT INTO `volume` VALUES ('62', '5.4', '1.929');
INSERT INTO `volume` VALUES ('62', '5.6', '2.005');
INSERT INTO `volume` VALUES ('62', '5.8', '2.082');
INSERT INTO `volume` VALUES ('62', '6', '2.158');
INSERT INTO `volume` VALUES ('62', '6.2', '2.235');
INSERT INTO `volume` VALUES ('62', '6.4', '2.311');
INSERT INTO `volume` VALUES ('62', '6.6', '2.388');
INSERT INTO `volume` VALUES ('62', '6.8', '2.464');
INSERT INTO `volume` VALUES ('62', '7', '2.54');
INSERT INTO `volume` VALUES ('62', '7.2', '2.617');
INSERT INTO `volume` VALUES ('62', '7.4', '2.693');
INSERT INTO `volume` VALUES ('62', '7.6', '2.769');
INSERT INTO `volume` VALUES ('62', '7.8', '2.845');
INSERT INTO `volume` VALUES ('62', '8', '2.922');
INSERT INTO `volume` VALUES ('62', '8.2', '2.998');
INSERT INTO `volume` VALUES ('62', '8.4', '3.074');
INSERT INTO `volume` VALUES ('62', '8.6', '3.151');
INSERT INTO `volume` VALUES ('62', '8.8', '3.227');
INSERT INTO `volume` VALUES ('62', '9', '3.304');
INSERT INTO `volume` VALUES ('62', '9.2', '3.381');
INSERT INTO `volume` VALUES ('62', '9.4', '3.458');
INSERT INTO `volume` VALUES ('62', '9.6', '3.535');
INSERT INTO `volume` VALUES ('62', '9.8', '3.612');
INSERT INTO `volume` VALUES ('62', '10', '3.69');
INSERT INTO `volume` VALUES ('62', '10.2', '3.724');
INSERT INTO `volume` VALUES ('62', '10.4', '3.757');
INSERT INTO `volume` VALUES ('62', '10.6', '3.841');
INSERT INTO `volume` VALUES ('62', '10.8', '3.925');
INSERT INTO `volume` VALUES ('62', '11', '4.01');
INSERT INTO `volume` VALUES ('62', '11.2', '4.095');
INSERT INTO `volume` VALUES ('62', '11.4', '4.18');
INSERT INTO `volume` VALUES ('62', '11.6', '4.266');
INSERT INTO `volume` VALUES ('62', '11.8', '4.352');
INSERT INTO `volume` VALUES ('62', '12', '4.439');
INSERT INTO `volume` VALUES ('62', '12.2', '4.526');
INSERT INTO `volume` VALUES ('62', '12.4', '4.614');
INSERT INTO `volume` VALUES ('62', '12.6', '4.702');
INSERT INTO `volume` VALUES ('62', '12.8', '4.791');
INSERT INTO `volume` VALUES ('62', '13', '4.88');
INSERT INTO `volume` VALUES ('62', '13.2', '4.969');
INSERT INTO `volume` VALUES ('62', '13.4', '5.06');
INSERT INTO `volume` VALUES ('62', '13.6', '5.15');
INSERT INTO `volume` VALUES ('62', '13.8', '5.241');
INSERT INTO `volume` VALUES ('62', '14', '5.332');
INSERT INTO `volume` VALUES ('63', '2', '0.683');
INSERT INTO `volume` VALUES ('63', '2.2', '0.756');
INSERT INTO `volume` VALUES ('63', '2.4', '0.83');
INSERT INTO `volume` VALUES ('63', '2.6', '0.905');
INSERT INTO `volume` VALUES ('63', '2.8', '0.98');
INSERT INTO `volume` VALUES ('63', '3', '1.056');
INSERT INTO `volume` VALUES ('63', '3.2', '1.132');
INSERT INTO `volume` VALUES ('63', '3.4', '1.209');
INSERT INTO `volume` VALUES ('63', '3.6', '1.286');
INSERT INTO `volume` VALUES ('63', '3.8', '1.363');
INSERT INTO `volume` VALUES ('63', '4', '1.441');
INSERT INTO `volume` VALUES ('63', '4.2', '1.519');
INSERT INTO `volume` VALUES ('63', '4.4', '1.597');
INSERT INTO `volume` VALUES ('63', '4.6', '1.675');
INSERT INTO `volume` VALUES ('63', '4.8', '1.754');
INSERT INTO `volume` VALUES ('63', '5', '1.832');
INSERT INTO `volume` VALUES ('63', '5.2', '1.911');
INSERT INTO `volume` VALUES ('63', '5.4', '1.99');
INSERT INTO `volume` VALUES ('63', '5.6', '2.068');
INSERT INTO `volume` VALUES ('63', '5.8', '2.147');
INSERT INTO `volume` VALUES ('63', '6', '2.226');
INSERT INTO `volume` VALUES ('63', '6.2', '2.304');
INSERT INTO `volume` VALUES ('63', '6.4', '2.383');
INSERT INTO `volume` VALUES ('63', '6.6', '2.462');
INSERT INTO `volume` VALUES ('63', '6.8', '2.54');
INSERT INTO `volume` VALUES ('63', '7', '2.619');
INSERT INTO `volume` VALUES ('63', '7.2', '2.697');
INSERT INTO `volume` VALUES ('63', '7.4', '2.776');
INSERT INTO `volume` VALUES ('63', '7.6', '2.854');
INSERT INTO `volume` VALUES ('63', '7.8', '2.933');
INSERT INTO `volume` VALUES ('63', '8', '3.011');
INSERT INTO `volume` VALUES ('63', '8.2', '3.09');
INSERT INTO `volume` VALUES ('63', '8.4', '3.168');
INSERT INTO `volume` VALUES ('63', '8.6', '3.247');
INSERT INTO `volume` VALUES ('63', '8.8', '3.325');
INSERT INTO `volume` VALUES ('63', '9', '3.404');
INSERT INTO `volume` VALUES ('63', '9.2', '3.483');
INSERT INTO `volume` VALUES ('63', '9.4', '3.562');
INSERT INTO `volume` VALUES ('63', '9.6', '3.641');
INSERT INTO `volume` VALUES ('63', '9.8', '3.721');
INSERT INTO `volume` VALUES ('63', '10', '3.8');
INSERT INTO `volume` VALUES ('63', '10.2', '3.835');
INSERT INTO `volume` VALUES ('63', '10.4', '3.87');
INSERT INTO `volume` VALUES ('63', '10.6', '3.956');
INSERT INTO `volume` VALUES ('63', '10.8', '4.042');
INSERT INTO `volume` VALUES ('63', '11', '4.129');
INSERT INTO `volume` VALUES ('63', '11.2', '4.217');
INSERT INTO `volume` VALUES ('63', '11.4', '4.304');
INSERT INTO `volume` VALUES ('63', '11.6', '4.393');
INSERT INTO `volume` VALUES ('63', '11.8', '4.481');
INSERT INTO `volume` VALUES ('63', '12', '4.571');
INSERT INTO `volume` VALUES ('63', '12.2', '4.66');
INSERT INTO `volume` VALUES ('63', '12.4', '4.75');
INSERT INTO `volume` VALUES ('63', '12.6', '4.841');
INSERT INTO `volume` VALUES ('63', '12.8', '4.932');
INSERT INTO `volume` VALUES ('63', '13', '5.023');
INSERT INTO `volume` VALUES ('63', '13.2', '5.115');
INSERT INTO `volume` VALUES ('63', '13.4', '5.208');
INSERT INTO `volume` VALUES ('63', '13.6', '5.301');
INSERT INTO `volume` VALUES ('63', '13.8', '5.394');
INSERT INTO `volume` VALUES ('63', '14', '5.488');
INSERT INTO `volume` VALUES ('64', '2', '0.704');
INSERT INTO `volume` VALUES ('64', '2.2', '0.78');
INSERT INTO `volume` VALUES ('64', '2.4', '0.857');
INSERT INTO `volume` VALUES ('64', '2.6', '0.934');
INSERT INTO `volume` VALUES ('64', '2.8', '1.011');
INSERT INTO `volume` VALUES ('64', '3', '1.089');
INSERT INTO `volume` VALUES ('64', '3.2', '1.168');
INSERT INTO `volume` VALUES ('64', '3.4', '1.247');
INSERT INTO `volume` VALUES ('64', '3.6', '1.326');
INSERT INTO `volume` VALUES ('64', '3.8', '1.406');
INSERT INTO `volume` VALUES ('64', '4', '1.486');
INSERT INTO `volume` VALUES ('64', '4.2', '1.566');
INSERT INTO `volume` VALUES ('64', '4.4', '1.647');
INSERT INTO `volume` VALUES ('64', '4.6', '1.728');
INSERT INTO `volume` VALUES ('64', '4.8', '1.808');
INSERT INTO `volume` VALUES ('64', '5', '1.889');
INSERT INTO `volume` VALUES ('64', '5.2', '1.97');
INSERT INTO `volume` VALUES ('64', '5.4', '2.051');
INSERT INTO `volume` VALUES ('64', '5.6', '2.132');
INSERT INTO `volume` VALUES ('64', '5.8', '2.213');
INSERT INTO `volume` VALUES ('64', '6', '2.294');
INSERT INTO `volume` VALUES ('64', '6.2', '2.375');
INSERT INTO `volume` VALUES ('64', '6.4', '2.456');
INSERT INTO `volume` VALUES ('64', '6.6', '2.537');
INSERT INTO `volume` VALUES ('64', '6.8', '2.618');
INSERT INTO `volume` VALUES ('64', '7', '2.699');
INSERT INTO `volume` VALUES ('64', '7.2', '2.779');
INSERT INTO `volume` VALUES ('64', '7.4', '2.86');
INSERT INTO `volume` VALUES ('64', '7.6', '2.941');
INSERT INTO `volume` VALUES ('64', '7.8', '3.021');
INSERT INTO `volume` VALUES ('64', '8', '3.102');
INSERT INTO `volume` VALUES ('64', '8.2', '3.183');
INSERT INTO `volume` VALUES ('64', '8.4', '3.263');
INSERT INTO `volume` VALUES ('64', '8.6', '3.344');
INSERT INTO `volume` VALUES ('64', '8.8', '3.425');
INSERT INTO `volume` VALUES ('64', '9', '3.506');
INSERT INTO `volume` VALUES ('64', '9.2', '3.587');
INSERT INTO `volume` VALUES ('64', '9.4', '3.668');
INSERT INTO `volume` VALUES ('64', '9.6', '3.749');
INSERT INTO `volume` VALUES ('64', '9.8', '3.831');
INSERT INTO `volume` VALUES ('64', '10', '3.912');
INSERT INTO `volume` VALUES ('64', '10.2', '3.948');
INSERT INTO `volume` VALUES ('64', '10.4', '3.984');
INSERT INTO `volume` VALUES ('64', '10.6', '4.073');
INSERT INTO `volume` VALUES ('64', '10.8', '4.161');
INSERT INTO `volume` VALUES ('64', '11', '4.251');
INSERT INTO `volume` VALUES ('64', '11.2', '4.34');
INSERT INTO `volume` VALUES ('64', '11.4', '4.431');
INSERT INTO `volume` VALUES ('64', '11.6', '4.521');
INSERT INTO `volume` VALUES ('64', '11.8', '4.612');
INSERT INTO `volume` VALUES ('64', '12', '4.704');
INSERT INTO `volume` VALUES ('64', '12.2', '4.796');
INSERT INTO `volume` VALUES ('64', '12.4', '4.889');
INSERT INTO `volume` VALUES ('64', '12.6', '4.982');
INSERT INTO `volume` VALUES ('64', '12.8', '5.075');
INSERT INTO `volume` VALUES ('64', '13', '5.169');
INSERT INTO `volume` VALUES ('64', '13.2', '5.263');
INSERT INTO `volume` VALUES ('64', '13.4', '5.358');
INSERT INTO `volume` VALUES ('64', '13.6', '5.454');
INSERT INTO `volume` VALUES ('64', '13.8', '5.55');
INSERT INTO `volume` VALUES ('64', '14', '5.646');
INSERT INTO `volume` VALUES ('65', '2', '0.726');
INSERT INTO `volume` VALUES ('65', '2.2', '0.804');
INSERT INTO `volume` VALUES ('65', '2.4', '0.883');
INSERT INTO `volume` VALUES ('65', '2.6', '0.963');
INSERT INTO `volume` VALUES ('65', '2.8', '1.043');
INSERT INTO `volume` VALUES ('65', '3', '1.123');
INSERT INTO `volume` VALUES ('65', '3.2', '1.204');
INSERT INTO `volume` VALUES ('65', '3.4', '1.286');
INSERT INTO `volume` VALUES ('65', '3.6', '1.367');
INSERT INTO `volume` VALUES ('65', '3.8', '1.449');
INSERT INTO `volume` VALUES ('65', '4', '1.532');
INSERT INTO `volume` VALUES ('65', '4.2', '1.615');
INSERT INTO `volume` VALUES ('65', '4.4', '1.697');
INSERT INTO `volume` VALUES ('65', '4.6', '1.78');
INSERT INTO `volume` VALUES ('65', '4.8', '1.864');
INSERT INTO `volume` VALUES ('65', '5', '1.947');
INSERT INTO `volume` VALUES ('65', '5.2', '2.03');
INSERT INTO `volume` VALUES ('65', '5.4', '2.113');
INSERT INTO `volume` VALUES ('65', '5.6', '2.197');
INSERT INTO `volume` VALUES ('65', '5.8', '2.28');
INSERT INTO `volume` VALUES ('65', '6', '2.363');
INSERT INTO `volume` VALUES ('65', '6.2', '2.447');
INSERT INTO `volume` VALUES ('65', '6.4', '2.53');
INSERT INTO `volume` VALUES ('65', '6.6', '2.613');
INSERT INTO `volume` VALUES ('65', '6.8', '2.696');
INSERT INTO `volume` VALUES ('65', '7', '2.779');
INSERT INTO `volume` VALUES ('65', '7.2', '2.863');
INSERT INTO `volume` VALUES ('65', '7.4', '2.946');
INSERT INTO `volume` VALUES ('65', '7.6', '3.028');
INSERT INTO `volume` VALUES ('65', '7.8', '3.111');
INSERT INTO `volume` VALUES ('65', '8', '3.194');
INSERT INTO `volume` VALUES ('65', '8.2', '3.277');
INSERT INTO `volume` VALUES ('65', '8.4', '3.36');
INSERT INTO `volume` VALUES ('65', '8.6', '3.443');
INSERT INTO `volume` VALUES ('65', '8.8', '3.526');
INSERT INTO `volume` VALUES ('65', '9', '3.609');
INSERT INTO `volume` VALUES ('65', '9.2', '3.692');
INSERT INTO `volume` VALUES ('65', '9.4', '3.775');
INSERT INTO `volume` VALUES ('65', '9.6', '3.859');
INSERT INTO `volume` VALUES ('65', '9.8', '3.942');
INSERT INTO `volume` VALUES ('65', '10', '4.026');
INSERT INTO `volume` VALUES ('65', '10.2', '4.063');
INSERT INTO `volume` VALUES ('65', '10.4', '4.1');
INSERT INTO `volume` VALUES ('65', '10.6', '4.191');
INSERT INTO `volume` VALUES ('65', '10.8', '4.282');
INSERT INTO `volume` VALUES ('65', '11', '4.374');
INSERT INTO `volume` VALUES ('65', '11.2', '4.466');
INSERT INTO `volume` VALUES ('65', '11.4', '4.559');
INSERT INTO `volume` VALUES ('65', '11.6', '4.652');
INSERT INTO `volume` VALUES ('65', '11.8', '4.745');
INSERT INTO `volume` VALUES ('65', '12', '4.839');
INSERT INTO `volume` VALUES ('65', '12.2', '4.934');
INSERT INTO `volume` VALUES ('65', '12.4', '5.029');
INSERT INTO `volume` VALUES ('65', '12.6', '5.124');
INSERT INTO `volume` VALUES ('65', '12.8', '5.22');
INSERT INTO `volume` VALUES ('65', '13', '5.317');
INSERT INTO `volume` VALUES ('65', '13.2', '5.414');
INSERT INTO `volume` VALUES ('65', '13.4', '5.511');
INSERT INTO `volume` VALUES ('65', '13.6', '5.609');
INSERT INTO `volume` VALUES ('65', '13.8', '5.7074');
INSERT INTO `volume` VALUES ('65', '14', '5.806');
INSERT INTO `volume` VALUES ('66', '2', '0.749');
INSERT INTO `volume` VALUES ('66', '2.2', '0.829');
INSERT INTO `volume` VALUES ('66', '2.4', '0.91');
INSERT INTO `volume` VALUES ('66', '2.6', '0.992');
INSERT INTO `volume` VALUES ('66', '2.8', '1.074');
INSERT INTO `volume` VALUES ('66', '3', '1.157');
INSERT INTO `volume` VALUES ('66', '3.2', '1.241');
INSERT INTO `volume` VALUES ('66', '3.4', '1.325');
INSERT INTO `volume` VALUES ('66', '3.6', '1.409');
INSERT INTO `volume` VALUES ('66', '3.8', '1.493');
INSERT INTO `volume` VALUES ('66', '4', '1.578');
INSERT INTO `volume` VALUES ('66', '4.2', '1.663');
INSERT INTO `volume` VALUES ('66', '4.4', '1.749');
INSERT INTO `volume` VALUES ('66', '4.6', '1.834');
INSERT INTO `volume` VALUES ('66', '4.8', '1.92');
INSERT INTO `volume` VALUES ('66', '5', '2.005');
INSERT INTO `volume` VALUES ('66', '5.2', '2.091');
INSERT INTO `volume` VALUES ('66', '5.4', '2.177');
INSERT INTO `volume` VALUES ('66', '5.6', '2.263');
INSERT INTO `volume` VALUES ('66', '5.8', '2.348');
INSERT INTO `volume` VALUES ('66', '6', '2.434');
INSERT INTO `volume` VALUES ('66', '6.2', '2.52');
INSERT INTO `volume` VALUES ('66', '6.4', '2.605');
INSERT INTO `volume` VALUES ('66', '6.6', '2.691');
INSERT INTO `volume` VALUES ('66', '6.8', '2.776');
INSERT INTO `volume` VALUES ('66', '7', '2.862');
INSERT INTO `volume` VALUES ('66', '7.2', '2.947');
INSERT INTO `volume` VALUES ('66', '7.4', '3.032');
INSERT INTO `volume` VALUES ('66', '7.6', '3.117');
INSERT INTO `volume` VALUES ('66', '7.8', '3.203');
INSERT INTO `volume` VALUES ('66', '8', '3.288');
INSERT INTO `volume` VALUES ('66', '8.2', '3.373');
INSERT INTO `volume` VALUES ('66', '8.4', '3.458');
INSERT INTO `volume` VALUES ('66', '8.6', '3.543');
INSERT INTO `volume` VALUES ('66', '8.8', '3.628');
INSERT INTO `volume` VALUES ('66', '9', '3.713');
INSERT INTO `volume` VALUES ('66', '9.2', '3.799');
INSERT INTO `volume` VALUES ('66', '9.4', '3.8841');
INSERT INTO `volume` VALUES ('66', '9.6', '3.97');
INSERT INTO `volume` VALUES ('66', '9.8', '4.056');
INSERT INTO `volume` VALUES ('66', '10', '4.142');
INSERT INTO `volume` VALUES ('66', '10.2', '4.18');
INSERT INTO `volume` VALUES ('66', '10.4', '4.218');
INSERT INTO `volume` VALUES ('66', '10.6', '4.311');
INSERT INTO `volume` VALUES ('66', '10.8', '4.405');
INSERT INTO `volume` VALUES ('66', '11', '4.499');
INSERT INTO `volume` VALUES ('66', '11.2', '4.593');
INSERT INTO `volume` VALUES ('66', '11.4', '4.688');
INSERT INTO `volume` VALUES ('66', '11.6', '4.784');
INSERT INTO `volume` VALUES ('66', '11.8', '4.88');
INSERT INTO `volume` VALUES ('66', '12', '4.977');
INSERT INTO `volume` VALUES ('66', '12.2', '5.074');
INSERT INTO `volume` VALUES ('66', '12.4', '5.171');
INSERT INTO `volume` VALUES ('66', '12.6', '5.269');
INSERT INTO `volume` VALUES ('66', '12.8', '5.368');
INSERT INTO `volume` VALUES ('66', '13', '5.467');
INSERT INTO `volume` VALUES ('66', '13.2', '5.566');
INSERT INTO `volume` VALUES ('66', '13.4', '5.666');
INSERT INTO `volume` VALUES ('66', '13.6', '5.766');
INSERT INTO `volume` VALUES ('66', '13.8', '5.867');
INSERT INTO `volume` VALUES ('66', '14', '5.968');
INSERT INTO `volume` VALUES ('67', '2', '0.771');
INSERT INTO `volume` VALUES ('67', '2.2', '0.854');
INSERT INTO `volume` VALUES ('67', '2.4', '0.938');
INSERT INTO `volume` VALUES ('67', '2.6', '1.022');
INSERT INTO `volume` VALUES ('67', '2.8', '1.107');
INSERT INTO `volume` VALUES ('67', '3', '1.192');
INSERT INTO `volume` VALUES ('67', '3.2', '2.278');
INSERT INTO `volume` VALUES ('67', '3.4', '1.364');
INSERT INTO `volume` VALUES ('67', '3.6', '1.451');
INSERT INTO `volume` VALUES ('67', '3.8', '1.538');
INSERT INTO `volume` VALUES ('67', '4', '1.625');
INSERT INTO `volume` VALUES ('67', '4.2', '1.713');
INSERT INTO `volume` VALUES ('67', '4.4', '1.801');
INSERT INTO `volume` VALUES ('67', '4.6', '1.889');
INSERT INTO `volume` VALUES ('67', '4.8', '1.977');
INSERT INTO `volume` VALUES ('67', '5', '2.065');
INSERT INTO `volume` VALUES ('67', '5.2', '2.153');
INSERT INTO `volume` VALUES ('67', '5.4', '2.241');
INSERT INTO `volume` VALUES ('67', '5.6', '2.329');
INSERT INTO `volume` VALUES ('67', '5.8', '2.417');
INSERT INTO `volume` VALUES ('67', '6', '2.505');
INSERT INTO `volume` VALUES ('67', '6.2', '2.594');
INSERT INTO `volume` VALUES ('67', '6.4', '2.682');
INSERT INTO `volume` VALUES ('67', '6.6', '2.769');
INSERT INTO `volume` VALUES ('67', '6.8', '2.857');
INSERT INTO `volume` VALUES ('67', '7', '2.945');
INSERT INTO `volume` VALUES ('67', '7.2', '3.033');
INSERT INTO `volume` VALUES ('67', '7.4', '3.12');
INSERT INTO `volume` VALUES ('67', '7.6', '3.208');
INSERT INTO `volume` VALUES ('67', '7.8', '3.295');
INSERT INTO `volume` VALUES ('67', '8', '3.383');
INSERT INTO `volume` VALUES ('67', '8.2', '3.47');
INSERT INTO `volume` VALUES ('67', '8.4', '3.557');
INSERT INTO `volume` VALUES ('67', '8.6', '3.645');
INSERT INTO `volume` VALUES ('67', '8.8', '3.732');
INSERT INTO `volume` VALUES ('67', '9', '3.819');
INSERT INTO `volume` VALUES ('67', '9.2', '3.907');
INSERT INTO `volume` VALUES ('67', '9.4', '3.995');
INSERT INTO `volume` VALUES ('67', '9.6', '4.083');
INSERT INTO `volume` VALUES ('67', '9.8', '4.171');
INSERT INTO `volume` VALUES ('67', '10', '4.259');
INSERT INTO `volume` VALUES ('67', '10.2', '4.298');
INSERT INTO `volume` VALUES ('67', '10.4', '4.337');
INSERT INTO `volume` VALUES ('67', '10.6', '4.433');
INSERT INTO `volume` VALUES ('67', '10.8', '4.529');
INSERT INTO `volume` VALUES ('67', '11', '4.626');
INSERT INTO `volume` VALUES ('67', '11.2', '4.723');
INSERT INTO `volume` VALUES ('67', '11.4', '4.82');
INSERT INTO `volume` VALUES ('67', '11.6', '4.918');
INSERT INTO `volume` VALUES ('67', '11.8', '5.017');
INSERT INTO `volume` VALUES ('67', '12', '5.116');
INSERT INTO `volume` VALUES ('67', '12.2', '5.215');
INSERT INTO `volume` VALUES ('67', '12.4', '5.315');
INSERT INTO `volume` VALUES ('67', '12.6', '5.416');
INSERT INTO `volume` VALUES ('67', '12.8', '5.517');
INSERT INTO `volume` VALUES ('67', '13', '5.618');
INSERT INTO `volume` VALUES ('67', '13.2', '5.72');
INSERT INTO `volume` VALUES ('67', '13.4', '5.823');
INSERT INTO `volume` VALUES ('67', '13.6', '5.926');
INSERT INTO `volume` VALUES ('67', '13.8', '6.029');
INSERT INTO `volume` VALUES ('67', '14', '6.133');
INSERT INTO `volume` VALUES ('68', '2', '0.794');
INSERT INTO `volume` VALUES ('68', '2.2', '0.88');
INSERT INTO `volume` VALUES ('68', '2.4', '0.966');
INSERT INTO `volume` VALUES ('68', '2.6', '1.052');
INSERT INTO `volume` VALUES ('68', '2.8', '1.14');
INSERT INTO `volume` VALUES ('68', '3', '1.227');
INSERT INTO `volume` VALUES ('68', '3.2', '1.316');
INSERT INTO `volume` VALUES ('68', '3.4', '1.405');
INSERT INTO `volume` VALUES ('68', '3.6', '1.494');
INSERT INTO `volume` VALUES ('68', '3.8', '1.583');
INSERT INTO `volume` VALUES ('68', '4', '1.673');
INSERT INTO `volume` VALUES ('68', '4.2', '1.763');
INSERT INTO `volume` VALUES ('68', '4.4', '1.854');
INSERT INTO `volume` VALUES ('68', '4.6', '1.944');
INSERT INTO `volume` VALUES ('68', '4.8', '2.034');
INSERT INTO `volume` VALUES ('68', '5', '2.125');
INSERT INTO `volume` VALUES ('68', '5.2', '2.216');
INSERT INTO `volume` VALUES ('68', '5.4', '2.306');
INSERT INTO `volume` VALUES ('68', '5.6', '2.397');
INSERT INTO `volume` VALUES ('68', '5.8', '2.487');
INSERT INTO `volume` VALUES ('68', '6', '2.578');
INSERT INTO `volume` VALUES ('68', '6.2', '2.668');
INSERT INTO `volume` VALUES ('68', '6.4', '2.759');
INSERT INTO `volume` VALUES ('68', '6.6', '2.849');
INSERT INTO `volume` VALUES ('68', '6.8', '2.939');
INSERT INTO `volume` VALUES ('68', '7', '3.029');
INSERT INTO `volume` VALUES ('68', '7.2', '3.119');
INSERT INTO `volume` VALUES ('68', '7.4', '3.209');
INSERT INTO `volume` VALUES ('68', '7.6', '3.299');
INSERT INTO `volume` VALUES ('68', '7.8', '3.389');
INSERT INTO `volume` VALUES ('68', '8', '3.479');
INSERT INTO `volume` VALUES ('68', '8.2', '3.568');
INSERT INTO `volume` VALUES ('68', '8.4', '3.658');
INSERT INTO `volume` VALUES ('68', '8.6', '3.748');
INSERT INTO `volume` VALUES ('68', '8.8', '3.837');
INSERT INTO `volume` VALUES ('68', '9', '3.927');
INSERT INTO `volume` VALUES ('68', '9.2', '4.017');
INSERT INTO `volume` VALUES ('68', '9.4', '4.107');
INSERT INTO `volume` VALUES ('68', '9.6', '4.197');
INSERT INTO `volume` VALUES ('68', '9.8', '4.287');
INSERT INTO `volume` VALUES ('68', '10', '4.378');
INSERT INTO `volume` VALUES ('68', '10.2', '4.418');
INSERT INTO `volume` VALUES ('68', '10.4', '4.458');
INSERT INTO `volume` VALUES ('68', '10.6', '4.556');
INSERT INTO `volume` VALUES ('68', '10.8', '4.655');
INSERT INTO `volume` VALUES ('68', '11', '4.754');
INSERT INTO `volume` VALUES ('68', '11.2', '4.854');
INSERT INTO `volume` VALUES ('68', '11.4', '4.954');
INSERT INTO `volume` VALUES ('68', '11.6', '5.054');
INSERT INTO `volume` VALUES ('68', '11.8', '5.155');
INSERT INTO `volume` VALUES ('68', '12', '5.257');
INSERT INTO `volume` VALUES ('68', '12.2', '5.359');
INSERT INTO `volume` VALUES ('68', '12.4', '5.462');
INSERT INTO `volume` VALUES ('68', '12.6', '5.565');
INSERT INTO `volume` VALUES ('68', '12.8', '5.668');
INSERT INTO `volume` VALUES ('68', '13', '5.772');
INSERT INTO `volume` VALUES ('68', '13.2', '5.877');
INSERT INTO `volume` VALUES ('68', '13.4', '5.982');
INSERT INTO `volume` VALUES ('68', '13.6', '6.087');
INSERT INTO `volume` VALUES ('68', '13.8', '6.193');
INSERT INTO `volume` VALUES ('68', '14', '6.3');
INSERT INTO `volume` VALUES ('69', '2', '0.818');
INSERT INTO `volume` VALUES ('69', '2.2', '0.905');
INSERT INTO `volume` VALUES ('69', '2.4', '0.994');
INSERT INTO `volume` VALUES ('69', '2.6', '1.083');
INSERT INTO `volume` VALUES ('69', '2.8', '1.173');
INSERT INTO `volume` VALUES ('69', '3', '1.263');
INSERT INTO `volume` VALUES ('69', '3.2', '1.354');
INSERT INTO `volume` VALUES ('69', '3.4', '1.446');
INSERT INTO `volume` VALUES ('69', '3.6', '1.537');
INSERT INTO `volume` VALUES ('69', '3.8', '1.629');
INSERT INTO `volume` VALUES ('69', '4', '1.722');
INSERT INTO `volume` VALUES ('69', '4.2', '1.814');
INSERT INTO `volume` VALUES ('69', '4.4', '1.907');
INSERT INTO `volume` VALUES ('69', '4.6', '2');
INSERT INTO `volume` VALUES ('69', '4.8', '2.093');
INSERT INTO `volume` VALUES ('69', '5', '2.186');
INSERT INTO `volume` VALUES ('69', '5.2', '2.279');
INSERT INTO `volume` VALUES ('69', '5.4', '2.372');
INSERT INTO `volume` VALUES ('69', '5.6', '2.465');
INSERT INTO `volume` VALUES ('69', '5.8', '2.559');
INSERT INTO `volume` VALUES ('69', '6', '2.652');
INSERT INTO `volume` VALUES ('69', '6.2', '2.745');
INSERT INTO `volume` VALUES ('69', '6.4', '2.837');
INSERT INTO `volume` VALUES ('69', '6.6', '2.93');
INSERT INTO `volume` VALUES ('69', '6.8', '3.023');
INSERT INTO `volume` VALUES ('69', '7', '3.115');
INSERT INTO `volume` VALUES ('69', '7.2', '3.208');
INSERT INTO `volume` VALUES ('69', '7.4', '3.3');
INSERT INTO `volume` VALUES ('69', '7.6', '3.392');
INSERT INTO `volume` VALUES ('69', '7.8', '3.484');
INSERT INTO `volume` VALUES ('69', '8', '3.576');
INSERT INTO `volume` VALUES ('69', '8.2', '3.668');
INSERT INTO `volume` VALUES ('69', '8.4', '3.76');
INSERT INTO `volume` VALUES ('69', '8.6', '3.852');
INSERT INTO `volume` VALUES ('69', '8.8', '3.944');
INSERT INTO `volume` VALUES ('69', '9', '4.036');
INSERT INTO `volume` VALUES ('69', '9.2', '4.128');
INSERT INTO `volume` VALUES ('69', '9.4', '4.221');
INSERT INTO `volume` VALUES ('69', '9.6', '4.313');
INSERT INTO `volume` VALUES ('69', '9.8', '4.405');
INSERT INTO `volume` VALUES ('69', '10', '4.498');
INSERT INTO `volume` VALUES ('69', '10.2', '4.54');
INSERT INTO `volume` VALUES ('69', '10.4', '4.581');
INSERT INTO `volume` VALUES ('69', '10.6', '4.681');
INSERT INTO `volume` VALUES ('69', '10.8', '4.783');
INSERT INTO `volume` VALUES ('69', '11', '4.884');
INSERT INTO `volume` VALUES ('69', '11.2', '4.986');
INSERT INTO `volume` VALUES ('69', '11.4', '5.2089');
INSERT INTO `volume` VALUES ('69', '11.6', '5.192');
INSERT INTO `volume` VALUES ('69', '11.8', '5.296');
INSERT INTO `volume` VALUES ('69', '12', '5.4');
INSERT INTO `volume` VALUES ('69', '12.2', '5.505');
INSERT INTO `volume` VALUES ('69', '12.4', '5.61');
INSERT INTO `volume` VALUES ('69', '12.6', '5.715');
INSERT INTO `volume` VALUES ('69', '12.8', '5.822');
INSERT INTO `volume` VALUES ('69', '13', '5.928');
INSERT INTO `volume` VALUES ('69', '13.2', '6.035');
INSERT INTO `volume` VALUES ('69', '13.4', '6.143');
INSERT INTO `volume` VALUES ('69', '13.6', '6.251');
INSERT INTO `volume` VALUES ('69', '13.8', '6.36');
INSERT INTO `volume` VALUES ('69', '14', '6.469');
INSERT INTO `volume` VALUES ('70', '2', '0.841');
INSERT INTO `volume` VALUES ('70', '2.2', '0.931');
INSERT INTO `volume` VALUES ('70', '2.4', '1.022');
INSERT INTO `volume` VALUES ('70', '2.6', '1.114');
INSERT INTO `volume` VALUES ('70', '2.8', '1.207');
INSERT INTO `volume` VALUES ('70', '3', '1.3');
INSERT INTO `volume` VALUES ('70', '3.2', '1.393');
INSERT INTO `volume` VALUES ('70', '3.4', '1.487');
INSERT INTO `volume` VALUES ('70', '3.6', '1.581');
INSERT INTO `volume` VALUES ('70', '3.8', '1.676');
INSERT INTO `volume` VALUES ('70', '4', '1.771');
INSERT INTO `volume` VALUES ('70', '4.2', '1.866');
INSERT INTO `volume` VALUES ('70', '4.4', '1.961');
INSERT INTO `volume` VALUES ('70', '4.6', '2.057');
INSERT INTO `volume` VALUES ('70', '4.8', '2.152');
INSERT INTO `volume` VALUES ('70', '5', '2.248');
INSERT INTO `volume` VALUES ('70', '5.2', '2.344');
INSERT INTO `volume` VALUES ('70', '5.4', '2.439');
INSERT INTO `volume` VALUES ('70', '5.6', '2.535');
INSERT INTO `volume` VALUES ('70', '5.8', '2.631');
INSERT INTO `volume` VALUES ('70', '6', '2.726');
INSERT INTO `volume` VALUES ('70', '6.2', '2.822');
INSERT INTO `volume` VALUES ('70', '6.4', '2.917');
INSERT INTO `volume` VALUES ('70', '6.6', '3.012');
INSERT INTO `volume` VALUES ('70', '6.8', '3.107');
INSERT INTO `volume` VALUES ('70', '7', '3.202');
INSERT INTO `volume` VALUES ('70', '7.2', '3.297');
INSERT INTO `volume` VALUES ('70', '7.4', '3.392');
INSERT INTO `volume` VALUES ('70', '7.6', '3.486');
INSERT INTO `volume` VALUES ('70', '7.8', '3.581');
INSERT INTO `volume` VALUES ('70', '8', '3.675');
INSERT INTO `volume` VALUES ('70', '8.2', '3.77');
INSERT INTO `volume` VALUES ('70', '8.4', '3.864');
INSERT INTO `volume` VALUES ('70', '8.6', '3.958');
INSERT INTO `volume` VALUES ('70', '8.8', '4.052');
INSERT INTO `volume` VALUES ('70', '9', '4.147');
INSERT INTO `volume` VALUES ('70', '9.2', '4.241');
INSERT INTO `volume` VALUES ('70', '9.4', '4.336');
INSERT INTO `volume` VALUES ('70', '9.6', '4.43');
INSERT INTO `volume` VALUES ('70', '9.8', '4.525');
INSERT INTO `volume` VALUES ('70', '10', '4.62');
INSERT INTO `volume` VALUES ('70', '10.2', '4.663');
INSERT INTO `volume` VALUES ('70', '10.4', '4.705');
INSERT INTO `volume` VALUES ('70', '10.6', '4.808');
INSERT INTO `volume` VALUES ('70', '10.8', '4.912');
INSERT INTO `volume` VALUES ('70', '11', '5.016');
INSERT INTO `volume` VALUES ('70', '11.2', '5.121');
INSERT INTO `volume` VALUES ('70', '11.4', '5.226');
INSERT INTO `volume` VALUES ('70', '11.6', '5.332');
INSERT INTO `volume` VALUES ('70', '11.8', '5.438');
INSERT INTO `volume` VALUES ('70', '12', '5.545');
INSERT INTO `volume` VALUES ('70', '12.2', '5.652');
INSERT INTO `volume` VALUES ('70', '12.4', '5.76');
INSERT INTO `volume` VALUES ('70', '12.6', '5.868');
INSERT INTO `volume` VALUES ('70', '12.8', '5.977');
INSERT INTO `volume` VALUES ('70', '13', '6.086');
INSERT INTO `volume` VALUES ('70', '13.2', '6.196');
INSERT INTO `volume` VALUES ('70', '13.4', '6.306');
INSERT INTO `volume` VALUES ('70', '13.6', '6.417');
INSERT INTO `volume` VALUES ('70', '13.8', '6.529');
INSERT INTO `volume` VALUES ('70', '14', '6.64');
INSERT INTO `volume` VALUES ('71', '2', '0.865');
INSERT INTO `volume` VALUES ('71', '2.2', '0.958');
INSERT INTO `volume` VALUES ('71', '2.4', '1.052');
INSERT INTO `volume` VALUES ('71', '2.6', '1.146');
INSERT INTO `volume` VALUES ('71', '2.8', '1.241');
INSERT INTO `volume` VALUES ('71', '3', '1.336');
INSERT INTO `volume` VALUES ('71', '3.2', '1.433');
INSERT INTO `volume` VALUES ('71', '3.4', '1.529');
INSERT INTO `volume` VALUES ('71', '3.6', '1.625');
INSERT INTO `volume` VALUES ('71', '3.8', '1.723');
INSERT INTO `volume` VALUES ('71', '4', '1.821');
INSERT INTO `volume` VALUES ('71', '4.2', '1.919');
INSERT INTO `volume` VALUES ('71', '4.4', '2.017');
INSERT INTO `volume` VALUES ('71', '4.6', '2.115');
INSERT INTO `volume` VALUES ('71', '4.8', '2.213');
INSERT INTO `volume` VALUES ('71', '5', '2.311');
INSERT INTO `volume` VALUES ('71', '5.2', '2.409');
INSERT INTO `volume` VALUES ('71', '5.4', '2.508');
INSERT INTO `volume` VALUES ('71', '5.6', '2.606');
INSERT INTO `volume` VALUES ('71', '5.8', '2.704');
INSERT INTO `volume` VALUES ('71', '6', '2.802');
INSERT INTO `volume` VALUES ('71', '6.2', '2.9');
INSERT INTO `volume` VALUES ('71', '6.4', '2.998');
INSERT INTO `volume` VALUES ('71', '6.6', '3.095');
INSERT INTO `volume` VALUES ('71', '6.8', '3.193');
INSERT INTO `volume` VALUES ('71', '7', '3.29');
INSERT INTO `volume` VALUES ('71', '7.2', '3.388');
INSERT INTO `volume` VALUES ('71', '7.4', '3.485');
INSERT INTO `volume` VALUES ('71', '7.6', '3.582');
INSERT INTO `volume` VALUES ('71', '7.8', '3.679');
INSERT INTO `volume` VALUES ('71', '8', '3.775');
INSERT INTO `volume` VALUES ('71', '8.2', '3.872');
INSERT INTO `volume` VALUES ('71', '8.4', '3.969');
INSERT INTO `volume` VALUES ('71', '8.6', '4.065');
INSERT INTO `volume` VALUES ('71', '8.8', '4.162');
INSERT INTO `volume` VALUES ('71', '9', '4.259');
INSERT INTO `volume` VALUES ('71', '9.2', '4.356');
INSERT INTO `volume` VALUES ('71', '9.4', '4.452');
INSERT INTO `volume` VALUES ('71', '9.6', '4.549');
INSERT INTO `volume` VALUES ('71', '9.8', '4.647');
INSERT INTO `volume` VALUES ('71', '10', '4.744');
INSERT INTO `volume` VALUES ('71', '10.2', '4.788');
INSERT INTO `volume` VALUES ('71', '10.4', '4.831');
INSERT INTO `volume` VALUES ('71', '10.6', '4.937');
INSERT INTO `volume` VALUES ('71', '10.8', '5.043');
INSERT INTO `volume` VALUES ('71', '11', '5.15');
INSERT INTO `volume` VALUES ('71', '11.2', '5.257');
INSERT INTO `volume` VALUES ('71', '11.4', '5.365');
INSERT INTO `volume` VALUES ('71', '11.6', '5.474');
INSERT INTO `volume` VALUES ('71', '11.8', '5.582');
INSERT INTO `volume` VALUES ('71', '12', '5.692');
INSERT INTO `volume` VALUES ('71', '12.2', '5.802');
INSERT INTO `volume` VALUES ('71', '12.4', '5.912');
INSERT INTO `volume` VALUES ('71', '12.6', '6.023');
INSERT INTO `volume` VALUES ('71', '12.8', '6.135');
INSERT INTO `volume` VALUES ('71', '13', '6.247');
INSERT INTO `volume` VALUES ('71', '13.2', '6.359');
INSERT INTO `volume` VALUES ('71', '13.4', '6.472');
INSERT INTO `volume` VALUES ('71', '13.6', '6.585');
INSERT INTO `volume` VALUES ('71', '13.8', '6.7');
INSERT INTO `volume` VALUES ('71', '14', '6.814');
INSERT INTO `volume` VALUES ('72', '2', '0.89');
INSERT INTO `volume` VALUES ('72', '2.2', '0.985');
INSERT INTO `volume` VALUES ('72', '2.4', '1.081');
INSERT INTO `volume` VALUES ('72', '2.6', '1.178');
INSERT INTO `volume` VALUES ('72', '2.8', '1.276');
INSERT INTO `volume` VALUES ('72', '3', '1.374');
INSERT INTO `volume` VALUES ('72', '3.2', '1.473');
INSERT INTO `volume` VALUES ('72', '3.4', '1.572');
INSERT INTO `volume` VALUES ('72', '3.6', '1.671');
INSERT INTO `volume` VALUES ('72', '3.8', '1.771');
INSERT INTO `volume` VALUES ('72', '4', '1.871');
INSERT INTO `volume` VALUES ('72', '4.2', '1.972');
INSERT INTO `volume` VALUES ('72', '4.4', '2.072');
INSERT INTO `volume` VALUES ('72', '4.6', '2.173');
INSERT INTO `volume` VALUES ('72', '4.8', '2.274');
INSERT INTO `volume` VALUES ('72', '5', '2.375');
INSERT INTO `volume` VALUES ('72', '5.2', '2.476');
INSERT INTO `volume` VALUES ('72', '5.4', '2.576');
INSERT INTO `volume` VALUES ('72', '5.6', '2.677');
INSERT INTO `volume` VALUES ('72', '5.8', '2.778');
INSERT INTO `volume` VALUES ('72', '6', '2.879');
INSERT INTO `volume` VALUES ('72', '6.2', '2.979');
INSERT INTO `volume` VALUES ('72', '6.4', '3.079');
INSERT INTO `volume` VALUES ('72', '6.6', '3.18');
INSERT INTO `volume` VALUES ('72', '6.8', '3.28');
INSERT INTO `volume` VALUES ('72', '7', '3.38');
INSERT INTO `volume` VALUES ('72', '7.2', '3.479');
INSERT INTO `volume` VALUES ('72', '7.4', '3.579');
INSERT INTO `volume` VALUES ('72', '7.6', '3.678');
INSERT INTO `volume` VALUES ('72', '7.8', '3.778');
INSERT INTO `volume` VALUES ('72', '8', '3.877');
INSERT INTO `volume` VALUES ('72', '8.2', '3.976');
INSERT INTO `volume` VALUES ('72', '8.4', '4.075');
INSERT INTO `volume` VALUES ('72', '8.6', '4.174');
INSERT INTO `volume` VALUES ('72', '8.8', '4.273');
INSERT INTO `volume` VALUES ('72', '9', '4.372');
INSERT INTO `volume` VALUES ('72', '9.2', '4.471');
INSERT INTO `volume` VALUES ('72', '9.4', '4.571');
INSERT INTO `volume` VALUES ('72', '9.6', '4.67');
INSERT INTO `volume` VALUES ('72', '9.8', '4.77');
INSERT INTO `volume` VALUES ('72', '10', '4.869');
INSERT INTO `volume` VALUES ('72', '10.2', '4.914');
INSERT INTO `volume` VALUES ('72', '10.4', '4.959');
INSERT INTO `volume` VALUES ('72', '10.6', '5.067');
INSERT INTO `volume` VALUES ('72', '10.8', '5.176');
INSERT INTO `volume` VALUES ('72', '11', '5.286');
INSERT INTO `volume` VALUES ('72', '11.2', '5.395');
INSERT INTO `volume` VALUES ('72', '11.4', '5.506');
INSERT INTO `volume` VALUES ('72', '11.6', '5.617');
INSERT INTO `volume` VALUES ('72', '11.8', '5.729');
INSERT INTO `volume` VALUES ('72', '12', '5.841');
INSERT INTO `volume` VALUES ('72', '12.2', '5.953');
INSERT INTO `volume` VALUES ('72', '12.4', '6.066');
INSERT INTO `volume` VALUES ('72', '12.6', '6.18');
INSERT INTO `volume` VALUES ('72', '12.8', '6.294');
INSERT INTO `volume` VALUES ('72', '13', '6.409');
INSERT INTO `volume` VALUES ('72', '13.2', '6.524');
INSERT INTO `volume` VALUES ('72', '13.4', '6.64');
INSERT INTO `volume` VALUES ('72', '13.6', '6.756');
INSERT INTO `volume` VALUES ('72', '13.8', '6.873');
INSERT INTO `volume` VALUES ('72', '14', '6.99');
INSERT INTO `volume` VALUES ('73', '2', '0.914');
INSERT INTO `volume` VALUES ('73', '2.2', '1.012');
INSERT INTO `volume` VALUES ('73', '2.4', '1.111');
INSERT INTO `volume` VALUES ('73', '2.6', '1.211');
INSERT INTO `volume` VALUES ('73', '2.8', '1.311');
INSERT INTO `volume` VALUES ('73', '3', '1.412');
INSERT INTO `volume` VALUES ('73', '3.2', '1.513');
INSERT INTO `volume` VALUES ('73', '3.4', '1.615');
INSERT INTO `volume` VALUES ('73', '3.6', '1.717');
INSERT INTO `volume` VALUES ('73', '3.8', '1.82');
INSERT INTO `volume` VALUES ('73', '4', '1.923');
INSERT INTO `volume` VALUES ('73', '4.2', '2.026');
INSERT INTO `volume` VALUES ('73', '4.4', '2.129');
INSERT INTO `volume` VALUES ('73', '4.6', '2.232');
INSERT INTO `volume` VALUES ('73', '4.8', '2.336');
INSERT INTO `volume` VALUES ('73', '5', '2.439');
INSERT INTO `volume` VALUES ('73', '5.2', '2.543');
INSERT INTO `volume` VALUES ('73', '5.4', '2.646');
INSERT INTO `volume` VALUES ('73', '5.6', '2.75');
INSERT INTO `volume` VALUES ('73', '5.8', '2.853');
INSERT INTO `volume` VALUES ('73', '6', '2.956');
INSERT INTO `volume` VALUES ('73', '6.2', '3.059');
INSERT INTO `volume` VALUES ('73', '6.4', '3.162');
INSERT INTO `volume` VALUES ('73', '6.6', '3.265');
INSERT INTO `volume` VALUES ('73', '6.8', '3.368');
INSERT INTO `volume` VALUES ('73', '7', '3.47');
INSERT INTO `volume` VALUES ('73', '7.2', '3.572');
INSERT INTO `volume` VALUES ('73', '7.4', '3.674');
INSERT INTO `volume` VALUES ('73', '7.6', '3.776');
INSERT INTO `volume` VALUES ('73', '7.8', '3.878');
INSERT INTO `volume` VALUES ('73', '8', '3.98');
INSERT INTO `volume` VALUES ('73', '8.2', '4.082');
INSERT INTO `volume` VALUES ('73', '8.4', '4.183');
INSERT INTO `volume` VALUES ('73', '8.6', '4.284');
INSERT INTO `volume` VALUES ('73', '8.8', '4.386');
INSERT INTO `volume` VALUES ('73', '9', '4.487');
INSERT INTO `volume` VALUES ('73', '9.2', '4.589');
INSERT INTO `volume` VALUES ('73', '9.4', '4.691');
INSERT INTO `volume` VALUES ('73', '9.6', '4.792');
INSERT INTO `volume` VALUES ('73', '9.8', '4.894');
INSERT INTO `volume` VALUES ('73', '10', '4.996');
INSERT INTO `volume` VALUES ('73', '10.2', '5.042');
INSERT INTO `volume` VALUES ('73', '10.4', '5.088');
INSERT INTO `volume` VALUES ('73', '10.6', '5.199');
INSERT INTO `volume` VALUES ('73', '10.8', '5.311');
INSERT INTO `volume` VALUES ('73', '11', '5.423');
INSERT INTO `volume` VALUES ('73', '11.2', '5.535');
INSERT INTO `volume` VALUES ('73', '11.4', '5.649');
INSERT INTO `volume` VALUES ('73', '11.6', '5.762');
INSERT INTO `volume` VALUES ('73', '11.8', '5.877');
INSERT INTO `volume` VALUES ('73', '12', '5.991');
INSERT INTO `volume` VALUES ('73', '12.2', '6.107');
INSERT INTO `volume` VALUES ('73', '12.4', '6.222');
INSERT INTO `volume` VALUES ('73', '12.6', '6.339');
INSERT INTO `volume` VALUES ('73', '12.8', '6.456');
INSERT INTO `volume` VALUES ('73', '13', '6.573');
INSERT INTO `volume` VALUES ('73', '13.2', '6.691');
INSERT INTO `volume` VALUES ('73', '13.4', '6.809');
INSERT INTO `volume` VALUES ('73', '13.6', '6.928');
INSERT INTO `volume` VALUES ('73', '13.8', '7.048');
INSERT INTO `volume` VALUES ('73', '14', '7.168');
INSERT INTO `volume` VALUES ('74', '2', '0.939');
INSERT INTO `volume` VALUES ('74', '2.2', '1.04');
INSERT INTO `volume` VALUES ('74', '2.4', '1.141');
INSERT INTO `volume` VALUES ('74', '2.6', '1.244');
INSERT INTO `volume` VALUES ('74', '2.8', '1.347');
INSERT INTO `volume` VALUES ('74', '3', '1.45');
INSERT INTO `volume` VALUES ('74', '3.2', '1.554');
INSERT INTO `volume` VALUES ('74', '3.4', '1.659');
INSERT INTO `volume` VALUES ('74', '3.6', '1.764');
INSERT INTO `volume` VALUES ('74', '3.8', '1.869');
INSERT INTO `volume` VALUES ('74', '4', '1.975');
INSERT INTO `volume` VALUES ('74', '4.2', '2.08');
INSERT INTO `volume` VALUES ('74', '4.4', '2.186');
INSERT INTO `volume` VALUES ('74', '4.6', '2.292');
INSERT INTO `volume` VALUES ('74', '4.8', '2.399');
INSERT INTO `volume` VALUES ('74', '5', '2.505');
INSERT INTO `volume` VALUES ('74', '5.2', '2.611');
INSERT INTO `volume` VALUES ('74', '5.4', '2.717');
INSERT INTO `volume` VALUES ('74', '5.6', '2.823');
INSERT INTO `volume` VALUES ('74', '5.8', '2.929');
INSERT INTO `volume` VALUES ('74', '6', '3.035');
INSERT INTO `volume` VALUES ('74', '6.2', '3.141');
INSERT INTO `volume` VALUES ('74', '6.4', '3.246');
INSERT INTO `volume` VALUES ('74', '6.6', '3.352');
INSERT INTO `volume` VALUES ('74', '6.8', '3.457');
INSERT INTO `volume` VALUES ('74', '7', '3.562');
INSERT INTO `volume` VALUES ('74', '7.2', '3.667');
INSERT INTO `volume` VALUES ('74', '7.4', '3.771');
INSERT INTO `volume` VALUES ('74', '7.6', '3.876');
INSERT INTO `volume` VALUES ('74', '7.8', '3.98');
INSERT INTO `volume` VALUES ('74', '8', '4.084');
INSERT INTO `volume` VALUES ('74', '8.2', '4.188');
INSERT INTO `volume` VALUES ('74', '8.4', '4.292');
INSERT INTO `volume` VALUES ('74', '8.6', '4.396');
INSERT INTO `volume` VALUES ('74', '8.8', '4.5');
INSERT INTO `volume` VALUES ('74', '9', '4.604');
INSERT INTO `volume` VALUES ('74', '9.2', '4.708');
INSERT INTO `volume` VALUES ('74', '9.4', '4.812');
INSERT INTO `volume` VALUES ('74', '9.6', '4.916');
INSERT INTO `volume` VALUES ('74', '9.8', '5.02');
INSERT INTO `volume` VALUES ('74', '10', '5.1252');
INSERT INTO `volume` VALUES ('74', '10.2', '5.172');
INSERT INTO `volume` VALUES ('74', '10.4', '5.219');
INSERT INTO `volume` VALUES ('74', '10.6', '5.333');
INSERT INTO `volume` VALUES ('74', '10.8', '5.447');
INSERT INTO `volume` VALUES ('74', '11', '5.562');
INSERT INTO `volume` VALUES ('74', '11.2', '5.677');
INSERT INTO `volume` VALUES ('74', '11.4', '5.793');
INSERT INTO `volume` VALUES ('74', '11.6', '5.91');
INSERT INTO `volume` VALUES ('74', '11.8', '6.027');
INSERT INTO `volume` VALUES ('74', '12', '6.144');
INSERT INTO `volume` VALUES ('74', '12.2', '6.262');
INSERT INTO `volume` VALUES ('74', '12.4', '6.381');
INSERT INTO `volume` VALUES ('74', '12.6', '6.5');
INSERT INTO `volume` VALUES ('74', '12.8', '6.619');
INSERT INTO `volume` VALUES ('74', '13', '6.739');
INSERT INTO `volume` VALUES ('74', '13.2', '6.86');
INSERT INTO `volume` VALUES ('74', '13.4', '6.981');
INSERT INTO `volume` VALUES ('74', '13.6', '7.103');
INSERT INTO `volume` VALUES ('74', '13.8', '7.225');
INSERT INTO `volume` VALUES ('74', '14', '7.348');
INSERT INTO `volume` VALUES ('75', '2', '0.965');
INSERT INTO `volume` VALUES ('75', '2.2', '1.068');
INSERT INTO `volume` VALUES ('75', '2.4', '1.172');
INSERT INTO `volume` VALUES ('75', '2.6', '1.277');
INSERT INTO `volume` VALUES ('75', '2.8', '1.383');
INSERT INTO `volume` VALUES ('75', '3', '1.489');
INSERT INTO `volume` VALUES ('75', '3.2', '1.596');
INSERT INTO `volume` VALUES ('75', '3.4', '1.703');
INSERT INTO `volume` VALUES ('75', '3.6', '1.811');
INSERT INTO `volume` VALUES ('75', '3.8', '1.919');
INSERT INTO `volume` VALUES ('75', '4', '2.027');
INSERT INTO `volume` VALUES ('75', '4.2', '2.136');
INSERT INTO `volume` VALUES ('75', '4.4', '2.245');
INSERT INTO `volume` VALUES ('75', '4.6', '2.353');
INSERT INTO `volume` VALUES ('75', '4.8', '2.462');
INSERT INTO `volume` VALUES ('75', '5', '2.571');
INSERT INTO `volume` VALUES ('75', '5.2', '2.68');
INSERT INTO `volume` VALUES ('75', '5.4', '2.789');
INSERT INTO `volume` VALUES ('75', '5.6', '2.898');
INSERT INTO `volume` VALUES ('75', '5.8', '3.006');
INSERT INTO `volume` VALUES ('75', '6', '3.115');
INSERT INTO `volume` VALUES ('75', '6.2', '3.223');
INSERT INTO `volume` VALUES ('75', '6.4', '3.331');
INSERT INTO `volume` VALUES ('75', '6.6', '3.439');
INSERT INTO `volume` VALUES ('75', '6.8', '3.547');
INSERT INTO `volume` VALUES ('75', '7', '3.655');
INSERT INTO `volume` VALUES ('75', '7.2', '3.762');
INSERT INTO `volume` VALUES ('75', '7.4', '3.869');
INSERT INTO `volume` VALUES ('75', '7.6', '3.976');
INSERT INTO `volume` VALUES ('75', '7.8', '4.083');
INSERT INTO `volume` VALUES ('75', '8', '4.19');
INSERT INTO `volume` VALUES ('75', '8.2', '4.296');
INSERT INTO `volume` VALUES ('75', '8.4', '4.403');
INSERT INTO `volume` VALUES ('75', '8.6', '4.509');
INSERT INTO `volume` VALUES ('75', '8.8', '4.616');
INSERT INTO `volume` VALUES ('75', '9', '4.722');
INSERT INTO `volume` VALUES ('75', '9.2', '4.828');
INSERT INTO `volume` VALUES ('75', '9.4', '4.935');
INSERT INTO `volume` VALUES ('75', '9.6', '5.041');
INSERT INTO `volume` VALUES ('75', '9.8', '5.148');
INSERT INTO `volume` VALUES ('75', '10', '5.255');
INSERT INTO `volume` VALUES ('75', '10.2', '5.303');
INSERT INTO `volume` VALUES ('75', '10.4', '5.351');
INSERT INTO `volume` VALUES ('75', '10.6', '5.468');
INSERT INTO `volume` VALUES ('75', '10.8', '5.585');
INSERT INTO `volume` VALUES ('75', '11', '5.703');
INSERT INTO `volume` VALUES ('75', '11.2', '5.821');
INSERT INTO `volume` VALUES ('75', '11.4', '5.939');
INSERT INTO `volume` VALUES ('75', '11.6', '6.059');
INSERT INTO `volume` VALUES ('75', '11.8', '6.178');
INSERT INTO `volume` VALUES ('75', '12', '6.299');
INSERT INTO `volume` VALUES ('75', '12.2', '6.419');
INSERT INTO `volume` VALUES ('75', '12.4', '3.541');
INSERT INTO `volume` VALUES ('75', '12.6', '6.663');
INSERT INTO `volume` VALUES ('75', '12.8', '6.785');
INSERT INTO `volume` VALUES ('75', '13', '6.908');
INSERT INTO `volume` VALUES ('75', '13.2', '7.031');
INSERT INTO `volume` VALUES ('75', '13.4', '7.155');
INSERT INTO `volume` VALUES ('75', '13.6', '7.28');
INSERT INTO `volume` VALUES ('75', '13.8', '7.405');
INSERT INTO `volume` VALUES ('75', '14', '7.531');
INSERT INTO `volume` VALUES ('76', '2', '0.99');
INSERT INTO `volume` VALUES ('76', '2.2', '1.096');
INSERT INTO `volume` VALUES ('76', '2.4', '1.203');
INSERT INTO `volume` VALUES ('76', '2.6', '1.311');
INSERT INTO `volume` VALUES ('76', '2.8', '1.419');
INSERT INTO `volume` VALUES ('76', '3', '1.528');
INSERT INTO `volume` VALUES ('76', '3.2', '1.638');
INSERT INTO `volume` VALUES ('76', '3.4', '1.748');
INSERT INTO `volume` VALUES ('76', '3.6', '1.859');
INSERT INTO `volume` VALUES ('76', '3.8', '1.969');
INSERT INTO `volume` VALUES ('76', '4', '2.081');
INSERT INTO `volume` VALUES ('76', '4.2', '2.192');
INSERT INTO `volume` VALUES ('76', '4.4', '2.303');
INSERT INTO `volume` VALUES ('76', '4.6', '2.415');
INSERT INTO `volume` VALUES ('76', '4.8', '2.527');
INSERT INTO `volume` VALUES ('76', '5', '2.638');
INSERT INTO `volume` VALUES ('76', '5.2', '2.75');
INSERT INTO `volume` VALUES ('76', '5.4', '2.862');
INSERT INTO `volume` VALUES ('76', '5.6', '2.973');
INSERT INTO `volume` VALUES ('76', '5.8', '3.084');
INSERT INTO `volume` VALUES ('76', '6', '3.196');
INSERT INTO `volume` VALUES ('76', '6.2', '3.307');
INSERT INTO `volume` VALUES ('76', '6.4', '3.417');
INSERT INTO `volume` VALUES ('76', '6.6', '3.528');
INSERT INTO `volume` VALUES ('76', '6.8', '3.639');
INSERT INTO `volume` VALUES ('76', '7', '3.749');
INSERT INTO `volume` VALUES ('76', '7.2', '3.859');
INSERT INTO `volume` VALUES ('76', '7.4', '3.969');
INSERT INTO `volume` VALUES ('76', '7.6', '4.078');
INSERT INTO `volume` VALUES ('76', '7.8', '4.188');
INSERT INTO `volume` VALUES ('76', '8', '4.297');
INSERT INTO `volume` VALUES ('76', '8.2', '4.406');
INSERT INTO `volume` VALUES ('76', '8.4', '4.515');
INSERT INTO `volume` VALUES ('76', '8.6', '4.624');
INSERT INTO `volume` VALUES ('76', '8.8', '4.733');
INSERT INTO `volume` VALUES ('76', '9', '4.842');
INSERT INTO `volume` VALUES ('76', '9.2', '4.95');
INSERT INTO `volume` VALUES ('76', '9.4', '5.059');
INSERT INTO `volume` VALUES ('76', '9.6', '5.168');
INSERT INTO `volume` VALUES ('76', '9.8', '5.278');
INSERT INTO `volume` VALUES ('76', '10', '5.387');
INSERT INTO `volume` VALUES ('76', '10.2', '5.437');
INSERT INTO `volume` VALUES ('76', '10.4', '5.486');
INSERT INTO `volume` VALUES ('76', '10.6', '5.605');
INSERT INTO `volume` VALUES ('76', '10.8', '5.725');
INSERT INTO `volume` VALUES ('76', '11', '5.845');
INSERT INTO `volume` VALUES ('76', '11.2', '5.966');
INSERT INTO `volume` VALUES ('76', '11.4', '6.087');
INSERT INTO `volume` VALUES ('76', '11.6', '6.209');
INSERT INTO `volume` VALUES ('76', '11.8', '6.332');
INSERT INTO `volume` VALUES ('76', '12', '6.455');
INSERT INTO `volume` VALUES ('76', '12.2', '6.579');
INSERT INTO `volume` VALUES ('76', '12.4', '6.703');
INSERT INTO `volume` VALUES ('76', '12.6', '6.827');
INSERT INTO `volume` VALUES ('76', '12.8', '6.953');
INSERT INTO `volume` VALUES ('76', '13', '7.079');
INSERT INTO `volume` VALUES ('76', '13.2', '7.205');
INSERT INTO `volume` VALUES ('76', '13.4', '7.332');
INSERT INTO `volume` VALUES ('76', '13.6', '7.459');
INSERT INTO `volume` VALUES ('76', '13.8', '7.587');
INSERT INTO `volume` VALUES ('76', '14', '7.716');
INSERT INTO `volume` VALUES ('77', '2', '1.016');
INSERT INTO `volume` VALUES ('77', '2.2', '1.125');
INSERT INTO `volume` VALUES ('77', '2.4', '1.235');
INSERT INTO `volume` VALUES ('77', '2.6', '1.345');
INSERT INTO `volume` VALUES ('77', '2.8', '1.456');
INSERT INTO `volume` VALUES ('77', '3', '1.568');
INSERT INTO `volume` VALUES ('77', '3.2', '1.681');
INSERT INTO `volume` VALUES ('77', '3.4', '1.794');
INSERT INTO `volume` VALUES ('77', '3.6', '1.907');
INSERT INTO `volume` VALUES ('77', '3.8', '2.021');
INSERT INTO `volume` VALUES ('77', '4', '2.135');
INSERT INTO `volume` VALUES ('77', '4.2', '2.249');
INSERT INTO `volume` VALUES ('77', '4.4', '2.363');
INSERT INTO `volume` VALUES ('77', '4.6', '2.477');
INSERT INTO `volume` VALUES ('77', '4.8', '2.592');
INSERT INTO `volume` VALUES ('77', '5', '2.706');
INSERT INTO `volume` VALUES ('77', '5.2', '2.821');
INSERT INTO `volume` VALUES ('77', '5.4', '2.935');
INSERT INTO `volume` VALUES ('77', '5.6', '3.049');
INSERT INTO `volume` VALUES ('77', '5.8', '3.163');
INSERT INTO `volume` VALUES ('77', '6', '3.277');
INSERT INTO `volume` VALUES ('77', '6.2', '3.391');
INSERT INTO `volume` VALUES ('77', '6.4', '3.505');
INSERT INTO `volume` VALUES ('77', '6.6', '3.618');
INSERT INTO `volume` VALUES ('77', '6.8', '3.731');
INSERT INTO `volume` VALUES ('77', '7', '3.844');
INSERT INTO `volume` VALUES ('77', '7.2', '3.957');
INSERT INTO `volume` VALUES ('77', '7.4', '4.069');
INSERT INTO `volume` VALUES ('77', '7.6', '4.181');
INSERT INTO `volume` VALUES ('77', '7.8', '4.293');
INSERT INTO `volume` VALUES ('77', '8', '4.405');
INSERT INTO `volume` VALUES ('77', '8.2', '4.5127');
INSERT INTO `volume` VALUES ('77', '8.4', '4.628');
INSERT INTO `volume` VALUES ('77', '8.6', '4.74');
INSERT INTO `volume` VALUES ('77', '8.8', '4.851');
INSERT INTO `volume` VALUES ('77', '9', '4.963');
INSERT INTO `volume` VALUES ('77', '9.2', '5.074');
INSERT INTO `volume` VALUES ('77', '9.4', '5.185');
INSERT INTO `volume` VALUES ('77', '9.6', '5.297');
INSERT INTO `volume` VALUES ('77', '9.8', '5.409');
INSERT INTO `volume` VALUES ('77', '10', '5.521');
INSERT INTO `volume` VALUES ('77', '10.2', '5.572');
INSERT INTO `volume` VALUES ('77', '10.4', '5.622');
INSERT INTO `volume` VALUES ('77', '10.6', '5.744');
INSERT INTO `volume` VALUES ('77', '10.8', '5.866');
INSERT INTO `volume` VALUES ('77', '11', '5.99');
INSERT INTO `volume` VALUES ('77', '11.2', '6.113');
INSERT INTO `volume` VALUES ('77', '11.4', '6.237');
INSERT INTO `volume` VALUES ('77', '11.6', '6.362');
INSERT INTO `volume` VALUES ('77', '11.8', '6.488');
INSERT INTO `volume` VALUES ('77', '12', '6.613');
INSERT INTO `volume` VALUES ('77', '12.2', '6.74');
INSERT INTO `volume` VALUES ('77', '12.4', '6.867');
INSERT INTO `volume` VALUES ('77', '12.6', '6.994');
INSERT INTO `volume` VALUES ('77', '12.8', '7.122');
INSERT INTO `volume` VALUES ('77', '13', '7.251');
INSERT INTO `volume` VALUES ('77', '13.2', '7.38');
INSERT INTO `volume` VALUES ('77', '13.4', '7.51');
INSERT INTO `volume` VALUES ('77', '13.6', '7.64');
INSERT INTO `volume` VALUES ('77', '13.8', '7.771');
INSERT INTO `volume` VALUES ('77', '14', '7.903');
INSERT INTO `volume` VALUES ('78', '2', '1.043');
INSERT INTO `volume` VALUES ('78', '2.2', '1.154');
INSERT INTO `volume` VALUES ('78', '2.4', '1.267');
INSERT INTO `volume` VALUES ('78', '2.6', '1.38');
INSERT INTO `volume` VALUES ('78', '2.8', '1.494');
INSERT INTO `volume` VALUES ('78', '3', '1.609');
INSERT INTO `volume` VALUES ('78', '3.2', '1.724');
INSERT INTO `volume` VALUES ('78', '3.4', '1.84');
INSERT INTO `volume` VALUES ('78', '3.6', '1.956');
INSERT INTO `volume` VALUES ('78', '3.8', '2.073');
INSERT INTO `volume` VALUES ('78', '4', '2.189');
INSERT INTO `volume` VALUES ('78', '4.2', '2.306');
INSERT INTO `volume` VALUES ('78', '4.4', '2.424');
INSERT INTO `volume` VALUES ('78', '4.6', '2.541');
INSERT INTO `volume` VALUES ('78', '4.8', '2.658');
INSERT INTO `volume` VALUES ('78', '5', '2.775');
INSERT INTO `volume` VALUES ('78', '5.2', '2.893');
INSERT INTO `volume` VALUES ('78', '5.4', '3.01');
INSERT INTO `volume` VALUES ('78', '5.6', '3.127');
INSERT INTO `volume` VALUES ('78', '5.8', '3.244');
INSERT INTO `volume` VALUES ('78', '6', '3.36');
INSERT INTO `volume` VALUES ('78', '6.2', '3.477');
INSERT INTO `volume` VALUES ('78', '6.4', '3.593');
INSERT INTO `volume` VALUES ('78', '6.6', '3.709');
INSERT INTO `volume` VALUES ('78', '6.8', '3.825');
INSERT INTO `volume` VALUES ('78', '7', '3.94');
INSERT INTO `volume` VALUES ('78', '7.2', '4.056');
INSERT INTO `volume` VALUES ('78', '7.4', '4.171');
INSERT INTO `volume` VALUES ('78', '7.6', '4.286');
INSERT INTO `volume` VALUES ('78', '7.8', '4.4');
INSERT INTO `volume` VALUES ('78', '8', '4.515');
INSERT INTO `volume` VALUES ('78', '8.2', '4.629');
INSERT INTO `volume` VALUES ('78', '8.4', '4.743');
INSERT INTO `volume` VALUES ('78', '8.6', '4.857');
INSERT INTO `volume` VALUES ('78', '8.8', '4.971');
INSERT INTO `volume` VALUES ('78', '9', '5.085');
INSERT INTO `volume` VALUES ('78', '9.2', '5.199');
INSERT INTO `volume` VALUES ('78', '9.4', '5.313');
INSERT INTO `volume` VALUES ('78', '9.6', '5.427');
INSERT INTO `volume` VALUES ('78', '9.8', '5.541');
INSERT INTO `volume` VALUES ('78', '10', '5.656');
INSERT INTO `volume` VALUES ('78', '10.2', '5.708');
INSERT INTO `volume` VALUES ('78', '10.4', '5.759');
INSERT INTO `volume` VALUES ('78', '10.6', '5.884');
INSERT INTO `volume` VALUES ('78', '10.8', '6.01');
INSERT INTO `volume` VALUES ('78', '11', '6.136');
INSERT INTO `volume` VALUES ('78', '11.2', '6.262');
INSERT INTO `volume` VALUES ('78', '11.4', '6.389');
INSERT INTO `volume` VALUES ('78', '11.6', '6.517');
INSERT INTO `volume` VALUES ('78', '11.8', '6.645');
INSERT INTO `volume` VALUES ('78', '12', '6.774');
INSERT INTO `volume` VALUES ('78', '12.2', '6.903');
INSERT INTO `volume` VALUES ('78', '12.4', '7.033');
INSERT INTO `volume` VALUES ('78', '12.6', '7.163');
INSERT INTO `volume` VALUES ('78', '12.8', '7.294');
INSERT INTO `volume` VALUES ('78', '13', '7.426');
INSERT INTO `volume` VALUES ('78', '13.2', '7.558');
INSERT INTO `volume` VALUES ('78', '13.4', '7.691');
INSERT INTO `volume` VALUES ('78', '13.6', '7.824');
INSERT INTO `volume` VALUES ('78', '13.8', '7.958');
INSERT INTO `volume` VALUES ('78', '14', '8.092');
INSERT INTO `volume` VALUES ('79', '2', '1.069');
INSERT INTO `volume` VALUES ('79', '2.2', '1.184');
INSERT INTO `volume` VALUES ('79', '2.4', '1.299');
INSERT INTO `volume` VALUES ('79', '2.6', '1.415');
INSERT INTO `volume` VALUES ('79', '2.8', '1.532');
INSERT INTO `volume` VALUES ('79', '3', '1.609');
INSERT INTO `volume` VALUES ('79', '3.2', '1.768');
INSERT INTO `volume` VALUES ('79', '3.4', '1.887');
INSERT INTO `volume` VALUES ('79', '3.6', '2.006');
INSERT INTO `volume` VALUES ('79', '3.8', '2.125');
INSERT INTO `volume` VALUES ('79', '4', '2.245');
INSERT INTO `volume` VALUES ('79', '4.2', '2.365');
INSERT INTO `volume` VALUES ('79', '4.4', '2.485');
INSERT INTO `volume` VALUES ('79', '4.6', '2.605');
INSERT INTO `volume` VALUES ('79', '4.8', '2.725');
INSERT INTO `volume` VALUES ('79', '5', '2.845');
INSERT INTO `volume` VALUES ('79', '5.2', '2.965');
INSERT INTO `volume` VALUES ('79', '5.4', '3.085');
INSERT INTO `volume` VALUES ('79', '5.6', '3.205');
INSERT INTO `volume` VALUES ('79', '5.8', '3.325');
INSERT INTO `volume` VALUES ('79', '6', '3.444');
INSERT INTO `volume` VALUES ('79', '6.2', '3.564');
INSERT INTO `volume` VALUES ('79', '6.4', '3.683');
INSERT INTO `volume` VALUES ('79', '6.6', '3.801');
INSERT INTO `volume` VALUES ('79', '6.8', '3.92');
INSERT INTO `volume` VALUES ('79', '7', '4.038');
INSERT INTO `volume` VALUES ('79', '7.2', '4.156');
INSERT INTO `volume` VALUES ('79', '7.4', '4.274');
INSERT INTO `volume` VALUES ('79', '7.6', '4.391');
INSERT INTO `volume` VALUES ('79', '7.8', '4.509');
INSERT INTO `volume` VALUES ('79', '8', '4.626');
INSERT INTO `volume` VALUES ('79', '8.2', '4.743');
INSERT INTO `volume` VALUES ('79', '8.4', '4.86');
INSERT INTO `volume` VALUES ('79', '8.6', '4.976');
INSERT INTO `volume` VALUES ('79', '8.8', '5.093');
INSERT INTO `volume` VALUES ('79', '9', '5.209');
INSERT INTO `volume` VALUES ('79', '9.2', '5.326');
INSERT INTO `volume` VALUES ('79', '9.4', '5.442');
INSERT INTO `volume` VALUES ('79', '9.6', '5.559');
INSERT INTO `volume` VALUES ('79', '9.8', '5.676');
INSERT INTO `volume` VALUES ('79', '10', '5.793');
INSERT INTO `volume` VALUES ('79', '10.2', '5.846');
INSERT INTO `volume` VALUES ('79', '10.4', '5.899');
INSERT INTO `volume` VALUES ('79', '10.6', '6.026');
INSERT INTO `volume` VALUES ('79', '10.8', '6.155');
INSERT INTO `volume` VALUES ('79', '11', '6.283');
INSERT INTO `volume` VALUES ('79', '11.2', '6.413');
INSERT INTO `volume` VALUES ('79', '11.4', '6.543');
INSERT INTO `volume` VALUES ('79', '11.6', '6.673');
INSERT INTO `volume` VALUES ('79', '11.8', '6.804');
INSERT INTO `volume` VALUES ('79', '12', '6.936');
INSERT INTO `volume` VALUES ('79', '12.2', '7.068');
INSERT INTO `volume` VALUES ('79', '12.4', '7.201');
INSERT INTO `volume` VALUES ('79', '12.6', '7.334');
INSERT INTO `volume` VALUES ('79', '12.8', '7.468');
INSERT INTO `volume` VALUES ('79', '13', '7.603');
INSERT INTO `volume` VALUES ('79', '13.2', '7.738');
INSERT INTO `volume` VALUES ('79', '13.4', '7.872');
INSERT INTO `volume` VALUES ('79', '13.6', '8.009');
INSERT INTO `volume` VALUES ('79', '13.8', '8.146');
INSERT INTO `volume` VALUES ('79', '14', '8.284');
INSERT INTO `volume` VALUES ('80', '2', '1.096');
INSERT INTO `volume` VALUES ('80', '2.2', '1.214');
INSERT INTO `volume` VALUES ('80', '2.4', '1.332');
INSERT INTO `volume` VALUES ('80', '2.6', '1.451');
INSERT INTO `volume` VALUES ('80', '2.8', '1.571');
INSERT INTO `volume` VALUES ('80', '3', '1.691');
INSERT INTO `volume` VALUES ('80', '3.2', '1.812');
INSERT INTO `volume` VALUES ('80', '3.4', '1.934');
INSERT INTO `volume` VALUES ('80', '3.6', '2.056');
INSERT INTO `volume` VALUES ('80', '3.8', '2.178');
INSERT INTO `volume` VALUES ('80', '4', '2.301');
INSERT INTO `volume` VALUES ('80', '4.2', '2.424');
INSERT INTO `volume` VALUES ('80', '4.4', '2.547');
INSERT INTO `volume` VALUES ('80', '4.6', '2.67');
INSERT INTO `volume` VALUES ('80', '4.8', '2.793');
INSERT INTO `volume` VALUES ('80', '5', '2.916');
INSERT INTO `volume` VALUES ('80', '5.2', '3.039');
INSERT INTO `volume` VALUES ('80', '5.4', '3.162');
INSERT INTO `volume` VALUES ('80', '5.6', '3.284');
INSERT INTO `volume` VALUES ('80', '5.8', '3.407');
INSERT INTO `volume` VALUES ('80', '6', '3.529');
INSERT INTO `volume` VALUES ('80', '6.2', '3.651');
INSERT INTO `volume` VALUES ('80', '6.4', '3.773');
INSERT INTO `volume` VALUES ('80', '6.6', '3.895');
INSERT INTO `volume` VALUES ('80', '6.8', '4.016');
INSERT INTO `volume` VALUES ('80', '7', '4.137');
INSERT INTO `volume` VALUES ('80', '7.2', '4.258');
INSERT INTO `volume` VALUES ('80', '7.4', '4.378');
INSERT INTO `volume` VALUES ('80', '7.6', '4.499');
INSERT INTO `volume` VALUES ('80', '7.8', '4.619');
INSERT INTO `volume` VALUES ('80', '8', '4.738');
INSERT INTO `volume` VALUES ('80', '8.2', '4.858');
INSERT INTO `volume` VALUES ('80', '8.4', '4.977');
INSERT INTO `volume` VALUES ('80', '8.6', '5.096');
INSERT INTO `volume` VALUES ('80', '8.8', '5.216');
INSERT INTO `volume` VALUES ('80', '9', '5.335');
INSERT INTO `volume` VALUES ('80', '9.2', '5.454');
INSERT INTO `volume` VALUES ('80', '9.4', '5.573');
INSERT INTO `volume` VALUES ('80', '9.6', '5.692');
INSERT INTO `volume` VALUES ('80', '9.8', '5.811');
INSERT INTO `volume` VALUES ('80', '10', '5.931');
INSERT INTO `volume` VALUES ('80', '10.2', '5.986');
INSERT INTO `volume` VALUES ('80', '10.4', '6.04');
INSERT INTO `volume` VALUES ('80', '10.6', '6.17');
INSERT INTO `volume` VALUES ('80', '10.8', '6.301');
INSERT INTO `volume` VALUES ('80', '11', '6.433');
INSERT INTO `volume` VALUES ('80', '11.2', '6.565');
INSERT INTO `volume` VALUES ('80', '11.4', '6.698');
INSERT INTO `volume` VALUES ('80', '11.6', '6.832');
INSERT INTO `volume` VALUES ('80', '11.8', '6.966');
INSERT INTO `volume` VALUES ('80', '12', '7.1');
INSERT INTO `volume` VALUES ('80', '12.2', '7.235');
INSERT INTO `volume` VALUES ('80', '12.4', '7.3741');
INSERT INTO `volume` VALUES ('80', '12.6', '7.507');
INSERT INTO `volume` VALUES ('80', '12.8', '7.644');
INSERT INTO `volume` VALUES ('80', '13', '7.783');
INSERT INTO `volume` VALUES ('80', '13.2', '7.92');
INSERT INTO `volume` VALUES ('80', '13.4', '8.058');
INSERT INTO `volume` VALUES ('80', '13.6', '8.197');
INSERT INTO `volume` VALUES ('80', '13.8', '8.337');
INSERT INTO `volume` VALUES ('80', '14', '8.477');
INSERT INTO `volume` VALUES ('81', '2', '1.124');
INSERT INTO `volume` VALUES ('81', '2.2', '1.244');
INSERT INTO `volume` VALUES ('81', '2.4', '1.365');
INSERT INTO `volume` VALUES ('81', '2.6', '1.487');
INSERT INTO `volume` VALUES ('81', '2.8', '1.61');
INSERT INTO `volume` VALUES ('81', '3', '1.733');
INSERT INTO `volume` VALUES ('81', '3.2', '1.857');
INSERT INTO `volume` VALUES ('81', '3.4', '1.982');
INSERT INTO `volume` VALUES ('81', '3.6', '2.107');
INSERT INTO `volume` VALUES ('81', '3.8', '2.232');
INSERT INTO `volume` VALUES ('81', '4', '2.358');
INSERT INTO `volume` VALUES ('81', '4.2', '2.483');
INSERT INTO `volume` VALUES ('81', '4.4', '2.609');
INSERT INTO `volume` VALUES ('81', '4.6', '2.735');
INSERT INTO `volume` VALUES ('81', '4.8', '2.861');
INSERT INTO `volume` VALUES ('81', '5', '2.987');
INSERT INTO `volume` VALUES ('81', '5.2', '3.113');
INSERT INTO `volume` VALUES ('81', '5.4', '3.239');
INSERT INTO `volume` VALUES ('81', '5.6', '3.365');
INSERT INTO `volume` VALUES ('81', '5.8', '3.49');
INSERT INTO `volume` VALUES ('81', '6', '3.615');
INSERT INTO `volume` VALUES ('81', '6.2', '3.74');
INSERT INTO `volume` VALUES ('81', '6.4', '3.865');
INSERT INTO `volume` VALUES ('81', '6.6', '3.989');
INSERT INTO `volume` VALUES ('81', '6.8', '4.113');
INSERT INTO `volume` VALUES ('81', '7', '4.237');
INSERT INTO `volume` VALUES ('81', '7.2', '4.361');
INSERT INTO `volume` VALUES ('81', '7.4', '4.484');
INSERT INTO `volume` VALUES ('81', '7.6', '4.607');
INSERT INTO `volume` VALUES ('81', '7.8', '4.73');
INSERT INTO `volume` VALUES ('81', '8', '4.852');
INSERT INTO `volume` VALUES ('81', '8.2', '4.974');
INSERT INTO `volume` VALUES ('81', '8.4', '5.096');
INSERT INTO `volume` VALUES ('81', '8.6', '5.218');
INSERT INTO `volume` VALUES ('81', '8.8', '5.34');
INSERT INTO `volume` VALUES ('81', '9', '5.462');
INSERT INTO `volume` VALUES ('81', '9.2', '5.583');
INSERT INTO `volume` VALUES ('81', '9.4', '5.705');
INSERT INTO `volume` VALUES ('81', '9.6', '5.827');
INSERT INTO `volume` VALUES ('81', '9.8', '5.949');
INSERT INTO `volume` VALUES ('81', '10', '6.071');
INSERT INTO `volume` VALUES ('81', '10.2', '6.127');
INSERT INTO `volume` VALUES ('81', '10.4', '6.182');
INSERT INTO `volume` VALUES ('81', '10.6', '6.316');
INSERT INTO `volume` VALUES ('81', '10.8', '6.45');
INSERT INTO `volume` VALUES ('81', '11', '6.584');
INSERT INTO `volume` VALUES ('81', '11.2', '6.72');
INSERT INTO `volume` VALUES ('81', '11.4', '6.855');
INSERT INTO `volume` VALUES ('81', '11.6', '6.992');
INSERT INTO `volume` VALUES ('81', '11.8', '7.129');
INSERT INTO `volume` VALUES ('81', '12', '7.266');
INSERT INTO `volume` VALUES ('81', '12.2', '7.404');
INSERT INTO `volume` VALUES ('81', '12.4', '7.543');
INSERT INTO `volume` VALUES ('81', '12.6', '7.6852');
INSERT INTO `volume` VALUES ('81', '12.8', '7.822');
INSERT INTO `volume` VALUES ('81', '13', '7.963');
INSERT INTO `volume` VALUES ('81', '13.2', '8.103');
INSERT INTO `volume` VALUES ('81', '13.4', '8.245');
INSERT INTO `volume` VALUES ('81', '13.6', '8.387');
INSERT INTO `volume` VALUES ('81', '13.8', '8.53');
INSERT INTO `volume` VALUES ('81', '14', '8.673');
INSERT INTO `volume` VALUES ('82', '2', '1.151');
INSERT INTO `volume` VALUES ('82', '2.2', '1.274');
INSERT INTO `volume` VALUES ('82', '2.4', '1.399');
INSERT INTO `volume` VALUES ('82', '2.6', '1.523');
INSERT INTO `volume` VALUES ('82', '2.8', '1.649');
INSERT INTO `volume` VALUES ('82', '3', '1.776');
INSERT INTO `volume` VALUES ('82', '3.2', '1.903');
INSERT INTO `volume` VALUES ('82', '3.4', '2.03');
INSERT INTO `volume` VALUES ('82', '3.6', '2.158');
INSERT INTO `volume` VALUES ('82', '3.8', '2.287');
INSERT INTO `volume` VALUES ('82', '4', '2.415');
INSERT INTO `volume` VALUES ('82', '4.2', '2.544');
INSERT INTO `volume` VALUES ('82', '4.4', '2.673');
INSERT INTO `volume` VALUES ('82', '4.6', '2.802');
INSERT INTO `volume` VALUES ('82', '4.8', '2.931');
INSERT INTO `volume` VALUES ('82', '5', '3.06');
INSERT INTO `volume` VALUES ('82', '5.2', '3.189');
INSERT INTO `volume` VALUES ('82', '5.4', '3.317');
INSERT INTO `volume` VALUES ('82', '5.6', '3.446');
INSERT INTO `volume` VALUES ('82', '5.8', '3.574');
INSERT INTO `volume` VALUES ('82', '6', '3.702');
INSERT INTO `volume` VALUES ('82', '6.2', '3.83');
INSERT INTO `volume` VALUES ('82', '6.4', '3.958');
INSERT INTO `volume` VALUES ('82', '6.6', '4.085');
INSERT INTO `volume` VALUES ('82', '6.8', '4.212');
INSERT INTO `volume` VALUES ('82', '7', '4.338');
INSERT INTO `volume` VALUES ('82', '7.2', '4.465');
INSERT INTO `volume` VALUES ('82', '7.4', '4.591');
INSERT INTO `volume` VALUES ('82', '7.6', '4.716');
INSERT INTO `volume` VALUES ('82', '7.8', '4.842');
INSERT INTO `volume` VALUES ('82', '8', '4.967');
INSERT INTO `volume` VALUES ('82', '8.2', '5.092');
INSERT INTO `volume` VALUES ('82', '8.4', '5.217');
INSERT INTO `volume` VALUES ('82', '8.6', '5.341');
INSERT INTO `volume` VALUES ('82', '8.8', '5.466');
INSERT INTO `volume` VALUES ('82', '9', '5.59');
INSERT INTO `volume` VALUES ('82', '9.2', '5.715');
INSERT INTO `volume` VALUES ('82', '9.4', '5.839');
INSERT INTO `volume` VALUES ('82', '9.6', '5.963');
INSERT INTO `volume` VALUES ('82', '9.8', '6.088');
INSERT INTO `volume` VALUES ('82', '10', '6.213');
INSERT INTO `volume` VALUES ('82', '10.2', '6.27');
INSERT INTO `volume` VALUES ('82', '10.4', '6.326');
INSERT INTO `volume` VALUES ('82', '10.6', '6.463');
INSERT INTO `volume` VALUES ('82', '10.8', '6.6');
INSERT INTO `volume` VALUES ('82', '11', '6.738');
INSERT INTO `volume` VALUES ('82', '11.2', '6.876');
INSERT INTO `volume` VALUES ('82', '11.4', '7.014');
INSERT INTO `volume` VALUES ('82', '11.6', '7.154');
INSERT INTO `volume` VALUES ('82', '11.8', '7.294');
INSERT INTO `volume` VALUES ('82', '12', '7.434');
INSERT INTO `volume` VALUES ('82', '12.2', '7.575');
INSERT INTO `volume` VALUES ('82', '12.4', '7.717');
INSERT INTO `volume` VALUES ('82', '12.6', '7.859');
INSERT INTO `volume` VALUES ('82', '12.8', '8.002');
INSERT INTO `volume` VALUES ('82', '13', '8.146');
INSERT INTO `volume` VALUES ('82', '13.2', '8.29');
INSERT INTO `volume` VALUES ('82', '13.4', '8.434');
INSERT INTO `volume` VALUES ('82', '13.6', '8.579');
INSERT INTO `volume` VALUES ('82', '13.8', '8.725');
INSERT INTO `volume` VALUES ('82', '14', '8.872');
INSERT INTO `volume` VALUES ('83', '2', '1.179');
INSERT INTO `volume` VALUES ('83', '2.2', '1.305');
INSERT INTO `volume` VALUES ('83', '2.4', '1.433');
INSERT INTO `volume` VALUES ('83', '2.6', '1.56');
INSERT INTO `volume` VALUES ('83', '2.8', '1.689');
INSERT INTO `volume` VALUES ('83', '3', '1.819');
INSERT INTO `volume` VALUES ('83', '3.2', '1.949');
INSERT INTO `volume` VALUES ('83', '3.4', '2.079');
INSERT INTO `volume` VALUES ('83', '3.6', '2.21');
INSERT INTO `volume` VALUES ('83', '3.8', '2.342');
INSERT INTO `volume` VALUES ('83', '4', '2.473');
INSERT INTO `volume` VALUES ('83', '4.2', '2.605');
INSERT INTO `volume` VALUES ('83', '4.4', '2.737');
INSERT INTO `volume` VALUES ('83', '4.6', '2.869');
INSERT INTO `volume` VALUES ('83', '4.8', '3.001');
INSERT INTO `volume` VALUES ('83', '5', '2.133');
INSERT INTO `volume` VALUES ('83', '5.2', '3.265');
INSERT INTO `volume` VALUES ('83', '5.4', '3.397');
INSERT INTO `volume` VALUES ('83', '5.6', '3.528');
INSERT INTO `volume` VALUES ('83', '5.8', '3.659');
INSERT INTO `volume` VALUES ('83', '6', '3.79');
INSERT INTO `volume` VALUES ('83', '6.2', '3.921');
INSERT INTO `volume` VALUES ('83', '6.4', '4.051');
INSERT INTO `volume` VALUES ('83', '6.6', '4.182');
INSERT INTO `volume` VALUES ('83', '6.8', '4.311');
INSERT INTO `volume` VALUES ('83', '7', '4.441');
INSERT INTO `volume` VALUES ('83', '7.2', '4.57');
INSERT INTO `volume` VALUES ('83', '7.4', '4.699');
INSERT INTO `volume` VALUES ('83', '7.6', '4.827');
INSERT INTO `volume` VALUES ('83', '7.8', '4.956');
INSERT INTO `volume` VALUES ('83', '8', '5.084');
INSERT INTO `volume` VALUES ('83', '8.2', '5.211');
INSERT INTO `volume` VALUES ('83', '8.4', '5.339');
INSERT INTO `volume` VALUES ('83', '8.6', '5.466');
INSERT INTO `volume` VALUES ('83', '8.8', '5.593');
INSERT INTO `volume` VALUES ('83', '9', '5.72');
INSERT INTO `volume` VALUES ('83', '9.2', '5.847');
INSERT INTO `volume` VALUES ('83', '9.4', '5.974');
INSERT INTO `volume` VALUES ('83', '9.6', '6.101');
INSERT INTO `volume` VALUES ('83', '9.8', '6.229');
INSERT INTO `volume` VALUES ('83', '10', '6.356');
INSERT INTO `volume` VALUES ('83', '10.2', '6.414');
INSERT INTO `volume` VALUES ('83', '10.4', '6.472');
INSERT INTO `volume` VALUES ('83', '10.6', '6.612');
INSERT INTO `volume` VALUES ('83', '10.8', '6.752');
INSERT INTO `volume` VALUES ('83', '11', '6.892');
INSERT INTO `volume` VALUES ('83', '11.2', '7.034');
INSERT INTO `volume` VALUES ('83', '11.4', '7.175');
INSERT INTO `volume` VALUES ('83', '11.6', '7.318');
INSERT INTO `volume` VALUES ('83', '11.8', '7.461');
INSERT INTO `volume` VALUES ('83', '12', '7.604');
INSERT INTO `volume` VALUES ('83', '12.2', '7.748');
INSERT INTO `volume` VALUES ('83', '12.4', '7.893');
INSERT INTO `volume` VALUES ('83', '12.6', '8.038');
INSERT INTO `volume` VALUES ('83', '12.8', '8.184');
INSERT INTO `volume` VALUES ('83', '13', '8.331');
INSERT INTO `volume` VALUES ('83', '13.2', '8.478');
INSERT INTO `volume` VALUES ('83', '13.4', '8.625');
INSERT INTO `volume` VALUES ('83', '13.6', '8.774');
INSERT INTO `volume` VALUES ('83', '13.8', '8.923');
INSERT INTO `volume` VALUES ('83', '14', '9.072');
INSERT INTO `volume` VALUES ('84', '2', '1.208');
INSERT INTO `volume` VALUES ('84', '2.2', '1.337');
INSERT INTO `volume` VALUES ('84', '2.4', '1.467');
INSERT INTO `volume` VALUES ('84', '2.6', '1.598');
INSERT INTO `volume` VALUES ('84', '2.8', '1.73');
INSERT INTO `volume` VALUES ('84', '3', '1.862');
INSERT INTO `volume` VALUES ('84', '3.2', '1.995');
INSERT INTO `volume` VALUES ('84', '3.4', '2.129');
INSERT INTO `volume` VALUES ('84', '3.6', '2.263');
INSERT INTO `volume` VALUES ('84', '3.8', '2.398');
INSERT INTO `volume` VALUES ('84', '4', '2.532');
INSERT INTO `volume` VALUES ('84', '4.2', '2.667');
INSERT INTO `volume` VALUES ('84', '4.4', '2.802');
INSERT INTO `volume` VALUES ('84', '4.6', '2.937');
INSERT INTO `volume` VALUES ('84', '4.8', '3.072');
INSERT INTO `volume` VALUES ('84', '5', '3.207');
INSERT INTO `volume` VALUES ('84', '5.2', '3.342');
INSERT INTO `volume` VALUES ('84', '5.4', '3.477');
INSERT INTO `volume` VALUES ('84', '5.6', '3.611');
INSERT INTO `volume` VALUES ('84', '5.8', '3.745');
INSERT INTO `volume` VALUES ('84', '6', '3.879');
INSERT INTO `volume` VALUES ('84', '6.2', '4.013');
INSERT INTO `volume` VALUES ('84', '6.4', '4.146');
INSERT INTO `volume` VALUES ('84', '6.6', '4.279');
INSERT INTO `volume` VALUES ('84', '6.8', '4.412');
INSERT INTO `volume` VALUES ('84', '7', '4.545');
INSERT INTO `volume` VALUES ('84', '7.2', '4.677');
INSERT INTO `volume` VALUES ('84', '7.4', '4.808');
INSERT INTO `volume` VALUES ('84', '7.6', '4.94');
INSERT INTO `volume` VALUES ('84', '7.8', '5.071');
INSERT INTO `volume` VALUES ('84', '8', '5.201');
INSERT INTO `volume` VALUES ('84', '8.2', '5.332');
INSERT INTO `volume` VALUES ('84', '8.4', '5.462');
INSERT INTO `volume` VALUES ('84', '8.6', '5.592');
INSERT INTO `volume` VALUES ('84', '8.8', '5.722');
INSERT INTO `volume` VALUES ('84', '9', '5.852');
INSERT INTO `volume` VALUES ('84', '9.2', '5.981');
INSERT INTO `volume` VALUES ('84', '9.4', '6.111');
INSERT INTO `volume` VALUES ('84', '9.6', '6.241');
INSERT INTO `volume` VALUES ('84', '9.8', '6.371');
INSERT INTO `volume` VALUES ('84', '10', '6.501');
INSERT INTO `volume` VALUES ('84', '10.2', '6.561');
INSERT INTO `volume` VALUES ('84', '10.4', '6.62');
INSERT INTO `volume` VALUES ('84', '10.6', '6.762');
INSERT INTO `volume` VALUES ('84', '10.8', '6.905');
INSERT INTO `volume` VALUES ('84', '11', '7.049');
INSERT INTO `volume` VALUES ('84', '11.2', '7.193');
INSERT INTO `volume` VALUES ('84', '11.4', '7.338');
INSERT INTO `volume` VALUES ('84', '11.6', '7.483');
INSERT INTO `volume` VALUES ('84', '11.8', '7.627');
INSERT INTO `volume` VALUES ('84', '12', '7.776');
INSERT INTO `volume` VALUES ('84', '12.2', '7.923');
INSERT INTO `volume` VALUES ('84', '12.4', '8.071');
INSERT INTO `volume` VALUES ('84', '12.6', '8.219');
INSERT INTO `volume` VALUES ('84', '12.8', '8.368');
INSERT INTO `volume` VALUES ('84', '13', '8.518');
INSERT INTO `volume` VALUES ('84', '13.2', '8.668');
INSERT INTO `volume` VALUES ('84', '13.4', '8.819');
INSERT INTO `volume` VALUES ('84', '13.6', '8.97');
INSERT INTO `volume` VALUES ('84', '13.8', '9.122');
INSERT INTO `volume` VALUES ('84', '14', '9.275');
INSERT INTO `volume` VALUES ('85', '2', '1.236');
INSERT INTO `volume` VALUES ('85', '2.2', '1.369');
INSERT INTO `volume` VALUES ('85', '2.4', '1.502');
INSERT INTO `volume` VALUES ('85', '2.6', '1.636');
INSERT INTO `volume` VALUES ('85', '2.8', '1.771');
INSERT INTO `volume` VALUES ('85', '3', '1.906');
INSERT INTO `volume` VALUES ('85', '3.2', '2.043');
INSERT INTO `volume` VALUES ('85', '3.4', '2.179');
INSERT INTO `volume` VALUES ('85', '3.6', '2.316');
INSERT INTO `volume` VALUES ('85', '3.8', '2.454');
INSERT INTO `volume` VALUES ('85', '4', '2.592');
INSERT INTO `volume` VALUES ('85', '4.2', '2.73');
INSERT INTO `volume` VALUES ('85', '4.4', '2.868');
INSERT INTO `volume` VALUES ('85', '4.6', '3.006');
INSERT INTO `volume` VALUES ('85', '4.8', '3.144');
INSERT INTO `volume` VALUES ('85', '5', '3.282');
INSERT INTO `volume` VALUES ('85', '5.2', '3.42');
INSERT INTO `volume` VALUES ('85', '5.4', '3.558');
INSERT INTO `volume` VALUES ('85', '5.6', '3.695');
INSERT INTO `volume` VALUES ('85', '5.8', '3.833');
INSERT INTO `volume` VALUES ('85', '6', '3.97');
INSERT INTO `volume` VALUES ('85', '6.2', '4.106');
INSERT INTO `volume` VALUES ('85', '6.4', '4.243');
INSERT INTO `volume` VALUES ('85', '6.6', '4.378');
INSERT INTO `volume` VALUES ('85', '6.8', '4.514');
INSERT INTO `volume` VALUES ('85', '7', '4.649');
INSERT INTO `volume` VALUES ('85', '7.2', '4.784');
INSERT INTO `volume` VALUES ('85', '7.4', '4.919');
INSERT INTO `volume` VALUES ('85', '7.6', '5.053');
INSERT INTO `volume` VALUES ('85', '7.8', '5.187');
INSERT INTO `volume` VALUES ('85', '8', '5.32');
INSERT INTO `volume` VALUES ('85', '8.2', '5.454');
INSERT INTO `volume` VALUES ('85', '8.4', '5.587');
INSERT INTO `volume` VALUES ('85', '8.6', '5.72');
INSERT INTO `volume` VALUES ('85', '8.8', '5.852');
INSERT INTO `volume` VALUES ('85', '9', '5.985');
INSERT INTO `volume` VALUES ('85', '9.2', '6.117');
INSERT INTO `volume` VALUES ('85', '9.4', '6.25');
INSERT INTO `volume` VALUES ('85', '9.6', '6.382');
INSERT INTO `volume` VALUES ('85', '9.8', '6.515');
INSERT INTO `volume` VALUES ('85', '10', '6.648');
INSERT INTO `volume` VALUES ('85', '10.2', '6.709');
INSERT INTO `volume` VALUES ('85', '10.4', '6.769');
INSERT INTO `volume` VALUES ('85', '10.6', '6.915');
INSERT INTO `volume` VALUES ('85', '10.8', '7.061');
INSERT INTO `volume` VALUES ('85', '11', '7.207');
INSERT INTO `volume` VALUES ('85', '11.2', '7.355');
INSERT INTO `volume` VALUES ('85', '11.4', '7.503');
INSERT INTO `volume` VALUES ('85', '11.6', '7.651');
INSERT INTO `volume` VALUES ('85', '11.8', '7.8');
INSERT INTO `volume` VALUES ('85', '12', '7.95');
INSERT INTO `volume` VALUES ('85', '12.2', '8.1');
INSERT INTO `volume` VALUES ('85', '12.4', '8.251');
INSERT INTO `volume` VALUES ('85', '12.6', '8.402');
INSERT INTO `volume` VALUES ('85', '12.8', '8.554');
INSERT INTO `volume` VALUES ('85', '13', '8.707');
INSERT INTO `volume` VALUES ('85', '13.2', '8.86');
INSERT INTO `volume` VALUES ('85', '13.4', '9.014');
INSERT INTO `volume` VALUES ('85', '13.6', '9.169');
INSERT INTO `volume` VALUES ('85', '13.8', '9.324');
INSERT INTO `volume` VALUES ('85', '14', '9.48');
INSERT INTO `volume` VALUES ('86', '2', '1.265');
INSERT INTO `volume` VALUES ('86', '2.2', '1.401');
INSERT INTO `volume` VALUES ('86', '2.4', '1.537');
INSERT INTO `volume` VALUES ('86', '2.6', '1.674');
INSERT INTO `volume` VALUES ('86', '2.8', '1.812');
INSERT INTO `volume` VALUES ('86', '3', '1.951');
INSERT INTO `volume` VALUES ('86', '3.2', '2.09');
INSERT INTO `volume` VALUES ('86', '3.4', '2.23');
INSERT INTO `volume` VALUES ('86', '3.6', '2.371');
INSERT INTO `volume` VALUES ('86', '3.8', '2.511');
INSERT INTO `volume` VALUES ('86', '4', '2.652');
INSERT INTO `volume` VALUES ('86', '4.2', '2.793');
INSERT INTO `volume` VALUES ('86', '4.4', '2.934');
INSERT INTO `volume` VALUES ('86', '4.6', '3.076');
INSERT INTO `volume` VALUES ('86', '4.8', '3.217');
INSERT INTO `volume` VALUES ('86', '5', '3.358');
INSERT INTO `volume` VALUES ('86', '5.2', '3.499');
INSERT INTO `volume` VALUES ('86', '5.4', '3.64');
INSERT INTO `volume` VALUES ('86', '5.6', '3.78');
INSERT INTO `volume` VALUES ('86', '5.8', '3.921');
INSERT INTO `volume` VALUES ('86', '6', '4.061');
INSERT INTO `volume` VALUES ('86', '6.2', '4.2');
INSERT INTO `volume` VALUES ('86', '6.4', '4.34');
INSERT INTO `volume` VALUES ('86', '6.6', '4.479');
INSERT INTO `volume` VALUES ('86', '6.8', '4.617');
INSERT INTO `volume` VALUES ('86', '7', '4.755');
INSERT INTO `volume` VALUES ('86', '7.2', '4.893');
INSERT INTO `volume` VALUES ('86', '7.4', '5.031');
INSERT INTO `volume` VALUES ('86', '7.6', '5.168');
INSERT INTO `volume` VALUES ('86', '7.8', '5.304');
INSERT INTO `volume` VALUES ('86', '8', '5.441');
INSERT INTO `volume` VALUES ('86', '8.2', '5.577');
INSERT INTO `volume` VALUES ('86', '8.4', '5.713');
INSERT INTO `volume` VALUES ('86', '8.6', '5.848');
INSERT INTO `volume` VALUES ('86', '8.8', '5.984');
INSERT INTO `volume` VALUES ('86', '9', '6.119');
INSERT INTO `volume` VALUES ('86', '9.2', '6.254');
INSERT INTO `volume` VALUES ('86', '9.4', '6.39');
INSERT INTO `volume` VALUES ('86', '9.6', '6.525');
INSERT INTO `volume` VALUES ('86', '9.8', '6.66');
INSERT INTO `volume` VALUES ('86', '10', '6.796');
INSERT INTO `volume` VALUES ('86', '10.2', '6.858');
INSERT INTO `volume` VALUES ('86', '10.4', '6.92');
INSERT INTO `volume` VALUES ('86', '10.6', '7.069');
INSERT INTO `volume` VALUES ('86', '10.8', '7.218');
INSERT INTO `volume` VALUES ('86', '11', '7.368');
INSERT INTO `volume` VALUES ('86', '11.2', '7.518');
INSERT INTO `volume` VALUES ('86', '11.4', '7.669');
INSERT INTO `volume` VALUES ('86', '11.6', '7.82');
INSERT INTO `volume` VALUES ('86', '11.8', '7.973');
INSERT INTO `volume` VALUES ('86', '12', '8.125');
INSERT INTO `volume` VALUES ('86', '12.2', '8.279');
INSERT INTO `volume` VALUES ('86', '12.4', '8.433');
INSERT INTO `volume` VALUES ('86', '12.6', '8.587');
INSERT INTO `volume` VALUES ('86', '12.8', '8.743');
INSERT INTO `volume` VALUES ('86', '13', '8.899');
INSERT INTO `volume` VALUES ('86', '13.2', '9.055');
INSERT INTO `volume` VALUES ('86', '13.4', '9.212');
INSERT INTO `volume` VALUES ('86', '13.6', '9.37');
INSERT INTO `volume` VALUES ('86', '13.8', '9.528');
INSERT INTO `volume` VALUES ('86', '14', '9.687');
INSERT INTO `volume` VALUES ('87', '2', '1.295');
INSERT INTO `volume` VALUES ('87', '2.2', '1.433');
INSERT INTO `volume` VALUES ('87', '2.4', '1.573');
INSERT INTO `volume` VALUES ('87', '2.6', '1.713');
INSERT INTO `volume` VALUES ('87', '2.8', '1.854');
INSERT INTO `volume` VALUES ('87', '3', '1.996');
INSERT INTO `volume` VALUES ('87', '3.2', '2.139');
INSERT INTO `volume` VALUES ('87', '3.4', '2.282');
INSERT INTO `volume` VALUES ('87', '3.6', '2.425');
INSERT INTO `volume` VALUES ('87', '3.8', '2.569');
INSERT INTO `volume` VALUES ('87', '4', '2.713');
INSERT INTO `volume` VALUES ('87', '4.2', '2.857');
INSERT INTO `volume` VALUES ('87', '4.4', '3.002');
INSERT INTO `volume` VALUES ('87', '4.6', '3.146');
INSERT INTO `volume` VALUES ('87', '4.8', '3.29');
INSERT INTO `volume` VALUES ('87', '5', '3.435');
INSERT INTO `volume` VALUES ('87', '5.2', '3.579');
INSERT INTO `volume` VALUES ('87', '5.4', '3.723');
INSERT INTO `volume` VALUES ('87', '5.6', '3.866');
INSERT INTO `volume` VALUES ('87', '5.8', '4.01');
INSERT INTO `volume` VALUES ('87', '6', '4.153');
INSERT INTO `volume` VALUES ('87', '6.2', '4.296');
INSERT INTO `volume` VALUES ('87', '6.4', '4.438');
INSERT INTO `volume` VALUES ('87', '6.6', '4.58');
INSERT INTO `volume` VALUES ('87', '6.8', '4.721');
INSERT INTO `volume` VALUES ('87', '7', '4.863');
INSERT INTO `volume` VALUES ('87', '7.2', '5.003');
INSERT INTO `volume` VALUES ('87', '7.4', '5.144');
INSERT INTO `volume` VALUES ('87', '7.6', '5.284');
INSERT INTO `volume` VALUES ('87', '7.8', '5.423');
INSERT INTO `volume` VALUES ('87', '8', '5.563');
INSERT INTO `volume` VALUES ('87', '8.2', '5.702');
INSERT INTO `volume` VALUES ('87', '8.4', '5.84');
INSERT INTO `volume` VALUES ('87', '8.6', '5.979');
INSERT INTO `volume` VALUES ('87', '8.8', '6.117');
INSERT INTO `volume` VALUES ('87', '9', '6.255');
INSERT INTO `volume` VALUES ('87', '9.2', '6.393');
INSERT INTO `volume` VALUES ('87', '9.4', '6.531');
INSERT INTO `volume` VALUES ('87', '9.6', '6.669');
INSERT INTO `volume` VALUES ('87', '9.8', '6.807');
INSERT INTO `volume` VALUES ('87', '10', '6.946');
INSERT INTO `volume` VALUES ('87', '10.2', '7.01');
INSERT INTO `volume` VALUES ('87', '10.4', '7.073');
INSERT INTO `volume` VALUES ('87', '10.6', '7.224');
INSERT INTO `volume` VALUES ('87', '10.8', '7.377');
INSERT INTO `volume` VALUES ('87', '11', '7.53');
INSERT INTO `volume` VALUES ('87', '11.2', '7.683');
INSERT INTO `volume` VALUES ('87', '11.4', '7.837');
INSERT INTO `volume` VALUES ('87', '11.6', '7.992');
INSERT INTO `volume` VALUES ('87', '11.8', '8.147');
INSERT INTO `volume` VALUES ('87', '12', '8.303');
INSERT INTO `volume` VALUES ('87', '12.2', '8.46');
INSERT INTO `volume` VALUES ('87', '12.4', '8.617');
INSERT INTO `volume` VALUES ('87', '12.8', '8.933');
INSERT INTO `volume` VALUES ('87', '13', '9.092');
INSERT INTO `volume` VALUES ('87', '13.2', '9.252');
INSERT INTO `volume` VALUES ('87', '13.4', '9.412');
INSERT INTO `volume` VALUES ('87', '13.6', '9.573');
INSERT INTO `volume` VALUES ('87', '13.8', '9.734');
INSERT INTO `volume` VALUES ('87', '14', '9.896');
INSERT INTO `volume` VALUES ('88', '2', '1.325');
INSERT INTO `volume` VALUES ('88', '2.2', '1.466');
INSERT INTO `volume` VALUES ('88', '2.4', '1.609');
INSERT INTO `volume` VALUES ('88', '2.6', '1.752');
INSERT INTO `volume` VALUES ('88', '2.8', '1.896');
INSERT INTO `volume` VALUES ('88', '3', '2.042');
INSERT INTO `volume` VALUES ('88', '3.2', '2.187');
INSERT INTO `volume` VALUES ('88', '3.4', '2.334');
INSERT INTO `volume` VALUES ('88', '3.6', '2.48');
INSERT INTO `volume` VALUES ('88', '3.8', '2.627');
INSERT INTO `volume` VALUES ('88', '4', '2.775');
INSERT INTO `volume` VALUES ('88', '4.2', '2.992');
INSERT INTO `volume` VALUES ('88', '4.4', '3.07');
INSERT INTO `volume` VALUES ('88', '4.6', '3.217');
INSERT INTO `volume` VALUES ('88', '4.8', '3.365');
INSERT INTO `volume` VALUES ('88', '5', '3.512');
INSERT INTO `volume` VALUES ('88', '5.2', '3.66');
INSERT INTO `volume` VALUES ('88', '5.4', '3.807');
INSERT INTO `volume` VALUES ('88', '5.6', '3.953');
INSERT INTO `volume` VALUES ('88', '5.8', '4.1');
INSERT INTO `volume` VALUES ('88', '6', '4.246');
INSERT INTO `volume` VALUES ('88', '6.2', '4.392');
INSERT INTO `volume` VALUES ('88', '6.4', '4.537');
INSERT INTO `volume` VALUES ('88', '6.6', '4.682');
INSERT INTO `volume` VALUES ('88', '6.8', '4.827');
INSERT INTO `volume` VALUES ('88', '7', '4.971');
INSERT INTO `volume` VALUES ('88', '7.2', '5.115');
INSERT INTO `volume` VALUES ('88', '7.4', '5.258');
INSERT INTO `volume` VALUES ('88', '7.6', '5.401');
INSERT INTO `volume` VALUES ('88', '7.8', '5.544');
INSERT INTO `volume` VALUES ('88', '8', '5.686');
INSERT INTO `volume` VALUES ('88', '8.2', '5.828');
INSERT INTO `volume` VALUES ('88', '8.4', '5.969');
INSERT INTO `volume` VALUES ('88', '8.6', '6.111');
INSERT INTO `volume` VALUES ('88', '8.8', '6.252');
INSERT INTO `volume` VALUES ('88', '9', '6.393');
INSERT INTO `volume` VALUES ('88', '9.2', '6.534');
INSERT INTO `volume` VALUES ('88', '9.4', '6.674');
INSERT INTO `volume` VALUES ('88', '9.6', '6.815');
INSERT INTO `volume` VALUES ('88', '9.8', '6.956');
INSERT INTO `volume` VALUES ('88', '10', '7.097');
INSERT INTO `volume` VALUES ('88', '10.2', '7.162');
INSERT INTO `volume` VALUES ('88', '10.4', '7.227');
INSERT INTO `volume` VALUES ('88', '10.6', '7.382');
INSERT INTO `volume` VALUES ('88', '10.8', '7.537');
INSERT INTO `volume` VALUES ('88', '11', '7.693');
INSERT INTO `volume` VALUES ('88', '11.2', '7.85');
INSERT INTO `volume` VALUES ('88', '11.4', '8.007');
INSERT INTO `volume` VALUES ('88', '11.6', '8.165');
INSERT INTO `volume` VALUES ('88', '11.8', '8.323');
INSERT INTO `volume` VALUES ('88', '12', '8.483');
INSERT INTO `volume` VALUES ('88', '12.2', '8.642');
INSERT INTO `volume` VALUES ('88', '12.4', '8.803');
INSERT INTO `volume` VALUES ('88', '12.6', '8.964');
INSERT INTO `volume` VALUES ('88', '12.8', '9.125');
INSERT INTO `volume` VALUES ('88', '13', '9.287');
INSERT INTO `volume` VALUES ('88', '13.2', '9.45');
INSERT INTO `volume` VALUES ('88', '13.4', '9.614');
INSERT INTO `volume` VALUES ('88', '13.6', '9.778');
INSERT INTO `volume` VALUES ('88', '13.8', '9.943');
INSERT INTO `volume` VALUES ('88', '14', '10.108');
INSERT INTO `volume` VALUES ('89', '2', '1.55');
INSERT INTO `volume` VALUES ('89', '2.2', '1.499');
INSERT INTO `volume` VALUES ('89', '2.4', '1.645');
INSERT INTO `volume` VALUES ('89', '2.6', '1.792');
INSERT INTO `volume` VALUES ('89', '2.8', '1.939');
INSERT INTO `volume` VALUES ('89', '3', '2.088');
INSERT INTO `volume` VALUES ('89', '3.2', '2.237');
INSERT INTO `volume` VALUES ('89', '3.4', '2.386');
INSERT INTO `volume` VALUES ('89', '3.6', '2.536');
INSERT INTO `volume` VALUES ('89', '3.8', '2.687');
INSERT INTO `volume` VALUES ('89', '4', '2.837');
INSERT INTO `volume` VALUES ('89', '4.2', '2.988');
INSERT INTO `volume` VALUES ('89', '4.4', '3.139');
INSERT INTO `volume` VALUES ('89', '4.6', '3.289');
INSERT INTO `volume` VALUES ('89', '4.8', '3.44');
INSERT INTO `volume` VALUES ('89', '5', '3.591');
INSERT INTO `volume` VALUES ('89', '5.2', '3.741');
INSERT INTO `volume` VALUES ('89', '5.4', '3.892');
INSERT INTO `volume` VALUES ('89', '5.6', '4.041');
INSERT INTO `volume` VALUES ('89', '5.8', '4.191');
INSERT INTO `volume` VALUES ('89', '6', '4.34');
INSERT INTO `volume` VALUES ('89', '6.2', '4.489');
INSERT INTO `volume` VALUES ('89', '6.4', '4.638');
INSERT INTO `volume` VALUES ('89', '6.6', '4.786');
INSERT INTO `volume` VALUES ('89', '6.8', '4.934');
INSERT INTO `volume` VALUES ('89', '7', '5.081');
INSERT INTO `volume` VALUES ('89', '7.2', '5.228');
INSERT INTO `volume` VALUES ('89', '7.4', '5.374');
INSERT INTO `volume` VALUES ('89', '7.6', '5.52');
INSERT INTO `volume` VALUES ('89', '7.8', '5.665');
INSERT INTO `volume` VALUES ('89', '8', '5.81');
INSERT INTO `volume` VALUES ('89', '8.2', '5.955');
INSERT INTO `volume` VALUES ('89', '8.4', '6.1');
INSERT INTO `volume` VALUES ('89', '8.6', '6.244');
INSERT INTO `volume` VALUES ('89', '8.8', '6.388');
INSERT INTO `volume` VALUES ('89', '9', '6.532');
INSERT INTO `volume` VALUES ('89', '9.2', '6.675');
INSERT INTO `volume` VALUES ('89', '9.4', '6.819');
INSERT INTO `volume` VALUES ('89', '9.6', '6.963');
INSERT INTO `volume` VALUES ('89', '9.8', '7.106');
INSERT INTO `volume` VALUES ('89', '10', '7.25');
INSERT INTO `volume` VALUES ('89', '10.2', '7.317');
INSERT INTO `volume` VALUES ('89', '10.4', '7.383');
INSERT INTO `volume` VALUES ('89', '10.6', '7.541');
INSERT INTO `volume` VALUES ('89', '10.8', '7.699');
INSERT INTO `volume` VALUES ('89', '11', '7.859');
INSERT INTO `volume` VALUES ('89', '11.2', '8.018');
INSERT INTO `volume` VALUES ('89', '11.4', '8.179');
INSERT INTO `volume` VALUES ('89', '11.6', '8.34');
INSERT INTO `volume` VALUES ('89', '11.8', '8.502');
INSERT INTO `volume` VALUES ('89', '12', '8.664');
INSERT INTO `volume` VALUES ('89', '12.2', '8.827');
INSERT INTO `volume` VALUES ('89', '12.4', '8.991');
INSERT INTO `volume` VALUES ('89', '12.6', '9.155');
INSERT INTO `volume` VALUES ('89', '12.8', '9.32');
INSERT INTO `volume` VALUES ('89', '13', '9.485');
INSERT INTO `volume` VALUES ('89', '13.2', '9.651');
INSERT INTO `volume` VALUES ('89', '13.4', '9.818');
INSERT INTO `volume` VALUES ('89', '13.6', '9.985');
INSERT INTO `volume` VALUES ('89', '13.8', '10.153');
INSERT INTO `volume` VALUES ('89', '14', '10.322');
INSERT INTO `volume` VALUES ('90', '2', '1.385');
INSERT INTO `volume` VALUES ('90', '2.2', '1.533');
INSERT INTO `volume` VALUES ('90', '2.4', '1.682');
INSERT INTO `volume` VALUES ('90', '2.6', '1.832');
INSERT INTO `volume` VALUES ('90', '2.8', '1.983');
INSERT INTO `volume` VALUES ('90', '3', '2.134');
INSERT INTO `volume` VALUES ('90', '3.2', '2.287');
INSERT INTO `volume` VALUES ('90', '3.4', '2.439');
INSERT INTO `volume` VALUES ('90', '3.6', '2.593');
INSERT INTO `volume` VALUES ('90', '3.8', '2.746');
INSERT INTO `volume` VALUES ('90', '4', '2.9');
INSERT INTO `volume` VALUES ('90', '4.2', '3.054');
INSERT INTO `volume` VALUES ('90', '4.4', '3.208');
INSERT INTO `volume` VALUES ('90', '4.6', '3.362');
INSERT INTO `volume` VALUES ('90', '4.8', '3.516');
INSERT INTO `volume` VALUES ('90', '5', '3.67');
INSERT INTO `volume` VALUES ('90', '5.2', '3.824');
INSERT INTO `volume` VALUES ('90', '5.4', '3.977');
INSERT INTO `volume` VALUES ('90', '5.6', '4.13');
INSERT INTO `volume` VALUES ('90', '5.8', '4.283');
INSERT INTO `volume` VALUES ('90', '6', '4.436');
INSERT INTO `volume` VALUES ('90', '6.2', '4.588');
INSERT INTO `volume` VALUES ('90', '6.4', '4.739');
INSERT INTO `volume` VALUES ('90', '6.6', '4.891');
INSERT INTO `volume` VALUES ('90', '6.8', '5.041');
INSERT INTO `volume` VALUES ('90', '7', '8.192');
INSERT INTO `volume` VALUES ('90', '7.2', '5.341');
INSERT INTO `volume` VALUES ('90', '7.4', '5.491');
INSERT INTO `volume` VALUES ('90', '7.6', '5.64');
INSERT INTO `volume` VALUES ('90', '7.8', '5.788');
INSERT INTO `volume` VALUES ('90', '8', '5.936');
INSERT INTO `volume` VALUES ('90', '8.2', '6.084');
INSERT INTO `volume` VALUES ('90', '8.4', '6.231');
INSERT INTO `volume` VALUES ('90', '8.6', '6.379');
INSERT INTO `volume` VALUES ('90', '8.8', '6.525');
INSERT INTO `volume` VALUES ('90', '9', '6.672');
INSERT INTO `volume` VALUES ('90', '9.2', '6.819');
INSERT INTO `volume` VALUES ('90', '9.4', '6.965');
INSERT INTO `volume` VALUES ('90', '9.6', '7.112');
INSERT INTO `volume` VALUES ('90', '9.8', '7.258');
INSERT INTO `volume` VALUES ('90', '10', '7.405');
INSERT INTO `volume` VALUES ('90', '10.2', '7.473');
INSERT INTO `volume` VALUES ('90', '10.4', '7.54');
INSERT INTO `volume` VALUES ('90', '10.6', '7.702');
INSERT INTO `volume` VALUES ('90', '10.8', '7.863');
INSERT INTO `volume` VALUES ('90', '11', '8.026');
INSERT INTO `volume` VALUES ('90', '11.2', '8.189');
INSERT INTO `volume` VALUES ('90', '11.4', '8.353');
INSERT INTO `volume` VALUES ('90', '11.6', '8.517');
INSERT INTO `volume` VALUES ('90', '11.8', '8.682');
INSERT INTO `volume` VALUES ('90', '12', '8.847');
INSERT INTO `volume` VALUES ('90', '12.2', '9.014');
INSERT INTO `volume` VALUES ('90', '12.4', '9.18');
INSERT INTO `volume` VALUES ('90', '12.6', '9.348');
INSERT INTO `volume` VALUES ('90', '12.8', '9.516');
INSERT INTO `volume` VALUES ('90', '13', '9.685');
INSERT INTO `volume` VALUES ('90', '13.2', '9.854');
INSERT INTO `volume` VALUES ('90', '13.4', '10.024');
INSERT INTO `volume` VALUES ('90', '13.6', '10.195');
INSERT INTO `volume` VALUES ('90', '13.8', '10.366');
INSERT INTO `volume` VALUES ('90', '14', '10.538');
INSERT INTO `volume` VALUES ('91', '2', '1.416');
INSERT INTO `volume` VALUES ('91', '2.2', '1.567');
INSERT INTO `volume` VALUES ('91', '2.4', '1.719');
INSERT INTO `volume` VALUES ('91', '2.6', '1.872');
INSERT INTO `volume` VALUES ('91', '2.8', '2.026');
INSERT INTO `volume` VALUES ('91', '3', '2.181');
INSERT INTO `volume` VALUES ('91', '3.2', '2.337');
INSERT INTO `volume` VALUES ('91', '3.4', '2.493');
INSERT INTO `volume` VALUES ('91', '3.6', '2.65');
INSERT INTO `volume` VALUES ('91', '3.8', '2.807');
INSERT INTO `volume` VALUES ('91', '4', '2.964');
INSERT INTO `volume` VALUES ('91', '4.2', '3.121');
INSERT INTO `volume` VALUES ('91', '4.4', '3.279');
INSERT INTO `volume` VALUES ('91', '4.6', '3.436');
INSERT INTO `volume` VALUES ('91', '4.8', '3.593');
INSERT INTO `volume` VALUES ('91', '5', '3.75');
INSERT INTO `volume` VALUES ('91', '5.2', '3.907');
INSERT INTO `volume` VALUES ('91', '5.4', '4.064');
INSERT INTO `volume` VALUES ('91', '5.6', '4.22');
INSERT INTO `volume` VALUES ('91', '5.8', '4.376');
INSERT INTO `volume` VALUES ('91', '6', '4.532');
INSERT INTO `volume` VALUES ('91', '6.2', '4.687');
INSERT INTO `volume` VALUES ('91', '6.4', '4.842');
INSERT INTO `volume` VALUES ('91', '6.6', '4.996');
INSERT INTO `volume` VALUES ('91', '6.8', '5.15');
INSERT INTO `volume` VALUES ('91', '7', '5.304');
INSERT INTO `volume` VALUES ('91', '7.2', '5.456');
INSERT INTO `volume` VALUES ('91', '7.4', '5.609');
INSERT INTO `volume` VALUES ('91', '7.6', '5.761');
INSERT INTO `volume` VALUES ('91', '7.8', '5.912');
INSERT INTO `volume` VALUES ('91', '8', '6.063');
INSERT INTO `volume` VALUES ('91', '8.2', '6.214');
INSERT INTO `volume` VALUES ('91', '8.4', '6.365');
INSERT INTO `volume` VALUES ('91', '8.6', '6.515');
INSERT INTO `volume` VALUES ('91', '8.8', '6.664');
INSERT INTO `volume` VALUES ('91', '9', '6.814');
INSERT INTO `volume` VALUES ('91', '9.2', '6.964');
INSERT INTO `volume` VALUES ('91', '9.4', '7.113');
INSERT INTO `volume` VALUES ('91', '9.6', '7.262');
INSERT INTO `volume` VALUES ('91', '9.8', '7.412');
INSERT INTO `volume` VALUES ('91', '10', '7.561');
INSERT INTO `volume` VALUES ('91', '10.2', null);
INSERT INTO `volume` VALUES ('91', '10.4', null);
INSERT INTO `volume` VALUES ('91', '10.6', null);
INSERT INTO `volume` VALUES ('91', '10.8', null);
INSERT INTO `volume` VALUES ('91', '11', null);
INSERT INTO `volume` VALUES ('91', '11.2', null);
INSERT INTO `volume` VALUES ('91', '11.4', null);
INSERT INTO `volume` VALUES ('91', '11.6', null);
INSERT INTO `volume` VALUES ('91', '11.8', null);
INSERT INTO `volume` VALUES ('91', '12', null);
INSERT INTO `volume` VALUES ('91', '12.2', null);
INSERT INTO `volume` VALUES ('91', '12.4', null);
INSERT INTO `volume` VALUES ('91', '12.6', null);
INSERT INTO `volume` VALUES ('91', '12.8', null);
INSERT INTO `volume` VALUES ('91', '13', null);
INSERT INTO `volume` VALUES ('91', '13.2', null);
INSERT INTO `volume` VALUES ('91', '13.4', null);
INSERT INTO `volume` VALUES ('91', '13.6', null);
INSERT INTO `volume` VALUES ('91', '13.8', null);
INSERT INTO `volume` VALUES ('91', '14', null);
INSERT INTO `volume` VALUES ('92', '2', '1.447');
INSERT INTO `volume` VALUES ('92', '2.2', '1.601');
INSERT INTO `volume` VALUES ('92', '2.4', '1.757');
INSERT INTO `volume` VALUES ('92', '2.6', '1.913');
INSERT INTO `volume` VALUES ('92', '2.8', '2.071');
INSERT INTO `volume` VALUES ('92', '3', '2.229');
INSERT INTO `volume` VALUES ('92', '3.2', '2.388');
INSERT INTO `volume` VALUES ('92', '3.4', '2.548');
INSERT INTO `volume` VALUES ('92', '3.6', '2.707');
INSERT INTO `volume` VALUES ('92', '3.8', '2.868');
INSERT INTO `volume` VALUES ('92', '4', '3.028');
INSERT INTO `volume` VALUES ('92', '4.2', '3.189');
INSERT INTO `volume` VALUES ('92', '4.4', '3.35');
INSERT INTO `volume` VALUES ('92', '4.6', '3.51');
INSERT INTO `volume` VALUES ('92', '4.8', '3.671');
INSERT INTO `volume` VALUES ('92', '5', '3.831');
INSERT INTO `volume` VALUES ('92', '5.2', '3.992');
INSERT INTO `volume` VALUES ('92', '5.4', '4.152');
INSERT INTO `volume` VALUES ('92', '5.6', '4.311');
INSERT INTO `volume` VALUES ('92', '5.8', '4.471');
INSERT INTO `volume` VALUES ('92', '6', '4.629');
INSERT INTO `volume` VALUES ('92', '6.2', '4.788');
INSERT INTO `volume` VALUES ('92', '6.4', '4.946');
INSERT INTO `volume` VALUES ('92', '6.6', '5.103');
INSERT INTO `volume` VALUES ('92', '6.8', '5.26');
INSERT INTO `volume` VALUES ('92', '7', '5.417');
INSERT INTO `volume` VALUES ('92', '7.2', '5.573');
INSERT INTO `volume` VALUES ('92', '7.4', '5.728');
INSERT INTO `volume` VALUES ('92', '7.6', '5.883');
INSERT INTO `volume` VALUES ('92', '7.8', '6.038');
INSERT INTO `volume` VALUES ('92', '8', '6.192');
INSERT INTO `volume` VALUES ('92', '8.2', '6.346');
INSERT INTO `volume` VALUES ('92', '8.4', '6.499');
INSERT INTO `volume` VALUES ('92', '8.6', '6.652');
INSERT INTO `volume` VALUES ('92', '8.8', '6.805');
INSERT INTO `volume` VALUES ('92', '9', '6.958');
INSERT INTO `volume` VALUES ('92', '9.2', '7.11');
INSERT INTO `volume` VALUES ('92', '9.4', '7.262');
INSERT INTO `volume` VALUES ('92', '9.6', '7.415');
INSERT INTO `volume` VALUES ('92', '9.8', '7.567');
INSERT INTO `volume` VALUES ('92', '10', '7.719');
INSERT INTO `volume` VALUES ('92', '10.2', null);
INSERT INTO `volume` VALUES ('92', '10.4', null);
INSERT INTO `volume` VALUES ('92', '10.6', null);
INSERT INTO `volume` VALUES ('92', '10.8', null);
INSERT INTO `volume` VALUES ('92', '11', null);
INSERT INTO `volume` VALUES ('92', '11.2', null);
INSERT INTO `volume` VALUES ('92', '11.4', null);
INSERT INTO `volume` VALUES ('92', '11.6', null);
INSERT INTO `volume` VALUES ('92', '11.8', null);
INSERT INTO `volume` VALUES ('92', '12', null);
INSERT INTO `volume` VALUES ('92', '12.2', null);
INSERT INTO `volume` VALUES ('92', '12.4', null);
INSERT INTO `volume` VALUES ('92', '12.6', null);
INSERT INTO `volume` VALUES ('92', '12.8', null);
INSERT INTO `volume` VALUES ('92', '13', null);
INSERT INTO `volume` VALUES ('92', '13.2', null);
INSERT INTO `volume` VALUES ('92', '13.4', null);
INSERT INTO `volume` VALUES ('92', '13.6', null);
INSERT INTO `volume` VALUES ('92', '13.8', null);
INSERT INTO `volume` VALUES ('92', '14', null);
INSERT INTO `volume` VALUES ('93', '2', '1.478');
INSERT INTO `volume` VALUES ('93', '2.2', '1.636');
INSERT INTO `volume` VALUES ('93', '2.4', '1.795');
INSERT INTO `volume` VALUES ('93', '2.6', '1.955');
INSERT INTO `volume` VALUES ('93', '2.8', '2.116');
INSERT INTO `volume` VALUES ('93', '3', '2.277');
INSERT INTO `volume` VALUES ('93', '3.2', '2.44');
INSERT INTO `volume` VALUES ('93', '3.4', '2.602');
INSERT INTO `volume` VALUES ('93', '3.6', '2.766');
INSERT INTO `volume` VALUES ('93', '3.8', '2.93');
INSERT INTO `volume` VALUES ('93', '4', '3.093');
INSERT INTO `volume` VALUES ('93', '4.2', '3.257');
INSERT INTO `volume` VALUES ('93', '4.4', '3.422');
INSERT INTO `volume` VALUES ('93', '4.6', '3.586');
INSERT INTO `volume` VALUES ('93', '4.8', '3.75');
INSERT INTO `volume` VALUES ('93', '5', '3.913');
INSERT INTO `volume` VALUES ('93', '5.2', '4.077');
INSERT INTO `volume` VALUES ('93', '5.4', '4.24');
INSERT INTO `volume` VALUES ('93', '5.6', '4.403');
INSERT INTO `volume` VALUES ('93', '5.8', '4.566');
INSERT INTO `volume` VALUES ('93', '6', '4.728');
INSERT INTO `volume` VALUES ('93', '6.2', '4.89');
INSERT INTO `volume` VALUES ('93', '6.4', '5.051');
INSERT INTO `volume` VALUES ('93', '6.6', '5.211');
INSERT INTO `volume` VALUES ('93', '6.8', '5.372');
INSERT INTO `volume` VALUES ('93', '7', '5.531');
INSERT INTO `volume` VALUES ('93', '7.2', '5.69');
INSERT INTO `volume` VALUES ('93', '7.4', '5.849');
INSERT INTO `volume` VALUES ('93', '7.6', '6.007');
INSERT INTO `volume` VALUES ('93', '7.8', '6.165');
INSERT INTO `volume` VALUES ('93', '8', '6.3252');
INSERT INTO `volume` VALUES ('93', '8.2', '6.479');
INSERT INTO `volume` VALUES ('93', '8.4', '6.635');
INSERT INTO `volume` VALUES ('93', '8.6', '6.791');
INSERT INTO `volume` VALUES ('93', '8.8', '6.947');
INSERT INTO `volume` VALUES ('93', '9', '7.102');
INSERT INTO `volume` VALUES ('93', '9.2', '7.258');
INSERT INTO `volume` VALUES ('93', '9.4', '7.413');
INSERT INTO `volume` VALUES ('93', '9.6', '7.568');
INSERT INTO `volume` VALUES ('93', '9.8', '7.724');
INSERT INTO `volume` VALUES ('93', '10', '7.879');
INSERT INTO `volume` VALUES ('93', '10.2', null);
INSERT INTO `volume` VALUES ('93', '10.4', null);
INSERT INTO `volume` VALUES ('93', '10.6', null);
INSERT INTO `volume` VALUES ('93', '10.8', null);
INSERT INTO `volume` VALUES ('93', '11', null);
INSERT INTO `volume` VALUES ('93', '11.2', null);
INSERT INTO `volume` VALUES ('93', '11.4', null);
INSERT INTO `volume` VALUES ('93', '11.6', null);
INSERT INTO `volume` VALUES ('93', '11.8', null);
INSERT INTO `volume` VALUES ('93', '12', null);
INSERT INTO `volume` VALUES ('93', '12.2', null);
INSERT INTO `volume` VALUES ('93', '12.4', null);
INSERT INTO `volume` VALUES ('93', '12.6', null);
INSERT INTO `volume` VALUES ('93', '12.8', null);
INSERT INTO `volume` VALUES ('93', '13', null);
INSERT INTO `volume` VALUES ('93', '13.2', null);
INSERT INTO `volume` VALUES ('93', '13.4', null);
INSERT INTO `volume` VALUES ('93', '13.6', null);
INSERT INTO `volume` VALUES ('93', '13.8', null);
INSERT INTO `volume` VALUES ('93', '14', null);
INSERT INTO `volume` VALUES ('94', '2', '1.51');
INSERT INTO `volume` VALUES ('94', '2.2', '1.671');
INSERT INTO `volume` VALUES ('94', '2.4', '1.833');
INSERT INTO `volume` VALUES ('94', '2.6', '1.997');
INSERT INTO `volume` VALUES ('94', '2.8', '2.161');
INSERT INTO `volume` VALUES ('94', '3', '2.326');
INSERT INTO `volume` VALUES ('94', '3.2', '2.492');
INSERT INTO `volume` VALUES ('94', '3.4', '2.658');
INSERT INTO `volume` VALUES ('94', '3.6', '2.825');
INSERT INTO `volume` VALUES ('94', '3.8', '2.992');
INSERT INTO `volume` VALUES ('94', '4', '3.159');
INSERT INTO `volume` VALUES ('94', '4.2', '3.327');
INSERT INTO `volume` VALUES ('94', '4.4', '3.494');
INSERT INTO `volume` VALUES ('94', '4.6', '3.662');
INSERT INTO `volume` VALUES ('94', '4.8', '3.829');
INSERT INTO `volume` VALUES ('94', '5', '3.996');
INSERT INTO `volume` VALUES ('94', '5.2', '4.163');
INSERT INTO `volume` VALUES ('94', '5.4', '4.33');
INSERT INTO `volume` VALUES ('94', '5.6', '4.496');
INSERT INTO `volume` VALUES ('94', '5.8', '4.662');
INSERT INTO `volume` VALUES ('94', '6', '4.827');
INSERT INTO `volume` VALUES ('94', '6.2', '4.992');
INSERT INTO `volume` VALUES ('94', '6.4', '5.157');
INSERT INTO `volume` VALUES ('94', '6.6', '5.321');
INSERT INTO `volume` VALUES ('94', '6.8', '5.484');
INSERT INTO `volume` VALUES ('94', '7', '5.647');
INSERT INTO `volume` VALUES ('94', '7.2', '5.809');
INSERT INTO `volume` VALUES ('94', '7.4', '5.971');
INSERT INTO `volume` VALUES ('94', '7.6', '6.132');
INSERT INTO `volume` VALUES ('94', '7.8', '6.293');
INSERT INTO `volume` VALUES ('94', '8', '6.453');
INSERT INTO `volume` VALUES ('94', '8.2', '6.613');
INSERT INTO `volume` VALUES ('94', '8.4', '6.773');
INSERT INTO `volume` VALUES ('94', '8.6', '6.932');
INSERT INTO `volume` VALUES ('94', '8.8', '7.09');
INSERT INTO `volume` VALUES ('94', '9', '7.249');
INSERT INTO `volume` VALUES ('94', '9.2', '7.407');
INSERT INTO `volume` VALUES ('94', '9.4', '7.566');
INSERT INTO `volume` VALUES ('94', '9.6', '7.724');
INSERT INTO `volume` VALUES ('94', '9.8', '7.882');
INSERT INTO `volume` VALUES ('94', '10', '8.04');
INSERT INTO `volume` VALUES ('94', '10.2', null);
INSERT INTO `volume` VALUES ('94', '10.4', null);
INSERT INTO `volume` VALUES ('94', '10.6', null);
INSERT INTO `volume` VALUES ('94', '10.8', null);
INSERT INTO `volume` VALUES ('94', '11', null);
INSERT INTO `volume` VALUES ('94', '11.2', null);
INSERT INTO `volume` VALUES ('94', '11.4', null);
INSERT INTO `volume` VALUES ('94', '11.6', null);
INSERT INTO `volume` VALUES ('94', '11.8', null);
INSERT INTO `volume` VALUES ('94', '12', null);
INSERT INTO `volume` VALUES ('94', '12.2', null);
INSERT INTO `volume` VALUES ('94', '12.4', null);
INSERT INTO `volume` VALUES ('94', '12.6', null);
INSERT INTO `volume` VALUES ('94', '12.8', null);
INSERT INTO `volume` VALUES ('94', '13', null);
INSERT INTO `volume` VALUES ('94', '13.2', null);
INSERT INTO `volume` VALUES ('94', '13.4', null);
INSERT INTO `volume` VALUES ('94', '13.6', null);
INSERT INTO `volume` VALUES ('94', '13.8', null);
INSERT INTO `volume` VALUES ('94', '14', null);
INSERT INTO `volume` VALUES ('95', '2', '1.542');
INSERT INTO `volume` VALUES ('95', '2.2', '1.707');
INSERT INTO `volume` VALUES ('95', '2.4', '1.872');
INSERT INTO `volume` VALUES ('95', '2.6', '2.039');
INSERT INTO `volume` VALUES ('95', '2.8', '2.207');
INSERT INTO `volume` VALUES ('95', '3', '2.375');
INSERT INTO `volume` VALUES ('95', '3.2', '2.544');
INSERT INTO `volume` VALUES ('95', '3.4', '2.714');
INSERT INTO `volume` VALUES ('95', '3.6', '2.884');
INSERT INTO `volume` VALUES ('95', '3.8', '3.055');
INSERT INTO `volume` VALUES ('95', '4', '3.226');
INSERT INTO `volume` VALUES ('95', '4.2', '3.396');
INSERT INTO `volume` VALUES ('95', '4.4', '3.568');
INSERT INTO `volume` VALUES ('95', '4.6', '3.738');
INSERT INTO `volume` VALUES ('95', '4.8', '3.909');
INSERT INTO `volume` VALUES ('95', '5', '4.08');
INSERT INTO `volume` VALUES ('95', '5.2', '4.25');
INSERT INTO `volume` VALUES ('95', '5.4', '4.42');
INSERT INTO `volume` VALUES ('95', '5.6', '4.59');
INSERT INTO `volume` VALUES ('95', '5.8', '4.759');
INSERT INTO `volume` VALUES ('95', '6', '4.928');
INSERT INTO `volume` VALUES ('95', '6.2', '5.096');
INSERT INTO `volume` VALUES ('95', '6.4', '5.264');
INSERT INTO `volume` VALUES ('95', '6.6', '5.431');
INSERT INTO `volume` VALUES ('95', '6.8', '5.598');
INSERT INTO `volume` VALUES ('95', '7', '5.764');
INSERT INTO `volume` VALUES ('95', '7.2', '5.929');
INSERT INTO `volume` VALUES ('95', '7.4', '6.094');
INSERT INTO `volume` VALUES ('95', '7.6', '6.259');
INSERT INTO `volume` VALUES ('95', '7.8', '6.422');
INSERT INTO `volume` VALUES ('95', '8', '6.586');
INSERT INTO `volume` VALUES ('95', '8.2', '6.749');
INSERT INTO `volume` VALUES ('95', '8.4', '6.911');
INSERT INTO `volume` VALUES ('95', '8.6', '7.073');
INSERT INTO `volume` VALUES ('95', '8.8', '7.235');
INSERT INTO `volume` VALUES ('95', '9', '7.397');
INSERT INTO `volume` VALUES ('95', '9.2', '7.558');
INSERT INTO `volume` VALUES ('95', '9.4', '7.72');
INSERT INTO `volume` VALUES ('95', '9.6', '7.881');
INSERT INTO `volume` VALUES ('95', '9.8', '8.042');
INSERT INTO `volume` VALUES ('95', '10', '8.203');
INSERT INTO `volume` VALUES ('95', '10.2', null);
INSERT INTO `volume` VALUES ('95', '10.4', null);
INSERT INTO `volume` VALUES ('95', '10.6', null);
INSERT INTO `volume` VALUES ('95', '10.8', null);
INSERT INTO `volume` VALUES ('95', '11', null);
INSERT INTO `volume` VALUES ('95', '11.2', null);
INSERT INTO `volume` VALUES ('95', '11.4', null);
INSERT INTO `volume` VALUES ('95', '11.6', null);
INSERT INTO `volume` VALUES ('95', '11.8', null);
INSERT INTO `volume` VALUES ('95', '12', null);
INSERT INTO `volume` VALUES ('95', '12.2', null);
INSERT INTO `volume` VALUES ('95', '12.4', null);
INSERT INTO `volume` VALUES ('95', '12.6', null);
INSERT INTO `volume` VALUES ('95', '12.8', null);
INSERT INTO `volume` VALUES ('95', '13', null);
INSERT INTO `volume` VALUES ('95', '13.2', null);
INSERT INTO `volume` VALUES ('95', '13.4', null);
INSERT INTO `volume` VALUES ('95', '13.6', null);
INSERT INTO `volume` VALUES ('95', '13.8', null);
INSERT INTO `volume` VALUES ('95', '14', null);
INSERT INTO `volume` VALUES ('96', '2', '1.574');
INSERT INTO `volume` VALUES ('96', '2.2', '1.742');
INSERT INTO `volume` VALUES ('96', '2.4', '1.911');
INSERT INTO `volume` VALUES ('96', '2.6', '2.082');
INSERT INTO `volume` VALUES ('96', '2.8', '2.253');
INSERT INTO `volume` VALUES ('96', '3', '2.425');
INSERT INTO `volume` VALUES ('96', '3.2', '2.598');
INSERT INTO `volume` VALUES ('96', '3.4', '2.771');
INSERT INTO `volume` VALUES ('96', '3.6', '2.945');
INSERT INTO `volume` VALUES ('96', '3.8', '3.119');
INSERT INTO `volume` VALUES ('96', '4', '3.293');
INSERT INTO `volume` VALUES ('96', '4.2', '3.467');
INSERT INTO `volume` VALUES ('96', '4.4', '3.642');
INSERT INTO `volume` VALUES ('96', '4.6', '3.816');
INSERT INTO `volume` VALUES ('96', '4.8', '3.99');
INSERT INTO `volume` VALUES ('96', '5', '4.164');
INSERT INTO `volume` VALUES ('96', '5.2', '4.338');
INSERT INTO `volume` VALUES ('96', '5.4', '4.512');
INSERT INTO `volume` VALUES ('96', '5.6', '4.685');
INSERT INTO `volume` VALUES ('96', '5.8', '4.857');
INSERT INTO `volume` VALUES ('96', '6', '5.029');
INSERT INTO `volume` VALUES ('96', '6.2', '5.201');
INSERT INTO `volume` VALUES ('96', '6.4', '5.372');
INSERT INTO `volume` VALUES ('96', '6.6', '5.542');
INSERT INTO `volume` VALUES ('96', '6.8', '5.712');
INSERT INTO `volume` VALUES ('96', '7', '5.882');
INSERT INTO `volume` VALUES ('96', '7.2', '6.05');
INSERT INTO `volume` VALUES ('96', '7.4', '6.219');
INSERT INTO `volume` VALUES ('96', '7.6', '6.386');
INSERT INTO `volume` VALUES ('96', '7.8', '6.553');
INSERT INTO `volume` VALUES ('96', '8', '6.72');
INSERT INTO `volume` VALUES ('96', '8.2', '6.886');
INSERT INTO `volume` VALUES ('96', '8.4', '7.052');
INSERT INTO `volume` VALUES ('96', '8.6', '7.217');
INSERT INTO `volume` VALUES ('96', '8.8', '7.382');
INSERT INTO `volume` VALUES ('96', '9', '7.546');
INSERT INTO `volume` VALUES ('96', '9.2', '7.711');
INSERT INTO `volume` VALUES ('96', '9.4', '7.875');
INSERT INTO `volume` VALUES ('96', '9.6', '8.039');
INSERT INTO `volume` VALUES ('96', '9.8', '8.204');
INSERT INTO `volume` VALUES ('96', '10', '8.368');
INSERT INTO `volume` VALUES ('96', '10.2', null);
INSERT INTO `volume` VALUES ('96', '10.4', null);
INSERT INTO `volume` VALUES ('96', '10.6', null);
INSERT INTO `volume` VALUES ('96', '10.8', null);
INSERT INTO `volume` VALUES ('96', '11', null);
INSERT INTO `volume` VALUES ('96', '11.2', null);
INSERT INTO `volume` VALUES ('96', '11.4', null);
INSERT INTO `volume` VALUES ('96', '11.6', null);
INSERT INTO `volume` VALUES ('96', '11.8', null);
INSERT INTO `volume` VALUES ('96', '12', null);
INSERT INTO `volume` VALUES ('96', '12.2', null);
INSERT INTO `volume` VALUES ('96', '12.4', null);
INSERT INTO `volume` VALUES ('96', '12.6', null);
INSERT INTO `volume` VALUES ('96', '12.8', null);
INSERT INTO `volume` VALUES ('96', '13', null);
INSERT INTO `volume` VALUES ('96', '13.2', null);
INSERT INTO `volume` VALUES ('96', '13.4', null);
INSERT INTO `volume` VALUES ('96', '13.6', null);
INSERT INTO `volume` VALUES ('96', '13.8', null);
INSERT INTO `volume` VALUES ('96', '14', null);
INSERT INTO `volume` VALUES ('97', '2', '1.607');
INSERT INTO `volume` VALUES ('97', '2.2', '1.779');
INSERT INTO `volume` VALUES ('97', '2.4', '1.951');
INSERT INTO `volume` VALUES ('97', '2.6', '3.125');
INSERT INTO `volume` VALUES ('97', '2.8', '2.3');
INSERT INTO `volume` VALUES ('97', '3', '2.475');
INSERT INTO `volume` VALUES ('97', '3.2', '2.651');
INSERT INTO `volume` VALUES ('97', '3.4', '2.828');
INSERT INTO `volume` VALUES ('97', '3.6', '3.005');
INSERT INTO `volume` VALUES ('97', '3.8', '3.183');
INSERT INTO `volume` VALUES ('97', '4', '3.361');
INSERT INTO `volume` VALUES ('97', '4.2', '3.539');
INSERT INTO `volume` VALUES ('97', '4.4', '3.717');
INSERT INTO `volume` VALUES ('97', '4.6', '3.895');
INSERT INTO `volume` VALUES ('97', '4.8', '4.072');
INSERT INTO `volume` VALUES ('97', '5', '4.25');
INSERT INTO `volume` VALUES ('97', '5.2', '4.427');
INSERT INTO `volume` VALUES ('97', '5.4', '4.604');
INSERT INTO `volume` VALUES ('97', '5.6', '4.78');
INSERT INTO `volume` VALUES ('97', '5.8', '4.956');
INSERT INTO `volume` VALUES ('97', '6', '5.132');
INSERT INTO `volume` VALUES ('97', '6.2', '5.307');
INSERT INTO `volume` VALUES ('97', '6.4', '5.481');
INSERT INTO `volume` VALUES ('97', '6.6', '5.655');
INSERT INTO `volume` VALUES ('97', '6.8', '5.828');
INSERT INTO `volume` VALUES ('97', '7', '6.001');
INSERT INTO `volume` VALUES ('97', '7.2', '6.173');
INSERT INTO `volume` VALUES ('97', '7.4', '6.314');
INSERT INTO `volume` VALUES ('97', '7.6', '6.515');
INSERT INTO `volume` VALUES ('97', '7.8', '6.685');
INSERT INTO `volume` VALUES ('97', '8', '6.855');
INSERT INTO `volume` VALUES ('97', '8.2', '7.024');
INSERT INTO `volume` VALUES ('97', '8.4', '7.193');
INSERT INTO `volume` VALUES ('97', '8.6', '7.361');
INSERT INTO `volume` VALUES ('97', '8.8', '7.529');
INSERT INTO `volume` VALUES ('97', '9', '7.697');
INSERT INTO `volume` VALUES ('97', '9.2', '7.865');
INSERT INTO `volume` VALUES ('97', '9.4', '8.032');
INSERT INTO `volume` VALUES ('97', '9.6', '8.199');
INSERT INTO `volume` VALUES ('97', '9.8', '8.367');
INSERT INTO `volume` VALUES ('97', '10', '8.534');
INSERT INTO `volume` VALUES ('97', '10.2', null);
INSERT INTO `volume` VALUES ('97', '10.4', null);
INSERT INTO `volume` VALUES ('97', '10.6', null);
INSERT INTO `volume` VALUES ('97', '10.8', null);
INSERT INTO `volume` VALUES ('97', '11', null);
INSERT INTO `volume` VALUES ('97', '11.2', null);
INSERT INTO `volume` VALUES ('97', '11.4', null);
INSERT INTO `volume` VALUES ('97', '11.6', null);
INSERT INTO `volume` VALUES ('97', '11.8', null);
INSERT INTO `volume` VALUES ('97', '12', null);
INSERT INTO `volume` VALUES ('97', '12.2', null);
INSERT INTO `volume` VALUES ('97', '12.4', null);
INSERT INTO `volume` VALUES ('97', '12.6', null);
INSERT INTO `volume` VALUES ('97', '12.8', null);
INSERT INTO `volume` VALUES ('97', '13', null);
INSERT INTO `volume` VALUES ('97', '13.2', null);
INSERT INTO `volume` VALUES ('97', '13.4', null);
INSERT INTO `volume` VALUES ('97', '13.6', null);
INSERT INTO `volume` VALUES ('97', '13.8', null);
INSERT INTO `volume` VALUES ('97', '14', null);
INSERT INTO `volume` VALUES ('98', '2', '1.64');
INSERT INTO `volume` VALUES ('98', '2.2', '1.815');
INSERT INTO `volume` VALUES ('98', '2.4', '1.991');
INSERT INTO `volume` VALUES ('98', '2.6', '2.169');
INSERT INTO `volume` VALUES ('98', '2.8', '2.347');
INSERT INTO `volume` VALUES ('98', '3', '2.526');
INSERT INTO `volume` VALUES ('98', '3.2', '2.706');
INSERT INTO `volume` VALUES ('98', '3.4', '2.886');
INSERT INTO `volume` VALUES ('98', '3.6', '3.067');
INSERT INTO `volume` VALUES ('98', '3.8', '3.248');
INSERT INTO `volume` VALUES ('98', '4', '3.429');
INSERT INTO `volume` VALUES ('98', '4.2', '3.611');
INSERT INTO `volume` VALUES ('98', '4.4', '3.792');
INSERT INTO `volume` VALUES ('98', '4.6', '3.974');
INSERT INTO `volume` VALUES ('98', '4.8', '4.155');
INSERT INTO `volume` VALUES ('98', '5', '4.336');
INSERT INTO `volume` VALUES ('98', '5.2', '4.517');
INSERT INTO `volume` VALUES ('98', '5.4', '4.697');
INSERT INTO `volume` VALUES ('98', '5.6', '4.877');
INSERT INTO `volume` VALUES ('98', '5.8', '5.057');
INSERT INTO `volume` VALUES ('98', '6', '5.235');
INSERT INTO `volume` VALUES ('98', '6.2', '5.414');
INSERT INTO `volume` VALUES ('98', '6.4', '5.592');
INSERT INTO `volume` VALUES ('98', '6.6', '5.769');
INSERT INTO `volume` VALUES ('98', '6.8', '5.945');
INSERT INTO `volume` VALUES ('98', '7', '6.121');
INSERT INTO `volume` VALUES ('98', '7.2', '6.297');
INSERT INTO `volume` VALUES ('98', '7.4', '6.471');
INSERT INTO `volume` VALUES ('98', '7.6', '6.645');
INSERT INTO `volume` VALUES ('98', '7.8', '6.819');
INSERT INTO `volume` VALUES ('98', '8', '6.992');
INSERT INTO `volume` VALUES ('98', '8.2', '7.164');
INSERT INTO `volume` VALUES ('98', '8.4', '7.336');
INSERT INTO `volume` VALUES ('98', '8.6', '7.508');
INSERT INTO `volume` VALUES ('98', '8.8', '7.679');
INSERT INTO `volume` VALUES ('98', '9', '7.85');
INSERT INTO `volume` VALUES ('98', '9.2', '8.02');
INSERT INTO `volume` VALUES ('98', '9.4', '8.191');
INSERT INTO `volume` VALUES ('98', '9.6', '8.361');
INSERT INTO `volume` VALUES ('98', '9.8', '8.531');
INSERT INTO `volume` VALUES ('98', '10', '8.702');
INSERT INTO `volume` VALUES ('98', '10.2', null);
INSERT INTO `volume` VALUES ('98', '10.4', null);
INSERT INTO `volume` VALUES ('98', '10.6', null);
INSERT INTO `volume` VALUES ('98', '10.8', null);
INSERT INTO `volume` VALUES ('98', '11', null);
INSERT INTO `volume` VALUES ('98', '11.2', null);
INSERT INTO `volume` VALUES ('98', '11.4', null);
INSERT INTO `volume` VALUES ('98', '11.6', null);
INSERT INTO `volume` VALUES ('98', '11.8', null);
INSERT INTO `volume` VALUES ('98', '12', null);
INSERT INTO `volume` VALUES ('98', '12.2', null);
INSERT INTO `volume` VALUES ('98', '12.4', null);
INSERT INTO `volume` VALUES ('98', '12.6', null);
INSERT INTO `volume` VALUES ('98', '12.8', null);
INSERT INTO `volume` VALUES ('98', '13', null);
INSERT INTO `volume` VALUES ('98', '13.2', null);
INSERT INTO `volume` VALUES ('98', '13.4', null);
INSERT INTO `volume` VALUES ('98', '13.6', null);
INSERT INTO `volume` VALUES ('98', '13.8', null);
INSERT INTO `volume` VALUES ('98', '14', null);
INSERT INTO `volume` VALUES ('99', '2', '1.674');
INSERT INTO `volume` VALUES ('99', '2.2', '1.852');
INSERT INTO `volume` VALUES ('99', '2.4', '2.032');
INSERT INTO `volume` VALUES ('99', '2.6', '2.213');
INSERT INTO `volume` VALUES ('99', '2.8', '2.394');
INSERT INTO `volume` VALUES ('99', '3', '2.577');
INSERT INTO `volume` VALUES ('99', '3.2', '2.76');
INSERT INTO `volume` VALUES ('99', '3.4', '2.944');
INSERT INTO `volume` VALUES ('99', '3.6', '3.129');
INSERT INTO `volume` VALUES ('99', '3.8', '3.314');
INSERT INTO `volume` VALUES ('99', '4', '3.499');
INSERT INTO `volume` VALUES ('99', '4.2', '3.684');
INSERT INTO `volume` VALUES ('99', '4.4', '3.869');
INSERT INTO `volume` VALUES ('99', '4.6', '4.054');
INSERT INTO `volume` VALUES ('99', '4.8', '4.239');
INSERT INTO `volume` VALUES ('99', '5', '4.423');
INSERT INTO `volume` VALUES ('99', '5.2', '4.561');
INSERT INTO `volume` VALUES ('99', '5.4', '4.791');
INSERT INTO `volume` VALUES ('99', '5.6', '4.975');
INSERT INTO `volume` VALUES ('99', '5.8', '5.158');
INSERT INTO `volume` VALUES ('99', '6', '5.34');
INSERT INTO `volume` VALUES ('99', '6.2', '5.522');
INSERT INTO `volume` VALUES ('99', '6.4', '5.703');
INSERT INTO `volume` VALUES ('99', '6.6', '5.884');
INSERT INTO `volume` VALUES ('99', '6.8', '6.064');
INSERT INTO `volume` VALUES ('99', '7', '6.243');
INSERT INTO `volume` VALUES ('99', '7.2', '6.422');
INSERT INTO `volume` VALUES ('99', '7.4', '6.6');
INSERT INTO `volume` VALUES ('99', '7.6', '6.777');
INSERT INTO `volume` VALUES ('99', '7.8', '6.954');
INSERT INTO `volume` VALUES ('99', '8', '7.13');
INSERT INTO `volume` VALUES ('99', '8.2', '7.305');
INSERT INTO `volume` VALUES ('99', '8.4', '7.481');
INSERT INTO `volume` VALUES ('99', '8.6', '7.655');
INSERT INTO `volume` VALUES ('99', '8.8', '7.83');
INSERT INTO `volume` VALUES ('99', '9', '8.004');
INSERT INTO `volume` VALUES ('99', '9.2', '8.177');
INSERT INTO `volume` VALUES ('99', '9.4', '8.351');
INSERT INTO `volume` VALUES ('99', '9.6', '8.524');
INSERT INTO `volume` VALUES ('99', '9.8', '8.698');
INSERT INTO `volume` VALUES ('99', '10', '8.871');
INSERT INTO `volume` VALUES ('99', '10.2', null);
INSERT INTO `volume` VALUES ('99', '10.4', null);
INSERT INTO `volume` VALUES ('99', '10.6', null);
INSERT INTO `volume` VALUES ('99', '10.8', null);
INSERT INTO `volume` VALUES ('99', '11', null);
INSERT INTO `volume` VALUES ('99', '11.2', null);
INSERT INTO `volume` VALUES ('99', '11.4', null);
INSERT INTO `volume` VALUES ('99', '11.6', null);
INSERT INTO `volume` VALUES ('99', '11.8', null);
INSERT INTO `volume` VALUES ('99', '12', null);
INSERT INTO `volume` VALUES ('99', '12.2', null);
INSERT INTO `volume` VALUES ('99', '12.4', null);
INSERT INTO `volume` VALUES ('99', '12.6', null);
INSERT INTO `volume` VALUES ('99', '12.8', null);
INSERT INTO `volume` VALUES ('99', '13', null);
INSERT INTO `volume` VALUES ('99', '13.2', null);
INSERT INTO `volume` VALUES ('99', '13.4', null);
INSERT INTO `volume` VALUES ('99', '13.6', null);
INSERT INTO `volume` VALUES ('99', '13.8', null);
INSERT INTO `volume` VALUES ('99', '14', null);
INSERT INTO `volume` VALUES ('100', '2', '1.707');
INSERT INTO `volume` VALUES ('100', '2.2', '1.889');
INSERT INTO `volume` VALUES ('100', '2.4', '2.073');
INSERT INTO `volume` VALUES ('100', '2.6', '2.257');
INSERT INTO `volume` VALUES ('100', '2.8', '2.443');
INSERT INTO `volume` VALUES ('100', '3', '2.629');
INSERT INTO `volume` VALUES ('100', '3.2', '2.816');
INSERT INTO `volume` VALUES ('100', '3.4', '3.004');
INSERT INTO `volume` VALUES ('100', '3.6', '3.192');
INSERT INTO `volume` VALUES ('100', '3.8', '3.38');
INSERT INTO `volume` VALUES ('100', '4', '3.569');
INSERT INTO `volume` VALUES ('100', '4.2', '3.757');
INSERT INTO `volume` VALUES ('100', '4.4', '3.946');
INSERT INTO `volume` VALUES ('100', '4.6', '4.135');
INSERT INTO `volume` VALUES ('100', '4.8', '4.323');
INSERT INTO `volume` VALUES ('100', '5', '4.511');
INSERT INTO `volume` VALUES ('100', '5.2', '4.699');
INSERT INTO `volume` VALUES ('100', '5.4', '4.887');
INSERT INTO `volume` VALUES ('100', '5.6', '5.073');
INSERT INTO `volume` VALUES ('100', '5.8', '5.26');
INSERT INTO `volume` VALUES ('100', '6', '5.446');
INSERT INTO `volume` VALUES ('100', '6.2', '5.631');
INSERT INTO `volume` VALUES ('100', '6.4', '5.816');
INSERT INTO `volume` VALUES ('100', '6.6', '6');
INSERT INTO `volume` VALUES ('100', '6.8', '6.183');
INSERT INTO `volume` VALUES ('100', '7', '6.366');
INSERT INTO `volume` VALUES ('100', '7.2', '6.548');
INSERT INTO `volume` VALUES ('100', '7.4', '6.729');
INSERT INTO `volume` VALUES ('100', '7.6', '6.91');
INSERT INTO `volume` VALUES ('100', '7.8', '7.09');
INSERT INTO `volume` VALUES ('100', '8', '7.269');
INSERT INTO `volume` VALUES ('100', '8.2', '7.448');
INSERT INTO `volume` VALUES ('100', '8.4', '7.626');
INSERT INTO `volume` VALUES ('100', '8.6', '7.804');
INSERT INTO `volume` VALUES ('100', '8.8', '7.982');
INSERT INTO `volume` VALUES ('100', '9', '8.159');
INSERT INTO `volume` VALUES ('100', '9.2', '8.336');
INSERT INTO `volume` VALUES ('100', '9.4', '8.513');
INSERT INTO `volume` VALUES ('100', '9.6', '8.689');
INSERT INTO `volume` VALUES ('100', '9.8', '8.866');
INSERT INTO `volume` VALUES ('100', '10', '9.043');
INSERT INTO `volume` VALUES ('100', '10.2', null);
INSERT INTO `volume` VALUES ('100', '10.4', null);
INSERT INTO `volume` VALUES ('100', '10.6', null);
INSERT INTO `volume` VALUES ('100', '10.8', null);
INSERT INTO `volume` VALUES ('100', '11', null);
INSERT INTO `volume` VALUES ('100', '11.2', null);
INSERT INTO `volume` VALUES ('100', '11.4', null);
INSERT INTO `volume` VALUES ('100', '11.6', null);
INSERT INTO `volume` VALUES ('100', '11.8', null);
INSERT INTO `volume` VALUES ('100', '12', null);
INSERT INTO `volume` VALUES ('100', '12.2', null);
INSERT INTO `volume` VALUES ('100', '12.4', null);
INSERT INTO `volume` VALUES ('100', '12.6', null);
INSERT INTO `volume` VALUES ('100', '12.8', null);
INSERT INTO `volume` VALUES ('100', '13', null);
INSERT INTO `volume` VALUES ('100', '13.2', null);
INSERT INTO `volume` VALUES ('100', '13.4', null);
INSERT INTO `volume` VALUES ('100', '13.6', null);
INSERT INTO `volume` VALUES ('100', '13.8', null);
INSERT INTO `volume` VALUES ('100', '14', null);
INSERT INTO `volume` VALUES ('101', '2', '1.742');
INSERT INTO `volume` VALUES ('101', '2.2', '1.927');
INSERT INTO `volume` VALUES ('101', '2.4', '2.114');
INSERT INTO `volume` VALUES ('101', '2.6', '2.302');
INSERT INTO `volume` VALUES ('101', '2.8', '2.491');
INSERT INTO `volume` VALUES ('101', '3', '2.681');
INSERT INTO `volume` VALUES ('101', '3.2', '2.871');
INSERT INTO `volume` VALUES ('101', '3.4', '3.063');
INSERT INTO `volume` VALUES ('101', '3.6', '3.255');
INSERT INTO `volume` VALUES ('101', '3.8', '3.447');
INSERT INTO `volume` VALUES ('101', '4', '3.639');
INSERT INTO `volume` VALUES ('101', '4.2', '3.832');
INSERT INTO `volume` VALUES ('101', '4.4', '4.024');
INSERT INTO `volume` VALUES ('101', '4.6', '4.217');
INSERT INTO `volume` VALUES ('101', '4.8', '4.408');
INSERT INTO `volume` VALUES ('101', '5', '4.6');
INSERT INTO `volume` VALUES ('101', '5.2', '4.792');
INSERT INTO `volume` VALUES ('101', '5.4', '4.983');
INSERT INTO `volume` VALUES ('101', '5.6', '5.173');
INSERT INTO `volume` VALUES ('101', '5.8', '5.363');
INSERT INTO `volume` VALUES ('101', '6', '5.552');
INSERT INTO `volume` VALUES ('101', '6.2', '5.741');
INSERT INTO `volume` VALUES ('101', '6.4', '5.929');
INSERT INTO `volume` VALUES ('101', '6.6', '6.117');
INSERT INTO `volume` VALUES ('101', '6.8', '6.304');
INSERT INTO `volume` VALUES ('101', '7', '6.49');
INSERT INTO `volume` VALUES ('101', '7.2', '6.675');
INSERT INTO `volume` VALUES ('101', '7.4', '6.86');
INSERT INTO `volume` VALUES ('101', '7.6', '7.044');
INSERT INTO `volume` VALUES ('101', '7.8', '7.227');
INSERT INTO `volume` VALUES ('101', '8', '7.41');
INSERT INTO `volume` VALUES ('101', '8.2', '7.592');
INSERT INTO `volume` VALUES ('101', '8.4', '7.774');
INSERT INTO `volume` VALUES ('101', '8.6', '7.955');
INSERT INTO `volume` VALUES ('101', '8.8', '8.135');
INSERT INTO `volume` VALUES ('101', '9', '8.316');
INSERT INTO `volume` VALUES ('101', '9.2', '8.496');
INSERT INTO `volume` VALUES ('101', '9.4', '8.676');
INSERT INTO `volume` VALUES ('101', '9.6', '8.856');
INSERT INTO `volume` VALUES ('101', '9.8', '9.035');
INSERT INTO `volume` VALUES ('101', '10', '9.215');
INSERT INTO `volume` VALUES ('101', '10.2', null);
INSERT INTO `volume` VALUES ('101', '10.4', null);
INSERT INTO `volume` VALUES ('101', '10.6', null);
INSERT INTO `volume` VALUES ('101', '10.8', null);
INSERT INTO `volume` VALUES ('101', '11', null);
INSERT INTO `volume` VALUES ('101', '11.2', null);
INSERT INTO `volume` VALUES ('101', '11.4', null);
INSERT INTO `volume` VALUES ('101', '11.6', null);
INSERT INTO `volume` VALUES ('101', '11.8', null);
INSERT INTO `volume` VALUES ('101', '12', null);
INSERT INTO `volume` VALUES ('101', '12.2', null);
INSERT INTO `volume` VALUES ('101', '12.4', null);
INSERT INTO `volume` VALUES ('101', '12.6', null);
INSERT INTO `volume` VALUES ('101', '12.8', null);
INSERT INTO `volume` VALUES ('101', '13', null);
INSERT INTO `volume` VALUES ('101', '13.2', null);
INSERT INTO `volume` VALUES ('101', '13.4', null);
INSERT INTO `volume` VALUES ('101', '13.6', null);
INSERT INTO `volume` VALUES ('101', '13.8', null);
INSERT INTO `volume` VALUES ('101', '14', null);
INSERT INTO `volume` VALUES ('102', '2', '1.776');
INSERT INTO `volume` VALUES ('102', '2.2', '1.965');
INSERT INTO `volume` VALUES ('102', '2.4', '2.156');
INSERT INTO `volume` VALUES ('102', '2.6', '2.348');
INSERT INTO `volume` VALUES ('102', '2.8', '2.54');
INSERT INTO `volume` VALUES ('102', '3', '2.734');
INSERT INTO `volume` VALUES ('102', '3.2', '2.928');
INSERT INTO `volume` VALUES ('102', '3.4', '3.123');
INSERT INTO `volume` VALUES ('102', '3.6', '3.319');
INSERT INTO `volume` VALUES ('102', '3.8', '3.515');
INSERT INTO `volume` VALUES ('102', '4', '3.711');
INSERT INTO `volume` VALUES ('102', '4.2', '3.907');
INSERT INTO `volume` VALUES ('102', '4.4', '4.103');
INSERT INTO `volume` VALUES ('102', '4.6', '4.299');
INSERT INTO `volume` VALUES ('102', '4.8', '4.494');
INSERT INTO `volume` VALUES ('102', '5', '4.69');
INSERT INTO `volume` VALUES ('102', '5.2', '4.885');
INSERT INTO `volume` VALUES ('102', '5.4', '5.08');
INSERT INTO `volume` VALUES ('102', '5.6', '5.274');
INSERT INTO `volume` VALUES ('102', '5.8', '5.467');
INSERT INTO `volume` VALUES ('102', '6', '5.66');
INSERT INTO `volume` VALUES ('102', '6.2', '5.853');
INSERT INTO `volume` VALUES ('102', '6.4', '6.044');
INSERT INTO `volume` VALUES ('102', '6.6', '6.235');
INSERT INTO `volume` VALUES ('102', '6.8', '6.425');
INSERT INTO `volume` VALUES ('102', '7', '6.615');
INSERT INTO `volume` VALUES ('102', '7.2', '6.804');
INSERT INTO `volume` VALUES ('102', '7.4', '6.992');
INSERT INTO `volume` VALUES ('102', '7.6', '7.179');
INSERT INTO `volume` VALUES ('102', '7.8', '7.366');
INSERT INTO `volume` VALUES ('102', '8', '7.552');
INSERT INTO `volume` VALUES ('102', '8.2', '7.737');
INSERT INTO `volume` VALUES ('102', '8.4', '7.922');
INSERT INTO `volume` VALUES ('102', '8.6', '8.107');
INSERT INTO `volume` VALUES ('102', '8.8', '8.291');
INSERT INTO `volume` VALUES ('102', '9', '8.474');
INSERT INTO `volume` VALUES ('102', '9.2', '8.658');
INSERT INTO `volume` VALUES ('102', '9.4', '8.841');
INSERT INTO `volume` VALUES ('102', '9.6', '9.024');
INSERT INTO `volume` VALUES ('102', '9.8', '9.207');
INSERT INTO `volume` VALUES ('102', '10', '9.39');
INSERT INTO `volume` VALUES ('102', '10.2', null);
INSERT INTO `volume` VALUES ('102', '10.4', null);
INSERT INTO `volume` VALUES ('102', '10.6', null);
INSERT INTO `volume` VALUES ('102', '10.8', null);
INSERT INTO `volume` VALUES ('102', '11', null);
INSERT INTO `volume` VALUES ('102', '11.2', null);
INSERT INTO `volume` VALUES ('102', '11.4', null);
INSERT INTO `volume` VALUES ('102', '11.6', null);
INSERT INTO `volume` VALUES ('102', '11.8', null);
INSERT INTO `volume` VALUES ('102', '12', null);
INSERT INTO `volume` VALUES ('102', '12.2', null);
INSERT INTO `volume` VALUES ('102', '12.4', null);
INSERT INTO `volume` VALUES ('102', '12.6', null);
INSERT INTO `volume` VALUES ('102', '12.8', null);
INSERT INTO `volume` VALUES ('102', '13', null);
INSERT INTO `volume` VALUES ('102', '13.2', null);
INSERT INTO `volume` VALUES ('102', '13.4', null);
INSERT INTO `volume` VALUES ('102', '13.6', null);
INSERT INTO `volume` VALUES ('102', '13.8', null);
INSERT INTO `volume` VALUES ('102', '14', null);
INSERT INTO `volume` VALUES ('103', '2', '1.811');
INSERT INTO `volume` VALUES ('103', '2.2', '2.004');
INSERT INTO `volume` VALUES ('103', '2.4', '2.198');
INSERT INTO `volume` VALUES ('103', '2.6', '2.393');
INSERT INTO `volume` VALUES ('103', '2.8', '2.59');
INSERT INTO `volume` VALUES ('103', '3', '2.787');
INSERT INTO `volume` VALUES ('103', '3.2', '2.986');
INSERT INTO `volume` VALUES ('103', '3.4', '3.184');
INSERT INTO `volume` VALUES ('103', '3.6', '3.383');
INSERT INTO `volume` VALUES ('103', '3.8', '3.583');
INSERT INTO `volume` VALUES ('103', '4', '3.783');
INSERT INTO `volume` VALUES ('103', '4.2', '3.982');
INSERT INTO `volume` VALUES ('103', '4.4', '4.182');
INSERT INTO `volume` VALUES ('103', '4.6', '4.383');
INSERT INTO `volume` VALUES ('103', '4.8', '4.581');
INSERT INTO `volume` VALUES ('103', '5', '4.78');
INSERT INTO `volume` VALUES ('103', '5.2', '4.979');
INSERT INTO `volume` VALUES ('103', '5.4', '5.178');
INSERT INTO `volume` VALUES ('103', '5.6', '5.375');
INSERT INTO `volume` VALUES ('103', '5.8', '5.572');
INSERT INTO `volume` VALUES ('103', '6', '5.769');
INSERT INTO `volume` VALUES ('103', '6.2', '5.965');
INSERT INTO `volume` VALUES ('103', '6.4', '6.16');
INSERT INTO `volume` VALUES ('103', '6.6', '6.354');
INSERT INTO `volume` VALUES ('103', '6.8', '6.548');
INSERT INTO `volume` VALUES ('103', '7', '6.741');
INSERT INTO `volume` VALUES ('103', '7.2', '6.933');
INSERT INTO `volume` VALUES ('103', '7.4', '7.125');
INSERT INTO `volume` VALUES ('103', '7.6', '7.316');
INSERT INTO `volume` VALUES ('103', '7.8', '7.506');
INSERT INTO `volume` VALUES ('103', '8', '7.695');
INSERT INTO `volume` VALUES ('103', '8.2', '7.884');
INSERT INTO `volume` VALUES ('103', '8.4', '8.072');
INSERT INTO `volume` VALUES ('103', '8.6', '8.26');
INSERT INTO `volume` VALUES ('103', '8.8', '8.447');
INSERT INTO `volume` VALUES ('103', '9', '8.634');
INSERT INTO `volume` VALUES ('103', '9.2', '8.821');
INSERT INTO `volume` VALUES ('103', '9.4', '9.007');
INSERT INTO `volume` VALUES ('103', '9.6', '9.193');
INSERT INTO `volume` VALUES ('103', '9.8', '9.379');
INSERT INTO `volume` VALUES ('103', '10', '9.566');
INSERT INTO `volume` VALUES ('103', '10.2', null);
INSERT INTO `volume` VALUES ('103', '10.4', null);
INSERT INTO `volume` VALUES ('103', '10.6', null);
INSERT INTO `volume` VALUES ('103', '10.8', null);
INSERT INTO `volume` VALUES ('103', '11', null);
INSERT INTO `volume` VALUES ('103', '11.2', null);
INSERT INTO `volume` VALUES ('103', '11.4', null);
INSERT INTO `volume` VALUES ('103', '11.6', null);
INSERT INTO `volume` VALUES ('103', '11.8', null);
INSERT INTO `volume` VALUES ('103', '12', null);
INSERT INTO `volume` VALUES ('103', '12.2', null);
INSERT INTO `volume` VALUES ('103', '12.4', null);
INSERT INTO `volume` VALUES ('103', '12.6', null);
INSERT INTO `volume` VALUES ('103', '12.8', null);
INSERT INTO `volume` VALUES ('103', '13', null);
INSERT INTO `volume` VALUES ('103', '13.2', null);
INSERT INTO `volume` VALUES ('103', '13.4', null);
INSERT INTO `volume` VALUES ('103', '13.6', null);
INSERT INTO `volume` VALUES ('103', '13.8', null);
INSERT INTO `volume` VALUES ('103', '14', null);
INSERT INTO `volume` VALUES ('104', '2', '1.846');
INSERT INTO `volume` VALUES ('104', '2.2', '2.042');
INSERT INTO `volume` VALUES ('104', '2.4', '2.24');
INSERT INTO `volume` VALUES ('104', '2.6', '2.44');
INSERT INTO `volume` VALUES ('104', '2.8', '2.64');
INSERT INTO `volume` VALUES ('104', '3', '2.841');
INSERT INTO `volume` VALUES ('104', '3.2', '3.043');
INSERT INTO `volume` VALUES ('104', '3.4', '3.246');
INSERT INTO `volume` VALUES ('104', '3.6', '3.449');
INSERT INTO `volume` VALUES ('104', '3.8', '3.652');
INSERT INTO `volume` VALUES ('104', '4', '3.855');
INSERT INTO `volume` VALUES ('104', '4.2', '4.059');
INSERT INTO `volume` VALUES ('104', '4.4', '4.263');
INSERT INTO `volume` VALUES ('104', '4.6', '4.466');
INSERT INTO `volume` VALUES ('104', '4.8', '4.669');
INSERT INTO `volume` VALUES ('104', '5', '4.872');
INSERT INTO `volume` VALUES ('104', '5.2', '5.074');
INSERT INTO `volume` VALUES ('104', '5.4', '5.276');
INSERT INTO `volume` VALUES ('104', '5.6', '5.478');
INSERT INTO `volume` VALUES ('104', '5.8', '5.679');
INSERT INTO `volume` VALUES ('104', '6', '5.879');
INSERT INTO `volume` VALUES ('104', '6.2', '6.078');
INSERT INTO `volume` VALUES ('104', '6.4', '6.277');
INSERT INTO `volume` VALUES ('104', '6.6', '6.475');
INSERT INTO `volume` VALUES ('104', '6.8', '3.672');
INSERT INTO `volume` VALUES ('104', '7', '6.869');
INSERT INTO `volume` VALUES ('104', '7.2', '7.065');
INSERT INTO `volume` VALUES ('104', '7.4', '7.26');
INSERT INTO `volume` VALUES ('104', '7.6', '7.454');
INSERT INTO `volume` VALUES ('104', '7.8', '7.647');
INSERT INTO `volume` VALUES ('104', '8', '7.84');
INSERT INTO `volume` VALUES ('104', '8.2', '8.032');
INSERT INTO `volume` VALUES ('104', '8.4', '8.224');
INSERT INTO `volume` VALUES ('104', '8.6', '8.415');
INSERT INTO `volume` VALUES ('104', '8.8', '8.605');
INSERT INTO `volume` VALUES ('104', '9', '8.796');
INSERT INTO `volume` VALUES ('104', '9.2', '8.985');
INSERT INTO `volume` VALUES ('104', '9.4', '9.175');
INSERT INTO `volume` VALUES ('104', '9.6', '9.364');
INSERT INTO `volume` VALUES ('104', '9.8', '9.554');
INSERT INTO `volume` VALUES ('104', '10', '9.743');
INSERT INTO `volume` VALUES ('104', '10.2', null);
INSERT INTO `volume` VALUES ('104', '10.4', null);
INSERT INTO `volume` VALUES ('104', '10.6', null);
INSERT INTO `volume` VALUES ('104', '10.8', null);
INSERT INTO `volume` VALUES ('104', '11', null);
INSERT INTO `volume` VALUES ('104', '11.2', null);
INSERT INTO `volume` VALUES ('104', '11.4', null);
INSERT INTO `volume` VALUES ('104', '11.6', null);
INSERT INTO `volume` VALUES ('104', '11.8', null);
INSERT INTO `volume` VALUES ('104', '12', null);
INSERT INTO `volume` VALUES ('104', '12.2', null);
INSERT INTO `volume` VALUES ('104', '12.4', null);
INSERT INTO `volume` VALUES ('104', '12.6', null);
INSERT INTO `volume` VALUES ('104', '12.8', null);
INSERT INTO `volume` VALUES ('104', '13', null);
INSERT INTO `volume` VALUES ('104', '13.2', null);
INSERT INTO `volume` VALUES ('104', '13.4', null);
INSERT INTO `volume` VALUES ('104', '13.6', null);
INSERT INTO `volume` VALUES ('104', '13.8', null);
INSERT INTO `volume` VALUES ('104', '14', null);
INSERT INTO `volume` VALUES ('105', '2', '1.881');
INSERT INTO `volume` VALUES ('105', '2.2', '2.082');
INSERT INTO `volume` VALUES ('105', '2.4', '2.283');
INSERT INTO `volume` VALUES ('105', '2.6', '2.486');
INSERT INTO `volume` VALUES ('105', '2.8', '2.691');
INSERT INTO `volume` VALUES ('105', '3', '2.896');
INSERT INTO `volume` VALUES ('105', '3.2', '3.101');
INSERT INTO `volume` VALUES ('105', '3.4', '3.308');
INSERT INTO `volume` VALUES ('105', '3.6', '3.514');
INSERT INTO `volume` VALUES ('105', '3.8', '3.722');
INSERT INTO `volume` VALUES ('105', '4', '3.929');
INSERT INTO `volume` VALUES ('105', '4.2', '4.136');
INSERT INTO `volume` VALUES ('105', '4.4', '4.344');
INSERT INTO `volume` VALUES ('105', '4.6', '4.552');
INSERT INTO `volume` VALUES ('105', '4.8', '4.758');
INSERT INTO `volume` VALUES ('105', '5', '4.964');
INSERT INTO `volume` VALUES ('105', '5.2', '5.171');
INSERT INTO `volume` VALUES ('105', '5.4', '5.376');
INSERT INTO `volume` VALUES ('105', '5.6', '5.581');
INSERT INTO `volume` VALUES ('105', '5.8', '5.786');
INSERT INTO `volume` VALUES ('105', '6', '5.99');
INSERT INTO `volume` VALUES ('105', '6.2', '6.193');
INSERT INTO `volume` VALUES ('105', '6.4', '6.395');
INSERT INTO `volume` VALUES ('105', '6.6', '6.597');
INSERT INTO `volume` VALUES ('105', '6.8', '6.798');
INSERT INTO `volume` VALUES ('105', '7', '6.998');
INSERT INTO `volume` VALUES ('105', '7.2', '7.197');
INSERT INTO `volume` VALUES ('105', '7.4', '7.395');
INSERT INTO `volume` VALUES ('105', '7.6', '7.593');
INSERT INTO `volume` VALUES ('105', '7.8', '7.79');
INSERT INTO `volume` VALUES ('105', '8', '7.986');
INSERT INTO `volume` VALUES ('105', '8.2', '8.182');
INSERT INTO `volume` VALUES ('105', '8.4', '8.377');
INSERT INTO `volume` VALUES ('105', '8.6', '8.571');
INSERT INTO `volume` VALUES ('105', '8.8', '8.765');
INSERT INTO `volume` VALUES ('105', '9', '8.958');
INSERT INTO `volume` VALUES ('105', '9.2', '9.152');
INSERT INTO `volume` VALUES ('105', '9.4', '9.344');
INSERT INTO `volume` VALUES ('105', '9.6', '9.537');
INSERT INTO `volume` VALUES ('105', '9.8', '9.73');
INSERT INTO `volume` VALUES ('105', '10', '9.923');
INSERT INTO `volume` VALUES ('105', '10.2', null);
INSERT INTO `volume` VALUES ('105', '10.4', null);
INSERT INTO `volume` VALUES ('105', '10.6', null);
INSERT INTO `volume` VALUES ('105', '10.8', null);
INSERT INTO `volume` VALUES ('105', '11', null);
INSERT INTO `volume` VALUES ('105', '11.2', null);
INSERT INTO `volume` VALUES ('105', '11.4', null);
INSERT INTO `volume` VALUES ('105', '11.6', null);
INSERT INTO `volume` VALUES ('105', '11.8', null);
INSERT INTO `volume` VALUES ('105', '12', null);
INSERT INTO `volume` VALUES ('105', '12.2', null);
INSERT INTO `volume` VALUES ('105', '12.4', null);
INSERT INTO `volume` VALUES ('105', '12.6', null);
INSERT INTO `volume` VALUES ('105', '12.8', null);
INSERT INTO `volume` VALUES ('105', '13', null);
INSERT INTO `volume` VALUES ('105', '13.2', null);
INSERT INTO `volume` VALUES ('105', '13.4', null);
INSERT INTO `volume` VALUES ('105', '13.6', null);
INSERT INTO `volume` VALUES ('105', '13.8', null);
INSERT INTO `volume` VALUES ('105', '14', null);
INSERT INTO `volume` VALUES ('106', '2', '1.917');
INSERT INTO `volume` VALUES ('106', '2.2', '2.121');
INSERT INTO `volume` VALUES ('106', '2.4', '2.327');
INSERT INTO `volume` VALUES ('106', '2.6', '2.534');
INSERT INTO `volume` VALUES ('106', '2.8', '2.742');
INSERT INTO `volume` VALUES ('106', '3', '2.95');
INSERT INTO `volume` VALUES ('106', '3.2', '3.16');
INSERT INTO `volume` VALUES ('106', '3.4', '3.37');
INSERT INTO `volume` VALUES ('106', '3.6', '3.581');
INSERT INTO `volume` VALUES ('106', '3.8', '3.792');
INSERT INTO `volume` VALUES ('106', '4', '4.003');
INSERT INTO `volume` VALUES ('106', '4.2', '4.214');
INSERT INTO `volume` VALUES ('106', '4.4', '4.425');
INSERT INTO `volume` VALUES ('106', '4.6', '4.636');
INSERT INTO `volume` VALUES ('106', '4.8', '4.847');
INSERT INTO `volume` VALUES ('106', '5', '5.058');
INSERT INTO `volume` VALUES ('106', '5.2', '5.267');
INSERT INTO `volume` VALUES ('106', '5.4', '5.477');
INSERT INTO `volume` VALUES ('106', '5.6', '5.686');
INSERT INTO `volume` VALUES ('106', '5.8', '5.894');
INSERT INTO `volume` VALUES ('106', '6', '6.101');
INSERT INTO `volume` VALUES ('106', '6.2', '6.308');
INSERT INTO `volume` VALUES ('106', '6.4', '6.514');
INSERT INTO `volume` VALUES ('106', '6.6', '6.72');
INSERT INTO `volume` VALUES ('106', '6.8', '6.924');
INSERT INTO `volume` VALUES ('106', '7', '7.128');
INSERT INTO `volume` VALUES ('106', '7.2', '7.33');
INSERT INTO `volume` VALUES ('106', '7.4', '7.532');
INSERT INTO `volume` VALUES ('106', '7.6', '7.733');
INSERT INTO `volume` VALUES ('106', '7.8', '7.934');
INSERT INTO `volume` VALUES ('106', '8', '8.134');
INSERT INTO `volume` VALUES ('106', '8.2', '8.333');
INSERT INTO `volume` VALUES ('106', '8.4', '8.531');
INSERT INTO `volume` VALUES ('106', '8.6', '8.729');
INSERT INTO `volume` VALUES ('106', '8.8', '8.926');
INSERT INTO `volume` VALUES ('106', '9', '9.123');
INSERT INTO `volume` VALUES ('106', '9.2', '9.319');
INSERT INTO `volume` VALUES ('106', '9.4', '9.516');
INSERT INTO `volume` VALUES ('106', '9.6', '9.711');
INSERT INTO `volume` VALUES ('106', '9.8', '9.907');
INSERT INTO `volume` VALUES ('106', '10', '10.103');
INSERT INTO `volume` VALUES ('106', '10.2', null);
INSERT INTO `volume` VALUES ('106', '10.4', null);
INSERT INTO `volume` VALUES ('106', '10.6', null);
INSERT INTO `volume` VALUES ('106', '10.8', null);
INSERT INTO `volume` VALUES ('106', '11', null);
INSERT INTO `volume` VALUES ('106', '11.2', null);
INSERT INTO `volume` VALUES ('106', '11.4', null);
INSERT INTO `volume` VALUES ('106', '11.6', null);
INSERT INTO `volume` VALUES ('106', '11.8', null);
INSERT INTO `volume` VALUES ('106', '12', null);
INSERT INTO `volume` VALUES ('106', '12.2', null);
INSERT INTO `volume` VALUES ('106', '12.4', null);
INSERT INTO `volume` VALUES ('106', '12.6', null);
INSERT INTO `volume` VALUES ('106', '12.8', null);
INSERT INTO `volume` VALUES ('106', '13', null);
INSERT INTO `volume` VALUES ('106', '13.2', null);
INSERT INTO `volume` VALUES ('106', '13.4', null);
INSERT INTO `volume` VALUES ('106', '13.6', null);
INSERT INTO `volume` VALUES ('106', '13.8', null);
INSERT INTO `volume` VALUES ('106', '14', null);
INSERT INTO `volume` VALUES ('107', '2', '1.953');
INSERT INTO `volume` VALUES ('107', '2.2', '2.161');
INSERT INTO `volume` VALUES ('107', '2.4', '2.371');
INSERT INTO `volume` VALUES ('107', '2.6', '2.581');
INSERT INTO `volume` VALUES ('107', '2.8', '2.793');
INSERT INTO `volume` VALUES ('107', '3', '3.006');
INSERT INTO `volume` VALUES ('107', '3.2', '3.219');
INSERT INTO `volume` VALUES ('107', '3.4', '3.433');
INSERT INTO `volume` VALUES ('107', '3.6', '3.648');
INSERT INTO `volume` VALUES ('107', '3.8', '3.863');
INSERT INTO `volume` VALUES ('107', '4', '4.078');
INSERT INTO `volume` VALUES ('107', '4.2', '4.293');
INSERT INTO `volume` VALUES ('107', '4.4', '4.508');
INSERT INTO `volume` VALUES ('107', '4.6', '4.724');
INSERT INTO `volume` VALUES ('107', '4.8', '4.937');
INSERT INTO `volume` VALUES ('107', '5', '5.152');
INSERT INTO `volume` VALUES ('107', '5.2', '5.365');
INSERT INTO `volume` VALUES ('107', '5.4', '5.579');
INSERT INTO `volume` VALUES ('107', '5.6', '5.791');
INSERT INTO `volume` VALUES ('107', '5.8', '6.003');
INSERT INTO `volume` VALUES ('107', '6', '6.214');
INSERT INTO `volume` VALUES ('107', '6.2', '6.425');
INSERT INTO `volume` VALUES ('107', '6.4', '6.635');
INSERT INTO `volume` VALUES ('107', '6.6', '6.843');
INSERT INTO `volume` VALUES ('107', '6.8', '7.051');
INSERT INTO `volume` VALUES ('107', '7', '7.259');
INSERT INTO `volume` VALUES ('107', '7.2', '7.465');
INSERT INTO `volume` VALUES ('107', '7.4', '7.671');
INSERT INTO `volume` VALUES ('107', '7.6', '7.875');
INSERT INTO `volume` VALUES ('107', '7.8', '8.079');
INSERT INTO `volume` VALUES ('107', '8', '8.282');
INSERT INTO `volume` VALUES ('107', '8.2', '8.485');
INSERT INTO `volume` VALUES ('107', '8.4', '8.687');
INSERT INTO `volume` VALUES ('107', '8.6', '8.888');
INSERT INTO `volume` VALUES ('107', '8.8', '9.088');
INSERT INTO `volume` VALUES ('107', '9', '9.289');
INSERT INTO `volume` VALUES ('107', '9.2', '9.489');
INSERT INTO `volume` VALUES ('107', '9.4', '9.688');
INSERT INTO `volume` VALUES ('107', '9.6', '9.887');
INSERT INTO `volume` VALUES ('107', '9.8', '10.087');
INSERT INTO `volume` VALUES ('107', '10', '10.286');
INSERT INTO `volume` VALUES ('107', '10.2', null);
INSERT INTO `volume` VALUES ('107', '10.4', null);
INSERT INTO `volume` VALUES ('107', '10.6', null);
INSERT INTO `volume` VALUES ('107', '10.8', null);
INSERT INTO `volume` VALUES ('107', '11', null);
INSERT INTO `volume` VALUES ('107', '11.2', null);
INSERT INTO `volume` VALUES ('107', '11.4', null);
INSERT INTO `volume` VALUES ('107', '11.6', null);
INSERT INTO `volume` VALUES ('107', '11.8', null);
INSERT INTO `volume` VALUES ('107', '12', null);
INSERT INTO `volume` VALUES ('107', '12.2', null);
INSERT INTO `volume` VALUES ('107', '12.4', null);
INSERT INTO `volume` VALUES ('107', '12.6', null);
INSERT INTO `volume` VALUES ('107', '12.8', null);
INSERT INTO `volume` VALUES ('107', '13', null);
INSERT INTO `volume` VALUES ('107', '13.2', null);
INSERT INTO `volume` VALUES ('107', '13.4', null);
INSERT INTO `volume` VALUES ('107', '13.6', null);
INSERT INTO `volume` VALUES ('107', '13.8', null);
INSERT INTO `volume` VALUES ('107', '14', null);
INSERT INTO `volume` VALUES ('108', '2', '1.99');
INSERT INTO `volume` VALUES ('108', '2.2', '2.202');
INSERT INTO `volume` VALUES ('108', '2.4', '2.415');
INSERT INTO `volume` VALUES ('108', '2.6', '2.629');
INSERT INTO `volume` VALUES ('108', '2.8', '2.845');
INSERT INTO `volume` VALUES ('108', '3', '3.062');
INSERT INTO `volume` VALUES ('108', '3.2', '3.279');
INSERT INTO `volume` VALUES ('108', '3.4', '3.497');
INSERT INTO `volume` VALUES ('108', '3.6', '3.716');
INSERT INTO `volume` VALUES ('108', '3.8', '3.934');
INSERT INTO `volume` VALUES ('108', '4', '4.153');
INSERT INTO `volume` VALUES ('108', '4.2', '4.372');
INSERT INTO `volume` VALUES ('108', '4.4', '4.591');
INSERT INTO `volume` VALUES ('108', '4.6', '4.81');
INSERT INTO `volume` VALUES ('108', '4.8', '5.028');
INSERT INTO `volume` VALUES ('108', '5', '5.247');
INSERT INTO `volume` VALUES ('108', '5.2', '5.464');
INSERT INTO `volume` VALUES ('108', '5.4', '5.681');
INSERT INTO `volume` VALUES ('108', '5.6', '5.898');
INSERT INTO `volume` VALUES ('108', '5.8', '6.113');
INSERT INTO `volume` VALUES ('108', '6', '6.328');
INSERT INTO `volume` VALUES ('108', '6.2', '6.543');
INSERT INTO `volume` VALUES ('108', '6.4', '6.756');
INSERT INTO `volume` VALUES ('108', '6.6', '6.969');
INSERT INTO `volume` VALUES ('108', '6.8', '7.18');
INSERT INTO `volume` VALUES ('108', '7', '7.391');
INSERT INTO `volume` VALUES ('108', '7.2', '7.601');
INSERT INTO `volume` VALUES ('108', '7.4', '7.81');
INSERT INTO `volume` VALUES ('108', '7.6', '8.018');
INSERT INTO `volume` VALUES ('108', '7.8', '8.226');
INSERT INTO `volume` VALUES ('108', '8', '8.433');
INSERT INTO `volume` VALUES ('108', '8.2', '8.638');
INSERT INTO `volume` VALUES ('108', '8.4', '8.844');
INSERT INTO `volume` VALUES ('108', '8.6', '9.048');
INSERT INTO `volume` VALUES ('108', '8.8', '9.252');
INSERT INTO `volume` VALUES ('108', '9', '9.456');
INSERT INTO `volume` VALUES ('108', '9.2', '9.659');
INSERT INTO `volume` VALUES ('108', '9.4', '9.862');
INSERT INTO `volume` VALUES ('108', '9.6', '10.065');
INSERT INTO `volume` VALUES ('108', '9.8', '10.267');
INSERT INTO `volume` VALUES ('108', '10', '10.47');
INSERT INTO `volume` VALUES ('108', '10.2', null);
INSERT INTO `volume` VALUES ('108', '10.4', null);
INSERT INTO `volume` VALUES ('108', '10.6', null);
INSERT INTO `volume` VALUES ('108', '10.8', null);
INSERT INTO `volume` VALUES ('108', '11', null);
INSERT INTO `volume` VALUES ('108', '11.2', null);
INSERT INTO `volume` VALUES ('108', '11.4', null);
INSERT INTO `volume` VALUES ('108', '11.6', null);
INSERT INTO `volume` VALUES ('108', '11.8', null);
INSERT INTO `volume` VALUES ('108', '12', null);
INSERT INTO `volume` VALUES ('108', '12.2', null);
INSERT INTO `volume` VALUES ('108', '12.4', null);
INSERT INTO `volume` VALUES ('108', '12.6', null);
INSERT INTO `volume` VALUES ('108', '12.8', null);
INSERT INTO `volume` VALUES ('108', '13', null);
INSERT INTO `volume` VALUES ('108', '13.2', null);
INSERT INTO `volume` VALUES ('108', '13.4', null);
INSERT INTO `volume` VALUES ('108', '13.6', null);
INSERT INTO `volume` VALUES ('108', '13.8', null);
INSERT INTO `volume` VALUES ('108', '14', null);
INSERT INTO `volume` VALUES ('109', '2', '2.027');
INSERT INTO `volume` VALUES ('109', '2.2', '2.242');
INSERT INTO `volume` VALUES ('109', '2.4', '2.459');
INSERT INTO `volume` VALUES ('109', '2.6', '2.678');
INSERT INTO `volume` VALUES ('109', '2.8', '2.897');
INSERT INTO `volume` VALUES ('109', '3', '3.118');
INSERT INTO `volume` VALUES ('109', '3.2', '3.339');
INSERT INTO `volume` VALUES ('109', '3.4', '3.561');
INSERT INTO `volume` VALUES ('109', '3.6', '3.784');
INSERT INTO `volume` VALUES ('109', '3.8', '4.007');
INSERT INTO `volume` VALUES ('109', '4', '4.23');
INSERT INTO `volume` VALUES ('109', '4.2', '4.452');
INSERT INTO `volume` VALUES ('109', '4.4', '4.675');
INSERT INTO `volume` VALUES ('109', '4.6', '4.899');
INSERT INTO `volume` VALUES ('109', '4.8', '5.12');
INSERT INTO `volume` VALUES ('109', '5', '5.342');
INSERT INTO `volume` VALUES ('109', '5.2', '5.564');
INSERT INTO `volume` VALUES ('109', '5.4', '5.785');
INSERT INTO `volume` VALUES ('109', '5.6', '6.005');
INSERT INTO `volume` VALUES ('109', '5.8', '6.224');
INSERT INTO `volume` VALUES ('109', '6', '6.443');
INSERT INTO `volume` VALUES ('109', '6.2', '6.661');
INSERT INTO `volume` VALUES ('109', '6.4', '6.878');
INSERT INTO `volume` VALUES ('109', '6.6', '7.095');
INSERT INTO `volume` VALUES ('109', '6.8', '7.31');
INSERT INTO `volume` VALUES ('109', '7', '7.525');
INSERT INTO `volume` VALUES ('109', '7.2', '7.738');
INSERT INTO `volume` VALUES ('109', '7.4', '7.951');
INSERT INTO `volume` VALUES ('109', '7.6', '8.163');
INSERT INTO `volume` VALUES ('109', '7.8', '8.374');
INSERT INTO `volume` VALUES ('109', '8', '8.584');
INSERT INTO `volume` VALUES ('109', '8.2', '8.794');
INSERT INTO `volume` VALUES ('109', '8.4', '9.002');
INSERT INTO `volume` VALUES ('109', '8.6', '9.21');
INSERT INTO `volume` VALUES ('109', '8.8', '9.418');
INSERT INTO `volume` VALUES ('109', '9', '9.625');
INSERT INTO `volume` VALUES ('109', '9.2', '9.832');
INSERT INTO `volume` VALUES ('109', '9.4', '10.038');
INSERT INTO `volume` VALUES ('109', '9.6', '10.244');
INSERT INTO `volume` VALUES ('109', '9.8', '10.45');
INSERT INTO `volume` VALUES ('109', '10', '10.656');
INSERT INTO `volume` VALUES ('109', '10.2', null);
INSERT INTO `volume` VALUES ('109', '10.4', null);
INSERT INTO `volume` VALUES ('109', '10.6', null);
INSERT INTO `volume` VALUES ('109', '10.8', null);
INSERT INTO `volume` VALUES ('109', '11', null);
INSERT INTO `volume` VALUES ('109', '11.2', null);
INSERT INTO `volume` VALUES ('109', '11.4', null);
INSERT INTO `volume` VALUES ('109', '11.6', null);
INSERT INTO `volume` VALUES ('109', '11.8', null);
INSERT INTO `volume` VALUES ('109', '12', null);
INSERT INTO `volume` VALUES ('109', '12.2', null);
INSERT INTO `volume` VALUES ('109', '12.4', null);
INSERT INTO `volume` VALUES ('109', '12.6', null);
INSERT INTO `volume` VALUES ('109', '12.8', null);
INSERT INTO `volume` VALUES ('109', '13', null);
INSERT INTO `volume` VALUES ('109', '13.2', null);
INSERT INTO `volume` VALUES ('109', '13.4', null);
INSERT INTO `volume` VALUES ('109', '13.6', null);
INSERT INTO `volume` VALUES ('109', '13.8', null);
INSERT INTO `volume` VALUES ('109', '14', null);
INSERT INTO `volume` VALUES ('110', '2', '2.064');
INSERT INTO `volume` VALUES ('110', '2.2', '2.283');
INSERT INTO `volume` VALUES ('110', '2.4', '2.504');
INSERT INTO `volume` VALUES ('110', '2.6', '2.727');
INSERT INTO `volume` VALUES ('110', '2.8', '2.95');
INSERT INTO `volume` VALUES ('110', '3', '3.175');
INSERT INTO `volume` VALUES ('110', '3.2', '3.4');
INSERT INTO `volume` VALUES ('110', '3.4', '3.626');
INSERT INTO `volume` VALUES ('110', '3.6', '3.853');
INSERT INTO `volume` VALUES ('110', '3.8', '4.08');
INSERT INTO `volume` VALUES ('110', '4', '4.306');
INSERT INTO `volume` VALUES ('110', '4.2', '4.533');
INSERT INTO `volume` VALUES ('110', '4.4', '4.76');
INSERT INTO `volume` VALUES ('110', '4.6', '4.987');
INSERT INTO `volume` VALUES ('110', '4.8', '5.213');
INSERT INTO `volume` VALUES ('110', '5', '5.439');
INSERT INTO `volume` VALUES ('110', '5.2', '5.664');
INSERT INTO `volume` VALUES ('110', '5.4', '5.889');
INSERT INTO `volume` VALUES ('110', '5.6', '6.113');
INSERT INTO `volume` VALUES ('110', '5.8', '6.337');
INSERT INTO `volume` VALUES ('110', '6', '6.559');
INSERT INTO `volume` VALUES ('110', '6.2', '6.781');
INSERT INTO `volume` VALUES ('110', '6.4', '7.002');
INSERT INTO `volume` VALUES ('110', '6.6', '7.222');
INSERT INTO `volume` VALUES ('110', '6.8', '7.441');
INSERT INTO `volume` VALUES ('110', '7', '7.659');
INSERT INTO `volume` VALUES ('110', '7.2', '7.877');
INSERT INTO `volume` VALUES ('110', '7.4', '8.093');
INSERT INTO `volume` VALUES ('110', '7.6', '8.308');
INSERT INTO `volume` VALUES ('110', '7.8', '8.523');
INSERT INTO `volume` VALUES ('110', '8', '8.737');
INSERT INTO `volume` VALUES ('110', '8.2', '8.95');
INSERT INTO `volume` VALUES ('110', '8.4', '9.162');
INSERT INTO `volume` VALUES ('110', '8.6', '9.374');
INSERT INTO `volume` VALUES ('110', '8.8', '9.585');
INSERT INTO `volume` VALUES ('110', '9', '9.795');
INSERT INTO `volume` VALUES ('110', '9.2', '10.005');
INSERT INTO `volume` VALUES ('110', '9.4', '10.215');
INSERT INTO `volume` VALUES ('110', '9.6', '10.425');
INSERT INTO `volume` VALUES ('110', '9.8', '10.634');
INSERT INTO `volume` VALUES ('110', '10', '10.843');
INSERT INTO `volume` VALUES ('110', '10.2', null);
INSERT INTO `volume` VALUES ('110', '10.4', null);
INSERT INTO `volume` VALUES ('110', '10.6', null);
INSERT INTO `volume` VALUES ('110', '10.8', null);
INSERT INTO `volume` VALUES ('110', '11', null);
INSERT INTO `volume` VALUES ('110', '11.2', null);
INSERT INTO `volume` VALUES ('110', '11.4', null);
INSERT INTO `volume` VALUES ('110', '11.6', null);
INSERT INTO `volume` VALUES ('110', '11.8', null);
INSERT INTO `volume` VALUES ('110', '12', null);
INSERT INTO `volume` VALUES ('110', '12.2', null);
INSERT INTO `volume` VALUES ('110', '12.4', null);
INSERT INTO `volume` VALUES ('110', '12.6', null);
INSERT INTO `volume` VALUES ('110', '12.8', null);
INSERT INTO `volume` VALUES ('110', '13', null);
INSERT INTO `volume` VALUES ('110', '13.2', null);
INSERT INTO `volume` VALUES ('110', '13.4', null);
INSERT INTO `volume` VALUES ('110', '13.6', null);
INSERT INTO `volume` VALUES ('110', '13.8', null);
INSERT INTO `volume` VALUES ('110', '14', null);
INSERT INTO `volume` VALUES ('111', '2', '2.101');
INSERT INTO `volume` VALUES ('111', '2.2', '2.325');
INSERT INTO `volume` VALUES ('111', '2.4', '2.55');
INSERT INTO `volume` VALUES ('111', '2.6', '2.776');
INSERT INTO `volume` VALUES ('111', '2.8', '3.004');
INSERT INTO `volume` VALUES ('111', '3', '3.232');
INSERT INTO `volume` VALUES ('111', '3.2', '3.462');
INSERT INTO `volume` VALUES ('111', '3.4', '3.692');
INSERT INTO `volume` VALUES ('111', '3.6', '3.922');
INSERT INTO `volume` VALUES ('111', '3.8', '4.153');
INSERT INTO `volume` VALUES ('111', '4', '4.384');
INSERT INTO `volume` VALUES ('111', '4.2', '4.615');
INSERT INTO `volume` VALUES ('111', '4.4', '4.846');
INSERT INTO `volume` VALUES ('111', '4.6', '5.077');
INSERT INTO `volume` VALUES ('111', '4.8', '5.307');
INSERT INTO `volume` VALUES ('111', '5', '5.537');
INSERT INTO `volume` VALUES ('111', '5.2', '5.766');
INSERT INTO `volume` VALUES ('111', '5.4', '5.995');
INSERT INTO `volume` VALUES ('111', '5.6', '6.223');
INSERT INTO `volume` VALUES ('111', '5.8', '6.45');
INSERT INTO `volume` VALUES ('111', '6', '6.676');
INSERT INTO `volume` VALUES ('111', '6.2', '6.902');
INSERT INTO `volume` VALUES ('111', '6.4', '7.127');
INSERT INTO `volume` VALUES ('111', '6.6', '7.35');
INSERT INTO `volume` VALUES ('111', '6.8', '7.573');
INSERT INTO `volume` VALUES ('111', '7', '7.795');
INSERT INTO `volume` VALUES ('111', '7.2', '8.016');
INSERT INTO `volume` VALUES ('111', '7.4', '8.236');
INSERT INTO `volume` VALUES ('111', '7.6', '8.455');
INSERT INTO `volume` VALUES ('111', '7.8', '8.674');
INSERT INTO `volume` VALUES ('111', '8', '8.891');
INSERT INTO `volume` VALUES ('111', '8.2', '9.108');
INSERT INTO `volume` VALUES ('111', '8.4', '9.324');
INSERT INTO `volume` VALUES ('111', '8.6', '9.539');
INSERT INTO `volume` VALUES ('111', '8.8', '9.753');
INSERT INTO `volume` VALUES ('111', '9', '9.967');
INSERT INTO `volume` VALUES ('111', '9.2', '10.181');
INSERT INTO `volume` VALUES ('111', '9.4', '10.394');
INSERT INTO `volume` VALUES ('111', '9.6', '10.607');
INSERT INTO `volume` VALUES ('111', '9.8', '10.82');
INSERT INTO `volume` VALUES ('111', '10', '11.033');
INSERT INTO `volume` VALUES ('111', '10.2', null);
INSERT INTO `volume` VALUES ('111', '10.4', null);
INSERT INTO `volume` VALUES ('111', '10.6', null);
INSERT INTO `volume` VALUES ('111', '10.8', null);
INSERT INTO `volume` VALUES ('111', '11', null);
INSERT INTO `volume` VALUES ('111', '11.2', null);
INSERT INTO `volume` VALUES ('111', '11.4', null);
INSERT INTO `volume` VALUES ('111', '11.6', null);
INSERT INTO `volume` VALUES ('111', '11.8', null);
INSERT INTO `volume` VALUES ('111', '12', null);
INSERT INTO `volume` VALUES ('111', '12.2', null);
INSERT INTO `volume` VALUES ('111', '12.4', null);
INSERT INTO `volume` VALUES ('111', '12.6', null);
INSERT INTO `volume` VALUES ('111', '12.8', null);
INSERT INTO `volume` VALUES ('111', '13', null);
INSERT INTO `volume` VALUES ('111', '13.2', null);
INSERT INTO `volume` VALUES ('111', '13.4', null);
INSERT INTO `volume` VALUES ('111', '13.6', null);
INSERT INTO `volume` VALUES ('111', '13.8', null);
INSERT INTO `volume` VALUES ('111', '14', null);
INSERT INTO `volume` VALUES ('112', '2', '2.139');
INSERT INTO `volume` VALUES ('112', '2.2', '2.367');
INSERT INTO `volume` VALUES ('112', '2.4', '2.596');
INSERT INTO `volume` VALUES ('112', '2.6', '2.826');
INSERT INTO `volume` VALUES ('112', '2.8', '3.058');
INSERT INTO `volume` VALUES ('112', '3', '3.29');
INSERT INTO `volume` VALUES ('112', '3.2', '3.524');
INSERT INTO `volume` VALUES ('112', '3.4', '3.758');
INSERT INTO `volume` VALUES ('112', '3.6', '3.992');
INSERT INTO `volume` VALUES ('112', '3.8', '4.227');
INSERT INTO `volume` VALUES ('112', '4', '4.462');
INSERT INTO `volume` VALUES ('112', '4.2', '4.697');
INSERT INTO `volume` VALUES ('112', '4.4', '4.932');
INSERT INTO `volume` VALUES ('112', '4.6', '5.167');
INSERT INTO `volume` VALUES ('112', '4.8', '5.401');
INSERT INTO `volume` VALUES ('112', '5', '5.635');
INSERT INTO `volume` VALUES ('112', '5.2', '5.868');
INSERT INTO `volume` VALUES ('112', '5.4', '6.101');
INSERT INTO `volume` VALUES ('112', '5.6', '6.333');
INSERT INTO `volume` VALUES ('112', '5.8', '6.564');
INSERT INTO `volume` VALUES ('112', '6', '6.794');
INSERT INTO `volume` VALUES ('112', '6.2', '7.024');
INSERT INTO `volume` VALUES ('112', '6.4', '7.253');
INSERT INTO `volume` VALUES ('112', '6.6', '7.48');
INSERT INTO `volume` VALUES ('112', '6.8', '7.707');
INSERT INTO `volume` VALUES ('112', '7', '7.932');
INSERT INTO `volume` VALUES ('112', '7.2', '8.157');
INSERT INTO `volume` VALUES ('112', '7.4', '8.381');
INSERT INTO `volume` VALUES ('112', '7.6', '8.604');
INSERT INTO `volume` VALUES ('112', '7.8', '8.826');
INSERT INTO `volume` VALUES ('112', '8', '9.047');
INSERT INTO `volume` VALUES ('112', '8.2', '9.267');
INSERT INTO `volume` VALUES ('112', '8.4', '9.486');
INSERT INTO `volume` VALUES ('112', '8.6', '9.705');
INSERT INTO `volume` VALUES ('112', '8.8', '9.923');
INSERT INTO `volume` VALUES ('112', '9', '10.14');
INSERT INTO `volume` VALUES ('112', '9.2', '10.358');
INSERT INTO `volume` VALUES ('112', '9.4', '10.574');
INSERT INTO `volume` VALUES ('112', '9.6', '10.791');
INSERT INTO `volume` VALUES ('112', '9.8', '11.007');
INSERT INTO `volume` VALUES ('112', '10', '11.223');
INSERT INTO `volume` VALUES ('112', '10.2', null);
INSERT INTO `volume` VALUES ('112', '10.4', null);
INSERT INTO `volume` VALUES ('112', '10.6', null);
INSERT INTO `volume` VALUES ('112', '10.8', null);
INSERT INTO `volume` VALUES ('112', '11', null);
INSERT INTO `volume` VALUES ('112', '11.2', null);
INSERT INTO `volume` VALUES ('112', '11.4', null);
INSERT INTO `volume` VALUES ('112', '11.6', null);
INSERT INTO `volume` VALUES ('112', '11.8', null);
INSERT INTO `volume` VALUES ('112', '12', null);
INSERT INTO `volume` VALUES ('112', '12.2', null);
INSERT INTO `volume` VALUES ('112', '12.4', null);
INSERT INTO `volume` VALUES ('112', '12.6', null);
INSERT INTO `volume` VALUES ('112', '12.8', null);
INSERT INTO `volume` VALUES ('112', '13', null);
INSERT INTO `volume` VALUES ('112', '13.2', null);
INSERT INTO `volume` VALUES ('112', '13.4', null);
INSERT INTO `volume` VALUES ('112', '13.6', null);
INSERT INTO `volume` VALUES ('112', '13.8', null);
INSERT INTO `volume` VALUES ('112', '14', null);
INSERT INTO `volume` VALUES ('113', '2', '2.177');
INSERT INTO `volume` VALUES ('113', '2.2', '2.409');
INSERT INTO `volume` VALUES ('113', '2.4', '2.642');
INSERT INTO `volume` VALUES ('113', '2.6', '2.876');
INSERT INTO `volume` VALUES ('113', '2.8', '3.112');
INSERT INTO `volume` VALUES ('113', '3', '3.349');
INSERT INTO `volume` VALUES ('113', '3.2', '3.586');
INSERT INTO `volume` VALUES ('113', '3.4', '3.825');
INSERT INTO `volume` VALUES ('113', '3.6', '4.063');
INSERT INTO `volume` VALUES ('113', '3.8', '4.302');
INSERT INTO `volume` VALUES ('113', '4', '4.541');
INSERT INTO `volume` VALUES ('113', '4.2', '4.78');
INSERT INTO `volume` VALUES ('113', '4.4', '5.019');
INSERT INTO `volume` VALUES ('113', '4.6', '5.259');
INSERT INTO `volume` VALUES ('113', '4.8', '5.496');
INSERT INTO `volume` VALUES ('113', '5', '5.734');
INSERT INTO `volume` VALUES ('113', '5.2', '5.972');
INSERT INTO `volume` VALUES ('113', '5.4', '6.208');
INSERT INTO `volume` VALUES ('113', '5.6', '6.444');
INSERT INTO `volume` VALUES ('113', '5.8', '6.679');
INSERT INTO `volume` VALUES ('113', '6', '6.914');
INSERT INTO `volume` VALUES ('113', '6.2', '7.147');
INSERT INTO `volume` VALUES ('113', '6.4', '7.379');
INSERT INTO `volume` VALUES ('113', '6.6', '7.611');
INSERT INTO `volume` VALUES ('113', '6.8', '7.841');
INSERT INTO `volume` VALUES ('113', '7', '8.071');
INSERT INTO `volume` VALUES ('113', '7.2', '8.299');
INSERT INTO `volume` VALUES ('113', '7.4', '8.527');
INSERT INTO `volume` VALUES ('113', '7.6', '8.753');
INSERT INTO `volume` VALUES ('113', '7.8', '8.979');
INSERT INTO `volume` VALUES ('113', '8', '9.203');
INSERT INTO `volume` VALUES ('113', '8.2', '9.427');
INSERT INTO `volume` VALUES ('113', '8.4', '9.65');
INSERT INTO `volume` VALUES ('113', '8.6', '9.873');
INSERT INTO `volume` VALUES ('113', '8.8', '10.094');
INSERT INTO `volume` VALUES ('113', '9', '10.315');
INSERT INTO `volume` VALUES ('113', '9.2', '10.536');
INSERT INTO `volume` VALUES ('113', '9.4', '10.756');
INSERT INTO `volume` VALUES ('113', '9.6', '10.976');
INSERT INTO `volume` VALUES ('113', '9.8', '11.196');
INSERT INTO `volume` VALUES ('113', '10', '11.416');
INSERT INTO `volume` VALUES ('113', '10.2', null);
INSERT INTO `volume` VALUES ('113', '10.4', null);
INSERT INTO `volume` VALUES ('113', '10.6', null);
INSERT INTO `volume` VALUES ('113', '10.8', null);
INSERT INTO `volume` VALUES ('113', '11', null);
INSERT INTO `volume` VALUES ('113', '11.2', null);
INSERT INTO `volume` VALUES ('113', '11.4', null);
INSERT INTO `volume` VALUES ('113', '11.6', null);
INSERT INTO `volume` VALUES ('113', '11.8', null);
INSERT INTO `volume` VALUES ('113', '12', null);
INSERT INTO `volume` VALUES ('113', '12.2', null);
INSERT INTO `volume` VALUES ('113', '12.4', null);
INSERT INTO `volume` VALUES ('113', '12.6', null);
INSERT INTO `volume` VALUES ('113', '12.8', null);
INSERT INTO `volume` VALUES ('113', '13', null);
INSERT INTO `volume` VALUES ('113', '13.2', null);
INSERT INTO `volume` VALUES ('113', '13.4', null);
INSERT INTO `volume` VALUES ('113', '13.6', null);
INSERT INTO `volume` VALUES ('113', '13.8', null);
INSERT INTO `volume` VALUES ('113', '14', null);
INSERT INTO `volume` VALUES ('114', '2', '2.216');
INSERT INTO `volume` VALUES ('114', '2.2', '2.451');
INSERT INTO `volume` VALUES ('114', '2.4', '2.688');
INSERT INTO `volume` VALUES ('114', '2.6', '2.927');
INSERT INTO `volume` VALUES ('114', '2.8', '3.167');
INSERT INTO `volume` VALUES ('114', '3', '3.408');
INSERT INTO `volume` VALUES ('114', '3.2', '3.65');
INSERT INTO `volume` VALUES ('114', '3.4', '3.892');
INSERT INTO `volume` VALUES ('114', '3.6', '4.135');
INSERT INTO `volume` VALUES ('114', '3.8', '4.378');
INSERT INTO `volume` VALUES ('114', '4', '4.621');
INSERT INTO `volume` VALUES ('114', '4.2', '4.864');
INSERT INTO `volume` VALUES ('114', '4.4', '5.107');
INSERT INTO `volume` VALUES ('114', '4.6', '5.35');
INSERT INTO `volume` VALUES ('114', '4.8', '5.592');
INSERT INTO `volume` VALUES ('114', '5', '5.834');
INSERT INTO `volume` VALUES ('114', '5.2', '6.076');
INSERT INTO `volume` VALUES ('114', '5.4', '6.316');
INSERT INTO `volume` VALUES ('114', '5.6', '6.556');
INSERT INTO `volume` VALUES ('114', '5.8', '6.795');
INSERT INTO `volume` VALUES ('114', '6', '7.034');
INSERT INTO `volume` VALUES ('114', '6.2', '7.271');
INSERT INTO `volume` VALUES ('114', '6.4', '7.507');
INSERT INTO `volume` VALUES ('114', '6.6', '7.743');
INSERT INTO `volume` VALUES ('114', '6.8', '7.977');
INSERT INTO `volume` VALUES ('114', '7', '8.21');
INSERT INTO `volume` VALUES ('114', '7.2', '8.443');
INSERT INTO `volume` VALUES ('114', '7.4', '8.674');
INSERT INTO `volume` VALUES ('114', '7.6', '8.904');
INSERT INTO `volume` VALUES ('114', '7.8', '9.133');
INSERT INTO `volume` VALUES ('114', '8', '9.362');
INSERT INTO `volume` VALUES ('114', '8.2', '9.589');
INSERT INTO `volume` VALUES ('114', '8.4', '9.8416');
INSERT INTO `volume` VALUES ('114', '8.6', '10.042');
INSERT INTO `volume` VALUES ('114', '8.8', '10.267');
INSERT INTO `volume` VALUES ('114', '9', '10.492');
INSERT INTO `volume` VALUES ('114', '9.2', '10.716');
INSERT INTO `volume` VALUES ('114', '9.4', '10.94');
INSERT INTO `volume` VALUES ('114', '9.6', '11.163');
INSERT INTO `volume` VALUES ('114', '9.8', '11.386');
INSERT INTO `volume` VALUES ('114', '10', '11.61');
INSERT INTO `volume` VALUES ('114', '10.2', null);
INSERT INTO `volume` VALUES ('114', '10.4', null);
INSERT INTO `volume` VALUES ('114', '10.6', null);
INSERT INTO `volume` VALUES ('114', '10.8', null);
INSERT INTO `volume` VALUES ('114', '11', null);
INSERT INTO `volume` VALUES ('114', '11.2', null);
INSERT INTO `volume` VALUES ('114', '11.4', null);
INSERT INTO `volume` VALUES ('114', '11.6', null);
INSERT INTO `volume` VALUES ('114', '11.8', null);
INSERT INTO `volume` VALUES ('114', '12', null);
INSERT INTO `volume` VALUES ('114', '12.2', null);
INSERT INTO `volume` VALUES ('114', '12.4', null);
INSERT INTO `volume` VALUES ('114', '12.6', null);
INSERT INTO `volume` VALUES ('114', '12.8', null);
INSERT INTO `volume` VALUES ('114', '13', null);
INSERT INTO `volume` VALUES ('114', '13.2', null);
INSERT INTO `volume` VALUES ('114', '13.4', null);
INSERT INTO `volume` VALUES ('114', '13.6', null);
INSERT INTO `volume` VALUES ('114', '13.8', null);
INSERT INTO `volume` VALUES ('114', '14', null);
INSERT INTO `volume` VALUES ('115', '2', '2.254');
INSERT INTO `volume` VALUES ('115', '2.2', '2.494');
INSERT INTO `volume` VALUES ('115', '2.4', '2.736');
INSERT INTO `volume` VALUES ('115', '2.6', '2.978');
INSERT INTO `volume` VALUES ('115', '2.8', '3.222');
INSERT INTO `volume` VALUES ('115', '3', '3.467');
INSERT INTO `volume` VALUES ('115', '3.2', '3.713');
INSERT INTO `volume` VALUES ('115', '3.4', '3.96');
INSERT INTO `volume` VALUES ('115', '3.6', '4.207');
INSERT INTO `volume` VALUES ('115', '3.8', '4.454');
INSERT INTO `volume` VALUES ('115', '4', '4.701');
INSERT INTO `volume` VALUES ('115', '4.2', '4.949');
INSERT INTO `volume` VALUES ('115', '4.4', '5.196');
INSERT INTO `volume` VALUES ('115', '4.6', '5.444');
INSERT INTO `volume` VALUES ('115', '4.8', '5.689');
INSERT INTO `volume` VALUES ('115', '5', '5.935');
INSERT INTO `volume` VALUES ('115', '5.2', '6.181');
INSERT INTO `volume` VALUES ('115', '5.4', '6.426');
INSERT INTO `volume` VALUES ('115', '5.6', '6.67');
INSERT INTO `volume` VALUES ('115', '5.8', '6.913');
INSERT INTO `volume` VALUES ('115', '6', '7.155');
INSERT INTO `volume` VALUES ('115', '6.2', '7.396');
INSERT INTO `volume` VALUES ('115', '6.4', '7.637');
INSERT INTO `volume` VALUES ('115', '6.6', '7.876');
INSERT INTO `volume` VALUES ('115', '6.8', '8.114');
INSERT INTO `volume` VALUES ('115', '7', '8.351');
INSERT INTO `volume` VALUES ('115', '7.2', '8.587');
INSERT INTO `volume` VALUES ('115', '7.4', '8.822');
INSERT INTO `volume` VALUES ('115', '7.6', '9.056');
INSERT INTO `volume` VALUES ('115', '7.8', '9.289');
INSERT INTO `volume` VALUES ('115', '8', '9.521');
INSERT INTO `volume` VALUES ('115', '8.2', '9.753');
INSERT INTO `volume` VALUES ('115', '8.4', '9.983');
INSERT INTO `volume` VALUES ('115', '8.6', '10.212');
INSERT INTO `volume` VALUES ('115', '8.8', '10.441');
INSERT INTO `volume` VALUES ('115', '9', '10.669');
INSERT INTO `volume` VALUES ('115', '9.2', '10.897');
INSERT INTO `volume` VALUES ('115', '9.4', '11.125');
INSERT INTO `volume` VALUES ('115', '9.6', '11.351');
INSERT INTO `volume` VALUES ('115', '9.8', '11.578');
INSERT INTO `volume` VALUES ('115', '10', '11.805');
INSERT INTO `volume` VALUES ('115', '10.2', null);
INSERT INTO `volume` VALUES ('115', '10.4', null);
INSERT INTO `volume` VALUES ('115', '10.6', null);
INSERT INTO `volume` VALUES ('115', '10.8', null);
INSERT INTO `volume` VALUES ('115', '11', null);
INSERT INTO `volume` VALUES ('115', '11.2', null);
INSERT INTO `volume` VALUES ('115', '11.4', null);
INSERT INTO `volume` VALUES ('115', '11.6', null);
INSERT INTO `volume` VALUES ('115', '11.8', null);
INSERT INTO `volume` VALUES ('115', '12', null);
INSERT INTO `volume` VALUES ('115', '12.2', null);
INSERT INTO `volume` VALUES ('115', '12.4', null);
INSERT INTO `volume` VALUES ('115', '12.6', null);
INSERT INTO `volume` VALUES ('115', '12.8', null);
INSERT INTO `volume` VALUES ('115', '13', null);
INSERT INTO `volume` VALUES ('115', '13.2', null);
INSERT INTO `volume` VALUES ('115', '13.4', null);
INSERT INTO `volume` VALUES ('115', '13.6', null);
INSERT INTO `volume` VALUES ('115', '13.8', null);
INSERT INTO `volume` VALUES ('115', '14', null);
INSERT INTO `volume` VALUES ('116', '2', '2.294');
INSERT INTO `volume` VALUES ('116', '2.2', '2.537');
INSERT INTO `volume` VALUES ('116', '2.4', '2.783');
INSERT INTO `volume` VALUES ('116', '2.6', '3.03');
INSERT INTO `volume` VALUES ('116', '2.8', '3.278');
INSERT INTO `volume` VALUES ('116', '3', '3.527');
INSERT INTO `volume` VALUES ('116', '3.2', '3.777');
INSERT INTO `volume` VALUES ('116', '3.4', '4.028');
INSERT INTO `volume` VALUES ('116', '3.6', '4.279');
INSERT INTO `volume` VALUES ('116', '3.8', '4.531');
INSERT INTO `volume` VALUES ('116', '4', '4.782');
INSERT INTO `volume` VALUES ('116', '4.2', '5.034');
INSERT INTO `volume` VALUES ('116', '4.4', '5.285');
INSERT INTO `volume` VALUES ('116', '4.6', '5.536');
INSERT INTO `volume` VALUES ('116', '4.8', '5.787');
INSERT INTO `volume` VALUES ('116', '5', '6.037');
INSERT INTO `volume` VALUES ('116', '5.2', '6.287');
INSERT INTO `volume` VALUES ('116', '5.4', '6.536');
INSERT INTO `volume` VALUES ('116', '5.6', '6.784');
INSERT INTO `volume` VALUES ('116', '5.8', '7.031');
INSERT INTO `volume` VALUES ('116', '6', '7.277');
INSERT INTO `volume` VALUES ('116', '6.2', '7.522');
INSERT INTO `volume` VALUES ('116', '6.4', '7.767');
INSERT INTO `volume` VALUES ('116', '6.6', '8.01');
INSERT INTO `volume` VALUES ('116', '6.8', '8.252');
INSERT INTO `volume` VALUES ('116', '7', '8.493');
INSERT INTO `volume` VALUES ('116', '7.2', '8.733');
INSERT INTO `volume` VALUES ('116', '7.4', '8.972');
INSERT INTO `volume` VALUES ('116', '7.6', '9.21');
INSERT INTO `volume` VALUES ('116', '7.8', '9.446');
INSERT INTO `volume` VALUES ('116', '8', '9.682');
INSERT INTO `volume` VALUES ('116', '8.2', '9.917');
INSERT INTO `volume` VALUES ('116', '8.4', '10.151');
INSERT INTO `volume` VALUES ('116', '8.6', '10.384');
INSERT INTO `volume` VALUES ('116', '8.8', '10.617');
INSERT INTO `volume` VALUES ('116', '9', '10.849');
INSERT INTO `volume` VALUES ('116', '9.2', '11.08');
INSERT INTO `volume` VALUES ('116', '9.4', '11.311');
INSERT INTO `volume` VALUES ('116', '9.6', '11.542');
INSERT INTO `volume` VALUES ('116', '9.8', '11.772');
INSERT INTO `volume` VALUES ('116', '10', '12.002');
INSERT INTO `volume` VALUES ('116', '10.2', null);
INSERT INTO `volume` VALUES ('116', '10.4', null);
INSERT INTO `volume` VALUES ('116', '10.6', null);
INSERT INTO `volume` VALUES ('116', '10.8', null);
INSERT INTO `volume` VALUES ('116', '11', null);
INSERT INTO `volume` VALUES ('116', '11.2', null);
INSERT INTO `volume` VALUES ('116', '11.4', null);
INSERT INTO `volume` VALUES ('116', '11.6', null);
INSERT INTO `volume` VALUES ('116', '11.8', null);
INSERT INTO `volume` VALUES ('116', '12', null);
INSERT INTO `volume` VALUES ('116', '12.2', null);
INSERT INTO `volume` VALUES ('116', '12.4', null);
INSERT INTO `volume` VALUES ('116', '12.6', null);
INSERT INTO `volume` VALUES ('116', '12.8', null);
INSERT INTO `volume` VALUES ('116', '13', null);
INSERT INTO `volume` VALUES ('116', '13.2', null);
INSERT INTO `volume` VALUES ('116', '13.4', null);
INSERT INTO `volume` VALUES ('116', '13.6', null);
INSERT INTO `volume` VALUES ('116', '13.8', null);
INSERT INTO `volume` VALUES ('116', '14', null);
INSERT INTO `volume` VALUES ('117', '2', '2.333');
INSERT INTO `volume` VALUES ('117', '2.2', '2.581');
INSERT INTO `volume` VALUES ('117', '2.4', '2.831');
INSERT INTO `volume` VALUES ('117', '2.6', '3.082');
INSERT INTO `volume` VALUES ('117', '2.8', '3.334');
INSERT INTO `volume` VALUES ('117', '3', '3.588');
INSERT INTO `volume` VALUES ('117', '3.2', '3.842');
INSERT INTO `volume` VALUES ('117', '3.4', '4.097');
INSERT INTO `volume` VALUES ('117', '3.6', '4.353');
INSERT INTO `volume` VALUES ('117', '3.8', '4.608');
INSERT INTO `volume` VALUES ('117', '4', '4.864');
INSERT INTO `volume` VALUES ('117', '4.2', '5.12');
INSERT INTO `volume` VALUES ('117', '4.4', '5.376');
INSERT INTO `volume` VALUES ('117', '4.6', '5.632');
INSERT INTO `volume` VALUES ('117', '4.8', '5.886');
INSERT INTO `volume` VALUES ('117', '5', '6.14');
INSERT INTO `volume` VALUES ('117', '5.2', '6.394');
INSERT INTO `volume` VALUES ('117', '5.4', '6.647');
INSERT INTO `volume` VALUES ('117', '5.6', '6.899');
INSERT INTO `volume` VALUES ('117', '5.8', '7.15');
INSERT INTO `volume` VALUES ('117', '6', '7.4');
INSERT INTO `volume` VALUES ('117', '6.2', '7.65');
INSERT INTO `volume` VALUES ('117', '6.4', '7.898');
INSERT INTO `volume` VALUES ('117', '6.6', '8.145');
INSERT INTO `volume` VALUES ('117', '6.8', '8.391');
INSERT INTO `volume` VALUES ('117', '7', '8.636');
INSERT INTO `volume` VALUES ('117', '7.2', '8.88');
INSERT INTO `volume` VALUES ('117', '7.4', '9.123');
INSERT INTO `volume` VALUES ('117', '7.6', '9.364');
INSERT INTO `volume` VALUES ('117', '7.8', '9.605');
INSERT INTO `volume` VALUES ('117', '8', '9.845');
INSERT INTO `volume` VALUES ('117', '8.2', '10.083');
INSERT INTO `volume` VALUES ('117', '8.4', '10.321');
INSERT INTO `volume` VALUES ('117', '8.6', '10.558');
INSERT INTO `volume` VALUES ('117', '8.8', '10.794');
INSERT INTO `volume` VALUES ('117', '9', '11.03');
INSERT INTO `volume` VALUES ('117', '9.2', '11.265');
INSERT INTO `volume` VALUES ('117', '9.4', '11.499');
INSERT INTO `volume` VALUES ('117', '9.6', '11.733');
INSERT INTO `volume` VALUES ('117', '9.8', '11.967');
INSERT INTO `volume` VALUES ('117', '10', '12.201');
INSERT INTO `volume` VALUES ('117', '10.2', null);
INSERT INTO `volume` VALUES ('117', '10.4', null);
INSERT INTO `volume` VALUES ('117', '10.6', null);
INSERT INTO `volume` VALUES ('117', '10.8', null);
INSERT INTO `volume` VALUES ('117', '11', null);
INSERT INTO `volume` VALUES ('117', '11.2', null);
INSERT INTO `volume` VALUES ('117', '11.4', null);
INSERT INTO `volume` VALUES ('117', '11.6', null);
INSERT INTO `volume` VALUES ('117', '11.8', null);
INSERT INTO `volume` VALUES ('117', '12', null);
INSERT INTO `volume` VALUES ('117', '12.2', null);
INSERT INTO `volume` VALUES ('117', '12.4', null);
INSERT INTO `volume` VALUES ('117', '12.6', null);
INSERT INTO `volume` VALUES ('117', '12.8', null);
INSERT INTO `volume` VALUES ('117', '13', null);
INSERT INTO `volume` VALUES ('117', '13.2', null);
INSERT INTO `volume` VALUES ('117', '13.4', null);
INSERT INTO `volume` VALUES ('117', '13.6', null);
INSERT INTO `volume` VALUES ('117', '13.8', null);
INSERT INTO `volume` VALUES ('117', '14', null);
INSERT INTO `volume` VALUES ('118', '2', '2.373');
INSERT INTO `volume` VALUES ('118', '2.2', '2.625');
INSERT INTO `volume` VALUES ('118', '2.4', '2.879');
INSERT INTO `volume` VALUES ('118', '2.6', '3.135');
INSERT INTO `volume` VALUES ('118', '2.8', '3.391');
INSERT INTO `volume` VALUES ('118', '3', '3.649');
INSERT INTO `volume` VALUES ('118', '3.2', '3.908');
INSERT INTO `volume` VALUES ('118', '3.4', '4.167');
INSERT INTO `volume` VALUES ('118', '3.6', '4.426');
INSERT INTO `volume` VALUES ('118', '3.8', '4.686');
INSERT INTO `volume` VALUES ('118', '4', '4.947');
INSERT INTO `volume` VALUES ('118', '4.2', '5.207');
INSERT INTO `volume` VALUES ('118', '4.4', '5.466');
INSERT INTO `volume` VALUES ('118', '4.6', '5.726');
INSERT INTO `volume` VALUES ('118', '4.8', '5.985');
INSERT INTO `volume` VALUES ('118', '5', '6.244');
INSERT INTO `volume` VALUES ('118', '5.2', '6.502');
INSERT INTO `volume` VALUES ('118', '5.4', '6.759');
INSERT INTO `volume` VALUES ('118', '5.6', '7.015');
INSERT INTO `volume` VALUES ('118', '5.8', '7.27');
INSERT INTO `volume` VALUES ('118', '6', '7.525');
INSERT INTO `volume` VALUES ('118', '6.2', '7.778');
INSERT INTO `volume` VALUES ('118', '6.4', '8.03');
INSERT INTO `volume` VALUES ('118', '6.6', '8.281');
INSERT INTO `volume` VALUES ('118', '6.8', '8.531');
INSERT INTO `volume` VALUES ('118', '7', '8.78');
INSERT INTO `volume` VALUES ('118', '7.2', '9.028');
INSERT INTO `volume` VALUES ('118', '7.4', '9.275');
INSERT INTO `volume` VALUES ('118', '7.6', '9.52');
INSERT INTO `volume` VALUES ('118', '7.8', '9.765');
INSERT INTO `volume` VALUES ('118', '8', '10.008');
INSERT INTO `volume` VALUES ('118', '8.2', '10.251');
INSERT INTO `volume` VALUES ('118', '8.4', '10.492');
INSERT INTO `volume` VALUES ('118', '8.6', '10.733');
INSERT INTO `volume` VALUES ('118', '8.8', '10.973');
INSERT INTO `volume` VALUES ('118', '9', '11.212');
INSERT INTO `volume` VALUES ('118', '9.2', '11.451');
INSERT INTO `volume` VALUES ('118', '9.4', '11.689');
INSERT INTO `volume` VALUES ('118', '9.6', '11.926');
INSERT INTO `volume` VALUES ('118', '9.8', '12.164');
INSERT INTO `volume` VALUES ('118', '10', '12.402');
INSERT INTO `volume` VALUES ('118', '10.2', null);
INSERT INTO `volume` VALUES ('118', '10.4', null);
INSERT INTO `volume` VALUES ('118', '10.6', null);
INSERT INTO `volume` VALUES ('118', '10.8', null);
INSERT INTO `volume` VALUES ('118', '11', null);
INSERT INTO `volume` VALUES ('118', '11.2', null);
INSERT INTO `volume` VALUES ('118', '11.4', null);
INSERT INTO `volume` VALUES ('118', '11.6', null);
INSERT INTO `volume` VALUES ('118', '11.8', null);
INSERT INTO `volume` VALUES ('118', '12', null);
INSERT INTO `volume` VALUES ('118', '12.2', null);
INSERT INTO `volume` VALUES ('118', '12.4', null);
INSERT INTO `volume` VALUES ('118', '12.6', null);
INSERT INTO `volume` VALUES ('118', '12.8', null);
INSERT INTO `volume` VALUES ('118', '13', null);
INSERT INTO `volume` VALUES ('118', '13.2', null);
INSERT INTO `volume` VALUES ('118', '13.4', null);
INSERT INTO `volume` VALUES ('118', '13.6', null);
INSERT INTO `volume` VALUES ('118', '13.8', null);
INSERT INTO `volume` VALUES ('118', '14', null);
INSERT INTO `volume` VALUES ('119', '2', '2.413');
INSERT INTO `volume` VALUES ('119', '2.2', '2.67');
INSERT INTO `volume` VALUES ('119', '2.4', '2.928');
INSERT INTO `volume` VALUES ('119', '2.6', '3.187');
INSERT INTO `volume` VALUES ('119', '2.8', '3.448');
INSERT INTO `volume` VALUES ('119', '3', '3.711');
INSERT INTO `volume` VALUES ('119', '3.2', '3.973');
INSERT INTO `volume` VALUES ('119', '3.4', '4.237');
INSERT INTO `volume` VALUES ('119', '3.6', '4.501');
INSERT INTO `volume` VALUES ('119', '3.8', '4.765');
INSERT INTO `volume` VALUES ('119', '4', '5.03');
INSERT INTO `volume` VALUES ('119', '4.2', '5.294');
INSERT INTO `volume` VALUES ('119', '4.4', '5.558');
INSERT INTO `volume` VALUES ('119', '4.6', '5.822');
INSERT INTO `volume` VALUES ('119', '4.8', '6.085');
INSERT INTO `volume` VALUES ('119', '5', '6.348');
INSERT INTO `volume` VALUES ('119', '5.2', '6.61');
INSERT INTO `volume` VALUES ('119', '5.4', '6.872');
INSERT INTO `volume` VALUES ('119', '5.6', '7.132');
INSERT INTO `volume` VALUES ('119', '5.8', '7.391');
INSERT INTO `volume` VALUES ('119', '6', '7.65');
INSERT INTO `volume` VALUES ('119', '6.2', '7.907');
INSERT INTO `volume` VALUES ('119', '6.4', '8.164');
INSERT INTO `volume` VALUES ('119', '6.6', '8.419');
INSERT INTO `volume` VALUES ('119', '6.8', '8.673');
INSERT INTO `volume` VALUES ('119', '7', '8.926');
INSERT INTO `volume` VALUES ('119', '7.2', '9.178');
INSERT INTO `volume` VALUES ('119', '7.4', '9.428');
INSERT INTO `volume` VALUES ('119', '7.6', '9.678');
INSERT INTO `volume` VALUES ('119', '7.8', '9.926');
INSERT INTO `volume` VALUES ('119', '8', '10.173');
INSERT INTO `volume` VALUES ('119', '8.2', '10.419');
INSERT INTO `volume` VALUES ('119', '8.4', '10.665');
INSERT INTO `volume` VALUES ('119', '8.6', '10.909');
INSERT INTO `volume` VALUES ('119', '8.8', '11.153');
INSERT INTO `volume` VALUES ('119', '9', '11.396');
INSERT INTO `volume` VALUES ('119', '9.2', '11.638');
INSERT INTO `volume` VALUES ('119', '9.4', '11.88');
INSERT INTO `volume` VALUES ('119', '9.6', '12.121');
INSERT INTO `volume` VALUES ('119', '9.8', '12.363');
INSERT INTO `volume` VALUES ('119', '10', '12.604');
INSERT INTO `volume` VALUES ('119', '10.2', null);
INSERT INTO `volume` VALUES ('119', '10.4', null);
INSERT INTO `volume` VALUES ('119', '10.6', null);
INSERT INTO `volume` VALUES ('119', '10.8', null);
INSERT INTO `volume` VALUES ('119', '11', null);
INSERT INTO `volume` VALUES ('119', '11.2', null);
INSERT INTO `volume` VALUES ('119', '11.4', null);
INSERT INTO `volume` VALUES ('119', '11.6', null);
INSERT INTO `volume` VALUES ('119', '11.8', null);
INSERT INTO `volume` VALUES ('119', '12', null);
INSERT INTO `volume` VALUES ('119', '12.2', null);
INSERT INTO `volume` VALUES ('119', '12.4', null);
INSERT INTO `volume` VALUES ('119', '12.6', null);
INSERT INTO `volume` VALUES ('119', '12.8', null);
INSERT INTO `volume` VALUES ('119', '13', null);
INSERT INTO `volume` VALUES ('119', '13.2', null);
INSERT INTO `volume` VALUES ('119', '13.4', null);
INSERT INTO `volume` VALUES ('119', '13.6', null);
INSERT INTO `volume` VALUES ('119', '13.8', null);
INSERT INTO `volume` VALUES ('119', '14', null);
INSERT INTO `volume` VALUES ('120', '2', '2.454');
INSERT INTO `volume` VALUES ('120', '2.2', '2.714');
INSERT INTO `volume` VALUES ('120', '2.4', '2.977');
INSERT INTO `volume` VALUES ('120', '2.6', '3.241');
INSERT INTO `volume` VALUES ('120', '2.8', '3.506');
INSERT INTO `volume` VALUES ('120', '3', '3.773');
INSERT INTO `volume` VALUES ('120', '3.2', '4.04');
INSERT INTO `volume` VALUES ('120', '3.4', '4.308');
INSERT INTO `volume` VALUES ('120', '3.6', '4.576');
INSERT INTO `volume` VALUES ('120', '3.8', '4.845');
INSERT INTO `volume` VALUES ('120', '4', '5.113');
INSERT INTO `volume` VALUES ('120', '4.2', '5.382');
INSERT INTO `volume` VALUES ('120', '4.4', '5.651');
INSERT INTO `volume` VALUES ('120', '4.6', '5.919');
INSERT INTO `volume` VALUES ('120', '4.8', '6.186');
INSERT INTO `volume` VALUES ('120', '5', '6.453');
INSERT INTO `volume` VALUES ('120', '5.2', '6.72');
INSERT INTO `volume` VALUES ('120', '5.4', '6.985');
INSERT INTO `volume` VALUES ('120', '5.6', '7.25');
INSERT INTO `volume` VALUES ('120', '5.8', '7.514');
INSERT INTO `volume` VALUES ('120', '6', '7.776');
INSERT INTO `volume` VALUES ('120', '6.2', '8.038');
INSERT INTO `volume` VALUES ('120', '6.4', '8.298');
INSERT INTO `volume` VALUES ('120', '6.6', '8.558');
INSERT INTO `volume` VALUES ('120', '6.8', '8.816');
INSERT INTO `volume` VALUES ('120', '7', '9.073');
INSERT INTO `volume` VALUES ('120', '7.2', '9.328');
INSERT INTO `volume` VALUES ('120', '7.4', '9.583');
INSERT INTO `volume` VALUES ('120', '7.6', '9.836');
INSERT INTO `volume` VALUES ('120', '7.8', '10.088');
INSERT INTO `volume` VALUES ('120', '8', '10.339');
INSERT INTO `volume` VALUES ('120', '8.2', '10.59');
INSERT INTO `volume` VALUES ('120', '8.4', '10.839');
INSERT INTO `volume` VALUES ('120', '8.6', '11.087');
INSERT INTO `volume` VALUES ('120', '8.8', '11.334');
INSERT INTO `volume` VALUES ('120', '9', '11.581');
INSERT INTO `volume` VALUES ('120', '9.2', '11.827');
INSERT INTO `volume` VALUES ('120', '9.4', '12.073');
INSERT INTO `volume` VALUES ('120', '9.6', '12.318');
INSERT INTO `volume` VALUES ('120', '9.8', '12.563');
INSERT INTO `volume` VALUES ('120', '10', '12.808');
INSERT INTO `volume` VALUES ('120', '10.2', null);
INSERT INTO `volume` VALUES ('120', '10.4', null);
INSERT INTO `volume` VALUES ('120', '10.6', null);
INSERT INTO `volume` VALUES ('120', '10.8', null);
INSERT INTO `volume` VALUES ('120', '11', null);
INSERT INTO `volume` VALUES ('120', '11.2', null);
INSERT INTO `volume` VALUES ('120', '11.4', null);
INSERT INTO `volume` VALUES ('120', '11.6', null);
INSERT INTO `volume` VALUES ('120', '11.8', null);
INSERT INTO `volume` VALUES ('120', '12', null);
INSERT INTO `volume` VALUES ('120', '12.2', null);
INSERT INTO `volume` VALUES ('120', '12.4', null);
INSERT INTO `volume` VALUES ('120', '12.6', null);
INSERT INTO `volume` VALUES ('120', '12.8', null);
INSERT INTO `volume` VALUES ('120', '13', null);
INSERT INTO `volume` VALUES ('120', '13.2', null);
INSERT INTO `volume` VALUES ('120', '13.4', null);
INSERT INTO `volume` VALUES ('120', '13.6', null);
INSERT INTO `volume` VALUES ('120', '13.8', null);
INSERT INTO `volume` VALUES ('120', '14', null);

-- ----------------------------
-- Table structure for work
-- ----------------------------
DROP TABLE IF EXISTS `work`;
CREATE TABLE `work` (
  `workid` double NOT NULL,
  PRIMARY KEY (`workid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of work
-- ----------------------------
INSERT INTO `work` VALUES ('2');
INSERT INTO `work` VALUES ('5');

-- ----------------------------
-- Table structure for workpage
-- ----------------------------
DROP TABLE IF EXISTS `workpage`;
CREATE TABLE `workpage` (
  `workid` double NOT NULL,
  `cutNum` double NOT NULL,
  `cutdate` datetime NOT NULL,
  `cutSite` varchar(100) CHARACTER SET utf8 NOT NULL,
  `checkSite` varchar(255) CHARACTER SET utf8 NOT NULL,
  `carNumber` varchar(100) CHARACTER SET utf8 NOT NULL,
  `surveyor` varchar(100) CHARACTER SET utf8 NOT NULL,
  `forester` varchar(100) CHARACTER SET utf8 NOT NULL,
  `woodmanage` varchar(100) CHARACTER SET utf8 NOT NULL,
  `batchNum` double NOT NULL,
  PRIMARY KEY (`workid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of workpage
-- ----------------------------
INSERT INTO `workpage` VALUES ('1', '999', '2020-06-20 00:00:00', '将乐林厂', '福清', '闽A313', '张三', '你好', '王二', '1');
INSERT INTO `workpage` VALUES ('103', '999', '2020-06-01 00:00:00', '将乐林厂', '将乐眉山', '闽A313', '高振赫', '李四', '王二', '1');
INSERT INTO `workpage` VALUES ('104', '999', '2020-04-30 00:00:00', '将乐林厂', '将乐眉山', '闽A313', '高振赫', '李四', '王二', '1');
INSERT INTO `workpage` VALUES ('105', '999', '2020-06-03 00:00:00', '将乐林厂', '福清', '闽A313', '高振赫', '李四', '王二', '1');
INSERT INTO `workpage` VALUES ('106', '999', '2020-05-03 00:00:00', '将乐林厂', '将乐眉山', '闽A313', '高振赫', '李四', '王二', '1');
INSERT INTO `workpage` VALUES ('107', '113', '2020-02-07 00:00:00', '将乐林厂', '将乐眉山', '闽A313', '高振赫', '李四', '张三', '1');
INSERT INTO `workpage` VALUES ('108', '999', '2020-03-12 00:00:00', '将乐林厂', '将乐眉山', '闽A313', '张三', '李四', '王二', '1');
INSERT INTO `workpage` VALUES ('109', '1234', '2020-04-10 00:00:00', '将乐林厂', '将乐眉山', '闽A313', '张三', '李四', '王二', '1');
INSERT INTO `workpage` VALUES ('125', '999', '2020-06-26 00:00:00', '将乐林厂', '将乐眉山', '闽A313', '高振赫', '李四', '张三', '1');
INSERT INTO `workpage` VALUES ('1245', '999', '2020-01-01 00:00:00', '将乐林厂', '将乐眉山', '闽A313', '张三', '李四', '王二', '1');
