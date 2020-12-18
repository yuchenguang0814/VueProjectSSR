/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50726
Source Host           : localhost:3306
Source Database       : vueprojectdate

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2020-12-18 15:23:31
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `banners`
-- ----------------------------
DROP TABLE IF EXISTS `banners`;
CREATE TABLE `banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of banners
-- ----------------------------
INSERT INTO `banners` VALUES ('7', '/uploads/banner/7c56292edf9dbeb802a34af3ddabc09d[1]_2020_11_3_15_42.jpg');
INSERT INTO `banners` VALUES ('8', '/uploads/banner/e04854781d4f6794f54abfcff77e8e8f[1]_2020_11_3_15_43.jpg');
INSERT INTO `banners` VALUES ('1', '/uploads/banner/5b6da22a89ba295068203d04364b0412[1]_2020_11_3_15_44.jpg');

-- ----------------------------
-- Table structure for `cases`
-- ----------------------------
DROP TABLE IF EXISTS `cases`;
CREATE TABLE `cases` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `caseImage` varchar(255) DEFAULT NULL,
  `caseName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cases
-- ----------------------------
INSERT INTO `cases` VALUES ('1', 'http://www.qizhong114.com/uploads/images/20200710/9f4f01731fc0e24562137565d917c05b.jpg', '轨道交通起重机应用');
INSERT INTO `cases` VALUES ('2', 'http://www.qizhong114.com/uploads/images/20200704/7813f3c3c4a551d468f25f6127f226ad.jpg', '建材行业起重机应用');
INSERT INTO `cases` VALUES ('3', 'http://www.qizhong114.com/uploads/images/20200704/9751dd1be1a8a15c96c415b8478d6073.jpg', '冶金铸造熔炼起重机应用');
INSERT INTO `cases` VALUES ('4', 'http://www.qizhong114.com/uploads/images/20200715/b8fe86826e4155f7b2db00b880107488.png', '航天航空起重机应用');
INSERT INTO `cases` VALUES ('5', 'http://www.qizhong114.com/uploads/images/20200715/f726e4e844fea5c39b151e06c89925c5.jpg', '能源行业起重机应用');

-- ----------------------------
-- Table structure for `category`
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `pageId` int(11) NOT NULL,
  `pageName` varchar(255) DEFAULT NULL,
  `pagePath` varchar(255) DEFAULT NULL,
  `pageImage` varchar(255) DEFAULT NULL,
  `pageTitleImage` varchar(255) DEFAULT NULL,
  `pageDescription` varchar(255) DEFAULT NULL,
  `pageKey` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cid`),
  KEY `pageId` (`pageId`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('1', '5', '荣誉中心', '/about/honor', '/uploads/banner/pic_banner_project[1]_2020_11_3_15_14.jpg', 'tit_hongxing', '公司与广大新老客户的合作中积累了丰富的经验，使得公司的产品在同行业中更具独特性，深受广大用户的青睐和好评，并在起重机行业中拥有最高级别的A级生产许可证，公司生产依据ISO9001质量控制体系对产品在其来料、加工过程、整机、出货各个环节严格把关，确保出货产品的性能和质量，多个产品系列已获得欧盟CE认证。经过多年发展公司已先后获“广东省著名商标”、“中国AAA级信用企业”、“中国行业十佳品牌”、“民营科技企业”等荣誉称号.', '荣誉中心');
INSERT INTO `category` VALUES ('2', '5', '工厂实景', '/about/factory', '/uploads/banner/8e4dfed80f42cafb01259428a0a656e2[1]_2020_11_3_15_14.jpg', 'tit_materials', '公司拥有多个大型标准生产车间，按起重机模块流水线生产布局，完全符合ISO国际标准，欧洲标准、中国标准。我们拥有包括40m数控火焰切割生产线，40m数控等离子切割系统、箱型梁成型生产线、多台龙门式自动埋弧焊系统、机器人焊接系统生产线(60m 10台)、整机预组装平台、整梁抛丸处理线等生产装备。', '工厂实景');
INSERT INTO `category` VALUES ('3', '6', '企业新闻', '/news/companyNews', '/uploads/banner/384e0bc58acadc57179f835caaca6453[1]_2020_11_3_15_15.jpg', 'tit_new', '公司是经国家质量监督检验检疫总局颁证认可的起重机制造生产厂家并提供安装、维修、保养为一体的专业性厂家。从1994年至今已有接近30年的起重机设计、制造、安装的丰富经验。', '企业新闻');
INSERT INTO `category` VALUES ('4', '6', '行业新闻', '/news/industryNews', '/uploads/banner/384e0bc58acadc57179f835caaca6453[1]_2020_11_3_15_15.jpg', 'tit_new', '公司把“自主、创新，追求卓越”作为产品的价值核心，把“安全、有效解决问题”作为公司的义务，提供“提供超越顾客期望的起重机产品”，作为市场立足之本。希望通过不断学习和努力，促进公司的发展与进步，为社会创造价值。', '行业新闻');
INSERT INTO `category` VALUES ('5', '6', '技术文献', '/news/literatureNews', '/uploads/banner/384e0bc58acadc57179f835caaca6453[1]_2020_11_3_15_15.jpg', 'tit_new', '公司是起重机专业制造和服务供应商，公司引进欧洲先进的起重机技术，集起重机研发、制造、销售、安装、维修保养服务于一体。我们拥有丰富行业经验的技术专家和专业的技术服务团队，为客户提供完善的售前、售后服务体系。', '技术文献');
INSERT INTO `category` VALUES ('6', '2', '客户案例', '/solution/customer', '/uploads/banner/60ed40345c8cdf4a986ccd11aa085644[1]_2020_11_6_22_36.jpg', 'tit_case', '我们积累了丰富的实战经验，精于起重机设备的研发与制造，并为您提供合理的解决方案', '客户案例');
INSERT INTO `category` VALUES ('7', '2', '行业应用', '/solution/industry', '/uploads/banner/4306d5f000d85d473e6aa31c4db00ecd[1]_2020_11_3_15_14.jpg', 'tit_materials', '公司的起重机产品品种齐全，历经 30 年发展，公司产品遍布机械、冶金、电力、轻工、重工、化工、造纸、陶瓷、建材、钢铁加工、铁路水利、港口、物流、电子、汽车、造船、军工等行业。未来，将走进新能源、新材料、新动力汽车、轨道交通、海洋装备、环保、机器人、航空航天等新兴领域，为更多客户提供优质的起重机械产品.', '行业应用');
INSERT INTO `category` VALUES ('10', '1', '立式包装机', '1', '/uploads/catespics/6bc1ee9c78692e41069f76b770c61a7a[1]_2020_11_3_15_20.jpg', '/uploads/catespics/3a1de072d4d508acfbab7c88355a34df[1]_2020_11_3_15_22.png', '立式包装机', '立式包装机');
INSERT INTO `category` VALUES ('11', '1', '给袋式包装机', '2', '/uploads/catespics/8afc67a4c300483764e980db282b0bf9[1]_2020_11_3_15_24.jpg', '/uploads/catespics/be9bdcf680f71c6b65372d3c8683bd6b[1]_2020_11_3_15_23.png', '其他设备', '其他设备');
INSERT INTO `category` VALUES ('14', '1', '更多设备', '5', '/uploads/catespics/0a7464a97119ef313f350b3de8af4cc1[1]_2020_11_3_15_25.jpg', '/uploads/catespics/e35dab0d4c7539a17cbab1d5e2ec3933[1]_2020_11_3_15_24[1]_2020_11_5_10_26.png', '这是更多设备2321312', '更多设备11');
INSERT INTO `category` VALUES ('12', '1', '真空包装机', '3', '/uploads/catespics/0a7464a97119ef313f350b3de8af4cc1[1]_2020_11_3_15_25.jpg', '/uploads/catespics/e35dab0d4c7539a17cbab1d5e2ec3933[1]_2020_11_3_15_24.png', '这是真空包装机', '真空包装机');
INSERT INTO `category` VALUES ('13', '1', '其他设备', '4', '/uploads/catespics/daf4a06e7d2a132af37785659f5e8ea4[1]_2020_11_3_15_26.jpg', '/uploads/catespics/42759733207881cd800f6f12f12925d9[1]_2020_11_3_15_26.png', '这是其他设备', '其他设备');

-- ----------------------------
-- Table structure for `goods`
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `c_id` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `overView` varchar(255) DEFAULT NULL,
  `advantage` varchar(255) DEFAULT NULL,
  `content` text,
  `weight` varchar(255) DEFAULT NULL,
  `dimensions` varchar(255) DEFAULT NULL,
  `pageKey` varchar(255) DEFAULT NULL,
  `pageDescription` varchar(255) DEFAULT NULL,
  `pageTitle` varchar(255) DEFAULT NULL,
  `isHome` enum('否','是') NOT NULL DEFAULT '否' COMMENT '产品是否首页显示',
  `sort` int(11) NOT NULL DEFAULT '1' COMMENT '产品排序',
  `add_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `vidurl` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('1', '10', '/uploads/goodspics/4cd7cad7f1c8d459a1e282785bac489f[1]_2020_11_3_15_27.jpg', '给袋式包装机', '应用范围：多用于工厂、机械制造、装配、仓库等使用频度低起重量起吊次数少的场所', '1.这个是给带是包装机特点', '<p>www这个是给袋式内容</p>', '120', '1.2x3x1', 'LD型电动单梁起重机', '这是LD型电动单梁起重机', 'LD型电动单梁起重机', '是', '1', '2020-12-18 14:54:43', 'n3212ocatx6');
INSERT INTO `goods` VALUES ('3', '10', '/uploads/goodspics/4cd7cad7f1c8d459a1e282785bac489f[1]_2020_11_3_15_27.jpg', '给袋式包装机', '应用范围：多用于工厂、机械制造、装配、仓库等使用频度低起重量起吊次数少的场所', '1.这个是给带是包装机特点', 'www这个是给袋式内容', '120', '1.2x3x3', 'LD型电动单梁起重机', '这是LD型电动单梁起重机', 'LD型电动单梁起重机', '否', '2', '2020-12-18 11:44:25', 'n3212ocatx6');
INSERT INTO `goods` VALUES ('18', '10', '/uploads/goodspics/4cd7cad7f1c8d459a1e282785bac489f[1]_2020_11_3_15_27.jpg', 'LD型电动单梁起重机4', '应用范围：多用于工厂、机械制造、装配、仓库等使用频度低起重量起吊次数少的场所', '优点：订货周期短、经济实惠；\n缺点：有效起升高度相对较低，使用中晃动相对较大，工作级别低，不适用繁重车间', 'www这个是给袋式内容', '130', '1.2x2.2x4', 'LD型电动单梁起重机', '这是LD型电动单梁起重机', 'LD型电动单梁起重机', '是', '3', '2020-12-18 11:44:34', 'n3212ocatx6');
INSERT INTO `goods` VALUES ('20', '12', '/uploads/goodspics/4cd7cad7f1c8d459a1e282785bac489f[1]_2020_11_3_15_27.jpg', 'LD型电动单梁起重机3', '应用范围：多用于工厂、机械制造、装配、仓库等使用频度低起重量起吊次数少的场所', '优点：订货周期短、经济实惠；\n缺点：有效起升高度相对较低，使用中晃动相对较大，工作级别低，不适用繁重车间', 'www这个是给袋式内容', '110', '1.5x2x4', 'LD型电动单梁起重机', '这是LD型电动单梁起重机', 'LD型电动单梁起重机', '是', '4', '2020-12-09 15:40:01', 'n3212ocatx6');
INSERT INTO `goods` VALUES ('9', '12', '/uploads/goodspics/4cd7cad7f1c8d459a1e282785bac489f[1]_2020_11_3_15_27.jpg', 'LD型电动单梁起重机', '应用范围：多用于工厂、机械制造、装配、仓库等使用频度低起重量起吊次数少的场所', '优点：订货周期短、经济实惠；\n缺点：有效起升高度相对较低，使用中晃动相对较大，工作级别低，不适用繁重车间', '<pre class=\"ql-syntax\" spellcheck=\"false\">&lt;table border=\"1\"&gt;\n	&lt;tbody&gt;\n		&lt;tr&gt;\n			&lt;td&gt;\n				&lt;p&gt;\n					&lt;span&gt;型 号&lt;/span&gt;&nbsp;\n				&lt;/p&gt;\n			&lt;/td&gt;\n			&lt;td&gt;\n				&lt;p&gt;\n					&lt;span&gt;HY-DP3I1-120A&lt;/span&gt;&nbsp;\n				&lt;/p&gt;\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td&gt;\n				&lt;p&gt;\n					&lt;span&gt;最大移动速度&lt;/span&gt;&nbsp;\n				&lt;/p&gt;\n			&lt;/td&gt;\n			&lt;td&gt;\n				&lt;p&gt;\n					&lt;span&gt;X,Y=60m/min，Z=24m/min&lt;/span&gt;&nbsp;\n				&lt;/p&gt;\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td&gt;\n				&lt;p&gt;\n					&lt;span&gt;工作范围&lt;/span&gt;&nbsp;\n				&lt;/p&gt;\n			&lt;/td&gt;\n			&lt;td&gt;\n				&lt;p&gt;\n					&lt;span&gt;X,Y,Z=380.600.100&lt;/span&gt;&nbsp;\n				&lt;/p&gt;\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td&gt;\n				&lt;p&gt;\n					&lt;span&gt;料罐数（只）&lt;/span&gt;&nbsp;\n				&lt;/p&gt;\n			&lt;/td&gt;\n			&lt;td&gt;\n				&lt;p&gt;\n					&lt;span&gt;3&lt;/span&gt;&nbsp;\n				&lt;/p&gt;\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td&gt;\n				&lt;p&gt;\n					&lt;span&gt;单罐容积（L）&lt;/span&gt;&nbsp;\n				&lt;/p&gt;\n			&lt;/td&gt;\n			&lt;td&gt;\n				&lt;p&gt;\n					&lt;span&gt;120&lt;/span&gt;&nbsp;\n				&lt;/p&gt;\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td&gt;\n				&lt;p&gt;\n					&lt;span&gt;计量泵排量（L/R）&lt;/span&gt;&nbsp;\n				&lt;/p&gt;\n			&lt;/td&gt;\n			&lt;td&gt;\n				&lt;p&gt;\n					&lt;span&gt;20&lt;/span&gt;&nbsp;\n				&lt;/p&gt;\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td&gt;\n				&lt;p&gt;\n					&lt;span&gt;计量泵数量（只）&lt;/span&gt;&nbsp;\n				&lt;/p&gt;\n			&lt;/td&gt;\n			&lt;td&gt;\n				&lt;p&gt;\n					&lt;span&gt;3&lt;/span&gt;&nbsp;\n				&lt;/p&gt;\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td&gt;\n				&lt;p&gt;\n					&lt;span&gt;计量泵转速（r/min）&lt;/span&gt;&nbsp;\n				&lt;/p&gt;\n			&lt;/td&gt;\n			&lt;td&gt;\n				&lt;p&gt;\n					&lt;span&gt;60-280&lt;/span&gt;&nbsp;\n				&lt;/p&gt;\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td&gt;\n				&lt;p&gt;\n					&lt;span&gt;计量泵精度（%）&lt;/span&gt;&nbsp;\n				&lt;/p&gt;\n			&lt;/td&gt;\n			&lt;td&gt;\n				&lt;p&gt;\n					&lt;span&gt;0.5&lt;/span&gt;&nbsp;\n				&lt;/p&gt;\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td&gt;\n				&lt;p&gt;\n					&lt;span&gt;浇注机混合轴转速（r/min）&lt;/span&gt;&nbsp;\n				&lt;/p&gt;\n			&lt;/td&gt;\n			&lt;td&gt;\n				&lt;p&gt;\n					&lt;span&gt;9400&lt;/span&gt;&nbsp;\n				&lt;/p&gt;\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td&gt;\n				&lt;p&gt;\n					&lt;span&gt;浇注机清洗型式&lt;/span&gt;&nbsp;\n				&lt;/p&gt;\n			&lt;/td&gt;\n			&lt;td&gt;\n				&lt;p&gt;\n					&lt;span&gt;自动&lt;/span&gt;&nbsp;\n				&lt;/p&gt;\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td&gt;\n				&lt;p&gt;\n					&lt;span&gt;浇注机清洗周期连续浇筑计数（次）&lt;/span&gt;&nbsp;\n				&lt;/p&gt;\n			&lt;/td&gt;\n			&lt;td&gt;\n				&lt;p&gt;\n					&lt;span&gt;&amp;gt;80&lt;/span&gt;&nbsp;\n				&lt;/p&gt;\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td&gt;\n				&lt;p&gt;\n					&lt;span&gt;最大吞吐量（G/S）&lt;/span&gt;&nbsp;\n				&lt;/p&gt;\n			&lt;/td&gt;\n			&lt;td&gt;\n				&lt;p&gt;\n					&lt;span&gt;130&lt;/span&gt;&nbsp;\n				&lt;/p&gt;\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td&gt;\n				&lt;p&gt;\n					&lt;span&gt;工位数&lt;/span&gt;&nbsp;\n				&lt;/p&gt;\n			&lt;/td&gt;\n			&lt;td&gt;\n				&lt;p&gt;\n					&lt;span&gt;60/80&lt;/span&gt;&nbsp;\n				&lt;/p&gt;\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td&gt;\n				&lt;p&gt;\n					&lt;span&gt;制品特性&lt;/span&gt;&nbsp;\n				&lt;/p&gt;\n			&lt;/td&gt;\n			&lt;td&gt;\n				&lt;p&gt;\n					&lt;span&gt;四色双密度&lt;/span&gt;&nbsp;\n				&lt;/p&gt;\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td&gt;\n				&lt;p&gt;\n					&lt;span&gt;额定电压（V）&lt;/span&gt;&nbsp;\n				&lt;/p&gt;\n			&lt;/td&gt;\n			&lt;td&gt;\n				&lt;p&gt;\n					&lt;span&gt;400V 30-45A/50HZ&lt;/span&gt;&nbsp;\n				&lt;/p&gt;\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td&gt;\n				&lt;p&gt;\n					&lt;span&gt;整机功率（KW）&lt;/span&gt;&nbsp;\n				&lt;/p&gt;\n			&lt;/td&gt;\n			&lt;td&gt;\n				&lt;p&gt;\n					&lt;span&gt;12KW&lt;/span&gt;&nbsp;\n				&lt;/p&gt;\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td&gt;\n				&lt;span&gt;最大移动速度&lt;br&gt;\n&lt;/span&gt;&nbsp;\n			&lt;/td&gt;\n			&lt;td&gt;\n				&lt;span&gt;2-4m/min&lt;br&gt;\n&lt;/span&gt;&nbsp;\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td&gt;\n				&lt;span&gt;加速度&lt;/span&gt;&nbsp;\n			&lt;/td&gt;\n			&lt;td&gt;\n				&lt;span&gt;10m/s²&lt;br&gt;\n&lt;/span&gt;&nbsp;\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td&gt;\n				&lt;span&gt;精度&lt;/span&gt;&nbsp;\n			&lt;/td&gt;\n			&lt;td&gt;\n				&lt;span&gt;&amp;lt;0.2mm(ISO 9283)&lt;br&gt;\n&lt;/span&gt;&nbsp;\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td&gt;\n				&lt;span&gt;分配程序&lt;/span&gt;&nbsp;\n			&lt;/td&gt;\n			&lt;td&gt;\n				&lt;span&gt;(60-80)&lt;br&gt;\n&lt;/span&gt;&nbsp;\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td&gt;\n				&lt;span&gt;电能&lt;br&gt;\n&lt;/span&gt;&nbsp;\n			&lt;/td&gt;\n			&lt;td&gt;\n				&lt;span&gt;400V 30-45A/50HZ(60HZ)&lt;br&gt;\n&lt;/span&gt;&nbsp;\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td&gt;\n				&lt;span&gt;能量功能&lt;/span&gt;&nbsp;\n			&lt;/td&gt;\n			&lt;td&gt;\n				&lt;span&gt;20-40Kw&lt;br&gt;\n&lt;/span&gt;&nbsp;\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td&gt;\n				&lt;span&gt;压缩空气供应&lt;br&gt;\n&lt;/span&gt;&nbsp;\n			&lt;/td&gt;\n			&lt;td&gt;\n				&lt;span&gt;&amp;gt;5.5&lt;br&gt;\n&lt;/span&gt;&nbsp;\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td&gt;\n				&lt;span&gt;压缩空气消耗&lt;br&gt;\n&lt;/span&gt;&nbsp;\n			&lt;/td&gt;\n			&lt;td&gt;\n				&lt;span&gt;50-20 l/min&lt;br&gt;\n&lt;/span&gt;&nbsp;\n			&lt;/td&gt;\n		&lt;/tr&gt;\n		&lt;tr&gt;\n			&lt;td&gt;\n				&lt;span&gt;重量&lt;br&gt;\n&lt;/span&gt;&nbsp;\n			&lt;/td&gt;\n			&lt;td&gt;\n				&lt;span&gt;25T&lt;br&gt;\n&lt;/span&gt;&nbsp;\n			&lt;/td&gt;\n		&lt;/tr&gt;\n	&lt;/tbody&gt;\n&lt;/table&gt;\n</pre><p class=\"ql-indent-www这个是给袋式内容', '100', '11x11x11', 'LD型电动单梁起重机', '这是LD型电动单梁起重机', 'LD型电动单梁起重机', '是', '5', '2020-12-09 15:40:40', null);
INSERT INTO `goods` VALUES ('15', '12', '/uploads/goodspics/4cd7cad7f1c8d459a1e282785bac489f[1]_2020_11_3_15_27.jpg', 'LD型电动单梁起重机1', '应用范围：多用于工厂、机械制造、装配、仓库等使用频度低起重量起吊次数少的场所', '优点：订货周期短、经济实惠；\n缺点：有效起升高度相对较低，使用中晃动相对较大，工作级别低，不适用繁重车间', 'www这个是给袋式内容', '150', '11x11x11', 'LD型电动单梁起重机', '这是LD型电动单梁起重机', 'LD型电动单梁起重机', '是', '6', '2020-12-09 15:40:40', null);
INSERT INTO `goods` VALUES ('16', '14', '/uploads/goodspics/4cd7cad7f1c8d459a1e282785bac489f[1]_2020_11_3_15_27.jpg', 'LD型电动单梁起重机2', '应用范围：多用于工厂、机械制造、装配、仓库等使用频度低起重量起吊次数少的场所', '优点：订货周期短、经济实惠；\n缺点：有效起升高度相对较低，使用中晃动相对较大，工作级别低，不适用繁重车间', 'www这个是给袋式内容', '170', '11x11x11', 'LD型电动单梁起重机', '这是LD型电动单梁起重机', 'LD型电动单梁起重机', '是', '7', '2020-12-18 11:44:31', null);
INSERT INTO `goods` VALUES ('17', '13', '/uploads/goodspics/4cd7cad7f1c8d459a1e282785bac489f[1]_2020_11_3_15_27.jpg', 'LD型电动单梁起重机2', '应用范围：多用于工厂、机械制造、装配、仓库等使用频度低起重量起吊次数少的场所', '优点：订货周期短、经济实惠；\n缺点：有效起升高度相对较低，使用中晃动相对较大，工作级别低，不适用繁重车间', 'www这个是给袋式内容', '180', '11x11x11', 'LD型电动单梁起重机', '这是LD型电动单梁起重机', 'LD型电动单梁起重机', '是', '11', '2020-12-18 14:21:27', null);
INSERT INTO `goods` VALUES ('21', '11', '/uploads/goodspics/4cd7cad7f1c8d459a1e282785bac489f[1]_2020_11_3_15_27.jpg', '给袋式包装机', '应用范围：多用于工厂、机械制造、装配、仓库等使用频度低起重量起吊次数少的场所', '1.这个是给带是包装机特点', 'www这个是给袋式内容', '55', '0.8x2x0.5', '1232131', '213123', '12312321', '否', '1', '2020-12-18 11:44:23', null);
INSERT INTO `goods` VALUES ('22', '11', '/uploads/goodspics/xfjx_2020_11_5_14_56.jpg', '测试商品2', '', '', '<p>测试测试</p>', '13', '12x12x12', '测试', '测试', '测试', '是', '12', '2020-12-18 14:56:50', 'n3212ocatx6');

-- ----------------------------
-- Table structure for `news`
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `pageKey` varchar(255) DEFAULT NULL,
  `pageDescription` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `content` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('1', '3', '测试新闻1', '1', '123', '2212', '2020-12-14 11:34:14', '111');
INSERT INTO `news` VALUES ('2', '4', '测试新闻2', '2', '213', '22', '2020-12-14 11:34:13', '232133123131');
INSERT INTO `news` VALUES ('3', '4', '测试新闻3', '213', '3213', 'admin', '2020-12-14 11:34:13', '1213');
INSERT INTO `news` VALUES ('4', '3', '测试新闻4', '34', '213', '3242', '2020-12-14 11:34:16', '23432');
INSERT INTO `news` VALUES ('5', '3', '测试新闻5', '32', '2', '232', '2020-12-14 11:34:12', '123');

-- ----------------------------
-- Table structure for `orders`
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `user` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `isQusetion` int(2) NOT NULL DEFAULT '0',
  `answerContent` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('1', '13', '这是问题', '游客', '18968919292', '2020-12-18 14:21:00', '1', null);
INSERT INTO `orders` VALUES ('2', '11', '213', '213', '213', '2020-12-18 13:41:25', '2', '<p>123123</p>');
INSERT INTO `orders` VALUES ('3', '11', '213', '213', '213', '2020-12-17 15:22:18', '1', null);
INSERT INTO `orders` VALUES ('5', '12', '123', '123', '213', '2020-12-18 14:20:29', '2', '<p>回答</p>');

-- ----------------------------
-- Table structure for `page`
-- ----------------------------
DROP TABLE IF EXISTS `page`;
CREATE TABLE `page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pageName` varchar(255) DEFAULT NULL,
  `pageDescription` varchar(255) DEFAULT NULL,
  `pagePath` varchar(255) DEFAULT NULL,
  `pageImage` varchar(255) DEFAULT NULL,
  `pageTitleImage` varchar(255) DEFAULT NULL,
  `pageKey` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of page
-- ----------------------------
INSERT INTO `page` VALUES ('4', '首页', '这是首页', '/', null, null, '这是首页');
INSERT INTO `page` VALUES ('1', '产品中心', '这是产品中心', '/products', '/uploads/banner/5e82270fe8eaf738812aae7eeeb791e1[1]_2020_11_6_15_39.jpg', null, '产品中心');
INSERT INTO `page` VALUES ('3', '视频中心', '每一张光影记录都承载着我们的精彩与成长每一个视频都阐述着我们的用心与专业。这样的一幕幕、一瞬间是我们日常的缩影、是我们实力的展示、能力的诠释。或静或动的画面，都是我们真实的样子。 从这里开始，带你全面认识公司', '/video', '/uploads/banner/418def02962bf4d16ec0e5e0ff014080[1]_2020_11_6_15_30.jpg', 'tit_video', '视频中心');
INSERT INTO `page` VALUES ('6', '新闻中心', '聚焦公司的技术文献及行业热点，在这里您可以更深入、更全面的了解，在这里，我们为您提供速度、可靠、全面的新闻。', '/news', '/uploads/banner/384e0bc58acadc57179f835caaca6453[1]_2020_11_6_15_38.jpg', 'tit_new', '新闻中心');
INSERT INTO `page` VALUES ('2', '解决方案', '我们积累了丰富的实战经验，以“为多个行业提供专业的设备提供解决方案，产品广泛应用于机械、冶金、铁路、水利港口、码头、造纸、化工、矿山、汽车、航空、航天、军工制造等多种行业。', '/solution', '/uploads/banner/f31a02875173c975b32a6710724f8baf[1]_2020_11_6_15_36.jpg', 'tit_solution', '解决方案');
INSERT INTO `page` VALUES ('5', '关于我们', '公司在原南海市于1994年成立，工厂面积约40000m2，至今已是领先的A级起重机专业制造和服务供应商，公司引进欧洲先进的起重机技术，集起重机研发、制造、销售、安装、服务于一体。主要生产', '/about', '/uploads/banner/387917e2e5f00ed88d24a3ef54a4efbd[1]_2020_11_6_15_38.jpg', 'tit_about', '关于我们');
INSERT INTO `page` VALUES ('7', '有问必答', '在这里为你提供了各系列设备在购买前以及实际运营过程中可能遇到的各类问题解答，如有特殊需求，可以拨打我们的免费服务热线与我们取得联系，或者通过在线咨询与我们交谈。', '/question', '/uploads/banner/c4087db633604ad00e9247a3419436b5[1]_2020_11_6_15_38.jpg', 'tit_question', '有问必答');
INSERT INTO `page` VALUES ('8', '服务支持', '我们的服务承诺并不是一句口号、一个理念或一个广告，我们的服务承诺是认真的。为此，我们建设了庞大、系统和规范化的服务保障体系，确保每个环节执行到位、精细处理。为广大客户提供各种维保服务。', '/service', '/uploads/banner/6ea4ab1d8f34814f2a10163d74ac0124[1]_2020_11_6_15_38.jpg', 'tit_service', '服务支持');
INSERT INTO `page` VALUES ('9', '联系我们', '为客户成功、为行业进步、为国家强盛、为奋斗者铸梦!”广东顺发起重设备有限公司致力打造起重机机械设备全球高端品牌，专业与专注是我们的特质，我们希望通过不懈的努力与探索，成为客户信赖的解决方案供应提供商', '/contact', '/uploads/banner/2a3e1eac861362af929652f35c506a26[1]_2020_11_6_15_39.jpg', 'tit_contact', '联系我们');

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userPhone` varchar(255) DEFAULT NULL,
  `userQQ` varchar(255) DEFAULT NULL,
  `companyName` varchar(255) DEFAULT NULL,
  `companyAddress` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'admin', 'ec15d79e36e14dd258cfff3d48b73d35yWycs', '虞先生', '546448821@qq.com', '18968919292', '5464488211', 'aicoco居家协会', '浙江省瑞安市', '/uploads/banner/logo_2020_11_6_13_37.jpg');
INSERT INTO `users` VALUES ('2', 'yuchen', 'ec15d79e36e14dd258cfff3d48b73d35yWycs', '', '', '', '', '', '', null);

-- ----------------------------
-- Table structure for `video`
-- ----------------------------
DROP TABLE IF EXISTS `video`;
CREATE TABLE `video` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vidurl` varchar(255) DEFAULT NULL,
  `imgurl` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `pageKey` varchar(255) DEFAULT NULL,
  `pageDescription` varchar(255) DEFAULT NULL,
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of video
-- ----------------------------
INSERT INTO `video` VALUES ('1', 'n3212ocatx6', '/uploads/newspics/615251_0[1]_2020_11_4_22_36.png', '测试视频122', '测试视频12', '这是测试视频1222', '2020-12-16 15:00:23');
INSERT INTO `video` VALUES ('4', 'n3212ocatx6', '/uploads/newspics/615251_0[1]_2020_11_4_22_36.png', '测试', '测试', '测试', '2020-12-18 14:32:09');
INSERT INTO `video` VALUES ('5', 'n3212ocatx6', '/uploads/newspics/615251_0[1]_2020_11_4_22_36.png', '测试2', '测试2', '测试2', '2020-12-18 14:32:31');
