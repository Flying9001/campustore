/**
  campustore test data
  date: 2018-03-05
*/

use campustore;
-- ----------------------------
-- Records of t_userinfo
-- ----------------------------
INSERT INTO `t_userinfo` VALUES ('1','魔术师','强老板No1','18666668888','徐闻强','afac@AVGd',now(),'1','大学路XXX号','1','男','24','复旦大学','金融学院','金融1班','FD1966686868','1511140821','dreamboy050','flying9001@gmail.com','','上海滩是我的');

-- ----------------------------
-- Records of t_category
-- ----------------------------
INSERT INTO `t_category` VALUES ('1', '休闲零食');
INSERT INTO `t_category` VALUES ('2', '糖果');
INSERT INTO `t_category` VALUES ('3', '糕点');
INSERT INTO `t_category` VALUES ('4', '饼干');
INSERT INTO `t_category` VALUES ('5', '保健食品');
INSERT INTO `t_category` VALUES ('6', '方便面');
INSERT INTO `t_category` VALUES ('7', '速食品');
INSERT INTO `t_category` VALUES ('8', '饮料');
INSERT INTO `t_category` VALUES ('9', '冲饮');
INSERT INTO `t_category` VALUES ('10', '酒类');
INSERT INTO `t_category` VALUES ('11', '奶制品');
INSERT INTO `t_category` VALUES ('12', '洗化卫浴');
INSERT INTO `t_category` VALUES ('13', '厨房调料');
INSERT INTO `t_category` VALUES ('14', '干货');
INSERT INTO `t_category` VALUES ('15', '腊味');
INSERT INTO `t_category` VALUES ('16', '米面粮油');


-- ----------------------------
-- Records of t_scategory
-- ----------------------------
INSERT INTO `t_scategory`( cid, scname) VALUES ( '1', '薯片');
INSERT INTO `t_scategory`( cid, scname) VALUES ( '1', '瓜子');
INSERT INTO `t_scategory`( cid, scname) VALUES ( '1', '坚果');
INSERT INTO `t_scategory`( cid, scname) VALUES ( '1', '干果');
INSERT INTO `t_scategory`( cid, scname) VALUES ( '1', '膨化食品');
INSERT INTO `t_scategory`( cid, scname) VALUES ( '1', '熟食');
INSERT INTO `t_scategory`( cid, scname) VALUES ( '1', '果冻');
INSERT INTO `t_scategory`( cid, scname) VALUES ( '1', '辣条');
INSERT INTO `t_scategory`( cid, scname) VALUES ( '2', '糖');
INSERT INTO `t_scategory`( cid, scname) VALUES ( '2', '巧克力');
INSERT INTO `t_scategory`( cid, scname) VALUES ( '2', '口香糖');
INSERT INTO `t_scategory`( cid, scname) VALUES ( '2', '润喉糖');
INSERT INTO `t_scategory`( cid, scname) VALUES ( '3', '萨琪玛');
INSERT INTO `t_scategory`( cid, scname) VALUES ( '3', '麻花');
INSERT INTO `t_scategory`( cid, scname) VALUES ( '3', '面包');
INSERT INTO `t_scategory`( cid, scname) VALUES ( '3', '饼子');
INSERT INTO `t_scategory`( cid, scname) VALUES ( '3', '蛋卷');
INSERT INTO `t_scategory`( cid, scname) VALUES ( '3', '锅巴');
INSERT INTO `t_scategory`( cid, scname) VALUES ( '3', '粽子');
INSERT INTO `t_scategory`( cid, scname) VALUES ( '4', '苏打饼干');
INSERT INTO `t_scategory`( cid, scname) VALUES ( '4', '曲奇饼干');
INSERT INTO `t_scategory`( cid, scname) VALUES ( '4', '威化饼干');
INSERT INTO `t_scategory`( cid, scname) VALUES ( '4', '夹心饼干');
INSERT INTO `t_scategory`( cid, scname) VALUES ( '4', '消化饼干');
INSERT INTO `t_scategory`( cid, scname) VALUES ( '4', '甜味饼干');
INSERT INTO `t_scategory`( cid, scname) VALUES ( '4', '咸味饼干');
INSERT INTO `t_scategory`( cid, scname) VALUES ( '5', '麦片类');
INSERT INTO `t_scategory`( cid, scname) VALUES ( '5', '芝麻糊');
INSERT INTO `t_scategory`( cid, scname) VALUES ( '5', '豆奶粉类');
INSERT INTO `t_scategory`( cid, scname) VALUES ( '5', '粥类');
INSERT INTO `t_scategory`( cid, scname) VALUES ( '5', '蜂蜜');
INSERT INTO `t_scategory`( cid, scname) VALUES ( '5', '营养品类');
INSERT INTO `t_scategory`( cid, scname) VALUES ( '6', '杯面');
INSERT INTO `t_scategory`( cid, scname) VALUES ( '6', '袋装面');
INSERT INTO `t_scategory`( cid, scname) VALUES ( '6', '桶装面');
INSERT INTO `t_scategory`( cid, scname) VALUES ( '6', '炒面');
INSERT INTO `t_scategory`( cid, scname) VALUES ( '6', '米粉类');
INSERT INTO `t_scategory`( cid, scname) VALUES ( '7', '粥类罐头');
INSERT INTO `t_scategory`( cid, scname) VALUES ( '7', '蘑菇罐头');
INSERT INTO `t_scategory`( cid, scname) VALUES ( '7', '肉类罐头');
INSERT INTO `t_scategory`( cid, scname) VALUES ( '7', '水产罐头');
INSERT INTO `t_scategory`( cid, scname) VALUES ( '7', '水果罐头');
INSERT INTO `t_scategory`( cid, scname) VALUES ( '8', '饮用水');
INSERT INTO `t_scategory`( cid, scname) VALUES ( '8', '碳酸饮料');
INSERT INTO `t_scategory`( cid, scname) VALUES ( '8', '运动饮料');
INSERT INTO `t_scategory`( cid, scname) VALUES ( '8', '茶饮料');
INSERT INTO `t_scategory`( cid, scname) VALUES ( '8', '果汁饮料');
INSERT INTO `t_scategory`( cid, scname) VALUES ( '8', '醋饮料');
INSERT INTO `t_scategory`( cid, scname) VALUES ( '8', '咖啡饮料');
INSERT INTO `t_scategory`( cid, scname) VALUES ( '8', '牛奶饮料');
INSERT INTO `t_scategory`( cid, scname) VALUES ( '8', '其他饮料');
INSERT INTO `t_scategory`( cid, scname) VALUES ( '9', '茶叶');
INSERT INTO `t_scategory`( cid, scname) VALUES ( '9', '茶包');
INSERT INTO `t_scategory`( cid, scname) VALUES ( '9', '奶茶');
INSERT INTO `t_scategory`( cid, scname) VALUES ( '9', '咖啡');
INSERT INTO `t_scategory`( cid, scname) VALUES ( '9', '其他冲剂');
INSERT INTO `t_scategory`( cid, scname) VALUES ( '10', '啤酒');
INSERT INTO `t_scategory`( cid, scname) VALUES ( '10', '葡萄酒');
INSERT INTO `t_scategory`( cid, scname) VALUES ( '10', '白酒');
INSERT INTO `t_scategory`( cid, scname) VALUES ( '10', '洋酒');
INSERT INTO `t_scategory`( cid, scname) VALUES ( '10', '滋补养身酒');
INSERT INTO `t_scategory`( cid, scname) VALUES ( '10', '鸡尾酒');
INSERT INTO `t_scategory`( cid, scname) VALUES ( '11', '液态奶');
INSERT INTO `t_scategory`( cid, scname) VALUES ( '11', '酸奶');
INSERT INTO `t_scategory`( cid, scname) VALUES ( '11', '奶粉');
INSERT INTO `t_scategory`( cid, scname) VALUES ( '11', '炼奶/奶油');
INSERT INTO `t_scategory`( cid, scname) VALUES ( '12', '纸巾类');
INSERT INTO `t_scategory`( cid, scname) VALUES ( '12', '厨房用具');
INSERT INTO `t_scategory`( cid, scname) VALUES ( '12', '灭蚊杀虫');
INSERT INTO `t_scategory`( cid, scname) VALUES ( '12', '避孕套');
INSERT INTO `t_scategory`( cid, scname) VALUES ( '12', '床上用品');
INSERT INTO `t_scategory`( cid, scname) VALUES ( '12', '针织品');
INSERT INTO `t_scategory`( cid, scname) VALUES ( '12', '卫生巾');
INSERT INTO `t_scategory`( cid, scname) VALUES ( '12', '日杂用品');
INSERT INTO `t_scategory`( cid, scname) VALUES ( '12', '护肤美容');
INSERT INTO `t_scategory`( cid, scname) VALUES ( '12', '洗发水');
INSERT INTO `t_scategory`( cid, scname) VALUES ( '12', '沐浴露');
INSERT INTO `t_scategory`( cid, scname) VALUES ( '12', '香皂爽身粉');
INSERT INTO `t_scategory`( cid, scname) VALUES ( '12', '洗衣粉');
INSERT INTO `t_scategory`( cid, scname) VALUES ( '12', '洗洁精清洁剂');
INSERT INTO `t_scategory`( cid, scname) VALUES ( '12', '牙膏牙具');
INSERT INTO `t_scategory`( cid, scname) VALUES ( '12', '毛巾浴巾');
INSERT INTO `t_scategory`( cid, scname) VALUES ( '12', '沐浴球');
INSERT INTO `t_scategory`( cid, scname) VALUES ( '12', '其他日化用品');
INSERT INTO `t_scategory`( cid, scname) VALUES ( '13', '酱油');
INSERT INTO `t_scategory`( cid, scname) VALUES ( '13', '糖/醋/盐');
INSERT INTO `t_scategory`( cid, scname) VALUES ( '13', '味精');
INSERT INTO `t_scategory`( cid, scname) VALUES ( '13', '调味粉');
INSERT INTO `t_scategory`( cid, scname) VALUES ( '13', '调味酱');
INSERT INTO `t_scategory`( cid, scname) VALUES ( '13', '调味料');
INSERT INTO `t_scategory`( cid, scname) VALUES ( '13', '火锅料');
INSERT INTO `t_scategory`( cid, scname) VALUES ( '13', '其他调味品');
INSERT INTO `t_scategory`( cid, scname) VALUES ( '14', '果脯类');
INSERT INTO `t_scategory`( cid, scname) VALUES ( '14', '菌菇类');
INSERT INTO `t_scategory`( cid, scname) VALUES ( '14', '海产类');
INSERT INTO `t_scategory`( cid, scname) VALUES ( '14', '药膳类');
INSERT INTO `t_scategory`( cid, scname) VALUES ( '14', '调料类');
INSERT INTO `t_scategory`( cid, scname) VALUES ( '15', '腊肠');
INSERT INTO `t_scategory`( cid, scname) VALUES ( '15', '腊肉');
INSERT INTO `t_scategory`( cid, scname) VALUES ( '16', '散装米');
INSERT INTO `t_scategory`( cid, scname) VALUES ( '16', '袋装米');
INSERT INTO `t_scategory`( cid, scname) VALUES ( '16', '散装面');
INSERT INTO `t_scategory`( cid, scname) VALUES ( '16', '袋装面');
INSERT INTO `t_scategory`( cid, scname) VALUES ( '16', '挂面');
INSERT INTO `t_scategory`( cid, scname) VALUES ( '16', '粉类');
INSERT INTO `t_scategory`( cid, scname) VALUES ( '16', '食用油');
INSERT INTO `t_scategory`( cid, scname) VALUES ( '16', '其他生食');


-- ----------------------------
-- Records of t_store
-- ----------------------------
INSERT INTO `t_store` VALUES ( '1','卧龙超市', '学院淡泊路', null, null, '1', '强老板', '1888888888', '420683199909099999', 'flying9001@gmail.com', '卧龙超市@001', 'wfacgh@GX&1462', '18888888888', now(), '强老板开店，物美价廉，质量保证，欢迎大家过来光顾！');
INSERT INTO `t_store` VALUES ( '2','凤雏超市', '学院明志路', null, null, '1', 'Lucien Jhonson', '18666666666', '420683199606066666', 'rede.lu.5945@gmail.com', '凤雏超市NO1', '102@mvw', '18666666666', now(), 'On sale! Welcome!');


-- ----------------------------
-- Records of t_commodity
-- ----------------------------
INSERT INTO `t_commodity` VALUES ('1', '1', '1', '1', '乐事薯片', '3.500', '4.500', '150', '1', '1', '暂无图片', null, null, '102', '乐事薯片，小包装，好吃便宜', '乐事', '上海');
INSERT INTO `t_commodity` VALUES ('2', '1', '2', '1', '香飘飘瓜子', '1.300', '2.000', '120', '1', '1', '暂无图片', null, null, '67', '香飘飘瓜子，好吃香飘飘', '香飘飘', '浙江湖州');
INSERT INTO `t_commodity` VALUES ('3', '1', '3', '1', '良品铺子坚果', '5.600', '8.500', '250', '1', '1', '暂无图片', null, null, '187', '良品铺子·坚果，就是这么好吃，', '良品铺子', '湖北·武汉');
INSERT INTO `t_commodity` VALUES ('4', '1', '4', '1', '开心果', '8.800', '12.500', '60', '1', '1', '暂无图片', null, null, '32', '开心果，一种吃起来让你开心的干果！', '良品铺子', '湖北·武汉');
INSERT INTO `t_commodity` VALUES ('5', '1', '5', '1', '薯条', '0.800', '1.500', '350', '1', '1', '暂无图片', null, null, '287', '薯条，零食必备！', '良品铺子', '湖北·武汉');
INSERT INTO `t_commodity` VALUES ('6', '1', '6', '1', '鸡腿', '0.900', '1.500', '400', '1', '1', '暂无图片', null, null, '230', '卤鸡腿，香味十足', '辣尚品', '湖南·长沙');
INSERT INTO `t_commodity` VALUES ('7', '1', '7', '1', '喜之郎', '3.600', '5.000', '180', '1', '1', '暂无图片', null, null, '130', '果冻，就选喜之郎', '喜之郎', '广东·阳江');
INSERT INTO `t_commodity` VALUES ('8', '1', '8', '1', '卫龙辣条', '1.200', '2.000', '550', '1', '1', '暂无图片', null, null, '420', '卫龙辣条，健康美味，休闲必备', '漯河市平平食品', '河南·漯河');
INSERT INTO `t_commodity` VALUES ('9', '2', '9', '1', '阿尔卑斯棒棒糖', '0.200', '0.500', '400', '1', '1', '暂无图片', null, null, '240', '阿尔卑斯，让心更近', '不凡帝范梅勒糖果(中国)', '上海');
INSERT INTO `t_commodity` VALUES ('10', '2', '10', '1', '德芙巧克力', '15.000', '20.000', '150', '1', '1', '暂无图片', null, null, '88', '德芙，纵享丝滑', '玛氏食品(中国)', '北京');
INSERT INTO `t_commodity` VALUES ('11', '2', '11', '1', '绿箭口香糖', '1.200', '2.000', '200', '1', '1', '暂无图片', null, null, '98', '绿箭口香糖，清新一片', '绿箭糖果(中国)', '广东·广州');
INSERT INTO `t_commodity` VALUES ('12', '2', '12', '1', '润喉糖', '1.100', '2.000', '100', '1', '1', '暂无图片', null, null, '58', '京都枇杷糖，清爽润喉', '念慈菴', '泰国');
INSERT INTO `t_commodity` VALUES ('13', '3', '13', '1', '老香斋萨琪玛', '3.500', '5.000', '300', '1', '1', '暂无图片', null, null, '188', '老香斋萨琪玛，一口香', '老香斋', '上海');
INSERT INTO `t_commodity` VALUES ('14', '3', '14', '1', '稻香村麻花', '0.900', '1.500', '250', '1', '1', '暂无图片', null, null, '168', '稻香村麻花，北京特产', '稻香村', '北京');
INSERT INTO `t_commodity` VALUES ('15', '3', '15', '1', '达利园小面包', '3.700', '5.000', '200', '1', '1', '暂无图片', null, null, '140', '达利食品，用心创品质', '达利园', '浙江·杭州');
INSERT INTO `t_commodity` VALUES ('16', '3', '16', '1', '合肥大麻饼', '1.400', '2.500', '350', '1', '1', '暂无图片', null, null, '265', '正宗安徽糕点心合肥汤麻饼子四大名点', '华瑜', '安徽·黄山');
INSERT INTO `t_commodity` VALUES ('17', '3', '17', '1', '丽芝士蛋卷', '3.000', '5.500', '350', '1', '1', '暂无图片', null, null, '250', '丽芝士蛋卷，进口美味', 'Richeese/丽芝士', '印尼');
INSERT INTO `t_commodity` VALUES ('18', '3', '18', '1', '小米锅巴', '1.000', '1.500', '350', '1', '1', '暂无图片', null, null, '350', '浓浓的小米香，酥脆可口', '慕滋', '湖北·武汉');
INSERT INTO `t_commodity` VALUES ('19', '3', '19', '1', '五芳斋粽子', '1.600', '2.500', '100', '1', '1', '暂无图片', null, null, '72', '五芳斋粽子，无肉不欢', '五芳斋', '浙江·嘉兴');
INSERT INTO `t_commodity` VALUES ('20', '4', '20', '1', '三牛苏打饼干', '1.600', '2.500', '250', '1', '1', '暂无图片', null, null, '186', '三牛苏打饼干，度假休闲小食品', '三牛', '上海');
INSERT INTO `t_commodity` VALUES ('21', '4', '21', '1', '蔓越梅曲奇饼干', '3.600', '5.000', '300', '1', '1', '暂无图片', null, null, '210', '蔓越梅曲奇饼干,手工烘焙，甜香酥脆', '佰味葫芦', '安徽·芜湖');
INSERT INTO `t_commodity` VALUES ('22', '4', '22', '1', '丽芝士威化饼干', '3.400', '5.000', '350', '1', '1', '暂无图片', null, null, '250', '丽芝士饼干，进口美味', 'Richeese/丽芝士', '印尼');
INSERT INTO `t_commodity` VALUES ('23', '4', '23', '1', '丽芝士夹心饼干', '3.200', '5.000', '320', '1', '1', '暂无图片', null, null, '258', '丽芝士饼干，进口美味', 'Richeese/丽芝士', '印尼');
INSERT INTO `t_commodity` VALUES ('24', '4', '24', '1', '丽芝士消化饼干', '3.100', '5.000', '300', '1', '1', '暂无图片', null, null, '201', '丽芝士饼干，进口美味', 'Richeese/丽芝士', '印尼');
INSERT INTO `t_commodity` VALUES ('25', '4', '25', '1', '南国甜味饼干', '2.500', '4.000', '250', '1', '1', '暂无图片', null, null, '156', '南国饼干，海南特产', '南国', '海南·海口');
INSERT INTO `t_commodity` VALUES ('26', '4', '26', '1', '良品铺子咸味饼干', '2.900', '4.500', '340', '1', '1', '暂无图片', null, null, '179', '良品铺子，让嘴巴去旅行', '良品铺子', '湖北·武汉');
INSERT INTO `t_commodity` VALUES ('27', '5', '27', '1', '澳洲纯麦片', '18.300', '25.000', '100', '1', '1', '暂无图片', null, null, '38', '燕麦片，源自澳洲燕麦！', 'Zhongde/众德食品', '浙江·金华');
INSERT INTO `t_commodity` VALUES ('28', '5', '28', '1', '南方黑芝麻糊', '15.300', '20.000', '80', '1', '1', '暂无图片', null, null, '28', '南方黑芝麻，黑营养！', ' NANFANG BLACK SESAME/南方黑芝麻', '广西·玉林');
INSERT INTO `t_commodity` VALUES ('29', '5', '29', '1', '维维豆奶', '12.300', '18.000', '100', '1', '1', '暂无图片', null, null, '36', '维维豆奶，欢乐开怀！', '维维集团', '浙江·杭州');
INSERT INTO `t_commodity` VALUES ('30', '5', '30', '1', '银鹭八宝粥', '0.800', '1.800', '180', '1', '1', '暂无图片', null, null, '128', '银鹭，爱的味道！', '银鹭集团', '湖北·武汉');
INSERT INTO `t_commodity` VALUES ('31', '5', '31', '1', '大兴安岭蜂蜜', '48.000', '68.000', '50', '1', '1', '暂无图片', null, null, '18', '蜂巢蜂蜜，纯天然农家自产！', '端木赐', '山东·潍坊');
INSERT INTO `t_commodity` VALUES ('32', '5', '32', '1', '脑白金', '200.000', '258.000', '50', '1', '1', '暂无图片', null, null, '8', '脑白金，年轻态，健康品！', '脑白金', '江苏·无锡');
INSERT INTO `t_commodity` VALUES ('33', '6', '33', '1', '康师傅汤大师杯面', '3.800', '4.800', '300', '1', '1', '暂无图片', null, null, '228', '汤浓醇，大师范！', '康师傅', '浙江·杭州');
INSERT INTO `t_commodity` VALUES ('34', '6', '34', '1', '康师傅红烧牛肉面', '2.300', '3.400', '300', '1', '1', '暂无图片', null, null, '238', '康师傅红烧牛肉面，就是这个味！', '康师傅', '浙江·杭州');
INSERT INTO `t_commodity` VALUES ('35', '6', '35', '1', '统一老坛酸菜牛肉面', '2.400', '3.500', '300', '1', '1', '暂无图片', null, null, '218', '这酸爽，不敢相信！', '统一', '北京');
INSERT INTO `t_commodity` VALUES ('36', '6', '36', '1', '统一炒面', '1.800', '2.500', '300', '1', '1', '暂无图片', null, null, '222', '统一炒面，味道就是好！', '统一', '北京');
INSERT INTO `t_commodity` VALUES ('37', '6', '37', '1', '康师傅细粉', '1.200', '2.000', '300', '1', '1', '暂无图片', null, null, '201', '康师傅细粉，好吃！', '康师傅', '浙江·杭州');
INSERT INTO `t_commodity` VALUES ('38', '7', '38', '1', '哇哈哈八宝粥', '1.400', '2.500', '300', '1', '1', '暂无图片', null, null, '222', '哇哈哈桂圆莲子八宝粥！', '哇哈哈', '浙江·杭州');
INSERT INTO `t_commodity` VALUES ('39', '7', '39', '1', '古龙蘑菇罐头', '7.200', '10.500', '100', '1', '1', '暂无图片', null, null, '46', '古龙蘑菇，整菇，优级', '古龙', '福建·厦门');
INSERT INTO `t_commodity` VALUES ('40', '7', '40', '1', '梅林肉罐头', '60.200', '72.500', '100', '1', '1', '暂无图片', null, null, '22', '梅林午餐肉罐头', 'MALING/梅林', '上海');
INSERT INTO `t_commodity` VALUES ('41', '7', '41', '1', '金枪鱼罐头', '38.200', '59.500', '50', '1', '1', '暂无图片', null, null, '13', '菲律宾进口金枪鱼罐头', 'SAN MARINO/圣马利奥', '菲律宾');
INSERT INTO `t_commodity` VALUES ('42', '7', '42', '1', '橘子罐头', '2.200', '4.000', '50', '1', '1', '暂无图片', null, null, '14', '欢乐糖水橘子罐头', '欢乐家', '湖北·宜昌');
INSERT INTO `t_commodity` VALUES ('43', '8', '43', '1', '农夫山泉', '0.900', '2.000', '250', '1', '1', '暂无图片', null, null, '180', '我们不生产水，我们只是大自然的搬运工！', '农夫山泉', '陕西·太白山');
INSERT INTO `t_commodity` VALUES ('44', '8', '44', '1', '可口可乐', '1.900', '3.000', '240', '1', '1', '暂无图片', null, null, '200', '可口可乐！', 'Coca－Cola/可口可乐', '上海');
INSERT INTO `t_commodity` VALUES ('45', '8', '45', '1', '红牛', '2.900', '4.000', '150', '1', '1', '暂无图片', null, null, '90', '红牛，维生素功能饮料！', 'RedBull/红牛', '浙江·宁波');
INSERT INTO `t_commodity` VALUES ('46', '8', '46', '1', '康师傅茉莉花茶', '1.400', '2.500', '200', '1', '1', '暂无图片', null, null, '120', '康师傅茉莉花茶！', '康师傅', '湖北·武汉');
INSERT INTO `t_commodity` VALUES ('47', '8', '47', '1', '汇源果汁', '2.100', '3.300', '180', '1', '1', '暂无图片', null, null, '90', '汇源 100%果汁', '汇源', '北京');
INSERT INTO `t_commodity` VALUES ('48', '8', '48', '1', '苹果醋', '0.900', '2.000', '150', '1', '1', '暂无图片', null, null, '50', '苹果醋', 'Coca－Cola/可口可乐', '上海');
INSERT INTO `t_commodity` VALUES ('49', '8', '49', '1', '炭烧拿铁咖啡', '2.900', '4.500', '150', '1', '1', '暂无图片', null, null, '50', '原味炭烧白咖啡', 'Super/超级', '马来西亚');
INSERT INTO `t_commodity` VALUES ('50', '8', '50', '1', '伊利QQ星', '1.700', '2.500', '160', '1', '1', '暂无图片', null, null, '67', '伊利QQ星！', '伊利', '新疆·伊利');
INSERT INTO `t_commodity` VALUES ('51', '8', '51', '1', '脉动', '2.200', '3.500', '200', '1', '1', '暂无图片', null, null, '156', '脉动回来', 'MIZONE/脉动', '广东·中山');
INSERT INTO `t_commodity` VALUES ('52', '9', '52', '1', '铁观音', '65.000', '88.000', '30', '1', '1', '暂无图片', null, null, '5', '铁观音特级秋茶、乌龙茶', 'XC/仙醇', '福建·泉州');
INSERT INTO `t_commodity` VALUES ('53', '9', '53', '1', '黄牌精选红茶', '23.000', '35.000', '20', '1', '1', '暂无图片', null, null, '4', '立顿承诺，纯正好茶！', 'Lipton/立顿', '安徽·合肥');
INSERT INTO `t_commodity` VALUES ('54', '9', '54', '1', '香约奶茶', '1.200', '2.500', '50', '1', '1', '暂无图片', null, null, '26', '香约奶茶', '香约', '浙江·温州');
INSERT INTO `t_commodity` VALUES ('55', '9', '55', '1', '拿铁咖啡', '0.700', '1.500', '90', '1', '1', '暂无图片', null, null, '46', '雀巢拿铁', 'Nestle/雀巢', '湖北·武汉');
INSERT INTO `t_commodity` VALUES ('56', '9', '56', '1', '红糖', '1.300', '2.500', '25', '1', '1', '暂无图片', null, null, '8', '古方红糖', '古方', '贵州·黔西南布依族苗族自治州');
INSERT INTO `t_commodity` VALUES ('57', '10', '57', '1', '雪花啤酒', '1.200', '2.800', '250', '1', '1', '暂无图片', null, null, '149', '雪花，勇闯天涯', '雪花', '北京');
INSERT INTO `t_commodity` VALUES ('58', '10', '58', '1', '长城葡萄酒', '19.200', '28.800', '40', '1', '1', '暂无图片', null, null, '9', '长城干红葡萄酒', '中国长城葡萄酒公司', '北京');
INSERT INTO `t_commodity` VALUES ('59', '10', '59', '1', '牛栏山', '2.200', '3.800', '20', '1', '1', '暂无图片', null, null, '5', '百年牛栏山二锅头精选', '牛栏山', '北京');
INSERT INTO `t_commodity` VALUES ('60', '10', '60', '1', '威士忌', '190.200', '278.800', '10', '1', '1', '暂无图片', null, null, '1', '华芝士12年威士忌', 'Chivas/芝华士', '英国');
INSERT INTO `t_commodity` VALUES ('61', '10', '51', '1', '中国劲酒', '5.200', '8.800', '25', '1', '1', '暂无图片', null, null, '5', '劲酒虽好，可不要贪杯哦！', '劲', '湖北·黄石');
INSERT INTO `t_commodity` VALUES ('62', '10', '62', '1', 'RIO', '3.200', '6.800', '80', '1', '1', '暂无图片', null, null, '37', 'RIO，人人都是调酒师！', 'RIO丨LINE FRIENDS', '上海');
INSERT INTO `t_commodity` VALUES ('63', '11', '63', '1', '蒙牛纯牛奶', '1.800', '3.000', '200', '1', '1', '暂无图片', null, null, '80', '蒙牛纯牛奶，每天一斤奶，强健中国人！', '蒙牛', '内蒙古·呼和浩特');
INSERT INTO `t_commodity` VALUES ('64', '11', '64', '1', '光明莫斯利安酸奶', '2.800', '5.000', '120', '1', '1', '暂无图片', null, null, '48', '莫斯利安原产益生菌发酵！', 'MOMCHILOVTSI/莫斯利安', '上海');
INSERT INTO `t_commodity` VALUES ('65', '11', '65', '1', '伊利奶粉', '20.300', '33.000', '40', '1', '1', '暂无图片', null, null, '12', '伊利，奥运品质！', '伊利', '内蒙古·呼和浩特');
INSERT INTO `t_commodity` VALUES ('66', '11', '66', '1', '奶油', '5.800', '8.800', '50', '1', '1', '暂无图片', null, null, '23', '雀巢淡奶油！', 'Nestle/雀巢', '山东·青岛');
INSERT INTO `t_commodity` VALUES ('67', '12', '67', '1', '清风纸巾', '1.800', '2.800', '180', '1', '1', '暂无图片', null, null, '98', '清风原木纯品！', '清风', '湖北·武汉');
INSERT INTO `t_commodity` VALUES ('68', '12', '68', '1', '瓷碗', '0.200', '0.800', '70', '1', '1', '暂无图片', null, null, '8', '景德镇日式下彩陶瓷！', '茗轩茶舍', '景德镇市');
INSERT INTO `t_commodity` VALUES ('69', '12', '69', '1', '泰安康杀虫剂', '6.800', '9.800', '20', '1', '1', '暂无图片', null, null, '2', '泰安康杀虫剂，强力型，一年无蟑！', '泰安康', '广东·广州');
INSERT INTO `t_commodity` VALUES ('70', '12', '70', '1', '杜蕾斯', '11.800', '26.800', '200', '1', '1', '暂无图片', null, null, '120', '杜蕾斯，安全的爱！', 'Durex/杜蕾斯', '青岛');
INSERT INTO `t_commodity` VALUES ('71', '12', '71', '1', '床单', '21.800', '42.800', '15', '1', '1', '暂无图片', null, null, '1', '学生床单1.2/1.5/1.8！', '时妃', '江苏·南通');
INSERT INTO `t_commodity` VALUES ('72', '12', '72', '1', '围巾', '6.800', '12.800', '50', '1', '1', '暂无图片', null, null, '9', 'IA围巾，为你挡住冬天的寒冷！', ' Ia zephire', '浙江·金华');
INSERT INTO `t_commodity` VALUES ('73', '12', '73', '1', '苏菲卫生巾', '10.800', '16.800', '180', '1', '1', '暂无图片', null, null, '97', '超熟睡420mm！', '苏菲', '上海青浦区');
INSERT INTO `t_commodity` VALUES ('74', '12', '74', '1', '公牛安全插座', '29.000', '40.000', '60', '1', '1', '暂无图片', null, null, '8', '公牛安全插座！', '公牛', '上海');
INSERT INTO `t_commodity` VALUES ('75', '13', '75', '1', '大宝SOD', '8.300', '12.800', '20', '1', '1', '暂无图片', null, null, '2', '大宝保水补湿SOD蜜，让你的冬天不再干燥！', '大宝', '上海');
INSERT INTO `t_commodity` VALUES ('76', '13', '76', '1', '海飞丝去屑洗发水', '18.800', '25.800', '40', '1', '1', '暂无图片', null, null, '9', '海飞丝去屑洗发水！', '海飞丝', '中国大陆');
INSERT INTO `t_commodity` VALUES ('77', '13', '77', '1', '力士幽莲魅肤沐浴乳', '18.300', '24.800', '30', '1', '1', '暂无图片', null, null, '7', '力士精油香氛沐浴乳，奢选香氛，持久迷醉！', '力士', '中国大陆');
INSERT INTO `t_commodity` VALUES ('78', '13', '78', '1', '舒肤佳香皂', '2.300', '3.800', '50', '1', '1', '暂无图片', null, null, '12', '舒肤佳，呵护全家！', 'safeguard/舒肤佳', '中国大陆');
INSERT INTO `t_commodity` VALUES ('79', '13', '79', '1', '雕牌洗衣粉', '2.300', '4.800', '40', '1', '1', '暂无图片', null, null, '15', '雕牌洗衣粉，去渍出众！', '雕牌', '中国大陆');
INSERT INTO `t_commodity` VALUES ('80', '13', '80', '1', '立白洗衣液', '23.300', '29.800', '30', '1', '1', '暂无图片', null, null, '7', '立白洗衣液，不伤手！', '立白', '中国大陆');
INSERT INTO `t_commodity` VALUES ('81', '13', '81', '1', '黑人牙膏', '8.300', '12.600', '45', '1', '1', '暂无图片', null, null, '20', '黑人牙膏！', 'DARLIE/黑人', '中国大陆');
INSERT INTO `t_commodity` VALUES ('82', '13', '82', '1', '金号毛巾', '6.300', '8.800', '30', '1', '1', '暂无图片', null, null, '5', '金号毛巾，加厚全棉！', ' KING SHORE/金号', '山东·聊城');
INSERT INTO `t_commodity` VALUES ('83', '13', '83', '1', '素良生活沐浴球', '3.300', '6.800', '30', '1', '1', '暂无图片', null, null, '4', '素良生活柔软沐浴球！', '素良生活', '浙江·温州');
INSERT INTO `t_commodity` VALUES ('84', '13', '84', '1', '吉列剃须刀', '10.300', '17.800', '20', '1', '1', '暂无图片', null, null, '3', '吉列剃须刀！', 'Gillette/吉列', '上海');
INSERT INTO `t_commodity` VALUES ('85', '14', '85', '1', '海天酱油', '10.300', '15.800', '20', '1', '1', '暂无图片', null, null, '3', '海天酱油，晒足180天！', 'HADAY/海天', '广东·佛山');
INSERT INTO `t_commodity` VALUES ('86', '14', '86', '1', '米醋', '3.300', '5.800', '20', '1', '1', '暂无图片', null, null, '2', '海天酿造米醋！', 'HADAY/海天', '广东·佛山');
INSERT INTO `t_commodity` VALUES ('87', '14', '87', '1', '梅花味精', '2.300', '4.800', '20', '1', '1', '暂无图片', null, null, '4', '梅花味精，美味十足！', '梅花味精', '内蒙古·呼和浩特');
INSERT INTO `t_commodity` VALUES ('88', '14', '88', '1', '南德', '2.300', '3.800', '20', '1', '1', '暂无图片', null, null, '3', '南德调味料，麻辣珍味！', '南街村', '河南·漯河');
INSERT INTO `t_commodity` VALUES ('89', '14', '89', '1', '老干妈辣椒酱', '4.300', '6.800', '20', '1', '1', '暂无图片', null, null, '2', '老干妈辣椒酱，风味豆豉，油制辣椒！', '陶华碧老干妈', '贵州·贵阳');
INSERT INTO `t_commodity` VALUES ('90', '14', '90', '1', '花椒粉', '2.300', '4.800', '20', '1', '1', '暂无图片', null, null, '3', '翠宏花椒粉！', '翠宏', '四川·德阳');
INSERT INTO `t_commodity` VALUES ('91', '14', '91', '1', '重庆火锅料', '11.300', '16.800', '20', '1', '1', '暂无图片', null, null, '1', '正宗重庆特产桥头火锅底料！', '桥头', '重庆');
INSERT INTO `t_commodity` VALUES ('92', '14', '92', '1', '八角', '4.300', '8.800', '15', '1', '1', '暂无图片', null, null, '2', '俊洋 味好美好美八角！', '味好美', '上海');
INSERT INTO `t_commodity` VALUES ('93', '15', '93', '1', '三只松鼠葡萄干', '6.300', '13.800', '100', '1', '1', '暂无图片', null, null, '62', '三只松鼠，自然新疆味，松鼠亲赴新疆为你采摘！', 'Three Squirrels/三只松鼠', '新疆维吾尔自治区');
INSERT INTO `t_commodity` VALUES ('94', '15', '94', '1', '小香菇干', '12.300', '19.800', '15', '1', '1', '暂无图片', null, null, '3', '老阿嬷 即食香菇脆果蔬脆片健康零食香菇干酥脆蔬菜干90g！', '老阿嬷', '福建·漳州');
INSERT INTO `t_commodity` VALUES ('95', '15', '95', '1', '带鱼干', '8.200', '14.900', '25', '1', '1', '暂无图片', null, null, '6', '吃货说温州特产 咸带鱼干 东海带鱼干 舟山海鲜水产干货 咸鱼干货250g！', '铭元', '浙江·温州');
INSERT INTO `t_commodity` VALUES ('96', '15', '96', '1', '麦冬', '21.200', '29.500', '15', '1', '1', '暂无图片', null, null, '1', '神农金康麦冬四川绵阳天然无硫野生食用新鲜茶特级麦门冬220g', '神农金康', '四川·绵阳');
INSERT INTO `t_commodity` VALUES ('97', '15', '97', '1', '卤料干货', '4.500', '7.600', '15', '1', '1', '暂无图片', null, null, '2', '小乔干货 卤料 炖肉卤肉料卤水烧排骨香料调料大全150g！', '小乔干货', '山东·潍坊');
INSERT INTO `t_commodity` VALUES ('98', '16', '98', '1', '得福腊肠', '19.300', '14.600', '10', '1', '1', '暂无图片', null, null, '1', '大利是福腊味 得福广式腊肠腊肉广味农家香肠250g*2包广东土特产', '大利是福', '广东·中山');
INSERT INTO `t_commodity` VALUES ('99', '16', '99', '1', '杨大爷腊肉', '22.500', '33.600', '7', '1', '1', '暂无图片', null, null, '2', '杨大爷五花腊肉500g四川美食特产腊肉农家自制烟熏咸肉柴火腊肉', '杨大爷', '四川·成都');
INSERT INTO `t_commodity` VALUES ('100', '16', '100', '2', '散装米250g', '0.700', '1.800', '30', '1', '1', '暂无图片', null, null, '5', '黑大米 新米 稻花香米 农家自产 黑米杂粮 散装250g养生米', '农家自产', '山东·济宁');
INSERT INTO `t_commodity` VALUES ('101', '16', '101', '2', '东北大米5kg', '18.600', '29.500', '5', '1', '1', '暂无图片', null, null, '1', '五丰寒地东北大米5kg', '五丰', '上海');
INSERT INTO `t_commodity` VALUES ('102', '16', '102', '2', '散装面500g', '2.500', '4.600', '8', '1', '1', '暂无图片', null, null, '2', '新良蛋糕粉 低筋小麦面粉 低粉 蛋糕饼干原料 500g', '新良', '河南·新乡');
INSERT INTO `t_commodity` VALUES ('103', '16', '103', '2', '金沙河面粉5kg', '16.900', '27.600', '5', '1', '1', '暂无图片', null, null, '1', '金沙河面粉家用小麦粉5kg糕点手抓饼酵母烘焙原料', '金沙河', '河北·邢台');
INSERT INTO `t_commodity` VALUES ('104', '16', '104', '2', '四川担担面1.36kg', '4.500', '9.600', '10', '1', '1', '暂无图片', null, null, '2', '香港寿桃 非油炸方便面速食面直面条 挂面四川担担面家庭装1360克', 'SAU TAO/寿桃牌', '广东·肇庆');
INSERT INTO `t_commodity` VALUES ('105', '16', '105', '2', '盛耳红薯宽粉300g', '3.800', '9.900', '10', '1', '1', '暂无图片', null, null, '1', '盛耳 红薯宽粉 300g 粉丝粉条易熟耐煮口感Q弹', '盛耳', '福建·宁德');
INSERT INTO `t_commodity` VALUES ('106', '16', '106', '2', '金龙鱼大豆油5L', '32.500', '43.600', '10', '1', '1', '暂无图片', null, null, '2', '金龙鱼 AE纯香营养大豆油5L/桶 食用油 色拉油', '金龙鱼', '广东·广州');
INSERT INTO `t_commodity` VALUES ('107', '16', '107', '2', '甸禾有机绿豆400g', '8.300', '17.600', '10', '1', '1', '暂无图片', null, null, '2', '甸禾有机绿豆 绿豆粥 有机杂粮 绿豆汤农家绿豆 真空包装400g', '甸禾', '辽宁·朝阳');


-- ----------------------------
-- Records of t_grade
-- ----------------------------
INSERT INTO `t_grade` VALUES ('1', '管理者');
INSERT INTO `t_grade` VALUES ('2', '高级员工');
INSERT INTO `t_grade` VALUES ('3', '普通员工');


-- ----------------------------
-- Records of t_employee
-- ----------------------------
INSERT INTO `t_employee` VALUES ('1', '1', '张三', '18222222222', '420682199202222222', '123456', '3', now(), now(), 'example@example.com', '学院22#222', '女', '22');


-- ----------------------------
-- Records of t_payment
-- ----------------------------
INSERT INTO `t_payment` VALUES ('1', '现金支付');
INSERT INTO `t_payment` VALUES ('2', '微信支付');
INSERT INTO `t_payment` VALUES ('3', '支付宝支付');


-- ----------------------------
-- Records of t_logistisinfo
-- ----------------------------
INSERT INTO `t_logistisinfo` VALUES ('1', '还未接单');
INSERT INTO `t_logistisinfo` VALUES ('2', '已经接单');
INSERT INTO `t_logistisinfo` VALUES ('3', '正在派送');
INSERT INTO `t_logistisinfo` VALUES ('4', '已经签收');










