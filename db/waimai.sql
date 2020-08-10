/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50567
Source Host           : localhost:3306
Source Database       : waimai

Target Server Type    : MYSQL
Target Server Version : 50567
File Encoding         : 65001

Date: 2020-08-10 21:05:43
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for buyer
-- ----------------------------
DROP TABLE IF EXISTS `buyer`;
CREATE TABLE `buyer` (
  `bid` int(11) NOT NULL AUTO_INCREMENT COMMENT '买家id',
  `buyer_name` varchar(20) NOT NULL COMMENT '买家名',
  `wid` varchar(255) NOT NULL,
  `password` varchar(64) NOT NULL COMMENT '密码',
  `gender` int(1) DEFAULT NULL COMMENT '性别: 0-女, 1-男',
  `phone` varchar(20) DEFAULT NULL COMMENT '电话号码',
  `email` varchar(50) DEFAULT NULL COMMENT '电子邮箱',
  `avatar` varchar(100) DEFAULT NULL COMMENT '头像',
  `is_delete` int(1) DEFAULT NULL COMMENT '是否删除: 0-未删除, 1-已删除',
  `created_user` varchar(20) DEFAULT NULL COMMENT '创建人',
  `created_time` datetime DEFAULT NULL COMMENT '创建时间',
  `modified_user` varchar(20) DEFAULT NULL COMMENT '最后修改人',
  `modified_time` datetime DEFAULT NULL COMMENT '最后修改时间',
  PRIMARY KEY (`bid`),
  UNIQUE KEY `buyer_name` (`buyer_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of buyer
-- ----------------------------

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `gid` int(11) NOT NULL AUTO_INCREMENT COMMENT '商品id',
  `goods_name` varchar(20) NOT NULL COMMENT '商品名',
  `original_price` int(11) DEFAULT NULL COMMENT '原价',
  `discount_price` int(11) DEFAULT NULL COMMENT '折扣价',
  `label_id` int(11) DEFAULT NULL COMMENT '标签',
  `created_user` varchar(20) DEFAULT NULL COMMENT '创建人',
  `created_time` datetime DEFAULT NULL COMMENT '创建时间',
  `modified_user` varchar(20) DEFAULT NULL COMMENT '最后修改人',
  `modified_time` datetime DEFAULT NULL COMMENT '最后修改时间',
  PRIMARY KEY (`gid`),
  UNIQUE KEY `goods_name` (`goods_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of goods
-- ----------------------------

-- ----------------------------
-- Table structure for label
-- ----------------------------
DROP TABLE IF EXISTS `label`;
CREATE TABLE `label` (
  `lid` int(11) NOT NULL AUTO_INCREMENT COMMENT '标签id',
  `label_name` varchar(20) DEFAULT NULL COMMENT '标签名',
  `created_user` varchar(20) DEFAULT NULL COMMENT '创建人',
  `created_time` datetime DEFAULT NULL COMMENT '创建时间',
  `modified_user` varchar(20) DEFAULT NULL COMMENT '最后修改人',
  `modified_time` datetime DEFAULT NULL COMMENT '最后修改时间',
  PRIMARY KEY (`lid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of label
-- ----------------------------

-- ----------------------------
-- Table structure for order_form
-- ----------------------------
DROP TABLE IF EXISTS `order_form`;
CREATE TABLE `order_form` (
  `oid` int(11) NOT NULL AUTO_INCREMENT COMMENT '订单id',
  `gid` int(11) DEFAULT NULL COMMENT '商品id',
  `buyer_name` varchar(20) DEFAULT NULL COMMENT '买家名',
  `phone` varchar(20) DEFAULT NULL COMMENT '电话号码',
  `valuation` varchar(255) DEFAULT NULL COMMENT '评价',
  `address` varchar(255) DEFAULT NULL COMMENT '地址',
  `created_user` varchar(20) DEFAULT NULL COMMENT '创建人',
  `created_time` datetime DEFAULT NULL COMMENT '创建时间',
  `modified_user` varchar(20) DEFAULT NULL COMMENT '最后修改人',
  `modified_time` datetime DEFAULT NULL COMMENT '最后修改时间',
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of order_form
-- ----------------------------
