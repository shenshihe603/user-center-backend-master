/*
 Navicat Premium Data Transfer

 Source Server         : YuPi
 Source Server Type    : MySQL
 Source Server Version : 80023
 Source Host           : localhost:3306
 Source Schema         : usercenterp

 Target Server Type    : MySQL
 Target Server Version : 80023
 File Encoding         : 65001

 Date: 14/05/2023 18:12:28
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
create table user
(

    id           bigint auto_increment comment 'id'
        primary key,
    username     varchar(256)                       null comment '用户昵称',
    userAccount  varchar(256)                       null comment '账号',
    avatarUrl    varchar(1024)                      null comment '用户头像',
    gender       tinyint                            null comment '性别',
    userPassword varchar(512)                       not null comment '密码',#默认12346578
    phone        varchar(128)                       null comment '电话',
    email        varchar(512)                       null comment '邮箱',
    userStatus   int      default 0                 not null comment '状态 0 - 正常',
    createTime   datetime default CURRENT_TIMESTAMP null comment '创建时间',
    updateTime   datetime default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP,
    isDelete     tinyint  default 0                 not null comment '是否删除',
    userRole     int      default 0                 not null comment '用户角色 0 - 普通用户 1 - 管理员',
    planetCode   varchar(512)                       null comment '星球编号'
)
    comment '用户';


-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (12, '张三', 'admin', 'https://pic1.zhimg.com/v2-94274e007579ca081436c9af301ee413_r.jpg?source=1940ef5c', 0, 'b0dd3697a192885d7c055db46155b26a', '+86 13800138000', 'zhangsan@example.com', 0, '2022-01-01 00:00:00', '2023-05-14 18:11:20', 0, 1, '345');
INSERT INTO `user` VALUES (13, '李四', 'user2345', 'https://picx.zhimg.com/v2-a8e92316cbf9f5707b4f490a33fee37d_r.jpg?source=1940ef5c', 1, 'b0dd3697a192885d7c055db46155b26a', '+44 20 7123 4567', 'lisi@example.com', 0, '2022-01-02 10:30:00', '2023-05-13 15:21:27', 0, 0, '453');
INSERT INTO `user` VALUES (14, '王五', 'user3456', 'https://picx.zhimg.com/v2-58c625304b123d73b3975eeb2b1ec7f5_r.jpg?source=1940ef5c', 0, 'b0dd3697a192885d7c055db46155b26a', '+81 3-1234-5678', 'wangwu@example.com', 0, '2022-01-03 14:20:00', '2023-05-13 15:21:28', 0, 1, '123');
INSERT INTO `user` VALUES (15, '赵六', 'user4567', 'https://pic1.zhimg.com/v2-478381587fb9d13c8a7353447085574c_r.jpg?source=1940ef5c', 1, 'b0dd3697a192885d7c055db46155b26a', '+61 2 8310 5000', 'zhaoliu@example.com', 0, '2022-01-04 16:50:00', '2023-05-13 15:21:36', 0, 0, '7862');
INSERT INTO `user` VALUES (16, '陈七', 'user5678', 'https://pic1.zhimg.com/v2-478381587fb9d13c8a7353447085574c_r.jpg?source=1940ef5c', 1, 'b0dd3697a192885d7c055db46155b26a', '+33 1 42 68 53 00', 'chenqi@example.com', 0, '2022-01-05 19:10:00', '2023-05-13 15:21:34', 0, 0, '458');
INSERT INTO `user` VALUES (17, '周八', 'user6789', 'https://pica.zhimg.com/v2-d897afc0a2b4e08b0f48b17703c3a608_r.jpg?source=1940ef5c', 0, 'b0dd3697a192885d7c055db46155b26a', '+49 30 24047711', 'zhouba@example.com', 0, '2022-01-06 22:40:00', '2023-05-14 18:11:28', 0, 0, '2178');
INSERT INTO `user` VALUES (18, '吴九', 'user7890', 'https://picx.zhimg.com/v2-58c625304b123d73b3975eeb2b1ec7f5_r.jpg?source=1940ef5c', 0, 'b0dd3697a192885d7c055db46155b26a', '+55 21 2210 7200', 'wujui@example.com', 0, '2022-01-07 08:00:00', '2023-05-13 15:21:41', 0, 0, '45312');
INSERT INTO `user` VALUES (19, '郑十', 'user8901', 'https://pic1.zhimg.com/v2-94274e007579ca081436c9af301ee413_r.jpg?source=1940ef5c', 1, 'b0dd3697a192885d7c055db46155b26a', '+61 3 9349 1111', 'zhengshi@example.com', 0, '2022-01-08 11:30:00', '2023-05-14 18:11:38', 0, 0, '124');
INSERT INTO `user` VALUES (20, '孙一', 'user9012', 'https://pica.zhimg.com/v2-d897afc0a2b4e08b0f48b17703c3a608_r.jpg?source=1940ef5c', 0, 'b0dd3697a192885d7c055db46155b26a', '+86 13800138000', 'sunyi@example.com', 0, '2022-01-09 13:40:00', '2023-05-13 15:21:44', 0, 0, '86');
INSERT INTO `user` VALUES (21, '刘三', 'user1235', 'https://picx.zhimg.com/v2-a8e92316cbf9f5707b4f490a33fee37d_r.jpg?source=1940ef5c', 0, 'b0dd3697a192885d7c055db46155b26a', '+81 3-1234-5678', 'liusan@example.com', 0, '2022-01-10 15:50:00', '2023-05-13 15:21:42', 0, 0, '12');
INSERT INTO `user` VALUES (22, '周四', 'user2346', 'https://picx.zhimg.com/v2-58c625304b123d73b3975eeb2b1ec7f5_r.jpg?source=1940ef5c', 1, 'b0dd3697a192885d7c055db46155b26a', '+61 2 8310 5000', 'zhousi@example.com', 0, '2022-01-11 18:20:00', '2023-05-13 15:21:46', 0, 0, '145');
INSERT INTO `user` VALUES (23, '吴五', 'user3457', 'https://pica.zhimg.com/v2-d897afc0a2b4e08b0f48b17703c3a608_r.jpg?source=1940ef5c', 0, 'b0dd3697a192885d7c055db46155b26a', '+33 1 42 68 53 00', 'wuwu@example.com', 0, '2022-01-12 21:40:00', '2023-05-13 15:21:47', 0, 1, '783');
INSERT INTO `user` VALUES (24, '郑六', 'user4568', 'https://picx.zhimg.com/v2-d2be29645ee30c9cd0dcea148c55b122_r.jpg?source=1940ef5c', 1, 'b0dd3697a192885d7c055db46155b26a', '+49 30 24047711', 'zhengliu@example.com', 0, '2022-01-13 11:00:00', '2023-05-13 15:21:53', 0, 0, '19');
INSERT INTO `user` VALUES (25, '王七', 'user5679', 'https://picx.zhimg.com/v2-a8e92316cbf9f5707b4f490a33fee37d_r.jpg?source=1940ef5c', 1, 'b0dd3697a192885d7c055db46155b26a', '+55 21 2210 7200', 'wangqi@example.com', 0, '2022-01-14 16:30:00', '2023-05-14 18:11:45', 0, 0, '138');
INSERT INTO `user` VALUES (26, '李八', 'user6780', 'https://picx.zhimg.com/v2-d2be29645ee30c9cd0dcea148c55b122_r.jpg?source=1940ef5c', 0, 'b0dd3697a192885d7c055db46155b26a', '+61 3 9349 1111', 'liba@example.com', 0, '2022-01-15 19:45:00', '2023-05-13 15:21:56', 0, 0, '157');
INSERT INTO `user` VALUES (27, '赵九', 'user7891', 'https://pic1.zhimg.com/v2-94274e007579ca081436c9af301ee413_r.jpg?source=1940ef5c', 0, 'b0dd3697a192885d7c055db46155b26a', '+86 13800138000', 'zhaoci@example.com', 0, '2022-01-16 08:10:00', '2023-05-14 18:11:50', 0, 0, '178');
INSERT INTO `user` VALUES (28, '孙十', 'user8902', 'https://pic1.zhimg.com/v2-94274e007579ca081436c9af301ee413_r.jpg?source=1940ef5c', 1, 'b0dd3697a192885d7c055db46155b26a', '+44 20 7123 4567', 'suntian@example.com', 0, '2022-01-17 12:20:00', '2023-05-13 15:22:00', 0, 0, '687');
INSERT INTO `user` VALUES (29, '周一', 'user9013', 'https://picx.zhimg.com/v2-a8e92316cbf9f5707b4f490a33fee37d_r.jpg?source=1940ef5c', 0, 'b0dd3697a192885d7c055db46155b26a', '+81 3-1234-5678', 'zhouyi@example.com', 0, '2022-01-18 14:50:00', '2023-05-14 18:11:57', 0, 1, '2287');

SET FOREIGN_KEY_CHECKS = 1;
