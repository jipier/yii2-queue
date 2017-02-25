/*
 Navicat Premium Data Transfer

 Source Server         : vagrant-centos
 Source Server Type    : MySQL
 Source Server Version : 50548
 Source Host           : 127.0.0.1
 Source Database       : oss

 Target Server Type    : MySQL
 Target Server Version : 50548
 File Encoding         : utf-8

 Date: 02/25/2017 16:49:27 PM
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `failed_jobs`
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `connector` varchar(255) DEFAULT NULL COMMENT '队列驱动名称',
  `queue` varchar(255) DEFAULT NULL COMMENT '队列名称',
  `payload` varchar(255) DEFAULT NULL COMMENT '任务内容',
  `failed_at` varchar(255) DEFAULT NULL COMMENT '失败时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='队列执行失败记录表';

-- ----------------------------
--  Table structure for `jobs`
-- ----------------------------
DROP TABLE IF EXISTS `jobs`;
CREATE TABLE `jobs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(50) DEFAULT NULL,
  `payload` text,
  `attempts` int(5) NOT NULL DEFAULT '0' COMMENT '队列任务失败尝试次数',
  `reserved` tinyint(1) NOT NULL DEFAULT '0',
  `reserved_at` int(10) DEFAULT NULL,
  `available_at` int(10) DEFAULT NULL,
  `created_at` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

SET FOREIGN_KEY_CHECKS = 1;
