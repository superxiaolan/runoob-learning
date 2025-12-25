-- MySQL 语法

CREATE DATABASE RUNOOB;

USE RUNOOB;

SET NAMES utf8;

-- 创建 websites 表
-- 表结构如下

CREATE TABLE `websites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(20) NOT NULL DEFAULT '' COMMENT '站点名称',
  `url` varchar(255) NOT NULL DEFAULT '',
  `alexa` int(11) NOT NULL DEFAULT '0' COMMENT 'Alexa 排名',
  `country` char(10) NOT NULL DEFAULT '' COMMENT '国家',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- 给 websites 表插入示例数据
BEGIN;
INSERT INTO `websites` VALUES ('1', 'Google', 'https://www.google.com', '1', 'USA'),
('2', '淘宝', 'https://www.taobao.com', '13', 'CN'),
('3', '菜鸟教程', 'http://www.runoob.com', '4646', 'CN'),
('4', '微博', 'http://weibo.com/', '20', 'CN'), 
('5', 'Facebook', 'https://www.facebook.com/', '3', 'USA');

COMMIT;

SET FOREIGN_KEY_CHECKS = 1;

SELECT * FROM websites;