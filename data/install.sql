/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50547
Source Host           : localhost:3306
Source Database       : yunucms

Target Server Type    : MYSQL
Target Server Version : 50547
File Encoding         : 65001

Date: 2017-10-27 10:24:58
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for yunu_admin
-- ----------------------------
DROP TABLE IF EXISTS `yunu_admin`;
CREATE TABLE `yunu_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT '' COMMENT '用户名',
  `password` varchar(255) DEFAULT '' COMMENT '密码',
  `loginnum` int(11) DEFAULT '0' COMMENT '登陆次数',
  `last_login_ip` varchar(255) DEFAULT '' COMMENT '最后登录IP',
  `last_login_time` int(11) DEFAULT '0' COMMENT '最后登录时间',
  `real_name` varchar(255) DEFAULT '' COMMENT '真实姓名',
  `status` int(1) DEFAULT '0' COMMENT '状态',
  `groupid` int(11) DEFAULT '1' COMMENT '用户角色id',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of yunu_admin
-- ----------------------------
INSERT INTO `yunu_admin` VALUES ('1', 'admin', 'ebbd202c239d6fc65061ae22a13c1b69', '345', '127.0.0.1', '1509071047', 'admin', '1', '1');
INSERT INTO `yunu_admin` VALUES ('4', 'xiaoyang', '00da39a5e5ab83b43f2a6749052b3ed4', '5', '127.0.0.1', '1505956871', '小样', '1', '8');

-- ----------------------------
-- Table structure for yunu_area
-- ----------------------------
DROP TABLE IF EXISTS `yunu_area`;
CREATE TABLE `yunu_area` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(20) NOT NULL DEFAULT '',
  `stitle` varchar(10) NOT NULL DEFAULT '' COMMENT '简称',
  `etitle` varchar(50) NOT NULL DEFAULT '',
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `sort` int(11) unsigned NOT NULL DEFAULT '0',
  `istop` tinyint(1) NOT NULL DEFAULT '0',
  `iscon` tinyint(1) DEFAULT '0',
  `isurl` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6024 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yunu_area
-- ----------------------------
INSERT INTO `yunu_area` VALUES ('1', '北京市', '北京', 'beijing', '0', '0', '0', '1', '0');
INSERT INTO `yunu_area` VALUES ('2', '上海市', '上海', 'shanghai', '0', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('3', '天津市', '天津', 'tianjing', '0', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('4', '重庆市', '重庆', 'chongqing', '0', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('5', '广东省', '广东', 'guangdong', '0', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('6', '福建省', '福建', 'fujian', '0', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('7', '浙江省', '浙江', 'zhejiang', '0', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('8', '江苏省', '江苏', 'jiangsu', '0', '0', '0', '1', '0');
INSERT INTO `yunu_area` VALUES ('9', '山东省', '山东', 'shandong', '0', '0', '0', '1', '0');
INSERT INTO `yunu_area` VALUES ('10', '辽宁省', '辽宁', 'liaoning', '0', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('11', '江西省', '江西', 'jiangxi', '0', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('12', '四川省', '四川', 'sichuan', '0', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('13', '陕西省', '陕西', 'shanxi', '0', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('14', '湖北省', '湖北', 'hubei', '0', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('15', '河南省', '河南', 'henan', '0', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('16', '河北省', '河北', 'hebei', '0', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('17', '山西省', '山西', 'shanxi1', '0', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('18', '内蒙古', '内蒙古', 'neimengug', '0', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('19', '吉林省', '吉林', 'jiling', '0', '0', '1', '0', '0');
INSERT INTO `yunu_area` VALUES ('20', '黑龙江', '黑龙江', 'heilongjiang', '0', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('21', '安徽省', '安徽', 'anhui', '0', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('22', '湖南省', '湖南', 'hunan', '0', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('23', '广西', '广西', 'guangxi', '0', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('24', '海南省', '海南', 'hainan', '0', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('25', '云南省', '云南', 'yunnan', '0', '0', '0', '1', '0');
INSERT INTO `yunu_area` VALUES ('26', '贵州省', '贵州', 'guizhou', '0', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('27', '西藏', '西藏', 'xicang', '0', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('28', '甘肃省', '甘肃', 'gansu', '0', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('29', '宁夏区', '宁夏区', 'ningxiaqu', '0', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('30', '青海省', '青海', 'qinghai', '0', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('31', '新疆', '新疆', 'xinjiang', '0', '0', '0', '1', '0');
INSERT INTO `yunu_area` VALUES ('32', '香港', '香港', 'xianggang', '0', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('33', '澳门', '澳门', 'aomen', '0', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('34', '台湾省', '台湾', 'taiwan', '0', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('415', '永川市', '永川', 'yongchuan', '4', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('416', '合川市', '合川', 'hechuan', '4', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('417', '江津市', '江津', 'jiangjin', '4', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('418', '南川市', '南川', 'nanchuan', '4', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('501', '广州市', '广州', 'guangzhou', '5', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('502', '深圳市', '深圳', 'shenzhen', '5', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('503', '珠海市', '珠海', 'zhuhai', '5', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('504', '汕头市', '汕头', 'shantou', '5', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('505', '韶关市', '韶关', 'shaoguan', '5', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('506', '河源市', '河源', 'heyuan', '5', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('507', '梅州市', '梅州', 'meizhou', '5', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('508', '惠州市', '惠州', 'huizhou', '5', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('509', '汕尾市', '汕尾', 'shanwei', '5', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('510', '东莞市', '东莞', 'dongguan', '5', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('511', '中山市', '中山', 'zhongshan', '5', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('512', '江门市', '江门', 'jiangmen', '5', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('513', '佛山市', '佛山', 'foshan', '5', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('514', '阳江市', '阳江', 'yangjiang', '5', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('515', '湛江市', '湛江', 'zhanjiang', '5', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('516', '茂名市', '茂名', 'maoming', '5', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('517', '肇庆市', '肇庆', 'zhaoqing', '5', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('518', '清远市', '清远', 'qingyuan', '5', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('519', '潮州市', '潮州', 'chaozhou', '5', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('520', '揭阳市', '揭阳', 'jieyang', '5', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('521', '云浮市', '云浮', 'yunfu', '5', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('601', '福州市', '福州', 'fuzhou', '6', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('602', '厦门市', '厦门', 'xiamen', '6', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('603', '三明市', '三明', 'sanming', '6', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('604', '莆田市', '莆田', 'putian', '6', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('605', '泉州市', '泉州', 'quanzhou', '6', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('606', '漳州市', '漳州', 'zhangzhou', '6', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('607', '南平市', '南平', 'nanping', '6', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('608', '龙岩市', '龙岩', 'longyan', '6', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('609', '宁德市', '宁德', 'ningde', '6', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('701', '杭州市', '杭州', 'hangzhou', '7', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('702', '宁波市', '宁波', 'ningbo', '7', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('703', '温州市', '温州', 'wenzhou', '7', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('704', '嘉兴市', '嘉兴', 'jiaxing', '7', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('705', '湖州市', '湖州', 'huzhou', '7', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('706', '绍兴市', '绍兴', 'shaoxing', '7', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('707', '金华市', '金华', 'jinhua', '7', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('708', '衢州市', '衢州', 'quzhou', '7', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('709', '舟山市', '舟山', 'zhoushan', '7', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('710', '台州市', '台州', 'taizhou', '7', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('711', '丽水市', '丽水', 'lishui', '7', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('801', '南京市', '南京', 'nanjing', '8', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('802', '徐州市', '徐州', 'xuzhou', '8', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('803', '连云港市', '连云港', 'lianyungang', '8', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('804', '淮安市', '淮安', 'huaian', '8', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('805', '宿迁市', '宿迁', 'suqian', '8', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('806', '盐城市', '盐城', 'yancheng', '8', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('807', '扬州市', '扬州', 'yangzhou', '8', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('808', '泰州市', '泰州', 'taizhou1', '8', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('809', '南通市', '南通', 'nantong', '8', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('810', '镇江市', '镇江', 'zhenjiang', '8', '0', '0', '1', '0');
INSERT INTO `yunu_area` VALUES ('811', '常州市', '常州', 'changzhou', '8', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('812', '无锡市', '无锡', 'wuxishi', '8', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('813', '苏州市', '苏州', 'suzhoushi', '8', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('901', '济南市', '济南', 'jinan', '9', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('902', '青岛市', '青岛', 'qingdao', '9', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('903', '淄博市', '淄博', 'zibo', '9', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('904', '枣庄市', '枣庄', 'zaozhuang', '9', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('905', '东营市', '东营', 'dongying', '9', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('906', '潍坊市', '潍坊', 'weifang', '9', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('907', '烟台市', '烟台', 'yantai', '9', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('908', '威海市', '威海', 'weihai', '9', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('909', '济宁市', '济宁', 'jining', '9', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('910', '泰安市', '泰安', 'taian', '9', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('911', '日照市', '日照', 'rizhao', '9', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('912', '莱芜市', '莱芜', 'laiwu', '9', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('913', '德州市', '德州', 'dezhou', '9', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('914', '临沂市', '临沂', 'linyi', '9', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('915', '聊城市', '聊城', 'liaocheng', '9', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('916', '滨州市', '滨州', 'binzhou', '9', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('917', '菏泽市', '菏泽', 'heze', '9', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('1001', '沈阳市', '沈阳', 'shenyang', '10', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('1002', '大连市', '大连', 'dalian', '10', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('1003', '鞍山市', '鞍山', 'anshan', '10', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('1004', '抚顺市', '抚顺', 'fushun', '10', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('1005', '本溪市', '本溪', 'benxi', '10', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('1006', '丹东市', '丹东', 'dandong', '10', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('1007', '锦州市', '锦州', 'jinzhou', '10', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('1008', '葫芦岛市', '葫芦岛', 'huludao', '10', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('1009', '营口市', '营口', 'yingkou', '10', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('1010', '盘锦市', '盘锦', 'panjin', '10', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('1011', '阜新市', '阜新', 'fuxin', '10', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('1012', '辽阳市', '辽阳', 'liaoyang', '10', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('1013', '铁岭市', '铁岭', 'tieling', '10', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('1014', '朝阳市', '朝阳', 'chaoyang', '10', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('1101', '南昌市', '南昌', 'nanchang', '11', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('1102', '景德镇市', '景德镇', 'jingdezhen', '11', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('1103', '萍乡市', '萍乡', 'pingxiang', '11', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('1104', '新余市', '新余', 'xinyu', '11', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('1105', '九江市', '九江', 'jiujiang', '11', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('1106', '鹰潭市', '鹰潭', 'yingtan', '11', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('1107', '赣州市', '赣州', 'ganzhou', '11', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('1108', '吉安市', '吉安', 'jian', '11', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('1109', '宜春市', '宜春', 'yichun', '11', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('1110', '抚州市', '抚州', 'fuzhou1', '11', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('1111', '上饶市', '上饶', 'shangrao', '11', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('1201', '成都市', '成都', 'chengdu', '12', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('1202', '自贡市', '自贡', 'zigong', '12', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('1203', '攀枝花市', '攀枝花', 'panzhihua', '12', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('1204', '泸州市', '泸州', 'luzhou', '12', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('1205', '德阳市', '德阳', 'deyang', '12', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('1206', '绵阳市', '绵阳', 'mianyang', '12', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('1207', '广元市', '广元', 'guangyuan', '12', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('1208', '遂宁市', '遂宁', 'suining', '12', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('1209', '内江市', '内江', 'najiang', '12', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('1210', '乐山市', '乐山', 'leshan', '12', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('1211', '南充市', '南充', 'nanchong', '12', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('1212', '宜宾市', '宜宾', 'yibin', '12', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('1213', '广安市', '广安', 'guangan', '12', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('1214', '达州市', '达州', 'dazhou', '12', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('1215', '巴中市', '巴中', 'bazhong', '12', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('1216', '雅安市', '雅安', 'yaan', '12', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('1217', '眉山市', '眉山', 'meishan', '12', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('1218', '资阳市', '资阳', 'ziyang', '12', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('1219', '阿坝州', '阿坝', 'aba', '12', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('1220', '甘孜州', '甘孜', 'ganzi', '12', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('1221', '凉山州', '凉山', 'liangshan', '12', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('3114', '西安市', '西安', 'xian', '13', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('1302', '铜川市', '铜川', 'tongchuan', '13', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('1303', '宝鸡市', '宝鸡', 'baoji', '13', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('1304', '咸阳市', '咸阳', 'xianyang', '13', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('1305', '渭南市', '渭南', 'weinan', '13', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('1306', '延安市', '延安', 'yanan', '13', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('1307', '汉中市', '汉中', 'hanzhong', '13', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('1308', '榆林市', '榆林', 'yulin', '13', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('1309', '安康市', '安康', 'ankang', '13', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('1310', '商洛地区', '商洛地区', 'shangluodiqu', '13', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('1401', '武汉市', '武汉', 'wuhan', '14', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('1402', '黄石市', '黄石', 'huangshi', '14', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('1403', '襄樊市', '襄樊', 'xiangfan', '14', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('1404', '十堰市', '十堰', 'shiyan', '14', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('1405', '荆州市', '荆州', 'jingzhou', '14', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('1406', '宜昌市', '宜昌', 'yichang', '14', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('1407', '荆门市', '荆门', 'jingmen', '14', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('1408', '鄂州市', '鄂州', 'ezhou', '14', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('1409', '孝感市', '孝感', 'xiaogan', '14', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('1410', '黄冈市', '黄冈', 'huanggang', '14', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('1411', '咸宁市', '咸宁', 'xianning', '14', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('1412', '随州市', '随州', 'suizhou', '14', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('1413', '仙桃市', '仙桃', 'xiantao', '14', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('1414', '天门市', '天门', 'tianmen', '14', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('1415', '潜江市', '潜江', 'qianjiang', '14', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('1416', '神农架', '神农架', 'shennongjia', '14', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('1417', '恩施州', '恩施', 'enshi', '14', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('1501', '郑州市', '郑州', 'zhengzhou', '15', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('1502', '开封市', '开封', 'kaifeng', '15', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('1503', '洛阳市', '洛阳', 'luoyang', '15', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('1504', '平顶山市', '平顶山', 'pingdingshan', '15', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('1505', '焦作市', '焦作', 'jiaozuo', '15', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('1506', '鹤壁市', '鹤壁', 'hebi', '15', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('1507', '新乡市', '新乡', 'xinxiang', '15', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('1508', '安阳市', '安阳', 'anyang', '15', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('1509', '濮阳市', '濮阳', 'puyang', '15', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('1510', '许昌市', '许昌', 'xuchang', '15', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('1511', '漯河市', '漯河', 'leihe', '15', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('1512', '三门峡市', '三门峡', 'sanmenxia', '15', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('1513', '南阳市', '南阳', 'nanyang', '15', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('1514', '商丘市', '商丘', 'shangqiu', '15', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('1515', '信阳市', '信阳', 'xinyang', '15', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('1516', '周口市', '周口', 'zhoukou', '15', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('1517', '驻马店市', '驻马店', 'zhumadian', '15', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('1518', '济源市', '济源', 'jiyuan', '15', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('1601', '石家庄市', '石家庄', 'shijiazhuang', '16', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('1602', '唐山市', '唐山', 'tangshan', '16', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('1603', '秦皇岛市', '秦皇岛', 'qinhuangdao', '16', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('1604', '邯郸市', '邯郸', 'handan', '16', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('1605', '邢台市', '邢台', 'xingtai', '16', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('1606', '保定市', '保定', 'baoding', '16', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('1607', '张家口市', '张家口', 'zhangjiakou', '16', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('1608', '承德市', '承德', 'chengde', '16', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('1609', '沧州市', '沧州', 'cangzhou', '16', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('1610', '廊坊市', '廊坊', 'langfang', '16', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('1611', '衡水市', '衡水', 'hengshui', '16', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('1701', '太原市', '太原', 'taiyuan', '17', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('1702', '大同市', '大同', 'datong', '17', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('1703', '阳泉市', '阳泉', 'yangquan', '17', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('1704', '长治市', '长治', 'changzhi', '17', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('1705', '晋城市', '晋城', 'jincheng', '17', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('1706', '朔州市', '朔州', 'shuozhou', '17', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('1707', '晋中市', '晋中', 'jinzhong', '17', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('1708', '忻州市', '忻州', 'xinzhou', '17', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('1709', '临汾市', '临汾', 'linfen', '17', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('1710', '运城市', '运城', 'yuncheng', '17', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('1711', '吕梁地区', '吕梁地区', 'lvliangdiqu', '17', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('1801', '呼和浩特', '呼和浩特', 'huhehaote', '18', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('1802', '包头市', '包头', 'baotou', '18', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('1803', '乌海市', '乌海', 'wuhai', '18', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('1804', '赤峰市', '赤峰', 'chifeng', '18', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('1805', '通辽市', '通辽', 'tongliao', '18', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('1806', '鄂尔多斯', '鄂尔多斯', 'eerduosi', '18', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('1807', '乌兰察布', '乌兰察布', 'wulanchabu', '18', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('1808', '锡林郭勒', '锡林郭勒', 'xilinguole', '18', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('1809', '呼伦贝尔', '呼伦贝尔', 'hulunbeier', '18', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('1810', '巴彦淖尔', '巴彦淖尔', 'bayanneer', '18', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('1811', '阿拉善盟', '阿拉善盟', 'alashanmeng', '18', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('1812', '兴安盟', '兴安盟', 'xinganmeng', '18', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('1901', '长春市', '长春', 'changchun', '19', '0', '1', '0', '0');
INSERT INTO `yunu_area` VALUES ('1902', '吉林市', '吉林', 'jilin', '19', '0', '1', '0', '0');
INSERT INTO `yunu_area` VALUES ('1903', '四平市', '四平', 'siping', '19', '1', '1', '1', '0');
INSERT INTO `yunu_area` VALUES ('1904', '辽源市', '辽源', 'liaoyuan', '19', '0', '1', '0', '0');
INSERT INTO `yunu_area` VALUES ('1905', '通化市', '通化', 'tonghua', '19', '0', '1', '0', '0');
INSERT INTO `yunu_area` VALUES ('1906', '白山市', '白山', 'baishan', '19', '0', '1', '0', '0');
INSERT INTO `yunu_area` VALUES ('1907', '松原市', '松原', 'songyuan', '19', '0', '1', '0', '0');
INSERT INTO `yunu_area` VALUES ('1908', '白城市', '白城', 'baicheng', '19', '0', '1', '0', '0');
INSERT INTO `yunu_area` VALUES ('1909', '延边州', '延边', 'yanbian', '19', '0', '1', '0', '0');
INSERT INTO `yunu_area` VALUES ('2001', '哈尔滨市', '哈尔滨', 'haerbin', '20', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('2002', '齐齐哈尔', '齐齐哈尔', 'qiqihaer', '20', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('2003', '鹤岗市', '鹤岗', 'hegang', '20', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('2004', '双鸭山市', '双鸭山', 'shuangyashan', '20', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('2005', '鸡西市', '鸡西', 'jixi', '20', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('2006', '大庆市', '大庆', 'daqing', '20', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('2007', '伊春市', '伊春', 'yichun1', '20', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('2008', '牡丹江市', '牡丹江', 'mudanjiang', '20', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('2009', '佳木斯市', '佳木斯', 'jiamusi', '20', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('2010', '七台河市', '七台河', 'qitaihe', '20', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('2011', '黑河市', '黑河', 'heihe', '20', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('2012', '绥化市', '绥化', 'suihua', '20', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('2013', '大兴安岭', '大兴安岭', 'daxinganling', '20', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('2101', '合肥市', '合肥', 'hefei', '21', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('2102', '芜湖市', '芜湖', 'wuhu', '21', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('2103', '蚌埠市', '蚌埠', 'bangbu', '21', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('2104', '淮南市', '淮南', 'huainan', '21', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('2105', '马鞍山市', '马鞍山', 'maanshan', '21', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('2106', '淮北市', '淮北', 'huaibei', '21', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('2107', '铜陵市', '铜陵', 'tongling', '21', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('2108', '安庆市', '安庆', 'anqing', '21', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('2109', '黄山市', '黄山', 'huangshan', '21', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('2110', '滁州市', '滁州', 'chuzhou', '21', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('2111', '阜阳市', '阜阳', 'fuyang', '21', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('2112', '宿州市', '宿州', 'suzhou', '21', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('2113', '巢湖市', '巢湖', 'chaohu', '21', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('2114', '六安市', '六安', 'liuan', '21', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('2115', '亳州市', '亳州', 'bozhou', '21', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('2116', '宣城市', '宣城', 'xuancheng', '21', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('2117', '池州市', '池州', 'chizhou', '21', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('2201', '长沙市', '长沙', 'changsha', '22', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('2202', '株州市', '株州', 'zhuzhou', '22', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('2203', '湘潭市', '湘潭', 'xiangtan', '22', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('2204', '衡阳市', '衡阳', 'hengyang', '22', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('2205', '邵阳市', '邵阳', 'shaoyang', '22', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('2206', '岳阳市', '岳阳', 'yueyang', '22', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('2207', '常德市', '常德', 'changde', '22', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('2208', '张家界市', '张家界', 'zhangjiajie', '22', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('2209', '益阳市', '益阳', 'yiyang', '22', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('2210', '郴州市', '郴州', 'chenzhou', '22', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('2211', '永州市', '永州', 'yongzhou', '22', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('2212', '怀化市', '怀化', 'huaihua', '22', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('2213', '娄底市', '娄底', 'loudi', '22', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('2214', '湘西州', '湘西', 'xiangxi', '22', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('2301', '南宁市', '南宁', 'nanning', '23', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('2302', '柳州市', '柳州', 'liuzhou', '23', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('2303', '桂林市', '桂林', 'guilin', '23', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('2304', '梧州市', '梧州', 'wuzhou', '23', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('2305', '北海市', '北海', 'beihai', '23', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('2306', '防城港市', '防城港', 'fangchenggang', '23', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('2307', '钦州市', '钦州', 'qinzhou', '23', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('2308', '贵港市', '贵港', 'guigang', '23', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('2309', '玉林市', '玉林', 'yulin1', '23', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('2310', '南宁地区', '南宁地区', 'nanningdiqu', '23', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('2311', '柳州地区', '柳地区', 'liudiqu', '23', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('2312', '贺州地区', '贺地区', 'hediqu', '23', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('2313', '百色地区', '百色地区', 'baisediqu', '23', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('2314', '河池地区', '河池地区', 'hechidiqu', '23', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('2401', '海口市', '海口', 'haikou', '24', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('2402', '三亚市', '三亚', 'sanya', '24', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('2403', '五指山市', '五指山', 'wuzhishan', '24', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('2404', '琼海市', '琼海', 'qionghai', '24', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('2405', '儋州市', '儋州', 'danzhou', '24', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('2406', '琼山市', '琼山', 'qiongshan', '24', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('2407', '文昌市', '文昌', 'wenchang', '24', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('2408', '万宁市', '万宁', 'wanning', '24', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('2409', '东方市', '东方', 'dongfang', '24', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('2501', '昆明市', '昆明', 'kunming', '25', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('2502', '曲靖市', '曲靖', 'qujing', '25', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('2503', '玉溪市', '玉溪', 'yuxi', '25', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('2504', '保山市', '保山', 'baoshan', '25', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('2505', '昭通市', '昭通', 'zhaotong', '25', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('2506', ' 普洱市', ' 普洱', 'puer', '25', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('2507', '临沧市', '临沧', 'lincang', '25', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('2508', '丽江市', '丽江', 'lijiang', '25', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('2509', '文山州', '文山', 'wenshan', '25', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('2510', '红河州', '红河', 'honghe', '25', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('2511', '西双版纳', '西双版纳', 'xishuangbanna', '25', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('2512', '楚雄州', '楚雄', 'chuxiong', '25', '0', '0', '1', '0');
INSERT INTO `yunu_area` VALUES ('2513', '大理州', '大理', 'dali', '25', '0', '0', '1', '0');
INSERT INTO `yunu_area` VALUES ('2514', '德宏州', '德宏', 'dehong', '25', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('2515', '怒江州', '怒江', 'nujiang', '25', '0', '0', '1', '0');
INSERT INTO `yunu_area` VALUES ('2516', '迪庆州', '迪庆', 'diqing', '25', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('2601', '贵阳市', '贵阳', 'guiyang', '26', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('2602', '六盘水市', '六盘水', 'liupanshui', '26', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('2603', '遵义市', '遵义', 'zunyi', '26', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('2604', '安顺市', '安顺', 'anshun', '26', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('2605', '铜仁地区', '铜仁地区', 'tongrendiqu', '26', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('2606', '毕节地区', '毕节地区', 'bijiediqu', '26', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('2607', '黔西南州', '黔西南', 'qianxinan', '26', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('2608', '黔东南州', '黔东南', 'qiandongnan', '26', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('2609', '黔南州', '黔南', 'qiannan', '26', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('2701', '拉萨市', '拉萨', 'lasa', '27', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('2702', '那曲地区', '那曲地区', 'naqudiqu', '27', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('2703', '昌都地区', '昌都地区', 'changdudiqu', '27', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('2704', '山南地区', '山南地区', 'shannandiqu', '27', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('2705', '日喀则', '日喀则', 'rikaze', '27', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('2706', '阿里地区', '阿里地区', 'alidiqu', '27', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('2707', '林芝地区', '林芝地区', 'linzhidiqu', '27', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('2801', '兰州市', '兰州', 'lanzhou', '28', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('2802', '金昌市', '金昌', 'jinchang', '28', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('2803', '白银市', '白银', 'baiyin', '28', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('2804', '天水市', '天水', 'tianshui', '28', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('2805', '嘉峪关市', '嘉峪关', 'jiayuguan', '28', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('2806', '武威市', '武威', 'wuwei', '28', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('2807', '定西地区', '定西地区', 'dingxidiqu', '28', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('2808', '平凉地区', '平凉地区', 'pingliangdiqu', '28', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('2809', '庆阳地区', '庆阳地区', 'qingyangdiqu', '28', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('2810', '陇南地区', '陇南地区', 'longnandiqu', '28', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('2811', '张掖地区', '张掖地区', 'zhangyediqu', '28', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('2812', '酒泉地区', '酒泉地区', 'jiuquandiqu', '28', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('2813', '甘南州', '甘南', 'gannan', '28', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('2814', '临夏州', '临夏', 'linxia', '28', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('2901', '银川市', '银川', 'yinchuan', '29', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('2902', '石嘴山市', '石嘴山', 'shizuishan', '29', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('2903', '吴忠市', '吴忠', 'wuzhong', '29', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('2904', '固原市', '固原', 'guyuan', '29', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('3001', '西宁市', '西宁', 'xining', '30', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('3002', '海东地区', '海东地区', 'haidongdiqu', '30', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('3003', '海北州', '海北', 'haibei', '30', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('3004', '黄南州', '黄南', 'huangnan', '30', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('3005', '海南州', '海南', 'hainan1', '30', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('3006', '果洛州', '果洛', 'guoluo', '30', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('3007', '玉树州', '玉树', 'yushu', '30', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('3008', '海西州', '海西', 'haixi', '30', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('3101', '乌鲁木齐', '乌鲁木齐', 'wulumuqi', '31', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('3102', '克拉玛依', '克拉玛依', 'kelamayi', '31', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('3103', '石河子市', '石河子', 'shihezi', '31', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('3104', '吐鲁番', '吐鲁番', 'tulufan', '31', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('3105', '哈密地区', '哈密地区', 'hamidiqu', '31', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('3106', '和田地区', '和田地区', 'hetiandiqu', '31', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('3107', '阿克苏', '阿克苏', 'akesu', '31', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('3108', '喀什地区', '喀什地区', 'kashidiqu', '31', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('3109', '克孜勒苏', '克孜勒苏', 'kezilesu', '31', '0', '0', '1', '0');
INSERT INTO `yunu_area` VALUES ('3110', '巴音郭楞', '巴音郭楞', 'bayinguoleng', '31', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('3111', '昌吉州', '昌吉', 'changji', '31', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('3112', '博尔塔拉', '博尔塔拉', 'boertala', '31', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('3113', '伊犁州', '伊犁', 'yili', '31', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('3201', '香港岛', '香港岛', 'xianggangdao', '32', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('3202', '九龙', '九龙', 'jiulong', '32', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('3203', '新界', '新界', 'xinjie', '32', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('3301', '澳门半岛', '澳门半岛', 'aomenbandao', '33', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('3302', '离岛', '离岛', 'lidao', '33', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('3401', '台北市', '台北', 'taibei', '34', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('3402', '高雄市', '高雄', 'gaoxiong', '34', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('3403', '台南市', '台南', 'tainan', '34', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('3404', '台中市', '台中', 'taizhong', '34', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('3407', '基隆市', '基隆', 'jilong', '34', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('3408', '新竹市', '新竹', 'xinzhu', '34', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('3409', '嘉义市', '嘉义', 'jiayi', '34', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('3410', '新北市', '新北', 'xinbei', '34', '0', '0', '0', '0');
INSERT INTO `yunu_area` VALUES ('6019', '丹阳市', '丹阳', 'danyang', '810', '1', '0', '1', '0');
INSERT INTO `yunu_area` VALUES ('6020', '扬中市', '扬中', 'yangzhong', '810', '2', '0', '1', '0');

-- ----------------------------
-- Table structure for yunu_auth_group
-- ----------------------------
DROP TABLE IF EXISTS `yunu_auth_group`;
CREATE TABLE `yunu_auth_group` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` char(100) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `rules` char(255) NOT NULL DEFAULT '',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yunu_auth_group
-- ----------------------------
INSERT INTO `yunu_auth_group` VALUES ('1', '超级管理员', '1', '', '1446535750', '1446535750');

-- ----------------------------
-- Table structure for yunu_auth_group_access
-- ----------------------------
DROP TABLE IF EXISTS `yunu_auth_group_access`;
CREATE TABLE `yunu_auth_group_access` (
  `uid` mediumint(8) unsigned NOT NULL,
  `group_id` mediumint(8) unsigned NOT NULL,
  UNIQUE KEY `uid_group_id` (`uid`,`group_id`),
  KEY `uid` (`uid`),
  KEY `group_id` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yunu_auth_group_access
-- ----------------------------
INSERT INTO `yunu_auth_group_access` VALUES ('0', '1');
INSERT INTO `yunu_auth_group_access` VALUES ('1', '1');
INSERT INTO `yunu_auth_group_access` VALUES ('4', '8');

-- ----------------------------
-- Table structure for yunu_auth_rule
-- ----------------------------
DROP TABLE IF EXISTS `yunu_auth_rule`;
CREATE TABLE `yunu_auth_rule` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(80) NOT NULL DEFAULT '',
  `title` char(20) NOT NULL DEFAULT '',
  `type` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `css` varchar(20) NOT NULL COMMENT '样式',
  `condition` char(100) NOT NULL DEFAULT '',
  `pid` int(11) NOT NULL DEFAULT '0' COMMENT '父栏目ID',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '添加时间',
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=187 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yunu_auth_rule
-- ----------------------------
INSERT INTO `yunu_auth_rule` VALUES ('1', '#', '常用菜单', '1', '1', 'fa fa-building', '', '0', '1', '1446535750', '1501903299');
INSERT INTO `yunu_auth_rule` VALUES ('2', 'admin/system/basic', '基础设置', '1', '1', 'fa fa-cogs', '', '1', '0', '1446535750', '1502883984');
INSERT INTO `yunu_auth_rule` VALUES ('3', 'admin/category/index', '栏目设置', '1', '1', 'fa fa-list', '', '1', '1', '1446535750', '1501832913');
INSERT INTO `yunu_auth_rule` VALUES ('6', 'admin/data/index', '数据库管理', '1', '1', 'fa fa-database', '', '127', '4', '1446535750', '1502154059');
INSERT INTO `yunu_auth_rule` VALUES ('7', 'admin/url/index', 'URL设置', '1', '1', 'fa fa-paste', '', '1', '2', '1446535750', '1502803740');
INSERT INTO `yunu_auth_rule` VALUES ('159', 'admin/diyfield/adddiyline', '新增分组线', '1', '1', '', '', '153', '8', '1502801140', '1502801140');
INSERT INTO `yunu_auth_rule` VALUES ('162', 'admin/user/myuser', '我的帐户', '1', '1', 'fa fa-user', '', '1', '3', '1502803939', '1504339586');
INSERT INTO `yunu_auth_rule` VALUES ('9', 'admin/menu/index', '菜单管理', '1', '1', 'fa fa-server', '', '127', '0', '1501834142', '1502800572');
INSERT INTO `yunu_auth_rule` VALUES ('10', '#', '内容管理', '1', '1', 'fa fa-edit', '', '0', '2', '1501834284', '1501834293');
INSERT INTO `yunu_auth_rule` VALUES ('11', 'admin/content/index', '内容管理', '1', '1', 'fa fa-edit', '', '10', '0', '1501834356', '1501834356');
INSERT INTO `yunu_auth_rule` VALUES ('160', 'admin/diyfield/editdiyline', '编辑分组线', '1', '1', '', '', '153', '9', '1502801188', '1502801188');
INSERT INTO `yunu_auth_rule` VALUES ('116', 'admin/banner/index', '幻灯片管理', '1', '1', 'fa fa-photo', '', '118', '5', '1501835145', '1502704480');
INSERT INTO `yunu_auth_rule` VALUES ('117', 'admin/block/category', '自定义块', '1', '1', 'fa fa-tag', '', '118', '6', '1501835395', '1502704497');
INSERT INTO `yunu_auth_rule` VALUES ('118', '#', '扩展管理', '1', '1', 'fa fa-bar-chart', '', '0', '4', '1501835526', '1502704453');
INSERT INTO `yunu_auth_rule` VALUES ('119', 'admin/system/seo', '首页SEO设置', '1', '1', 'fa fa-adjust', '', '118', '0', '1501835598', '1506327744');
INSERT INTO `yunu_auth_rule` VALUES ('120', 'admin/link/index', '友情链接', '1', '1', 'fa fa-sitemap', '', '118', '2', '1501835776', '1501835813');
INSERT INTO `yunu_auth_rule` VALUES ('121', 'admin/area/index', '地区管理', '1', '1', 'fa fa-globe', '', '118', '3', '1501835925', '1501835925');
INSERT INTO `yunu_auth_rule` VALUES ('122', '#', 'WAP设置', '1', '1', 'fa fa-mobile', '', '0', '5', '1501836081', '1501836103');
INSERT INTO `yunu_auth_rule` VALUES ('123', 'admin/wap/index', '基本设置', '1', '1', 'fa fa-mobile', '', '122', '0', '1501836095', '1502704808');
INSERT INTO `yunu_auth_rule` VALUES ('167', 'admin/upgrade/index', '平台管理', '1', '1', 'fa fa-cloud-upload', '', '127', '6', '1505378826', '1505802870');
INSERT INTO `yunu_auth_rule` VALUES ('125', 'admin/menu/addrule', '新增菜单', '1', '1', '', '', '9', '0', '1501894012', '1501894012');
INSERT INTO `yunu_auth_rule` VALUES ('126', 'admin/menu/editrule', '编辑菜单', '1', '1', '', '', '9', '0', '1501895017', '1501895017');
INSERT INTO `yunu_auth_rule` VALUES ('127', '#', '系统管理', '1', '1', 'fa fa-tv', '', '0', '7', '1501895233', '1501895233');
INSERT INTO `yunu_auth_rule` VALUES ('128', 'admin/role/index', '角色管理', '1', '1', 'fa fa-id-badge', '', '127', '2', '1501895662', '1501895662');
INSERT INTO `yunu_auth_rule` VALUES ('129', 'admin/user/index', '管理员管理', '1', '1', 'fa fa-id-card', '', '127', '3', '1501895718', '1501895718');
INSERT INTO `yunu_auth_rule` VALUES ('131', 'admin/role/addrole', '新增角色', '1', '1', '', '', '128', '1', '1502074929', '1502074929');
INSERT INTO `yunu_auth_rule` VALUES ('132', 'admin/role/editrole', '编辑角色', '1', '1', '', '', '128', '2', '1502074953', '1502074953');
INSERT INTO `yunu_auth_rule` VALUES ('133', 'admin/user/adduser', '新增管理员', '1', '1', '', '', '129', '1', '1502099070', '1502099070');
INSERT INTO `yunu_auth_rule` VALUES ('134', 'admin/user/edituser', '编辑管理员', '1', '1', '', '', '129', '2', '1502099244', '1502099244');
INSERT INTO `yunu_auth_rule` VALUES ('135', 'admin/data/import', '数据库恢复', '1', '1', '', '', '6', '1', '1502158772', '1502158772');
INSERT INTO `yunu_auth_rule` VALUES ('136', 'admin/log/index', '日志管理', '1', '1', 'fa fa-map-o', '', '127', '5', '1502161451', '1502800493');
INSERT INTO `yunu_auth_rule` VALUES ('137', 'admin/banner/addbanner', '新增幻灯片', '1', '1', '', '', '116', '1', '1502351560', '1502351560');
INSERT INTO `yunu_auth_rule` VALUES ('138', 'admin/banner/editbanner', '编辑幻灯片', '1', '1', '', '', '116', '2', '1502351585', '1502351585');
INSERT INTO `yunu_auth_rule` VALUES ('139', 'admin/sitelink/index', '热门标签', '1', '1', 'fa fa-tag', '', '118', '4', '1502414966', '1502414966');
INSERT INTO `yunu_auth_rule` VALUES ('140', 'admin/sitelink/addsitelink', '新增热门标签', '1', '1', '', '', '139', '1', '1502421200', '1502421200');
INSERT INTO `yunu_auth_rule` VALUES ('141', 'admin/sitelink/editsitelink', '编辑热门标签', '1', '1', '', '', '139', '2', '1502421232', '1502421232');
INSERT INTO `yunu_auth_rule` VALUES ('142', 'admin/link/addlink', '新增友情链接', '1', '1', '', '', '120', '1', '1502421259', '1502421259');
INSERT INTO `yunu_auth_rule` VALUES ('143', 'admin/link/editlink', '编辑友情链接', '1', '1', '', '', '120', '2', '1502421283', '1502421283');
INSERT INTO `yunu_auth_rule` VALUES ('144', 'admin/block/addblock', '新增自定义块', '1', '1', '', '', '117', '1', '1502432100', '1502432100');
INSERT INTO `yunu_auth_rule` VALUES ('145', 'admin/block/editblock', '编辑自定义块', '1', '1', '', '', '117', '2', '1502432143', '1502432143');
INSERT INTO `yunu_auth_rule` VALUES ('146', 'admin/block/addcategory', '新增自定义块分类', '1', '1', '', '', '117', '5', '1502435132', '1502435132');
INSERT INTO `yunu_auth_rule` VALUES ('147', 'admin/block/editcategory', '编辑自定义块分类', '1', '1', '', '', '117', '6', '1502435163', '1502435163');
INSERT INTO `yunu_auth_rule` VALUES ('148', 'admin/block/index', '自定义块管理', '1', '1', '', '', '117', '0', '1502435194', '1502435194');
INSERT INTO `yunu_auth_rule` VALUES ('149', 'admin/area/addarea', '新增地区', '1', '1', '', '', '121', '1', '1502698791', '1502698791');
INSERT INTO `yunu_auth_rule` VALUES ('150', 'admin/area/editarea', '编辑地区', '1', '1', '', '', '121', '2', '1502698815', '1502698815');
INSERT INTO `yunu_auth_rule` VALUES ('153', 'admin/diymodel/index', '模型管理', '1', '1', 'fa fa-modx', '', '127', '1', '1502708524', '1502800581');
INSERT INTO `yunu_auth_rule` VALUES ('154', 'admin/diyfield/index', '字段管理', '1', '1', 'fa fa-code', '', '153', '4', '1502708623', '1502781468');
INSERT INTO `yunu_auth_rule` VALUES ('155', 'admin/diymodel/adddiymodel', '新增模型', '1', '1', '', '', '153', '1', '1502709642', '1502709642');
INSERT INTO `yunu_auth_rule` VALUES ('156', 'admin/diymodel/editdiymodel', '编辑模型', '1', '1', '', '', '153', '2', '1502709664', '1502709664');
INSERT INTO `yunu_auth_rule` VALUES ('157', 'admin/diyfield/adddiyfield', '新增自定义字段', '1', '1', '', '', '153', '5', '1502765914', '1502781428');
INSERT INTO `yunu_auth_rule` VALUES ('158', 'admin/diyfield/editdiyfield', '编辑自定义字段', '1', '1', '', '', '153', '6', '1502765934', '1502781450');
INSERT INTO `yunu_auth_rule` VALUES ('161', 'admin/area/statearea', '全局设置', '1', '1', '', '', '121', '4', '1502801715', '1506477056');
INSERT INTO `yunu_auth_rule` VALUES ('163', 'admin/category/addcategory', '新增栏目', '1', '1', '', '', '3', '1', '1502878827', '1502878827');
INSERT INTO `yunu_auth_rule` VALUES ('164', 'admin/category/editcategory', '编辑栏目', '1', '1', '', '', '3', '2', '1502878850', '1502878850');
INSERT INTO `yunu_auth_rule` VALUES ('165', 'admin/content/addcontent', '新增内容', '1', '1', '', '', '11', '1', '1503017703', '1503017703');
INSERT INTO `yunu_auth_rule` VALUES ('166', 'admin/content/editcontent', '编辑内容', '1', '1', '', '', '11', '2', '1503060259', '1503060259');
INSERT INTO `yunu_auth_rule` VALUES ('168', 'admin/upgrade/lists', '升级文件列表', '1', '1', '', '', '167', '1', '1505464242', '1505464242');
INSERT INTO `yunu_auth_rule` VALUES ('169', 'admin/upgrade/tpl', '模版更新列表', '1', '1', '', '', '167', '2', '1505804353', '1505804353');
INSERT INTO `yunu_auth_rule` VALUES ('170', 'admin/system/sitemap', '站点地图', '1', '1', 'fa fa-map', '', '118', '7', '1505984040', '1505984040');
INSERT INTO `yunu_auth_rule` VALUES ('171', 'admin/category/delcategory', '删除栏目', '1', '1', '', '', '3', '3', '1506476807', '1506476807');
INSERT INTO `yunu_auth_rule` VALUES ('172', 'admin/content/delContent', '删除内容', '1', '1', '', '', '11', '3', '1506476941', '1506476941');
INSERT INTO `yunu_auth_rule` VALUES ('173', 'admin/link/dellink', '删除友情链接', '1', '1', '', '', '120', '3', '1506476980', '1506476980');
INSERT INTO `yunu_auth_rule` VALUES ('174', 'admin/area/delarea', '删除地区', '1', '1', '', '', '121', '3', '1506477034', '1506477034');
INSERT INTO `yunu_auth_rule` VALUES ('175', 'admin/sitelink/delsitelink', '删除热门标签', '1', '1', '', '', '139', '3', '1506477271', '1506477271');
INSERT INTO `yunu_auth_rule` VALUES ('176', 'admin/banner/delbanner', '删除幻灯片', '1', '1', '', '', '116', '3', '1506477313', '1506477313');
INSERT INTO `yunu_auth_rule` VALUES ('177', 'admin/block/delblock', '删除自定义块', '1', '1', '', '', '117', '4', '1506477361', '1506477361');
INSERT INTO `yunu_auth_rule` VALUES ('178', 'admin/block/delcategory', '删除自定义块分类', '1', '1', '', '', '117', '7', '1506477420', '1506477420');
INSERT INTO `yunu_auth_rule` VALUES ('179', 'admin/menu/delrule', '删除菜单', '1', '1', '', '', '9', '3', '1506477447', '1506477447');
INSERT INTO `yunu_auth_rule` VALUES ('180', 'admin/diymodel/deldiymodel', '删除模型', '1', '1', '', '', '153', '3', '1506477529', '1506477529');
INSERT INTO `yunu_auth_rule` VALUES ('181', 'admin/diyfield/deldiyfield', '删除自定义字段', '1', '1', '', '', '153', '7', '1506477581', '1506477581');
INSERT INTO `yunu_auth_rule` VALUES ('182', 'admin/diyfield/deldiyline', '删除分组线', '1', '1', '', '', '153', '10', '1506477639', '1506477639');
INSERT INTO `yunu_auth_rule` VALUES ('183', 'admin/role/delrole', '删除角色', '1', '1', '', '', '128', '3', '1506477695', '1506477695');
INSERT INTO `yunu_auth_rule` VALUES ('184', 'admin/user/deluser', '删除管理员', '1', '1', '', '', '129', '3', '1506477730', '1506477730');
INSERT INTO `yunu_auth_rule` VALUES ('185', 'admin/data/export', '数据库备份', '1', '1', '', '', '6', '2', '1506477813', '1506477813');
INSERT INTO `yunu_auth_rule` VALUES ('186', 'admin/content/batchaddcontent', '批量添加内容', '1', '1', '', '', '11', '4', '1508902398', '1508902398');

-- ----------------------------
-- Table structure for yunu_banner
-- ----------------------------
DROP TABLE IF EXISTS `yunu_banner`;
CREATE TABLE `yunu_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL COMMENT '标题',
  `pic` varchar(200) DEFAULT NULL COMMENT '图片',
  `fpic` varchar(200) DEFAULT NULL COMMENT '副图',
  `url` varchar(200) DEFAULT NULL COMMENT '链接',
  `sort` smallint(6) DEFAULT '0' COMMENT '排序',
  `type` tinyint(1) DEFAULT '1' COMMENT '类型 1PC 2手机',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yunu_banner
-- ----------------------------
INSERT INTO `yunu_banner` VALUES ('20', '11', '/uploads/image/20170929/c20ee6e4f167f19eb37754c6178d8f21.jpg', '', '#', '0', '2');
INSERT INTO `yunu_banner` VALUES ('19', '11', '/uploads/image/20170929/b6d3bf29720455ef16903e8689fcb4bb.jpg', '', '#', '0', '2');
INSERT INTO `yunu_banner` VALUES ('17', '11', '/uploads/image/20170929/eb242765015da7ac79987234e12b2d3c.jpg', '', '#', '0', '1');
INSERT INTO `yunu_banner` VALUES ('18', '22', '/uploads/image/20170929/a01b7740cb8c75cff837c8a8baad3c3e.jpg', '', '#', '0', '1');

-- ----------------------------
-- Table structure for yunu_block
-- ----------------------------
DROP TABLE IF EXISTS `yunu_block`;
CREATE TABLE `yunu_block` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL COMMENT '标题',
  `content` text COMMENT '内容',
  `type` tinyint(1) DEFAULT '1' COMMENT '类型 1文本 2图片 3富文本',
  `remark` text COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yunu_block
-- ----------------------------
INSERT INTO `yunu_block` VALUES ('46', '6', 'head_text1', '<h6>SO BUILDING MATERIALS CO., LTD</h6>', '3', '公司名称英文');
INSERT INTO `yunu_block` VALUES ('47', '6', 'logo', '/uploads/image/20170929/583f583fa9414bed1f230809411004dd.png', '2', 'logo');
INSERT INTO `yunu_block` VALUES ('48', '6', 'head_text2', '<p>专注环保建材<em>15</em>年！</p><p>扮靓世界 创新生活</p>', '3', '标语');
INSERT INTO `yunu_block` VALUES ('49', '6', 'head_text3', '<p><em>全国服务热线：</em>010-88888888 13888888888</p>', '3', '全国服务热线');
INSERT INTO `yunu_block` VALUES ('50', '7', 'CONTACT', '<p><img src=\"/template/default/index/img/dz.png\" alt=\"\"/>地址：香港XXXXXX街XXX号XXX大厦XXXXX室</p><p><img src=\"/template/default/index/img/dh.png\" alt=\"\"/>电话：010-12345678</p><p><img src=\"/template/default/index/img/sj.png\" alt=\"\"/>手机：13888888888</p><p><img src=\"/template/default/index/img/yx.png\" alt=\"\"/>邮箱：88888888@qq.com</p>', '3', '联系方式');
INSERT INTO `yunu_block` VALUES ('51', '7', 'map', '119.496081,32.200027', '1', '地图坐标点');
INSERT INTO `yunu_block` VALUES ('52', '7', 'banner_text', '                        <p class=\"pbottom\" id=\"pbottom\">\n                            <strong>CHINA GREEN BUILDING MATERIALS INNOVATION BRAND</strong>\n                            <b>为您提供<span>设计、生产、销售</span>一条龙解决方案</b>\n                        </p>\n                        <i id=\"fonts\">中国<em>绿色</em>建材创新品牌</i>', '1', '幻灯片文字');
INSERT INTO `yunu_block` VALUES ('53', '7', 'page_banner', '/uploads/image/20170929/943300e2cbbc41a477408155c6cc0120.jpg', '2', '内页banner');
INSERT INTO `yunu_block` VALUES ('54', '8', 'logo2', '/uploads/image/20170929/902d35fd0ae6581f34cf9141d1dd7901.png', '2', '底部logo');
INSERT INTO `yunu_block` VALUES ('55', '8', 'ewm', '/uploads/image/20170929/5677e95daa174df1d16646613b737504.png', '2', '二维码');

-- ----------------------------
-- Table structure for yunu_block_category
-- ----------------------------
DROP TABLE IF EXISTS `yunu_block_category`;
CREATE TABLE `yunu_block_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL COMMENT '标题',
  `sort` int(11) DEFAULT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yunu_block_category
-- ----------------------------
INSERT INTO `yunu_block_category` VALUES ('6', '头部公共', '1');
INSERT INTO `yunu_block_category` VALUES ('7', '公共部分', '2');
INSERT INTO `yunu_block_category` VALUES ('8', '底部公共', '3');
INSERT INTO `yunu_block_category` VALUES ('9', '手机', '4');

-- ----------------------------
-- Table structure for yunu_browse
-- ----------------------------
DROP TABLE IF EXISTS `yunu_browse`;
CREATE TABLE `yunu_browse` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(15) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `type` tinyint(1) DEFAULT '1' COMMENT '1PC 2手机',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5397 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yunu_browse
-- ----------------------------
INSERT INTO `yunu_browse` VALUES ('1', '127.0.0.1', '1504337385', '1');
INSERT INTO `yunu_browse` VALUES ('2', '127.0.0.1', '1504337393', '1');
INSERT INTO `yunu_browse` VALUES ('3', '127.0.0.1', '1504338932', '1');
INSERT INTO `yunu_browse` VALUES ('4', '127.0.0.1', '1504338937', '1');
INSERT INTO `yunu_browse` VALUES ('5', '127.0.0.1', '1504488972', '1');
INSERT INTO `yunu_browse` VALUES ('6', '127.0.0.1', '1504488974', '1');
INSERT INTO `yunu_browse` VALUES ('7', '127.0.0.1', '1504489012', '1');
INSERT INTO `yunu_browse` VALUES ('8', '127.0.0.1', '1504489015', '1');
INSERT INTO `yunu_browse` VALUES ('9', '127.0.0.1', '1504489347', '1');
INSERT INTO `yunu_browse` VALUES ('10', '127.0.0.1', '1504489349', '1');
INSERT INTO `yunu_browse` VALUES ('11', '127.0.0.1', '1504489367', '1');
INSERT INTO `yunu_browse` VALUES ('12', '127.0.0.1', '1504489369', '1');
INSERT INTO `yunu_browse` VALUES ('13', '127.0.0.1', '1504489371', '1');
INSERT INTO `yunu_browse` VALUES ('14', '127.0.0.1', '1504489383', '1');
INSERT INTO `yunu_browse` VALUES ('15', '127.0.0.1', '1504489385', '1');
INSERT INTO `yunu_browse` VALUES ('16', '127.0.0.1', '1504489387', '1');
INSERT INTO `yunu_browse` VALUES ('17', '127.0.0.1', '1504489396', '1');
INSERT INTO `yunu_browse` VALUES ('18', '127.0.0.1', '1504489400', '1');
INSERT INTO `yunu_browse` VALUES ('19', '127.0.0.1', '1504494430', '1');
INSERT INTO `yunu_browse` VALUES ('20', '127.0.0.1', '1504512702', '1');
INSERT INTO `yunu_browse` VALUES ('21', '127.0.0.1', '1504512805', '1');
INSERT INTO `yunu_browse` VALUES ('22', '127.0.0.1', '1504512840', '1');
INSERT INTO `yunu_browse` VALUES ('23', '127.0.0.1', '1504512841', '1');
INSERT INTO `yunu_browse` VALUES ('24', '127.0.0.1', '1504512871', '1');
INSERT INTO `yunu_browse` VALUES ('25', '127.0.0.1', '1504517504', '1');
INSERT INTO `yunu_browse` VALUES ('26', '127.0.0.1', '1504517514', '1');
INSERT INTO `yunu_browse` VALUES ('27', '127.0.0.1', '1504517540', '1');
INSERT INTO `yunu_browse` VALUES ('28', '127.0.0.1', '1504517672', '1');
INSERT INTO `yunu_browse` VALUES ('29', '127.0.0.1', '1504517710', '1');
INSERT INTO `yunu_browse` VALUES ('30', '127.0.0.1', '1504517768', '1');
INSERT INTO `yunu_browse` VALUES ('31', '127.0.0.1', '1504518780', '1');
INSERT INTO `yunu_browse` VALUES ('32', '127.0.0.1', '1504573001', '1');
INSERT INTO `yunu_browse` VALUES ('33', '127.0.0.1', '1504573032', '1');
INSERT INTO `yunu_browse` VALUES ('34', '127.0.0.1', '1504582828', '1');
INSERT INTO `yunu_browse` VALUES ('35', '127.0.0.1', '1504582841', '1');
INSERT INTO `yunu_browse` VALUES ('36', '127.0.0.1', '1504582947', '1');
INSERT INTO `yunu_browse` VALUES ('37', '127.0.0.1', '1504595117', '1');
INSERT INTO `yunu_browse` VALUES ('38', '127.0.0.1', '1504659391', '1');
INSERT INTO `yunu_browse` VALUES ('39', '127.0.0.1', '1504659752', '1');
INSERT INTO `yunu_browse` VALUES ('40', '127.0.0.1', '1504659760', '1');
INSERT INTO `yunu_browse` VALUES ('41', '127.0.0.1', '1504659807', '1');
INSERT INTO `yunu_browse` VALUES ('42', '127.0.0.1', '1504659822', '1');
INSERT INTO `yunu_browse` VALUES ('43', '127.0.0.1', '1504660201', '1');
INSERT INTO `yunu_browse` VALUES ('44', '127.0.0.1', '1504660211', '1');
INSERT INTO `yunu_browse` VALUES ('45', '127.0.0.1', '1504660233', '1');
INSERT INTO `yunu_browse` VALUES ('46', '127.0.0.1', '1504660255', '1');
INSERT INTO `yunu_browse` VALUES ('47', '127.0.0.1', '1504660255', '1');
INSERT INTO `yunu_browse` VALUES ('48', '127.0.0.1', '1504660255', '1');
INSERT INTO `yunu_browse` VALUES ('49', '127.0.0.1', '1504660255', '1');
INSERT INTO `yunu_browse` VALUES ('50', '127.0.0.1', '1504660255', '1');
INSERT INTO `yunu_browse` VALUES ('51', '127.0.0.1', '1504660255', '1');
INSERT INTO `yunu_browse` VALUES ('52', '127.0.0.1', '1504660255', '1');
INSERT INTO `yunu_browse` VALUES ('53', '127.0.0.1', '1504660255', '1');
INSERT INTO `yunu_browse` VALUES ('54', '127.0.0.1', '1504660255', '1');
INSERT INTO `yunu_browse` VALUES ('55', '127.0.0.1', '1504660255', '1');
INSERT INTO `yunu_browse` VALUES ('56', '127.0.0.1', '1504660255', '1');
INSERT INTO `yunu_browse` VALUES ('57', '127.0.0.1', '1504660255', '1');
INSERT INTO `yunu_browse` VALUES ('58', '127.0.0.1', '1504660255', '1');
INSERT INTO `yunu_browse` VALUES ('59', '127.0.0.1', '1504660255', '1');
INSERT INTO `yunu_browse` VALUES ('60', '127.0.0.1', '1504660255', '1');
INSERT INTO `yunu_browse` VALUES ('61', '127.0.0.1', '1504660255', '1');
INSERT INTO `yunu_browse` VALUES ('62', '127.0.0.1', '1504660255', '1');
INSERT INTO `yunu_browse` VALUES ('63', '127.0.0.1', '1504660255', '1');
INSERT INTO `yunu_browse` VALUES ('64', '127.0.0.1', '1504660255', '1');
INSERT INTO `yunu_browse` VALUES ('65', '127.0.0.1', '1504660341', '1');
INSERT INTO `yunu_browse` VALUES ('66', '127.0.0.1', '1504660343', '1');
INSERT INTO `yunu_browse` VALUES ('67', '127.0.0.1', '1504660502', '1');
INSERT INTO `yunu_browse` VALUES ('68', '127.0.0.1', '1504660576', '2');
INSERT INTO `yunu_browse` VALUES ('69', '127.0.0.1', '1504660586', '2');
INSERT INTO `yunu_browse` VALUES ('70', '127.0.0.1', '1504660664', '2');
INSERT INTO `yunu_browse` VALUES ('71', '127.0.0.1', '1504660685', '2');
INSERT INTO `yunu_browse` VALUES ('72', '127.0.0.1', '1504660728', '2');
INSERT INTO `yunu_browse` VALUES ('73', '127.0.0.1', '1504661183', '2');
INSERT INTO `yunu_browse` VALUES ('74', '127.0.0.1', '1504661197', '2');
INSERT INTO `yunu_browse` VALUES ('75', '127.0.0.1', '1504661201', '2');
INSERT INTO `yunu_browse` VALUES ('76', '127.0.0.1', '1504661262', '2');
INSERT INTO `yunu_browse` VALUES ('77', '127.0.0.1', '1504661629', '2');
INSERT INTO `yunu_browse` VALUES ('78', '127.0.0.1', '1504661701', '2');
INSERT INTO `yunu_browse` VALUES ('79', '127.0.0.1', '1504666163', '2');
INSERT INTO `yunu_browse` VALUES ('80', '127.0.0.1', '1504666163', '2');
INSERT INTO `yunu_browse` VALUES ('81', '127.0.0.1', '1504666163', '2');
INSERT INTO `yunu_browse` VALUES ('82', '127.0.0.1', '1504666163', '2');
INSERT INTO `yunu_browse` VALUES ('83', '127.0.0.1', '1504666163', '2');
INSERT INTO `yunu_browse` VALUES ('84', '127.0.0.1', '1504666163', '2');
INSERT INTO `yunu_browse` VALUES ('85', '127.0.0.1', '1504666163', '2');
INSERT INTO `yunu_browse` VALUES ('86', '127.0.0.1', '1504666163', '2');
INSERT INTO `yunu_browse` VALUES ('87', '127.0.0.1', '1504666163', '2');
INSERT INTO `yunu_browse` VALUES ('88', '127.0.0.1', '1504666163', '2');
INSERT INTO `yunu_browse` VALUES ('89', '127.0.0.1', '1504666163', '2');
INSERT INTO `yunu_browse` VALUES ('90', '127.0.0.1', '1504666163', '2');
INSERT INTO `yunu_browse` VALUES ('91', '127.0.0.1', '1504666163', '2');
INSERT INTO `yunu_browse` VALUES ('92', '127.0.0.1', '1504666171', '2');
INSERT INTO `yunu_browse` VALUES ('93', '127.0.0.1', '1504666379', '2');
INSERT INTO `yunu_browse` VALUES ('94', '127.0.0.1', '1504666391', '1');
INSERT INTO `yunu_browse` VALUES ('95', '127.0.0.1', '1504666427', '2');
INSERT INTO `yunu_browse` VALUES ('96', '127.0.0.1', '1504666443', '2');
INSERT INTO `yunu_browse` VALUES ('97', '127.0.0.1', '1504666449', '2');
INSERT INTO `yunu_browse` VALUES ('98', '127.0.0.1', '1504666988', '2');
INSERT INTO `yunu_browse` VALUES ('99', '127.0.0.1', '1504666993', '2');
INSERT INTO `yunu_browse` VALUES ('100', '127.0.0.1', '1504667006', '2');
INSERT INTO `yunu_browse` VALUES ('101', '127.0.0.1', '1504667007', '2');
INSERT INTO `yunu_browse` VALUES ('102', '127.0.0.1', '1504667007', '2');
INSERT INTO `yunu_browse` VALUES ('103', '127.0.0.1', '1504667007', '2');
INSERT INTO `yunu_browse` VALUES ('104', '127.0.0.1', '1504667008', '2');
INSERT INTO `yunu_browse` VALUES ('105', '127.0.0.1', '1504667211', '2');
INSERT INTO `yunu_browse` VALUES ('106', '127.0.0.1', '1504667212', '2');
INSERT INTO `yunu_browse` VALUES ('107', '127.0.0.1', '1504667224', '2');
INSERT INTO `yunu_browse` VALUES ('108', '127.0.0.1', '1504667260', '2');
INSERT INTO `yunu_browse` VALUES ('109', '127.0.0.1', '1504667261', '2');
INSERT INTO `yunu_browse` VALUES ('110', '127.0.0.1', '1504667261', '2');
INSERT INTO `yunu_browse` VALUES ('111', '127.0.0.1', '1504667262', '2');
INSERT INTO `yunu_browse` VALUES ('112', '127.0.0.1', '1504667262', '2');
INSERT INTO `yunu_browse` VALUES ('113', '127.0.0.1', '1504667271', '2');
INSERT INTO `yunu_browse` VALUES ('114', '127.0.0.1', '1504667272', '2');
INSERT INTO `yunu_browse` VALUES ('115', '127.0.0.1', '1504667366', '2');
INSERT INTO `yunu_browse` VALUES ('116', '127.0.0.1', '1504667376', '1');
INSERT INTO `yunu_browse` VALUES ('117', '127.0.0.1', '1504667439', '1');
INSERT INTO `yunu_browse` VALUES ('118', '127.0.0.1', '1504667469', '1');
INSERT INTO `yunu_browse` VALUES ('119', '127.0.0.1', '1504667513', '1');
INSERT INTO `yunu_browse` VALUES ('120', '127.0.0.1', '1504667697', '1');
INSERT INTO `yunu_browse` VALUES ('121', '127.0.0.1', '1504667698', '1');
INSERT INTO `yunu_browse` VALUES ('122', '127.0.0.1', '1504667708', '1');
INSERT INTO `yunu_browse` VALUES ('123', '127.0.0.1', '1504667713', '1');
INSERT INTO `yunu_browse` VALUES ('124', '127.0.0.1', '1504667721', '1');
INSERT INTO `yunu_browse` VALUES ('125', '127.0.0.1', '1504667844', '1');
INSERT INTO `yunu_browse` VALUES ('126', '127.0.0.1', '1504667897', '1');
INSERT INTO `yunu_browse` VALUES ('127', '127.0.0.1', '1504667940', '1');
INSERT INTO `yunu_browse` VALUES ('128', '127.0.0.1', '1504668225', '1');
INSERT INTO `yunu_browse` VALUES ('129', '127.0.0.1', '1504668228', '1');
INSERT INTO `yunu_browse` VALUES ('130', '127.0.0.1', '1504670021', '1');
INSERT INTO `yunu_browse` VALUES ('131', '127.0.0.1', '1504670088', '1');
INSERT INTO `yunu_browse` VALUES ('132', '127.0.0.1', '1504670099', '1');
INSERT INTO `yunu_browse` VALUES ('133', '127.0.0.1', '1504670111', '1');
INSERT INTO `yunu_browse` VALUES ('134', '127.0.0.1', '1504670135', '1');
INSERT INTO `yunu_browse` VALUES ('135', '127.0.0.1', '1504670199', '1');
INSERT INTO `yunu_browse` VALUES ('136', '127.0.0.1', '1504670239', '1');
INSERT INTO `yunu_browse` VALUES ('137', '127.0.0.1', '1504670248', '1');
INSERT INTO `yunu_browse` VALUES ('138', '127.0.0.1', '1504670253', '1');
INSERT INTO `yunu_browse` VALUES ('139', '127.0.0.1', '1504670470', '1');
INSERT INTO `yunu_browse` VALUES ('140', '127.0.0.1', '1504683323', '2');
INSERT INTO `yunu_browse` VALUES ('141', '127.0.0.1', '1504683518', '2');
INSERT INTO `yunu_browse` VALUES ('142', '127.0.0.1', '1504683634', '2');
INSERT INTO `yunu_browse` VALUES ('143', '127.0.0.1', '1504683700', '2');
INSERT INTO `yunu_browse` VALUES ('144', '127.0.0.1', '1504683722', '2');
INSERT INTO `yunu_browse` VALUES ('145', '127.0.0.1', '1504683734', '2');
INSERT INTO `yunu_browse` VALUES ('146', '127.0.0.1', '1504687483', '2');
INSERT INTO `yunu_browse` VALUES ('147', '127.0.0.1', '1504687535', '1');
INSERT INTO `yunu_browse` VALUES ('148', '127.0.0.1', '1504745896', '1');
INSERT INTO `yunu_browse` VALUES ('149', '127.0.0.1', '1504745901', '1');
INSERT INTO `yunu_browse` VALUES ('150', '127.0.0.1', '1504746937', '2');
INSERT INTO `yunu_browse` VALUES ('151', '127.0.0.1', '1504747088', '2');
INSERT INTO `yunu_browse` VALUES ('152', '127.0.0.1', '1504747220', '2');
INSERT INTO `yunu_browse` VALUES ('153', '127.0.0.1', '1504747259', '2');
INSERT INTO `yunu_browse` VALUES ('154', '127.0.0.1', '1504747533', '2');
INSERT INTO `yunu_browse` VALUES ('155', '127.0.0.1', '1504747535', '2');
INSERT INTO `yunu_browse` VALUES ('156', '127.0.0.1', '1504747753', '2');
INSERT INTO `yunu_browse` VALUES ('157', '127.0.0.1', '1504747857', '2');
INSERT INTO `yunu_browse` VALUES ('158', '127.0.0.1', '1504747858', '2');
INSERT INTO `yunu_browse` VALUES ('159', '127.0.0.1', '1504747864', '2');
INSERT INTO `yunu_browse` VALUES ('160', '127.0.0.1', '1504747914', '2');
INSERT INTO `yunu_browse` VALUES ('161', '127.0.0.1', '1504747941', '2');
INSERT INTO `yunu_browse` VALUES ('162', '127.0.0.1', '1504747997', '2');
INSERT INTO `yunu_browse` VALUES ('163', '127.0.0.1', '1504748030', '2');
INSERT INTO `yunu_browse` VALUES ('164', '127.0.0.1', '1504748063', '2');
INSERT INTO `yunu_browse` VALUES ('165', '127.0.0.1', '1504748094', '2');
INSERT INTO `yunu_browse` VALUES ('166', '127.0.0.1', '1504748191', '2');
INSERT INTO `yunu_browse` VALUES ('167', '127.0.0.1', '1504748432', '2');
INSERT INTO `yunu_browse` VALUES ('168', '127.0.0.1', '1504748440', '2');
INSERT INTO `yunu_browse` VALUES ('169', '127.0.0.1', '1504748447', '2');
INSERT INTO `yunu_browse` VALUES ('170', '127.0.0.1', '1504748520', '2');
INSERT INTO `yunu_browse` VALUES ('171', '127.0.0.1', '1504748674', '2');
INSERT INTO `yunu_browse` VALUES ('172', '127.0.0.1', '1504749805', '1');
INSERT INTO `yunu_browse` VALUES ('173', '127.0.0.1', '1504752656', '1');
INSERT INTO `yunu_browse` VALUES ('174', '127.0.0.1', '1504752729', '1');
INSERT INTO `yunu_browse` VALUES ('175', '127.0.0.1', '1504752917', '2');
INSERT INTO `yunu_browse` VALUES ('176', '127.0.0.1', '1504753108', '2');
INSERT INTO `yunu_browse` VALUES ('177', '127.0.0.1', '1504753110', '2');
INSERT INTO `yunu_browse` VALUES ('178', '127.0.0.1', '1504753118', '2');
INSERT INTO `yunu_browse` VALUES ('179', '127.0.0.1', '1504753669', '2');
INSERT INTO `yunu_browse` VALUES ('180', '127.0.0.1', '1504753679', '2');
INSERT INTO `yunu_browse` VALUES ('181', '127.0.0.1', '1504753682', '2');
INSERT INTO `yunu_browse` VALUES ('182', '127.0.0.1', '1504753685', '2');
INSERT INTO `yunu_browse` VALUES ('183', '127.0.0.1', '1504753686', '2');
INSERT INTO `yunu_browse` VALUES ('184', '127.0.0.1', '1504754562', '2');
INSERT INTO `yunu_browse` VALUES ('185', '127.0.0.1', '1504754584', '2');
INSERT INTO `yunu_browse` VALUES ('186', '127.0.0.1', '1504754665', '1');
INSERT INTO `yunu_browse` VALUES ('187', '127.0.0.1', '1504832405', '1');
INSERT INTO `yunu_browse` VALUES ('188', '127.0.0.1', '1505092102', '1');
INSERT INTO `yunu_browse` VALUES ('189', '127.0.0.1', '1505115824', '1');
INSERT INTO `yunu_browse` VALUES ('190', '127.0.0.1', '1505177740', '1');
INSERT INTO `yunu_browse` VALUES ('191', '127.0.0.1', '1505187495', '1');
INSERT INTO `yunu_browse` VALUES ('192', '127.0.0.1', '1505187496', '1');
INSERT INTO `yunu_browse` VALUES ('193', '127.0.0.1', '1505187497', '1');
INSERT INTO `yunu_browse` VALUES ('194', '127.0.0.1', '1505187498', '1');
INSERT INTO `yunu_browse` VALUES ('195', '127.0.0.1', '1505187501', '1');
INSERT INTO `yunu_browse` VALUES ('196', '127.0.0.1', '1505187504', '1');
INSERT INTO `yunu_browse` VALUES ('197', '127.0.0.1', '1505187536', '1');
INSERT INTO `yunu_browse` VALUES ('198', '127.0.0.1', '1505187537', '1');
INSERT INTO `yunu_browse` VALUES ('199', '127.0.0.1', '1505187538', '1');
INSERT INTO `yunu_browse` VALUES ('200', '127.0.0.1', '1505187539', '1');
INSERT INTO `yunu_browse` VALUES ('201', '127.0.0.1', '1505263881', '1');
INSERT INTO `yunu_browse` VALUES ('202', '127.0.0.1', '1505270213', '1');
INSERT INTO `yunu_browse` VALUES ('203', '127.0.0.1', '1505377580', '1');
INSERT INTO `yunu_browse` VALUES ('204', '127.0.0.1', '1505436375', '1');
INSERT INTO `yunu_browse` VALUES ('205', '127.0.0.1', '1505523202', '1');
INSERT INTO `yunu_browse` VALUES ('206', '127.0.0.1', '1505697958', '1');
INSERT INTO `yunu_browse` VALUES ('207', '127.0.0.1', '1505781958', '1');
INSERT INTO `yunu_browse` VALUES ('208', '127.0.0.1', '1505869183', '1');
INSERT INTO `yunu_browse` VALUES ('209', '127.0.0.1', '1505872689', '1');
INSERT INTO `yunu_browse` VALUES ('210', '127.0.0.1', '1505888118', '1');
INSERT INTO `yunu_browse` VALUES ('211', '127.0.0.1', '1505955759', '1');
INSERT INTO `yunu_browse` VALUES ('212', '127.0.0.1', '1505955980', '2');
INSERT INTO `yunu_browse` VALUES ('213', '127.0.0.1', '1505956437', '2');
INSERT INTO `yunu_browse` VALUES ('214', '127.0.0.1', '1505956444', '2');
INSERT INTO `yunu_browse` VALUES ('215', '127.0.0.1', '1505956476', '2');
INSERT INTO `yunu_browse` VALUES ('216', '127.0.0.1', '1505956600', '2');
INSERT INTO `yunu_browse` VALUES ('217', '127.0.0.1', '1505956633', '2');
INSERT INTO `yunu_browse` VALUES ('218', '127.0.0.1', '1505956638', '2');
INSERT INTO `yunu_browse` VALUES ('219', '127.0.0.1', '1505956649', '2');
INSERT INTO `yunu_browse` VALUES ('220', '127.0.0.1', '1505956693', '2');
INSERT INTO `yunu_browse` VALUES ('221', '127.0.0.1', '1505958519', '2');
INSERT INTO `yunu_browse` VALUES ('222', '127.0.0.1', '1505958524', '2');
INSERT INTO `yunu_browse` VALUES ('223', '127.0.0.1', '1505958538', '2');
INSERT INTO `yunu_browse` VALUES ('224', '127.0.0.1', '1505958543', '1');
INSERT INTO `yunu_browse` VALUES ('225', '127.0.0.1', '1505961317', '1');
INSERT INTO `yunu_browse` VALUES ('226', '127.0.0.1', '1505961362', '1');
INSERT INTO `yunu_browse` VALUES ('227', '127.0.0.1', '1505962339', '1');
INSERT INTO `yunu_browse` VALUES ('228', '127.0.0.1', '1505962340', '1');
INSERT INTO `yunu_browse` VALUES ('229', '127.0.0.1', '1505962396', '1');
INSERT INTO `yunu_browse` VALUES ('230', '127.0.0.1', '1505974572', '1');
INSERT INTO `yunu_browse` VALUES ('231', '127.0.0.1', '1505974640', '1');
INSERT INTO `yunu_browse` VALUES ('232', '127.0.0.1', '1505989843', '1');
INSERT INTO `yunu_browse` VALUES ('233', '127.0.0.1', '1505990330', '1');
INSERT INTO `yunu_browse` VALUES ('234', '127.0.0.1', '1505993241', '1');
INSERT INTO `yunu_browse` VALUES ('235', '127.0.0.1', '1505993246', '1');
INSERT INTO `yunu_browse` VALUES ('236', '127.0.0.1', '1505993254', '1');
INSERT INTO `yunu_browse` VALUES ('237', '127.0.0.1', '1505993259', '1');
INSERT INTO `yunu_browse` VALUES ('238', '127.0.0.1', '1505993264', '1');
INSERT INTO `yunu_browse` VALUES ('239', '127.0.0.1', '1505993302', '1');
INSERT INTO `yunu_browse` VALUES ('240', '127.0.0.1', '1505993345', '1');
INSERT INTO `yunu_browse` VALUES ('241', '127.0.0.1', '1505993352', '1');
INSERT INTO `yunu_browse` VALUES ('242', '127.0.0.1', '1505993366', '1');
INSERT INTO `yunu_browse` VALUES ('243', '127.0.0.1', '1505993397', '1');
INSERT INTO `yunu_browse` VALUES ('244', '127.0.0.1', '1505993402', '1');
INSERT INTO `yunu_browse` VALUES ('245', '127.0.0.1', '1505993410', '1');
INSERT INTO `yunu_browse` VALUES ('246', '127.0.0.1', '1505993425', '1');
INSERT INTO `yunu_browse` VALUES ('247', '127.0.0.1', '1505993452', '1');
INSERT INTO `yunu_browse` VALUES ('248', '127.0.0.1', '1505993486', '1');
INSERT INTO `yunu_browse` VALUES ('249', '127.0.0.1', '1505993552', '1');
INSERT INTO `yunu_browse` VALUES ('250', '127.0.0.1', '1505993560', '1');
INSERT INTO `yunu_browse` VALUES ('251', '127.0.0.1', '1505993606', '1');
INSERT INTO `yunu_browse` VALUES ('252', '127.0.0.1', '1505993680', '1');
INSERT INTO `yunu_browse` VALUES ('253', '127.0.0.1', '1505993683', '1');
INSERT INTO `yunu_browse` VALUES ('254', '127.0.0.1', '1505993728', '1');
INSERT INTO `yunu_browse` VALUES ('255', '127.0.0.1', '1506041817', '1');
INSERT INTO `yunu_browse` VALUES ('256', '127.0.0.1', '1506070411', '1');
INSERT INTO `yunu_browse` VALUES ('257', '127.0.0.1', '1506070511', '1');
INSERT INTO `yunu_browse` VALUES ('258', '127.0.0.1', '1506132304', '1');
INSERT INTO `yunu_browse` VALUES ('259', '127.0.0.1', '1506132393', '1');
INSERT INTO `yunu_browse` VALUES ('260', '127.0.0.1', '1506134241', '1');
INSERT INTO `yunu_browse` VALUES ('261', '127.0.0.1', '1506135997', '1');
INSERT INTO `yunu_browse` VALUES ('262', '127.0.0.1', '1506136003', '1');
INSERT INTO `yunu_browse` VALUES ('263', '127.0.0.1', '1506306019', '1');
INSERT INTO `yunu_browse` VALUES ('264', '127.0.0.1', '1506311115', '1');
INSERT INTO `yunu_browse` VALUES ('265', '127.0.0.1', '1506311901', '1');
INSERT INTO `yunu_browse` VALUES ('266', '127.0.0.1', '1506388088', '1');
INSERT INTO `yunu_browse` VALUES ('267', '127.0.0.1', '1506388110', '1');
INSERT INTO `yunu_browse` VALUES ('268', '127.0.0.1', '1506388129', '1');
INSERT INTO `yunu_browse` VALUES ('269', '127.0.0.1', '1506388179', '1');
INSERT INTO `yunu_browse` VALUES ('270', '127.0.0.1', '1506388181', '1');
INSERT INTO `yunu_browse` VALUES ('271', '127.0.0.1', '1506389039', '1');
INSERT INTO `yunu_browse` VALUES ('272', '127.0.0.1', '1506390288', '1');
INSERT INTO `yunu_browse` VALUES ('273', '127.0.0.1', '1506390289', '1');
INSERT INTO `yunu_browse` VALUES ('274', '127.0.0.1', '1506394329', '1');
INSERT INTO `yunu_browse` VALUES ('275', '127.0.0.1', '1506394338', '1');
INSERT INTO `yunu_browse` VALUES ('276', '127.0.0.1', '1506394502', '1');
INSERT INTO `yunu_browse` VALUES ('277', '127.0.0.1', '1506394517', '1');
INSERT INTO `yunu_browse` VALUES ('278', '127.0.0.1', '1506394517', '1');
INSERT INTO `yunu_browse` VALUES ('279', '127.0.0.1', '1506394530', '1');
INSERT INTO `yunu_browse` VALUES ('280', '127.0.0.1', '1506394542', '1');
INSERT INTO `yunu_browse` VALUES ('281', '127.0.0.1', '1506394543', '1');
INSERT INTO `yunu_browse` VALUES ('282', '127.0.0.1', '1506394552', '1');
INSERT INTO `yunu_browse` VALUES ('283', '127.0.0.1', '1506394557', '1');
INSERT INTO `yunu_browse` VALUES ('284', '127.0.0.1', '1506394567', '1');
INSERT INTO `yunu_browse` VALUES ('285', '127.0.0.1', '1506474685', '1');
INSERT INTO `yunu_browse` VALUES ('286', '127.0.0.1', '1506478139', '1');
INSERT INTO `yunu_browse` VALUES ('287', '127.0.0.1', '1506478226', '1');
INSERT INTO `yunu_browse` VALUES ('288', '127.0.0.1', '1506478245', '1');
INSERT INTO `yunu_browse` VALUES ('289', '127.0.0.1', '1506478560', '1');
INSERT INTO `yunu_browse` VALUES ('290', '127.0.0.1', '1506478565', '1');
INSERT INTO `yunu_browse` VALUES ('291', '127.0.0.1', '1506478579', '1');
INSERT INTO `yunu_browse` VALUES ('292', '127.0.0.1', '1506478582', '1');
INSERT INTO `yunu_browse` VALUES ('293', '127.0.0.1', '1506478593', '1');
INSERT INTO `yunu_browse` VALUES ('294', '127.0.0.1', '1506478794', '1');
INSERT INTO `yunu_browse` VALUES ('295', '127.0.0.1', '1506478846', '1');
INSERT INTO `yunu_browse` VALUES ('296', '127.0.0.1', '1506478850', '2');
INSERT INTO `yunu_browse` VALUES ('297', '127.0.0.1', '1506478852', '2');
INSERT INTO `yunu_browse` VALUES ('298', '127.0.0.1', '1506479292', '2');
INSERT INTO `yunu_browse` VALUES ('299', '127.0.0.1', '1506479310', '2');
INSERT INTO `yunu_browse` VALUES ('300', '127.0.0.1', '1506479320', '2');
INSERT INTO `yunu_browse` VALUES ('301', '127.0.0.1', '1506479377', '2');
INSERT INTO `yunu_browse` VALUES ('302', '127.0.0.1', '1506479437', '2');
INSERT INTO `yunu_browse` VALUES ('303', '127.0.0.1', '1506479450', '1');
INSERT INTO `yunu_browse` VALUES ('304', '127.0.0.1', '1506502208', '1');
INSERT INTO `yunu_browse` VALUES ('305', '127.0.0.1', '1506581704', '1');
INSERT INTO `yunu_browse` VALUES ('306', '127.0.0.1', '1506588131', '1');
INSERT INTO `yunu_browse` VALUES ('307', '127.0.0.1', '1506647383', '1');
INSERT INTO `yunu_browse` VALUES ('308', '127.0.0.1', '1506673085', '1');
INSERT INTO `yunu_browse` VALUES ('309', '127.0.0.1', '1506673476', '1');
INSERT INTO `yunu_browse` VALUES ('310', '127.0.0.1', '1506673491', '1');
INSERT INTO `yunu_browse` VALUES ('311', '127.0.0.1', '1506673644', '1');
INSERT INTO `yunu_browse` VALUES ('312', '127.0.0.1', '1506673990', '1');
INSERT INTO `yunu_browse` VALUES ('313', '127.0.0.1', '1506676380', '1');
INSERT INTO `yunu_browse` VALUES ('314', '127.0.0.1', '1506676386', '1');
INSERT INTO `yunu_browse` VALUES ('315', '127.0.0.1', '1506676404', '1');
INSERT INTO `yunu_browse` VALUES ('316', '127.0.0.1', '1506676424', '1');
INSERT INTO `yunu_browse` VALUES ('317', '127.0.0.1', '1506676617', '1');
INSERT INTO `yunu_browse` VALUES ('318', '127.0.0.1', '1506677070', '1');
INSERT INTO `yunu_browse` VALUES ('319', '127.0.0.1', '1506677540', '1');
INSERT INTO `yunu_browse` VALUES ('320', '127.0.0.1', '1506677610', '1');
INSERT INTO `yunu_browse` VALUES ('321', '127.0.0.1', '1506677641', '1');
INSERT INTO `yunu_browse` VALUES ('322', '127.0.0.1', '1506677682', '1');
INSERT INTO `yunu_browse` VALUES ('323', '127.0.0.1', '1506678136', '1');
INSERT INTO `yunu_browse` VALUES ('324', '127.0.0.1', '1506678140', '1');
INSERT INTO `yunu_browse` VALUES ('325', '127.0.0.1', '1506678146', '1');
INSERT INTO `yunu_browse` VALUES ('326', '127.0.0.1', '1506678157', '1');
INSERT INTO `yunu_browse` VALUES ('327', '127.0.0.1', '1506678158', '1');
INSERT INTO `yunu_browse` VALUES ('328', '127.0.0.1', '1506678159', '1');
INSERT INTO `yunu_browse` VALUES ('329', '127.0.0.1', '1506731841', '1');
INSERT INTO `yunu_browse` VALUES ('330', '127.0.0.1', '1506731845', '1');
INSERT INTO `yunu_browse` VALUES ('331', '127.0.0.1', '1506731954', '1');
INSERT INTO `yunu_browse` VALUES ('332', '127.0.0.1', '1506732097', '1');
INSERT INTO `yunu_browse` VALUES ('333', '127.0.0.1', '1506732099', '1');
INSERT INTO `yunu_browse` VALUES ('334', '127.0.0.1', '1506732992', '1');
INSERT INTO `yunu_browse` VALUES ('335', '127.0.0.1', '1506733850', '1');
INSERT INTO `yunu_browse` VALUES ('336', '127.0.0.1', '1506734389', '1');
INSERT INTO `yunu_browse` VALUES ('337', '127.0.0.1', '1506734463', '1');
INSERT INTO `yunu_browse` VALUES ('338', '127.0.0.1', '1506735421', '1');
INSERT INTO `yunu_browse` VALUES ('339', '127.0.0.1', '1506735709', '1');
INSERT INTO `yunu_browse` VALUES ('340', '127.0.0.1', '1506735715', '1');
INSERT INTO `yunu_browse` VALUES ('341', '127.0.0.1', '1506735753', '1');
INSERT INTO `yunu_browse` VALUES ('342', '127.0.0.1', '1506735775', '1');
INSERT INTO `yunu_browse` VALUES ('343', '127.0.0.1', '1506736820', '1');
INSERT INTO `yunu_browse` VALUES ('344', '127.0.0.1', '1506736842', '1');
INSERT INTO `yunu_browse` VALUES ('345', '127.0.0.1', '1506736867', '1');
INSERT INTO `yunu_browse` VALUES ('346', '127.0.0.1', '1506736871', '1');
INSERT INTO `yunu_browse` VALUES ('347', '127.0.0.1', '1506737662', '1');
INSERT INTO `yunu_browse` VALUES ('348', '127.0.0.1', '1506737898', '1');
INSERT INTO `yunu_browse` VALUES ('349', '127.0.0.1', '1506737902', '2');
INSERT INTO `yunu_browse` VALUES ('350', '127.0.0.1', '1506737919', '1');
INSERT INTO `yunu_browse` VALUES ('351', '127.0.0.1', '1506737923', '1');
INSERT INTO `yunu_browse` VALUES ('352', '127.0.0.1', '1506738456', '2');
INSERT INTO `yunu_browse` VALUES ('353', '127.0.0.1', '1506738637', '2');
INSERT INTO `yunu_browse` VALUES ('354', '127.0.0.1', '1506738699', '2');
INSERT INTO `yunu_browse` VALUES ('355', '127.0.0.1', '1506738716', '2');
INSERT INTO `yunu_browse` VALUES ('356', '127.0.0.1', '1506738747', '2');
INSERT INTO `yunu_browse` VALUES ('357', '127.0.0.1', '1506738760', '2');
INSERT INTO `yunu_browse` VALUES ('358', '127.0.0.1', '1506738770', '2');
INSERT INTO `yunu_browse` VALUES ('359', '127.0.0.1', '1506738773', '2');
INSERT INTO `yunu_browse` VALUES ('360', '127.0.0.1', '1506738805', '1');
INSERT INTO `yunu_browse` VALUES ('361', '127.0.0.1', '1506739294', '1');
INSERT INTO `yunu_browse` VALUES ('362', '127.0.0.1', '1506757686', '1');
INSERT INTO `yunu_browse` VALUES ('363', '127.0.0.1', '1507518994', '1');
INSERT INTO `yunu_browse` VALUES ('364', '127.0.0.1', '1507518999', '1');
INSERT INTO `yunu_browse` VALUES ('365', '127.0.0.1', '1507527908', '1');
INSERT INTO `yunu_browse` VALUES ('366', '127.0.0.1', '1507530514', '1');
INSERT INTO `yunu_browse` VALUES ('367', '127.0.0.1', '1507530518', '1');
INSERT INTO `yunu_browse` VALUES ('368', '127.0.0.1', '1507530542', '1');
INSERT INTO `yunu_browse` VALUES ('369', '127.0.0.1', '1507530543', '1');
INSERT INTO `yunu_browse` VALUES ('370', '127.0.0.1', '1507530611', '1');
INSERT INTO `yunu_browse` VALUES ('371', '127.0.0.1', '1507530623', '1');
INSERT INTO `yunu_browse` VALUES ('372', '127.0.0.1', '1507530624', '1');
INSERT INTO `yunu_browse` VALUES ('373', '127.0.0.1', '1507530643', '1');
INSERT INTO `yunu_browse` VALUES ('374', '127.0.0.1', '1507530653', '1');
INSERT INTO `yunu_browse` VALUES ('375', '127.0.0.1', '1507530930', '1');
INSERT INTO `yunu_browse` VALUES ('376', '127.0.0.1', '1507530936', '1');
INSERT INTO `yunu_browse` VALUES ('377', '127.0.0.1', '1507530937', '1');
INSERT INTO `yunu_browse` VALUES ('378', '127.0.0.1', '1507530949', '1');
INSERT INTO `yunu_browse` VALUES ('379', '127.0.0.1', '1507530950', '1');
INSERT INTO `yunu_browse` VALUES ('380', '127.0.0.1', '1507530961', '1');
INSERT INTO `yunu_browse` VALUES ('381', '127.0.0.1', '1507530972', '1');
INSERT INTO `yunu_browse` VALUES ('382', '127.0.0.1', '1507531041', '1');
INSERT INTO `yunu_browse` VALUES ('383', '127.0.0.1', '1507531061', '1');
INSERT INTO `yunu_browse` VALUES ('384', '127.0.0.1', '1507531072', '1');
INSERT INTO `yunu_browse` VALUES ('385', '127.0.0.1', '1507533979', '1');
INSERT INTO `yunu_browse` VALUES ('386', '127.0.0.1', '1507534192', '1');
INSERT INTO `yunu_browse` VALUES ('387', '127.0.0.1', '1507534196', '1');
INSERT INTO `yunu_browse` VALUES ('388', '127.0.0.1', '1507535287', '1');
INSERT INTO `yunu_browse` VALUES ('389', '127.0.0.1', '1507535293', '1');
INSERT INTO `yunu_browse` VALUES ('390', '127.0.0.1', '1507540671', '1');
INSERT INTO `yunu_browse` VALUES ('391', '127.0.0.1', '1507601463', '1');
INSERT INTO `yunu_browse` VALUES ('392', '127.0.0.1', '1507684049', '1');
INSERT INTO `yunu_browse` VALUES ('393', '127.0.0.1', '1507684060', '1');
INSERT INTO `yunu_browse` VALUES ('394', '127.0.0.1', '1507790963', '1');
INSERT INTO `yunu_browse` VALUES ('395', '127.0.0.1', '1507948431', '1');
INSERT INTO `yunu_browse` VALUES ('396', '127.0.0.1', '1507948450', '1');
INSERT INTO `yunu_browse` VALUES ('397', '127.0.0.1', '1507948455', '1');
INSERT INTO `yunu_browse` VALUES ('398', '127.0.0.1', '1507948471', '1');
INSERT INTO `yunu_browse` VALUES ('399', '127.0.0.1', '1507948475', '1');
INSERT INTO `yunu_browse` VALUES ('400', '127.0.0.1', '1507964474', '1');
INSERT INTO `yunu_browse` VALUES ('401', '127.0.0.1', '1507964487', '1');
INSERT INTO `yunu_browse` VALUES ('402', '127.0.0.1', '1507971011', '1');
INSERT INTO `yunu_browse` VALUES ('403', '127.0.0.1', '1507971030', '1');
INSERT INTO `yunu_browse` VALUES ('404', '127.0.0.1', '1508115876', '1');
INSERT INTO `yunu_browse` VALUES ('405', '127.0.0.1', '1508133175', '1');
INSERT INTO `yunu_browse` VALUES ('406', '127.0.0.1', '1508133183', '1');
INSERT INTO `yunu_browse` VALUES ('407', '127.0.0.1', '1508133209', '1');
INSERT INTO `yunu_browse` VALUES ('408', '127.0.0.1', '1508133725', '1');
INSERT INTO `yunu_browse` VALUES ('409', '127.0.0.1', '1508133756', '1');
INSERT INTO `yunu_browse` VALUES ('410', '127.0.0.1', '1508134068', '1');
INSERT INTO `yunu_browse` VALUES ('411', '127.0.0.1', '1508134072', '1');
INSERT INTO `yunu_browse` VALUES ('412', '127.0.0.1', '1508134075', '1');
INSERT INTO `yunu_browse` VALUES ('413', '127.0.0.1', '1508134285', '1');
INSERT INTO `yunu_browse` VALUES ('414', '127.0.0.1', '1508135263', '1');
INSERT INTO `yunu_browse` VALUES ('415', '127.0.0.1', '1508135463', '1');
INSERT INTO `yunu_browse` VALUES ('416', '127.0.0.1', '1508136519', '1');
INSERT INTO `yunu_browse` VALUES ('417', '127.0.0.1', '1508136562', '1');
INSERT INTO `yunu_browse` VALUES ('418', '127.0.0.1', '1508136578', '1');
INSERT INTO `yunu_browse` VALUES ('419', '127.0.0.1', '1508136838', '1');
INSERT INTO `yunu_browse` VALUES ('420', '127.0.0.1', '1508136856', '1');
INSERT INTO `yunu_browse` VALUES ('421', '127.0.0.1', '1508136893', '1');
INSERT INTO `yunu_browse` VALUES ('422', '127.0.0.1', '1508140891', '1');
INSERT INTO `yunu_browse` VALUES ('423', '127.0.0.1', '1508141798', '1');
INSERT INTO `yunu_browse` VALUES ('424', '127.0.0.1', '1508142207', '1');
INSERT INTO `yunu_browse` VALUES ('425', '127.0.0.1', '1508142209', '1');
INSERT INTO `yunu_browse` VALUES ('426', '127.0.0.1', '1508142250', '1');
INSERT INTO `yunu_browse` VALUES ('427', '127.0.0.1', '1508144539', '1');
INSERT INTO `yunu_browse` VALUES ('428', '127.0.0.1', '1508144576', '1');
INSERT INTO `yunu_browse` VALUES ('429', '127.0.0.1', '1508144598', '1');
INSERT INTO `yunu_browse` VALUES ('430', '127.0.0.1', '1508145860', '1');
INSERT INTO `yunu_browse` VALUES ('431', '127.0.0.1', '1508204311', '1');
INSERT INTO `yunu_browse` VALUES ('432', '127.0.0.1', '1508204721', '1');
INSERT INTO `yunu_browse` VALUES ('433', '127.0.0.1', '1508204858', '1');
INSERT INTO `yunu_browse` VALUES ('434', '127.0.0.1', '1508205120', '1');
INSERT INTO `yunu_browse` VALUES ('435', '127.0.0.1', '1508205191', '1');
INSERT INTO `yunu_browse` VALUES ('436', '127.0.0.1', '1508205224', '1');
INSERT INTO `yunu_browse` VALUES ('437', '127.0.0.1', '1508205255', '1');
INSERT INTO `yunu_browse` VALUES ('438', '127.0.0.1', '1508205263', '1');
INSERT INTO `yunu_browse` VALUES ('439', '127.0.0.1', '1508205280', '1');
INSERT INTO `yunu_browse` VALUES ('440', '127.0.0.1', '1508205344', '1');
INSERT INTO `yunu_browse` VALUES ('441', '127.0.0.1', '1508205385', '1');
INSERT INTO `yunu_browse` VALUES ('442', '127.0.0.1', '1508205721', '1');
INSERT INTO `yunu_browse` VALUES ('443', '127.0.0.1', '1508205782', '1');
INSERT INTO `yunu_browse` VALUES ('444', '127.0.0.1', '1508205820', '1');
INSERT INTO `yunu_browse` VALUES ('445', '127.0.0.1', '1508205872', '1');
INSERT INTO `yunu_browse` VALUES ('446', '127.0.0.1', '1508205980', '1');
INSERT INTO `yunu_browse` VALUES ('447', '127.0.0.1', '1508206000', '1');
INSERT INTO `yunu_browse` VALUES ('448', '127.0.0.1', '1508206007', '1');
INSERT INTO `yunu_browse` VALUES ('449', '127.0.0.1', '1508206046', '1');
INSERT INTO `yunu_browse` VALUES ('450', '127.0.0.1', '1508206120', '1');
INSERT INTO `yunu_browse` VALUES ('451', '127.0.0.1', '1508206133', '1');
INSERT INTO `yunu_browse` VALUES ('452', '127.0.0.1', '1508206164', '1');
INSERT INTO `yunu_browse` VALUES ('453', '127.0.0.1', '1508206385', '1');
INSERT INTO `yunu_browse` VALUES ('454', '127.0.0.1', '1508206391', '1');
INSERT INTO `yunu_browse` VALUES ('455', '127.0.0.1', '1508206649', '1');
INSERT INTO `yunu_browse` VALUES ('456', '127.0.0.1', '1508206758', '1');
INSERT INTO `yunu_browse` VALUES ('457', '127.0.0.1', '1508206786', '1');
INSERT INTO `yunu_browse` VALUES ('458', '127.0.0.1', '1508206789', '1');
INSERT INTO `yunu_browse` VALUES ('459', '127.0.0.1', '1508207187', '1');
INSERT INTO `yunu_browse` VALUES ('460', '127.0.0.1', '1508207193', '1');
INSERT INTO `yunu_browse` VALUES ('461', '127.0.0.1', '1508207622', '1');
INSERT INTO `yunu_browse` VALUES ('462', '127.0.0.1', '1508207628', '1');
INSERT INTO `yunu_browse` VALUES ('463', '127.0.0.1', '1508207638', '1');
INSERT INTO `yunu_browse` VALUES ('3893', '49.80.182.186', '1507863230', '1');
INSERT INTO `yunu_browse` VALUES ('3894', '113.108.10.15', '1507863247', '2');
INSERT INTO `yunu_browse` VALUES ('3895', '122.5.171.29', '1507863272', '1');
INSERT INTO `yunu_browse` VALUES ('3896', '122.5.171.29', '1507863285', '1');
INSERT INTO `yunu_browse` VALUES ('3897', '49.80.182.186', '1507863289', '1');
INSERT INTO `yunu_browse` VALUES ('3898', '49.80.182.186', '1507863396', '1');
INSERT INTO `yunu_browse` VALUES ('3899', '1.80.138.54', '1507863432', '1');
INSERT INTO `yunu_browse` VALUES ('3900', '106.120.160.109', '1507863436', '1');
INSERT INTO `yunu_browse` VALUES ('3901', '101.199.112.50', '1507863445', '1');
INSERT INTO `yunu_browse` VALUES ('3902', '220.181.132.177', '1507863463', '1');
INSERT INTO `yunu_browse` VALUES ('3903', '113.15.10.223', '1507863551', '2');
INSERT INTO `yunu_browse` VALUES ('3904', '61.151.228.22', '1507863561', '1');
INSERT INTO `yunu_browse` VALUES ('3905', '1.80.138.54', '1507863571', '1');
INSERT INTO `yunu_browse` VALUES ('3906', '1.80.138.54', '1507863587', '1');
INSERT INTO `yunu_browse` VALUES ('3907', '1.80.138.54', '1507863626', '1');
INSERT INTO `yunu_browse` VALUES ('3908', '101.226.33.216', '1507863636', '1');
INSERT INTO `yunu_browse` VALUES ('3909', '1.80.138.54', '1507863653', '1');
INSERT INTO `yunu_browse` VALUES ('3910', '101.226.79.182', '1507863663', '1');
INSERT INTO `yunu_browse` VALUES ('3911', '1.80.138.54', '1507863717', '1');
INSERT INTO `yunu_browse` VALUES ('3912', '1.80.138.54', '1507863725', '1');
INSERT INTO `yunu_browse` VALUES ('3913', '121.135.39.232', '1507863783', '1');
INSERT INTO `yunu_browse` VALUES ('3914', '49.80.182.186', '1507863888', '1');
INSERT INTO `yunu_browse` VALUES ('3915', '1.80.138.54', '1507863932', '1');
INSERT INTO `yunu_browse` VALUES ('3916', '120.92.32.240', '1507863955', '1');
INSERT INTO `yunu_browse` VALUES ('3917', '183.39.90.166', '1507864012', '1');
INSERT INTO `yunu_browse` VALUES ('3918', '183.39.90.166', '1507864023', '1');
INSERT INTO `yunu_browse` VALUES ('3919', '183.39.90.166', '1507864032', '1');
INSERT INTO `yunu_browse` VALUES ('3920', '49.80.182.186', '1507864085', '1');
INSERT INTO `yunu_browse` VALUES ('3921', '1.86.243.212', '1507864094', '1');
INSERT INTO `yunu_browse` VALUES ('3922', '1.86.243.212', '1507864132', '1');
INSERT INTO `yunu_browse` VALUES ('3923', '140.205.201.30', '1507864373', '1');
INSERT INTO `yunu_browse` VALUES ('3924', '49.80.182.186', '1507864458', '1');
INSERT INTO `yunu_browse` VALUES ('3925', '49.80.182.186', '1507864463', '1');
INSERT INTO `yunu_browse` VALUES ('3926', '140.205.201.30', '1507864662', '1');
INSERT INTO `yunu_browse` VALUES ('3927', '218.205.55.104', '1507864760', '2');
INSERT INTO `yunu_browse` VALUES ('3928', '218.205.55.104', '1507864769', '2');
INSERT INTO `yunu_browse` VALUES ('3929', '117.185.27.113', '1507864770', '1');
INSERT INTO `yunu_browse` VALUES ('3930', '140.205.201.30', '1507864986', '1');
INSERT INTO `yunu_browse` VALUES ('3931', '221.198.27.223', '1507865022', '2');
INSERT INTO `yunu_browse` VALUES ('3932', '140.205.201.30', '1507865239', '1');
INSERT INTO `yunu_browse` VALUES ('3933', '140.205.201.30', '1507865447', '1');
INSERT INTO `yunu_browse` VALUES ('3934', '140.205.201.30', '1507865462', '1');
INSERT INTO `yunu_browse` VALUES ('3935', '140.205.201.30', '1507865680', '1');
INSERT INTO `yunu_browse` VALUES ('3936', '140.205.201.30', '1507865693', '1');
INSERT INTO `yunu_browse` VALUES ('3937', '140.205.201.30', '1507865710', '1');
INSERT INTO `yunu_browse` VALUES ('3938', '140.205.201.30', '1507865712', '1');
INSERT INTO `yunu_browse` VALUES ('3939', '140.205.201.30', '1507866134', '1');
INSERT INTO `yunu_browse` VALUES ('3940', '140.205.201.30', '1507866845', '1');
INSERT INTO `yunu_browse` VALUES ('3941', '140.205.201.30', '1507867339', '1');
INSERT INTO `yunu_browse` VALUES ('3942', '140.205.201.30', '1507867357', '1');
INSERT INTO `yunu_browse` VALUES ('3943', '220.166.251.67', '1507867483', '2');
INSERT INTO `yunu_browse` VALUES ('3944', '220.166.251.67', '1507867532', '1');
INSERT INTO `yunu_browse` VALUES ('3945', '220.166.251.67', '1507867543', '1');
INSERT INTO `yunu_browse` VALUES ('3946', '220.166.251.67', '1507867576', '1');
INSERT INTO `yunu_browse` VALUES ('3947', '140.205.201.30', '1507867651', '1');
INSERT INTO `yunu_browse` VALUES ('3948', '140.205.201.30', '1507867670', '1');
INSERT INTO `yunu_browse` VALUES ('3949', '140.205.201.30', '1507868002', '1');
INSERT INTO `yunu_browse` VALUES ('3950', '140.205.201.30', '1507868671', '1');
INSERT INTO `yunu_browse` VALUES ('3951', '140.205.201.30', '1507868777', '1');
INSERT INTO `yunu_browse` VALUES ('3952', '140.205.201.30', '1507869473', '1');
INSERT INTO `yunu_browse` VALUES ('3953', '140.205.201.30', '1507869536', '1');
INSERT INTO `yunu_browse` VALUES ('3954', '140.205.201.30', '1507869737', '1');
INSERT INTO `yunu_browse` VALUES ('3955', '140.205.201.30', '1507869814', '1');
INSERT INTO `yunu_browse` VALUES ('3956', '140.205.201.30', '1507870682', '1');
INSERT INTO `yunu_browse` VALUES ('3957', '140.205.201.30', '1507871008', '1');
INSERT INTO `yunu_browse` VALUES ('3958', '140.205.201.30', '1507871039', '1');
INSERT INTO `yunu_browse` VALUES ('3959', '140.205.225.202', '1507871571', '1');
INSERT INTO `yunu_browse` VALUES ('3960', '140.205.225.202', '1507871573', '1');
INSERT INTO `yunu_browse` VALUES ('3961', '140.205.201.43', '1507871870', '1');
INSERT INTO `yunu_browse` VALUES ('3962', '140.205.201.43', '1507871871', '1');
INSERT INTO `yunu_browse` VALUES ('3963', '58.217.192.54', '1507872036', '1');
INSERT INTO `yunu_browse` VALUES ('3964', '140.205.225.193', '1507872490', '1');
INSERT INTO `yunu_browse` VALUES ('3965', '140.205.225.193', '1507872492', '1');
INSERT INTO `yunu_browse` VALUES ('3966', '220.166.251.67', '1507874537', '1');
INSERT INTO `yunu_browse` VALUES ('3967', '220.166.251.67', '1507874563', '1');
INSERT INTO `yunu_browse` VALUES ('3968', '220.166.251.67', '1507874637', '1');
INSERT INTO `yunu_browse` VALUES ('3969', '140.205.201.35', '1507874716', '1');
INSERT INTO `yunu_browse` VALUES ('3970', '140.205.201.35', '1507874790', '1');
INSERT INTO `yunu_browse` VALUES ('3971', '140.205.201.43', '1507874820', '1');
INSERT INTO `yunu_browse` VALUES ('3972', '140.205.201.43', '1507874822', '1');
INSERT INTO `yunu_browse` VALUES ('3973', '123.185.11.90', '1507878055', '1');
INSERT INTO `yunu_browse` VALUES ('3974', '123.185.11.90', '1507878071', '1');
INSERT INTO `yunu_browse` VALUES ('3975', '123.185.11.90', '1507878099', '1');
INSERT INTO `yunu_browse` VALUES ('3976', '123.185.11.90', '1507878136', '1');
INSERT INTO `yunu_browse` VALUES ('3977', '111.15.39.151', '1507879182', '1');
INSERT INTO `yunu_browse` VALUES ('3978', '111.15.39.151', '1507879191', '1');
INSERT INTO `yunu_browse` VALUES ('3979', '111.15.39.151', '1507879268', '1');
INSERT INTO `yunu_browse` VALUES ('3980', '111.15.39.151', '1507879273', '1');
INSERT INTO `yunu_browse` VALUES ('3981', '140.205.225.196', '1507879369', '1');
INSERT INTO `yunu_browse` VALUES ('3982', '140.205.225.196', '1507879435', '1');
INSERT INTO `yunu_browse` VALUES ('3983', '140.205.225.196', '1507879474', '1');
INSERT INTO `yunu_browse` VALUES ('3984', '140.205.225.196', '1507879559', '1');
INSERT INTO `yunu_browse` VALUES ('3985', '140.205.225.196', '1507879593', '1');
INSERT INTO `yunu_browse` VALUES ('3986', '140.205.225.196', '1507879610', '1');
INSERT INTO `yunu_browse` VALUES ('3987', '140.205.225.196', '1507879713', '1');
INSERT INTO `yunu_browse` VALUES ('3988', '140.205.225.196', '1507879724', '1');
INSERT INTO `yunu_browse` VALUES ('3989', '140.205.225.196', '1507879735', '1');
INSERT INTO `yunu_browse` VALUES ('3990', '140.205.225.196', '1507879740', '1');
INSERT INTO `yunu_browse` VALUES ('3991', '140.205.225.196', '1507879797', '1');
INSERT INTO `yunu_browse` VALUES ('3992', '140.205.225.196', '1507879813', '1');
INSERT INTO `yunu_browse` VALUES ('3993', '140.205.225.196', '1507879825', '1');
INSERT INTO `yunu_browse` VALUES ('3994', '121.232.244.102', '1507880091', '1');
INSERT INTO `yunu_browse` VALUES ('3995', '213.180.203.42', '1507880410', '1');
INSERT INTO `yunu_browse` VALUES ('3996', '140.205.201.37', '1507881802', '1');
INSERT INTO `yunu_browse` VALUES ('3997', '140.205.201.37', '1507881803', '1');
INSERT INTO `yunu_browse` VALUES ('3998', '121.232.244.102', '1507883283', '1');
INSERT INTO `yunu_browse` VALUES ('3999', '121.232.244.102', '1507883325', '1');
INSERT INTO `yunu_browse` VALUES ('4000', '121.232.244.102', '1507883333', '1');
INSERT INTO `yunu_browse` VALUES ('4001', '121.232.244.102', '1507883588', '1');
INSERT INTO `yunu_browse` VALUES ('4002', '121.232.244.102', '1507883608', '1');
INSERT INTO `yunu_browse` VALUES ('4003', '121.232.244.102', '1507883612', '1');
INSERT INTO `yunu_browse` VALUES ('4004', '121.232.244.102', '1507883616', '1');
INSERT INTO `yunu_browse` VALUES ('4005', '121.232.244.102', '1507883623', '1');
INSERT INTO `yunu_browse` VALUES ('4006', '121.232.244.102', '1507883649', '1');
INSERT INTO `yunu_browse` VALUES ('4007', '121.232.244.102', '1507883786', '1');
INSERT INTO `yunu_browse` VALUES ('4008', '111.15.39.151', '1507884820', '1');
INSERT INTO `yunu_browse` VALUES ('4009', '111.15.39.151', '1507884891', '1');
INSERT INTO `yunu_browse` VALUES ('4010', '111.15.39.151', '1507884895', '1');
INSERT INTO `yunu_browse` VALUES ('4011', '213.180.203.42', '1507886609', '1');
INSERT INTO `yunu_browse` VALUES ('4012', '45.33.26.45', '1507886721', '2');
INSERT INTO `yunu_browse` VALUES ('4013', '124.235.138.132', '1507887688', '1');
INSERT INTO `yunu_browse` VALUES ('4014', '202.108.211.56', '1507888528', '1');
INSERT INTO `yunu_browse` VALUES ('4015', '172.104.108.109', '1507889840', '1');
INSERT INTO `yunu_browse` VALUES ('4016', '123.125.71.47', '1507891228', '1');
INSERT INTO `yunu_browse` VALUES ('4017', '140.205.201.35', '1507891710', '1');
INSERT INTO `yunu_browse` VALUES ('4018', '140.205.201.35', '1507891727', '1');
INSERT INTO `yunu_browse` VALUES ('4019', '58.217.192.54', '1507893278', '1');
INSERT INTO `yunu_browse` VALUES ('4020', '140.205.201.31', '1507894489', '1');
INSERT INTO `yunu_browse` VALUES ('4021', '140.205.201.31', '1507894837', '1');
INSERT INTO `yunu_browse` VALUES ('4022', '140.205.201.31', '1507895118', '1');
INSERT INTO `yunu_browse` VALUES ('4023', '106.186.24.228', '1507895500', '1');
INSERT INTO `yunu_browse` VALUES ('4024', '140.205.201.43', '1507896167', '1');
INSERT INTO `yunu_browse` VALUES ('4025', '140.205.201.31', '1507896197', '1');
INSERT INTO `yunu_browse` VALUES ('4026', '140.205.201.43', '1507896209', '1');
INSERT INTO `yunu_browse` VALUES ('4027', '140.205.201.43', '1507896214', '1');
INSERT INTO `yunu_browse` VALUES ('4028', '140.205.201.43', '1507896250', '1');
INSERT INTO `yunu_browse` VALUES ('4029', '140.205.201.43', '1507896267', '1');
INSERT INTO `yunu_browse` VALUES ('4030', '140.205.201.43', '1507896271', '1');
INSERT INTO `yunu_browse` VALUES ('4031', '140.205.201.43', '1507896339', '1');
INSERT INTO `yunu_browse` VALUES ('4032', '140.205.201.43', '1507896360', '1');
INSERT INTO `yunu_browse` VALUES ('4033', '140.205.201.43', '1507896372', '1');
INSERT INTO `yunu_browse` VALUES ('4034', '140.205.201.43', '1507896396', '1');
INSERT INTO `yunu_browse` VALUES ('4035', '140.205.201.31', '1507896421', '1');
INSERT INTO `yunu_browse` VALUES ('4036', '140.205.201.31', '1507896459', '1');
INSERT INTO `yunu_browse` VALUES ('4037', '140.205.201.43', '1507896475', '1');
INSERT INTO `yunu_browse` VALUES ('4038', '140.205.201.43', '1507896492', '1');
INSERT INTO `yunu_browse` VALUES ('4039', '140.205.201.43', '1507896498', '1');
INSERT INTO `yunu_browse` VALUES ('4040', '140.205.201.31', '1507896706', '1');
INSERT INTO `yunu_browse` VALUES ('4041', '140.205.201.31', '1507896808', '1');
INSERT INTO `yunu_browse` VALUES ('4042', '140.205.201.31', '1507896920', '1');
INSERT INTO `yunu_browse` VALUES ('4043', '140.205.201.31', '1507896942', '1');
INSERT INTO `yunu_browse` VALUES ('4044', '140.205.201.31', '1507897249', '1');
INSERT INTO `yunu_browse` VALUES ('4045', '140.205.201.31', '1507897464', '1');
INSERT INTO `yunu_browse` VALUES ('4046', '140.205.201.31', '1507897712', '1');
INSERT INTO `yunu_browse` VALUES ('4047', '171.13.14.54', '1507899778', '2');
INSERT INTO `yunu_browse` VALUES ('4048', '213.180.203.42', '1507904020', '1');
INSERT INTO `yunu_browse` VALUES ('4049', '213.180.203.42', '1507908406', '1');
INSERT INTO `yunu_browse` VALUES ('4050', '213.180.203.42', '1507908547', '1');
INSERT INTO `yunu_browse` VALUES ('4051', '113.108.10.5', '1507909786', '2');
INSERT INTO `yunu_browse` VALUES ('4052', '14.17.3.64', '1507909786', '2');
INSERT INTO `yunu_browse` VALUES ('4053', '14.17.44.106', '1507909787', '2');
INSERT INTO `yunu_browse` VALUES ('4054', '14.17.44.106', '1507909799', '2');
INSERT INTO `yunu_browse` VALUES ('4055', '14.17.44.106', '1507909804', '2');
INSERT INTO `yunu_browse` VALUES ('4056', '211.138.125.213', '1507912018', '2');
INSERT INTO `yunu_browse` VALUES ('4057', '140.205.201.38', '1507914165', '1');
INSERT INTO `yunu_browse` VALUES ('4058', '140.205.201.38', '1507914166', '1');
INSERT INTO `yunu_browse` VALUES ('4059', '60.50.213.70', '1507915554', '1');
INSERT INTO `yunu_browse` VALUES ('4060', '140.205.225.186', '1507925284', '1');
INSERT INTO `yunu_browse` VALUES ('4061', '140.205.225.186', '1507925285', '1');
INSERT INTO `yunu_browse` VALUES ('4062', '104.236.159.91', '1507925421', '1');
INSERT INTO `yunu_browse` VALUES ('4063', '140.205.225.197', '1507925892', '1');
INSERT INTO `yunu_browse` VALUES ('4064', '140.205.225.197', '1507925894', '1');
INSERT INTO `yunu_browse` VALUES ('4065', '213.180.203.42', '1507926884', '1');
INSERT INTO `yunu_browse` VALUES ('4066', '140.205.201.47', '1507927515', '1');
INSERT INTO `yunu_browse` VALUES ('4067', '140.205.225.204', '1507927631', '1');
INSERT INTO `yunu_browse` VALUES ('4068', '140.205.225.204', '1507927632', '1');
INSERT INTO `yunu_browse` VALUES ('4069', '140.205.225.197', '1507932198', '1');
INSERT INTO `yunu_browse` VALUES ('4070', '140.205.225.197', '1507932204', '1');
INSERT INTO `yunu_browse` VALUES ('4071', '140.205.225.197', '1507932215', '1');
INSERT INTO `yunu_browse` VALUES ('4072', '140.205.225.197', '1507932222', '1');
INSERT INTO `yunu_browse` VALUES ('4073', '140.205.225.197', '1507932223', '1');
INSERT INTO `yunu_browse` VALUES ('4074', '140.205.225.197', '1507932230', '1');
INSERT INTO `yunu_browse` VALUES ('4075', '140.205.225.197', '1507932236', '1');
INSERT INTO `yunu_browse` VALUES ('4076', '140.205.225.197', '1507932237', '1');
INSERT INTO `yunu_browse` VALUES ('4077', '140.205.225.197', '1507932240', '1');
INSERT INTO `yunu_browse` VALUES ('4078', '140.205.225.197', '1507932241', '1');
INSERT INTO `yunu_browse` VALUES ('4079', '140.205.225.197', '1507932259', '1');
INSERT INTO `yunu_browse` VALUES ('4080', '140.205.225.197', '1507932261', '1');
INSERT INTO `yunu_browse` VALUES ('4081', '140.205.225.197', '1507932262', '1');
INSERT INTO `yunu_browse` VALUES ('4082', '213.180.203.42', '1507935001', '1');
INSERT INTO `yunu_browse` VALUES ('4083', '45.34.10.226', '1507936368', '1');
INSERT INTO `yunu_browse` VALUES ('4084', '213.180.203.42', '1507943364', '1');
INSERT INTO `yunu_browse` VALUES ('4085', '66.102.6.130', '1507943370', '1');
INSERT INTO `yunu_browse` VALUES ('4086', '222.45.213.75', '1507944139', '1');
INSERT INTO `yunu_browse` VALUES ('4087', '213.180.203.42', '1507945780', '1');
INSERT INTO `yunu_browse` VALUES ('4088', '101.226.68.215', '1507947618', '2');
INSERT INTO `yunu_browse` VALUES ('4089', '14.17.21.58', '1507947618', '2');
INSERT INTO `yunu_browse` VALUES ('4090', '121.232.244.102', '1507951693', '1');
INSERT INTO `yunu_browse` VALUES ('4091', '140.205.201.47', '1507952174', '1');
INSERT INTO `yunu_browse` VALUES ('4092', '140.205.201.47', '1507952504', '1');
INSERT INTO `yunu_browse` VALUES ('4093', '140.205.201.47', '1507952945', '1');
INSERT INTO `yunu_browse` VALUES ('4094', '140.205.201.47', '1507953934', '1');
INSERT INTO `yunu_browse` VALUES ('4095', '140.205.201.47', '1507954057', '1');
INSERT INTO `yunu_browse` VALUES ('4096', '140.205.201.47', '1507954599', '1');
INSERT INTO `yunu_browse` VALUES ('4097', '140.205.201.47', '1507954726', '1');
INSERT INTO `yunu_browse` VALUES ('4098', '140.205.201.47', '1507954967', '1');
INSERT INTO `yunu_browse` VALUES ('4099', '140.205.201.47', '1507955024', '1');
INSERT INTO `yunu_browse` VALUES ('4100', '140.205.201.47', '1507955420', '1');
INSERT INTO `yunu_browse` VALUES ('4101', '140.205.201.47', '1507955850', '1');
INSERT INTO `yunu_browse` VALUES ('4102', '123.59.146.153', '1507958308', '1');
INSERT INTO `yunu_browse` VALUES ('4103', '213.180.203.42', '1507958399', '1');
INSERT INTO `yunu_browse` VALUES ('4104', '121.232.244.102', '1507958509', '1');
INSERT INTO `yunu_browse` VALUES ('4105', '121.232.244.102', '1507958536', '1');
INSERT INTO `yunu_browse` VALUES ('4106', '121.232.244.102', '1507958564', '1');
INSERT INTO `yunu_browse` VALUES ('4107', '171.13.14.39', '1507959173', '2');
INSERT INTO `yunu_browse` VALUES ('4108', '121.232.244.102', '1507959658', '1');
INSERT INTO `yunu_browse` VALUES ('4109', '101.226.33.227', '1507960396', '1');
INSERT INTO `yunu_browse` VALUES ('4110', '121.232.244.102', '1507960932', '1');
INSERT INTO `yunu_browse` VALUES ('4111', '121.232.244.102', '1507960952', '1');
INSERT INTO `yunu_browse` VALUES ('4112', '180.153.160.61', '1507961487', '2');
INSERT INTO `yunu_browse` VALUES ('4113', '113.108.21.80', '1507962598', '2');
INSERT INTO `yunu_browse` VALUES ('4114', '106.186.24.228', '1507963706', '1');
INSERT INTO `yunu_browse` VALUES ('4115', '121.232.244.102', '1507963915', '1');
INSERT INTO `yunu_browse` VALUES ('4116', '121.232.244.102', '1507965125', '1');
INSERT INTO `yunu_browse` VALUES ('4117', '121.232.244.102', '1507965164', '1');
INSERT INTO `yunu_browse` VALUES ('4118', '121.232.244.102', '1507965350', '1');
INSERT INTO `yunu_browse` VALUES ('4119', '121.232.244.102', '1507965380', '1');
INSERT INTO `yunu_browse` VALUES ('4120', '60.6.102.251', '1507966462', '2');
INSERT INTO `yunu_browse` VALUES ('4121', '112.65.193.14', '1507966471', '1');
INSERT INTO `yunu_browse` VALUES ('4122', '140.205.201.36', '1507967378', '1');
INSERT INTO `yunu_browse` VALUES ('4123', '140.205.201.36', '1507967519', '1');
INSERT INTO `yunu_browse` VALUES ('4124', '140.205.201.36', '1507967550', '1');
INSERT INTO `yunu_browse` VALUES ('4125', '140.205.201.36', '1507967625', '1');
INSERT INTO `yunu_browse` VALUES ('4126', '140.205.201.36', '1507967665', '1');
INSERT INTO `yunu_browse` VALUES ('4127', '140.205.201.36', '1507967678', '1');
INSERT INTO `yunu_browse` VALUES ('4128', '140.205.201.36', '1507967771', '1');
INSERT INTO `yunu_browse` VALUES ('4129', '140.205.201.36', '1507967782', '1');
INSERT INTO `yunu_browse` VALUES ('4130', '140.205.201.36', '1507967797', '1');
INSERT INTO `yunu_browse` VALUES ('4131', '140.205.201.36', '1507967802', '1');
INSERT INTO `yunu_browse` VALUES ('4132', '140.205.201.36', '1507967886', '1');
INSERT INTO `yunu_browse` VALUES ('4133', '140.205.201.36', '1507967892', '1');
INSERT INTO `yunu_browse` VALUES ('4134', '140.205.201.36', '1507967893', '1');
INSERT INTO `yunu_browse` VALUES ('4135', '139.162.119.197', '1507967949', '1');
INSERT INTO `yunu_browse` VALUES ('4136', '121.232.244.102', '1507969014', '1');
INSERT INTO `yunu_browse` VALUES ('4137', '121.232.244.102', '1507969019', '1');
INSERT INTO `yunu_browse` VALUES ('4138', '140.205.225.201', '1507969710', '1');
INSERT INTO `yunu_browse` VALUES ('4139', '140.205.225.201', '1507969797', '1');
INSERT INTO `yunu_browse` VALUES ('4140', '140.205.225.201', '1507969799', '1');
INSERT INTO `yunu_browse` VALUES ('4141', '140.205.225.201', '1507969879', '1');
INSERT INTO `yunu_browse` VALUES ('4142', '140.205.225.201', '1507969936', '1');
INSERT INTO `yunu_browse` VALUES ('4143', '140.205.225.201', '1507969969', '1');
INSERT INTO `yunu_browse` VALUES ('4144', '140.205.225.201', '1507970044', '1');
INSERT INTO `yunu_browse` VALUES ('4145', '140.205.225.201', '1507970058', '1');
INSERT INTO `yunu_browse` VALUES ('4146', '140.205.225.201', '1507970104', '1');
INSERT INTO `yunu_browse` VALUES ('4147', '140.205.225.201', '1507970119', '1');
INSERT INTO `yunu_browse` VALUES ('4148', '140.205.225.201', '1507970254', '1');
INSERT INTO `yunu_browse` VALUES ('4149', '140.205.225.201', '1507970280', '1');
INSERT INTO `yunu_browse` VALUES ('4150', '140.205.225.201', '1507970300', '1');
INSERT INTO `yunu_browse` VALUES ('4151', '77.37.221.94', '1507973004', '1');
INSERT INTO `yunu_browse` VALUES ('4152', '47.93.90.175', '1507975695', '1');
INSERT INTO `yunu_browse` VALUES ('4153', '163.177.90.152', '1507981704', '2');
INSERT INTO `yunu_browse` VALUES ('4154', '180.118.14.143', '1507981720', '1');
INSERT INTO `yunu_browse` VALUES ('4155', '180.118.14.143', '1507981823', '1');
INSERT INTO `yunu_browse` VALUES ('4156', '180.118.14.143', '1507981850', '1');
INSERT INTO `yunu_browse` VALUES ('4157', '180.118.14.143', '1507982181', '1');
INSERT INTO `yunu_browse` VALUES ('4158', '180.118.14.143', '1507982266', '1');
INSERT INTO `yunu_browse` VALUES ('4159', '180.118.14.143', '1507982281', '1');
INSERT INTO `yunu_browse` VALUES ('4160', '180.118.14.143', '1507982290', '1');
INSERT INTO `yunu_browse` VALUES ('4161', '101.226.65.104', '1507982291', '1');
INSERT INTO `yunu_browse` VALUES ('4162', '180.163.1.46', '1507982300', '1');
INSERT INTO `yunu_browse` VALUES ('4163', '180.118.14.143', '1507982301', '1');
INSERT INTO `yunu_browse` VALUES ('4164', '101.226.66.173', '1507982311', '1');
INSERT INTO `yunu_browse` VALUES ('4165', '180.118.14.143', '1507982313', '1');
INSERT INTO `yunu_browse` VALUES ('4166', '101.226.65.107', '1507982323', '1');
INSERT INTO `yunu_browse` VALUES ('4167', '180.118.14.143', '1507982366', '1');
INSERT INTO `yunu_browse` VALUES ('4168', '180.118.14.143', '1507982416', '1');
INSERT INTO `yunu_browse` VALUES ('4169', '180.118.14.143', '1507982473', '1');
INSERT INTO `yunu_browse` VALUES ('4170', '101.226.89.122', '1507982483', '1');
INSERT INTO `yunu_browse` VALUES ('4171', '180.118.14.143', '1507982815', '1');
INSERT INTO `yunu_browse` VALUES ('4172', '180.118.14.143', '1507982881', '2');
INSERT INTO `yunu_browse` VALUES ('4173', '180.118.14.143', '1507982968', '1');
INSERT INTO `yunu_browse` VALUES ('4174', '180.118.14.143', '1507982970', '1');
INSERT INTO `yunu_browse` VALUES ('4175', '180.118.14.143', '1507983016', '2');
INSERT INTO `yunu_browse` VALUES ('4176', '180.118.14.143', '1507983026', '2');
INSERT INTO `yunu_browse` VALUES ('4177', '140.205.225.202', '1507985261', '1');
INSERT INTO `yunu_browse` VALUES ('4178', '140.205.225.202', '1507985563', '1');
INSERT INTO `yunu_browse` VALUES ('4179', '140.205.225.202', '1507985589', '1');
INSERT INTO `yunu_browse` VALUES ('4180', '140.205.225.202', '1507985651', '1');
INSERT INTO `yunu_browse` VALUES ('4181', '140.205.225.202', '1507985677', '1');
INSERT INTO `yunu_browse` VALUES ('4182', '140.205.225.202', '1507985686', '1');
INSERT INTO `yunu_browse` VALUES ('4183', '140.205.225.202', '1507985808', '1');
INSERT INTO `yunu_browse` VALUES ('4184', '140.205.225.202', '1507985821', '1');
INSERT INTO `yunu_browse` VALUES ('4185', '140.205.225.202', '1507985858', '1');
INSERT INTO `yunu_browse` VALUES ('4186', '140.205.225.202', '1507985879', '1');
INSERT INTO `yunu_browse` VALUES ('4187', '140.205.225.202', '1507985995', '1');
INSERT INTO `yunu_browse` VALUES ('4188', '140.205.225.202', '1507986005', '1');
INSERT INTO `yunu_browse` VALUES ('4189', '140.205.225.202', '1507986006', '1');
INSERT INTO `yunu_browse` VALUES ('4190', '180.118.14.143', '1507987252', '1');
INSERT INTO `yunu_browse` VALUES ('4191', '180.118.14.143', '1507987287', '1');
INSERT INTO `yunu_browse` VALUES ('4192', '101.226.33.223', '1507987297', '1');
INSERT INTO `yunu_browse` VALUES ('4193', '180.118.14.143', '1507987412', '1');
INSERT INTO `yunu_browse` VALUES ('4194', '180.118.14.143', '1507987501', '1');
INSERT INTO `yunu_browse` VALUES ('4195', '180.118.14.143', '1507987512', '1');
INSERT INTO `yunu_browse` VALUES ('4196', '180.118.14.143', '1507987528', '1');
INSERT INTO `yunu_browse` VALUES ('4197', '121.199.70.200', '1508000577', '1');
INSERT INTO `yunu_browse` VALUES ('4198', '140.205.201.42', '1508002188', '1');
INSERT INTO `yunu_browse` VALUES ('4199', '140.205.201.42', '1508002303', '1');
INSERT INTO `yunu_browse` VALUES ('4200', '140.205.201.42', '1508002372', '1');
INSERT INTO `yunu_browse` VALUES ('4201', '140.205.201.42', '1508002454', '1');
INSERT INTO `yunu_browse` VALUES ('4202', '140.205.201.42', '1508002496', '1');
INSERT INTO `yunu_browse` VALUES ('4203', '140.205.201.42', '1508002508', '1');
INSERT INTO `yunu_browse` VALUES ('4204', '140.205.201.42', '1508002656', '1');
INSERT INTO `yunu_browse` VALUES ('4205', '140.205.201.42', '1508002678', '1');
INSERT INTO `yunu_browse` VALUES ('4206', '140.205.201.42', '1508002752', '1');
INSERT INTO `yunu_browse` VALUES ('4207', '140.205.201.42', '1508002774', '1');
INSERT INTO `yunu_browse` VALUES ('4208', '140.205.201.42', '1508002863', '1');
INSERT INTO `yunu_browse` VALUES ('4209', '140.205.201.42', '1508002871', '1');
INSERT INTO `yunu_browse` VALUES ('4210', '140.205.201.42', '1508002872', '1');
INSERT INTO `yunu_browse` VALUES ('4211', '179.159.221.189', '1508003855', '1');
INSERT INTO `yunu_browse` VALUES ('4212', '140.205.201.34', '1508011773', '1');
INSERT INTO `yunu_browse` VALUES ('4213', '140.205.201.34', '1508012218', '1');
INSERT INTO `yunu_browse` VALUES ('4214', '140.205.201.34', '1508012442', '1');
INSERT INTO `yunu_browse` VALUES ('4215', '140.205.201.34', '1508013086', '1');
INSERT INTO `yunu_browse` VALUES ('4216', '140.205.201.34', '1508013600', '1');
INSERT INTO `yunu_browse` VALUES ('4217', '34.227.92.231', '1508013630', '1');
INSERT INTO `yunu_browse` VALUES ('4218', '140.205.201.34', '1508013737', '1');
INSERT INTO `yunu_browse` VALUES ('4219', '66.249.79.156', '1508014621', '1');
INSERT INTO `yunu_browse` VALUES ('4220', '66.249.79.157', '1508014750', '1');
INSERT INTO `yunu_browse` VALUES ('4221', '66.249.79.154', '1508014838', '1');
INSERT INTO `yunu_browse` VALUES ('4222', '66.249.79.88', '1508014840', '1');
INSERT INTO `yunu_browse` VALUES ('4223', '66.249.79.81', '1508014845', '1');
INSERT INTO `yunu_browse` VALUES ('4224', '66.249.79.64', '1508014850', '1');
INSERT INTO `yunu_browse` VALUES ('4225', '66.249.79.157', '1508014855', '1');
INSERT INTO `yunu_browse` VALUES ('4226', '66.249.79.24', '1508014859', '1');
INSERT INTO `yunu_browse` VALUES ('4227', '66.249.79.80', '1508014864', '1');
INSERT INTO `yunu_browse` VALUES ('4228', '66.249.79.67', '1508014869', '1');
INSERT INTO `yunu_browse` VALUES ('4229', '66.249.79.157', '1508014873', '1');
INSERT INTO `yunu_browse` VALUES ('4230', '66.249.79.31', '1508014878', '1');
INSERT INTO `yunu_browse` VALUES ('4231', '140.205.201.34', '1508014907', '1');
INSERT INTO `yunu_browse` VALUES ('4232', '140.205.201.34', '1508014970', '1');
INSERT INTO `yunu_browse` VALUES ('4233', '66.249.79.91', '1508015096', '1');
INSERT INTO `yunu_browse` VALUES ('4234', '66.249.79.31', '1508015100', '1');
INSERT INTO `yunu_browse` VALUES ('4235', '66.249.79.93', '1508015102', '1');
INSERT INTO `yunu_browse` VALUES ('4236', '66.249.79.94', '1508015104', '1');
INSERT INTO `yunu_browse` VALUES ('4237', '66.249.79.158', '1508015106', '1');
INSERT INTO `yunu_browse` VALUES ('4238', '66.249.79.152', '1508015108', '1');
INSERT INTO `yunu_browse` VALUES ('4239', '66.249.79.77', '1508015110', '1');
INSERT INTO `yunu_browse` VALUES ('4240', '140.205.201.34', '1508015110', '1');
INSERT INTO `yunu_browse` VALUES ('4241', '66.249.79.29', '1508015111', '1');
INSERT INTO `yunu_browse` VALUES ('4242', '66.249.79.82', '1508015112', '1');
INSERT INTO `yunu_browse` VALUES ('4243', '66.249.79.19', '1508015113', '1');
INSERT INTO `yunu_browse` VALUES ('4244', '66.249.79.5', '1508015114', '1');
INSERT INTO `yunu_browse` VALUES ('4245', '66.249.79.155', '1508015115', '1');
INSERT INTO `yunu_browse` VALUES ('4246', '66.249.79.74', '1508015116', '1');
INSERT INTO `yunu_browse` VALUES ('4247', '66.249.79.130', '1508015118', '1');
INSERT INTO `yunu_browse` VALUES ('4248', '66.249.79.71', '1508015119', '1');
INSERT INTO `yunu_browse` VALUES ('4249', '66.249.79.13', '1508015120', '1');
INSERT INTO `yunu_browse` VALUES ('4250', '66.249.79.5', '1508015122', '1');
INSERT INTO `yunu_browse` VALUES ('4251', '66.249.79.133', '1508015123', '1');
INSERT INTO `yunu_browse` VALUES ('4252', '66.249.79.20', '1508015124', '1');
INSERT INTO `yunu_browse` VALUES ('4253', '66.249.79.95', '1508015125', '1');
INSERT INTO `yunu_browse` VALUES ('4254', '66.249.79.75', '1508015126', '1');
INSERT INTO `yunu_browse` VALUES ('4255', '66.249.79.81', '1508015127', '1');
INSERT INTO `yunu_browse` VALUES ('4256', '66.249.79.131', '1508015128', '1');
INSERT INTO `yunu_browse` VALUES ('4257', '66.249.79.154', '1508015129', '1');
INSERT INTO `yunu_browse` VALUES ('4258', '66.249.79.149', '1508015130', '1');
INSERT INTO `yunu_browse` VALUES ('4259', '66.249.79.25', '1508015131', '1');
INSERT INTO `yunu_browse` VALUES ('4260', '66.249.79.14', '1508015132', '1');
INSERT INTO `yunu_browse` VALUES ('4261', '66.249.79.73', '1508015133', '1');
INSERT INTO `yunu_browse` VALUES ('4262', '66.249.79.69', '1508015134', '1');
INSERT INTO `yunu_browse` VALUES ('4263', '66.249.79.65', '1508015135', '1');
INSERT INTO `yunu_browse` VALUES ('4264', '66.249.79.28', '1508015136', '1');
INSERT INTO `yunu_browse` VALUES ('4265', '66.249.79.156', '1508015137', '1');
INSERT INTO `yunu_browse` VALUES ('4266', '66.249.79.91', '1508015138', '1');
INSERT INTO `yunu_browse` VALUES ('4267', '66.249.79.151', '1508015138', '1');
INSERT INTO `yunu_browse` VALUES ('4268', '66.249.79.155', '1508015139', '1');
INSERT INTO `yunu_browse` VALUES ('4269', '66.249.79.8', '1508015140', '1');
INSERT INTO `yunu_browse` VALUES ('4270', '66.249.79.159', '1508015140', '1');
INSERT INTO `yunu_browse` VALUES ('4271', '66.249.79.129', '1508015142', '1');
INSERT INTO `yunu_browse` VALUES ('4272', '66.249.79.129', '1508015143', '1');
INSERT INTO `yunu_browse` VALUES ('4273', '66.249.79.25', '1508015143', '1');
INSERT INTO `yunu_browse` VALUES ('4274', '66.249.79.79', '1508015144', '1');
INSERT INTO `yunu_browse` VALUES ('4275', '66.249.79.141', '1508015144', '1');
INSERT INTO `yunu_browse` VALUES ('4276', '66.249.79.87', '1508015144', '1');
INSERT INTO `yunu_browse` VALUES ('4277', '66.249.79.139', '1508015145', '1');
INSERT INTO `yunu_browse` VALUES ('4278', '66.249.79.154', '1508015146', '1');
INSERT INTO `yunu_browse` VALUES ('4279', '66.249.79.144', '1508015146', '1');
INSERT INTO `yunu_browse` VALUES ('4280', '66.249.79.19', '1508015148', '1');
INSERT INTO `yunu_browse` VALUES ('4281', '66.249.79.130', '1508015148', '1');
INSERT INTO `yunu_browse` VALUES ('4282', '66.249.79.130', '1508015149', '1');
INSERT INTO `yunu_browse` VALUES ('4283', '66.249.79.65', '1508015149', '1');
INSERT INTO `yunu_browse` VALUES ('4284', '66.249.79.129', '1508015149', '1');
INSERT INTO `yunu_browse` VALUES ('4285', '66.249.79.10', '1508015150', '1');
INSERT INTO `yunu_browse` VALUES ('4286', '66.249.79.150', '1508015151', '1');
INSERT INTO `yunu_browse` VALUES ('4287', '66.249.79.28', '1508015152', '1');
INSERT INTO `yunu_browse` VALUES ('4288', '66.249.79.6', '1508015152', '1');
INSERT INTO `yunu_browse` VALUES ('4289', '66.249.79.138', '1508015153', '1');
INSERT INTO `yunu_browse` VALUES ('4290', '66.249.79.150', '1508015153', '1');
INSERT INTO `yunu_browse` VALUES ('4291', '66.249.79.80', '1508015154', '1');
INSERT INTO `yunu_browse` VALUES ('4292', '66.249.79.20', '1508015155', '1');
INSERT INTO `yunu_browse` VALUES ('4293', '66.249.79.65', '1508015156', '1');
INSERT INTO `yunu_browse` VALUES ('4294', '66.249.79.158', '1508015156', '1');
INSERT INTO `yunu_browse` VALUES ('4295', '66.249.79.154', '1508015157', '1');
INSERT INTO `yunu_browse` VALUES ('4296', '66.249.79.150', '1508015158', '1');
INSERT INTO `yunu_browse` VALUES ('4297', '66.249.79.70', '1508015159', '1');
INSERT INTO `yunu_browse` VALUES ('4298', '66.249.79.7', '1508015159', '1');
INSERT INTO `yunu_browse` VALUES ('4299', '66.249.79.25', '1508015160', '1');
INSERT INTO `yunu_browse` VALUES ('4300', '66.249.79.7', '1508015161', '1');
INSERT INTO `yunu_browse` VALUES ('4301', '66.249.79.89', '1508015162', '1');
INSERT INTO `yunu_browse` VALUES ('4302', '66.249.79.30', '1508015162', '1');
INSERT INTO `yunu_browse` VALUES ('4303', '140.205.201.34', '1508015163', '1');
INSERT INTO `yunu_browse` VALUES ('4304', '66.249.79.65', '1508015164', '1');
INSERT INTO `yunu_browse` VALUES ('4305', '66.249.79.86', '1508015478', '1');
INSERT INTO `yunu_browse` VALUES ('4306', '66.249.79.154', '1508015479', '1');
INSERT INTO `yunu_browse` VALUES ('4307', '140.205.201.34', '1508015817', '1');
INSERT INTO `yunu_browse` VALUES ('4308', '140.205.201.34', '1508015953', '1');
INSERT INTO `yunu_browse` VALUES ('4309', '140.205.201.34', '1508015962', '1');
INSERT INTO `yunu_browse` VALUES ('4310', '117.27.159.145', '1508021689', '1');
INSERT INTO `yunu_browse` VALUES ('4311', '107.170.229.5', '1508024914', '1');
INSERT INTO `yunu_browse` VALUES ('4312', '183.57.53.222', '1508026982', '2');
INSERT INTO `yunu_browse` VALUES ('4313', '183.57.53.222', '1508026982', '2');
INSERT INTO `yunu_browse` VALUES ('4314', '101.226.65.102', '1508026991', '1');
INSERT INTO `yunu_browse` VALUES ('4315', '140.205.225.192', '1508028106', '1');
INSERT INTO `yunu_browse` VALUES ('4316', '140.205.225.192', '1508028203', '1');
INSERT INTO `yunu_browse` VALUES ('4317', '140.205.225.192', '1508028264', '1');
INSERT INTO `yunu_browse` VALUES ('4318', '140.205.225.192', '1508028315', '1');
INSERT INTO `yunu_browse` VALUES ('4319', '140.205.225.192', '1508028354', '1');
INSERT INTO `yunu_browse` VALUES ('4320', '140.205.225.192', '1508028368', '1');
INSERT INTO `yunu_browse` VALUES ('4321', '140.205.225.192', '1508028488', '1');
INSERT INTO `yunu_browse` VALUES ('4322', '140.205.225.192', '1508028500', '1');
INSERT INTO `yunu_browse` VALUES ('4323', '140.205.225.192', '1508028537', '1');
INSERT INTO `yunu_browse` VALUES ('4324', '140.205.225.192', '1508028559', '1');
INSERT INTO `yunu_browse` VALUES ('4325', '140.205.225.192', '1508028675', '1');
INSERT INTO `yunu_browse` VALUES ('4326', '140.205.225.192', '1508028700', '1');
INSERT INTO `yunu_browse` VALUES ('4327', '140.205.225.192', '1508028705', '1');
INSERT INTO `yunu_browse` VALUES ('4328', '121.42.241.37', '1508029335', '1');
INSERT INTO `yunu_browse` VALUES ('4329', '140.205.225.206', '1508034032', '1');
INSERT INTO `yunu_browse` VALUES ('4330', '140.205.225.206', '1508034194', '1');
INSERT INTO `yunu_browse` VALUES ('4331', '140.205.225.206', '1508034417', '1');
INSERT INTO `yunu_browse` VALUES ('4332', '140.205.225.206', '1508034790', '1');
INSERT INTO `yunu_browse` VALUES ('4333', '140.205.225.206', '1508035118', '1');
INSERT INTO `yunu_browse` VALUES ('4334', '140.205.225.206', '1508035257', '1');
INSERT INTO `yunu_browse` VALUES ('4335', '218.58.72.22', '1508035587', '1');
INSERT INTO `yunu_browse` VALUES ('4336', '218.58.72.22', '1508035607', '1');
INSERT INTO `yunu_browse` VALUES ('4337', '117.185.27.113', '1508035617', '1');
INSERT INTO `yunu_browse` VALUES ('4338', '218.58.72.22', '1508035691', '1');
INSERT INTO `yunu_browse` VALUES ('4339', '218.58.72.22', '1508035730', '1');
INSERT INTO `yunu_browse` VALUES ('4340', '218.58.72.22', '1508035738', '1');
INSERT INTO `yunu_browse` VALUES ('4341', '117.185.27.114', '1508035738', '1');
INSERT INTO `yunu_browse` VALUES ('4342', '218.58.72.22', '1508035813', '1');
INSERT INTO `yunu_browse` VALUES ('4343', '218.58.72.22', '1508035852', '1');
INSERT INTO `yunu_browse` VALUES ('4344', '218.58.72.22', '1508035880', '1');
INSERT INTO `yunu_browse` VALUES ('4345', '140.205.225.206', '1508036119', '1');
INSERT INTO `yunu_browse` VALUES ('4346', '140.205.225.206', '1508036203', '1');
INSERT INTO `yunu_browse` VALUES ('4347', '218.58.72.22', '1508036206', '1');
INSERT INTO `yunu_browse` VALUES ('4348', '218.58.72.22', '1508036222', '1');
INSERT INTO `yunu_browse` VALUES ('4349', '218.58.72.22', '1508036226', '1');
INSERT INTO `yunu_browse` VALUES ('4350', '140.205.225.206', '1508036346', '1');
INSERT INTO `yunu_browse` VALUES ('4351', '140.205.225.206', '1508036432', '1');
INSERT INTO `yunu_browse` VALUES ('4352', '164.132.91.1', '1508036841', '1');
INSERT INTO `yunu_browse` VALUES ('4353', '140.205.225.206', '1508037108', '1');
INSERT INTO `yunu_browse` VALUES ('4354', '140.205.225.206', '1508037374', '1');
INSERT INTO `yunu_browse` VALUES ('4355', '140.205.225.206', '1508037379', '1');
INSERT INTO `yunu_browse` VALUES ('4356', '223.95.135.28', '1508037452', '2');
INSERT INTO `yunu_browse` VALUES ('4357', '183.57.53.177', '1508037452', '2');
INSERT INTO `yunu_browse` VALUES ('4358', '117.185.27.114', '1508037462', '1');
INSERT INTO `yunu_browse` VALUES ('4359', '117.185.27.113', '1508037483', '1');
INSERT INTO `yunu_browse` VALUES ('4360', '112.21.148.22', '1508038294', '1');
INSERT INTO `yunu_browse` VALUES ('4361', '112.21.148.22', '1508038317', '1');
INSERT INTO `yunu_browse` VALUES ('4362', '112.21.148.22', '1508038340', '1');
INSERT INTO `yunu_browse` VALUES ('4363', '219.139.34.247', '1508038471', '2');
INSERT INTO `yunu_browse` VALUES ('4364', '112.21.148.22', '1508038503', '1');
INSERT INTO `yunu_browse` VALUES ('4365', '112.21.148.22', '1508038563', '1');
INSERT INTO `yunu_browse` VALUES ('4366', '61.158.163.58', '1508039345', '1');
INSERT INTO `yunu_browse` VALUES ('4367', '112.21.148.22', '1508040449', '1');
INSERT INTO `yunu_browse` VALUES ('4368', '112.21.148.22', '1508040454', '1');
INSERT INTO `yunu_browse` VALUES ('4369', '112.21.148.22', '1508040460', '1');
INSERT INTO `yunu_browse` VALUES ('4370', '112.21.148.22', '1508040478', '1');
INSERT INTO `yunu_browse` VALUES ('4371', '112.21.148.22', '1508040489', '1');
INSERT INTO `yunu_browse` VALUES ('4372', '66.102.6.132', '1508040716', '1');
INSERT INTO `yunu_browse` VALUES ('4373', '112.21.148.22', '1508041277', '1');
INSERT INTO `yunu_browse` VALUES ('4374', '112.21.148.22', '1508041288', '1');
INSERT INTO `yunu_browse` VALUES ('4375', '112.21.148.22', '1508041705', '1');
INSERT INTO `yunu_browse` VALUES ('4376', '112.21.148.22', '1508041896', '1');
INSERT INTO `yunu_browse` VALUES ('4377', '112.21.148.22', '1508041907', '1');
INSERT INTO `yunu_browse` VALUES ('4378', '112.21.148.22', '1508041911', '1');
INSERT INTO `yunu_browse` VALUES ('4379', '112.21.148.22', '1508042643', '1');
INSERT INTO `yunu_browse` VALUES ('4380', '112.21.148.22', '1508043105', '1');
INSERT INTO `yunu_browse` VALUES ('4381', '112.21.148.22', '1508043374', '1');
INSERT INTO `yunu_browse` VALUES ('4382', '140.205.201.36', '1508043468', '1');
INSERT INTO `yunu_browse` VALUES ('4383', '140.205.201.36', '1508043662', '1');
INSERT INTO `yunu_browse` VALUES ('4384', '140.205.201.36', '1508043767', '1');
INSERT INTO `yunu_browse` VALUES ('4385', '140.205.201.36', '1508043836', '1');
INSERT INTO `yunu_browse` VALUES ('4386', '140.205.201.36', '1508043868', '1');
INSERT INTO `yunu_browse` VALUES ('4387', '140.205.201.36', '1508043878', '1');
INSERT INTO `yunu_browse` VALUES ('4388', '140.205.201.36', '1508043976', '1');
INSERT INTO `yunu_browse` VALUES ('4389', '140.205.201.36', '1508043993', '1');
INSERT INTO `yunu_browse` VALUES ('4390', '140.205.201.36', '1508044022', '1');
INSERT INTO `yunu_browse` VALUES ('4391', '140.205.201.36', '1508044028', '1');
INSERT INTO `yunu_browse` VALUES ('4392', '140.205.201.36', '1508044155', '1');
INSERT INTO `yunu_browse` VALUES ('4393', '140.205.201.36', '1508044166', '1');
INSERT INTO `yunu_browse` VALUES ('4394', '140.205.201.36', '1508044167', '1');
INSERT INTO `yunu_browse` VALUES ('4395', '221.194.47.198', '1508045211', '1');
INSERT INTO `yunu_browse` VALUES ('4396', '213.180.203.42', '1508051685', '1');
INSERT INTO `yunu_browse` VALUES ('4397', '188.244.47.215', '1508052573', '1');
INSERT INTO `yunu_browse` VALUES ('4398', '112.83.103.19', '1508053032', '2');
INSERT INTO `yunu_browse` VALUES ('4399', '119.147.207.152', '1508053033', '2');
INSERT INTO `yunu_browse` VALUES ('4400', '112.65.193.15', '1508053042', '1');
INSERT INTO `yunu_browse` VALUES ('4401', '202.108.211.56', '1508053571', '1');
INSERT INTO `yunu_browse` VALUES ('4402', '140.205.225.200', '1508056268', '1');
INSERT INTO `yunu_browse` VALUES ('4403', '140.205.225.200', '1508056369', '1');
INSERT INTO `yunu_browse` VALUES ('4404', '140.205.225.200', '1508056546', '1');
INSERT INTO `yunu_browse` VALUES ('4405', '140.205.225.200', '1508057039', '1');
INSERT INTO `yunu_browse` VALUES ('4406', '140.205.225.200', '1508057370', '1');
INSERT INTO `yunu_browse` VALUES ('4407', '140.205.225.200', '1508057460', '1');
INSERT INTO `yunu_browse` VALUES ('4408', '223.12.12.46', '1508057964', '1');
INSERT INTO `yunu_browse` VALUES ('4409', '223.12.12.46', '1508057971', '1');
INSERT INTO `yunu_browse` VALUES ('4410', '140.205.225.200', '1508058009', '1');
INSERT INTO `yunu_browse` VALUES ('4411', '140.205.225.200', '1508058083', '1');
INSERT INTO `yunu_browse` VALUES ('4412', '140.205.225.200', '1508058200', '1');
INSERT INTO `yunu_browse` VALUES ('4413', '140.205.225.200', '1508058310', '1');
INSERT INTO `yunu_browse` VALUES ('4414', '140.205.225.200', '1508058971', '1');
INSERT INTO `yunu_browse` VALUES ('4415', '140.205.225.200', '1508059139', '1');
INSERT INTO `yunu_browse` VALUES ('4416', '140.205.225.200', '1508059172', '1');
INSERT INTO `yunu_browse` VALUES ('4417', '140.205.201.39', '1508061766', '1');
INSERT INTO `yunu_browse` VALUES ('4418', '140.205.201.39', '1508061772', '1');
INSERT INTO `yunu_browse` VALUES ('4419', '140.205.201.39', '1508061781', '1');
INSERT INTO `yunu_browse` VALUES ('4420', '140.205.201.39', '1508061788', '1');
INSERT INTO `yunu_browse` VALUES ('4421', '140.205.201.39', '1508061789', '1');
INSERT INTO `yunu_browse` VALUES ('4422', '140.205.201.39', '1508061798', '1');
INSERT INTO `yunu_browse` VALUES ('4423', '140.205.201.39', '1508061803', '1');
INSERT INTO `yunu_browse` VALUES ('4424', '140.205.201.39', '1508061803', '1');
INSERT INTO `yunu_browse` VALUES ('4425', '140.205.201.39', '1508061807', '1');
INSERT INTO `yunu_browse` VALUES ('4426', '140.205.201.39', '1508061808', '1');
INSERT INTO `yunu_browse` VALUES ('4427', '140.205.201.39', '1508061833', '1');
INSERT INTO `yunu_browse` VALUES ('4428', '140.205.201.39', '1508061844', '1');
INSERT INTO `yunu_browse` VALUES ('4429', '140.205.201.39', '1508061845', '1');
INSERT INTO `yunu_browse` VALUES ('4430', '180.118.27.43', '1508062248', '1');
INSERT INTO `yunu_browse` VALUES ('4431', '172.104.108.109', '1508064064', '1');
INSERT INTO `yunu_browse` VALUES ('4432', '213.180.203.42', '1508066297', '1');
INSERT INTO `yunu_browse` VALUES ('4433', '180.118.27.43', '1508069340', '1');
INSERT INTO `yunu_browse` VALUES ('4434', '180.118.27.43', '1508069347', '1');
INSERT INTO `yunu_browse` VALUES ('4435', '180.163.1.46', '1508069350', '1');
INSERT INTO `yunu_browse` VALUES ('4436', '101.226.89.122', '1508069357', '1');
INSERT INTO `yunu_browse` VALUES ('4437', '180.118.27.43', '1508069358', '1');
INSERT INTO `yunu_browse` VALUES ('4438', '180.163.2.117', '1508069368', '1');
INSERT INTO `yunu_browse` VALUES ('4439', '101.226.64.174', '1508069389', '2');
INSERT INTO `yunu_browse` VALUES ('4440', '36.149.26.151', '1508069422', '1');
INSERT INTO `yunu_browse` VALUES ('4441', '180.118.27.43', '1508069520', '1');
INSERT INTO `yunu_browse` VALUES ('4442', '180.118.27.43', '1508069523', '1');
INSERT INTO `yunu_browse` VALUES ('4443', '180.118.27.43', '1508069609', '1');
INSERT INTO `yunu_browse` VALUES ('4444', '36.149.26.151', '1508069617', '1');
INSERT INTO `yunu_browse` VALUES ('4445', '180.118.27.43', '1508069700', '1');
INSERT INTO `yunu_browse` VALUES ('4446', '171.88.30.112', '1508071332', '1');
INSERT INTO `yunu_browse` VALUES ('4447', '171.88.30.112', '1508071351', '1');
INSERT INTO `yunu_browse` VALUES ('4448', '171.88.30.112', '1508071351', '1');
INSERT INTO `yunu_browse` VALUES ('4449', '171.88.30.112', '1508071369', '1');
INSERT INTO `yunu_browse` VALUES ('4450', '171.88.30.112', '1508071370', '1');
INSERT INTO `yunu_browse` VALUES ('4451', '171.88.30.112', '1508071378', '1');
INSERT INTO `yunu_browse` VALUES ('4452', '171.88.30.112', '1508071378', '1');
INSERT INTO `yunu_browse` VALUES ('4453', '171.88.30.112', '1508071391', '1');
INSERT INTO `yunu_browse` VALUES ('4454', '171.88.30.112', '1508071392', '1');
INSERT INTO `yunu_browse` VALUES ('4455', '171.88.30.112', '1508071392', '1');
INSERT INTO `yunu_browse` VALUES ('4456', '171.88.30.112', '1508071398', '1');
INSERT INTO `yunu_browse` VALUES ('4457', '171.88.30.112', '1508071399', '1');
INSERT INTO `yunu_browse` VALUES ('4458', '171.88.30.112', '1508071403', '1');
INSERT INTO `yunu_browse` VALUES ('4459', '171.88.30.112', '1508071404', '1');
INSERT INTO `yunu_browse` VALUES ('4460', '171.88.30.112', '1508071405', '1');
INSERT INTO `yunu_browse` VALUES ('4461', '171.88.30.112', '1508071488', '1');
INSERT INTO `yunu_browse` VALUES ('4462', '171.88.30.112', '1508071493', '1');
INSERT INTO `yunu_browse` VALUES ('4463', '111.37.18.201', '1508073510', '1');
INSERT INTO `yunu_browse` VALUES ('4464', '66.249.79.156', '1508075481', '1');
INSERT INTO `yunu_browse` VALUES ('4465', '182.43.213.124', '1508077994', '2');
INSERT INTO `yunu_browse` VALUES ('4466', '14.17.3.65', '1508077994', '2');
INSERT INTO `yunu_browse` VALUES ('4467', '140.205.225.188', '1508078843', '1');
INSERT INTO `yunu_browse` VALUES ('4468', '140.205.225.188', '1508078956', '1');
INSERT INTO `yunu_browse` VALUES ('4469', '140.205.225.188', '1508079066', '1');
INSERT INTO `yunu_browse` VALUES ('4470', '140.205.225.188', '1508079158', '1');
INSERT INTO `yunu_browse` VALUES ('4471', '140.205.225.188', '1508079198', '1');
INSERT INTO `yunu_browse` VALUES ('4472', '140.205.225.188', '1508079203', '1');
INSERT INTO `yunu_browse` VALUES ('4473', '140.205.225.188', '1508079278', '1');
INSERT INTO `yunu_browse` VALUES ('4474', '140.205.225.188', '1508079300', '1');
INSERT INTO `yunu_browse` VALUES ('4475', '140.205.225.188', '1508079330', '1');
INSERT INTO `yunu_browse` VALUES ('4476', '140.205.225.188', '1508079347', '1');
INSERT INTO `yunu_browse` VALUES ('4477', '140.205.225.188', '1508079450', '1');
INSERT INTO `yunu_browse` VALUES ('4478', '140.205.225.188', '1508079466', '1');
INSERT INTO `yunu_browse` VALUES ('4479', '140.205.225.188', '1508079467', '1');
INSERT INTO `yunu_browse` VALUES ('4480', '220.181.132.178', '1508083073', '1');
INSERT INTO `yunu_browse` VALUES ('4481', '106.120.162.108', '1508083078', '1');
INSERT INTO `yunu_browse` VALUES ('4482', '213.180.203.42', '1508084354', '1');
INSERT INTO `yunu_browse` VALUES ('4483', '14.17.21.58', '1508085088', '2');
INSERT INTO `yunu_browse` VALUES ('4484', '112.90.82.236', '1508085089', '2');
INSERT INTO `yunu_browse` VALUES ('4485', '58.57.27.38', '1508085104', '1');
INSERT INTO `yunu_browse` VALUES ('4486', '42.156.251.208', '1508085104', '2');
INSERT INTO `yunu_browse` VALUES ('4487', '42.156.251.208', '1508085104', '2');
INSERT INTO `yunu_browse` VALUES ('4488', '58.57.27.38', '1508085152', '1');
INSERT INTO `yunu_browse` VALUES ('4489', '42.156.251.201', '1508085204', '2');
INSERT INTO `yunu_browse` VALUES ('4490', '42.156.251.201', '1508085204', '2');
INSERT INTO `yunu_browse` VALUES ('4491', '42.156.251.198', '1508085213', '2');
INSERT INTO `yunu_browse` VALUES ('4492', '42.156.251.198', '1508085214', '2');
INSERT INTO `yunu_browse` VALUES ('4493', '66.249.79.157', '1508086625', '1');
INSERT INTO `yunu_browse` VALUES ('4494', '114.215.45.101', '1508086912', '1');
INSERT INTO `yunu_browse` VALUES ('4495', '121.199.70.200', '1508087021', '1');
INSERT INTO `yunu_browse` VALUES ('4496', '95.220.124.104', '1508087744', '1');
INSERT INTO `yunu_browse` VALUES ('4497', '66.249.79.156', '1508091831', '1');
INSERT INTO `yunu_browse` VALUES ('4498', '66.249.79.80', '1508092157', '1');
INSERT INTO `yunu_browse` VALUES ('4499', '66.249.79.157', '1508092170', '1');
INSERT INTO `yunu_browse` VALUES ('4500', '66.249.79.88', '1508092184', '1');
INSERT INTO `yunu_browse` VALUES ('4501', '66.249.79.81', '1508092207', '1');
INSERT INTO `yunu_browse` VALUES ('4502', '66.249.79.95', '1508092235', '1');
INSERT INTO `yunu_browse` VALUES ('4503', '220.181.132.178', '1508093632', '1');
INSERT INTO `yunu_browse` VALUES ('4504', '106.120.162.111', '1508093638', '1');
INSERT INTO `yunu_browse` VALUES ('4505', '66.249.79.158', '1508097018', '1');
INSERT INTO `yunu_browse` VALUES ('4506', '140.205.225.204', '1508097164', '1');
INSERT INTO `yunu_browse` VALUES ('4507', '140.205.225.204', '1508097210', '1');
INSERT INTO `yunu_browse` VALUES ('4508', '140.205.225.204', '1508097219', '1');
INSERT INTO `yunu_browse` VALUES ('4509', '140.205.225.204', '1508097281', '1');
INSERT INTO `yunu_browse` VALUES ('4510', '140.205.225.204', '1508097329', '1');
INSERT INTO `yunu_browse` VALUES ('4511', '140.205.225.204', '1508097346', '1');
INSERT INTO `yunu_browse` VALUES ('4512', '220.181.132.181', '1508097370', '1');
INSERT INTO `yunu_browse` VALUES ('4513', '106.120.162.108', '1508097375', '1');
INSERT INTO `yunu_browse` VALUES ('4514', '140.205.225.204', '1508097435', '1');
INSERT INTO `yunu_browse` VALUES ('4515', '140.205.225.204', '1508097439', '1');
INSERT INTO `yunu_browse` VALUES ('4516', '140.205.225.204', '1508097447', '1');
INSERT INTO `yunu_browse` VALUES ('4517', '140.205.225.204', '1508097453', '1');
INSERT INTO `yunu_browse` VALUES ('4518', '140.205.225.204', '1508097489', '1');
INSERT INTO `yunu_browse` VALUES ('4519', '140.205.225.204', '1508097501', '1');
INSERT INTO `yunu_browse` VALUES ('4520', '140.205.225.204', '1508097502', '1');
INSERT INTO `yunu_browse` VALUES ('4521', '66.249.79.93', '1508100390', '1');
INSERT INTO `yunu_browse` VALUES ('4522', '140.205.225.183', '1508100767', '1');
INSERT INTO `yunu_browse` VALUES ('4523', '140.205.225.183', '1508100768', '1');
INSERT INTO `yunu_browse` VALUES ('4524', '140.205.225.185', '1508100771', '1');
INSERT INTO `yunu_browse` VALUES ('4525', '140.205.225.185', '1508100773', '1');
INSERT INTO `yunu_browse` VALUES ('4526', '140.205.225.198', '1508101069', '1');
INSERT INTO `yunu_browse` VALUES ('4527', '140.205.225.198', '1508101071', '1');
INSERT INTO `yunu_browse` VALUES ('4528', '116.251.231.14', '1508104650', '1');
INSERT INTO `yunu_browse` VALUES ('4529', '106.38.241.155', '1508104951', '1');
INSERT INTO `yunu_browse` VALUES ('4530', '140.205.225.183', '1508107645', '1');
INSERT INTO `yunu_browse` VALUES ('4531', '140.205.225.183', '1508107647', '1');
INSERT INTO `yunu_browse` VALUES ('4532', '140.205.225.185', '1508108865', '1');
INSERT INTO `yunu_browse` VALUES ('4533', '140.205.225.185', '1508108868', '1');
INSERT INTO `yunu_browse` VALUES ('4534', '140.205.225.201', '1508110368', '1');
INSERT INTO `yunu_browse` VALUES ('4535', '140.205.225.201', '1508110369', '1');
INSERT INTO `yunu_browse` VALUES ('4536', '140.205.225.204', '1508110688', '1');
INSERT INTO `yunu_browse` VALUES ('4537', '140.205.225.204', '1508110895', '1');
INSERT INTO `yunu_browse` VALUES ('4538', '171.13.14.59', '1508111088', '2');
INSERT INTO `yunu_browse` VALUES ('4539', '140.205.225.199', '1508111267', '1');
INSERT INTO `yunu_browse` VALUES ('4540', '140.205.225.199', '1508111268', '1');
INSERT INTO `yunu_browse` VALUES ('4541', '140.205.201.38', '1508113616', '1');
INSERT INTO `yunu_browse` VALUES ('4542', '140.205.201.38', '1508113617', '1');
INSERT INTO `yunu_browse` VALUES ('4543', '183.57.53.222', '1508114775', '2');
INSERT INTO `yunu_browse` VALUES ('4544', '222.188.158.189', '1508114779', '1');
INSERT INTO `yunu_browse` VALUES ('4545', '222.188.158.189', '1508114816', '1');
INSERT INTO `yunu_browse` VALUES ('4546', '119.147.207.144', '1508115161', '2');
INSERT INTO `yunu_browse` VALUES ('4547', '112.65.193.15', '1508115162', '2');
INSERT INTO `yunu_browse` VALUES ('4548', '101.226.66.187', '1508115171', '1');
INSERT INTO `yunu_browse` VALUES ('4549', '66.102.6.134', '1508116042', '1');
INSERT INTO `yunu_browse` VALUES ('4550', '121.232.253.172', '1508116172', '2');
INSERT INTO `yunu_browse` VALUES ('4551', '140.205.201.42', '1508119365', '1');
INSERT INTO `yunu_browse` VALUES ('4552', '140.205.201.42', '1508119369', '1');
INSERT INTO `yunu_browse` VALUES ('4553', '140.205.225.196', '1508120077', '1');
INSERT INTO `yunu_browse` VALUES ('4554', '140.205.225.196', '1508120207', '1');
INSERT INTO `yunu_browse` VALUES ('4555', '140.205.225.196', '1508120313', '1');
INSERT INTO `yunu_browse` VALUES ('4556', '101.226.33.238', '1508120557', '2');
INSERT INTO `yunu_browse` VALUES ('4557', '140.205.201.36', '1508120578', '1');
INSERT INTO `yunu_browse` VALUES ('4558', '140.205.225.200', '1508120675', '1');
INSERT INTO `yunu_browse` VALUES ('4559', '140.205.201.45', '1508120695', '1');
INSERT INTO `yunu_browse` VALUES ('4560', '140.205.225.196', '1508120740', '1');
INSERT INTO `yunu_browse` VALUES ('4561', '140.205.225.200', '1508120829', '1');
INSERT INTO `yunu_browse` VALUES ('4562', '140.205.225.196', '1508120898', '1');
INSERT INTO `yunu_browse` VALUES ('4563', '180.117.131.179', '1508120905', '1');
INSERT INTO `yunu_browse` VALUES ('4564', '180.117.131.179', '1508120928', '1');
INSERT INTO `yunu_browse` VALUES ('4565', '180.117.131.179', '1508120944', '1');
INSERT INTO `yunu_browse` VALUES ('4566', '180.117.131.179', '1508120949', '1');
INSERT INTO `yunu_browse` VALUES ('4567', '101.226.66.179', '1508120959', '1');
INSERT INTO `yunu_browse` VALUES ('4568', '180.117.131.179', '1508120963', '1');
INSERT INTO `yunu_browse` VALUES ('4569', '140.205.201.36', '1508120965', '1');
INSERT INTO `yunu_browse` VALUES ('4570', '140.205.201.36', '1508120966', '1');
INSERT INTO `yunu_browse` VALUES ('4571', '180.117.131.179', '1508120971', '1');
INSERT INTO `yunu_browse` VALUES ('4572', '180.117.131.179', '1508120972', '1');
INSERT INTO `yunu_browse` VALUES ('4573', '61.151.226.191', '1508120973', '1');
INSERT INTO `yunu_browse` VALUES ('4574', '140.205.225.196', '1508121127', '1');
INSERT INTO `yunu_browse` VALUES ('4575', '140.205.201.36', '1508121451', '1');
INSERT INTO `yunu_browse` VALUES ('4576', '140.205.225.196', '1508121597', '1');
INSERT INTO `yunu_browse` VALUES ('4577', '140.205.201.36', '1508121675', '1');
INSERT INTO `yunu_browse` VALUES ('4578', '140.205.201.36', '1508121745', '1');
INSERT INTO `yunu_browse` VALUES ('4579', '140.205.225.196', '1508121782', '1');
INSERT INTO `yunu_browse` VALUES ('4580', '121.232.253.172', '1508121828', '1');
INSERT INTO `yunu_browse` VALUES ('4581', '140.205.225.196', '1508122111', '1');
INSERT INTO `yunu_browse` VALUES ('4582', '140.205.225.196', '1508122219', '1');
INSERT INTO `yunu_browse` VALUES ('4583', '140.205.225.196', '1508122466', '1');
INSERT INTO `yunu_browse` VALUES ('4584', '140.205.201.36', '1508122501', '1');
INSERT INTO `yunu_browse` VALUES ('4585', '140.205.225.196', '1508122614', '1');
INSERT INTO `yunu_browse` VALUES ('4586', '183.3.239.163', '1508122631', '1');
INSERT INTO `yunu_browse` VALUES ('4587', '111.85.218.115', '1508122646', '1');
INSERT INTO `yunu_browse` VALUES ('4588', '140.205.201.36', '1508122674', '1');
INSERT INTO `yunu_browse` VALUES ('4589', '140.205.201.36', '1508122919', '1');
INSERT INTO `yunu_browse` VALUES ('4590', '140.205.201.36', '1508123003', '1');
INSERT INTO `yunu_browse` VALUES ('4591', '140.205.201.36', '1508123481', '1');
INSERT INTO `yunu_browse` VALUES ('4592', '140.205.225.196', '1508123609', '1');
INSERT INTO `yunu_browse` VALUES ('4593', '140.205.201.36', '1508123691', '1');
INSERT INTO `yunu_browse` VALUES ('4594', '140.205.201.36', '1508123740', '1');
INSERT INTO `yunu_browse` VALUES ('4595', '140.205.225.196', '1508124204', '1');
INSERT INTO `yunu_browse` VALUES ('4596', '140.205.225.196', '1508124242', '1');
INSERT INTO `yunu_browse` VALUES ('4597', '121.232.253.172', '1508124489', '1');
INSERT INTO `yunu_browse` VALUES ('4598', '121.232.253.172', '1508124517', '1');
INSERT INTO `yunu_browse` VALUES ('4599', '140.205.225.190', '1508125020', '1');
INSERT INTO `yunu_browse` VALUES ('4600', '140.205.225.190', '1508125225', '1');
INSERT INTO `yunu_browse` VALUES ('4601', '222.45.213.75', '1508125303', '1');
INSERT INTO `yunu_browse` VALUES ('4602', '121.232.253.172', '1508125312', '2');
INSERT INTO `yunu_browse` VALUES ('4603', '42.156.250.244', '1508125378', '2');
INSERT INTO `yunu_browse` VALUES ('4604', '42.156.250.244', '1508125379', '2');
INSERT INTO `yunu_browse` VALUES ('4605', '140.205.225.188', '1508125641', '1');
INSERT INTO `yunu_browse` VALUES ('4606', '140.205.225.188', '1508125642', '1');
INSERT INTO `yunu_browse` VALUES ('4607', '140.205.225.206', '1508127441', '1');
INSERT INTO `yunu_browse` VALUES ('4608', '140.205.225.206', '1508127443', '1');
INSERT INTO `yunu_browse` VALUES ('4609', '58.217.192.54', '1508128267', '1');
INSERT INTO `yunu_browse` VALUES ('4610', '121.232.253.172', '1508128952', '1');
INSERT INTO `yunu_browse` VALUES ('4611', '140.205.201.46', '1508129231', '1');
INSERT INTO `yunu_browse` VALUES ('4612', '140.205.201.46', '1508129308', '1');
INSERT INTO `yunu_browse` VALUES ('4613', '163.177.90.152', '1508129784', '2');
INSERT INTO `yunu_browse` VALUES ('4614', '58.217.192.54', '1508129803', '1');
INSERT INTO `yunu_browse` VALUES ('4615', '112.17.242.227', '1508130487', '2');
INSERT INTO `yunu_browse` VALUES ('4616', '14.17.21.58', '1508130487', '2');
INSERT INTO `yunu_browse` VALUES ('4617', '111.2.13.98', '1508130500', '1');
INSERT INTO `yunu_browse` VALUES ('4618', '58.217.192.54', '1508130811', '1');
INSERT INTO `yunu_browse` VALUES ('4619', '58.217.192.54', '1508131081', '1');
INSERT INTO `yunu_browse` VALUES ('4620', '58.217.192.54', '1508131256', '1');
INSERT INTO `yunu_browse` VALUES ('4621', '58.217.192.54', '1508131492', '1');
INSERT INTO `yunu_browse` VALUES ('4622', '121.232.253.172', '1508131826', '1');
INSERT INTO `yunu_browse` VALUES ('4623', '121.232.253.172', '1508131859', '1');
INSERT INTO `yunu_browse` VALUES ('4624', '121.232.253.172', '1508131867', '1');
INSERT INTO `yunu_browse` VALUES ('4625', '183.57.53.177', '1508131946', '2');
INSERT INTO `yunu_browse` VALUES ('4626', '121.232.253.172', '1508132120', '1');
INSERT INTO `yunu_browse` VALUES ('4627', '121.232.253.172', '1508132202', '1');
INSERT INTO `yunu_browse` VALUES ('4628', '203.208.60.204', '1508132342', '2');
INSERT INTO `yunu_browse` VALUES ('4629', '58.217.192.54', '1508132527', '1');
INSERT INTO `yunu_browse` VALUES ('4630', '121.232.253.172', '1508132649', '1');
INSERT INTO `yunu_browse` VALUES ('4631', '140.205.225.202', '1508132649', '1');
INSERT INTO `yunu_browse` VALUES ('4632', '121.232.253.172', '1508132692', '1');
INSERT INTO `yunu_browse` VALUES ('4633', '121.232.253.172', '1508132696', '1');
INSERT INTO `yunu_browse` VALUES ('4634', '42.156.251.208', '1508132706', '2');
INSERT INTO `yunu_browse` VALUES ('4635', '42.156.251.208', '1508132707', '2');
INSERT INTO `yunu_browse` VALUES ('4636', '121.232.253.172', '1508132748', '1');
INSERT INTO `yunu_browse` VALUES ('4637', '121.232.253.172', '1508132797', '1');
INSERT INTO `yunu_browse` VALUES ('4638', '140.205.225.202', '1508132798', '1');
INSERT INTO `yunu_browse` VALUES ('4639', '121.232.253.172', '1508132986', '1');
INSERT INTO `yunu_browse` VALUES ('4640', '121.232.253.172', '1508133025', '1');
INSERT INTO `yunu_browse` VALUES ('4641', '121.232.253.172', '1508133107', '1');
INSERT INTO `yunu_browse` VALUES ('4642', '121.232.253.172', '1508133109', '1');
INSERT INTO `yunu_browse` VALUES ('4643', '121.232.253.172', '1508133118', '1');
INSERT INTO `yunu_browse` VALUES ('4644', '121.232.253.172', '1508133125', '1');
INSERT INTO `yunu_browse` VALUES ('4645', '121.232.253.172', '1508133134', '1');
INSERT INTO `yunu_browse` VALUES ('4646', '121.232.253.172', '1508133138', '1');
INSERT INTO `yunu_browse` VALUES ('4647', '121.232.253.172', '1508133139', '1');
INSERT INTO `yunu_browse` VALUES ('4648', '121.232.253.172', '1508133242', '1');
INSERT INTO `yunu_browse` VALUES ('4649', '121.232.253.172', '1508133269', '1');
INSERT INTO `yunu_browse` VALUES ('4650', '121.232.253.172', '1508133274', '1');
INSERT INTO `yunu_browse` VALUES ('4651', '121.232.253.172', '1508133279', '1');
INSERT INTO `yunu_browse` VALUES ('4652', '121.232.253.172', '1508133301', '1');
INSERT INTO `yunu_browse` VALUES ('4653', '121.232.253.172', '1508133309', '1');
INSERT INTO `yunu_browse` VALUES ('4654', '121.232.253.172', '1508133317', '1');
INSERT INTO `yunu_browse` VALUES ('4655', '121.232.253.172', '1508133327', '1');
INSERT INTO `yunu_browse` VALUES ('4656', '121.232.253.172', '1508133344', '1');
INSERT INTO `yunu_browse` VALUES ('4657', '121.232.253.172', '1508133388', '1');
INSERT INTO `yunu_browse` VALUES ('4658', '121.232.253.172', '1508133466', '1');
INSERT INTO `yunu_browse` VALUES ('4659', '121.232.253.172', '1508133470', '1');
INSERT INTO `yunu_browse` VALUES ('4660', '121.232.253.172', '1508133892', '1');
INSERT INTO `yunu_browse` VALUES ('4661', '121.232.253.172', '1508133898', '2');
INSERT INTO `yunu_browse` VALUES ('4662', '121.232.253.172', '1508133900', '2');
INSERT INTO `yunu_browse` VALUES ('4663', '121.232.253.172', '1508133905', '2');
INSERT INTO `yunu_browse` VALUES ('4664', '121.232.253.172', '1508133909', '2');
INSERT INTO `yunu_browse` VALUES ('4665', '121.232.253.172', '1508133911', '1');
INSERT INTO `yunu_browse` VALUES ('4666', '121.232.253.172', '1508133913', '1');
INSERT INTO `yunu_browse` VALUES ('4667', '121.232.253.172', '1508133918', '1');
INSERT INTO `yunu_browse` VALUES ('4668', '121.232.253.172', '1508133953', '1');
INSERT INTO `yunu_browse` VALUES ('4669', '121.232.253.172', '1508133976', '1');
INSERT INTO `yunu_browse` VALUES ('4670', '121.232.253.172', '1508134000', '1');
INSERT INTO `yunu_browse` VALUES ('4671', '140.205.201.43', '1508134028', '1');
INSERT INTO `yunu_browse` VALUES ('4672', '140.205.201.43', '1508134035', '1');
INSERT INTO `yunu_browse` VALUES ('4673', '140.205.201.43', '1508134046', '1');
INSERT INTO `yunu_browse` VALUES ('4674', '140.205.201.43', '1508134052', '1');
INSERT INTO `yunu_browse` VALUES ('4675', '140.205.201.43', '1508134053', '1');
INSERT INTO `yunu_browse` VALUES ('4676', '140.205.201.43', '1508134060', '1');
INSERT INTO `yunu_browse` VALUES ('4677', '140.205.201.43', '1508134067', '1');
INSERT INTO `yunu_browse` VALUES ('4678', '140.205.201.43', '1508134067', '1');
INSERT INTO `yunu_browse` VALUES ('4679', '140.205.201.43', '1508134071', '1');
INSERT INTO `yunu_browse` VALUES ('4680', '140.205.201.43', '1508134071', '1');
INSERT INTO `yunu_browse` VALUES ('4681', '121.232.253.172', '1508134082', '1');
INSERT INTO `yunu_browse` VALUES ('4682', '121.232.253.172', '1508134085', '1');
INSERT INTO `yunu_browse` VALUES ('4683', '140.205.201.43', '1508134093', '1');
INSERT INTO `yunu_browse` VALUES ('4684', '121.232.253.172', '1508134096', '1');
INSERT INTO `yunu_browse` VALUES ('4685', '140.205.201.43', '1508134104', '1');
INSERT INTO `yunu_browse` VALUES ('4686', '140.205.201.43', '1508134105', '1');
INSERT INTO `yunu_browse` VALUES ('4687', '121.232.253.172', '1508134112', '1');
INSERT INTO `yunu_browse` VALUES ('4688', '121.232.253.172', '1508134157', '1');
INSERT INTO `yunu_browse` VALUES ('4689', '121.232.253.172', '1508134320', '1');
INSERT INTO `yunu_browse` VALUES ('4690', '58.217.192.54', '1508134347', '1');
INSERT INTO `yunu_browse` VALUES ('4691', '121.232.253.172', '1508134397', '1');
INSERT INTO `yunu_browse` VALUES ('4692', '121.232.253.172', '1508134401', '1');
INSERT INTO `yunu_browse` VALUES ('4693', '111.85.218.115', '1508134411', '1');
INSERT INTO `yunu_browse` VALUES ('4694', '121.232.253.172', '1508134429', '1');
INSERT INTO `yunu_browse` VALUES ('4695', '121.232.253.172', '1508134451', '1');
INSERT INTO `yunu_browse` VALUES ('4696', '111.85.218.115', '1508134479', '1');
INSERT INTO `yunu_browse` VALUES ('4697', '58.217.192.54', '1508134492', '1');
INSERT INTO `yunu_browse` VALUES ('4698', '121.232.253.172', '1508134493', '1');
INSERT INTO `yunu_browse` VALUES ('4699', '42.156.250.243', '1508134498', '2');
INSERT INTO `yunu_browse` VALUES ('4700', '42.156.250.243', '1508134498', '2');
INSERT INTO `yunu_browse` VALUES ('4701', '121.232.253.172', '1508134579', '1');
INSERT INTO `yunu_browse` VALUES ('4702', '58.217.192.54', '1508134606', '1');
INSERT INTO `yunu_browse` VALUES ('4703', '121.232.253.172', '1508134718', '1');
INSERT INTO `yunu_browse` VALUES ('4704', '121.232.253.172', '1508134756', '1');
INSERT INTO `yunu_browse` VALUES ('4705', '121.232.253.172', '1508134757', '1');
INSERT INTO `yunu_browse` VALUES ('4706', '121.232.253.172', '1508134764', '2');
INSERT INTO `yunu_browse` VALUES ('4707', '121.232.253.172', '1508134798', '1');
INSERT INTO `yunu_browse` VALUES ('4708', '121.232.253.172', '1508134865', '1');
INSERT INTO `yunu_browse` VALUES ('4709', '121.232.253.172', '1508134869', '1');
INSERT INTO `yunu_browse` VALUES ('4710', '121.232.253.172', '1508134871', '1');
INSERT INTO `yunu_browse` VALUES ('4711', '121.232.253.172', '1508134900', '1');
INSERT INTO `yunu_browse` VALUES ('4712', '121.232.253.172', '1508134923', '1');
INSERT INTO `yunu_browse` VALUES ('4713', '121.232.253.172', '1508134932', '1');
INSERT INTO `yunu_browse` VALUES ('4714', '121.232.253.172', '1508134969', '1');
INSERT INTO `yunu_browse` VALUES ('4715', '121.232.253.172', '1508134976', '1');
INSERT INTO `yunu_browse` VALUES ('4716', '121.232.253.172', '1508135051', '1');
INSERT INTO `yunu_browse` VALUES ('4717', '121.232.253.172', '1508135061', '1');
INSERT INTO `yunu_browse` VALUES ('4718', '121.232.253.172', '1508135075', '1');
INSERT INTO `yunu_browse` VALUES ('4719', '121.232.253.172', '1508135078', '1');
INSERT INTO `yunu_browse` VALUES ('4720', '58.217.192.54', '1508135133', '1');
INSERT INTO `yunu_browse` VALUES ('4721', '121.232.253.172', '1508135246', '1');
INSERT INTO `yunu_browse` VALUES ('4722', '58.217.192.54', '1508135300', '1');
INSERT INTO `yunu_browse` VALUES ('4723', '101.226.66.177', '1508135366', '1');
INSERT INTO `yunu_browse` VALUES ('4724', '121.232.253.172', '1508135467', '1');
INSERT INTO `yunu_browse` VALUES ('4725', '121.232.253.172', '1508135473', '1');
INSERT INTO `yunu_browse` VALUES ('4726', '121.232.253.172', '1508135477', '1');
INSERT INTO `yunu_browse` VALUES ('4727', '121.232.253.172', '1508135585', '1');
INSERT INTO `yunu_browse` VALUES ('4728', '121.232.253.172', '1508135588', '1');
INSERT INTO `yunu_browse` VALUES ('4729', '121.232.253.172', '1508135592', '1');
INSERT INTO `yunu_browse` VALUES ('4730', '121.232.253.172', '1508135598', '1');
INSERT INTO `yunu_browse` VALUES ('4731', '121.232.253.172', '1508135606', '1');
INSERT INTO `yunu_browse` VALUES ('4732', '121.232.253.172', '1508135613', '1');
INSERT INTO `yunu_browse` VALUES ('4733', '121.232.253.172', '1508135614', '1');
INSERT INTO `yunu_browse` VALUES ('4734', '121.232.253.172', '1508135665', '1');
INSERT INTO `yunu_browse` VALUES ('4735', '121.232.253.172', '1508135675', '1');
INSERT INTO `yunu_browse` VALUES ('4736', '140.205.225.206', '1508136126', '1');
INSERT INTO `yunu_browse` VALUES ('4737', '140.205.225.206', '1508136128', '1');
INSERT INTO `yunu_browse` VALUES ('4738', '121.232.253.172', '1508136278', '1');
INSERT INTO `yunu_browse` VALUES ('4739', '121.232.253.172', '1508136282', '1');
INSERT INTO `yunu_browse` VALUES ('4740', '203.208.60.193', '1508136600', '1');
INSERT INTO `yunu_browse` VALUES ('4741', '42.156.250.243', '1508136908', '2');
INSERT INTO `yunu_browse` VALUES ('4742', '42.156.250.243', '1508136908', '2');
INSERT INTO `yunu_browse` VALUES ('4743', '140.205.225.191', '1508137344', '1');
INSERT INTO `yunu_browse` VALUES ('4744', '140.205.225.191', '1508137345', '1');
INSERT INTO `yunu_browse` VALUES ('4745', '121.232.253.172', '1508137552', '1');
INSERT INTO `yunu_browse` VALUES ('4746', '121.232.253.172', '1508137560', '1');
INSERT INTO `yunu_browse` VALUES ('4747', '121.232.253.172', '1508137571', '1');
INSERT INTO `yunu_browse` VALUES ('4748', '140.205.225.183', '1508138246', '1');
INSERT INTO `yunu_browse` VALUES ('4749', '124.238.21.149', '1508138246', '1');
INSERT INTO `yunu_browse` VALUES ('4750', '140.205.225.183', '1508138248', '1');
INSERT INTO `yunu_browse` VALUES ('4751', '213.180.203.42', '1508138571', '1');
INSERT INTO `yunu_browse` VALUES ('4752', '139.162.114.70', '1508138834', '1');
INSERT INTO `yunu_browse` VALUES ('4753', '124.238.21.149', '1508139517', '2');
INSERT INTO `yunu_browse` VALUES ('4754', '42.156.251.205', '1508140601', '2');
INSERT INTO `yunu_browse` VALUES ('4755', '42.156.251.205', '1508140605', '2');
INSERT INTO `yunu_browse` VALUES ('4756', '121.232.253.172', '1508140899', '1');
INSERT INTO `yunu_browse` VALUES ('4757', '61.151.226.202', '1508140923', '1');
INSERT INTO `yunu_browse` VALUES ('4758', '121.232.253.172', '1508140932', '1');
INSERT INTO `yunu_browse` VALUES ('4759', '121.232.253.172', '1508140942', '1');
INSERT INTO `yunu_browse` VALUES ('4760', '121.232.253.172', '1508141064', '1');
INSERT INTO `yunu_browse` VALUES ('4761', '121.232.253.172', '1508141241', '1');
INSERT INTO `yunu_browse` VALUES ('4762', '121.232.253.172', '1508141262', '1');
INSERT INTO `yunu_browse` VALUES ('4763', '121.232.253.172', '1508141338', '1');
INSERT INTO `yunu_browse` VALUES ('4764', '121.232.253.172', '1508141343', '1');
INSERT INTO `yunu_browse` VALUES ('4765', '121.232.253.172', '1508141365', '1');
INSERT INTO `yunu_browse` VALUES ('4766', '121.232.253.172', '1508141372', '1');
INSERT INTO `yunu_browse` VALUES ('4767', '121.232.253.172', '1508141383', '1');
INSERT INTO `yunu_browse` VALUES ('4768', '121.232.253.172', '1508141389', '1');
INSERT INTO `yunu_browse` VALUES ('4769', '121.232.253.172', '1508141396', '1');
INSERT INTO `yunu_browse` VALUES ('4770', '121.232.253.172', '1508141407', '1');
INSERT INTO `yunu_browse` VALUES ('4771', '121.232.253.172', '1508141409', '1');
INSERT INTO `yunu_browse` VALUES ('4772', '121.232.253.172', '1508141500', '1');
INSERT INTO `yunu_browse` VALUES ('4773', '121.232.253.172', '1508141517', '1');
INSERT INTO `yunu_browse` VALUES ('4774', '121.232.253.172', '1508141529', '1');
INSERT INTO `yunu_browse` VALUES ('4775', '121.232.253.172', '1508141559', '1');
INSERT INTO `yunu_browse` VALUES ('4776', '121.232.253.172', '1508141579', '1');
INSERT INTO `yunu_browse` VALUES ('4777', '121.232.253.172', '1508141589', '1');
INSERT INTO `yunu_browse` VALUES ('4778', '121.232.253.172', '1508141773', '1');
INSERT INTO `yunu_browse` VALUES ('4779', '140.205.225.188', '1508142293', '1');
INSERT INTO `yunu_browse` VALUES ('4780', '203.208.60.205', '1508142355', '2');
INSERT INTO `yunu_browse` VALUES ('4781', '58.217.192.54', '1508142397', '1');
INSERT INTO `yunu_browse` VALUES ('4782', '140.205.225.188', '1508142466', '1');
INSERT INTO `yunu_browse` VALUES ('4783', '121.232.253.172', '1508142493', '1');
INSERT INTO `yunu_browse` VALUES ('4784', '58.217.192.54', '1508142630', '1');
INSERT INTO `yunu_browse` VALUES ('4785', '140.205.225.188', '1508142715', '1');
INSERT INTO `yunu_browse` VALUES ('4786', '121.232.253.172', '1508142722', '1');
INSERT INTO `yunu_browse` VALUES ('4787', '140.205.225.202', '1508142924', '1');
INSERT INTO `yunu_browse` VALUES ('4788', '140.205.225.188', '1508143036', '1');
INSERT INTO `yunu_browse` VALUES ('4789', '121.232.253.172', '1508143041', '1');
INSERT INTO `yunu_browse` VALUES ('4790', '121.232.253.172', '1508143050', '1');
INSERT INTO `yunu_browse` VALUES ('4791', '121.232.253.172', '1508143058', '1');
INSERT INTO `yunu_browse` VALUES ('4792', '121.232.253.172', '1508143066', '1');
INSERT INTO `yunu_browse` VALUES ('4793', '121.232.253.172', '1508143169', '1');
INSERT INTO `yunu_browse` VALUES ('4794', '140.205.225.188', '1508143172', '1');
INSERT INTO `yunu_browse` VALUES ('4795', '140.205.225.202', '1508143190', '1');
INSERT INTO `yunu_browse` VALUES ('4796', '140.205.225.188', '1508143192', '1');
INSERT INTO `yunu_browse` VALUES ('4797', '121.232.253.172', '1508143286', '1');
INSERT INTO `yunu_browse` VALUES ('4798', '121.232.253.172', '1508143336', '1');
INSERT INTO `yunu_browse` VALUES ('4799', '121.232.253.172', '1508143337', '1');
INSERT INTO `yunu_browse` VALUES ('4800', '140.205.225.188', '1508143380', '1');
INSERT INTO `yunu_browse` VALUES ('4801', '140.205.225.188', '1508143401', '1');
INSERT INTO `yunu_browse` VALUES ('4802', '121.232.253.172', '1508143469', '1');
INSERT INTO `yunu_browse` VALUES ('4803', '140.205.225.188', '1508143471', '1');
INSERT INTO `yunu_browse` VALUES ('4804', '140.205.225.188', '1508143495', '1');
INSERT INTO `yunu_browse` VALUES ('4805', '121.232.253.172', '1508143506', '1');
INSERT INTO `yunu_browse` VALUES ('4806', '113.108.10.15', '1508143513', '1');
INSERT INTO `yunu_browse` VALUES ('4807', '112.90.82.218', '1508143513', '2');
INSERT INTO `yunu_browse` VALUES ('4808', '183.57.53.196', '1508143521', '2');
INSERT INTO `yunu_browse` VALUES ('4809', '113.108.10.18', '1508143521', '1');
INSERT INTO `yunu_browse` VALUES ('4810', '101.226.33.218', '1508143522', '2');
INSERT INTO `yunu_browse` VALUES ('4811', '183.3.239.162', '1508143523', '1');
INSERT INTO `yunu_browse` VALUES ('4812', '101.226.33.237', '1508143531', '1');
INSERT INTO `yunu_browse` VALUES ('4813', '121.232.253.172', '1508143736', '1');
INSERT INTO `yunu_browse` VALUES ('4814', '121.232.253.172', '1508143740', '1');
INSERT INTO `yunu_browse` VALUES ('4815', '140.205.225.188', '1508143751', '1');
INSERT INTO `yunu_browse` VALUES ('4816', '140.205.225.188', '1508143782', '1');
INSERT INTO `yunu_browse` VALUES ('4817', '140.205.225.188', '1508143784', '1');
INSERT INTO `yunu_browse` VALUES ('4818', '121.232.253.172', '1508143797', '1');
INSERT INTO `yunu_browse` VALUES ('4819', '140.205.225.195', '1508143952', '1');
INSERT INTO `yunu_browse` VALUES ('4820', '140.205.225.195', '1508144006', '1');
INSERT INTO `yunu_browse` VALUES ('4821', '121.232.253.172', '1508144393', '1');
INSERT INTO `yunu_browse` VALUES ('4822', '121.232.253.172', '1508144418', '1');
INSERT INTO `yunu_browse` VALUES ('4823', '101.226.64.174', '1508144425', '2');
INSERT INTO `yunu_browse` VALUES ('4824', '183.3.239.166', '1508144660', '1');
INSERT INTO `yunu_browse` VALUES ('4825', '14.17.21.58', '1508144660', '2');
INSERT INTO `yunu_browse` VALUES ('4826', '61.151.226.189', '1508144660', '2');
INSERT INTO `yunu_browse` VALUES ('4827', '61.151.226.16', '1508144670', '1');
INSERT INTO `yunu_browse` VALUES ('4828', '101.226.68.215', '1508144709', '2');
INSERT INTO `yunu_browse` VALUES ('4829', '101.226.68.161', '1508144709', '2');
INSERT INTO `yunu_browse` VALUES ('4830', '101.226.66.187', '1508144718', '1');
INSERT INTO `yunu_browse` VALUES ('4831', '101.226.66.179', '1508144719', '1');
INSERT INTO `yunu_browse` VALUES ('4832', '47.93.112.232', '1508144742', '1');
INSERT INTO `yunu_browse` VALUES ('4833', '140.205.225.202', '1508145098', '1');
INSERT INTO `yunu_browse` VALUES ('4834', '140.205.225.202', '1508145110', '1');
INSERT INTO `yunu_browse` VALUES ('4835', '121.232.253.172', '1508145209', '1');
INSERT INTO `yunu_browse` VALUES ('4836', '121.232.253.172', '1508145225', '1');
INSERT INTO `yunu_browse` VALUES ('4837', '121.232.253.172', '1508145305', '1');
INSERT INTO `yunu_browse` VALUES ('4838', '121.232.253.172', '1508145314', '1');
INSERT INTO `yunu_browse` VALUES ('4839', '121.232.253.172', '1508145548', '1');
INSERT INTO `yunu_browse` VALUES ('4840', '121.232.253.172', '1508145644', '1');
INSERT INTO `yunu_browse` VALUES ('4841', '121.232.253.172', '1508145685', '1');
INSERT INTO `yunu_browse` VALUES ('4842', '121.232.253.172', '1508146042', '1');
INSERT INTO `yunu_browse` VALUES ('4843', '121.232.253.172', '1508146056', '1');
INSERT INTO `yunu_browse` VALUES ('4844', '180.121.255.87', '1508146414', '1');
INSERT INTO `yunu_browse` VALUES ('4845', '140.205.201.40', '1508148455', '1');
INSERT INTO `yunu_browse` VALUES ('4846', '140.205.201.40', '1508148456', '1');
INSERT INTO `yunu_browse` VALUES ('4847', '118.178.10.66', '1508148653', '1');
INSERT INTO `yunu_browse` VALUES ('4848', '140.205.225.200', '1508149228', '1');
INSERT INTO `yunu_browse` VALUES ('4849', '140.205.225.200', '1508149239', '1');
INSERT INTO `yunu_browse` VALUES ('4850', '140.205.225.205', '1508149670', '1');
INSERT INTO `yunu_browse` VALUES ('4851', '140.205.225.203', '1508149764', '1');
INSERT INTO `yunu_browse` VALUES ('4852', '140.205.225.205', '1508149764', '1');
INSERT INTO `yunu_browse` VALUES ('4853', '140.205.225.192', '1508149847', '1');
INSERT INTO `yunu_browse` VALUES ('4854', '140.205.225.203', '1508149862', '1');
INSERT INTO `yunu_browse` VALUES ('4855', '140.205.225.192', '1508149953', '1');
INSERT INTO `yunu_browse` VALUES ('4856', '140.205.201.32', '1508149974', '1');
INSERT INTO `yunu_browse` VALUES ('4857', '140.205.201.32', '1508149975', '1');
INSERT INTO `yunu_browse` VALUES ('4858', '203.208.60.205', '1508150009', '1');
INSERT INTO `yunu_browse` VALUES ('4859', '140.205.225.203', '1508150016', '1');
INSERT INTO `yunu_browse` VALUES ('4860', '140.205.225.195', '1508150179', '1');
INSERT INTO `yunu_browse` VALUES ('4861', '140.205.225.195', '1508150216', '1');
INSERT INTO `yunu_browse` VALUES ('4862', '140.205.201.42', '1508150268', '1');
INSERT INTO `yunu_browse` VALUES ('4863', '140.205.201.42', '1508150269', '1');
INSERT INTO `yunu_browse` VALUES ('4864', '140.205.225.203', '1508150314', '1');
INSERT INTO `yunu_browse` VALUES ('4865', '140.205.225.202', '1508150492', '1');
INSERT INTO `yunu_browse` VALUES ('4866', '140.205.225.202', '1508150512', '1');
INSERT INTO `yunu_browse` VALUES ('4867', '203.208.60.212', '1508150634', '1');
INSERT INTO `yunu_browse` VALUES ('4868', '140.205.225.190', '1508150731', '1');
INSERT INTO `yunu_browse` VALUES ('4869', '140.205.225.190', '1508150785', '1');
INSERT INTO `yunu_browse` VALUES ('4870', '203.208.60.194', '1508151556', '1');
INSERT INTO `yunu_browse` VALUES ('4871', '140.205.225.197', '1508151608', '1');
INSERT INTO `yunu_browse` VALUES ('4872', '140.205.225.197', '1508151808', '1');
INSERT INTO `yunu_browse` VALUES ('4873', '140.205.225.197', '1508152148', '1');
INSERT INTO `yunu_browse` VALUES ('4874', '58.217.192.54', '1508152359', '1');
INSERT INTO `yunu_browse` VALUES ('4875', '58.217.192.54', '1508152521', '1');
INSERT INTO `yunu_browse` VALUES ('4876', '58.217.192.54', '1508152613', '1');
INSERT INTO `yunu_browse` VALUES ('4877', '140.205.225.194', '1508152625', '1');
INSERT INTO `yunu_browse` VALUES ('4878', '140.205.225.194', '1508152626', '1');
INSERT INTO `yunu_browse` VALUES ('4879', '58.217.192.54', '1508152704', '1');
INSERT INTO `yunu_browse` VALUES ('4880', '140.205.225.192', '1508152744', '1');
INSERT INTO `yunu_browse` VALUES ('4881', '140.205.225.192', '1508152864', '1');
INSERT INTO `yunu_browse` VALUES ('4882', '140.205.225.197', '1508152892', '1');
INSERT INTO `yunu_browse` VALUES ('4883', '140.205.225.189', '1508153065', '1');
INSERT INTO `yunu_browse` VALUES ('4884', '140.205.225.197', '1508153103', '1');
INSERT INTO `yunu_browse` VALUES ('4885', '140.205.225.189', '1508153113', '1');
INSERT INTO `yunu_browse` VALUES ('4886', '140.205.225.197', '1508153160', '1');
INSERT INTO `yunu_browse` VALUES ('4887', '140.205.225.206', '1508153221', '1');
INSERT INTO `yunu_browse` VALUES ('4888', '140.205.225.206', '1508153222', '1');
INSERT INTO `yunu_browse` VALUES ('4889', '140.205.201.32', '1508153224', '1');
INSERT INTO `yunu_browse` VALUES ('4890', '140.205.201.43', '1508153225', '1');
INSERT INTO `yunu_browse` VALUES ('4891', '140.205.201.32', '1508153225', '1');
INSERT INTO `yunu_browse` VALUES ('4892', '140.205.201.43', '1508153226', '1');
INSERT INTO `yunu_browse` VALUES ('4893', '140.205.225.186', '1508153283', '1');
INSERT INTO `yunu_browse` VALUES ('4894', '140.205.225.186', '1508153423', '1');
INSERT INTO `yunu_browse` VALUES ('4895', '140.205.225.190', '1508153460', '1');
INSERT INTO `yunu_browse` VALUES ('4896', '140.205.225.190', '1508153500', '1');
INSERT INTO `yunu_browse` VALUES ('4897', '140.205.225.203', '1508153521', '1');
INSERT INTO `yunu_browse` VALUES ('4898', '140.205.201.32', '1508153521', '1');
INSERT INTO `yunu_browse` VALUES ('4899', '140.205.201.32', '1508153522', '1');
INSERT INTO `yunu_browse` VALUES ('4900', '140.205.225.203', '1508153522', '1');
INSERT INTO `yunu_browse` VALUES ('4901', '140.205.201.32', '1508153528', '1');
INSERT INTO `yunu_browse` VALUES ('4902', '140.205.201.32', '1508153529', '1');
INSERT INTO `yunu_browse` VALUES ('4903', '140.205.225.204', '1508153529', '1');
INSERT INTO `yunu_browse` VALUES ('4904', '140.205.225.204', '1508153531', '1');
INSERT INTO `yunu_browse` VALUES ('4905', '140.205.225.197', '1508153733', '1');
INSERT INTO `yunu_browse` VALUES ('4906', '140.205.225.197', '1508153757', '1');
INSERT INTO `yunu_browse` VALUES ('4907', '140.205.225.195', '1508153825', '1');
INSERT INTO `yunu_browse` VALUES ('4908', '140.205.201.36', '1508153826', '1');
INSERT INTO `yunu_browse` VALUES ('4909', '140.205.225.195', '1508153826', '1');
INSERT INTO `yunu_browse` VALUES ('4910', '140.205.201.36', '1508153827', '1');
INSERT INTO `yunu_browse` VALUES ('4911', '140.205.225.200', '1508153829', '1');
INSERT INTO `yunu_browse` VALUES ('4912', '140.205.225.200', '1508153830', '1');
INSERT INTO `yunu_browse` VALUES ('4913', '140.205.225.197', '1508153954', '1');
INSERT INTO `yunu_browse` VALUES ('4914', '213.180.203.42', '1508154014', '1');
INSERT INTO `yunu_browse` VALUES ('4915', '140.205.225.197', '1508154065', '1');
INSERT INTO `yunu_browse` VALUES ('4916', '140.205.201.43', '1508154132', '1');
INSERT INTO `yunu_browse` VALUES ('4917', '140.205.201.43', '1508154133', '1');
INSERT INTO `yunu_browse` VALUES ('4918', '140.205.201.37', '1508154133', '1');
INSERT INTO `yunu_browse` VALUES ('4919', '140.205.201.37', '1508154134', '1');
INSERT INTO `yunu_browse` VALUES ('4920', '203.208.60.239', '1508154204', '1');
INSERT INTO `yunu_browse` VALUES ('4921', '203.208.60.226', '1508154221', '1');
INSERT INTO `yunu_browse` VALUES ('4922', '203.208.60.249', '1508154245', '1');
INSERT INTO `yunu_browse` VALUES ('4923', '140.205.225.197', '1508154251', '1');
INSERT INTO `yunu_browse` VALUES ('4924', '140.205.225.197', '1508154278', '1');
INSERT INTO `yunu_browse` VALUES ('4925', '140.205.225.197', '1508154284', '1');
INSERT INTO `yunu_browse` VALUES ('4926', '203.208.60.194', '1508154284', '2');
INSERT INTO `yunu_browse` VALUES ('4927', '203.208.60.198', '1508154287', '1');
INSERT INTO `yunu_browse` VALUES ('4928', '140.205.225.203', '1508154438', '1');
INSERT INTO `yunu_browse` VALUES ('4929', '140.205.225.203', '1508154440', '1');
INSERT INTO `yunu_browse` VALUES ('4930', '180.118.27.43', '1508154450', '1');
INSERT INTO `yunu_browse` VALUES ('4931', '140.205.225.185', '1508154500', '1');
INSERT INTO `yunu_browse` VALUES ('4932', '203.208.60.237', '1508154594', '1');
INSERT INTO `yunu_browse` VALUES ('4933', '140.205.225.198', '1508154621', '1');
INSERT INTO `yunu_browse` VALUES ('4934', '140.205.225.185', '1508154739', '1');
INSERT INTO `yunu_browse` VALUES ('4935', '140.205.225.183', '1508154748', '1');
INSERT INTO `yunu_browse` VALUES ('4936', '140.205.225.183', '1508154749', '1');
INSERT INTO `yunu_browse` VALUES ('4937', '140.205.225.195', '1508154796', '1');
INSERT INTO `yunu_browse` VALUES ('4938', '203.208.60.195', '1508154895', '1');
INSERT INTO `yunu_browse` VALUES ('4939', '140.205.225.195', '1508154895', '1');
INSERT INTO `yunu_browse` VALUES ('4940', '140.205.225.198', '1508154912', '1');
INSERT INTO `yunu_browse` VALUES ('4941', '203.208.60.197', '1508155194', '1');
INSERT INTO `yunu_browse` VALUES ('4942', '140.205.201.44', '1508155267', '1');
INSERT INTO `yunu_browse` VALUES ('4943', '140.205.201.44', '1508155267', '1');
INSERT INTO `yunu_browse` VALUES ('4944', '45.55.18.226', '1508156172', '1');
INSERT INTO `yunu_browse` VALUES ('4945', '101.226.125.100', '1508156325', '1');
INSERT INTO `yunu_browse` VALUES ('4946', '140.205.201.39', '1508156544', '1');
INSERT INTO `yunu_browse` VALUES ('4947', '140.205.225.185', '1508156544', '1');
INSERT INTO `yunu_browse` VALUES ('4948', '140.205.225.185', '1508156544', '1');
INSERT INTO `yunu_browse` VALUES ('4949', '140.205.201.39', '1508156545', '1');
INSERT INTO `yunu_browse` VALUES ('4950', '140.205.201.43', '1508156545', '1');
INSERT INTO `yunu_browse` VALUES ('4951', '140.205.201.43', '1508156545', '1');
INSERT INTO `yunu_browse` VALUES ('4952', '140.205.201.40', '1508156846', '1');
INSERT INTO `yunu_browse` VALUES ('4953', '140.205.201.40', '1508156848', '1');
INSERT INTO `yunu_browse` VALUES ('4954', '140.205.225.204', '1508156850', '1');
INSERT INTO `yunu_browse` VALUES ('4955', '140.205.225.199', '1508156851', '1');
INSERT INTO `yunu_browse` VALUES ('4956', '140.205.225.204', '1508156851', '1');
INSERT INTO `yunu_browse` VALUES ('4957', '140.205.225.199', '1508156852', '1');
INSERT INTO `yunu_browse` VALUES ('4958', '140.205.225.205', '1508156868', '1');
INSERT INTO `yunu_browse` VALUES ('4959', '140.205.225.203', '1508156904', '1');
INSERT INTO `yunu_browse` VALUES ('4960', '140.205.225.202', '1508156911', '1');
INSERT INTO `yunu_browse` VALUES ('4961', '140.205.225.205', '1508156926', '1');
INSERT INTO `yunu_browse` VALUES ('4962', '140.205.225.203', '1508156970', '1');
INSERT INTO `yunu_browse` VALUES ('4963', '140.205.225.202', '1508157148', '1');
INSERT INTO `yunu_browse` VALUES ('4964', '140.205.225.196', '1508157155', '1');
INSERT INTO `yunu_browse` VALUES ('4965', '140.205.225.196', '1508157155', '1');
INSERT INTO `yunu_browse` VALUES ('4966', '140.205.201.38', '1508157156', '1');
INSERT INTO `yunu_browse` VALUES ('4967', '140.205.225.188', '1508157156', '1');
INSERT INTO `yunu_browse` VALUES ('4968', '140.205.225.188', '1508157158', '1');
INSERT INTO `yunu_browse` VALUES ('4969', '140.205.225.204', '1508157159', '1');
INSERT INTO `yunu_browse` VALUES ('4970', '140.205.225.204', '1508157161', '1');
INSERT INTO `yunu_browse` VALUES ('4971', '140.205.201.38', '1508157161', '1');
INSERT INTO `yunu_browse` VALUES ('4972', '140.205.225.202', '1508157201', '1');
INSERT INTO `yunu_browse` VALUES ('4973', '140.205.225.186', '1508157243', '1');
INSERT INTO `yunu_browse` VALUES ('4974', '140.205.225.202', '1508157243', '1');
INSERT INTO `yunu_browse` VALUES ('4975', '140.205.225.198', '1508157252', '1');
INSERT INTO `yunu_browse` VALUES ('4976', '140.205.225.198', '1508157253', '1');
INSERT INTO `yunu_browse` VALUES ('4977', '140.205.225.198', '1508157387', '1');
INSERT INTO `yunu_browse` VALUES ('4978', '140.205.225.198', '1508157388', '1');
INSERT INTO `yunu_browse` VALUES ('4979', '140.205.201.38', '1508157455', '1');
INSERT INTO `yunu_browse` VALUES ('4980', '140.205.201.38', '1508157456', '1');
INSERT INTO `yunu_browse` VALUES ('4981', '140.205.225.201', '1508157457', '1');
INSERT INTO `yunu_browse` VALUES ('4982', '140.205.225.201', '1508157458', '1');
INSERT INTO `yunu_browse` VALUES ('4983', '140.205.225.188', '1508157460', '1');
INSERT INTO `yunu_browse` VALUES ('4984', '140.205.225.188', '1508157461', '1');
INSERT INTO `yunu_browse` VALUES ('4985', '140.205.225.203', '1508157481', '1');
INSERT INTO `yunu_browse` VALUES ('4986', '140.205.225.186', '1508157482', '1');
INSERT INTO `yunu_browse` VALUES ('4987', '140.205.225.185', '1508157510', '1');
INSERT INTO `yunu_browse` VALUES ('4988', '140.205.225.185', '1508157511', '1');
INSERT INTO `yunu_browse` VALUES ('4989', '101.226.33.225', '1508157522', '1');
INSERT INTO `yunu_browse` VALUES ('4990', '140.205.225.192', '1508157524', '1');
INSERT INTO `yunu_browse` VALUES ('4991', '140.205.225.192', '1508157525', '1');
INSERT INTO `yunu_browse` VALUES ('4992', '140.205.225.192', '1508157582', '1');
INSERT INTO `yunu_browse` VALUES ('4993', '140.205.225.192', '1508157583', '1');
INSERT INTO `yunu_browse` VALUES ('4994', '140.205.225.186', '1508157597', '1');
INSERT INTO `yunu_browse` VALUES ('4995', '140.205.225.203', '1508157638', '1');
INSERT INTO `yunu_browse` VALUES ('4996', '140.205.225.185', '1508157660', '1');
INSERT INTO `yunu_browse` VALUES ('4997', '140.205.225.185', '1508157663', '1');
INSERT INTO `yunu_browse` VALUES ('4998', '140.205.225.186', '1508157684', '1');
INSERT INTO `yunu_browse` VALUES ('4999', '140.205.201.46', '1508157705', '1');
INSERT INTO `yunu_browse` VALUES ('5000', '140.205.201.46', '1508157706', '1');
INSERT INTO `yunu_browse` VALUES ('5001', '140.205.225.202', '1508157784', '1');
INSERT INTO `yunu_browse` VALUES ('5002', '140.205.225.202', '1508157853', '1');
INSERT INTO `yunu_browse` VALUES ('5003', '140.205.225.198', '1508158060', '1');
INSERT INTO `yunu_browse` VALUES ('5004', '140.205.225.198', '1508158061', '1');
INSERT INTO `yunu_browse` VALUES ('5005', '140.205.225.188', '1508158061', '1');
INSERT INTO `yunu_browse` VALUES ('5006', '140.205.225.188', '1508158062', '1');
INSERT INTO `yunu_browse` VALUES ('5007', '140.205.225.197', '1508158079', '1');
INSERT INTO `yunu_browse` VALUES ('5008', '140.205.225.197', '1508158087', '1');
INSERT INTO `yunu_browse` VALUES ('5009', '180.118.27.43', '1508158214', '1');
INSERT INTO `yunu_browse` VALUES ('5010', '180.118.27.43', '1508158220', '1');
INSERT INTO `yunu_browse` VALUES ('5011', '180.118.27.43', '1508158226', '1');
INSERT INTO `yunu_browse` VALUES ('5012', '140.205.201.37', '1508158361', '1');
INSERT INTO `yunu_browse` VALUES ('5013', '140.205.201.37', '1508158362', '1');
INSERT INTO `yunu_browse` VALUES ('5014', '218.241.17.212', '1508158452', '1');
INSERT INTO `yunu_browse` VALUES ('5015', '106.120.162.108', '1508158483', '1');
INSERT INTO `yunu_browse` VALUES ('5016', '203.208.60.207', '1508158860', '2');
INSERT INTO `yunu_browse` VALUES ('5017', '124.238.21.149', '1508158957', '1');
INSERT INTO `yunu_browse` VALUES ('5018', '203.208.60.206', '1508159463', '1');
INSERT INTO `yunu_browse` VALUES ('5019', '203.208.60.210', '1508159775', '1');
INSERT INTO `yunu_browse` VALUES ('5020', '140.205.225.189', '1508161079', '1');
INSERT INTO `yunu_browse` VALUES ('5021', '140.205.225.189', '1508161081', '1');
INSERT INTO `yunu_browse` VALUES ('5022', '140.205.201.45', '1508161107', '1');
INSERT INTO `yunu_browse` VALUES ('5023', '140.205.201.45', '1508161112', '1');
INSERT INTO `yunu_browse` VALUES ('5024', '140.205.225.205', '1508162865', '1');
INSERT INTO `yunu_browse` VALUES ('5025', '140.205.225.205', '1508162868', '1');
INSERT INTO `yunu_browse` VALUES ('5026', '140.205.201.46', '1508162876', '1');
INSERT INTO `yunu_browse` VALUES ('5027', '140.205.201.46', '1508162913', '1');
INSERT INTO `yunu_browse` VALUES ('5028', '140.205.225.202', '1508163125', '1');
INSERT INTO `yunu_browse` VALUES ('5029', '140.205.225.202', '1508163163', '1');
INSERT INTO `yunu_browse` VALUES ('5030', '123.59.146.153', '1508163528', '1');
INSERT INTO `yunu_browse` VALUES ('5031', '140.205.201.32', '1508163725', '1');
INSERT INTO `yunu_browse` VALUES ('5032', '140.205.201.32', '1508163727', '1');
INSERT INTO `yunu_browse` VALUES ('5033', '47.93.31.212', '1508163973', '1');
INSERT INTO `yunu_browse` VALUES ('5034', '140.205.201.43', '1508165847', '1');
INSERT INTO `yunu_browse` VALUES ('5035', '140.205.201.43', '1508165848', '1');
INSERT INTO `yunu_browse` VALUES ('5036', '140.205.201.46', '1508166633', '1');
INSERT INTO `yunu_browse` VALUES ('5037', '140.205.201.46', '1508166633', '1');
INSERT INTO `yunu_browse` VALUES ('5038', '140.205.201.44', '1508167269', '1');
INSERT INTO `yunu_browse` VALUES ('5039', '140.205.201.44', '1508167284', '1');
INSERT INTO `yunu_browse` VALUES ('5040', '140.205.225.204', '1508167395', '1');
INSERT INTO `yunu_browse` VALUES ('5041', '140.205.225.204', '1508167472', '1');
INSERT INTO `yunu_browse` VALUES ('5042', '140.205.225.204', '1508167516', '1');
INSERT INTO `yunu_browse` VALUES ('5043', '140.205.225.204', '1508167571', '1');
INSERT INTO `yunu_browse` VALUES ('5044', '140.205.225.204', '1508167609', '1');
INSERT INTO `yunu_browse` VALUES ('5045', '140.205.225.204', '1508167647', '1');
INSERT INTO `yunu_browse` VALUES ('5046', '140.205.225.204', '1508167718', '1');
INSERT INTO `yunu_browse` VALUES ('5047', '140.205.225.204', '1508167725', '1');
INSERT INTO `yunu_browse` VALUES ('5048', '140.205.225.204', '1508167740', '1');
INSERT INTO `yunu_browse` VALUES ('5049', '140.205.225.204', '1508167745', '1');
INSERT INTO `yunu_browse` VALUES ('5050', '140.205.225.204', '1508167788', '1');
INSERT INTO `yunu_browse` VALUES ('5051', '140.205.225.204', '1508167797', '1');
INSERT INTO `yunu_browse` VALUES ('5052', '140.205.225.204', '1508167798', '1');
INSERT INTO `yunu_browse` VALUES ('5053', '140.205.225.191', '1508168273', '1');
INSERT INTO `yunu_browse` VALUES ('5054', '140.205.225.191', '1508168274', '1');
INSERT INTO `yunu_browse` VALUES ('5055', '140.205.225.202', '1508171824', '1');
INSERT INTO `yunu_browse` VALUES ('5056', '140.205.225.202', '1508171826', '1');
INSERT INTO `yunu_browse` VALUES ('5057', '140.205.201.38', '1508173032', '1');
INSERT INTO `yunu_browse` VALUES ('5058', '140.205.201.38', '1508173032', '1');
INSERT INTO `yunu_browse` VALUES ('5059', '121.199.70.200', '1508173429', '1');
INSERT INTO `yunu_browse` VALUES ('5060', '140.205.201.39', '1508173932', '1');
INSERT INTO `yunu_browse` VALUES ('5061', '140.205.201.39', '1508173934', '1');
INSERT INTO `yunu_browse` VALUES ('5062', '116.62.176.205', '1508175168', '1');
INSERT INTO `yunu_browse` VALUES ('5063', '203.208.60.201', '1508177682', '1');
INSERT INTO `yunu_browse` VALUES ('5064', '140.205.225.188', '1508178476', '1');
INSERT INTO `yunu_browse` VALUES ('5065', '140.205.225.188', '1508178477', '1');
INSERT INTO `yunu_browse` VALUES ('5066', '140.205.225.196', '1508179086', '1');
INSERT INTO `yunu_browse` VALUES ('5067', '140.205.225.196', '1508179087', '1');
INSERT INTO `yunu_browse` VALUES ('5068', '140.205.225.204', '1508179399', '1');
INSERT INTO `yunu_browse` VALUES ('5069', '140.205.225.204', '1508179401', '1');
INSERT INTO `yunu_browse` VALUES ('5070', '203.208.60.202', '1508179914', '1');
INSERT INTO `yunu_browse` VALUES ('5071', '203.208.60.232', '1508182986', '2');
INSERT INTO `yunu_browse` VALUES ('5072', '185.110.132.239', '1508183320', '1');
INSERT INTO `yunu_browse` VALUES ('5073', '140.205.225.200', '1508184145', '1');
INSERT INTO `yunu_browse` VALUES ('5074', '140.205.225.200', '1508184146', '1');
INSERT INTO `yunu_browse` VALUES ('5075', '140.205.225.203', '1508184168', '1');
INSERT INTO `yunu_browse` VALUES ('5076', '140.205.225.203', '1508184220', '1');
INSERT INTO `yunu_browse` VALUES ('5077', '140.205.225.203', '1508184248', '1');
INSERT INTO `yunu_browse` VALUES ('5078', '140.205.225.203', '1508184317', '1');
INSERT INTO `yunu_browse` VALUES ('5079', '140.205.225.203', '1508184365', '1');
INSERT INTO `yunu_browse` VALUES ('5080', '140.205.225.203', '1508184379', '1');
INSERT INTO `yunu_browse` VALUES ('5081', '140.205.225.203', '1508184479', '1');
INSERT INTO `yunu_browse` VALUES ('5082', '203.208.60.212', '1508184485', '1');
INSERT INTO `yunu_browse` VALUES ('5083', '140.205.225.203', '1508184486', '1');
INSERT INTO `yunu_browse` VALUES ('5084', '140.205.225.203', '1508184504', '1');
INSERT INTO `yunu_browse` VALUES ('5085', '140.205.225.203', '1508184509', '1');
INSERT INTO `yunu_browse` VALUES ('5086', '203.208.60.242', '1508184559', '1');
INSERT INTO `yunu_browse` VALUES ('5087', '140.205.225.203', '1508184579', '1');
INSERT INTO `yunu_browse` VALUES ('5088', '140.205.225.203', '1508184602', '1');
INSERT INTO `yunu_browse` VALUES ('5089', '140.205.225.203', '1508184608', '1');
INSERT INTO `yunu_browse` VALUES ('5090', '140.205.201.37', '1508184761', '1');
INSERT INTO `yunu_browse` VALUES ('5091', '140.205.201.43', '1508184762', '1');
INSERT INTO `yunu_browse` VALUES ('5092', '140.205.201.37', '1508184762', '1');
INSERT INTO `yunu_browse` VALUES ('5093', '140.205.201.43', '1508184763', '1');
INSERT INTO `yunu_browse` VALUES ('5094', '140.205.225.202', '1508184764', '1');
INSERT INTO `yunu_browse` VALUES ('5095', '140.205.225.202', '1508184765', '1');
INSERT INTO `yunu_browse` VALUES ('5096', '140.205.201.40', '1508184767', '1');
INSERT INTO `yunu_browse` VALUES ('5097', '140.205.201.40', '1508184768', '1');
INSERT INTO `yunu_browse` VALUES ('5098', '140.205.225.189', '1508184772', '1');
INSERT INTO `yunu_browse` VALUES ('5099', '140.205.225.189', '1508184774', '1');
INSERT INTO `yunu_browse` VALUES ('5100', '140.205.225.193', '1508185075', '1');
INSERT INTO `yunu_browse` VALUES ('5101', '140.205.225.193', '1508185076', '1');
INSERT INTO `yunu_browse` VALUES ('5102', '140.205.225.191', '1508185371', '1');
INSERT INTO `yunu_browse` VALUES ('5103', '140.205.225.191', '1508185372', '1');
INSERT INTO `yunu_browse` VALUES ('5104', '203.208.60.237', '1508185431', '1');
INSERT INTO `yunu_browse` VALUES ('5105', '140.205.201.44', '1508185480', '1');
INSERT INTO `yunu_browse` VALUES ('5106', '140.205.201.44', '1508185530', '1');
INSERT INTO `yunu_browse` VALUES ('5107', '140.205.225.186', '1508185670', '1');
INSERT INTO `yunu_browse` VALUES ('5108', '140.205.225.186', '1508185672', '1');
INSERT INTO `yunu_browse` VALUES ('5109', '140.205.225.199', '1508185676', '1');
INSERT INTO `yunu_browse` VALUES ('5110', '140.205.225.200', '1508185677', '1');
INSERT INTO `yunu_browse` VALUES ('5111', '140.205.225.199', '1508185678', '1');
INSERT INTO `yunu_browse` VALUES ('5112', '140.205.225.200', '1508185679', '1');
INSERT INTO `yunu_browse` VALUES ('5113', '140.205.225.197', '1508185966', '1');
INSERT INTO `yunu_browse` VALUES ('5114', '140.205.225.197', '1508185967', '1');
INSERT INTO `yunu_browse` VALUES ('5115', '140.205.225.185', '1508185984', '1');
INSERT INTO `yunu_browse` VALUES ('5116', '140.205.225.185', '1508185998', '1');
INSERT INTO `yunu_browse` VALUES ('5117', '140.205.201.47', '1508188334', '1');
INSERT INTO `yunu_browse` VALUES ('5118', '203.208.60.204', '1508189395', '2');
INSERT INTO `yunu_browse` VALUES ('5119', '140.205.201.47', '1508191085', '1');
INSERT INTO `yunu_browse` VALUES ('5120', '140.205.201.42', '1508191350', '1');
INSERT INTO `yunu_browse` VALUES ('5121', '140.205.201.42', '1508191351', '1');
INSERT INTO `yunu_browse` VALUES ('5122', '140.205.225.188', '1508191354', '1');
INSERT INTO `yunu_browse` VALUES ('5123', '140.205.225.188', '1508191355', '1');
INSERT INTO `yunu_browse` VALUES ('5124', '140.205.225.185', '1508191363', '1');
INSERT INTO `yunu_browse` VALUES ('5125', '140.205.225.185', '1508191363', '1');
INSERT INTO `yunu_browse` VALUES ('5126', '140.205.225.190', '1508191363', '1');
INSERT INTO `yunu_browse` VALUES ('5127', '140.205.225.190', '1508191364', '1');
INSERT INTO `yunu_browse` VALUES ('5128', '140.205.201.40', '1508191648', '1');
INSERT INTO `yunu_browse` VALUES ('5129', '140.205.201.40', '1508191649', '1');
INSERT INTO `yunu_browse` VALUES ('5130', '140.205.225.195', '1508191650', '1');
INSERT INTO `yunu_browse` VALUES ('5131', '140.205.225.195', '1508191651', '1');
INSERT INTO `yunu_browse` VALUES ('5132', '140.205.225.204', '1508191953', '1');
INSERT INTO `yunu_browse` VALUES ('5133', '140.205.225.204', '1508191954', '1');
INSERT INTO `yunu_browse` VALUES ('5134', '140.205.225.203', '1508191955', '1');
INSERT INTO `yunu_browse` VALUES ('5135', '140.205.225.203', '1508191956', '1');
INSERT INTO `yunu_browse` VALUES ('5136', '140.205.225.202', '1508191964', '1');
INSERT INTO `yunu_browse` VALUES ('5137', '140.205.201.38', '1508191965', '1');
INSERT INTO `yunu_browse` VALUES ('5138', '140.205.225.202', '1508191965', '1');
INSERT INTO `yunu_browse` VALUES ('5139', '140.205.201.38', '1508191966', '1');
INSERT INTO `yunu_browse` VALUES ('5140', '140.205.225.186', '1508192253', '1');
INSERT INTO `yunu_browse` VALUES ('5141', '140.205.225.187', '1508192253', '1');
INSERT INTO `yunu_browse` VALUES ('5142', '140.205.225.186', '1508192254', '1');
INSERT INTO `yunu_browse` VALUES ('5143', '140.205.225.183', '1508192254', '1');
INSERT INTO `yunu_browse` VALUES ('5144', '140.205.225.187', '1508192255', '1');
INSERT INTO `yunu_browse` VALUES ('5145', '140.205.225.183', '1508192255', '1');
INSERT INTO `yunu_browse` VALUES ('5146', '140.205.201.39', '1508192555', '1');
INSERT INTO `yunu_browse` VALUES ('5147', '140.205.201.39', '1508192556', '1');
INSERT INTO `yunu_browse` VALUES ('5148', '140.205.225.196', '1508192562', '1');
INSERT INTO `yunu_browse` VALUES ('5149', '140.205.225.196', '1508192562', '1');
INSERT INTO `yunu_browse` VALUES ('5150', '140.205.225.188', '1508192565', '1');
INSERT INTO `yunu_browse` VALUES ('5151', '140.205.225.188', '1508192566', '1');
INSERT INTO `yunu_browse` VALUES ('5152', '140.205.225.199', '1508192567', '1');
INSERT INTO `yunu_browse` VALUES ('5153', '140.205.225.190', '1508192568', '1');
INSERT INTO `yunu_browse` VALUES ('5154', '140.205.225.199', '1508192569', '1');
INSERT INTO `yunu_browse` VALUES ('5155', '140.205.225.190', '1508192569', '1');
INSERT INTO `yunu_browse` VALUES ('5156', '140.205.201.40', '1508192862', '1');
INSERT INTO `yunu_browse` VALUES ('5157', '140.205.201.40', '1508192863', '1');
INSERT INTO `yunu_browse` VALUES ('5158', '213.180.203.42', '1508192983', '1');
INSERT INTO `yunu_browse` VALUES ('5159', '140.205.225.186', '1508193167', '1');
INSERT INTO `yunu_browse` VALUES ('5160', '140.205.225.186', '1508193168', '1');
INSERT INTO `yunu_browse` VALUES ('5161', '140.205.225.204', '1508193169', '1');
INSERT INTO `yunu_browse` VALUES ('5162', '140.205.225.204', '1508193170', '1');
INSERT INTO `yunu_browse` VALUES ('5163', '140.205.225.199', '1508193171', '1');
INSERT INTO `yunu_browse` VALUES ('5164', '140.205.225.199', '1508193172', '1');
INSERT INTO `yunu_browse` VALUES ('5165', '140.205.225.204', '1508193466', '1');
INSERT INTO `yunu_browse` VALUES ('5166', '140.205.225.204', '1508193468', '1');
INSERT INTO `yunu_browse` VALUES ('5167', '140.205.201.44', '1508194788', '1');
INSERT INTO `yunu_browse` VALUES ('5168', '140.205.201.44', '1508194824', '1');
INSERT INTO `yunu_browse` VALUES ('5169', '203.208.60.205', '1508194864', '2');
INSERT INTO `yunu_browse` VALUES ('5170', '140.205.225.192', '1508195269', '1');
INSERT INTO `yunu_browse` VALUES ('5171', '140.205.225.192', '1508195271', '1');
INSERT INTO `yunu_browse` VALUES ('5172', '140.205.225.185', '1508195272', '1');
INSERT INTO `yunu_browse` VALUES ('5173', '140.205.225.185', '1508195274', '1');
INSERT INTO `yunu_browse` VALUES ('5174', '140.205.225.183', '1508195565', '1');
INSERT INTO `yunu_browse` VALUES ('5175', '140.205.225.183', '1508195566', '1');
INSERT INTO `yunu_browse` VALUES ('5176', '140.205.225.204', '1508195570', '1');
INSERT INTO `yunu_browse` VALUES ('5177', '140.205.225.205', '1508195570', '1');
INSERT INTO `yunu_browse` VALUES ('5178', '140.205.225.204', '1508195572', '1');
INSERT INTO `yunu_browse` VALUES ('5179', '140.205.225.205', '1508195572', '1');
INSERT INTO `yunu_browse` VALUES ('5180', '140.205.225.204', '1508195573', '1');
INSERT INTO `yunu_browse` VALUES ('5181', '140.205.225.204', '1508195575', '1');
INSERT INTO `yunu_browse` VALUES ('5182', '140.205.225.200', '1508195578', '1');
INSERT INTO `yunu_browse` VALUES ('5183', '140.205.225.200', '1508195579', '1');
INSERT INTO `yunu_browse` VALUES ('5184', '140.205.225.203', '1508195580', '1');
INSERT INTO `yunu_browse` VALUES ('5185', '140.205.225.203', '1508195582', '1');
INSERT INTO `yunu_browse` VALUES ('5186', '140.205.225.197', '1508195871', '1');
INSERT INTO `yunu_browse` VALUES ('5187', '140.205.201.32', '1508195871', '1');
INSERT INTO `yunu_browse` VALUES ('5188', '140.205.201.32', '1508195871', '1');
INSERT INTO `yunu_browse` VALUES ('5189', '140.205.201.32', '1508195872', '1');
INSERT INTO `yunu_browse` VALUES ('5190', '140.205.201.32', '1508195872', '1');
INSERT INTO `yunu_browse` VALUES ('5191', '140.205.225.205', '1508195873', '1');
INSERT INTO `yunu_browse` VALUES ('5192', '140.205.225.188', '1508195874', '1');
INSERT INTO `yunu_browse` VALUES ('5193', '140.205.225.205', '1508195874', '1');
INSERT INTO `yunu_browse` VALUES ('5194', '140.205.201.37', '1508195875', '1');
INSERT INTO `yunu_browse` VALUES ('5195', '140.205.201.40', '1508195875', '1');
INSERT INTO `yunu_browse` VALUES ('5196', '140.205.225.197', '1508195876', '1');
INSERT INTO `yunu_browse` VALUES ('5197', '140.205.201.37', '1508195876', '1');
INSERT INTO `yunu_browse` VALUES ('5198', '140.205.225.188', '1508195876', '1');
INSERT INTO `yunu_browse` VALUES ('5199', '140.205.201.40', '1508195877', '1');
INSERT INTO `yunu_browse` VALUES ('5200', '140.205.225.194', '1508195877', '1');
INSERT INTO `yunu_browse` VALUES ('5201', '140.205.225.194', '1508195878', '1');
INSERT INTO `yunu_browse` VALUES ('5202', '140.205.201.36', '1508196178', '1');
INSERT INTO `yunu_browse` VALUES ('5203', '140.205.201.36', '1508196179', '1');
INSERT INTO `yunu_browse` VALUES ('5204', '140.205.201.38', '1508196180', '1');
INSERT INTO `yunu_browse` VALUES ('5205', '140.205.201.38', '1508196181', '1');
INSERT INTO `yunu_browse` VALUES ('5206', '140.205.225.194', '1508196184', '1');
INSERT INTO `yunu_browse` VALUES ('5207', '140.205.225.194', '1508196186', '1');
INSERT INTO `yunu_browse` VALUES ('5208', '140.205.225.193', '1508196187', '1');
INSERT INTO `yunu_browse` VALUES ('5209', '140.205.225.193', '1508196188', '1');
INSERT INTO `yunu_browse` VALUES ('5210', '140.205.225.193', '1508196189', '1');
INSERT INTO `yunu_browse` VALUES ('5211', '140.205.225.200', '1508196189', '1');
INSERT INTO `yunu_browse` VALUES ('5212', '140.205.225.200', '1508196189', '1');
INSERT INTO `yunu_browse` VALUES ('5213', '140.205.225.193', '1508196190', '1');
INSERT INTO `yunu_browse` VALUES ('5214', '140.205.225.200', '1508196191', '1');
INSERT INTO `yunu_browse` VALUES ('5215', '140.205.225.200', '1508196191', '1');
INSERT INTO `yunu_browse` VALUES ('5216', '140.205.225.196', '1508196191', '1');
INSERT INTO `yunu_browse` VALUES ('5217', '140.205.225.196', '1508196192', '1');
INSERT INTO `yunu_browse` VALUES ('5218', '140.205.225.185', '1508196501', '1');
INSERT INTO `yunu_browse` VALUES ('5219', '140.205.225.206', '1508196502', '1');
INSERT INTO `yunu_browse` VALUES ('5220', '140.205.225.185', '1508196502', '1');
INSERT INTO `yunu_browse` VALUES ('5221', '140.205.225.206', '1508196503', '1');
INSERT INTO `yunu_browse` VALUES ('5222', '140.205.201.46', '1508196714', '1');
INSERT INTO `yunu_browse` VALUES ('5223', '140.205.201.46', '1508196755', '1');
INSERT INTO `yunu_browse` VALUES ('5224', '140.205.225.186', '1508196796', '1');
INSERT INTO `yunu_browse` VALUES ('5225', '140.205.225.186', '1508196798', '1');
INSERT INTO `yunu_browse` VALUES ('5226', '140.205.225.199', '1508196802', '1');
INSERT INTO `yunu_browse` VALUES ('5227', '140.205.225.202', '1508196802', '1');
INSERT INTO `yunu_browse` VALUES ('5228', '140.205.225.199', '1508196803', '1');
INSERT INTO `yunu_browse` VALUES ('5229', '140.205.225.202', '1508196804', '1');
INSERT INTO `yunu_browse` VALUES ('5230', '140.205.225.186', '1508197322', '1');
INSERT INTO `yunu_browse` VALUES ('5231', '140.205.225.186', '1508197322', '1');
INSERT INTO `yunu_browse` VALUES ('5232', '140.205.225.203', '1508197615', '1');
INSERT INTO `yunu_browse` VALUES ('5233', '140.205.225.203', '1508197616', '1');
INSERT INTO `yunu_browse` VALUES ('5234', '140.205.225.190', '1508197918', '1');
INSERT INTO `yunu_browse` VALUES ('5235', '140.205.225.190', '1508197920', '1');
INSERT INTO `yunu_browse` VALUES ('5236', '140.205.225.198', '1508198825', '1');
INSERT INTO `yunu_browse` VALUES ('5237', '140.205.225.198', '1508198827', '1');
INSERT INTO `yunu_browse` VALUES ('5238', '140.205.225.200', '1508198829', '1');
INSERT INTO `yunu_browse` VALUES ('5239', '140.205.225.200', '1508198831', '1');
INSERT INTO `yunu_browse` VALUES ('5240', '140.205.201.47', '1508199159', '1');
INSERT INTO `yunu_browse` VALUES ('5241', '140.205.201.47', '1508199160', '1');
INSERT INTO `yunu_browse` VALUES ('5242', '140.205.201.37', '1508199729', '1');
INSERT INTO `yunu_browse` VALUES ('5243', '140.205.201.37', '1508199730', '1');
INSERT INTO `yunu_browse` VALUES ('5244', '140.205.201.45', '1508200017', '1');
INSERT INTO `yunu_browse` VALUES ('5245', '203.208.60.205', '1508200073', '2');
INSERT INTO `yunu_browse` VALUES ('5246', '14.17.21.58', '1508200158', '2');
INSERT INTO `yunu_browse` VALUES ('5247', '140.205.201.47', '1508200247', '1');
INSERT INTO `yunu_browse` VALUES ('5248', '140.205.201.46', '1508200713', '1');
INSERT INTO `yunu_browse` VALUES ('5249', '140.205.201.46', '1508200720', '1');
INSERT INTO `yunu_browse` VALUES ('5250', '14.17.3.65', '1508200938', '2');
INSERT INTO `yunu_browse` VALUES ('5251', '112.90.82.196', '1508200938', '2');
INSERT INTO `yunu_browse` VALUES ('5252', '183.57.53.177', '1508200938', '2');
INSERT INTO `yunu_browse` VALUES ('5253', '101.226.66.178', '1508200948', '1');
INSERT INTO `yunu_browse` VALUES ('5254', '61.151.226.189', '1508201204', '1');
INSERT INTO `yunu_browse` VALUES ('5255', '121.232.253.172', '1508201752', '1');
INSERT INTO `yunu_browse` VALUES ('5256', '140.207.124.105', '1508201769', '2');
INSERT INTO `yunu_browse` VALUES ('5257', '112.90.82.236', '1508201769', '2');
INSERT INTO `yunu_browse` VALUES ('5258', '121.232.253.172', '1508201776', '1');
INSERT INTO `yunu_browse` VALUES ('5259', '112.65.193.14', '1508202195', '1');
INSERT INTO `yunu_browse` VALUES ('5260', '140.205.201.46', '1508202348', '1');
INSERT INTO `yunu_browse` VALUES ('5261', '140.205.201.46', '1508202352', '1');
INSERT INTO `yunu_browse` VALUES ('5262', '101.24.120.99', '1508203136', '1');
INSERT INTO `yunu_browse` VALUES ('5263', '66.102.6.132', '1508203230', '1');
INSERT INTO `yunu_browse` VALUES ('5264', '140.205.201.47', '1508203262', '1');
INSERT INTO `yunu_browse` VALUES ('5265', '140.205.225.204', '1508204276', '1');
INSERT INTO `yunu_browse` VALUES ('5266', '140.205.225.204', '1508204277', '1');
INSERT INTO `yunu_browse` VALUES ('5267', '205.209.159.89', '1508204744', '1');
INSERT INTO `yunu_browse` VALUES ('5268', '121.232.255.98', '1508205283', '1');
INSERT INTO `yunu_browse` VALUES ('5269', '121.232.255.98', '1508205287', '1');
INSERT INTO `yunu_browse` VALUES ('5270', '114.99.12.81', '1508206116', '1');
INSERT INTO `yunu_browse` VALUES ('5271', '47.93.90.175', '1508206543', '1');
INSERT INTO `yunu_browse` VALUES ('5272', '140.205.225.199', '1508206946', '1');
INSERT INTO `yunu_browse` VALUES ('5273', '140.205.225.199', '1508207024', '1');
INSERT INTO `yunu_browse` VALUES ('5274', '140.205.225.199', '1508207087', '1');
INSERT INTO `yunu_browse` VALUES ('5275', '140.205.225.199', '1508207154', '1');
INSERT INTO `yunu_browse` VALUES ('5276', '140.205.225.199', '1508207206', '1');
INSERT INTO `yunu_browse` VALUES ('5277', '140.205.225.199', '1508207232', '1');
INSERT INTO `yunu_browse` VALUES ('5278', '140.205.225.199', '1508207280', '1');
INSERT INTO `yunu_browse` VALUES ('5279', '140.205.201.44', '1508207282', '1');
INSERT INTO `yunu_browse` VALUES ('5280', '140.205.201.44', '1508207282', '1');
INSERT INTO `yunu_browse` VALUES ('5281', '140.205.225.199', '1508207284', '1');
INSERT INTO `yunu_browse` VALUES ('5282', '140.205.225.199', '1508207295', '1');
INSERT INTO `yunu_browse` VALUES ('5283', '140.205.201.44', '1508207298', '1');
INSERT INTO `yunu_browse` VALUES ('5284', '140.205.225.199', '1508207299', '1');
INSERT INTO `yunu_browse` VALUES ('5285', '140.205.201.44', '1508207299', '1');
INSERT INTO `yunu_browse` VALUES ('5286', '140.205.225.199', '1508207365', '1');
INSERT INTO `yunu_browse` VALUES ('5287', '140.205.225.199', '1508207399', '1');
INSERT INTO `yunu_browse` VALUES ('5288', '140.205.225.199', '1508207407', '1');
INSERT INTO `yunu_browse` VALUES ('5289', '111.85.218.145', '1508207451', '1');
INSERT INTO `yunu_browse` VALUES ('5290', '140.205.201.46', '1508207877', '1');
INSERT INTO `yunu_browse` VALUES ('5291', '140.205.201.46', '1508207940', '1');
INSERT INTO `yunu_browse` VALUES ('5292', '121.232.255.98', '1508207955', '1');
INSERT INTO `yunu_browse` VALUES ('5293', '121.232.255.98', '1508208046', '1');
INSERT INTO `yunu_browse` VALUES ('5294', '121.232.255.98', '1508208051', '1');
INSERT INTO `yunu_browse` VALUES ('5295', '121.232.255.98', '1508208053', '1');
INSERT INTO `yunu_browse` VALUES ('5296', '121.232.255.98', '1508208076', '1');
INSERT INTO `yunu_browse` VALUES ('5297', '140.205.225.183', '1508208127', '1');
INSERT INTO `yunu_browse` VALUES ('5298', '140.205.225.183', '1508208129', '1');
INSERT INTO `yunu_browse` VALUES ('5299', '121.232.255.98', '1508208361', '1');
INSERT INTO `yunu_browse` VALUES ('5300', '121.232.255.98', '1508208419', '1');
INSERT INTO `yunu_browse` VALUES ('5301', '121.232.255.98', '1508209037', '1');
INSERT INTO `yunu_browse` VALUES ('5302', '140.205.201.36', '1508209043', '1');
INSERT INTO `yunu_browse` VALUES ('5303', '140.205.201.36', '1508209045', '1');
INSERT INTO `yunu_browse` VALUES ('5304', '127.0.0.1', '1508210181', '1');
INSERT INTO `yunu_browse` VALUES ('5305', '127.0.0.1', '1508210185', '1');
INSERT INTO `yunu_browse` VALUES ('5306', '127.0.0.1', '1508210195', '1');
INSERT INTO `yunu_browse` VALUES ('5307', '127.0.0.1', '1508212198', '1');
INSERT INTO `yunu_browse` VALUES ('5308', '127.0.0.1', '1508212581', '1');
INSERT INTO `yunu_browse` VALUES ('5309', '127.0.0.1', '1508212629', '1');
INSERT INTO `yunu_browse` VALUES ('5310', '127.0.0.1', '1508212630', '1');
INSERT INTO `yunu_browse` VALUES ('5311', '127.0.0.1', '1508212636', '1');
INSERT INTO `yunu_browse` VALUES ('5312', '127.0.0.1', '1508212656', '1');
INSERT INTO `yunu_browse` VALUES ('5313', '127.0.0.1', '1508212975', '1');
INSERT INTO `yunu_browse` VALUES ('5314', '127.0.0.1', '1508232644', '1');
INSERT INTO `yunu_browse` VALUES ('5315', '127.0.0.1', '1508232647', '1');
INSERT INTO `yunu_browse` VALUES ('5316', '127.0.0.1', '1508232651', '1');
INSERT INTO `yunu_browse` VALUES ('5317', '127.0.0.1', '1508287762', '1');
INSERT INTO `yunu_browse` VALUES ('5318', '127.0.0.1', '1508293481', '1');
INSERT INTO `yunu_browse` VALUES ('5319', '127.0.0.1', '1508298567', '1');
INSERT INTO `yunu_browse` VALUES ('5320', '127.0.0.1', '1508307581', '1');
INSERT INTO `yunu_browse` VALUES ('5321', '127.0.0.1', '1508308794', '1');
INSERT INTO `yunu_browse` VALUES ('5322', '127.0.0.1', '1508308962', '1');
INSERT INTO `yunu_browse` VALUES ('5323', '127.0.0.1', '1508309011', '1');
INSERT INTO `yunu_browse` VALUES ('5324', '127.0.0.1', '1508309038', '1');
INSERT INTO `yunu_browse` VALUES ('5325', '127.0.0.1', '1508309040', '1');
INSERT INTO `yunu_browse` VALUES ('5326', '127.0.0.1', '1508309364', '1');
INSERT INTO `yunu_browse` VALUES ('5327', '127.0.0.1', '1508316868', '1');
INSERT INTO `yunu_browse` VALUES ('5328', '127.0.0.1', '1508317514', '1');
INSERT INTO `yunu_browse` VALUES ('5329', '127.0.0.1', '1508397082', '1');
INSERT INTO `yunu_browse` VALUES ('5330', '127.0.0.1', '1508398651', '1');
INSERT INTO `yunu_browse` VALUES ('5331', '127.0.0.1', '1508399226', '1');
INSERT INTO `yunu_browse` VALUES ('5332', '127.0.0.1', '1508399254', '1');
INSERT INTO `yunu_browse` VALUES ('5333', '127.0.0.1', '1508399326', '1');
INSERT INTO `yunu_browse` VALUES ('5334', '127.0.0.1', '1508399366', '1');
INSERT INTO `yunu_browse` VALUES ('5335', '127.0.0.1', '1508399789', '1');
INSERT INTO `yunu_browse` VALUES ('5336', '127.0.0.1', '1508399792', '1');
INSERT INTO `yunu_browse` VALUES ('5337', '127.0.0.1', '1508399816', '1');
INSERT INTO `yunu_browse` VALUES ('5338', '127.0.0.1', '1508399828', '1');
INSERT INTO `yunu_browse` VALUES ('5339', '127.0.0.1', '1508399828', '1');
INSERT INTO `yunu_browse` VALUES ('5340', '127.0.0.1', '1508399828', '1');
INSERT INTO `yunu_browse` VALUES ('5341', '127.0.0.1', '1508399829', '1');
INSERT INTO `yunu_browse` VALUES ('5342', '127.0.0.1', '1508399829', '1');
INSERT INTO `yunu_browse` VALUES ('5343', '127.0.0.1', '1508399890', '1');
INSERT INTO `yunu_browse` VALUES ('5344', '127.0.0.1', '1508399892', '1');
INSERT INTO `yunu_browse` VALUES ('5345', '127.0.0.1', '1508399897', '1');
INSERT INTO `yunu_browse` VALUES ('5346', '127.0.0.1', '1508399920', '1');
INSERT INTO `yunu_browse` VALUES ('5347', '127.0.0.1', '1508401412', '1');
INSERT INTO `yunu_browse` VALUES ('5348', '127.0.0.1', '1508403042', '1');
INSERT INTO `yunu_browse` VALUES ('5349', '127.0.0.1', '1508403072', '1');
INSERT INTO `yunu_browse` VALUES ('5350', '127.0.0.1', '1508403124', '1');
INSERT INTO `yunu_browse` VALUES ('5351', '127.0.0.1', '1508403186', '2');
INSERT INTO `yunu_browse` VALUES ('5352', '127.0.0.1', '1508403191', '1');
INSERT INTO `yunu_browse` VALUES ('5353', '127.0.0.1', '1508403219', '1');
INSERT INTO `yunu_browse` VALUES ('5354', '127.0.0.1', '1508403220', '1');
INSERT INTO `yunu_browse` VALUES ('5355', '127.0.0.1', '1508403220', '1');
INSERT INTO `yunu_browse` VALUES ('5356', '127.0.0.1', '1508403220', '1');
INSERT INTO `yunu_browse` VALUES ('5357', '127.0.0.1', '1508403244', '1');
INSERT INTO `yunu_browse` VALUES ('5358', '127.0.0.1', '1508403280', '1');
INSERT INTO `yunu_browse` VALUES ('5359', '127.0.0.1', '1508403295', '1');
INSERT INTO `yunu_browse` VALUES ('5360', '127.0.0.1', '1508403297', '1');
INSERT INTO `yunu_browse` VALUES ('5361', '127.0.0.1', '1508403298', '1');
INSERT INTO `yunu_browse` VALUES ('5362', '127.0.0.1', '1508403314', '1');
INSERT INTO `yunu_browse` VALUES ('5363', '127.0.0.1', '1508403341', '1');
INSERT INTO `yunu_browse` VALUES ('5364', '127.0.0.1', '1508403342', '1');
INSERT INTO `yunu_browse` VALUES ('5365', '127.0.0.1', '1508403365', '1');
INSERT INTO `yunu_browse` VALUES ('5366', '127.0.0.1', '1508403371', '1');
INSERT INTO `yunu_browse` VALUES ('5367', '127.0.0.1', '1508403416', '1');
INSERT INTO `yunu_browse` VALUES ('5368', '127.0.0.1', '1508403477', '1');
INSERT INTO `yunu_browse` VALUES ('5369', '127.0.0.1', '1508403510', '1');
INSERT INTO `yunu_browse` VALUES ('5370', '127.0.0.1', '1508403567', '1');
INSERT INTO `yunu_browse` VALUES ('5371', '127.0.0.1', '1508403571', '1');
INSERT INTO `yunu_browse` VALUES ('5372', '127.0.0.1', '1508403577', '1');
INSERT INTO `yunu_browse` VALUES ('5373', '127.0.0.1', '1508403598', '1');
INSERT INTO `yunu_browse` VALUES ('5374', '127.0.0.1', '1508411553', '1');
INSERT INTO `yunu_browse` VALUES ('5375', '127.0.0.1', '1508411631', '1');
INSERT INTO `yunu_browse` VALUES ('5376', '127.0.0.1', '1508411647', '1');
INSERT INTO `yunu_browse` VALUES ('5377', '127.0.0.1', '1508463239', '1');
INSERT INTO `yunu_browse` VALUES ('5378', '127.0.0.1', '1508465267', '1');
INSERT INTO `yunu_browse` VALUES ('5379', '127.0.0.1', '1508465994', '1');
INSERT INTO `yunu_browse` VALUES ('5380', '127.0.0.1', '1508467090', '1');
INSERT INTO `yunu_browse` VALUES ('5381', '127.0.0.1', '1508468784', '1');
INSERT INTO `yunu_browse` VALUES ('5382', '127.0.0.1', '1508483038', '1');
INSERT INTO `yunu_browse` VALUES ('5383', '127.0.0.1', '1508721918', '1');
INSERT INTO `yunu_browse` VALUES ('5384', '127.0.0.1', '1508724754', '1');
INSERT INTO `yunu_browse` VALUES ('5385', '127.0.0.1', '1508809925', '1');
INSERT INTO `yunu_browse` VALUES ('5386', '127.0.0.1', '1508830392', '1');
INSERT INTO `yunu_browse` VALUES ('5387', '127.0.0.1', '1508831825', '1');
INSERT INTO `yunu_browse` VALUES ('5388', '127.0.0.1', '1508831832', '2');
INSERT INTO `yunu_browse` VALUES ('5389', '127.0.0.1', '1508893267', '1');
INSERT INTO `yunu_browse` VALUES ('5390', '127.0.0.1', '1508893285', '1');
INSERT INTO `yunu_browse` VALUES ('5391', '127.0.0.1', '1508996599', '1');
INSERT INTO `yunu_browse` VALUES ('5392', '127.0.0.1', '1508996640', '2');
INSERT INTO `yunu_browse` VALUES ('5393', '127.0.0.1', '1508999784', '1');
INSERT INTO `yunu_browse` VALUES ('5394', '127.0.0.1', '1509064841', '1');
INSERT INTO `yunu_browse` VALUES ('5395', '127.0.0.1', '1509068907', '1');
INSERT INTO `yunu_browse` VALUES ('5396', '127.0.0.1', '1509071030', '1');

-- ----------------------------
-- Table structure for yunu_category
-- ----------------------------
DROP TABLE IF EXISTS `yunu_category`;
CREATE TABLE `yunu_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT NULL COMMENT '分类名称',
  `etitle` varchar(200) DEFAULT NULL COMMENT '别名',
  `subtitle` varchar(200) DEFAULT NULL COMMENT '副标题',
  `pid` int(11) DEFAULT '0' COMMENT '上级分类',
  `mid` int(11) DEFAULT NULL COMMENT '所属模型',
  `pic` text COMMENT '封面照片',
  `seo_title` varchar(200) DEFAULT NULL COMMENT 'SEO标题',
  `seo_keywords` varchar(200) DEFAULT NULL COMMENT 'SEO关键词',
  `seo_desc` varchar(1000) DEFAULT NULL COMMENT 'SEO描述',
  `jumpurl` varchar(200) DEFAULT NULL COMMENT '外部链接',
  `tpl_cover` varchar(60) DEFAULT NULL COMMENT '封面模版',
  `tpl_list` varchar(60) DEFAULT NULL COMMENT '列表模版',
  `tpl_show` varchar(60) DEFAULT NULL COMMENT '内容模版',
  `sort` smallint(6) DEFAULT '0' COMMENT '排序',
  `status` tinyint(1) DEFAULT '1' COMMENT '状态',
  `target` tinyint(1) DEFAULT '0' COMMENT '0当前 1新窗口',
  `nav` tinyint(1) DEFAULT '0' COMMENT '0不显示 1主导航 2尾导航 3都显示',
  `desc` text,
  `content` text,
  `cover` tinyint(1) DEFAULT '0' COMMENT '0列表  1频道',
  `isarea` tinyint(1) DEFAULT '1' COMMENT '开启地区分站0关闭 1开启',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yunu_category
-- ----------------------------
INSERT INTO `yunu_category` VALUES ('27', '其他五金', 'qitawujin', '', '21', '34', '', '', '', '', '', '', 'list_product.html', 'show_product.html', '6', '1', '0', '0', '', '', '0', '1');
INSERT INTO `yunu_category` VALUES ('26', '五金配附件', 'wujinpeifujian', '', '21', '34', '', '', '', '', '', '', 'list_product.html', 'show_product.html', '5', '1', '0', '0', '', '', '0', '1');
INSERT INTO `yunu_category` VALUES ('20', '关于我们', 'guanyuwomen', 'ABOUT US', '0', '37', '/uploads/image/20170929/9c945b7db7641940eeb9ac0f9e9b303a.jpg', '', '', '', '', '', 'list_page.html', '', '1', '1', '0', '1', '<p>1创立于2000年， 经过多年的不懈努力，公司现已经成为一家专业从事IT产品开发、生产和销售的高科技企业。公司成立几年来，一直致力于工控/服务器机箱及各种非标箱体的开发与生产，产品现广泛应用于计算机网络、监控、安防、广电、通讯和仪器设备等多种行业</p>', '<p>2深圳市**科技有限公司位于美丽富饶的中国广东省深圳市松岗溪头工业区，主要从事精密模具开发及制造，专业冲压精密五金电子电器零配件等.产品已通过ISO--9001：2000国际标准品质体系认证，以满足各种客户的多层次需求，全体职员本着“以人为本，以质取胜，持续改进，永续经营”的企业生产理念，产品直销日本，美国，欧洲及东南亚其它国家。我们承诺：为客户提供价格合理，质量优良的产品及服务，以期提高市场的竞争力，成为你最值得信赖的供应商。主要产品：机箱，机蕊，汽车音箱，传真机，打印机，复印机，手机，摄像头,外壳及配件，各种精密端子，电子五金配件，各类五金弹片等。</p><p>创立于2000年， 经过多年的不懈努力，公司现已经成为一家专业从事IT产品开发、生产和销售的高科技企业。公司成立几年来，一直致力于工控/服务器机箱及各种非标箱体的开发与生产，产品现广泛应用于计算机网络、监控、安防、广电、通讯和仪器设备等多种行业，公司设计生产的多种标准及非标产品，成功地替代了多种进口产品，为用户极大地降低了成本，也为我们的民族事业做出了我们的一份贡献！</p><p>公司的主要产品大类别有：19″服务器机箱、工控机箱、网络机柜、服务器机柜、非标机柜、各种操作台、电视墙、非线性编辑台、配电柜（强弱电）、各种机箱。我们的产品结构合理，性能稳定可靠，品质优良，品种齐全。</p><p>公司拥有一批专业的工程设计人员，先进的生产设备及可靠的生产能力；我们崇尚先进的企业文化，追求先进的经营理念、管理理念和人才理念，树立团结和谐的大局观、诚实守信的道德观，坚持加强企业两个文明建设，内增员工凝聚力，外塑 企业良好形象 ，不断增强公司的核心竞争力。</p><p>公司将进一步依靠自身优势和雄厚的实力，发挥良好的品牌效应，坚持“以管理和技术的不断进步为顾客提供满意产品”的质量方针，竭力为国内外新老客户提供更优质的产品和服务</p><p>选择我们，就等于你自己办了一个加工厂！</p><p>展望未来，我们充满信心，因为在您的点击支持和合作下，令本公司的业务蒸蒸日上！ 诚邀各界人士光临指导！</p>', '1', '1');
INSERT INTO `yunu_category` VALUES ('21', '产品展示', 'chanpinzhanshi', '', '0', '34', '', '', '', '', '', '', 'list_product.html', 'show_product.html', '2', '1', '0', '1', '<p>某某有限公司位于美丽富饶的中国广东省深圳市松岗溪头工业区，主要从事精密模具开发及制造，专业冲压精密五金电子电器零配件等.产品已通过ISO--9001：2000国际标准品质体系认证，以满足各种客户的多层次需求，全体职员本着“以人为本，以质取胜，持续改进，永续经营”的企业生产理念，产品直销日本，美国，欧洲及东南亚其它国家。我们承诺：为客户提供价格合理，质量优良的产品及服务，以期提高市场的竞争力，成为你最值得信赖的供应商。主要产品：机箱，机蕊，汽车音箱，传真机，打印机，复印机，手机，摄像头,外壳及配件，各种精密端子，电子五金配件，各类五金弹片等。</p>', '', '1', '1');
INSERT INTO `yunu_category` VALUES ('22', '建筑装饰五金', 'jianzhuzhuangshiwujin', '', '21', '34', '', '', '', '', '', '', 'list_product.html', 'show_product.html', '1', '1', '0', '0', '<p>建筑五金建筑物或构筑物中装用的金属和非金属制品、配件的总称。一般具有实用和装饰双重效果。</p>', '', '0', '1');
INSERT INTO `yunu_category` VALUES ('23', '机械五金件', 'jixiewujinjian', '', '21', '34', '', '', '', '', '', '', 'list_product.html', 'show_product.html', '2', '1', '0', '0', '<p>五金：传统的五金制品，也称“小五金”。指金、银、铜、铁、锡五种金属。经人工加工可以制成刀、剑等艺术品或金属器件。现代社会的五金更为广泛，例如五金工具、五金零部件、日用五金、建筑五金以及安防用品等。小五金产品大都不是最终消费品。</p>', '', '0', '1');
INSERT INTO `yunu_category` VALUES ('24', '手动工具', 'shoudonggongju', '', '21', '34', '', '', '', '', '', '', 'list_product.html', 'show_product.html', '3', '1', '0', '0', '', '', '0', '1');
INSERT INTO `yunu_category` VALUES ('25', '电动工具', 'diandonggongju', '', '21', '34', '', '', '', '', '', '', 'list_product.html', 'show_product.html', '4', '1', '0', '0', '', '', '0', '1');
INSERT INTO `yunu_category` VALUES ('28', '新闻中心', 'xinwenzhongxin', '', '0', '33', '', '', '', '', '', '', 'list_article.html', 'show_article.html', '3', '1', '0', '1', '', '', '0', '1');
INSERT INTO `yunu_category` VALUES ('29', '客户案例', 'kehuanli', '', '0', '35', '', '', '', '', '', '', 'list_picture.html', 'show_product.html', '4', '1', '0', '1', '<p>这里是案例简介设置这里是案例简介设置这里是案例简介设置这里是案例简介设置这里是案例简介设置这里是案例简介设置这里是案例简介设置这里是案例简介设置这里是案例简介设置这里是案例简介设置这里是案例简介设置这里是案例简介设置</p>', '', '0', '1');
INSERT INTO `yunu_category` VALUES ('30', '联系我们', 'lianxiwomen', '', '0', '37', '', '', '', '', '', '', 'list_page.html', '', '5', '1', '0', '1', '', '<p>联系我们内容</p>', '1', '1');
INSERT INTO `yunu_category` VALUES ('34', '荣誉证书', 'rongyuzhengshu', '', '0', '34', '/uploads/image/20170928/b28e4b51a2e99393fc66dac3b41cfdbf.jpg', '', '', '', '', '', 'list_product.html', 'show_product.html', '0', '1', '0', '0', '', '', '0', '0');
INSERT INTO `yunu_category` VALUES ('35', '建筑五金', 'jianzhuwujin', '', '22', '34', '', '', '', '', '', '', 'list_product.html', 'show_product.html', '0', '1', '0', '0', '<p>建筑五金建筑物或构筑物中装用的金属和非金属制品、配件的总称。一般具有实用和装饰双重效果。</p>', '', '0', '1');
INSERT INTO `yunu_category` VALUES ('36', '装饰五金', 'zhuangshiwujin', '', '22', '34', '', '', '', '', '', '', 'list_product.html', 'show_product.html', '0', '1', '0', '0', '', '', '0', '0');
INSERT INTO `yunu_category` VALUES ('38', '机械五金', 'jixie', '', '23', '34', '', '', '', '', '', '', 'list_product.html', 'show_product.html', '0', '1', '0', '0', '', '', '0', '0');
INSERT INTO `yunu_category` VALUES ('39', '钳子/夹子', 'qianzijiazi', '', '24', '34', '', '', '', '', '', '', 'list_product.html', 'show_product.html', '0', '1', '0', '0', '', '', '0', '0');
INSERT INTO `yunu_category` VALUES ('40', '扳手工具', 'banshougongju', '', '24', '34', '', '', '', '', '', '', 'list_product.html', 'show_product.html', '0', '1', '0', '0', '', '', '0', '0');
INSERT INTO `yunu_category` VALUES ('41', '金工工具', 'jingonggongju', '', '25', '34', '', '', '', '', '', '', 'list_product.html', 'show_product.html', '0', '1', '0', '0', '', '', '0', '0');
INSERT INTO `yunu_category` VALUES ('42', '木工工具', 'mugonggongju', '', '25', '34', '', '', '', '', '', '', 'list_product.html', 'show_product.html', '0', '1', '0', '0', '', '', '0', '0');
INSERT INTO `yunu_category` VALUES ('43', '砂磨抛光工具', 'shamopaoguanggongju', '', '25', '34', '', '', '', '', '', '', 'list_product.html', 'show_product.html', '0', '1', '0', '0', '', '', '0', '0');
INSERT INTO `yunu_category` VALUES ('44', '钉枪类气动工', 'dingqiangleiqidonggong', '', '26', '34', '', '', '', '', '', '', 'list_product.html', 'show_product.html', '0', '1', '0', '0', '', '', '0', '0');
INSERT INTO `yunu_category` VALUES ('45', '喷枪吹尘枪', 'penqiangchuichenqiang', '', '26', '34', '', '', '', '', '', '', 'list_product.html', 'show_product.html', '0', '1', '0', '0', '', '', '0', '0');
INSERT INTO `yunu_category` VALUES ('46', '紧固类气动工具', 'jinguleiqidonggongju', '', '26', '34', '', '', '', '', '', '', 'list_product.html', 'show_product.html', '0', '1', '0', '0', '', '', '0', '0');

-- ----------------------------
-- Table structure for yunu_content
-- ----------------------------
DROP TABLE IF EXISTS `yunu_content`;
CREATE TABLE `yunu_content` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) DEFAULT NULL,
  `mid` int(11) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `jumpurl` varchar(100) DEFAULT NULL,
  `etitle` varchar(200) DEFAULT NULL,
  `click` int(11) DEFAULT '0',
  `vid` int(11) DEFAULT NULL COMMENT '更多字段数据ID',
  `sort` int(11) DEFAULT NULL,
  `istop` tinyint(1) DEFAULT '0' COMMENT '0 不推荐 1推荐',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  `aid` int(11) DEFAULT NULL,
  `seo_title` varchar(200) DEFAULT NULL,
  `seo_keywords` varchar(200) DEFAULT NULL,
  `seo_desc` varchar(500) DEFAULT NULL,
  `area` varchar(500) DEFAULT '' COMMENT '地区',
  `top` tinyint(1) DEFAULT NULL,
  `pic` varchar(100) DEFAULT NULL,
  `tag` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=120 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yunu_content
-- ----------------------------
INSERT INTO `yunu_content` VALUES ('29', '34', '34', '1', '', '', '0', '1', '0', '1', '1506676635', '1506676703', '1', '', '', '', '', '0', '/uploads/image/20170929/76dc0e2d121b17eab37f474a65d171e8.png', '');
INSERT INTO `yunu_content` VALUES ('30', '29', '35', '案例1', '', '', '57', '1', '0', '1', '1506676928', '1506676947', '1', '', '', '', '', '0', '/uploads/image/20170929/8c181da0f27dc6671dd5ec70453f9117.jpg', '');
INSERT INTO `yunu_content` VALUES ('31', '29', '35', '案例2', '', '', '65', '2', '0', '1', '1506676948', '1506676979', '1', '', '', '', '', '0', '/uploads/image/20170929/981f6de833848af6d8cb62f6d744e3af.jpg', '');
INSERT INTO `yunu_content` VALUES ('32', '29', '35', '案例3', '', '', '53', '3', '0', '1', '1506676980', '1506677001', '1', '', '', '', '', '0', '/uploads/image/20170929/9288bda0cb4a34871cd1d91e58acd7ff.jpg', '');
INSERT INTO `yunu_content` VALUES ('33', '29', '35', '案例4', '', '', '58', '4', '0', '1', '1506677001', '1506677038', '1', '', '', '', '', '0', '/uploads/image/20170929/c85b598ca28b7e8865c8d1ec9aae5dd9.jpg', '');
INSERT INTO `yunu_content` VALUES ('34', '29', '35', '案例5', '', '', '63', '5', '0', '1', '1506677039', '1506677059', '1', '', '', '', '', '0', '/uploads/image/20170929/9d61483058cc825f4aafd6f3232132c6.jpg', '');
INSERT INTO `yunu_content` VALUES ('35', '28', '33', '公司顺利通过中国环境标志产品认证', '', '', '46', '1', '0', '1', '1506677106', '1506677157', '1', '', '', '', '', '0', '', '');
INSERT INTO `yunu_content` VALUES ('36', '28', '33', '五金配件的进口与国产之争', '', '', '26', '2', '0', '1', '1506677158', '1506677189', '1', '', '', '', '', '0', '', '');
INSERT INTO `yunu_content` VALUES ('37', '28', '33', '天津工厂组织后备骨干军训活动', '', '', '22', '3', '0', '1', '1506677190', '1506677213', '1', '', '', '', '', '0', '', '');
INSERT INTO `yunu_content` VALUES ('38', '28', '33', '五金检测中心获资格 小榄锁具“锁”向无阻', '', '', '30', '4', '0', '1', '1506677508', '1508135263', '1', '', '', '', '', '0', '', '产品');
INSERT INTO `yunu_content` VALUES ('39', '22', '34', '阜平红', '', '', '180', '2', '0', '1', '1506731922', '1508135237', '1', '', '', '', '', '0', '/uploads/image/20170930/79a34d620c72e122acb8f6078dc5922f.jpg', '产品');
INSERT INTO `yunu_content` VALUES ('40', '22', '34', '新米黄', '', '', '57', '3', '0', '1', '1506731951', '1506731982', '1', '', '', '', '', '0', '/uploads/image/20170930/5502581c5ae3a6d50864d93f86c62c7f.jpg', '');
INSERT INTO `yunu_content` VALUES ('41', '22', '34', '紫水晶', '', '', '24', '4', '0', '1', '1506731983', '1506732005', '1', '', '', '', '', '0', '/uploads/image/20170930/c729a7e40e8f69664d03827832023b86.jpg', '');
INSERT INTO `yunu_content` VALUES ('42', '22', '34', '金黄锻', '', '', '35', '5', '0', '1', '1506732006', '1506732029', '1', '', '', '', '', '0', '/uploads/image/20170930/df4bd10759e2c97bdf47d87258bb96fd.jpg', '');
INSERT INTO `yunu_content` VALUES ('43', '22', '34', '玛瑙红', '', '', '51', '6', '0', '1', '1506732030', '1506732048', '1', '', '', '', '', '0', '/uploads/image/20170930/0150de725a47a260c846caec388a37ce.jpg', '');
INSERT INTO `yunu_content` VALUES ('44', '22', '34', '阿拉伯绿', '', '', '121', '7', '0', '1', '1506732050', '1506732065', '1', '', '', '', '', '0', '/uploads/image/20170930/86af2b44f21a4e22ba6fa0a035975d03.jpg', '');
INSERT INTO `yunu_content` VALUES ('45', '22', '34', '人造板', '', '', '38', '8', '10', '1', '1506732066', '1509067859', '1', '', '', '', '', '0', '/uploads/image/20170930/688a51f93e518e38f4b45a6a274d04ad.jpg', '');
INSERT INTO `yunu_content` VALUES ('46', '35', '34', 'FHB200-BG', '', '', '7', '9', '0', '1', '1508129374', '1508129402', '1', '', '', '', '', '0', '/uploads/image/20171016/77e467ecd89008cdb7045fc638cc8e1d.jpg', '');
INSERT INTO `yunu_content` VALUES ('47', '35', '34', '22-FHE-SB', '', '', '4', '10', '0', '1', '1508129404', '1508129425', '1', '', '', '', '', '0', '/uploads/image/20171016/7f0f09c6dc95a402dd0272041c3f81ec.jpg', '');
INSERT INTO `yunu_content` VALUES ('48', '35', '34', '23EG', '', '', '2', '11', '0', '1', '1508129426', '1508129439', '1', '', '', '', '', '0', '/uploads/image/20171016/4d886e83e628dd3ab561160d6517c378.jpg', '');
INSERT INTO `yunu_content` VALUES ('49', '35', '34', '23-SG', '', '', '3', '12', '0', '1', '1508129440', '1508129460', '1', '', '', '', '', '0', '/uploads/image/20171016/0eb89d53055a6020098dcfc940b38731.jpg', '');
INSERT INTO `yunu_content` VALUES ('50', '36', '34', 'TZ-02', '', '', '1', '13', '0', '1', '1508140509', '1508140890', '1', '', '', '', '', '0', '/uploads/image/20171016/5c569da47cff2905953e3557298ce914.jpg', '');
INSERT INTO `yunu_content` VALUES ('51', '36', '34', 'HZ-033', '', '', '1', '14', '0', '1', '1508140545', '1508140880', '1', '', '', '', '', '0', '/uploads/image/20171016/353e188cea14817ff721f4273de66b70.jpg', '');
INSERT INTO `yunu_content` VALUES ('52', '36', '34', 'HYU-036', '', '', '1', '15', '0', '1', '1508140569', '1508140869', '1', '', '', '', '', '0', '/uploads/image/20171016/ee3a0dd68b76b6ab2bed9d1ea04a8b8c.jpg', '');
INSERT INTO `yunu_content` VALUES ('53', '36', '34', 'TYZ-89', '', '', '1', '16', '0', '1', '1508140646', '1508140853', '1', '', '', '', '', '0', '/uploads/image/20171016/ba166ccb43242480a37a3ad06a9dbc30.jpg', '');
INSERT INTO `yunu_content` VALUES ('54', '38', '34', 'RE-01', '', '', '2', '17', '0', '1', '1508140699', '1508140937', '1', '', '', '', '', '0', '/uploads/image/20171016/d0b6f4ab3b9ccbcd81b1101f38fce095.jpg', '');
INSERT INTO `yunu_content` VALUES ('55', '38', '34', 'RE-016', '', '', '1', '18', '0', '1', '1508140722', '1508140926', '1', '', '', '', '', '0', '/uploads/image/20171016/b064a0ca40076606d814a8607447b168.jpg', '');
INSERT INTO `yunu_content` VALUES ('56', '38', '34', 'RE-063', '', '', '2', '19', '0', '1', '1508140747', '1508140915', '1', '', '', '', '', '0', '/uploads/image/20171016/74bf8cdccfd687b827aa2bba4d9c5807.jpg', '');
INSERT INTO `yunu_content` VALUES ('57', '38', '34', 'HUW-561', '', '', '2', '20', '0', '1', '1508140764', '1508140904', '1', '', '', '', '', '0', '/uploads/image/20171016/f018c0422d3206b9def8ef5d219e1b5e.jpg', '');
INSERT INTO `yunu_content` VALUES ('58', '39', '34', 'YHU2000-HZ05', '', '', '1', '21', '0', '1', '1508140947', '1508140978', '1', '', '', '', '', '0', '/uploads/image/20171016/5295442a0bcc8695dd36cd053aa14399.jpg', '');
INSERT INTO `yunu_content` VALUES ('59', '39', '34', 'YH2001-HE056', '', '', '0', '22', '0', '1', '1508140980', '1508141004', '1', '', '', '', '', '0', '/uploads/image/20171016/e5395dac23acc4b8581816170f2ac365.jpg', '');
INSERT INTO `yunu_content` VALUES ('60', '39', '34', 'HTFC500-630V', '', '', '0', '23', '0', '1', '1508141005', '1508141029', '1', '', '', '', '', '0', '/uploads/image/20171016/3e635e0d82c077e8ee8565e06392f159.jpg', '');
INSERT INTO `yunu_content` VALUES ('61', '39', '34', 'HYUHF3020-T028', '', '', '0', '24', '0', '1', '1508141030', '1508141069', '1', '', '', '', '', '0', '/uploads/image/20171016/393bc610e233df82a8605d0f0be8cb2e.jpg', '');
INSERT INTO `yunu_content` VALUES ('62', '40', '34', 'BZ188-56C', '', '', '5', '25', '0', '1', '1508141100', '1508141142', '1', '', '', '', '', '0', '/uploads/image/20171016/abfd3c9a492e5c609f63eeab47690a8c.jpg', '');
INSERT INTO `yunu_content` VALUES ('63', '40', '34', 'BZ188-076C', '', '', '1', '26', '0', '1', '1508141143', '1508141200', '1', '', '', '', '', '0', '/uploads/image/20171016/6a5e5df1cab22d1529c5c9e435f6f1fb.jpg', '');
INSERT INTO `yunu_content` VALUES ('64', '40', '34', 'YHVF50-K63', '', '', '0', '27', '0', '1', '1508141201', '1508141475', '1', '', '', '', '', '0', '/uploads/image/20171016/e371daf4bae56d144f67f6a3e0e41e83.jpg', '');
INSERT INTO `yunu_content` VALUES ('65', '40', '34', 'HYTR-630K', '', '', '3', '28', '0', '1', '1508141477', '1508141513', '1', '', '', '', '', '0', '/uploads/image/20171016/14aced74b2517730385f6dc57dff5226.jpg', '');
INSERT INTO `yunu_content` VALUES ('66', '41', '34', 'JIN-01', '', '', '1', '29', '0', '1', '1508141519', '1508141540', '1', '', '', '', '', '0', '/uploads/image/20171016/3961bcc36e19f0b0fa1d33d59baf4705.jpg', '');
INSERT INTO `yunu_content` VALUES ('67', '41', '34', 'JIN-02', '', '', '1', '30', '0', '1', '1508141541', '1508141558', '1', '', '', '', '', '0', '/uploads/image/20171016/00ab3f3890a90fe0a63cbbfe2c4a0507.jpg', '');
INSERT INTO `yunu_content` VALUES ('68', '41', '34', 'JIN-03', '', '', '2', '31', '0', '1', '1508141560', '1508141583', '1', '', '', '', '', '0', '/uploads/image/20171016/70043b792f9e2a7a6b423574c24e9044.jpg', '');
INSERT INTO `yunu_content` VALUES ('69', '41', '34', 'JIN-04', '', '', '1', '32', '0', '1', '1508141584', '1508141599', '1', '', '', '', '', '0', '/uploads/image/20171016/c3aeec7d6b0d5e115a1fbb64999c2985.jpg', '');
INSERT INTO `yunu_content` VALUES ('70', '42', '34', 'KIHG-01', '', '', '1', '33', '0', '1', '1508141603', '1508141633', '1', '', '', '', '', '0', '/uploads/image/20171016/329a0a67de616a5175580c3bbad48038.jpg', '');
INSERT INTO `yunu_content` VALUES ('71', '42', '34', 'KIHG-02', '', '', '1', '34', '0', '1', '1508141635', '1508141651', '1', '', '', '', '', '0', '/uploads/image/20171016/1a4563a35b8bc8ca80285ccca860c8b0.jpg', '');
INSERT INTO `yunu_content` VALUES ('72', '42', '34', 'KIHG-03', '', '', '1', '35', '0', '1', '1508141654', '1508141666', '1', '', '', '', '', '0', '/uploads/image/20171016/0104389e107868a2d4cb288139ef21bf.jpg', '');
INSERT INTO `yunu_content` VALUES ('73', '42', '34', 'KIHG-04', '', '', '1', '36', '0', '1', '1508141668', '1508141681', '1', '', '', '', '', '0', '/uploads/image/20171016/7955368e604c234c0a6076e5cccb4aec.jpg', '');
INSERT INTO `yunu_content` VALUES ('74', '43', '34', 'SMPO-01', '', '', '1', '37', '0', '1', '1508142380', '1508142407', '1', '', '', '', '', '0', '/uploads/image/20171016/118bc6048f20bf62927c0d51066535f1.jpg', '');
INSERT INTO `yunu_content` VALUES ('75', '43', '34', 'SMPO-02', '', '', '1', '38', '0', '1', '1508142408', '1508142422', '1', '', '', '', '', '0', '/uploads/image/20171016/45ef392a2e6ac962334a1eca04ea2129.jpg', '');
INSERT INTO `yunu_content` VALUES ('76', '43', '34', 'SMPO-03', '', '', '1', '39', '0', '1', '1508142423', '1508142434', '1', '', '', '', '', '0', '/uploads/image/20171016/e5a2fa3e7f3849be89279f35c0201ec7.jpg', '');
INSERT INTO `yunu_content` VALUES ('77', '43', '34', 'SMPO-04', '', '', '1', '40', '0', '1', '1508142436', '1508142448', '1', '', '', '', '', '0', '/uploads/image/20171016/b1154956423d390f7cf944eba1440753.jpg', '');
INSERT INTO `yunu_content` VALUES ('78', '44', '34', 'HKIJG200-01', '', '', '1', '41', '0', '1', '1508142453', '1508142584', '1', '', '', '', '', '0', '/uploads/image/20171016/90fec55dc864dcb8a7d3e31215c659fa.jpg', '');
INSERT INTO `yunu_content` VALUES ('79', '44', '34', 'HKIJG200-02', '', '', '1', '42', '0', '1', '1508142585', '1508142639', '1', '', '', '', '', '0', '/uploads/image/20171016/dd41ca7793ae04332531fb0d09eeecae.jpg', '');
INSERT INTO `yunu_content` VALUES ('80', '44', '34', 'HKIJG200-03', '', '', '1', '43', '0', '1', '1508142599', '1508142615', '1', '', '', '', '', '0', '/uploads/image/20171016/fac291a285880a2756b32e18cc205b55.jpg', '');
INSERT INTO `yunu_content` VALUES ('81', '44', '34', 'HKIJG200-04', '', '', '1', '44', '0', '1', '1508142616', '1508142628', '1', '', '', '', '', '0', '/uploads/image/20171016/6cb27ca487a31b78a82ff4b5712a4468.jpg', '');
INSERT INTO `yunu_content` VALUES ('82', '45', '34', 'PHJIKG-01', '', '', '1', '45', '0', '1', '1508142681', '1508142794', '1', '', '', '', '', '0', '/uploads/image/20171016/f7e1f1a7e903916d64b76f9d9bd99d21.jpg', '');
INSERT INTO `yunu_content` VALUES ('83', '45', '34', 'PHJIKG-02', '', '', '1', '46', '0', '1', '1508142796', '1508142859', '1', '', '', '', '', '0', '/uploads/image/20171016/64cce7e8662ee0252979d988a653c3f6.jpg', '');
INSERT INTO `yunu_content` VALUES ('84', '45', '34', 'PHJIKG-03', '', '', '1', '47', '0', '1', '1508142812', '1508142825', '1', '', '', '', '', '0', '/uploads/image/20171016/9a032c68ddc8206cbd3a5950c68da316.jpg', '');
INSERT INTO `yunu_content` VALUES ('85', '45', '34', 'PHJIKG-04', '', '', '1', '48', '0', '1', '1508142828', '1508142848', '1', '', '', '', '', '0', '/uploads/image/20171016/10912baac1e0de8599945caca9cc3aa0.jpg', '');
INSERT INTO `yunu_content` VALUES ('86', '46', '34', 'JGQD-01', '', '', '0', '49', '0', '1', '1508142863', '1508142892', '1', '', '', '', '', '0', '/uploads/image/20171016/16dff778011bc2cb76877b9813f519ff.jpg', '');
INSERT INTO `yunu_content` VALUES ('87', '46', '34', 'JGQD-02', '', '', '1', '50', '0', '1', '1508142893', '1508142904', '1', '', '', '', '', '0', '/uploads/image/20171016/43ff1a4ac831ce4d02981b61d80b98b7.jpg', '');
INSERT INTO `yunu_content` VALUES ('88', '46', '34', 'JGQD-03', '', '', '1', '51', '0', '1', '1508142905', '1508142919', '1', '', '', '', '', '0', '/uploads/image/20171016/e3c13c9456afa4b60f5226e5e6c8f71d.jpg', '');
INSERT INTO `yunu_content` VALUES ('89', '46', '34', 'JGQD-04', '', '', '1', '52', '0', '1', '1508142920', '1508142931', '1', '', '', '', '', '0', '/uploads/image/20171016/eac32662ebe78c03d9ec0ce8047e4af1.jpg', '');
INSERT INTO `yunu_content` VALUES ('90', '27', '34', 'JkLHF300-01', '', '', '0', '53', '0', '1', '1508143314', '1508143354', '1', '', '', '', '', '0', '/uploads/image/20171016/5cedc1bab5193a2f1f21772d7654ffb4.jpg', '');
INSERT INTO `yunu_content` VALUES ('91', '27', '34', 'JkLHF300-02', '', '', '0', '54', '0', '1', '1508143356', '1508143368', '1', '', '', '', '', '0', '/uploads/image/20171016/d3acdf2cb5001ff09b34b39643cf51f3.jpg', '');
INSERT INTO `yunu_content` VALUES ('92', '27', '34', 'JkLHF300-03', '', '', '0', '55', '0', '1', '1508143369', '1508143421', '1', '', '', '', '', '0', '/uploads/image/20171016/e3dcacb475c56df6ab8e7eff23f7acb0.jpg', '');
INSERT INTO `yunu_content` VALUES ('93', '27', '34', 'JkLHF300-04', '', '', '0', '56', '0', '1', '1508143423', '1508143441', '1', '', '', '', '', '0', '/uploads/image/20171016/dbd60804281094cc1803e75f45f39cf3.jpg', '');

-- ----------------------------
-- Table structure for yunu_diyfield
-- ----------------------------
DROP TABLE IF EXISTS `yunu_diyfield`;
CREATE TABLE `yunu_diyfield` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mid` int(11) DEFAULT NULL,
  `title` varchar(60) DEFAULT NULL COMMENT '字段名称',
  `field` varchar(20) DEFAULT NULL,
  `values` text COMMENT '字段可选值',
  `ftype` varchar(20) DEFAULT '0',
  `defval` varchar(200) DEFAULT NULL COMMENT '默认值',
  `isnotnull` tinyint(1) DEFAULT '0' COMMENT '是否必填 0非必填 1必填',
  `remark` varchar(200) DEFAULT NULL,
  `type` tinyint(1) DEFAULT '1' COMMENT '级别 1用户字段 2系统字段',
  `sort` int(11) DEFAULT NULL,
  `length` int(3) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=106 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yunu_diyfield
-- ----------------------------
INSERT INTO `yunu_diyfield` VALUES ('87', '33', '副标题', 'ftitle', null, 'text', '', '0', '', '1', '0', '255');
INSERT INTO `yunu_diyfield` VALUES ('88', '33', '发布人', 'author', null, 'text', '', '0', '', '1', '0', '255');
INSERT INTO `yunu_diyfield` VALUES ('89', '33', 'linecdm', 'linefxd', null, '------', null, '0', '内容设置', '1', '0', null);
INSERT INTO `yunu_diyfield` VALUES ('90', '33', '文章简介', 'desc', null, 'seditor', '', '0', '', '1', '0', '255');
INSERT INTO `yunu_diyfield` VALUES ('91', '33', '文章内容', 'content', null, 'editor', '', '1', '', '1', '0', '255');
INSERT INTO `yunu_diyfield` VALUES ('97', '34', '产品多图', 'piclist', null, 'images', null, '1', '', '1', '0', '255');
INSERT INTO `yunu_diyfield` VALUES ('98', '34', 'linedqo', 'linevfi', null, '------', null, '0', '内容设置', '1', '0', null);
INSERT INTO `yunu_diyfield` VALUES ('99', '34', '产品简介', 'desc', null, 'seditor', '', '0', '', '1', '0', '255');
INSERT INTO `yunu_diyfield` VALUES ('100', '34', '产品内容', 'content', null, 'editor', '', '1', '', '1', '0', '255');
INSERT INTO `yunu_diyfield` VALUES ('101', '35', '图片多图', 'piclist', null, 'images', null, '0', '', '1', '0', '255');
INSERT INTO `yunu_diyfield` VALUES ('102', '35', 'linejdf', 'lineerr', null, '------', null, '0', '内容设置', '1', '0', null);
INSERT INTO `yunu_diyfield` VALUES ('103', '35', '图片简介', 'desc', null, 'seditor', '', '0', '', '1', '0', '255');
INSERT INTO `yunu_diyfield` VALUES ('104', '35', '图片内容', 'content', null, 'editor', '', '0', '', '1', '0', '255');

-- ----------------------------
-- Table structure for yunu_diymodel
-- ----------------------------
DROP TABLE IF EXISTS `yunu_diymodel`;
CREATE TABLE `yunu_diymodel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(60) DEFAULT NULL COMMENT '名称',
  `tabname` text COMMENT '自定义字段列表',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  `type` tinyint(1) DEFAULT '1' COMMENT '级别 1用户模型 2系统模型',
  `sort` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yunu_diymodel
-- ----------------------------
INSERT INTO `yunu_diymodel` VALUES ('33', '文章模型', 'article', '文章模型', '2', '1');
INSERT INTO `yunu_diymodel` VALUES ('34', '产品模型', 'product', '产品模型', '2', '2');
INSERT INTO `yunu_diymodel` VALUES ('35', '图片模型', 'image', '图片模型', '2', '3');
INSERT INTO `yunu_diymodel` VALUES ('37', '单页模型', 'page', '空模型', '2', '3');

-- ----------------------------
-- Table structure for yunu_diy_article
-- ----------------------------
DROP TABLE IF EXISTS `yunu_diy_article`;
CREATE TABLE `yunu_diy_article` (
  `conid` int(10) NOT NULL AUTO_INCREMENT,
  `ftitle` varchar(255) DEFAULT '',
  `author` varchar(255) DEFAULT '',
  `desc` text,
  `content` text,
  PRIMARY KEY (`conid`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yunu_diy_article
-- ----------------------------
INSERT INTO `yunu_diy_article` VALUES ('1', '公司顺利通过中国环境标志产品认证', '本站', '<p>近期，公司喜获“中国环境标志产品认证”证书。中国环境标志认证表明公司产品不仅质量合格，而且王企鹅群翁群无王企鹅无群二近期，公司喜获“中国环境标志产品认证”证书。中国环境标志认证表明公司产品不仅质量合格，而且王企鹅群翁群无王企鹅无群二1</p>', '<p>近期，公司喜获“中国环境标志产品认证”证书。中国环境标志认证表明公司产品不仅质量合格，而且王企鹅群翁群无王企鹅无群二近期，公司喜获“中国环境标志产品认证”证书。中国环境标志认证表明公司产品不仅质量合格，而且王企鹅群翁群无王企鹅无群二1</p>');
INSERT INTO `yunu_diy_article` VALUES ('2', '五金配件的进口与国产之争', '本站', '<p>五金件是现代家具中非常关键的组成部分，别看个头小，在一定程度它却可以决定家具的功能和使用寿</p>', '<p>五金件是现代家具中非常关键的组成部分，别看个头小，在一定程度它却可以决定家具的功能和使用寿</p>');
INSERT INTO `yunu_diy_article` VALUES ('3', '天津工厂组织后备骨干军训活动', '本站', '<p>为加强员工体能锻炼，提升工作激情，天津工厂年初举行了为期20多天的后备骨干军训活动</p>', '<p>为加强员工体能锻炼，提升工作激情，天津工厂年初举行了为期20多天的后备骨干军训活动</p>');
INSERT INTO `yunu_diy_article` VALUES ('4', '五金检测中心获资格 小榄锁具“锁”向无阻', '本站', '<p>小榄镇在2004年便被国家授予“中国锁具出口基地”称号，然而小榄锁具在出口时，却要送到外地</p>', '<p>小榄镇在2004年便被国家授予“中国锁具出口基地”称号，然而小榄锁具在出口时，却要送到外地</p>');

-- ----------------------------
-- Table structure for yunu_diy_image
-- ----------------------------
DROP TABLE IF EXISTS `yunu_diy_image`;
CREATE TABLE `yunu_diy_image` (
  `conid` int(10) NOT NULL AUTO_INCREMENT,
  `piclist` text,
  `desc` text,
  `content` text,
  PRIMARY KEY (`conid`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yunu_diy_image
-- ----------------------------
INSERT INTO `yunu_diy_image` VALUES ('1', '', '<p>1</p>', '<p>1</p>');
INSERT INTO `yunu_diy_image` VALUES ('2', '', '<p>2</p>', '<p>2</p>');
INSERT INTO `yunu_diy_image` VALUES ('3', '', '<p>3</p>', '<p>3</p>');
INSERT INTO `yunu_diy_image` VALUES ('4', '', '<p>4</p>', '<p>4</p>');
INSERT INTO `yunu_diy_image` VALUES ('5', '', '<p>5</p>', '<p>5</p>');

-- ----------------------------
-- Table structure for yunu_diy_page
-- ----------------------------
DROP TABLE IF EXISTS `yunu_diy_page`;
CREATE TABLE `yunu_diy_page` (
  `conid` int(10) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`conid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yunu_diy_page
-- ----------------------------

-- ----------------------------
-- Table structure for yunu_diy_product
-- ----------------------------
DROP TABLE IF EXISTS `yunu_diy_product`;
CREATE TABLE `yunu_diy_product` (
  `conid` int(10) NOT NULL AUTO_INCREMENT,
  `piclist` text,
  `desc` text,
  `content` text,
  PRIMARY KEY (`conid`)
) ENGINE=MyISAM AUTO_INCREMENT=86 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yunu_diy_product
-- ----------------------------
INSERT INTO `yunu_diy_product` VALUES ('1', '', '<p>1</p>', '<p>1</p>');
INSERT INTO `yunu_diy_product` VALUES ('2', '', '<p>1</p>', '<p>1</p>');
INSERT INTO `yunu_diy_product` VALUES ('3', '', '<p>1</p>', '<p>1</p>');
INSERT INTO `yunu_diy_product` VALUES ('4', '', '<p>1</p>', '<p>1</p>');
INSERT INTO `yunu_diy_product` VALUES ('5', '', '<p>1</p>', '<p>1</p>');
INSERT INTO `yunu_diy_product` VALUES ('6', '', '<p>1</p>', '<p>1</p>');
INSERT INTO `yunu_diy_product` VALUES ('7', '', '<p>1</p>', '<p>1</p>');
INSERT INTO `yunu_diy_product` VALUES ('8', '', '<p>1</p>', '<p>1</p>');
INSERT INTO `yunu_diy_product` VALUES ('9', '', '', '<p>FHB200-BG</p>');
INSERT INTO `yunu_diy_product` VALUES ('10', '', '', '<p>22-FHE-SB</p>');
INSERT INTO `yunu_diy_product` VALUES ('11', '', '', '<p>23EG</p>');
INSERT INTO `yunu_diy_product` VALUES ('12', '', '<p>23-SG</p>', '<p>23-SG</p>');
INSERT INTO `yunu_diy_product` VALUES ('13', '', '', '<p>TZ-02</p>');
INSERT INTO `yunu_diy_product` VALUES ('14', '', '', '<p>HZ-033</p>');
INSERT INTO `yunu_diy_product` VALUES ('15', '', '', '<p>HYU-036</p>');
INSERT INTO `yunu_diy_product` VALUES ('16', '', '', '<p>TYZ-89</p>');
INSERT INTO `yunu_diy_product` VALUES ('17', '', '', '<p>RE-01</p>');
INSERT INTO `yunu_diy_product` VALUES ('18', '', '', '<p>RE-016</p>');
INSERT INTO `yunu_diy_product` VALUES ('19', '', '', '<p>RE-063</p>');
INSERT INTO `yunu_diy_product` VALUES ('20', '', '', '<p>HUW-561</p>');
INSERT INTO `yunu_diy_product` VALUES ('21', '', '', '<p>YHU2000-HZ05</p>');
INSERT INTO `yunu_diy_product` VALUES ('22', '', '', '<p>YH2001-HE056</p>');
INSERT INTO `yunu_diy_product` VALUES ('23', '', '', '<p>HTFC500-630V</p>');
INSERT INTO `yunu_diy_product` VALUES ('24', '', '', '<p>HYUHF3020-T028</p>');
INSERT INTO `yunu_diy_product` VALUES ('25', '', '', '<p>BZ188-56C</p>');
INSERT INTO `yunu_diy_product` VALUES ('26', '', '', '<p>BZ188-076C</p>');
INSERT INTO `yunu_diy_product` VALUES ('27', '', '', '<p>YHVF50-K63</p>');
INSERT INTO `yunu_diy_product` VALUES ('28', '', '', '<p>HYTR-630K</p>');
INSERT INTO `yunu_diy_product` VALUES ('29', '', '', '<p>JIN-01</p>');
INSERT INTO `yunu_diy_product` VALUES ('30', '', '', '<p>JIN-02</p>');
INSERT INTO `yunu_diy_product` VALUES ('31', '', '', '<p>JIN-03</p>');
INSERT INTO `yunu_diy_product` VALUES ('32', '', '', '<p>JIN-04</p>');
INSERT INTO `yunu_diy_product` VALUES ('33', '', '', '<p>KIHG-01</p>');
INSERT INTO `yunu_diy_product` VALUES ('34', '', '', '<p>KIHG-02</p>');
INSERT INTO `yunu_diy_product` VALUES ('35', '', '', '<p>KIHG-03</p>');
INSERT INTO `yunu_diy_product` VALUES ('36', '', '', '<p>KIHG-04</p>');
INSERT INTO `yunu_diy_product` VALUES ('37', '', '', '<p>SMPO-01</p>');
INSERT INTO `yunu_diy_product` VALUES ('38', '', '', '<p>SMPO-02</p>');
INSERT INTO `yunu_diy_product` VALUES ('39', '', '', '<p>SMPO-03</p>');
INSERT INTO `yunu_diy_product` VALUES ('40', '', '', '<p>SMPO-04</p>');
INSERT INTO `yunu_diy_product` VALUES ('41', '', '', '<p>HKIJG200-01</p>');
INSERT INTO `yunu_diy_product` VALUES ('42', '', '', '<p>HKIJG200-02</p>');
INSERT INTO `yunu_diy_product` VALUES ('43', '', '', '<p>HKIJG200-03</p>');
INSERT INTO `yunu_diy_product` VALUES ('44', '', '', '<p>HKIJG200-04</p>');
INSERT INTO `yunu_diy_product` VALUES ('45', '', '', '<p>PHJIKG-01</p>');
INSERT INTO `yunu_diy_product` VALUES ('46', '', '', '<p>PHJIKG-02</p>');
INSERT INTO `yunu_diy_product` VALUES ('47', '', '', '<p>PHJIKG-03</p>');
INSERT INTO `yunu_diy_product` VALUES ('48', '', '', '<p>PHJIKG-04</p>');
INSERT INTO `yunu_diy_product` VALUES ('49', '', '', '<p>JGQD-01</p>');
INSERT INTO `yunu_diy_product` VALUES ('50', '', '', '<p>JGQD-02</p>');
INSERT INTO `yunu_diy_product` VALUES ('51', '', '', '<p>JGQD-03</p>');
INSERT INTO `yunu_diy_product` VALUES ('52', '', '', '<p>JGQD-04</p>');
INSERT INTO `yunu_diy_product` VALUES ('53', '', '', '<p>JkLHF300-01</p>');
INSERT INTO `yunu_diy_product` VALUES ('54', '', '', '<p>JkLHF300-02</p>');
INSERT INTO `yunu_diy_product` VALUES ('55', '', '', '<p>JkLHF300-03</p>');
INSERT INTO `yunu_diy_product` VALUES ('56', '', '', '<p>JkLHF300-04</p>');

-- ----------------------------
-- Table structure for yunu_link
-- ----------------------------
DROP TABLE IF EXISTS `yunu_link`;
CREATE TABLE `yunu_link` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL COMMENT '标题',
  `pic` varchar(200) DEFAULT NULL COMMENT '图片',
  `url` varchar(200) DEFAULT NULL COMMENT '链接',
  `sort` smallint(6) DEFAULT '0' COMMENT '排序',
  `type` tinyint(1) DEFAULT '1' COMMENT '类型 1首页 2内页 3其他',
  `area` varchar(500) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yunu_link
-- ----------------------------
INSERT INTO `yunu_link` VALUES ('5', '百度', '', 'http://www.baidu.com', '0', '1', ',,1,,');
INSERT INTO `yunu_link` VALUES ('6', 'YUNUCMS官网', '', 'http://www.yunucms.com', '0', '1', '');

-- ----------------------------
-- Table structure for yunu_log
-- ----------------------------
DROP TABLE IF EXISTS `yunu_log`;
CREATE TABLE `yunu_log` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_id` int(11) DEFAULT NULL COMMENT '用户ID',
  `admin_name` varchar(50) DEFAULT NULL COMMENT '用户姓名',
  `description` varchar(300) DEFAULT NULL COMMENT '描述',
  `ip` char(60) DEFAULT NULL COMMENT 'IP地址',
  `status` tinyint(1) DEFAULT NULL COMMENT '1 成功 2 失败',
  `add_time` int(11) DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`log_id`)
) ENGINE=MyISAM AUTO_INCREMENT=570 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yunu_log
-- ----------------------------
INSERT INTO `yunu_log` VALUES ('569', '1', 'admin', '用户【admin】登录成功', '127.0.0.1', '1', '1509071047');

-- ----------------------------
-- Table structure for yunu_sitelink
-- ----------------------------
DROP TABLE IF EXISTS `yunu_sitelink`;
CREATE TABLE `yunu_sitelink` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `num` tinyint(5) DEFAULT '0',
  `otype` varchar(10) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否启用',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yunu_sitelink
-- ----------------------------
INSERT INTO `yunu_sitelink` VALUES ('16', '百度', 'http://www.baidu.com', '10', '_blank', '1');
