/*
Navicat MySQL Data Transfer

Source Server         : root
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2019-06-08 21:16:39
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for ims_ymktv_sun_account
-- ----------------------------
DROP TABLE IF EXISTS `ims_ymktv_sun_account`;
CREATE TABLE `ims_ymktv_sun_account` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '所属帐号',
  `storeid` varchar(1000) NOT NULL,
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `from_user` varchar(100) NOT NULL DEFAULT '',
  `accountname` varchar(50) NOT NULL DEFAULT '',
  `password` varchar(200) NOT NULL DEFAULT '',
  `salt` varchar(10) NOT NULL DEFAULT '',
  `pwd` varchar(50) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `username` varchar(50) NOT NULL,
  `pay_account` varchar(200) NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '2' COMMENT '状态',
  `role` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '1:店长,2:店员',
  `lastvisit` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(15) NOT NULL,
  `areaid` int(10) NOT NULL DEFAULT '0' COMMENT '区域id',
  `is_admin_order` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `is_notice_order` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `is_notice_queue` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `is_notice_service` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `is_notice_boss` tinyint(1) NOT NULL DEFAULT '0',
  `remark` varchar(1000) NOT NULL DEFAULT '' COMMENT '备注',
  `lat` decimal(18,10) NOT NULL DEFAULT '0.0000000000' COMMENT '经度',
  `lng` decimal(18,10) NOT NULL DEFAULT '0.0000000000' COMMENT '纬度',
  `cityname` varchar(50) NOT NULL COMMENT '城市名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_ymktv_sun_acode
-- ----------------------------
DROP TABLE IF EXISTS `ims_ymktv_sun_acode`;
CREATE TABLE `ims_ymktv_sun_acode` (
  `id` int(11) NOT NULL COMMENT '该id不自动增加',
  `time` varchar(30) NOT NULL COMMENT '时间',
  `code` text NOT NULL COMMENT '码',
  `url` varchar(255) NOT NULL,
  `uncode` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_ymktv_sun_active
-- ----------------------------
DROP TABLE IF EXISTS `ims_ymktv_sun_active`;
CREATE TABLE `ims_ymktv_sun_active` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '公众号id',
  `subtitle` varchar(45) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `createtime` int(13) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `content` text NOT NULL COMMENT '文章内容',
  `sort` int(10) DEFAULT '0',
  `antime` timestamp NULL DEFAULT NULL,
  `hits` int(10) DEFAULT '0',
  `status` tinyint(10) DEFAULT '0' COMMENT '0审核中1审核通过',
  `astime` timestamp NULL DEFAULT NULL,
  `thumb` varchar(200) DEFAULT NULL,
  `num` int(10) DEFAULT '0',
  `sharenum` int(11) DEFAULT NULL COMMENT '每天可分享次数',
  `thumb_url` text,
  `part_num` varchar(15) DEFAULT '0' COMMENT '参与人数',
  `share_plus` varchar(15) DEFAULT '1' COMMENT '分享之后可得的次数',
  `new_partnum` varchar(15) DEFAULT NULL COMMENT '初始虚拟参与人数',
  `user_id` varchar(100) DEFAULT NULL COMMENT '用户ID',
  `storeinfo` varchar(200) DEFAULT NULL COMMENT '店铺信息',
  `showindex` int(11) DEFAULT NULL COMMENT '0不显示1显示',
  `active_num` int(11) DEFAULT NULL COMMENT '活动商品数量',
  `details` text,
  `lb_imgs` text,
  `build_id` varchar(120) DEFAULT NULL COMMENT '门店id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for ims_ymktv_sun_activerecord
-- ----------------------------
DROP TABLE IF EXISTS `ims_ymktv_sun_activerecord`;
CREATE TABLE `ims_ymktv_sun_activerecord` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '公众号id',
  `uid` int(10) DEFAULT NULL,
  `pid` int(10) DEFAULT '0',
  `num` int(10) DEFAULT '0',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for ims_ymktv_sun_ad
-- ----------------------------
DROP TABLE IF EXISTS `ims_ymktv_sun_ad`;
CREATE TABLE `ims_ymktv_sun_ad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL COMMENT '轮播图标题',
  `logo` varchar(200) NOT NULL COMMENT '图片',
  `status` int(11) NOT NULL COMMENT '1.开启  2.关闭',
  `src` varchar(100) NOT NULL COMMENT '链接',
  `orderby` int(11) NOT NULL COMMENT '排序',
  `xcx_name` varchar(20) NOT NULL,
  `appid` varchar(20) NOT NULL,
  `uniacid` int(11) NOT NULL COMMENT '小程序id',
  `type` int(11) NOT NULL,
  `cityname` varchar(50) NOT NULL,
  `wb_src` varchar(300) NOT NULL,
  `state` int(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_ymktv_sun_area
-- ----------------------------
DROP TABLE IF EXISTS `ims_ymktv_sun_area`;
CREATE TABLE `ims_ymktv_sun_area` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `area_name` varchar(50) NOT NULL COMMENT '区域名称',
  `num` int(11) NOT NULL COMMENT '排序',
  `uniacid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_ymktv_sun_attention
-- ----------------------------
DROP TABLE IF EXISTS `ims_ymktv_sun_attention`;
CREATE TABLE `ims_ymktv_sun_attention` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `attention_id` varchar(120) NOT NULL COMMENT '被关注用户id',
  `fans_id` varchar(120) NOT NULL COMMENT '关注用户id',
  `a_time` datetime NOT NULL COMMENT '关注时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='关注表';

-- ----------------------------
-- Table structure for ims_ymktv_sun_banner
-- ----------------------------
DROP TABLE IF EXISTS `ims_ymktv_sun_banner`;
CREATE TABLE `ims_ymktv_sun_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `bname` varchar(45) DEFAULT NULL COMMENT '图片名称',
  `lb_imgs` text NOT NULL COMMENT '图片地址',
  `location` int(1) NOT NULL COMMENT '图片位置   1:首页轮播图 2:酒水页轮播图',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='轮播图表';

-- ----------------------------
-- Table structure for ims_ymktv_sun_branchhead
-- ----------------------------
DROP TABLE IF EXISTS `ims_ymktv_sun_branchhead`;
CREATE TABLE `ims_ymktv_sun_branchhead` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bh_name` varchar(45) DEFAULT NULL,
  `addtime` varchar(20) DEFAULT NULL,
  `uniacid` int(11) DEFAULT NULL,
  `b_id` int(11) DEFAULT NULL,
  `account` varchar(40) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for ims_ymktv_sun_build_switch
-- ----------------------------
DROP TABLE IF EXISTS `ims_ymktv_sun_build_switch`;
CREATE TABLE `ims_ymktv_sun_build_switch` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT NULL,
  `openid` varchar(80) DEFAULT NULL,
  `build_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for ims_ymktv_sun_building
-- ----------------------------
DROP TABLE IF EXISTS `ims_ymktv_sun_building`;
CREATE TABLE `ims_ymktv_sun_building` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `b_name` varchar(120) DEFAULT NULL,
  `addtime` varchar(40) DEFAULT NULL,
  `uniacid` int(11) DEFAULT NULL,
  `address` text,
  `longitude` varchar(120) DEFAULT NULL COMMENT '经纬度',
  `b_img` varchar(120) DEFAULT NULL COMMENT '分店图',
  `tel` varchar(45) DEFAULT NULL,
  `build_details` text,
  `sn` varchar(9) DEFAULT NULL COMMENT '编码',
  `key` varchar(20) DEFAULT NULL COMMENT 'ukey',
  `user` varchar(45) DEFAULT NULL COMMENT '登录账号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for ims_ymktv_sun_business_account
-- ----------------------------
DROP TABLE IF EXISTS `ims_ymktv_sun_business_account`;
CREATE TABLE `ims_ymktv_sun_business_account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `account` varchar(255) NOT NULL COMMENT '账户',
  `password` varchar(255) NOT NULL COMMENT '密码',
  `username` varchar(255) DEFAULT NULL COMMENT '商家后台显示的用户名,默认为微信名',
  `img` varchar(255) DEFAULT NULL COMMENT '商家后台用户头像,默认为微信头像',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='商家后台账户表';

-- ----------------------------
-- Table structure for ims_ymktv_sun_car
-- ----------------------------
DROP TABLE IF EXISTS `ims_ymktv_sun_car`;
CREATE TABLE `ims_ymktv_sun_car` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `start_place` varchar(100) NOT NULL COMMENT '出发地',
  `end_place` varchar(100) NOT NULL COMMENT '目的地',
  `start_time` varchar(30) NOT NULL COMMENT '出发时间',
  `num` int(4) NOT NULL COMMENT '乘车人数/可乘人数',
  `link_name` varchar(30) NOT NULL COMMENT '联系人',
  `link_tel` varchar(20) NOT NULL COMMENT '联系电话',
  `typename` varchar(30) NOT NULL COMMENT '分类名称',
  `other` varchar(300) NOT NULL COMMENT '补充',
  `time` int(11) NOT NULL COMMENT '发布时间',
  `sh_time` int(11) NOT NULL COMMENT '审核时间',
  `top_id` int(11) NOT NULL COMMENT '置顶ID',
  `top` int(4) NOT NULL COMMENT '是否置顶,1,是,2否',
  `uniacid` varchar(50) NOT NULL,
  `state` int(4) NOT NULL COMMENT '1待审核,2通过，3拒绝',
  `tj_place` varchar(300) NOT NULL COMMENT '途经地',
  `hw_wet` varchar(10) NOT NULL COMMENT '货物重量',
  `star_lat` varchar(20) NOT NULL COMMENT '出发地维度',
  `star_lng` varchar(20) NOT NULL COMMENT '出发地经度',
  `end_lat` varchar(20) NOT NULL COMMENT '目的地维度',
  `end_lng` varchar(20) NOT NULL COMMENT '目的地经度',
  `is_open` int(4) NOT NULL,
  `start_time2` int(11) NOT NULL,
  `cityname` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='拼车';

-- ----------------------------
-- Table structure for ims_ymktv_sun_car_my_tag
-- ----------------------------
DROP TABLE IF EXISTS `ims_ymktv_sun_car_my_tag`;
CREATE TABLE `ims_ymktv_sun_car_my_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_id` int(11) NOT NULL COMMENT '标签id',
  `car_id` int(11) NOT NULL COMMENT '拼车ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_ymktv_sun_car_tag
-- ----------------------------
DROP TABLE IF EXISTS `ims_ymktv_sun_car_tag`;
CREATE TABLE `ims_ymktv_sun_car_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `typename` varchar(30) NOT NULL COMMENT '分类名称',
  `tagname` varchar(30) NOT NULL COMMENT '标签名称',
  `uniacid` varchar(11) NOT NULL COMMENT '50',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_ymktv_sun_car_top
-- ----------------------------
DROP TABLE IF EXISTS `ims_ymktv_sun_car_top`;
CREATE TABLE `ims_ymktv_sun_car_top` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL COMMENT '1.一天2.一周3.一个月',
  `money` decimal(10,2) NOT NULL COMMENT '价格',
  `uniacid` int(11) NOT NULL,
  `num` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='拼车置顶';

-- ----------------------------
-- Table structure for ims_ymktv_sun_carpaylog
-- ----------------------------
DROP TABLE IF EXISTS `ims_ymktv_sun_carpaylog`;
CREATE TABLE `ims_ymktv_sun_carpaylog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `car_id` int(44) NOT NULL COMMENT '拼车id',
  `money` decimal(10,2) NOT NULL COMMENT '钱',
  `time` datetime NOT NULL,
  `uniacid` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='拼车支付记录表';

-- ----------------------------
-- Table structure for ims_ymktv_sun_carts
-- ----------------------------
DROP TABLE IF EXISTS `ims_ymktv_sun_carts`;
CREATE TABLE `ims_ymktv_sun_carts` (
  `crid` int(11) NOT NULL AUTO_INCREMENT,
  `d_id` int(11) NOT NULL,
  `uniacid` int(11) NOT NULL,
  `cr_time` varchar(45) NOT NULL,
  `num` varchar(45) NOT NULL,
  `openid` varchar(120) NOT NULL,
  `build_id` int(11) NOT NULL,
  PRIMARY KEY (`crid`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for ims_ymktv_sun_comments
-- ----------------------------
DROP TABLE IF EXISTS `ims_ymktv_sun_comments`;
CREATE TABLE `ims_ymktv_sun_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `information_id` int(11) NOT NULL COMMENT '帖子id',
  `details` varchar(200) NOT NULL COMMENT '评论详情',
  `time` varchar(20) NOT NULL COMMENT '时间',
  `reply` varchar(200) NOT NULL COMMENT '回复详情',
  `hf_time` varchar(20) NOT NULL COMMENT '回复时间',
  `user_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `score` decimal(10,1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_ymktv_sun_commission_withdrawal
-- ----------------------------
DROP TABLE IF EXISTS `ims_ymktv_sun_commission_withdrawal`;
CREATE TABLE `ims_ymktv_sun_commission_withdrawal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `type` int(11) NOT NULL COMMENT '1.支付宝2.银行卡',
  `state` int(11) NOT NULL COMMENT '1.审核中2.通过3.拒绝',
  `time` int(11) NOT NULL COMMENT '申请时间',
  `sh_time` int(11) NOT NULL COMMENT '审核时间',
  `uniacid` int(11) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `account` varchar(100) NOT NULL,
  `tx_cost` decimal(10,2) NOT NULL COMMENT '提现金额',
  `sj_cost` decimal(10,2) NOT NULL COMMENT '实际到账金额',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='佣金提现';

-- ----------------------------
-- Table structure for ims_ymktv_sun_coupon
-- ----------------------------
DROP TABLE IF EXISTS `ims_ymktv_sun_coupon`;
CREATE TABLE `ims_ymktv_sun_coupon` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `title` varchar(255) NOT NULL COMMENT '优惠券名称，展示用',
  `type` tinyint(3) unsigned NOT NULL COMMENT '优惠券类型（1:折扣 2:代金 ）',
  `astime` timestamp NULL DEFAULT NULL COMMENT '活动开始时间',
  `antime` timestamp NULL DEFAULT NULL COMMENT '活动结束时间',
  `expiryDate` int(10) unsigned DEFAULT NULL COMMENT '领取后，使用有效期',
  `allowance` int(10) unsigned DEFAULT NULL COMMENT '余量',
  `total` int(10) unsigned DEFAULT NULL COMMENT '总量',
  `val` varchar(255) DEFAULT NULL COMMENT '功能',
  `exchange` tinyint(3) unsigned DEFAULT NULL COMMENT '积分兑换',
  `scene` tinyint(4) unsigned DEFAULT NULL COMMENT '场景（1:充值赠送，2:买单赠送）',
  `showIndex` tinyint(4) DEFAULT NULL COMMENT '是否首页显示（0:不显示 1:显示）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='优惠券表';

-- ----------------------------
-- Table structure for ims_ymktv_sun_detailed
-- ----------------------------
DROP TABLE IF EXISTS `ims_ymktv_sun_detailed`;
CREATE TABLE `ims_ymktv_sun_detailed` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `details_name` varchar(255) DEFAULT NULL COMMENT '消费的产品名称',
  `details_money` decimal(10,2) DEFAULT NULL COMMENT '消费的金额',
  `addtime` varchar(25) DEFAULT NULL,
  `uniacid` int(11) DEFAULT NULL,
  `openid` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for ims_ymktv_sun_distribution
-- ----------------------------
DROP TABLE IF EXISTS `ims_ymktv_sun_distribution`;
CREATE TABLE `ims_ymktv_sun_distribution` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `user_tel` varchar(20) NOT NULL,
  `state` int(11) NOT NULL COMMENT '1.审核中2.通过3.拒绝',
  `uniacid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='分销申请';

-- ----------------------------
-- Table structure for ims_ymktv_sun_distribution_order
-- ----------------------------
DROP TABLE IF EXISTS `ims_ymktv_sun_distribution_order`;
CREATE TABLE `ims_ymktv_sun_distribution_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `ordertype` tinyint(3) NOT NULL DEFAULT '0' COMMENT '订单类别，1普通，2砍价，3拼团，4抢购，5预约',
  `order_id` int(11) NOT NULL COMMENT '订单id',
  `parent_id_1` int(11) NOT NULL COMMENT '一级id',
  `parent_id_2` int(11) NOT NULL COMMENT '二级id',
  `parent_id_3` int(11) NOT NULL COMMENT '3级id',
  `first_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '一级佣金',
  `second_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '二级佣金',
  `third_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '三级佣金',
  `rebate` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否自购，0否，1是',
  `user_id` int(11) NOT NULL COMMENT '购买用户id',
  `is_delete` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除（用来识别是否计入可提现佣金），0未，1删',
  `openid` varchar(255) NOT NULL COMMENT 'openid',
  `uniacid` int(11) NOT NULL COMMENT 'uniacid',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=94 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_ymktv_sun_distribution_promoter
-- ----------------------------
DROP TABLE IF EXISTS `ims_ymktv_sun_distribution_promoter`;
CREATE TABLE `ims_ymktv_sun_distribution_promoter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openid` varchar(255) NOT NULL COMMENT 'openid',
  `name` varchar(30) NOT NULL COMMENT '姓名',
  `mobilephone` varchar(30) NOT NULL COMMENT '手机号',
  `allcommission` decimal(10,2) NOT NULL COMMENT '累计佣金',
  `canwithdraw` decimal(10,2) NOT NULL COMMENT '可提现佣金',
  `referrer_name` varchar(100) NOT NULL COMMENT '推荐人',
  `referrer_uid` int(11) NOT NULL COMMENT '推荐人id',
  `status` tinyint(3) NOT NULL DEFAULT '0' COMMENT '状态，0审核中，1通过，2拒绝',
  `addtime` int(11) NOT NULL COMMENT '申请时间',
  `checktime` int(11) NOT NULL COMMENT '审核时间',
  `meno` text NOT NULL COMMENT '备注',
  `form_id` varchar(50) NOT NULL COMMENT 'form_id，发模板消息',
  `uniacid` int(11) NOT NULL COMMENT 'uniacid',
  `freezemoney` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '提现冻结的金额',
  `allratesmoney` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '提现手续费',
  `uid` int(11) NOT NULL COMMENT '用户id',
  `code_img` mediumblob NOT NULL COMMENT '小程序码',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=383 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_ymktv_sun_distribution_set
-- ----------------------------
DROP TABLE IF EXISTS `ims_ymktv_sun_distribution_set`;
CREATE TABLE `ims_ymktv_sun_distribution_set` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` tinyint(3) NOT NULL DEFAULT '0' COMMENT '分销层级,0不开启，1一级，2二级',
  `is_buyself` tinyint(1) NOT NULL DEFAULT '0' COMMENT '分销内购，0关闭，1开启',
  `lower_condition` tinyint(1) NOT NULL DEFAULT '0' COMMENT '成为下线条件，0首次点击链接',
  `share_condition` tinyint(3) NOT NULL DEFAULT '0' COMMENT '成为分销商条件，0无条件但要审核，1申请审核，2不需要审核',
  `autoshare` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '消费自动成为分销商',
  `withdrawtype` varchar(100) NOT NULL COMMENT '提现方式,1微信支付,2支付宝支付,3银行卡支付,4余额支付',
  `minwithdraw` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '最少提现额度',
  `daymaxwithdraw` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '每日提现上限',
  `withdrawnotice` text NOT NULL COMMENT '用户提现须知',
  `tpl_wd_arrival` varchar(255) NOT NULL COMMENT '提现到账模板消息id',
  `tpl_wd_fail` varchar(255) NOT NULL COMMENT '提现失败模板消息id',
  `tpl_share_check` varchar(255) NOT NULL COMMENT '分销审核模板消息id',
  `application` text NOT NULL COMMENT '申请协议',
  `applybanner` varchar(255) NOT NULL COMMENT '申请页面banner',
  `checkbanner` varchar(255) NOT NULL COMMENT '待审核页面banner',
  `uniacid` int(11) NOT NULL COMMENT 'uniacid',
  `commissiontype` tinyint(3) NOT NULL DEFAULT '1' COMMENT '分销佣金类型，1百分比，2固定金额',
  `firstname` varchar(255) NOT NULL COMMENT '一级名称',
  `firstmoney` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '一级金额',
  `secondname` varchar(255) NOT NULL COMMENT '二级名称',
  `secondmoney` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '二级金额',
  `withdrawhandingfee` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '提现手续费',
  `thirdname` varchar(50) NOT NULL COMMENT '第三级名称',
  `thirdmoney` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '第三级佣金',
  `postertoppic` varchar(255) NOT NULL COMMENT '海报图',
  `postertoptitle` varchar(200) NOT NULL COMMENT '海报标题',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_ymktv_sun_distribution_withdraw
-- ----------------------------
DROP TABLE IF EXISTS `ims_ymktv_sun_distribution_withdraw`;
CREATE TABLE `ims_ymktv_sun_distribution_withdraw` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openid` varchar(255) NOT NULL COMMENT 'openid',
  `uniacid` int(11) NOT NULL COMMENT 'uniacid',
  `uname` varchar(255) NOT NULL COMMENT '姓名',
  `account` varchar(20) NOT NULL COMMENT '提现账号',
  `withdrawaltype` tinyint(3) NOT NULL DEFAULT '0' COMMENT '提现方式，1微信，2支付宝，3银行卡，4余额',
  `status` tinyint(3) NOT NULL DEFAULT '0' COMMENT '提现状态，0待打款，1已经打款，2拒绝',
  `time` int(11) NOT NULL COMMENT '时间',
  `mobilephone` varchar(30) NOT NULL COMMENT '手机号',
  `money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '提现金额',
  `realmoney` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '实际金额',
  `ratesmoney` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '手续费',
  `meno` text NOT NULL COMMENT '备注',
  `uid` int(11) NOT NULL COMMENT '用户id',
  `form_id` varchar(50) NOT NULL COMMENT 'form_id',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_ymktv_sun_drinks
-- ----------------------------
DROP TABLE IF EXISTS `ims_ymktv_sun_drinks`;
CREATE TABLE `ims_ymktv_sun_drinks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `drink_name` varchar(255) NOT NULL,
  `drink_cost` varchar(45) NOT NULL,
  `drink_price` varchar(45) NOT NULL,
  `dt_id` int(11) NOT NULL,
  `imgs` text NOT NULL,
  `drink_details` text NOT NULL,
  `d_time` varchar(120) NOT NULL,
  `uniacid` int(11) NOT NULL,
  `z_imgs` varchar(255) NOT NULL,
  `state` int(11) DEFAULT NULL,
  `build_id` varchar(80) DEFAULT NULL COMMENT '分店的id',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=191 DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for ims_ymktv_sun_drinktype
-- ----------------------------
DROP TABLE IF EXISTS `ims_ymktv_sun_drinktype`;
CREATE TABLE `ims_ymktv_sun_drinktype` (
  `dtid` int(11) NOT NULL AUTO_INCREMENT,
  `dt_name` varchar(45) NOT NULL,
  `uniacid` int(11) NOT NULL,
  `dt_time` varchar(120) NOT NULL,
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`dtid`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for ims_ymktv_sun_earnings
-- ----------------------------
DROP TABLE IF EXISTS `ims_ymktv_sun_earnings`;
CREATE TABLE `ims_ymktv_sun_earnings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `son_id` int(11) NOT NULL COMMENT '下线',
  `money` decimal(10,2) NOT NULL,
  `time` int(11) NOT NULL,
  `uniacid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='佣金收益表';

-- ----------------------------
-- Table structure for ims_ymktv_sun_expert
-- ----------------------------
DROP TABLE IF EXISTS `ims_ymktv_sun_expert`;
CREATE TABLE `ims_ymktv_sun_expert` (
  `id` int(32) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `uniacid` varchar(50) NOT NULL COMMENT '小程序版本标识',
  `user_id` varchar(120) NOT NULL COMMENT '发布用户id',
  `content` varchar(255) DEFAULT NULL COMMENT '文字内容',
  `imgs` longtext COMMENT '图片',
  `comment_num` int(11) NOT NULL DEFAULT '0' COMMENT '达人圈内容被评论数',
  `collect_num` int(11) NOT NULL DEFAULT '0' COMMENT '达人圈内容被收藏数',
  `release_time` datetime NOT NULL COMMENT '内容发布时间',
  `isshow` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否显示，1显示',
  `isexamine` tinyint(1) DEFAULT '0' COMMENT '0为待审核，1为审核',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=364 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='达人圈';

-- ----------------------------
-- Table structure for ims_ymktv_sun_expert_comment
-- ----------------------------
DROP TABLE IF EXISTS `ims_ymktv_sun_expert_comment`;
CREATE TABLE `ims_ymktv_sun_expert_comment` (
  `id` int(32) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `expert_id` int(32) NOT NULL COMMENT '达人圈表id',
  `contents` varchar(255) DEFAULT NULL COMMENT '评论内容',
  `release_time` datetime NOT NULL COMMENT '评论发布时间',
  `like_num` int(11) DEFAULT '0' COMMENT '评论被点赞数',
  `user_id` varchar(120) NOT NULL COMMENT '发表评论用户id',
  `reply` text COMMENT '回复内容',
  `replytime` datetime DEFAULT NULL COMMENT '回复时间',
  `uniacid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='达人圈评论表';

-- ----------------------------
-- Table structure for ims_ymktv_sun_family
-- ----------------------------
DROP TABLE IF EXISTS `ims_ymktv_sun_family`;
CREATE TABLE `ims_ymktv_sun_family` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(120) NOT NULL,
  `details` text NOT NULL,
  `uniacid` int(11) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `phone` varchar(18) DEFAULT NULL,
  `address` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for ims_ymktv_sun_fx
-- ----------------------------
DROP TABLE IF EXISTS `ims_ymktv_sun_fx`;
CREATE TABLE `ims_ymktv_sun_fx` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '用户ID',
  `zf_user_id` int(11) NOT NULL COMMENT '转发人ID',
  `money` decimal(10,2) NOT NULL COMMENT '金额',
  `time` int(11) NOT NULL COMMENT '时间戳',
  `uniacid` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='分销表';

-- ----------------------------
-- Table structure for ims_ymktv_sun_fxset
-- ----------------------------
DROP TABLE IF EXISTS `ims_ymktv_sun_fxset`;
CREATE TABLE `ims_ymktv_sun_fxset` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fx_details` text NOT NULL COMMENT '分销商申请协议',
  `tx_details` text NOT NULL COMMENT '佣金提现协议',
  `is_fx` int(11) NOT NULL COMMENT '1.开启分销审核2.不开启',
  `is_ej` int(11) NOT NULL COMMENT '是否开启二级分销1.是2.否',
  `tx_rate` int(11) NOT NULL COMMENT '提现手续费',
  `commission` varchar(10) NOT NULL COMMENT '一级佣金',
  `commission2` varchar(10) NOT NULL COMMENT '二级佣金',
  `tx_money` int(11) NOT NULL COMMENT '提现门槛',
  `img` varchar(100) NOT NULL COMMENT '分销中心图片',
  `img2` varchar(100) NOT NULL COMMENT '申请分销图片',
  `uniacid` int(11) NOT NULL,
  `is_open` int(11) NOT NULL DEFAULT '1' COMMENT '1.开启2关闭',
  `instructions` text NOT NULL COMMENT '分销商说明',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_ymktv_sun_fxuser
-- ----------------------------
DROP TABLE IF EXISTS `ims_ymktv_sun_fxuser`;
CREATE TABLE `ims_ymktv_sun_fxuser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '一级分销',
  `fx_user` int(11) NOT NULL COMMENT '二级分销',
  `time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_ymktv_sun_gift
-- ----------------------------
DROP TABLE IF EXISTS `ims_ymktv_sun_gift`;
CREATE TABLE `ims_ymktv_sun_gift` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '公众号id',
  `title` varchar(200) DEFAULT NULL,
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `content` text NOT NULL COMMENT '文章内容',
  `sort` int(10) DEFAULT '0',
  `hits` int(10) DEFAULT '0',
  `status` tinyint(10) DEFAULT '0',
  `thumb` varchar(200) DEFAULT NULL,
  `thumb2` varchar(200) DEFAULT NULL,
  `pid` int(10) DEFAULT '0',
  `rate` mediumint(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for ims_ymktv_sun_gift_dh
-- ----------------------------
DROP TABLE IF EXISTS `ims_ymktv_sun_gift_dh`;
CREATE TABLE `ims_ymktv_sun_gift_dh` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `createtime` varchar(45) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `specs` varchar(255) DEFAULT NULL,
  `pname` varchar(255) DEFAULT NULL,
  `openid` varchar(120) DEFAULT NULL,
  `order_num` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for ims_ymktv_sun_gift_order
-- ----------------------------
DROP TABLE IF EXISTS `ims_ymktv_sun_gift_order`;
CREATE TABLE `ims_ymktv_sun_gift_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '公众号id',
  `pid` int(10) DEFAULT '0',
  `uid` varchar(100) NOT NULL,
  `createtime` varchar(120) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `state` tinyint(10) DEFAULT '0' COMMENT '默认为0,1为已领取',
  `consignee` varchar(45) DEFAULT NULL,
  `tel` varchar(45) DEFAULT NULL,
  `note` varchar(150) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `isat` int(11) DEFAULT '0' COMMENT '0为存在，1为用户删除,2未商家删除',
  `title` varchar(120) DEFAULT NULL,
  `thumb` varchar(120) DEFAULT NULL,
  `build_id` int(11) DEFAULT NULL COMMENT '门店id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for ims_ymktv_sun_goods
-- ----------------------------
DROP TABLE IF EXISTS `ims_ymktv_sun_goods`;
CREATE TABLE `ims_ymktv_sun_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `goods_volume` varchar(45) NOT NULL COMMENT '商家ID',
  `spec_id` int(11) NOT NULL COMMENT '主规格ID',
  `goods_name` varchar(100) NOT NULL COMMENT '商品名称',
  `goods_num` int(11) NOT NULL COMMENT '商品数量',
  `goods_price` decimal(10,2) NOT NULL COMMENT '商品现价',
  `goods_cost` decimal(10,2) NOT NULL COMMENT '商品原价',
  `type_id` int(11) NOT NULL,
  `freight` decimal(10,2) NOT NULL COMMENT '运费',
  `delivery` varchar(500) NOT NULL COMMENT '关于发货',
  `quality` int(4) NOT NULL COMMENT '正品1是,0否',
  `free` int(4) NOT NULL COMMENT '包邮1是,0否',
  `all_day` int(4) NOT NULL COMMENT '24小时发货1是,0否',
  `service` int(4) NOT NULL COMMENT '售后服务1是,0否',
  `refund` int(4) NOT NULL COMMENT '极速退款1是,0否',
  `weeks` int(4) NOT NULL COMMENT '7天包邮1是，0否',
  `lb_imgs` varchar(500) DEFAULT NULL COMMENT '轮播图',
  `imgs` varchar(500) DEFAULT NULL COMMENT '商品介绍图',
  `time` datetime NOT NULL COMMENT '商品添加时间',
  `uniacid` varchar(50) NOT NULL,
  `goods_details` text NOT NULL COMMENT '商品详情',
  `state` int(4) NOT NULL DEFAULT '1' COMMENT '1待审核,2通过，3拒绝,4开启拼团',
  `room_num` varchar(11) NOT NULL COMMENT '剩余数量',
  `is_show` int(11) NOT NULL,
  `sales` int(11) NOT NULL,
  `spec_name` varchar(45) NOT NULL,
  `spec_value` varchar(200) NOT NULL,
  `goods_time` varchar(50) NOT NULL COMMENT '旅行时间 例:一天一晚',
  `pre_type` varchar(50) NOT NULL COMMENT '预定类型 默认:(跟团游)',
  `teamWork` int(20) NOT NULL DEFAULT '2' COMMENT '拼团 (1:开启 2:未开启)',
  `special` longtext COMMENT '产品特色',
  `journey` longtext COMMENT '行程路线',
  `cost_detail` longtext COMMENT '费用详情',
  `bookings` longtext COMMENT '预定须知',
  `travel_type` int(4) NOT NULL COMMENT '旅游类型  1.国内游 2.出境游 3.周边游',
  `start_place` varchar(255) NOT NULL COMMENT '行程起点',
  `end_place` varchar(255) DEFAULT NULL COMMENT '行程终点',
  `thumbnail` varchar(255) NOT NULL COMMENT '商品缩略图小图',
  `big_thumbnail` varchar(255) NOT NULL COMMENT '商品缩略图大图',
  `start_num` int(11) NOT NULL COMMENT '单团人数',
  `preferential` int(1) NOT NULL DEFAULT '0' COMMENT '是否开启特惠 0:关闭 1:开启',
  `subscribe_duration` varchar(255) NOT NULL,
  `subscribe_time` varchar(80) NOT NULL,
  `goods_valb` varchar(45) NOT NULL,
  `goods_valc` varchar(45) NOT NULL,
  `s_sid` int(11) DEFAULT NULL,
  `build_id` varchar(120) DEFAULT NULL COMMENT '分店的id',
  `sb_sid` varchar(120) DEFAULT NULL COMMENT '服务员id',
  `date_dc` int(11) DEFAULT NULL COMMENT '判断当日1,或次日2',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8 COMMENT='商品表';

-- ----------------------------
-- Table structure for ims_ymktv_sun_goods_collection
-- ----------------------------
DROP TABLE IF EXISTS `ims_ymktv_sun_goods_collection`;
CREATE TABLE `ims_ymktv_sun_goods_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `goods_id` int(11) NOT NULL COMMENT '商品id',
  `time` datetime NOT NULL COMMENT '收藏时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='商品收藏表';

-- ----------------------------
-- Table structure for ims_ymktv_sun_goods_spec
-- ----------------------------
DROP TABLE IF EXISTS `ims_ymktv_sun_goods_spec`;
CREATE TABLE `ims_ymktv_sun_goods_spec` (
  `spec_value` varchar(45) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `spec_name` varchar(100) NOT NULL COMMENT '规格名称',
  `sort` int(4) NOT NULL COMMENT '排序',
  `uniacid` varchar(50) NOT NULL COMMENT '50',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品规格表';

-- ----------------------------
-- Table structure for ims_ymktv_sun_hblq
-- ----------------------------
DROP TABLE IF EXISTS `ims_ymktv_sun_hblq`;
CREATE TABLE `ims_ymktv_sun_hblq` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '用户ID',
  `tz_id` int(11) NOT NULL COMMENT '帖子ID',
  `money` decimal(10,2) NOT NULL COMMENT '金额',
  `time` int(11) NOT NULL COMMENT '时间戳',
  `uniacid` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='红包领取表';

-- ----------------------------
-- Table structure for ims_ymktv_sun_help
-- ----------------------------
DROP TABLE IF EXISTS `ims_ymktv_sun_help`;
CREATE TABLE `ims_ymktv_sun_help` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(200) NOT NULL COMMENT '标题',
  `answer` text NOT NULL COMMENT '回答',
  `sort` int(4) NOT NULL COMMENT '排序',
  `uniacid` varchar(50) NOT NULL,
  `created_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_ymktv_sun_hotcity
-- ----------------------------
DROP TABLE IF EXISTS `ims_ymktv_sun_hotcity`;
CREATE TABLE `ims_ymktv_sun_hotcity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(50) NOT NULL COMMENT '城市名称',
  `time` int(11) NOT NULL COMMENT '创建时间',
  `uniacid` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_ymktv_sun_in
-- ----------------------------
DROP TABLE IF EXISTS `ims_ymktv_sun_in`;
CREATE TABLE `ims_ymktv_sun_in` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL COMMENT '1.一天2.半年3.一年',
  `money` decimal(10,2) NOT NULL,
  `num` int(11) NOT NULL,
  `uniacid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_ymktv_sun_inary_money
-- ----------------------------
DROP TABLE IF EXISTS `ims_ymktv_sun_inary_money`;
CREATE TABLE `ims_ymktv_sun_inary_money` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT NULL,
  `recharge` decimal(50,2) DEFAULT NULL,
  `youhui` decimal(10,2) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_ymktv_sun_information
-- ----------------------------
DROP TABLE IF EXISTS `ims_ymktv_sun_information`;
CREATE TABLE `ims_ymktv_sun_information` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `details` text NOT NULL COMMENT '内容',
  `img` text NOT NULL COMMENT '图片',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `user_name` varchar(20) NOT NULL COMMENT '联系人',
  `user_tel` varchar(20) NOT NULL COMMENT '电话',
  `hot` int(11) NOT NULL COMMENT '1.热门 2.不热门',
  `top` int(11) NOT NULL COMMENT '1.置顶 2.不置顶',
  `givelike` int(11) NOT NULL COMMENT '点赞数',
  `views` int(11) NOT NULL COMMENT '浏览量',
  `uniacid` int(11) NOT NULL COMMENT '小程序id',
  `type2_id` int(11) NOT NULL COMMENT '分类二id',
  `type_id` int(11) NOT NULL,
  `state` int(11) NOT NULL COMMENT '1.待审核 2.通过3拒绝',
  `money` decimal(10,2) NOT NULL,
  `time` int(11) NOT NULL COMMENT '发布时间',
  `sh_time` int(11) NOT NULL,
  `top_type` int(11) NOT NULL,
  `address` varchar(500) NOT NULL,
  `hb_money` decimal(10,2) NOT NULL,
  `hb_num` int(11) NOT NULL,
  `hb_type` int(11) NOT NULL,
  `hb_keyword` varchar(20) NOT NULL,
  `hb_random` int(11) NOT NULL,
  `hong` text NOT NULL,
  `store_id` int(11) NOT NULL,
  `del` int(11) NOT NULL DEFAULT '2',
  `user_img2` varchar(100) NOT NULL,
  `dq_time` int(11) NOT NULL,
  `cityname` varchar(50) NOT NULL,
  `hbfx_num` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_ymktv_sun_integral
-- ----------------------------
DROP TABLE IF EXISTS `ims_ymktv_sun_integral`;
CREATE TABLE `ims_ymktv_sun_integral` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `integral_name` varchar(255) NOT NULL,
  `integral_price` varchar(45) NOT NULL,
  `imgs` text NOT NULL,
  `integral_details` text NOT NULL,
  `i_time` varchar(120) NOT NULL,
  `uniacid` int(11) NOT NULL,
  `z_imgs` varchar(255) NOT NULL,
  `state` int(11) DEFAULT NULL,
  `stock` varchar(255) DEFAULT NULL,
  `spec` varchar(255) DEFAULT NULL,
  `specstock` varchar(255) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for ims_ymktv_sun_keepwine
-- ----------------------------
DROP TABLE IF EXISTS `ims_ymktv_sun_keepwine`;
CREATE TABLE `ims_ymktv_sun_keepwine` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `winename` varchar(255) DEFAULT NULL COMMENT '酒名',
  `imgsrc` varchar(120) DEFAULT NULL COMMENT '图片',
  `winenum` varchar(11) DEFAULT NULL COMMENT '数量',
  `username` varchar(120) DEFAULT NULL COMMENT '用户名',
  `mobile` varchar(20) DEFAULT NULL COMMENT '联系电话',
  `build_id` int(11) DEFAULT NULL COMMENT '分店id',
  `uniacid` int(11) DEFAULT NULL,
  `addtime` varchar(45) DEFAULT NULL,
  `exttime` varchar(45) DEFAULT NULL,
  `order_num` varchar(20) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL COMMENT '0为待确认1为已存入2为已提取3为已完成',
  `openid` varchar(120) DEFAULT NULL,
  `room_num` varchar(10) DEFAULT NULL COMMENT '包厢号',
  `remark` varchar(80) DEFAULT NULL COMMENT '备注',
  `overtime` varchar(100) NOT NULL COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for ims_ymktv_sun_kjorder
-- ----------------------------
DROP TABLE IF EXISTS `ims_ymktv_sun_kjorder`;
CREATE TABLE `ims_ymktv_sun_kjorder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openid` varchar(120) NOT NULL,
  `gid` int(11) NOT NULL,
  `price` varchar(45) NOT NULL,
  `timeData` varchar(120) NOT NULL,
  `mobile` varchar(18) NOT NULL,
  `remark` text,
  `uniacid` int(11) NOT NULL,
  `order_num` varchar(20) NOT NULL,
  `time` varchar(20) DEFAULT NULL,
  `state` varchar(11) DEFAULT NULL,
  `sid` int(11) DEFAULT NULL,
  `build_id` int(11) DEFAULT NULL COMMENT '门店id',
  `parent_id_1` int(11) NOT NULL COMMENT '一级id',
  `parent_id_2` int(11) NOT NULL COMMENT '二级id',
  `parent_id_3` int(11) NOT NULL COMMENT '三级id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for ims_ymktv_sun_label
-- ----------------------------
DROP TABLE IF EXISTS `ims_ymktv_sun_label`;
CREATE TABLE `ims_ymktv_sun_label` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label_name` varchar(20) NOT NULL,
  `type2_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_ymktv_sun_like
-- ----------------------------
DROP TABLE IF EXISTS `ims_ymktv_sun_like`;
CREATE TABLE `ims_ymktv_sun_like` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `information_id` int(11) NOT NULL COMMENT '帖子id',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `zx_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_ymktv_sun_money
-- ----------------------------
DROP TABLE IF EXISTS `ims_ymktv_sun_money`;
CREATE TABLE `ims_ymktv_sun_money` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT NULL,
  `recharge` decimal(50,2) DEFAULT NULL,
  `youhui` decimal(10,2) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_ymktv_sun_mylabel
-- ----------------------------
DROP TABLE IF EXISTS `ims_ymktv_sun_mylabel`;
CREATE TABLE `ims_ymktv_sun_mylabel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label_id` int(11) NOT NULL,
  `information_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_ymktv_sun_nav
-- ----------------------------
DROP TABLE IF EXISTS `ims_ymktv_sun_nav`;
CREATE TABLE `ims_ymktv_sun_nav` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT NULL COMMENT '标题',
  `url_type` int(10) NOT NULL DEFAULT '0' COMMENT '链接类型',
  `url` varchar(255) NOT NULL COMMENT '跳转地址',
  `uniacid` int(11) NOT NULL COMMENT 'uniacid',
  `sort` int(10) NOT NULL DEFAULT '255' COMMENT '排序',
  `position` tinyint(3) DEFAULT '0' COMMENT '位置，1营销导航，2底部导航',
  `isshow` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否显示，1显示，0不显示',
  `pic` varchar(255) NOT NULL COMMENT '展示图',
  `un_pic` varchar(255) DEFAULT NULL COMMENT '未选中图',
  `url_id` int(11) DEFAULT NULL COMMENT '参数 id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for ims_ymktv_sun_new_bargain
-- ----------------------------
DROP TABLE IF EXISTS `ims_ymktv_sun_new_bargain`;
CREATE TABLE `ims_ymktv_sun_new_bargain` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gname` varchar(100) DEFAULT NULL,
  `marketprice` decimal(11,2) DEFAULT NULL COMMENT '原价',
  `shopprice` decimal(11,2) DEFAULT NULL,
  `selftime` varchar(20) DEFAULT NULL COMMENT '时间',
  `pic` varchar(200) DEFAULT NULL COMMENT '图片',
  `content` text,
  `cid` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `uniacid` int(11) DEFAULT NULL,
  `starttime` timestamp NULL DEFAULT NULL,
  `endtime` timestamp NULL DEFAULT NULL,
  `num` int(11) unsigned DEFAULT NULL,
  `lb_imgs` text,
  `sid` varchar(120) DEFAULT NULL,
  `showindex` int(1) NOT NULL DEFAULT '0' COMMENT '0为否，1为是',
  `build_id` varchar(120) DEFAULT NULL COMMENT '门店id',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for ims_ymktv_sun_news
-- ----------------------------
DROP TABLE IF EXISTS `ims_ymktv_sun_news`;
CREATE TABLE `ims_ymktv_sun_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL COMMENT '公告标题',
  `details` text NOT NULL COMMENT '公告详情',
  `num` int(11) NOT NULL COMMENT '排序',
  `uniacid` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `img` varchar(100) NOT NULL,
  `state` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `cityname` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_ymktv_sun_order
-- ----------------------------
DROP TABLE IF EXISTS `ims_ymktv_sun_order`;
CREATE TABLE `ims_ymktv_sun_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(80) NOT NULL,
  `store_id` int(11) DEFAULT NULL,
  `money` decimal(10,2) NOT NULL COMMENT '金额',
  `user_name` varchar(20) NOT NULL COMMENT '联系人',
  `address` varchar(200) NOT NULL COMMENT '联系地址',
  `tel` varchar(20) NOT NULL COMMENT '电话',
  `time` int(18) NOT NULL COMMENT '下单时间',
  `pay_time` varchar(45) NOT NULL COMMENT '付款时间',
  `complete_time` int(11) NOT NULL,
  `fh_time` int(11) NOT NULL COMMENT '发货时间',
  `state` int(11) NOT NULL COMMENT '1.待付款 2.已付款3.待确认4.已完成5.退款中6.已退款7.退款拒绝',
  `order_num` varchar(20) NOT NULL COMMENT '订单号',
  `good_id` varchar(120) NOT NULL,
  `good_name` text NOT NULL,
  `good_money` varchar(255) NOT NULL,
  `out_trade_no` varchar(50) NOT NULL DEFAULT '',
  `good_spec` varchar(200) NOT NULL COMMENT '商品规格',
  `del` int(11) NOT NULL DEFAULT '2' COMMENT '用户删除1是  2否 ',
  `del2` int(11) NOT NULL DEFAULT '2' COMMENT '商家删除1.是2.否',
  `uniacid` int(11) NOT NULL,
  `freight` decimal(10,2) NOT NULL,
  `note` varchar(100) NOT NULL,
  `good_num` varchar(255) NOT NULL,
  `start_date` datetime NOT NULL COMMENT '出发时间',
  `back_date` datetime NOT NULL COMMENT '返回时间',
  `good_imgs` text NOT NULL,
  `num` varchar(45) DEFAULT NULL,
  `status` varchar(11) DEFAULT NULL,
  `sid` int(11) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `build_id` int(11) DEFAULT NULL,
  `integral` varchar(45) DEFAULT NULL COMMENT '积分',
  `parent_id_1` int(11) NOT NULL COMMENT '一级id',
  `parent_id_2` int(11) NOT NULL COMMENT '二级id',
  `parent_id_3` int(11) NOT NULL COMMENT '三级id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='订单表';

-- ----------------------------
-- Table structure for ims_ymktv_sun_paylog
-- ----------------------------
DROP TABLE IF EXISTS `ims_ymktv_sun_paylog`;
CREATE TABLE `ims_ymktv_sun_paylog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fid` int(11) NOT NULL COMMENT '外键id(商家,帖子,黄页,拼车)',
  `money` decimal(10,2) NOT NULL COMMENT '钱',
  `time` datetime NOT NULL COMMENT '时间',
  `uniacid` varchar(50) NOT NULL COMMENT '50',
  `note` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='支付记录表';

-- ----------------------------
-- Table structure for ims_ymktv_sun_printing
-- ----------------------------
DROP TABLE IF EXISTS `ims_ymktv_sun_printing`;
CREATE TABLE `ims_ymktv_sun_printing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT NULL,
  `sn` varchar(9) DEFAULT NULL COMMENT '编码',
  `key` varchar(20) DEFAULT NULL COMMENT '生成的ukey',
  `user` varchar(45) DEFAULT NULL COMMENT '登录账号',
  `is_open` int(11) DEFAULT NULL COMMENT '是否开启',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for ims_ymktv_sun_roomorder
-- ----------------------------
DROP TABLE IF EXISTS `ims_ymktv_sun_roomorder`;
CREATE TABLE `ims_ymktv_sun_roomorder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openid` varchar(120) NOT NULL,
  `gid` int(11) NOT NULL,
  `price` varchar(45) NOT NULL,
  `timeData` varchar(120) NOT NULL,
  `times` varchar(120) NOT NULL,
  `mobile` varchar(18) NOT NULL,
  `remark` text,
  `uniacid` int(11) NOT NULL,
  `order_num` varchar(20) NOT NULL,
  `time` varchar(20) DEFAULT NULL,
  `status` varchar(11) DEFAULT NULL,
  `sid` int(11) NOT NULL,
  `build_id` int(11) DEFAULT NULL,
  `timie` varchar(120) DEFAULT NULL COMMENT '开始时间',
  `date_dr` varchar(40) DEFAULT NULL COMMENT '当日',
  `date_cr` varchar(40) DEFAULT NULL COMMENT '次日',
  `integral` varchar(45) DEFAULT NULL COMMENT '积分',
  `parent_id_1` int(11) NOT NULL COMMENT '一级id',
  `parent_id_2` int(11) NOT NULL COMMENT '二级id',
  `parent_id_3` int(11) NOT NULL COMMENT '三级id',
  `room_num` varchar(50) NOT NULL COMMENT '包厢号',
  `type_name` varchar(50) NOT NULL COMMENT '包厢类型',
  `goods_name` varchar(200) NOT NULL COMMENT '包间名称',
  `big_thumbnail` varchar(100) NOT NULL COMMENT '缩略图',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for ims_ymktv_sun_servies
-- ----------------------------
DROP TABLE IF EXISTS `ims_ymktv_sun_servies`;
CREATE TABLE `ims_ymktv_sun_servies` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `servies_name` varchar(120) NOT NULL,
  `login` varchar(120) NOT NULL,
  `password` varchar(80) NOT NULL,
  `servies_details` text,
  `z_imgs` varchar(255) NOT NULL,
  `s_time` varchar(120) DEFAULT NULL,
  `mobile` varchar(40) DEFAULT NULL,
  `b_id` int(11) NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for ims_ymktv_sun_share
-- ----------------------------
DROP TABLE IF EXISTS `ims_ymktv_sun_share`;
CREATE TABLE `ims_ymktv_sun_share` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `information_id` int(11) NOT NULL COMMENT '帖子id',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_ymktv_sun_shop_car
-- ----------------------------
DROP TABLE IF EXISTS `ims_ymktv_sun_shop_car`;
CREATE TABLE `ims_ymktv_sun_shop_car` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gid` int(11) NOT NULL,
  `num` int(11) NOT NULL,
  `combine` varchar(110) NOT NULL,
  `gname` varchar(55) NOT NULL,
  `price` varchar(45) NOT NULL,
  `pic` varchar(110) NOT NULL,
  `uid` text NOT NULL,
  `uniacid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for ims_ymktv_sun_sms
-- ----------------------------
DROP TABLE IF EXISTS `ims_ymktv_sun_sms`;
CREATE TABLE `ims_ymktv_sun_sms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `appkey` varchar(100) NOT NULL,
  `tpl_id` int(11) NOT NULL,
  `uniacid` int(11) NOT NULL,
  `is_open` int(11) NOT NULL DEFAULT '2',
  `tid1` varchar(50) NOT NULL,
  `tid2` varchar(50) NOT NULL,
  `tid3` varchar(50) NOT NULL,
  `mobile` varchar(40) DEFAULT NULL,
  `qitui` text NOT NULL COMMENT '奇推信息',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_ymktv_sun_spec_value
-- ----------------------------
DROP TABLE IF EXISTS `ims_ymktv_sun_spec_value`;
CREATE TABLE `ims_ymktv_sun_spec_value` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) NOT NULL COMMENT '商品ID',
  `spec_id` int(11) NOT NULL,
  `money` decimal(10,2) NOT NULL COMMENT '价格',
  `name` varchar(50) NOT NULL COMMENT '名称',
  `num` int(11) NOT NULL COMMENT '数量',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_ymktv_sun_specprice
-- ----------------------------
DROP TABLE IF EXISTS `ims_ymktv_sun_specprice`;
CREATE TABLE `ims_ymktv_sun_specprice` (
  `gid` int(11) NOT NULL,
  `price` varchar(45) NOT NULL,
  `uniacid` int(11) NOT NULL,
  `spec` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for ims_ymktv_sun_store
-- ----------------------------
DROP TABLE IF EXISTS `ims_ymktv_sun_store`;
CREATE TABLE `ims_ymktv_sun_store` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `store_name` varchar(50) NOT NULL COMMENT '商家名称',
  `address` varchar(200) NOT NULL COMMENT '商家地址',
  `announcement` varchar(100) NOT NULL COMMENT '公告',
  `storetype_id` int(11) NOT NULL COMMENT '主行业分类id',
  `storetype2_id` int(11) NOT NULL COMMENT '商家子分类id',
  `area_id` int(11) NOT NULL COMMENT '区域id',
  `yy_time` varchar(50) NOT NULL COMMENT '营业时间',
  `keyword` varchar(50) NOT NULL COMMENT '关键字',
  `skzf` int(11) NOT NULL COMMENT '1.是 2否(刷卡支付)',
  `wifi` int(11) NOT NULL COMMENT '1.是 2否',
  `mftc` int(11) NOT NULL COMMENT '1.是 2否(免费停车)',
  `jzxy` int(11) NOT NULL COMMENT '1.是 2否(禁止吸烟)',
  `tgbj` int(11) NOT NULL COMMENT '1.是 2否(提供包间)',
  `sfxx` int(11) NOT NULL COMMENT '1.是 2否(沙发休闲)',
  `tel` varchar(20) NOT NULL COMMENT '手机号',
  `logo` varchar(100) NOT NULL,
  `weixin_logo` varchar(100) NOT NULL,
  `ad` text NOT NULL COMMENT '轮播图',
  `state` int(11) NOT NULL COMMENT '1.待审核2通过3拒绝',
  `money` decimal(10,2) NOT NULL COMMENT '金额',
  `password` varchar(100) NOT NULL COMMENT '核销密码',
  `details` text NOT NULL COMMENT '商家简介',
  `uniacid` int(11) NOT NULL,
  `coordinates` varchar(50) NOT NULL,
  `views` int(11) NOT NULL,
  `score` decimal(10,1) NOT NULL,
  `type` int(11) NOT NULL,
  `sh_time` int(11) NOT NULL,
  `time_over` int(11) NOT NULL,
  `img` text NOT NULL,
  `vr_link` text NOT NULL,
  `num` int(11) NOT NULL,
  `start_time` varchar(20) NOT NULL,
  `end_time` varchar(20) NOT NULL,
  `wallet` decimal(10,2) NOT NULL,
  `user_name` varchar(30) NOT NULL,
  `pwd` varchar(50) NOT NULL,
  `dq_time` int(11) NOT NULL,
  `cityname` varchar(50) NOT NULL,
  `time` datetime NOT NULL,
  `fx_num` int(11) NOT NULL,
  `ewm_logo` varchar(100) NOT NULL,
  `is_top` int(4) NOT NULL DEFAULT '2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_ymktv_sun_store_wallet
-- ----------------------------
DROP TABLE IF EXISTS `ims_ymktv_sun_store_wallet`;
CREATE TABLE `ims_ymktv_sun_store_wallet` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `money` decimal(10,2) NOT NULL,
  `note` varchar(20) NOT NULL,
  `type` int(11) NOT NULL COMMENT '1加2减',
  `time` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商家钱包明细';

-- ----------------------------
-- Table structure for ims_ymktv_sun_storepaylog
-- ----------------------------
DROP TABLE IF EXISTS `ims_ymktv_sun_storepaylog`;
CREATE TABLE `ims_ymktv_sun_storepaylog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL COMMENT '商家ID',
  `money` decimal(10,2) NOT NULL,
  `time` datetime NOT NULL,
  `uniacid` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商家入驻支付记录表';

-- ----------------------------
-- Table structure for ims_ymktv_sun_storetype
-- ----------------------------
DROP TABLE IF EXISTS `ims_ymktv_sun_storetype`;
CREATE TABLE `ims_ymktv_sun_storetype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(20) NOT NULL COMMENT '分类名称',
  `img` varchar(100) NOT NULL COMMENT '分类图片',
  `uniacid` int(11) NOT NULL,
  `num` int(11) NOT NULL COMMENT '排序',
  `money` decimal(10,2) NOT NULL,
  `state` int(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_ymktv_sun_storetype2
-- ----------------------------
DROP TABLE IF EXISTS `ims_ymktv_sun_storetype2`;
CREATE TABLE `ims_ymktv_sun_storetype2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `type_id` int(11) NOT NULL COMMENT '主分类id',
  `num` int(11) NOT NULL COMMENT '排序',
  `uniacid` int(11) NOT NULL,
  `state` int(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_ymktv_sun_system
-- ----------------------------
DROP TABLE IF EXISTS `ims_ymktv_sun_system`;
CREATE TABLE `ims_ymktv_sun_system` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `appid` varchar(100) NOT NULL COMMENT 'appid',
  `appsecret` varchar(200) NOT NULL COMMENT 'appsecret',
  `mchid` varchar(20) NOT NULL COMMENT '商户号',
  `wxkey` varchar(100) NOT NULL COMMENT '商户秘钥',
  `uniacid` varchar(50) NOT NULL,
  `url_name` varchar(20) NOT NULL COMMENT '网址名称',
  `details` text NOT NULL COMMENT '关于我们',
  `url_logo` varchar(100) NOT NULL COMMENT '网址logo',
  `bq_name` varchar(50) NOT NULL COMMENT '版权名称',
  `link_name` varchar(30) NOT NULL COMMENT '网站名称',
  `link_logo` varchar(100) NOT NULL COMMENT '网站logo',
  `support` varchar(20) NOT NULL COMMENT '技术支持',
  `bq_logo` varchar(100) NOT NULL,
  `color` varchar(20) NOT NULL COMMENT '小程序顶部栏颜色',
  `fontcolor` varchar(20) NOT NULL COMMENT '小程序顶部栏标题文字字体颜色',
  `tz_appid` varchar(30) NOT NULL,
  `tz_name` varchar(30) NOT NULL,
  `pt_name` varchar(30) NOT NULL COMMENT '平台名称',
  `tz_audit` int(11) NOT NULL COMMENT '帖子审核1.是 2否',
  `sj_audit` int(11) NOT NULL COMMENT '商家审核1.是 2否',
  `mapkey` varchar(200) NOT NULL,
  `tel` varchar(20) NOT NULL,
  `gd_key` varchar(100) DEFAULT NULL,
  `hb_sxf` int(11) NOT NULL,
  `tx_money` decimal(10,2) NOT NULL,
  `tx_sxf` int(11) NOT NULL,
  `tx_details` text NOT NULL,
  `rz_xuz` text NOT NULL,
  `ft_xuz` text NOT NULL,
  `fx_money` decimal(10,2) NOT NULL,
  `is_hhr` int(4) NOT NULL DEFAULT '2',
  `is_hbfl` int(4) NOT NULL DEFAULT '2',
  `is_zx` int(4) NOT NULL DEFAULT '2',
  `is_car` int(4) NOT NULL,
  `pc_xuz` text NOT NULL,
  `pc_money` decimal(10,2) NOT NULL,
  `is_sjrz` int(4) NOT NULL,
  `is_pcfw` int(4) NOT NULL,
  `total_num` int(11) NOT NULL,
  `is_goods` int(4) NOT NULL,
  `apiclient_cert` text NOT NULL,
  `apiclient_key` text NOT NULL,
  `is_openzx` int(4) NOT NULL,
  `is_hyset` int(4) NOT NULL,
  `is_tzopen` int(4) NOT NULL,
  `is_pageopen` int(11) NOT NULL,
  `cityname` varchar(50) NOT NULL,
  `is_tel` int(4) NOT NULL,
  `tx_mode` int(4) NOT NULL DEFAULT '1',
  `many_city` int(4) NOT NULL DEFAULT '2',
  `tx_type` int(4) NOT NULL DEFAULT '2',
  `is_hbzf` int(4) NOT NULL DEFAULT '1',
  `hb_img` varchar(100) NOT NULL,
  `tz_num` int(11) NOT NULL,
  `client_ip` varchar(30) NOT NULL,
  `hb_content` varchar(100) NOT NULL,
  `about_img` varchar(255) NOT NULL COMMENT '关于我们界面图片',
  `company_name` varchar(255) NOT NULL COMMENT '公司名称',
  `address` varchar(255) NOT NULL COMMENT '公司地址',
  `integral` varchar(45) NOT NULL,
  `is_jkopen` int(1) NOT NULL DEFAULT '1' COMMENT '是否开启集卡 1:开启 2:关闭',
  `bargain_price` varchar(45) DEFAULT NULL,
  `share_title` varchar(255) DEFAULT NULL,
  `is_bargainopen` int(1) DEFAULT NULL,
  `shop_img` varchar(255) DEFAULT NULL COMMENT '商家后台背景图',
  `integral_img` varchar(255) DEFAULT NULL,
  `js_font` varchar(120) DEFAULT NULL,
  `js_logo` varchar(255) DEFAULT NULL,
  `js_tel` varchar(45) DEFAULT NULL,
  `address_zb` varchar(80) DEFAULT NULL,
  `jie_tel` varchar(25) DEFAULT NULL,
  `drink_open` int(1) DEFAULT '0' COMMENT '1为打开，0为关闭',
  `poster_font` varchar(120) DEFAULT NULL COMMENT '海报概述',
  `poster_imgs` varchar(120) DEFAULT NULL COMMENT '海报图片',
  `qqkey` varchar(50) NOT NULL DEFAULT '0' COMMENT '腾讯地图key',
  `jithumb` varchar(200) DEFAULT NULL COMMENT '集卡背景图',
  `over_open` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否可预定时间已开始未结束的包间 0 关闭 1 开启',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_ymktv_sun_tab
-- ----------------------------
DROP TABLE IF EXISTS `ims_ymktv_sun_tab`;
CREATE TABLE `ims_ymktv_sun_tab` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `index` varchar(10) DEFAULT NULL COMMENT '首页文字',
  `indeximg` varchar(200) DEFAULT NULL,
  `indeximgs` varchar(200) DEFAULT NULL COMMENT '首页图标',
  `coupon` varchar(10) DEFAULT NULL COMMENT '优惠券',
  `couponimg` varchar(200) DEFAULT NULL,
  `couponimgs` varchar(200) DEFAULT NULL,
  `fans` varchar(10) DEFAULT NULL,
  `fansimg` varchar(200) DEFAULT NULL,
  `fansimgs` varchar(200) DEFAULT NULL,
  `mine` varchar(10) DEFAULT NULL,
  `mineimg` varchar(200) DEFAULT NULL,
  `mineimgs` varchar(200) DEFAULT NULL,
  `fontcolor` varchar(10) DEFAULT NULL,
  `fontcolored` varchar(10) DEFAULT NULL COMMENT '点击后字体颜色',
  `uniacid` int(11) DEFAULT NULL,
  `find` varchar(255) DEFAULT NULL,
  `findimg` varchar(200) DEFAULT NULL,
  `findimgs` varchar(200) DEFAULT NULL,
  `is_fbopen` int(1) DEFAULT '0' COMMENT '0为关闭发布，1为开启',
  `is_shopen` int(1) DEFAULT '0' COMMENT '0为关闭动态审核,1为开启',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for ims_ymktv_sun_teamwork
-- ----------------------------
DROP TABLE IF EXISTS `ims_ymktv_sun_teamwork`;
CREATE TABLE `ims_ymktv_sun_teamwork` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `uniacid` int(11) NOT NULL,
  `goodsId` int(11) NOT NULL COMMENT '商品id',
  `beginTime` datetime NOT NULL COMMENT '拼团开始时间',
  `endTime` datetime NOT NULL COMMENT '拼团结束时间',
  `peopleNum` int(11) DEFAULT '0' COMMENT '已经参与拼团人数',
  `user_img` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `user_id` varchar(255) DEFAULT NULL COMMENT '购买拼团商品用户的id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='拼团表';

-- ----------------------------
-- Table structure for ims_ymktv_sun_top
-- ----------------------------
DROP TABLE IF EXISTS `ims_ymktv_sun_top`;
CREATE TABLE `ims_ymktv_sun_top` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL COMMENT '1.一天2.一周3.一个月',
  `money` decimal(10,2) NOT NULL COMMENT '价格',
  `uniacid` int(11) NOT NULL,
  `num` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_ymktv_sun_trip
-- ----------------------------
DROP TABLE IF EXISTS `ims_ymktv_sun_trip`;
CREATE TABLE `ims_ymktv_sun_trip` (
  `id` int(32) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `unicaid` varchar(50) NOT NULL,
  `start_time` datetime DEFAULT NULL COMMENT '出发时间',
  `back_time` datetime DEFAULT NULL COMMENT '返程时间',
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `user_name` varchar(255) DEFAULT NULL COMMENT '用户名',
  `people_num` int(11) DEFAULT NULL COMMENT '本次旅行人数',
  `goods_id` int(11) NOT NULL COMMENT '购买的商品的id',
  `goods_name` varchar(255) DEFAULT NULL COMMENT '商品名称',
  `goods_price` decimal(10,0) DEFAULT NULL COMMENT '商品价格',
  `start_place` varchar(255) DEFAULT NULL COMMENT '行程起点',
  `end_place` varchar(255) DEFAULT NULL COMMENT '行程终点',
  `name` varchar(255) DEFAULT NULL COMMENT '姓名',
  `phone_num` varchar(50) DEFAULT NULL COMMENT '电话号码',
  `sum_pay` varchar(255) NOT NULL COMMENT '订单总额',
  `real_pay` varchar(255) NOT NULL COMMENT '实付金额',
  `trip_name` varchar(255) NOT NULL COMMENT '线路名称',
  `status` int(1) NOT NULL DEFAULT '0' COMMENT '状态 0:待付款 1:已付款',
  `time` datetime NOT NULL COMMENT '下单时间',
  `trip_num` varchar(20) NOT NULL COMMENT '行程单号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='行程表';

-- ----------------------------
-- Table structure for ims_ymktv_sun_type
-- ----------------------------
DROP TABLE IF EXISTS `ims_ymktv_sun_type`;
CREATE TABLE `ims_ymktv_sun_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(20) NOT NULL COMMENT '分类名称',
  `img` varchar(100) NOT NULL COMMENT '分类图片',
  `uniacid` int(11) NOT NULL COMMENT '小程序id',
  `num` int(11) NOT NULL,
  `money` decimal(10,2) NOT NULL,
  `state` int(4) NOT NULL DEFAULT '1',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_ymktv_sun_type2
-- ----------------------------
DROP TABLE IF EXISTS `ims_ymktv_sun_type2`;
CREATE TABLE `ims_ymktv_sun_type2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL COMMENT '分类名称',
  `type_id` int(11) NOT NULL COMMENT '主分类id',
  `num` int(11) NOT NULL,
  `uniacid` int(11) NOT NULL,
  `state` int(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_ymktv_sun_tzpaylog
-- ----------------------------
DROP TABLE IF EXISTS `ims_ymktv_sun_tzpaylog`;
CREATE TABLE `ims_ymktv_sun_tzpaylog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tz_id` int(11) NOT NULL,
  `money` decimal(10,2) NOT NULL,
  `time` datetime NOT NULL,
  `uniacid` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='帖子支付记录表';

-- ----------------------------
-- Table structure for ims_ymktv_sun_user
-- ----------------------------
DROP TABLE IF EXISTS `ims_ymktv_sun_user`;
CREATE TABLE `ims_ymktv_sun_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openid` varchar(100) NOT NULL COMMENT 'openid',
  `img` varchar(200) NOT NULL COMMENT '头像',
  `time` varchar(20) NOT NULL COMMENT '注册时间',
  `name` varchar(20) NOT NULL,
  `uniacid` int(11) NOT NULL,
  `money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `user_name` varchar(20) NOT NULL,
  `user_tel` varchar(20) NOT NULL,
  `user_address` varchar(200) NOT NULL,
  `commission` decimal(10,2) NOT NULL,
  `state` int(4) NOT NULL DEFAULT '1',
  `attention` varchar(255) DEFAULT NULL COMMENT '关注',
  `fans` varchar(255) DEFAULT NULL COMMENT '粉丝',
  `gender` int(11) NOT NULL DEFAULT '0' COMMENT '性别 0: 女 1:男',
  `collection` varchar(255) DEFAULT NULL,
  `telphone` varchar(20) NOT NULL COMMENT '手机号码',
  `parents_id` int(11) NOT NULL COMMENT '上级id',
  `parents_name` varchar(255) NOT NULL COMMENT '上级名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2229 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Table structure for ims_ymktv_sun_user_active
-- ----------------------------
DROP TABLE IF EXISTS `ims_ymktv_sun_user_active`;
CREATE TABLE `ims_ymktv_sun_user_active` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `uid` varchar(100) NOT NULL COMMENT 'openid',
  `num` int(11) DEFAULT NULL COMMENT '卡片数量',
  `img` varchar(150) DEFAULT NULL,
  `jikanum` int(11) unsigned DEFAULT NULL COMMENT '当前可抽奖次数',
  `active_id` int(11) DEFAULT NULL,
  `kapian_id` int(11) DEFAULT NULL,
  `sharenum` int(11) DEFAULT NULL COMMENT '可分享次数',
  `isprize` int(11) DEFAULT '0' COMMENT '默认为0,1为已领奖',
  `pan_time` varchar(40) DEFAULT NULL COMMENT '判断当天是否获取分享次数',
  `build_id` int(11) DEFAULT NULL COMMENT '门店id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=270 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for ims_ymktv_sun_user_balance
-- ----------------------------
DROP TABLE IF EXISTS `ims_ymktv_sun_user_balance`;
CREATE TABLE `ims_ymktv_sun_user_balance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `openid` varchar(80) DEFAULT NULL,
  `uniacid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for ims_ymktv_sun_user_bargain
-- ----------------------------
DROP TABLE IF EXISTS `ims_ymktv_sun_user_bargain`;
CREATE TABLE `ims_ymktv_sun_user_bargain` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openid` varchar(100) DEFAULT NULL,
  `gid` int(11) DEFAULT NULL,
  `mch_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `now_price` decimal(10,2) DEFAULT NULL,
  `uniacid` int(11) DEFAULT NULL,
  `add_time` int(11) DEFAULT NULL,
  `kanjia` decimal(10,2) DEFAULT NULL,
  `iskan` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for ims_ymktv_sun_user_coupon
-- ----------------------------
DROP TABLE IF EXISTS `ims_ymktv_sun_user_coupon`;
CREATE TABLE `ims_ymktv_sun_user_coupon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `store_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `coupon_id` int(11) NOT NULL COMMENT '优惠券id',
  `coupon_auto_send_id` int(11) NOT NULL DEFAULT '0' COMMENT '自动发放id',
  `begin_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '有效期开始时间',
  `end_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '有效期结束时间',
  `is_expire` smallint(1) NOT NULL DEFAULT '0' COMMENT '是否已过期：0=未过期，1=已过期',
  `is_use` smallint(1) NOT NULL DEFAULT '0' COMMENT '是否已使用：0=未使用，1=已使用',
  `is_delete` smallint(6) NOT NULL DEFAULT '0' COMMENT '是否已删除 0:未删除 1:已删除',
  `addtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '领取时间',
  `type` smallint(6) DEFAULT '0' COMMENT '领取类型 0--平台发放 1--自动发放 2--领券中心领取',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户-优惠券关系';

-- ----------------------------
-- Table structure for ims_ymktv_sun_userformid
-- ----------------------------
DROP TABLE IF EXISTS `ims_ymktv_sun_userformid`;
CREATE TABLE `ims_ymktv_sun_userformid` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `form_id` varchar(50) NOT NULL COMMENT 'form_id',
  `time` datetime NOT NULL,
  `uniacid` varchar(50) NOT NULL,
  `openid` varchar(50) NOT NULL COMMENT 'openid',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='formid表';

-- ----------------------------
-- Table structure for ims_ymktv_sun_vip_open
-- ----------------------------
DROP TABLE IF EXISTS `ims_ymktv_sun_vip_open`;
CREATE TABLE `ims_ymktv_sun_vip_open` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT NULL,
  `vip_open` int(1) DEFAULT NULL,
  `room_dis` varchar(10) DEFAULT NULL COMMENT '包厢折扣',
  `drink_dis` varchar(10) DEFAULT NULL COMMENT '酒水折扣',
  `vip_details` text COMMENT '会员福利描述',
  `vip_pic` varchar(255) NOT NULL COMMENT 'vip背景图',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for ims_ymktv_sun_vipka
-- ----------------------------
DROP TABLE IF EXISTS `ims_ymktv_sun_vipka`;
CREATE TABLE `ims_ymktv_sun_vipka` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vip_term` int(11) DEFAULT NULL,
  `vip_price` decimal(10,2) DEFAULT NULL,
  `uniacid` int(11) DEFAULT NULL,
  `vip_title` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '标题',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态，1启用，0不启用',
  `vip_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '类型，按月还是按天，0按天，1按月',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for ims_ymktv_sun_vipopen
-- ----------------------------
DROP TABLE IF EXISTS `ims_ymktv_sun_vipopen`;
CREATE TABLE `ims_ymktv_sun_vipopen` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `start_time` varchar(45) DEFAULT NULL,
  `end_time` varchar(45) DEFAULT NULL,
  `uniacid` int(11) DEFAULT NULL,
  `openid` varchar(120) DEFAULT NULL COMMENT '用户id',
  `isopen` int(1) DEFAULT NULL COMMENT '1为已开通，0为已过期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for ims_ymktv_sun_vipwelfare
-- ----------------------------
DROP TABLE IF EXISTS `ims_ymktv_sun_vipwelfare`;
CREATE TABLE `ims_ymktv_sun_vipwelfare` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `welfare` varchar(45) DEFAULT NULL COMMENT '福利',
  `wel_img` varchar(120) DEFAULT NULL COMMENT '福利图标',
  `uniacid` int(11) DEFAULT NULL,
  `addtime` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for ims_ymktv_sun_wineset
-- ----------------------------
DROP TABLE IF EXISTS `ims_ymktv_sun_wineset`;
CREATE TABLE `ims_ymktv_sun_wineset` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wine_num` varchar(11) DEFAULT NULL,
  `day_num` varchar(11) DEFAULT NULL,
  `uniacid` int(11) DEFAULT NULL,
  `details` text CHARACTER SET utf8 COMMENT '存酒说明',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for ims_ymktv_sun_winindex
-- ----------------------------
DROP TABLE IF EXISTS `ims_ymktv_sun_winindex`;
CREATE TABLE `ims_ymktv_sun_winindex` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `img1` varchar(255) DEFAULT NULL,
  `img2` varchar(255) DEFAULT NULL,
  `img3` varchar(255) DEFAULT NULL,
  `path1` varchar(120) DEFAULT NULL,
  `path2` varchar(120) DEFAULT NULL,
  `path3` varchar(120) DEFAULT NULL,
  `uniacid` int(11) DEFAULT NULL,
  `is_open` int(1) NOT NULL DEFAULT '0' COMMENT '0为关闭，1为开启',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for ims_ymktv_sun_withdrawal
-- ----------------------------
DROP TABLE IF EXISTS `ims_ymktv_sun_withdrawal`;
CREATE TABLE `ims_ymktv_sun_withdrawal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) NOT NULL COMMENT '真实姓名',
  `username` varchar(100) NOT NULL COMMENT '账号',
  `type` int(11) NOT NULL COMMENT '1支付宝 2.微信 3.银行',
  `time` int(11) NOT NULL COMMENT '申请时间',
  `sh_time` int(11) NOT NULL COMMENT '审核时间',
  `state` int(11) NOT NULL COMMENT '1.待审核 2.通过  3.拒绝',
  `tx_cost` decimal(10,2) NOT NULL COMMENT '提现金额',
  `sj_cost` decimal(10,2) NOT NULL COMMENT '实际金额',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `uniacid` int(11) NOT NULL,
  `method` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_ymktv_sun_yellowpaylog
-- ----------------------------
DROP TABLE IF EXISTS `ims_ymktv_sun_yellowpaylog`;
CREATE TABLE `ims_ymktv_sun_yellowpaylog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hy_id` int(11) NOT NULL,
  `money` decimal(10,2) NOT NULL,
  `time` datetime NOT NULL,
  `uniacid` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='黄页支付记录表';

-- ----------------------------
-- Table structure for ims_ymktv_sun_yellowset
-- ----------------------------
DROP TABLE IF EXISTS `ims_ymktv_sun_yellowset`;
CREATE TABLE `ims_ymktv_sun_yellowset` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `days` int(11) NOT NULL COMMENT '入住天数',
  `money` decimal(10,2) NOT NULL,
  `num` int(11) NOT NULL,
  `uniacid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='黄页设置表';

-- ----------------------------
-- Table structure for ims_ymktv_sun_yellowstore
-- ----------------------------
DROP TABLE IF EXISTS `ims_ymktv_sun_yellowstore`;
CREATE TABLE `ims_ymktv_sun_yellowstore` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `logo` varchar(200) NOT NULL COMMENT 'logo图片',
  `company_name` varchar(100) NOT NULL COMMENT '公司名称',
  `company_address` varchar(200) NOT NULL COMMENT '公司地址',
  `type_id` int(11) NOT NULL COMMENT '二级分类',
  `link_tel` varchar(20) NOT NULL COMMENT '联系电话',
  `sort` int(11) NOT NULL COMMENT '排序',
  `rz_time` int(11) NOT NULL COMMENT '入住时间',
  `sh_time` int(11) NOT NULL COMMENT '审核时间',
  `state` int(4) NOT NULL COMMENT '1待,2通过,3拒绝',
  `rz_type` int(4) NOT NULL COMMENT '入驻类型',
  `time_over` int(4) NOT NULL COMMENT '1到期,2没到期',
  `uniacid` varchar(50) NOT NULL,
  `coordinates` varchar(50) NOT NULL COMMENT '坐标',
  `content` text NOT NULL COMMENT '简介',
  `imgs` varchar(500) NOT NULL COMMENT '多图',
  `views` int(11) NOT NULL,
  `tel2` varchar(20) NOT NULL,
  `cityname` varchar(50) NOT NULL,
  `dq_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_ymktv_sun_yjset
-- ----------------------------
DROP TABLE IF EXISTS `ims_ymktv_sun_yjset`;
CREATE TABLE `ims_ymktv_sun_yjset` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(4) NOT NULL DEFAULT '1' COMMENT '1统一模式,2分开模式',
  `typer` varchar(10) NOT NULL COMMENT '统一比例',
  `sjper` varchar(10) NOT NULL COMMENT '商家比例',
  `hyper` varchar(10) NOT NULL COMMENT '黄页比例',
  `pcper` varchar(10) NOT NULL COMMENT '拼车比例',
  `tzper` varchar(10) NOT NULL COMMENT '帖子比例',
  `uniacid` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='佣金比例表';

-- ----------------------------
-- Table structure for ims_ymktv_sun_yjtx
-- ----------------------------
DROP TABLE IF EXISTS `ims_ymktv_sun_yjtx`;
CREATE TABLE `ims_ymktv_sun_yjtx` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` int(11) NOT NULL COMMENT '账号id',
  `tx_type` int(4) NOT NULL COMMENT '提现方式 1,支付宝,2微信,3银联',
  `tx_cost` decimal(10,2) NOT NULL COMMENT '提现金额',
  `status` int(4) NOT NULL COMMENT '状态 1申请,2通过,3拒绝',
  `uniacid` varchar(50) NOT NULL,
  `cerated_time` datetime NOT NULL COMMENT '日期',
  `sj_cost` decimal(10,2) NOT NULL COMMENT '实际金额',
  `account` varchar(30) NOT NULL COMMENT '账户',
  `name` varchar(30) NOT NULL COMMENT '姓名',
  `sx_cost` decimal(10,2) NOT NULL COMMENT '手续费',
  `time` datetime NOT NULL COMMENT '审核时间',
  `is_del` int(4) NOT NULL DEFAULT '1' COMMENT '1正常,2删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_ymktv_sun_youhui
-- ----------------------------
DROP TABLE IF EXISTS `ims_ymktv_sun_youhui`;
CREATE TABLE `ims_ymktv_sun_youhui` (
  `yid` int(11) NOT NULL AUTO_INCREMENT,
  `y_name` text NOT NULL,
  `y_cost` varchar(80) NOT NULL,
  `y_price` varchar(80) NOT NULL,
  `imgs` text NOT NULL,
  `y_details` text NOT NULL,
  `y_time` varchar(45) NOT NULL,
  `uniacid` int(11) NOT NULL,
  PRIMARY KEY (`yid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for ims_ymktv_sun_zan
-- ----------------------------
DROP TABLE IF EXISTS `ims_ymktv_sun_zan`;
CREATE TABLE `ims_ymktv_sun_zan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `uniacid` int(11) NOT NULL,
  `expert_id` int(11) NOT NULL COMMENT '达人圈id',
  `user_id` varchar(120) NOT NULL COMMENT '点赞用户',
  `time` datetime NOT NULL COMMENT '点赞时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC COMMENT='点赞表';

-- ----------------------------
-- Table structure for ims_ymktv_sun_zx
-- ----------------------------
DROP TABLE IF EXISTS `ims_ymktv_sun_zx`;
CREATE TABLE `ims_ymktv_sun_zx` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_id` int(11) NOT NULL COMMENT '分类ID',
  `user_id` int(11) NOT NULL COMMENT '发布人ID',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `content` text NOT NULL COMMENT '内容',
  `time` datetime NOT NULL,
  `yd_num` int(11) NOT NULL COMMENT '阅读数量',
  `pl_num` int(11) NOT NULL COMMENT '评论数量',
  `uniacid` varchar(50) NOT NULL,
  `imgs` text NOT NULL COMMENT '图片',
  `state` int(4) NOT NULL,
  `sh_time` datetime NOT NULL,
  `type` int(4) NOT NULL,
  `cityname` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_ymktv_sun_zx_assess
-- ----------------------------
DROP TABLE IF EXISTS `ims_ymktv_sun_zx_assess`;
CREATE TABLE `ims_ymktv_sun_zx_assess` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `zx_id` int(4) NOT NULL,
  `score` int(11) NOT NULL,
  `content` text NOT NULL,
  `img` varchar(500) NOT NULL,
  `cerated_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `uniacid` varchar(50) NOT NULL,
  `status` int(4) NOT NULL,
  `reply` text NOT NULL,
  `reply_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_ymktv_sun_zx_type
-- ----------------------------
DROP TABLE IF EXISTS `ims_ymktv_sun_zx_type`;
CREATE TABLE `ims_ymktv_sun_zx_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(100) NOT NULL COMMENT '分类名称',
  `icon` varchar(100) NOT NULL COMMENT '图标',
  `sort` int(4) NOT NULL COMMENT '排序',
  `time` datetime NOT NULL COMMENT '时间',
  `uniacid` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_ymktv_sun_zx_zj
-- ----------------------------
DROP TABLE IF EXISTS `ims_ymktv_sun_zx_zj`;
CREATE TABLE `ims_ymktv_sun_zx_zj` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `zx_id` int(11) NOT NULL COMMENT '资讯ID',
  `user_id` int(11) NOT NULL COMMENT '用户ID',
  `uniacid` varchar(50) NOT NULL,
  `time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='资讯足迹';
