# library-javapub

爱校图书馆管理系统



`为了方便你更快上手，请耐心阅读下面全部内容，大约1分钟`

## 汇总下载地址

[github](https://github.com/Rodert/JavaPub-Web) | [gitee](https://gitee.com/rodert/JavaPub-Web) 



基于SSM【爱校图书馆管理系统】



> **博主介绍：** 🚀自媒体 JavaPub 独立维护人，全网粉丝15w+，csdn博客专家、java领域优质创作者，51ctoTOP10博主，知乎/掘金/华为云/阿里云/InfoQ等平台优质作者、专注于Java技术领域和副业。🚀
> 
> ---
> 
> **公众号：JavaPub** ⭐ ⭐简历模板、学习资料、面试题库等都给你💪
> 
>  ---
>  🍅 `文末获取源码` 🍅 无套路，免费领取
>  

> ## 前言介绍：



愚昧者怨天尤人，无能者长吁短叹，儒弱者颓然放弃。

随着我国经济的发展和科技的进步，信息文化的收集和整理越来越重要，图书馆的学习氛围浓厚、环境较为安静，且知识储量很大，因此成为人们学习和读书首先考虑的地方。当前，我国图书馆的数量增长越来越快，在地区的分布已经非常普遍，各大高校都有一所以上的图书馆，市区县区等地方也分布较密集，对当地的文化发展起了很大的积极作用。由于图书馆数量的增多，图书馆的管理系统也越来越重要，作者在此文中根据所调查的图书馆现状，找出了图书馆管理系统中存在的问题并分析了其发展趋试。


![在这里插入图片描述](https://img-blog.csdnimg.cn/2cedb38e75554707977114be1ac59230.png)
　　目前是信息化的时代，信息化的资源在人们的生活中越来越重要，图书馆也在发展数字资源，甚至成为很多图书馆重点发展的资源，但是在一些图书馆在发展数字资源的过程中却忽视了实体书的发展，这对于图书馆来说是得不偿失的。还有一些图书馆与之相反，只注重对实体书的收入而忽略了数据资源的发展，使得图书馆与信息化的脚步脱节。对于当前的图书馆来说，既要重视对实体书的收藏，也要兼顾数字资源的发展，要将二者相互结合，不能使其独立发展，实体书的内容丰富，数据资源更加方便快捷，二者各有优势，共同组成了图书馆的整体资源。目前许多图书馆的实体书与数字资源相对独立，要想取得更好的发展，必须将二者结合，互相促进，共同发展。


> ## 系统设计：

springboot、mybatis、bootstrap、mysql 开发的图书馆管理系统（适合新手）

学习springboot时写的这个系统，技术比较简单，注释简洁清楚，适合新手学习理解。整个项目采用的是 springboot、mybatis、jsp，另外手写了登录过滤器。

管理员可对 图书信息、用户信息、借阅信息 进行 增删改查 操作，管理员账户，可以重置非管理员账户的密码 

 

* 图书管理：当有新上架的图书时，在系统添加图书信息，供学生借阅
* 用户管理：添加用户时，其信息也会添加到登录表中 
* 管理员管理：同上 
* 账户密码重置： 
* 修改密码： 

用户登录后，根据用户信息，获取其已经选择的图书，和已经借阅的图书 

 

* 首页: 在这里借阅图书，选好后，将会自动跳转到已选图书选项 

* 图书借阅: 这里显示的是所有图书，用户可以选择没有被借阅的书籍进行借阅

* 我的借阅: 显示用户已经借阅的书籍，解决时间等图书详细信息 

* 修改密码: 



> ## 功能截图：

![在这里插入图片描述](https://img-blog.csdnimg.cn/00005510f8ac40759cf14edf81c8ee3f.png)
![在这里插入图片描述](https://img-blog.csdnimg.cn/d817eef0512c4a2ba1d4c4acdc525a9f.png)

![在这里插入图片描述](https://img-blog.csdnimg.cn/6e104137a2d34785bbfe07d94e942e6e.png)
![在这里插入图片描述](https://img-blog.csdnimg.cn/93e3a4cfc47843a48a2a5278b290ded7.png)
![在这里插入图片描述](https://img-blog.csdnimg.cn/ac024ba30d52442b9df07284e9d93498.png)


> ## 代码实现：

```sql
/*
 Navicat Premium Data Transfer
 
 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50560
 Source Host           : localhost:3306
 Source Schema         : library
 
 Target Server Type    : MySQL
 Target Server Version : 50560
 File Encoding         : 65001
 
 Date: 21/09/2019 21:26:46
*/
 
SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;
 
-- ----------------------------
-- Table structure for admins
-- ----------------------------
DROP TABLE IF EXISTS `admins`;
CREATE TABLE `admins`  (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `stuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`aid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;
 
-- ----------------------------
-- Records of admins
-- ----------------------------
INSERT INTO `admins` VALUES (2, '最代码', 'zuidaima', '96e79218965eb72c92a549dd5a330112');
INSERT INTO `admins` VALUES (3, '王五', 'wangwu', '96e79218965eb72c92a549dd5a330112');
 
 
-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book`  (
  `bid` int(11) NOT NULL AUTO_INCREMENT,
  `bookname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `author` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `publisher` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `publicationdate` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `comment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`bid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;
 
-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES (1, '斗破苍穹', '脑残土豆', '玄幻', '起点', '2012-04-06', 20, '2', '无');
INSERT INTO `book` VALUES (2, '武动乾坤', '脑残土豆', '玄幻', '起点', '2012-04-06', 20, '2', '无');
INSERT INTO `book` VALUES (3, '元尊', '脑残土豆', '玄幻', '起点', '2012-04-06', 20, '2', '无');
INSERT INTO `book` VALUES (4, '斗罗大陆', '唐三', '玄幻', '起点', '2012-04-06', 20, '2', '无');
INSERT INTO `book` VALUES (6, '绝世唐门', '唐三', '玄幻', '起点', '2012-04-06', 20, '2', '无');
INSERT INTO `book` VALUES (7, '龙王传说', '唐三', '玄幻', '起点', '2012-04-06', 20, '1', '无');
INSERT INTO `book` VALUES (9, '神墓', '辰东', '玄幻', '起点', '2019-08-14', 23, '1', '无');
INSERT INTO `book` VALUES (10, '盗墓笔记', '南派三叔', '悬疑', '起点', '2019-08-07', 45, '1', '无');
INSERT INTO `book` VALUES (11, '鬼吹灯', '霸唱天下', '悬疑', '起点', '2019-08-07', 45, '1', '无');
 
 
-- ----------------------------
-- Table structure for borrow
-- ----------------------------
DROP TABLE IF EXISTS `borrow`;
CREATE TABLE `borrow`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `borrower` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `borrowtime` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `bookname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `bid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;
 
-- ----------------------------
-- Records of borrow
-- ----------------------------
INSERT INTO `borrow` VALUES (21, 'jack', '2019-08-19', '斗破苍穹', 1);
INSERT INTO `borrow` VALUES (22, 'jack', '2019-08-19', '武动乾坤', 2);
INSERT INTO `borrow` VALUES (23, 'rose', '2019-08-19', '元尊', 3);
INSERT INTO `borrow` VALUES (24, 'rose', '2019-08-19', '斗罗大陆', 4);
INSERT INTO `borrow` VALUES (25, 'javaniu', '2019-09-21', '绝世唐门', 6);
 
-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sex` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `institute` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `profession` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `classname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `stuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;
 
-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (3, 'rick', '男', '18090093154', '能源学院', '石油工程', '3班', '1198495155', '96e79218965eb72c92a549dd5a330112');
INSERT INTO `user` VALUES (4, 'jack', '男', '18090093154', '能源学院', '石油工程', '3班', '123', '96e79218965eb72c92a549dd5a330112');
INSERT INTO `user` VALUES (5, 'javaniu', '女', '18090093154', '能源学院', '石油工程', '3班', 'javaniu', '96e79218965eb72c92a549dd5a330112');
 
SET FOREIGN_KEY_CHECKS = 1;
```

> ## 论文参考：


![在这里插入图片描述](https://img-blog.csdnimg.cn/864963dc60414723bfefa961108e2e4b.png)



> ### 源码获取:
> 
>  大家`点赞、收藏、关注、评论`啦 、查看👇🏻👇🏻👇🏻`微信`公众号获取联系方式👇🏻👇🏻👇🏻
> 
> 公众号回复：[爱校图书馆管理系统]
> 
> ---
> 
>  打卡 文章 `更新 1 /  365天`
> 
> ---
> 
>  **精彩专栏推荐订阅：在下方专栏**👇🏻👇🏻👇🏻👇🏻
> 
> ---
> 
> [Java项目精品实战案例《101套》](https://blog.csdn.net/qq_40374604/category_11788364.html)
> 
> ---
> 
> [web前端期末大作业网页实战《365套》](https://blog.csdn.net/qq_40374604/category_11789121.html)
> 





