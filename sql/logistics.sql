

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `order`
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
                         `id` tinyint(4) NOT NULL AUTO_INCREMENT,
                         `order_num` varchar(20) NOT NULL,
                         `received` tinyint(1) NOT NULL,
                         `end_position` varchar(20) NOT NULL,
                         `start_position` varchar(20) NOT NULL,
                         `cur_position` varchar(20) NOT NULL,
                         `descri` varchar(100) DEFAULT NULL,
                         PRIMARY KEY (`id`),
                         UNIQUE KEY `order_order_num_uindex` (`order_num`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO `order` VALUES ('6', 'hello', '0', 'aaaa', 'aaa', 'aaaa', 'bbbbb');

-- ----------------------------
-- Table structure for `record`
-- ----------------------------
DROP TABLE IF EXISTS `record`;
CREATE TABLE `record` (
                          `id` tinyint(4) NOT NULL AUTO_INCREMENT,
                          `order_id` tinyint(4) DEFAULT NULL,
                          `buyer_id` tinyint(4) NOT NULL,
                          `business_id` tinyint(4) NOT NULL,
                          PRIMARY KEY (`id`),
                          UNIQUE KEY `order_id` (`order_id`),
                          KEY `fk_buyer` (`buyer_id`),
                          KEY `fk_business` (`business_id`),
                          CONSTRAINT `fk_business` FOREIGN KEY (`business_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
                          CONSTRAINT `fk_buyer` FOREIGN KEY (`buyer_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
                          CONSTRAINT `fk_order` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of record
-- ----------------------------
INSERT INTO `record` VALUES ('6', '6', '14', '13');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
                        `id` tinyint(4) NOT NULL AUTO_INCREMENT,
                        `username` varchar(20) NOT NULL,
                        `password` varchar(20) NOT NULL,
                        `isAss` tinyint(1) unsigned zerofill DEFAULT '0',
                        `isBussiness` tinyint(1) unsigned zerofill DEFAULT '0',
                        PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', 'admin', '1', '0');
INSERT INTO `user` VALUES ('2', 'admin1', 'hello', '0', '0');
INSERT INTO `user` VALUES ('7', 'world', 'world', '0', '0');
INSERT INTO `user` VALUES ('8', '1', '1', '0', '0');
INSERT INTO `user` VALUES ('10', '3', '3', '0', '0');
INSERT INTO `user` VALUES ('11', 'niubi', 'niubi', '0', '1');
INSERT INTO `user` VALUES ('13', '123', '123', '0', '0');
INSERT INTO `user` VALUES ('14', '1234', '1234', '0', '0');
