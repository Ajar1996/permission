# Host: 127.0.0.1  (Version 5.7.20-log)
# Date: 2019-10-24 12:04:22
# Generator: MySQL-Front 6.1  (Build 1.26)


#
# Structure for table "resource"
#

CREATE TABLE `resource` (
  `id` int(32) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `parent_id` int(32) DEFAULT NULL COMMENT '资源父ID',
  `name` varchar(64) NOT NULL COMMENT '资源名称',
  `perms` varchar(64) DEFAULT NULL COMMENT '权限标识符',
  `type` char(1) NOT NULL COMMENT '类型：0：目录，1：菜单，2：按钮',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

#
# Data for table "resource"
#

INSERT INTO `resource` VALUES (1,0,'系统管理','sys','0'),(2,1,'用户管理','sys:users','1'),(3,1,'角色管理','sys:roles','1'),(4,1,'资源管理','sys:roles','1'),(5,1,'在线管理','sys:online','1'),(9,2,'添加用户','sys:user:insert','2'),(10,2,'删除用户','sys:user:delete','2'),(11,2,'修改用户','sys:user:update','2'),(12,2,'查询用户','sys:user:list','2'),(13,2,'用户详情','sys:user:detail','2'),(14,3,'添加角色','sys:role:insert','2'),(15,3,'删除角色','sys:role:delete','2'),(16,3,'修改角色','sys:role:update','2'),(17,3,'查询角色','sys:role:list','2'),(18,3,'角色详情','sys:role:detail','2'),(19,4,'添加资源','sys:resource:insert','2'),(20,4,'删除资源','sys:resource:delete','2'),(21,4,'修改资源','sys:resource:update','2'),(22,4,'查询资源','sys:resource:list','2'),(23,4,'资源详情','sys:resource:detail','2'),(24,5,'踢出用户','sys:online:delete','2');

#
# Structure for table "role"
#

CREATE TABLE `role` (
  `id` int(32) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `name` varchar(64) NOT NULL COMMENT '角色名',
  `grade` tinyint(2) NOT NULL DEFAULT '0' COMMENT '角色等级',
  `remark` varchar(256) NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

#
# Data for table "role"
#

INSERT INTO `role` VALUES (7,'超级管理员',1,'超级管理员,全站管理'),(8,'管理员',5,'管理员,全站管理'),(9,'游客',10,'游客'),(16,'观察员',9,'试试');

#
# Structure for table "role_resource"
#

CREATE TABLE `role_resource` (
  `id` int(32) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `role_id` int(32) NOT NULL COMMENT '角色id',
  `resource_id` int(32) NOT NULL COMMENT '资源id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=utf8;

#
# Data for table "role_resource"
#

INSERT INTO `role_resource` VALUES (92,7,1),(93,7,2),(94,7,3),(95,7,4),(96,7,9),(97,7,10),(98,7,11),(99,7,12),(100,7,13),(101,7,14),(102,7,15),(103,7,16),(104,7,17),(105,7,18),(106,7,19),(107,7,20),(108,7,21),(109,7,22),(110,7,23),(111,8,1),(112,8,2),(113,8,3),(114,8,4),(115,8,9),(116,8,10),(117,8,11),(118,8,13),(119,8,14),(120,8,15),(121,8,16),(122,8,17),(123,8,18),(124,8,20),(125,8,21),(126,8,23),(127,8,19),(128,16,2),(129,16,1),(130,16,3),(131,16,5),(132,16,12),(133,16,17),(134,16,4),(135,16,22);

#
# Structure for table "user"
#

CREATE TABLE `user` (
  `id` int(32) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `name` varchar(64) NOT NULL DEFAULT '' COMMENT '姓名',
  `account` varchar(64) NOT NULL DEFAULT '' COMMENT '账号',
  `password` varchar(128) NOT NULL DEFAULT '' COMMENT '密码',
  `salt` varchar(128) NOT NULL DEFAULT '' COMMENT '盐',
  `forbidden` char(1) NOT NULL DEFAULT '' COMMENT '是否禁用 0：否；1：是',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

#
# Data for table "user"
#

INSERT INTO `user` VALUES (4,'admin222','admin2','d3ce866c2a856303a182c9e595d498f5','8e7386142591cfa96ef7c293b5dfe72c','0'),(6,'admin','admin','d3ce866c2a856303a182c9e595d498f5','8e7386142591cfa96ef7c293b5dfe72c','0'),(16,'admin','admin5','d3ce866c2a856303a182c9e595d498f5','8e7386142591cfa96ef7c293b5dfe72c','0'),(18,'admin','admin3','d3ce866c2a856303a182c9e595d498f5','8e7386142591cfa96ef7c293b5dfe72c','0'),(19,'admin','admin4','d3ce866c2a856303a182c9e595d498f5','8e7386142591cfa96ef7c293b5dfe72c','0'),(20,'admin','admin66','d3ce866c2a856303a182c9e595d498f5','8e7386142591cfa96ef7c293b5dfe72c','0'),(22,'admin','admin6','d3ce866c2a856303a182c9e595d498f5','8e7386142591cfa96ef7c293b5dfe72c','0'),(23,'admin','2','d3ce866c2a856303a182c9e595d498f5','8e7386142591cfa96ef7c293b5dfe72c','0'),(24,'admin','2222222','d3ce866c2a856303a182c9e595d498f5','8e7386142591cfa96ef7c293b5dfe72c','0'),(25,'admin','admin2222','d3ce866c2a856303a182c9e595d498f5','8e7386142591cfa96ef7c293b5dfe72c','0'),(26,'admin','222222','d3ce866c2a856303a182c9e595d498f5','8e7386142591cfa96ef7c293b5dfe72c','0'),(27,'admin','222222','d3ce866c2a856303a182c9e595d498f5','8e7386142591cfa96ef7c293b5dfe72c','0'),(28,'admin','22222','d3ce866c2a856303a182c9e595d498f5','8e7386142591cfa96ef7c293b5dfe72c','0'),(29,'admin','222','d3ce866c2a856303a182c9e595d498f5','8e7386142591cfa96ef7c293b5dfe72c','0'),(30,'addd','111','149fa287450eab4aad2e0b5fe53b6ab7','d17b3c809b569a0de23f3c2a7d4bb1cd','0'),(31,'试试哦','33333','400b06394c3e368c44e42e2376060534','223be5b13e81115c29c2ba107b62af30','0'),(32,'撒大声地','aaaa','980d9b08b386afd5130f7a132cea85e2','2c2cbcd7de7057f1a849baac5e31ccf3','0'),(33,'admin','dadas','c93a6929787a1a78d0eec1608cb256fc','76830144b6e4df658213f205da3f0d62','0');

#
# Structure for table "user_role"
#

CREATE TABLE `user_role` (
  `id` int(32) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `user_id` int(32) NOT NULL COMMENT '用户ID',
  `role_id` int(32) NOT NULL COMMENT '资源ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;

#
# Data for table "user_role"
#

INSERT INTO `user_role` VALUES (58,4,7),(59,4,8),(61,6,8),(62,6,7),(63,30,9),(64,31,9),(65,32,9),(66,33,9);
