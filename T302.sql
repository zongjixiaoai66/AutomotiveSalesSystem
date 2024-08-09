/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t302`;
CREATE DATABASE IF NOT EXISTS `t302` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t302`;

DROP TABLE IF EXISTS `address`;
CREATE TABLE IF NOT EXISTS `address` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int NOT NULL COMMENT '创建用户',
  `address_name` varchar(200) NOT NULL COMMENT '收货人 ',
  `address_phone` varchar(200) NOT NULL COMMENT '电话 ',
  `address_dizhi` varchar(200) NOT NULL COMMENT '地址 ',
  `isdefault_types` int NOT NULL COMMENT '是否默认地址 ',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='收货地址';

DELETE FROM `address`;
INSERT INTO `address` (`id`, `yonghu_id`, `address_name`, `address_phone`, `address_dizhi`, `isdefault_types`, `insert_time`, `update_time`, `create_time`) VALUES
	(1, 1, '收货人1', '17703786901', '地址1', 1, '2022-04-12 11:20:36', '2022-04-12 11:20:36', '2022-04-12 11:20:36'),
	(2, 2, '收货人2', '17703786902', '地址2', 1, '2022-04-12 11:20:36', '2022-04-12 11:20:36', '2022-04-12 11:20:36'),
	(3, 1, '收货人3', '17703786903', '地址3', 1, '2022-04-12 11:20:36', '2022-04-12 11:20:36', '2022-04-12 11:20:36'),
	(4, 3, '收货人4', '17703786904', '地址4', 1, '2022-04-12 11:20:36', '2022-04-12 11:20:36', '2022-04-12 11:20:36'),
	(5, 1, '收货人5', '17703786905', '地址5', 2, '2022-04-12 11:20:36', '2022-04-13 01:38:04', '2022-04-12 11:20:36');

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int DEFAULT NULL COMMENT '所属用户',
  `qiche_id` int DEFAULT NULL COMMENT '汽车',
  `buy_number` int DEFAULT NULL COMMENT '购买数量',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='购物车';

DELETE FROM `cart`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, '轮播图1', 'http://localhost:8080/qichexiaoshouc/upload/config1.jpg'),
	(2, '轮播图2', 'http://localhost:8080/qichexiaoshouc/upload/config2.jpg'),
	(3, '轮播图3', 'http://localhost:8080/qichexiaoshouc/upload/config3.jpg');

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb3 COMMENT='字典';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(1, 'isdefault_types', '是否默认地址', 1, '否', NULL, NULL, '2022-03-28 07:27:54'),
	(2, 'isdefault_types', '是否默认地址', 2, '是', NULL, NULL, '2022-03-28 07:27:54'),
	(3, 'shangxia_types', '上下架', 1, '上架', NULL, NULL, '2022-03-28 07:27:54'),
	(4, 'shangxia_types', '上下架', 2, '下架', NULL, NULL, '2022-03-28 07:27:54'),
	(5, 'qiche_types', '汽车类型', 1, '汽车类型1', NULL, NULL, '2022-03-28 07:27:54'),
	(6, 'qiche_types', '汽车类型', 2, '汽车类型2', NULL, NULL, '2022-03-28 07:27:54'),
	(7, 'qiche_types', '汽车类型', 3, '汽车类型3', NULL, NULL, '2022-03-28 07:27:54'),
	(8, 'qiche_order_types', '订单类型', 1, '已支付', NULL, NULL, '2022-03-28 07:27:54'),
	(9, 'qiche_order_types', '订单类型', 2, '退款', NULL, NULL, '2022-03-28 07:27:54'),
	(10, 'qiche_order_types', '订单类型', 3, '已发货', NULL, NULL, '2022-03-28 07:27:54'),
	(11, 'qiche_order_types', '订单类型', 4, '已收货', NULL, NULL, '2022-03-28 07:27:54'),
	(12, 'qiche_order_types', '订单类型', 5, '已评价', NULL, NULL, '2022-03-28 07:27:54'),
	(13, 'qiche_order_payment_types', '订单支付类型', 1, '现金', NULL, NULL, '2022-03-28 07:27:54'),
	(14, 'sex_types', '性别类型', 1, '男', NULL, NULL, '2022-03-28 07:27:54'),
	(15, 'sex_types', '性别类型', 2, '女', NULL, NULL, '2022-03-28 07:27:54'),
	(16, 'news_types', '公告类型', 1, '公告类型1', NULL, NULL, '2022-03-28 07:27:54'),
	(17, 'news_types', '公告类型', 2, '公告类型2', NULL, NULL, '2022-03-28 07:27:54'),
	(18, 'news_types', '公告类型', 3, '公告类型3', NULL, NULL, '2022-03-28 07:27:54'),
	(19, 'forum_state_types', '帖子状态', 1, '发帖', NULL, NULL, '2022-03-28 07:27:54'),
	(20, 'forum_state_types', '帖子状态', 2, '回帖', NULL, NULL, '2022-03-28 07:27:54'),
	(21, 'qiche_shijia_order_yesno_types', '预定审核', 1, '审核中', NULL, NULL, '2022-04-12 11:20:16'),
	(22, 'qiche_shijia_order_yesno_types', '预定审核', 2, '通过', NULL, NULL, '2022-04-12 11:20:16'),
	(23, 'qiche_shijia_order_yesno_types', '预定审核', 3, '拒绝', NULL, NULL, '2022-04-12 11:20:16');

DROP TABLE IF EXISTS `forum`;
CREATE TABLE IF NOT EXISTS `forum` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `users_id` int DEFAULT NULL COMMENT '管理员',
  `forum_content` text COMMENT '发布内容',
  `super_ids` int DEFAULT NULL COMMENT '父id',
  `forum_state_types` int DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COMMENT='论坛';

DELETE FROM `forum`;
INSERT INTO `forum` (`id`, `forum_name`, `yonghu_id`, `users_id`, `forum_content`, `super_ids`, `forum_state_types`, `insert_time`, `update_time`, `create_time`) VALUES
	(1, '帖子标题1', 1, NULL, '发布内容1', NULL, 1, '2022-04-12 11:20:36', '2022-04-12 11:20:36', '2022-04-12 11:20:36'),
	(2, '帖子标题2', 3, NULL, '发布内容2', NULL, 1, '2022-04-12 11:20:36', '2022-04-12 11:20:36', '2022-04-12 11:20:36'),
	(3, '帖子标题3', 2, NULL, '发布内容3', NULL, 1, '2022-04-12 11:20:36', '2022-04-12 11:20:36', '2022-04-12 11:20:36'),
	(4, '帖子标题4', 2, NULL, '发布内容4', NULL, 1, '2022-04-12 11:20:36', '2022-04-12 11:20:36', '2022-04-12 11:20:36'),
	(5, '帖子标题5', 2, NULL, '发布内容5', NULL, 1, '2022-04-12 11:20:36', '2022-04-12 11:20:36', '2022-04-12 11:20:36'),
	(6, NULL, 1, NULL, '评论11111', 5, 2, '2022-04-13 01:37:50', NULL, '2022-04-13 01:37:50'),
	(7, NULL, NULL, 1, '评论222222', 5, 2, '2022-04-13 01:38:35', NULL, '2022-04-13 01:38:35');

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `news_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='公告信息';

DELETE FROM `news`;
INSERT INTO `news` (`id`, `news_name`, `news_types`, `news_photo`, `insert_time`, `news_content`, `create_time`) VALUES
	(1, '公告标题1', 3, 'http://localhost:8080/qichexiaoshouc/upload/news1.jpg', '2022-04-12 11:20:36', '公告详情1', '2022-04-12 11:20:36'),
	(2, '公告标题2', 2, 'http://localhost:8080/qichexiaoshouc/upload/news2.jpg', '2022-04-12 11:20:36', '公告详情2', '2022-04-12 11:20:36'),
	(3, '公告标题3', 3, 'http://localhost:8080/qichexiaoshouc/upload/news3.jpg', '2022-04-12 11:20:36', '公告详情3', '2022-04-12 11:20:36'),
	(4, '公告标题4', 1, 'http://localhost:8080/qichexiaoshouc/upload/news4.jpg', '2022-04-12 11:20:36', '公告详情4', '2022-04-12 11:20:36'),
	(5, '公告标题5', 1, 'http://localhost:8080/qichexiaoshouc/upload/news5.jpg', '2022-04-12 11:20:36', '公告详情5', '2022-04-12 11:20:36');

DROP TABLE IF EXISTS `qiche`;
CREATE TABLE IF NOT EXISTS `qiche` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `qiche_name` varchar(200) DEFAULT NULL COMMENT '汽车名称  Search111 ',
  `qiche_photo` varchar(200) DEFAULT NULL COMMENT '汽车照片',
  `qiche_types` int DEFAULT NULL COMMENT '汽车类型 Search111',
  `qiche_kucun_number` int DEFAULT NULL COMMENT '汽车库存',
  `qiche_old_money` decimal(10,2) DEFAULT NULL COMMENT '汽车原价 ',
  `qiche_new_money` decimal(10,2) DEFAULT NULL COMMENT '现价',
  `qiche_clicknum` int DEFAULT NULL COMMENT '点击次数 ',
  `shangxia_types` int DEFAULT NULL COMMENT '是否上架 ',
  `qiche_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `qiche_content` text COMMENT '汽车简介 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='汽车';

DELETE FROM `qiche`;
INSERT INTO `qiche` (`id`, `qiche_name`, `qiche_photo`, `qiche_types`, `qiche_kucun_number`, `qiche_old_money`, `qiche_new_money`, `qiche_clicknum`, `shangxia_types`, `qiche_delete`, `qiche_content`, `create_time`) VALUES
	(1, '汽车名称1', 'http://localhost:8080/qichexiaoshouc/upload/qiche1.jpg', 2, 101, 890.68, 180.01, 342, 1, 1, '汽车简介1', '2022-04-12 11:20:36'),
	(2, '汽车名称2', 'http://localhost:8080/qichexiaoshouc/upload/qiche2.jpg', 1, 102, 821.69, 389.37, 101, 1, 1, '汽车简介2', '2022-04-12 11:20:36'),
	(3, '汽车名称3', 'http://localhost:8080/qichexiaoshouc/upload/qiche3.jpg', 1, 103, 543.45, 109.05, 120, 1, 1, '汽车简介3', '2022-04-12 11:20:36'),
	(4, '汽车名称4', 'http://localhost:8080/qichexiaoshouc/upload/qiche4.jpg', 2, 99, 764.83, 308.47, 412, 1, 1, '汽车简介4', '2022-04-12 11:20:36'),
	(5, '汽车名称5', 'http://localhost:8080/qichexiaoshouc/upload/qiche5.jpg', 1, 95, 662.42, 138.58, 202, 1, 1, '汽车简介5', '2022-04-12 11:20:36');

DROP TABLE IF EXISTS `qiche_commentback`;
CREATE TABLE IF NOT EXISTS `qiche_commentback` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `qiche_id` int DEFAULT NULL COMMENT '汽车',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `qiche_commentback_text` text COMMENT '评价内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='汽车评价';

DELETE FROM `qiche_commentback`;
INSERT INTO `qiche_commentback` (`id`, `qiche_id`, `yonghu_id`, `qiche_commentback_text`, `insert_time`, `reply_text`, `update_time`, `create_time`) VALUES
	(1, 1, 2, '评价内容1', '2022-04-12 11:20:36', '回复信息1', '2022-04-12 11:20:36', '2022-04-12 11:20:36'),
	(2, 2, 2, '评价内容2', '2022-04-12 11:20:36', '回复信息2', '2022-04-12 11:20:36', '2022-04-12 11:20:36'),
	(3, 3, 1, '评价内容3', '2022-04-12 11:20:36', '回复信息3', '2022-04-12 11:20:36', '2022-04-12 11:20:36'),
	(4, 4, 3, '评价内容4', '2022-04-12 11:20:36', '回复信息4', '2022-04-12 11:20:36', '2022-04-12 11:20:36'),
	(5, 5, 3, '评价内容5', '2022-04-12 11:20:36', '回复信息5', '2022-04-12 11:20:36', '2022-04-12 11:20:36'),
	(6, 4, 1, '购买完成后可评论111111', '2022-04-13 01:39:50', '管理回复', '2022-04-13 01:40:11', '2022-04-13 01:39:50');

DROP TABLE IF EXISTS `qiche_order`;
CREATE TABLE IF NOT EXISTS `qiche_order` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `qiche_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单号',
  `address_id` int DEFAULT NULL COMMENT '收货地址 ',
  `qiche_id` int DEFAULT NULL COMMENT '汽车',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `buy_number` int DEFAULT NULL COMMENT '购买数量',
  `qiche_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格',
  `qiche_order_types` int DEFAULT NULL COMMENT '订单类型',
  `qiche_order_payment_types` int DEFAULT NULL COMMENT '支付类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='汽车订单';

DELETE FROM `qiche_order`;
INSERT INTO `qiche_order` (`id`, `qiche_order_uuid_number`, `address_id`, `qiche_id`, `yonghu_id`, `buy_number`, `qiche_order_true_price`, `qiche_order_types`, `qiche_order_payment_types`, `insert_time`, `create_time`) VALUES
	(1, '1649813890294', 5, 5, 1, 1, 138.58, 2, 1, '2022-04-13 01:38:10', '2022-04-13 01:38:10'),
	(2, '1649813890294', 5, 4, 1, 4, 1233.88, 5, 1, '2022-04-13 01:38:10', '2022-04-13 01:38:10'),
	(3, '1722318341232', 5, 4, 1, 1, 308.47, 1, 1, '2024-07-30 05:45:41', '2024-07-30 05:45:41');

DROP TABLE IF EXISTS `qiche_shijia`;
CREATE TABLE IF NOT EXISTS `qiche_shijia` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `qiche_shijia_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '编号',
  `qiche_id` int DEFAULT NULL COMMENT '汽车',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `qiche_shijia_order_time` timestamp NULL DEFAULT NULL COMMENT '预定时间',
  `qiche_shijia_order_yesno_types` int DEFAULT NULL COMMENT '预定审核',
  `qiche_shijia_order_yesno_text` text COMMENT '审核结果',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COMMENT='汽车试驾预定';

DELETE FROM `qiche_shijia`;
INSERT INTO `qiche_shijia` (`id`, `qiche_shijia_order_uuid_number`, `qiche_id`, `yonghu_id`, `qiche_shijia_order_time`, `qiche_shijia_order_yesno_types`, `qiche_shijia_order_yesno_text`, `insert_time`, `create_time`) VALUES
	(1, '1649813769878', 5, 1, '2022-04-20 20:00:00', NULL, NULL, '2022-04-13 01:36:16', '2022-04-13 01:36:16'),
	(2, '1649813846562', 5, 1, '2022-04-14 02:00:00', NULL, NULL, '2022-04-13 01:37:33', '2022-04-13 01:37:33');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'admin', 'users', '管理员', 'p5bb7hus4h3ul5e63juxpuzjz3wxeuxu', '2022-04-12 12:31:10', '2024-07-30 06:43:51'),
	(2, 1, 'a1', 'yonghu', '用户', '2zlga6e00v29awvszld0u5ajk2umts4p', '2022-04-12 12:35:11', '2024-07-30 06:45:05');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2022-04-30 16:00:00');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `username`, `password`, `yonghu_name`, `yonghu_phone`, `yonghu_id_number`, `yonghu_photo`, `sex_types`, `yonghu_email`, `new_money`, `create_time`) VALUES
	(1, '用户1', '123456', '用户姓名1', '17703786901', '410224199610232001', 'http://localhost:8080/qichexiaoshouc/upload/yonghu1.jpg', 2, '1@qq.com', 9209.75, '2022-04-12 11:20:36'),
	(2, '用户2', '123456', '用户姓名2', '17703786902', '410224199610232002', 'http://localhost:8080/qichexiaoshouc/upload/yonghu2.jpg', 2, '2@qq.com', 470.72, '2022-04-12 11:20:36'),
	(3, '用户3', '123456', '用户姓名3', '17703786903', '410224199610232003', 'http://localhost:8080/qichexiaoshouc/upload/yonghu3.jpg', 2, '3@qq.com', 511.67, '2022-04-12 11:20:36');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
