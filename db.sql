/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssm39lil
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssm39lil` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssm39lil`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='地址';

/*Data for the table `address` */

insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (1,'2021-04-12 10:10:24',1,'宇宙银河系金星1号','金某','13823888881','是'),(2,'2021-04-12 10:10:24',2,'宇宙银河系木星1号','木某','13823888882','是'),(3,'2021-04-12 10:10:24',3,'宇宙银河系水星1号','水某','13823888883','是'),(4,'2021-04-12 10:10:24',4,'宇宙银河系火星1号','火某','13823888884','是'),(5,'2021-04-12 10:10:24',5,'宇宙银河系土星1号','土某','13823888885','是'),(6,'2021-04-12 10:10:24',6,'宇宙银河系月球1号','月某','13823888886','是');

/*Table structure for table `beisaijifenbang` */

DROP TABLE IF EXISTS `beisaijifenbang`;

CREATE TABLE `beisaijifenbang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `saishileixing` varchar(200) DEFAULT NULL COMMENT '赛事类型',
  `qiudui` varchar(200) DEFAULT NULL COMMENT '球队',
  `changci` varchar(200) DEFAULT NULL COMMENT '场次',
  `sheng` int(11) DEFAULT NULL COMMENT '胜',
  `ping` int(11) DEFAULT NULL COMMENT '平',
  `fu` int(11) DEFAULT NULL COMMENT '负',
  `jinqiu` int(11) DEFAULT NULL COMMENT '进球',
  `shiqiu` int(11) DEFAULT NULL COMMENT '失球',
  `jingshiqiu` int(11) DEFAULT NULL COMMENT '净失球',
  `jifen` int(11) DEFAULT NULL COMMENT '积分',
  `qiuduizhaopian` varchar(200) DEFAULT NULL COMMENT '球队照片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='杯赛积分榜';

/*Data for the table `beisaijifenbang` */

insert  into `beisaijifenbang`(`id`,`addtime`,`saishileixing`,`qiudui`,`changci`,`sheng`,`ping`,`fu`,`jinqiu`,`shiqiu`,`jingshiqiu`,`jifen`,`qiuduizhaopian`) values (71,'2021-04-12 10:10:24','赛事类型1','球队1','场次1',1,1,1,1,1,1,10000,'http://localhost:8080/ssm39lil/upload/beisaijifenbang_qiuduizhaopian1.jpg'),(72,'2021-04-12 10:10:24','赛事类型2','球队2','场次2',2,2,2,2,2,2,10000,'http://localhost:8080/ssm39lil/upload/beisaijifenbang_qiuduizhaopian2.jpg'),(73,'2021-04-12 10:10:24','赛事类型3','球队3','场次3',3,3,3,3,3,3,10000,'http://localhost:8080/ssm39lil/upload/beisaijifenbang_qiuduizhaopian3.jpg'),(74,'2021-04-12 10:10:24','赛事类型4','球队4','场次4',4,4,4,4,4,4,10000,'http://localhost:8080/ssm39lil/upload/beisaijifenbang_qiuduizhaopian4.jpg'),(75,'2021-04-12 10:10:24','赛事类型5','球队5','场次5',5,5,5,5,5,5,10000,'http://localhost:8080/ssm39lil/upload/beisaijifenbang_qiuduizhaopian5.jpg'),(76,'2021-04-12 10:10:24','赛事类型6','球队6','场次6',6,6,6,6,6,6,10000,'http://localhost:8080/ssm39lil/upload/beisaijifenbang_qiuduizhaopian6.jpg');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'zuqiuzhoubian' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='购物车表';

/*Data for the table `cart` */

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssm39lil/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssm39lil/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssm39lil/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `jiaolian` */

DROP TABLE IF EXISTS `jiaolian`;

CREATE TABLE `jiaolian` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `julebumingcheng` varchar(200) DEFAULT NULL COMMENT '俱乐部名称',
  `guojia` varchar(200) DEFAULT NULL COMMENT '国家',
  `jiaolianxingming` varchar(200) DEFAULT NULL COMMENT '教练姓名',
  `jiaolianguoji` varchar(200) DEFAULT NULL COMMENT '教练国籍',
  `ruzhiriqi` date DEFAULT NULL COMMENT '入职日期',
  `jiaolianzhaopian` varchar(200) DEFAULT NULL COMMENT '教练照片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='教练';

/*Data for the table `jiaolian` */

insert  into `jiaolian`(`id`,`addtime`,`julebumingcheng`,`guojia`,`jiaolianxingming`,`jiaolianguoji`,`ruzhiriqi`,`jiaolianzhaopian`) values (31,'2021-04-12 10:10:24','俱乐部名称1','国家1','教练姓名1','教练国籍1','2021-04-12','http://localhost:8080/ssm39lil/upload/jiaolian_jiaolianzhaopian1.jpg'),(32,'2021-04-12 10:10:24','俱乐部名称2','国家2','教练姓名2','教练国籍2','2021-04-12','http://localhost:8080/ssm39lil/upload/jiaolian_jiaolianzhaopian2.jpg'),(33,'2021-04-12 10:10:24','俱乐部名称3','国家3','教练姓名3','教练国籍3','2021-04-12','http://localhost:8080/ssm39lil/upload/jiaolian_jiaolianzhaopian3.jpg'),(34,'2021-04-12 10:10:24','俱乐部名称4','国家4','教练姓名4','教练国籍4','2021-04-12','http://localhost:8080/ssm39lil/upload/jiaolian_jiaolianzhaopian4.jpg'),(35,'2021-04-12 10:10:24','俱乐部名称5','国家5','教练姓名5','教练国籍5','2021-04-12','http://localhost:8080/ssm39lil/upload/jiaolian_jiaolianzhaopian5.jpg'),(36,'2021-04-12 10:10:24','俱乐部名称6','国家6','教练姓名6','教练国籍6','2021-04-12','http://localhost:8080/ssm39lil/upload/jiaolian_jiaolianzhaopian6.jpg');

/*Table structure for table `liansaijifenbang` */

DROP TABLE IF EXISTS `liansaijifenbang`;

CREATE TABLE `liansaijifenbang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `saishileixing` varchar(200) DEFAULT NULL COMMENT '赛事类型',
  `qiudui` varchar(200) DEFAULT NULL COMMENT '球队',
  `changci` varchar(200) DEFAULT NULL COMMENT '场次',
  `sheng` int(11) DEFAULT NULL COMMENT '胜',
  `ping` int(11) DEFAULT NULL COMMENT '平',
  `fu` int(11) DEFAULT NULL COMMENT '负',
  `jinqiu` int(11) DEFAULT NULL COMMENT '进球',
  `shiqiu` int(11) DEFAULT NULL COMMENT '失球',
  `jingshiqiu` int(11) DEFAULT NULL COMMENT '净失球',
  `jifen` int(11) DEFAULT NULL COMMENT '积分',
  `qiuduizhaopian` varchar(200) DEFAULT NULL COMMENT '球队照片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='联赛积分榜';

/*Data for the table `liansaijifenbang` */

insert  into `liansaijifenbang`(`id`,`addtime`,`saishileixing`,`qiudui`,`changci`,`sheng`,`ping`,`fu`,`jinqiu`,`shiqiu`,`jingshiqiu`,`jifen`,`qiuduizhaopian`) values (61,'2021-04-12 10:10:24','赛事类型1','球队1','场次1',1,1,1,1,1,1,10000,'http://localhost:8080/ssm39lil/upload/liansaijifenbang_qiuduizhaopian1.jpg'),(62,'2021-04-12 10:10:24','赛事类型2','球队2','场次2',2,2,2,2,2,2,10000,'http://localhost:8080/ssm39lil/upload/liansaijifenbang_qiuduizhaopian2.jpg'),(63,'2021-04-12 10:10:24','赛事类型3','球队3','场次3',3,3,3,3,3,3,10000,'http://localhost:8080/ssm39lil/upload/liansaijifenbang_qiuduizhaopian3.jpg'),(64,'2021-04-12 10:10:24','赛事类型4','球队4','场次4',4,4,4,4,4,4,10000,'http://localhost:8080/ssm39lil/upload/liansaijifenbang_qiuduizhaopian4.jpg'),(65,'2021-04-12 10:10:24','赛事类型5','球队5','场次5',5,5,5,5,5,5,10000,'http://localhost:8080/ssm39lil/upload/liansaijifenbang_qiuduizhaopian5.jpg'),(66,'2021-04-12 10:10:24','赛事类型6','球队6','场次6',6,6,6,6,6,6,10000,'http://localhost:8080/ssm39lil/upload/liansaijifenbang_qiuduizhaopian6.jpg');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8 COMMENT='体育新闻';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (131,'2021-04-12 10:10:24','标题1','简介1','http://localhost:8080/ssm39lil/upload/news_picture1.jpg','内容1'),(132,'2021-04-12 10:10:24','标题2','简介2','http://localhost:8080/ssm39lil/upload/news_picture2.jpg','内容2'),(133,'2021-04-12 10:10:24','标题3','简介3','http://localhost:8080/ssm39lil/upload/news_picture3.jpg','内容3'),(134,'2021-04-12 10:10:24','标题4','简介4','http://localhost:8080/ssm39lil/upload/news_picture4.jpg','内容4'),(135,'2021-04-12 10:10:24','标题5','简介5','http://localhost:8080/ssm39lil/upload/news_picture5.jpg','内容5'),(136,'2021-04-12 10:10:24','标题6','简介6','http://localhost:8080/ssm39lil/upload/news_picture6.jpg','内容6');

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'zuqiuzhoubian' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  `tel` varchar(200) DEFAULT NULL COMMENT '电话',
  `consignee` varchar(200) DEFAULT NULL COMMENT '收货人',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单';

/*Data for the table `orders` */

/*Table structure for table `qiuyuan` */

DROP TABLE IF EXISTS `qiuyuan`;

CREATE TABLE `qiuyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `julebumingcheng` varchar(200) DEFAULT NULL COMMENT '俱乐部名称',
  `guojia` varchar(200) DEFAULT NULL COMMENT '国家',
  `qiuyuanxingming` varchar(200) DEFAULT NULL COMMENT '球员姓名',
  `qiuyuanweizhi` varchar(200) DEFAULT NULL COMMENT '球员位置',
  `qiuyuanshengao` int(11) DEFAULT NULL COMMENT '球员身高',
  `qiuyuantizhong` int(11) DEFAULT NULL COMMENT '球员体重',
  `qiuyuanqiuling` int(11) DEFAULT NULL COMMENT '球员球龄',
  `qiuyuanguoji` varchar(200) DEFAULT NULL COMMENT '球员国籍',
  `qiuyuanzhaopian` varchar(200) DEFAULT NULL COMMENT '球员照片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='球员';

/*Data for the table `qiuyuan` */

insert  into `qiuyuan`(`id`,`addtime`,`julebumingcheng`,`guojia`,`qiuyuanxingming`,`qiuyuanweizhi`,`qiuyuanshengao`,`qiuyuantizhong`,`qiuyuanqiuling`,`qiuyuanguoji`,`qiuyuanzhaopian`) values (11,'2021-04-12 10:10:24','俱乐部名称1','国家1','球员姓名1','球员位置1',1,1,1,'球员国籍1','http://localhost:8080/ssm39lil/upload/qiuyuan_qiuyuanzhaopian1.jpg'),(12,'2021-04-12 10:10:24','俱乐部名称2','国家2','球员姓名2','球员位置2',2,2,2,'球员国籍2','http://localhost:8080/ssm39lil/upload/qiuyuan_qiuyuanzhaopian2.jpg'),(13,'2021-04-12 10:10:24','俱乐部名称3','国家3','球员姓名3','球员位置3',3,3,3,'球员国籍3','http://localhost:8080/ssm39lil/upload/qiuyuan_qiuyuanzhaopian3.jpg'),(14,'2021-04-12 10:10:24','俱乐部名称4','国家4','球员姓名4','球员位置4',4,4,4,'球员国籍4','http://localhost:8080/ssm39lil/upload/qiuyuan_qiuyuanzhaopian4.jpg'),(15,'2021-04-12 10:10:24','俱乐部名称5','国家5','球员姓名5','球员位置5',5,5,5,'球员国籍5','http://localhost:8080/ssm39lil/upload/qiuyuan_qiuyuanzhaopian5.jpg'),(16,'2021-04-12 10:10:24','俱乐部名称6','国家6','球员姓名6','球员位置6',6,6,6,'球员国籍6','http://localhost:8080/ssm39lil/upload/qiuyuan_qiuyuanzhaopian6.jpg');

/*Table structure for table `saishileixing` */

DROP TABLE IF EXISTS `saishileixing`;

CREATE TABLE `saishileixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='赛事类型';

/*Data for the table `saishileixing` */

insert  into `saishileixing`(`id`,`addtime`,`leixing`) values (51,'2021-04-12 10:10:24','类型1'),(52,'2021-04-12 10:10:24','类型2'),(53,'2021-04-12 10:10:24','类型3'),(54,'2021-04-12 10:10:24','类型4'),(55,'2021-04-12 10:10:24','类型5'),(56,'2021-04-12 10:10:24','类型6');

/*Table structure for table `saishiricheng` */

DROP TABLE IF EXISTS `saishiricheng`;

CREATE TABLE `saishiricheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `saishileixing` varchar(200) DEFAULT NULL COMMENT '赛事类型',
  `bisairiqi` date DEFAULT NULL COMMENT '比赛日期',
  `kaishishijian` datetime DEFAULT NULL COMMENT '开始时间',
  `jieshushijian` datetime DEFAULT NULL COMMENT '结束时间',
  `lunci` varchar(200) DEFAULT NULL COMMENT '轮次',
  `zhuangtai` varchar(200) DEFAULT NULL COMMENT '状态',
  `zhudui` varchar(200) DEFAULT NULL COMMENT '主队',
  `kedui` varchar(200) DEFAULT NULL COMMENT '客队',
  `saikuang` longtext COMMENT '赛况',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='赛事日程';

/*Data for the table `saishiricheng` */

insert  into `saishiricheng`(`id`,`addtime`,`saishileixing`,`bisairiqi`,`kaishishijian`,`jieshushijian`,`lunci`,`zhuangtai`,`zhudui`,`kedui`,`saikuang`,`zhaopian`) values (41,'2021-04-12 10:10:24','赛事类型1','2021-04-12','2021-04-12 10:10:24','2021-04-12 10:10:24','轮次1','以开赛','主队1','客队1','赛况1','http://localhost:8080/ssm39lil/upload/saishiricheng_zhaopian1.jpg'),(42,'2021-04-12 10:10:24','赛事类型2','2021-04-12','2021-04-12 10:10:24','2021-04-12 10:10:24','轮次2','以开赛','主队2','客队2','赛况2','http://localhost:8080/ssm39lil/upload/saishiricheng_zhaopian2.jpg'),(43,'2021-04-12 10:10:24','赛事类型3','2021-04-12','2021-04-12 10:10:24','2021-04-12 10:10:24','轮次3','以开赛','主队3','客队3','赛况3','http://localhost:8080/ssm39lil/upload/saishiricheng_zhaopian3.jpg'),(44,'2021-04-12 10:10:24','赛事类型4','2021-04-12','2021-04-12 10:10:24','2021-04-12 10:10:24','轮次4','以开赛','主队4','客队4','赛况4','http://localhost:8080/ssm39lil/upload/saishiricheng_zhaopian4.jpg'),(45,'2021-04-12 10:10:24','赛事类型5','2021-04-12','2021-04-12 10:10:24','2021-04-12 10:10:24','轮次5','以开赛','主队5','客队5','赛况5','http://localhost:8080/ssm39lil/upload/saishiricheng_zhaopian5.jpg'),(46,'2021-04-12 10:10:24','赛事类型6','2021-04-12','2021-04-12 10:10:24','2021-04-12 10:10:24','轮次6','以开赛','主队6','客队6','赛况6','http://localhost:8080/ssm39lil/upload/saishiricheng_zhaopian6.jpg');

/*Table structure for table `shangpinleixing` */

DROP TABLE IF EXISTS `shangpinleixing`;

CREATE TABLE `shangpinleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='商品类型';

/*Data for the table `shangpinleixing` */

insert  into `shangpinleixing`(`id`,`addtime`,`leixing`) values (91,'2021-04-12 10:10:24','类型1'),(92,'2021-04-12 10:10:24','类型2'),(93,'2021-04-12 10:10:24','类型3'),(94,'2021-04-12 10:10:24','类型4'),(95,'2021-04-12 10:10:24','类型5'),(96,'2021-04-12 10:10:24','类型6');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1618196147869,'11','yonghu','用户','l7j7o4h5zva9fauff537jea73l2smw01','2021-04-12 10:55:53','2021-04-12 11:55:54');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-12 10:10:24');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `jifen` float DEFAULT '0' COMMENT '积分',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1618196147870 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`,`zhaopian`,`jifen`,`money`) values (21,'2021-04-12 10:10:24','用户1','123456','姓名1','男','13823888881','773890001@qq.com','http://localhost:8080/ssm39lil/upload/yonghu_zhaopian1.jpg',10000,100),(22,'2021-04-12 10:10:24','用户2','123456','姓名2','男','13823888882','773890002@qq.com','http://localhost:8080/ssm39lil/upload/yonghu_zhaopian2.jpg',10000,100),(23,'2021-04-12 10:10:24','用户3','123456','姓名3','男','13823888883','773890003@qq.com','http://localhost:8080/ssm39lil/upload/yonghu_zhaopian3.jpg',10000,100),(24,'2021-04-12 10:10:24','用户4','123456','姓名4','男','13823888884','773890004@qq.com','http://localhost:8080/ssm39lil/upload/yonghu_zhaopian4.jpg',10000,100),(25,'2021-04-12 10:10:24','用户5','123456','姓名5','男','13823888885','773890005@qq.com','http://localhost:8080/ssm39lil/upload/yonghu_zhaopian5.jpg',10000,100),(26,'2021-04-12 10:10:24','用户6','123456','姓名6','男','13823888886','773890006@qq.com','http://localhost:8080/ssm39lil/upload/yonghu_zhaopian6.jpg',10000,100),(1618196147869,'2021-04-12 10:55:47','11','11','11','男',NULL,NULL,NULL,0,0);

/*Table structure for table `zuqiuzhoubian` */

DROP TABLE IF EXISTS `zuqiuzhoubian`;

CREATE TABLE `zuqiuzhoubian` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinjiage` int(11) DEFAULT NULL COMMENT '商品价格',
  `shangpinleixing` varchar(200) DEFAULT NULL COMMENT '商品类型',
  `shangpinjianjie` longtext COMMENT '商品简介',
  `shangpintupian` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `jifen` int(11) DEFAULT '-1' COMMENT '积分',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='足球周边';

/*Data for the table `zuqiuzhoubian` */

insert  into `zuqiuzhoubian`(`id`,`addtime`,`shangpinmingcheng`,`shangpinjiage`,`shangpinleixing`,`shangpinjianjie`,`shangpintupian`,`thumbsupnum`,`crazilynum`,`jifen`,`price`) values (81,'2021-04-12 10:10:24','商品名称1',1,'商品类型1','商品简介1','http://localhost:8080/ssm39lil/upload/zuqiuzhoubian_shangpintupian1.jpg',1,1,10000,99.9),(82,'2021-04-12 10:10:24','商品名称2',2,'商品类型2','商品简介2','http://localhost:8080/ssm39lil/upload/zuqiuzhoubian_shangpintupian2.jpg',2,2,10000,99.9),(83,'2021-04-12 10:10:24','商品名称3',3,'商品类型3','商品简介3','http://localhost:8080/ssm39lil/upload/zuqiuzhoubian_shangpintupian3.jpg',3,3,10000,99.9),(84,'2021-04-12 10:10:24','商品名称4',4,'商品类型4','商品简介4','http://localhost:8080/ssm39lil/upload/zuqiuzhoubian_shangpintupian4.jpg',4,4,10000,99.9),(85,'2021-04-12 10:10:24','商品名称5',5,'商品类型5','商品简介5','http://localhost:8080/ssm39lil/upload/zuqiuzhoubian_shangpintupian5.jpg',5,5,10000,99.9),(86,'2021-04-12 10:10:24','商品名称6',6,'商品类型6','商品简介6','http://localhost:8080/ssm39lil/upload/zuqiuzhoubian_shangpintupian6.jpg',6,6,10000,99.9);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
