--预约订单
CREATE TABLE `order` (
  `order_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_name` varchar(32) NOT NULL,
  `tel_num` int(11) DEFAULT '0',
  `province` varchar(64) NOT NULL,
  `note` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  key idx_order_name (`order_name`),
  key idx_tel_num (`tel_num`),
  key idx_province (`province`)
) ENGINE=InnoDB AUTO_INCREMENT=1010 DEFAULT CHARSET=utf8;