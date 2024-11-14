/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssm0y726
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssm0y726` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssm0y726`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssm0y726/upload/picture1.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/ssm0y726/upload/picture2.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/ssm0y726/upload/picture3.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage',NULL);

/*Table structure for table `fangjianleixing` */

DROP TABLE IF EXISTS `fangjianleixing`;

CREATE TABLE `fangjianleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1621091402949 DEFAULT CHARSET=utf8 COMMENT='房间类型';

/*Data for the table `fangjianleixing` */

insert  into `fangjianleixing`(`id`,`addtime`,`leixing`) values (31,'2021-05-15 23:01:19','类型1');
insert  into `fangjianleixing`(`id`,`addtime`,`leixing`) values (32,'2021-05-15 23:01:19','类型2');
insert  into `fangjianleixing`(`id`,`addtime`,`leixing`) values (33,'2021-05-15 23:01:19','类型3');
insert  into `fangjianleixing`(`id`,`addtime`,`leixing`) values (34,'2021-05-15 23:01:19','类型4');
insert  into `fangjianleixing`(`id`,`addtime`,`leixing`) values (35,'2021-05-15 23:01:19','类型5');
insert  into `fangjianleixing`(`id`,`addtime`,`leixing`) values (36,'2021-05-15 23:01:19','类型6');
insert  into `fangjianleixing`(`id`,`addtime`,`leixing`) values (1621091157896,'2021-05-15 23:05:57','普通大床房');
insert  into `fangjianleixing`(`id`,`addtime`,`leixing`) values (1621091191772,'2021-05-15 23:06:31','豪华双床房');
insert  into `fangjianleixing`(`id`,`addtime`,`leixing`) values (1621091258156,'2021-05-15 23:07:37','豪华套房');
insert  into `fangjianleixing`(`id`,`addtime`,`leixing`) values (1621091289225,'2021-05-15 23:08:08','豪华大床房');
insert  into `fangjianleixing`(`id`,`addtime`,`leixing`) values (1621091377420,'2021-05-15 23:09:37','高级大床房');
insert  into `fangjianleixing`(`id`,`addtime`,`leixing`) values (1621091402948,'2021-05-15 23:10:02','普通双床房');

/*Table structure for table `fangjianxinxi` */

DROP TABLE IF EXISTS `fangjianxinxi`;

CREATE TABLE `fangjianxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fangjianbianhao` varchar(200) NOT NULL COMMENT '房间编号',
  `fangjianhao` varchar(200) NOT NULL COMMENT '房间号',
  `fangjianleixing` varchar(200) NOT NULL COMMENT '房间类型',
  `fangjianzhuangtai` varchar(200) DEFAULT NULL COMMENT '房间状态',
  `fangjianjiage` varchar(200) DEFAULT NULL COMMENT '房间价格',
  `fangjianmiaoshu` longtext COMMENT '房间描述',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `fangjianbianhao` (`fangjianbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1621091663631 DEFAULT CHARSET=utf8 COMMENT='房间信息';

/*Data for the table `fangjianxinxi` */

insert  into `fangjianxinxi`(`id`,`addtime`,`fangjianbianhao`,`fangjianhao`,`fangjianleixing`,`fangjianzhuangtai`,`fangjianjiage`,`fangjianmiaoshu`,`tupian`) values (21,'2021-05-15 23:01:19','房间编号1','房间号1','房间类型1','空房','房间价格1','房间描述1','http://localhost:8080/ssm0y726/upload/fangjianxinxi_tupian1.jpg');
insert  into `fangjianxinxi`(`id`,`addtime`,`fangjianbianhao`,`fangjianhao`,`fangjianleixing`,`fangjianzhuangtai`,`fangjianjiage`,`fangjianmiaoshu`,`tupian`) values (22,'2021-05-15 23:01:19','房间编号2','房间号2','房间类型2','空房','房间价格2','房间描述2','http://localhost:8080/ssm0y726/upload/fangjianxinxi_tupian2.jpg');
insert  into `fangjianxinxi`(`id`,`addtime`,`fangjianbianhao`,`fangjianhao`,`fangjianleixing`,`fangjianzhuangtai`,`fangjianjiage`,`fangjianmiaoshu`,`tupian`) values (23,'2021-05-15 23:01:19','房间编号3','房间号3','房间类型3','空房','房间价格3','房间描述3','http://localhost:8080/ssm0y726/upload/fangjianxinxi_tupian3.jpg');
insert  into `fangjianxinxi`(`id`,`addtime`,`fangjianbianhao`,`fangjianhao`,`fangjianleixing`,`fangjianzhuangtai`,`fangjianjiage`,`fangjianmiaoshu`,`tupian`) values (24,'2021-05-15 23:01:19','房间编号4','房间号4','房间类型4','空房','房间价格4','房间描述4','http://localhost:8080/ssm0y726/upload/fangjianxinxi_tupian4.jpg');
insert  into `fangjianxinxi`(`id`,`addtime`,`fangjianbianhao`,`fangjianhao`,`fangjianleixing`,`fangjianzhuangtai`,`fangjianjiage`,`fangjianmiaoshu`,`tupian`) values (25,'2021-05-15 23:01:19','房间编号5','房间号5','房间类型5','空房','房间价格5','房间描述5','http://localhost:8080/ssm0y726/upload/fangjianxinxi_tupian5.jpg');
insert  into `fangjianxinxi`(`id`,`addtime`,`fangjianbianhao`,`fangjianhao`,`fangjianleixing`,`fangjianzhuangtai`,`fangjianjiage`,`fangjianmiaoshu`,`tupian`) values (26,'2021-05-15 23:01:19','房间编号6','房间号6','房间类型6','空房','房间价格6','房间描述6','http://localhost:8080/ssm0y726/upload/fangjianxinxi_tupian6.jpg');
insert  into `fangjianxinxi`(`id`,`addtime`,`fangjianbianhao`,`fangjianhao`,`fangjianleixing`,`fangjianzhuangtai`,`fangjianjiage`,`fangjianmiaoshu`,`tupian`) values (1621091494808,'2021-05-15 23:11:34','1621091408808','101','普通大床房','已入住','119','普通大床房','http://localhost:8080/ssm0y726/upload/1621091486768.jpg');
insert  into `fangjianxinxi`(`id`,`addtime`,`fangjianbianhao`,`fangjianhao`,`fangjianleixing`,`fangjianzhuangtai`,`fangjianjiage`,`fangjianmiaoshu`,`tupian`) values (1621091526359,'2021-05-15 23:12:05','1621091500825','102','豪华双床房','已入住','310','豪华双床房','http://localhost:8080/ssm0y726/upload/1621091518478.jpg');
insert  into `fangjianxinxi`(`id`,`addtime`,`fangjianbianhao`,`fangjianhao`,`fangjianleixing`,`fangjianzhuangtai`,`fangjianjiage`,`fangjianmiaoshu`,`tupian`) values (1621091556664,'2021-05-15 23:12:35','1621091529930','103','豪华套房','未打扫','500','豪华套房','http://localhost:8080/ssm0y726/upload/1621091548132.jpg');
insert  into `fangjianxinxi`(`id`,`addtime`,`fangjianbianhao`,`fangjianhao`,`fangjianleixing`,`fangjianzhuangtai`,`fangjianjiage`,`fangjianmiaoshu`,`tupian`) values (1621091589092,'2021-05-15 23:13:08','1621091563397','104','豪华大床房','已入住','500','豪华大床房','http://localhost:8080/ssm0y726/upload/1621091579400.jpg');
insert  into `fangjianxinxi`(`id`,`addtime`,`fangjianbianhao`,`fangjianhao`,`fangjianleixing`,`fangjianzhuangtai`,`fangjianjiage`,`fangjianmiaoshu`,`tupian`) values (1621091630493,'2021-05-15 23:13:50','1621091599045','106','普通双床房','未打扫','129','普通双床房','http://localhost:8080/ssm0y726/upload/1621091617819.jpg');
insert  into `fangjianxinxi`(`id`,`addtime`,`fangjianbianhao`,`fangjianhao`,`fangjianleixing`,`fangjianzhuangtai`,`fangjianjiage`,`fangjianmiaoshu`,`tupian`) values (1621091663630,'2021-05-15 23:14:23','1621091641470','105','高级大床房','空房','116','高级大床房','http://localhost:8080/ssm0y726/upload/1621091658204.jpg');

/*Table structure for table `fangjianyuding` */

DROP TABLE IF EXISTS `fangjianyuding`;

CREATE TABLE `fangjianyuding` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yudingbianhao` varchar(200) NOT NULL COMMENT '预订编号',
  `fangjianhao` varchar(200) NOT NULL COMMENT '房间号',
  `fangjianleixing` varchar(200) NOT NULL COMMENT '房间类型',
  `fangjianzhuangtai` varchar(200) DEFAULT NULL COMMENT '房间状态',
  `fangjianjiage` int(11) DEFAULT NULL COMMENT '房间价格',
  `yudingtianshu` int(11) DEFAULT NULL COMMENT '预订天数',
  `jine` int(11) DEFAULT NULL COMMENT '金额',
  `ruzhushijian` datetime DEFAULT NULL COMMENT '入住时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yudingbianhao` (`yudingbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1621091741937 DEFAULT CHARSET=utf8 COMMENT='房间预订';

/*Data for the table `fangjianyuding` */

insert  into `fangjianyuding`(`id`,`addtime`,`yudingbianhao`,`fangjianhao`,`fangjianleixing`,`fangjianzhuangtai`,`fangjianjiage`,`yudingtianshu`,`jine`,`ruzhushijian`,`zhanghao`,`xingming`,`shouji`,`shenfenzheng`,`sfsh`,`shhf`,`ispay`) values (41,'2021-05-15 23:01:19','预订编号1','房间号1','房间类型1','房间状态1',1,1,1,'2021-05-15 23:01:19','账号1','姓名1','手机1','身份证1','是','','未支付');
insert  into `fangjianyuding`(`id`,`addtime`,`yudingbianhao`,`fangjianhao`,`fangjianleixing`,`fangjianzhuangtai`,`fangjianjiage`,`yudingtianshu`,`jine`,`ruzhushijian`,`zhanghao`,`xingming`,`shouji`,`shenfenzheng`,`sfsh`,`shhf`,`ispay`) values (42,'2021-05-15 23:01:19','预订编号2','房间号2','房间类型2','房间状态2',2,2,2,'2021-05-15 23:01:19','账号2','姓名2','手机2','身份证2','是','','未支付');
insert  into `fangjianyuding`(`id`,`addtime`,`yudingbianhao`,`fangjianhao`,`fangjianleixing`,`fangjianzhuangtai`,`fangjianjiage`,`yudingtianshu`,`jine`,`ruzhushijian`,`zhanghao`,`xingming`,`shouji`,`shenfenzheng`,`sfsh`,`shhf`,`ispay`) values (43,'2021-05-15 23:01:19','预订编号3','房间号3','房间类型3','房间状态3',3,3,3,'2021-05-15 23:01:19','账号3','姓名3','手机3','身份证3','是','','未支付');
insert  into `fangjianyuding`(`id`,`addtime`,`yudingbianhao`,`fangjianhao`,`fangjianleixing`,`fangjianzhuangtai`,`fangjianjiage`,`yudingtianshu`,`jine`,`ruzhushijian`,`zhanghao`,`xingming`,`shouji`,`shenfenzheng`,`sfsh`,`shhf`,`ispay`) values (44,'2021-05-15 23:01:19','预订编号4','房间号4','房间类型4','房间状态4',4,4,4,'2021-05-15 23:01:19','账号4','姓名4','手机4','身份证4','是','','未支付');
insert  into `fangjianyuding`(`id`,`addtime`,`yudingbianhao`,`fangjianhao`,`fangjianleixing`,`fangjianzhuangtai`,`fangjianjiage`,`yudingtianshu`,`jine`,`ruzhushijian`,`zhanghao`,`xingming`,`shouji`,`shenfenzheng`,`sfsh`,`shhf`,`ispay`) values (45,'2021-05-15 23:01:19','预订编号5','房间号5','房间类型5','房间状态5',5,5,5,'2021-05-15 23:01:19','账号5','姓名5','手机5','身份证5','是','','未支付');
insert  into `fangjianyuding`(`id`,`addtime`,`yudingbianhao`,`fangjianhao`,`fangjianleixing`,`fangjianzhuangtai`,`fangjianjiage`,`yudingtianshu`,`jine`,`ruzhushijian`,`zhanghao`,`xingming`,`shouji`,`shenfenzheng`,`sfsh`,`shhf`,`ispay`) values (46,'2021-05-15 23:01:19','预订编号6','房间号6','房间类型6','房间状态6',6,6,6,'2021-05-15 23:01:19','账号6','姓名6','手机6','身份证6','是','','未支付');
insert  into `fangjianyuding`(`id`,`addtime`,`yudingbianhao`,`fangjianhao`,`fangjianleixing`,`fangjianzhuangtai`,`fangjianjiage`,`yudingtianshu`,`jine`,`ruzhushijian`,`zhanghao`,`xingming`,`shouji`,`shenfenzheng`,`sfsh`,`shhf`,`ispay`) values (1621091741936,'2021-05-15 23:15:41','1621091733679','101','普通大床房','空房',119,1,119,'2021-05-01 00:00:00','001','露露','13523655421','440100199802122541','是','同意，空房','已支付');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','p2wi2veoezu5hba21q8nyapwlg0mvtuj','2021-05-15 23:05:13','2021-05-16 00:16:38');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (2,1621091099965,'001','yonghu','用户','utmv1x6xeyajsfu5539zyjniy8ylubsn','2021-05-15 23:15:18','2021-05-16 00:17:08');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-05-15 23:01:19');

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
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1621091099966 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`shenfenzheng`,`zhaopian`) values (11,'2021-05-15 23:01:19','用户1','123456','姓名1','男','13823888881','440300199101010001','http://localhost:8080/ssm0y726/upload/yonghu_zhaopian1.jpg');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`shenfenzheng`,`zhaopian`) values (12,'2021-05-15 23:01:19','用户2','123456','姓名2','男','13823888882','440300199202020002','http://localhost:8080/ssm0y726/upload/yonghu_zhaopian2.jpg');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`shenfenzheng`,`zhaopian`) values (13,'2021-05-15 23:01:19','用户3','123456','姓名3','男','13823888883','440300199303030003','http://localhost:8080/ssm0y726/upload/yonghu_zhaopian3.jpg');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`shenfenzheng`,`zhaopian`) values (14,'2021-05-15 23:01:19','用户4','123456','姓名4','男','13823888884','440300199404040004','http://localhost:8080/ssm0y726/upload/yonghu_zhaopian4.jpg');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`shenfenzheng`,`zhaopian`) values (15,'2021-05-15 23:01:19','用户5','123456','姓名5','男','13823888885','440300199505050005','http://localhost:8080/ssm0y726/upload/yonghu_zhaopian5.jpg');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`shenfenzheng`,`zhaopian`) values (16,'2021-05-15 23:01:19','用户6','123456','姓名6','男','13823888886','440300199606060006','http://localhost:8080/ssm0y726/upload/yonghu_zhaopian6.jpg');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`shenfenzheng`,`zhaopian`) values (1621091099965,'2021-05-15 23:04:59','001','001','露露','女','13523655421','440100199802122541','http://localhost:8080/ssm0y726/upload/1621091707022.jpg');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
