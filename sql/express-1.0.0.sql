use express

 CREATE TABLE `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'user id',
  `account` varchar(20) COLLATE utf8_bin NOT NULL COMMENT '账号',
  `password` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `name` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `id_number` bigint(20) DEFAULT NULL,
  `email` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '邮箱',
  `is_vip` tinyint(1) NOT NULL DEFAULT '0',
  `age` int(3) DEFAULT NULL COMMENT '年龄',
  `phone` bigint(20) DEFAULT NULL,
  `post_code` bigint(6) DEFAULT NULL,
  `bank_account` bigint(20) DEFAULT NULL,
  `address` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `nick_name` varchar(20) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`,`account`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin



create table route(
    `id`       BIGINT(20)      not null    AUTO_INCREMENT,
    `user_id`       BIGINT(20)      not null,
    `start_address` varchar(20)     not null,
    `end_address`   varchar(20)     not null,
    `price`         bigint(10)      not null,
    `start_time`    timestamp       not null,
    `end_time`      timestamp       not null,
    primary key (`id`),
    key `user_id` (`user_id`)
)
    engine = InnoDB
    default charset = utf8
    collate = utf8_bin;

create table orders(
    `auto_id`       bigint(20)      not null    AUTO_INCREMENT,
    `id`            bigint(20)      not null
     COMMENT '快递单号，当前时间戳+4位随机数',
    `user_id`       bigint(20)      not null,
    `route_id`      bigint(20)      not null,
    `send_address` varchar(20)     not null,
    `take_address`   varchar(20)     not null,
    `send_name`     varchar(20)     not null,
    `take_name`     varchar(20)     not null,
    `send_phone`    bigint(20)      not null,
    `take_phone`    bigint(20)      not null,
    `goods_name`    varchar(20)     not null,
    `goods_weight`  bigint(10)      not null,
    `is_finish`     TINYINT(1)      not null default '0',
    primary key (`auto_id`),
    key `user_id` (`user_id`),
    key `route_id` (`route_id`),
    key `orders_id` (`id`)
)
    engine = InnoDB
    default charset = utf8
    collate = utf8_bin;