/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - springbootjf5zc
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`springbootjf5zc` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `springbootjf5zc`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/springbootjf5zc/upload/picture1.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/springbootjf5zc/upload/picture2.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/springbootjf5zc/upload/picture3.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage',NULL);

/*Table structure for table `discusskeshixinxi` */

DROP TABLE IF EXISTS `discusskeshixinxi`;

CREATE TABLE `discusskeshixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COMMENT='科室信息评论表';

/*Data for the table `discusskeshixinxi` */

insert  into `discusskeshixinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (121,'2021-05-08 16:41:54',1,1,'用户名1','评论内容1','回复内容1');
insert  into `discusskeshixinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (122,'2021-05-08 16:41:54',2,2,'用户名2','评论内容2','回复内容2');
insert  into `discusskeshixinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (123,'2021-05-08 16:41:54',3,3,'用户名3','评论内容3','回复内容3');
insert  into `discusskeshixinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (124,'2021-05-08 16:41:54',4,4,'用户名4','评论内容4','回复内容4');
insert  into `discusskeshixinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (125,'2021-05-08 16:41:54',5,5,'用户名5','评论内容5','回复内容5');
insert  into `discusskeshixinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (126,'2021-05-08 16:41:54',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `discussyiyuanxinxi` */

DROP TABLE IF EXISTS `discussyiyuanxinxi`;

CREATE TABLE `discussyiyuanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='医院信息评论表';

/*Data for the table `discussyiyuanxinxi` */

insert  into `discussyiyuanxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (111,'2021-05-08 16:41:54',1,1,'用户名1','评论内容1','回复内容1');
insert  into `discussyiyuanxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (112,'2021-05-08 16:41:54',2,2,'用户名2','评论内容2','回复内容2');
insert  into `discussyiyuanxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (113,'2021-05-08 16:41:54',3,3,'用户名3','评论内容3','回复内容3');
insert  into `discussyiyuanxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (114,'2021-05-08 16:41:54',4,4,'用户名4','评论内容4','回复内容4');
insert  into `discussyiyuanxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (115,'2021-05-08 16:41:54',5,5,'用户名5','评论内容5','回复内容5');
insert  into `discussyiyuanxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (116,'2021-05-08 16:41:54',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='论坛表';

/*Data for the table `forum` */

insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (91,'2021-05-08 16:41:54','帖子标题1','帖子内容1',1,1,'用户名1','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (92,'2021-05-08 16:41:54','帖子标题2','帖子内容2',2,2,'用户名2','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (93,'2021-05-08 16:41:54','帖子标题3','帖子内容3',3,3,'用户名3','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (94,'2021-05-08 16:41:54','帖子标题4','帖子内容4',4,4,'用户名4','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (95,'2021-05-08 16:41:54','帖子标题5','帖子内容5',5,5,'用户名5','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (96,'2021-05-08 16:41:54','帖子标题6','帖子内容6',6,6,'用户名6','开放');

/*Table structure for table `keshixinxi` */

DROP TABLE IF EXISTS `keshixinxi`;

CREATE TABLE `keshixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `keshi` varchar(200) NOT NULL COMMENT '科室',
  `tupian` varchar(200) NOT NULL COMMENT '图片',
  `keshijieshao` longtext COMMENT '科室介绍',
  `keshiweizhi` varchar(200) DEFAULT NULL COMMENT '科室位置',
  `keshiyisheng` varchar(200) DEFAULT NULL COMMENT '科室医生',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='科室信息';

/*Data for the table `keshixinxi` */

insert  into `keshixinxi`(`id`,`addtime`,`keshi`,`tupian`,`keshijieshao`,`keshiweizhi`,`keshiyisheng`,`lianxidianhua`) values (71,'2021-05-08 16:41:54','科室1','http://localhost:8080/springbootjf5zc/upload/keshixinxi_tupian1.jpg','科室介绍1','科室位置1','科室医生1','联系电话1');
insert  into `keshixinxi`(`id`,`addtime`,`keshi`,`tupian`,`keshijieshao`,`keshiweizhi`,`keshiyisheng`,`lianxidianhua`) values (72,'2021-05-08 16:41:54','科室2','http://localhost:8080/springbootjf5zc/upload/keshixinxi_tupian2.jpg','科室介绍2','科室位置2','科室医生2','联系电话2');
insert  into `keshixinxi`(`id`,`addtime`,`keshi`,`tupian`,`keshijieshao`,`keshiweizhi`,`keshiyisheng`,`lianxidianhua`) values (73,'2021-05-08 16:41:54','科室3','http://localhost:8080/springbootjf5zc/upload/keshixinxi_tupian3.jpg','科室介绍3','科室位置3','科室医生3','联系电话3');
insert  into `keshixinxi`(`id`,`addtime`,`keshi`,`tupian`,`keshijieshao`,`keshiweizhi`,`keshiyisheng`,`lianxidianhua`) values (74,'2021-05-08 16:41:54','科室4','http://localhost:8080/springbootjf5zc/upload/keshixinxi_tupian4.jpg','科室介绍4','科室位置4','科室医生4','联系电话4');
insert  into `keshixinxi`(`id`,`addtime`,`keshi`,`tupian`,`keshijieshao`,`keshiweizhi`,`keshiyisheng`,`lianxidianhua`) values (75,'2021-05-08 16:41:54','科室5','http://localhost:8080/springbootjf5zc/upload/keshixinxi_tupian5.jpg','科室介绍5','科室位置5','科室医生5','联系电话5');
insert  into `keshixinxi`(`id`,`addtime`,`keshi`,`tupian`,`keshijieshao`,`keshiweizhi`,`keshiyisheng`,`lianxidianhua`) values (76,'2021-05-08 16:41:54','科室6','http://localhost:8080/springbootjf5zc/upload/keshixinxi_tupian6.jpg','科室介绍6','科室位置6','科室医生6','联系电话6');

/*Table structure for table `paibanleixing` */

DROP TABLE IF EXISTS `paibanleixing`;

CREATE TABLE `paibanleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `banci` varchar(200) DEFAULT NULL COMMENT '班次',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='排班类型';

/*Data for the table `paibanleixing` */

insert  into `paibanleixing`(`id`,`addtime`,`banci`) values (61,'2021-05-08 16:41:54','班次1');
insert  into `paibanleixing`(`id`,`addtime`,`banci`) values (62,'2021-05-08 16:41:54','班次2');
insert  into `paibanleixing`(`id`,`addtime`,`banci`) values (63,'2021-05-08 16:41:54','班次3');
insert  into `paibanleixing`(`id`,`addtime`,`banci`) values (64,'2021-05-08 16:41:54','班次4');
insert  into `paibanleixing`(`id`,`addtime`,`banci`) values (65,'2021-05-08 16:41:54','班次5');
insert  into `paibanleixing`(`id`,`addtime`,`banci`) values (66,'2021-05-08 16:41:54','班次6');

/*Table structure for table `paibanxinxi` */

DROP TABLE IF EXISTS `paibanxinxi`;

CREATE TABLE `paibanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `keshi` varchar(200) DEFAULT NULL COMMENT '科室',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  `yiling` varchar(200) DEFAULT NULL COMMENT '医龄',
  `guahaofeiyong` int(11) NOT NULL COMMENT '挂号费用',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `banci` varchar(200) DEFAULT NULL COMMENT '班次',
  `gerenjianjie` longtext COMMENT '个人简介',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='排班信息';

/*Data for the table `paibanxinxi` */

insert  into `paibanxinxi`(`id`,`addtime`,`gonghao`,`xingming`,`xingbie`,`keshi`,`zhicheng`,`yiling`,`guahaofeiyong`,`lianxidianhua`,`touxiang`,`banci`,`gerenjianjie`) values (51,'2021-05-08 16:41:54','工号1','姓名1','性别1','科室1','职称1','医龄1',1,'13823888881','http://localhost:8080/springbootjf5zc/upload/paibanxinxi_touxiang1.jpg','班次1','个人简介1');
insert  into `paibanxinxi`(`id`,`addtime`,`gonghao`,`xingming`,`xingbie`,`keshi`,`zhicheng`,`yiling`,`guahaofeiyong`,`lianxidianhua`,`touxiang`,`banci`,`gerenjianjie`) values (52,'2021-05-08 16:41:54','工号2','姓名2','性别2','科室2','职称2','医龄2',2,'13823888882','http://localhost:8080/springbootjf5zc/upload/paibanxinxi_touxiang2.jpg','班次2','个人简介2');
insert  into `paibanxinxi`(`id`,`addtime`,`gonghao`,`xingming`,`xingbie`,`keshi`,`zhicheng`,`yiling`,`guahaofeiyong`,`lianxidianhua`,`touxiang`,`banci`,`gerenjianjie`) values (53,'2021-05-08 16:41:54','工号3','姓名3','性别3','科室3','职称3','医龄3',3,'13823888883','http://localhost:8080/springbootjf5zc/upload/paibanxinxi_touxiang3.jpg','班次3','个人简介3');
insert  into `paibanxinxi`(`id`,`addtime`,`gonghao`,`xingming`,`xingbie`,`keshi`,`zhicheng`,`yiling`,`guahaofeiyong`,`lianxidianhua`,`touxiang`,`banci`,`gerenjianjie`) values (54,'2021-05-08 16:41:54','工号4','姓名4','性别4','科室4','职称4','医龄4',4,'13823888884','http://localhost:8080/springbootjf5zc/upload/paibanxinxi_touxiang4.jpg','班次4','个人简介4');
insert  into `paibanxinxi`(`id`,`addtime`,`gonghao`,`xingming`,`xingbie`,`keshi`,`zhicheng`,`yiling`,`guahaofeiyong`,`lianxidianhua`,`touxiang`,`banci`,`gerenjianjie`) values (55,'2021-05-08 16:41:54','工号5','姓名5','性别5','科室5','职称5','医龄5',5,'13823888885','http://localhost:8080/springbootjf5zc/upload/paibanxinxi_touxiang5.jpg','班次5','个人简介5');
insert  into `paibanxinxi`(`id`,`addtime`,`gonghao`,`xingming`,`xingbie`,`keshi`,`zhicheng`,`yiling`,`guahaofeiyong`,`lianxidianhua`,`touxiang`,`banci`,`gerenjianjie`) values (56,'2021-05-08 16:41:54','工号6','姓名6','性别6','科室6','职称6','医龄6',6,'13823888886','http://localhost:8080/springbootjf5zc/upload/paibanxinxi_touxiang6.jpg','班次6','个人简介6');

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

/*Table structure for table `tousuxinxi` */

DROP TABLE IF EXISTS `tousuxinxi`;

CREATE TABLE `tousuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) NOT NULL COMMENT '工号',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `tousumingcheng` varchar(200) DEFAULT NULL COMMENT '投诉名称',
  `tousuneirong` longtext COMMENT '投诉内容',
  `tousuriqi` date DEFAULT NULL COMMENT '投诉日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='投诉信息';

/*Data for the table `tousuxinxi` */

insert  into `tousuxinxi`(`id`,`addtime`,`gonghao`,`xingming`,`zhaopian`,`tousumingcheng`,`tousuneirong`,`tousuriqi`) values (81,'2021-05-08 16:41:54','工号1','姓名1','http://localhost:8080/springbootjf5zc/upload/tousuxinxi_zhaopian1.jpg','投诉名称1','投诉内容1','2021-05-08');
insert  into `tousuxinxi`(`id`,`addtime`,`gonghao`,`xingming`,`zhaopian`,`tousumingcheng`,`tousuneirong`,`tousuriqi`) values (82,'2021-05-08 16:41:54','工号2','姓名2','http://localhost:8080/springbootjf5zc/upload/tousuxinxi_zhaopian2.jpg','投诉名称2','投诉内容2','2021-05-08');
insert  into `tousuxinxi`(`id`,`addtime`,`gonghao`,`xingming`,`zhaopian`,`tousumingcheng`,`tousuneirong`,`tousuriqi`) values (83,'2021-05-08 16:41:54','工号3','姓名3','http://localhost:8080/springbootjf5zc/upload/tousuxinxi_zhaopian3.jpg','投诉名称3','投诉内容3','2021-05-08');
insert  into `tousuxinxi`(`id`,`addtime`,`gonghao`,`xingming`,`zhaopian`,`tousumingcheng`,`tousuneirong`,`tousuriqi`) values (84,'2021-05-08 16:41:54','工号4','姓名4','http://localhost:8080/springbootjf5zc/upload/tousuxinxi_zhaopian4.jpg','投诉名称4','投诉内容4','2021-05-08');
insert  into `tousuxinxi`(`id`,`addtime`,`gonghao`,`xingming`,`zhaopian`,`tousumingcheng`,`tousuneirong`,`tousuriqi`) values (85,'2021-05-08 16:41:54','工号5','姓名5','http://localhost:8080/springbootjf5zc/upload/tousuxinxi_zhaopian5.jpg','投诉名称5','投诉内容5','2021-05-08');
insert  into `tousuxinxi`(`id`,`addtime`,`gonghao`,`xingming`,`zhaopian`,`tousumingcheng`,`tousuneirong`,`tousuriqi`) values (86,'2021-05-08 16:41:54','工号6','姓名6','http://localhost:8080/springbootjf5zc/upload/tousuxinxi_zhaopian6.jpg','投诉名称6','投诉内容6','2021-05-08');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-05-08 16:41:54');

/*Table structure for table `yihu` */

DROP TABLE IF EXISTS `yihu`;

CREATE TABLE `yihu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) NOT NULL COMMENT '工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `shoujihao` varchar(200) DEFAULT NULL COMMENT '手机号',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gonghao` (`gonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='医护';

/*Data for the table `yihu` */

insert  into `yihu`(`id`,`addtime`,`gonghao`,`mima`,`xingming`,`xingbie`,`nianling`,`shoujihao`,`youxiang`,`shenfenzheng`,`zhaopian`) values (11,'2021-05-08 16:41:54','医护1','123456','姓名1','男',1,'13823888881','773890001@qq.com','440300199101010001','http://localhost:8080/springbootjf5zc/upload/yihu_zhaopian1.jpg');
insert  into `yihu`(`id`,`addtime`,`gonghao`,`mima`,`xingming`,`xingbie`,`nianling`,`shoujihao`,`youxiang`,`shenfenzheng`,`zhaopian`) values (12,'2021-05-08 16:41:54','医护2','123456','姓名2','男',2,'13823888882','773890002@qq.com','440300199202020002','http://localhost:8080/springbootjf5zc/upload/yihu_zhaopian2.jpg');
insert  into `yihu`(`id`,`addtime`,`gonghao`,`mima`,`xingming`,`xingbie`,`nianling`,`shoujihao`,`youxiang`,`shenfenzheng`,`zhaopian`) values (13,'2021-05-08 16:41:54','医护3','123456','姓名3','男',3,'13823888883','773890003@qq.com','440300199303030003','http://localhost:8080/springbootjf5zc/upload/yihu_zhaopian3.jpg');
insert  into `yihu`(`id`,`addtime`,`gonghao`,`mima`,`xingming`,`xingbie`,`nianling`,`shoujihao`,`youxiang`,`shenfenzheng`,`zhaopian`) values (14,'2021-05-08 16:41:54','医护4','123456','姓名4','男',4,'13823888884','773890004@qq.com','440300199404040004','http://localhost:8080/springbootjf5zc/upload/yihu_zhaopian4.jpg');
insert  into `yihu`(`id`,`addtime`,`gonghao`,`mima`,`xingming`,`xingbie`,`nianling`,`shoujihao`,`youxiang`,`shenfenzheng`,`zhaopian`) values (15,'2021-05-08 16:41:54','医护5','123456','姓名5','男',5,'13823888885','773890005@qq.com','440300199505050005','http://localhost:8080/springbootjf5zc/upload/yihu_zhaopian5.jpg');
insert  into `yihu`(`id`,`addtime`,`gonghao`,`mima`,`xingming`,`xingbie`,`nianling`,`shoujihao`,`youxiang`,`shenfenzheng`,`zhaopian`) values (16,'2021-05-08 16:41:54','医护6','123456','姓名6','男',6,'13823888886','773890006@qq.com','440300199606060006','http://localhost:8080/springbootjf5zc/upload/yihu_zhaopian6.jpg');

/*Table structure for table `yihuleixing` */

DROP TABLE IF EXISTS `yihuleixing`;

CREATE TABLE `yihuleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yihuleixing` varchar(200) DEFAULT NULL COMMENT '医护类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='医护类型';

/*Data for the table `yihuleixing` */

insert  into `yihuleixing`(`id`,`addtime`,`yihuleixing`) values (41,'2021-05-08 16:41:54','医护类型1');
insert  into `yihuleixing`(`id`,`addtime`,`yihuleixing`) values (42,'2021-05-08 16:41:54','医护类型2');
insert  into `yihuleixing`(`id`,`addtime`,`yihuleixing`) values (43,'2021-05-08 16:41:54','医护类型3');
insert  into `yihuleixing`(`id`,`addtime`,`yihuleixing`) values (44,'2021-05-08 16:41:54','医护类型4');
insert  into `yihuleixing`(`id`,`addtime`,`yihuleixing`) values (45,'2021-05-08 16:41:54','医护类型5');
insert  into `yihuleixing`(`id`,`addtime`,`yihuleixing`) values (46,'2021-05-08 16:41:54','医护类型6');

/*Table structure for table `yihuxinxi` */

DROP TABLE IF EXISTS `yihuxinxi`;

CREATE TABLE `yihuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `yihuleixing` varchar(200) DEFAULT NULL COMMENT '医护类型',
  `yiyuan` varchar(200) DEFAULT NULL COMMENT '医院',
  `keshi` varchar(200) DEFAULT NULL COMMENT '科室',
  `shanzhang` varchar(200) DEFAULT NULL COMMENT '擅长',
  `jianjie` varchar(200) DEFAULT NULL COMMENT '简介',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='医护信息';

/*Data for the table `yihuxinxi` */

insert  into `yihuxinxi`(`id`,`addtime`,`gonghao`,`xingming`,`zhaopian`,`yihuleixing`,`yiyuan`,`keshi`,`shanzhang`,`jianjie`) values (31,'2021-05-08 16:41:54','工号1','姓名1','http://localhost:8080/springbootjf5zc/upload/yihuxinxi_zhaopian1.jpg','医护类型1','医院1','科室1','擅长1','简介1');
insert  into `yihuxinxi`(`id`,`addtime`,`gonghao`,`xingming`,`zhaopian`,`yihuleixing`,`yiyuan`,`keshi`,`shanzhang`,`jianjie`) values (32,'2021-05-08 16:41:54','工号2','姓名2','http://localhost:8080/springbootjf5zc/upload/yihuxinxi_zhaopian2.jpg','医护类型2','医院2','科室2','擅长2','简介2');
insert  into `yihuxinxi`(`id`,`addtime`,`gonghao`,`xingming`,`zhaopian`,`yihuleixing`,`yiyuan`,`keshi`,`shanzhang`,`jianjie`) values (33,'2021-05-08 16:41:54','工号3','姓名3','http://localhost:8080/springbootjf5zc/upload/yihuxinxi_zhaopian3.jpg','医护类型3','医院3','科室3','擅长3','简介3');
insert  into `yihuxinxi`(`id`,`addtime`,`gonghao`,`xingming`,`zhaopian`,`yihuleixing`,`yiyuan`,`keshi`,`shanzhang`,`jianjie`) values (34,'2021-05-08 16:41:54','工号4','姓名4','http://localhost:8080/springbootjf5zc/upload/yihuxinxi_zhaopian4.jpg','医护类型4','医院4','科室4','擅长4','简介4');
insert  into `yihuxinxi`(`id`,`addtime`,`gonghao`,`xingming`,`zhaopian`,`yihuleixing`,`yiyuan`,`keshi`,`shanzhang`,`jianjie`) values (35,'2021-05-08 16:41:54','工号5','姓名5','http://localhost:8080/springbootjf5zc/upload/yihuxinxi_zhaopian5.jpg','医护类型5','医院5','科室5','擅长5','简介5');
insert  into `yihuxinxi`(`id`,`addtime`,`gonghao`,`xingming`,`zhaopian`,`yihuleixing`,`yiyuan`,`keshi`,`shanzhang`,`jianjie`) values (36,'2021-05-08 16:41:54','工号6','姓名6','http://localhost:8080/springbootjf5zc/upload/yihuxinxi_zhaopian6.jpg','医护类型6','医院6','科室6','擅长6','简介6');

/*Table structure for table `yiyuanxinxi` */

DROP TABLE IF EXISTS `yiyuanxinxi`;

CREATE TABLE `yiyuanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yiyuanmingcheng` varchar(200) NOT NULL COMMENT '医院名称',
  `yiyuandizhi` varchar(200) DEFAULT NULL COMMENT '医院地址',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `yiyuantupian` varchar(200) DEFAULT NULL COMMENT '医院图片',
  `yiyuanjianjie` longtext COMMENT '医院简介',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='医院信息';

/*Data for the table `yiyuanxinxi` */

insert  into `yiyuanxinxi`(`id`,`addtime`,`yiyuanmingcheng`,`yiyuandizhi`,`lianxidianhua`,`yiyuantupian`,`yiyuanjianjie`,`thumbsupnum`,`crazilynum`) values (21,'2021-05-08 16:41:54','医院名称1','医院地址1','13823888881','http://localhost:8080/springbootjf5zc/upload/yiyuanxinxi_yiyuantupian1.jpg','医院简介1',1,1);
insert  into `yiyuanxinxi`(`id`,`addtime`,`yiyuanmingcheng`,`yiyuandizhi`,`lianxidianhua`,`yiyuantupian`,`yiyuanjianjie`,`thumbsupnum`,`crazilynum`) values (22,'2021-05-08 16:41:54','医院名称2','医院地址2','13823888882','http://localhost:8080/springbootjf5zc/upload/yiyuanxinxi_yiyuantupian2.jpg','医院简介2',2,2);
insert  into `yiyuanxinxi`(`id`,`addtime`,`yiyuanmingcheng`,`yiyuandizhi`,`lianxidianhua`,`yiyuantupian`,`yiyuanjianjie`,`thumbsupnum`,`crazilynum`) values (23,'2021-05-08 16:41:54','医院名称3','医院地址3','13823888883','http://localhost:8080/springbootjf5zc/upload/yiyuanxinxi_yiyuantupian3.jpg','医院简介3',3,3);
insert  into `yiyuanxinxi`(`id`,`addtime`,`yiyuanmingcheng`,`yiyuandizhi`,`lianxidianhua`,`yiyuantupian`,`yiyuanjianjie`,`thumbsupnum`,`crazilynum`) values (24,'2021-05-08 16:41:54','医院名称4','医院地址4','13823888884','http://localhost:8080/springbootjf5zc/upload/yiyuanxinxi_yiyuantupian4.jpg','医院简介4',4,4);
insert  into `yiyuanxinxi`(`id`,`addtime`,`yiyuanmingcheng`,`yiyuandizhi`,`lianxidianhua`,`yiyuantupian`,`yiyuanjianjie`,`thumbsupnum`,`crazilynum`) values (25,'2021-05-08 16:41:54','医院名称5','医院地址5','13823888885','http://localhost:8080/springbootjf5zc/upload/yiyuanxinxi_yiyuantupian5.jpg','医院简介5',5,5);
insert  into `yiyuanxinxi`(`id`,`addtime`,`yiyuanmingcheng`,`yiyuandizhi`,`lianxidianhua`,`yiyuantupian`,`yiyuanjianjie`,`thumbsupnum`,`crazilynum`) values (26,'2021-05-08 16:41:54','医院名称6','医院地址6','13823888886','http://localhost:8080/springbootjf5zc/upload/yiyuanxinxi_yiyuantupian6.jpg','医院简介6',6,6);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
