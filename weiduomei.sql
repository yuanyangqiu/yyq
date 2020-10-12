-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2019-11-20 05:13:11
-- 服务器版本： 10.1.28-MariaDB
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `xz`
--
CREATE DATABASE IF NOT EXISTS `weiduomei` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `weiduomei`;


-- --------------------------------------------------------

--
-- 表的结构 `weiduomei_cake_details`
--

DROP TABLE IF EXISTS `weiduomei_cake_details`;
CREATE TABLE `weiduomei_cake_details` (
  `lid` int(11) NOT NULL,
  `imgone_t` varchar(128) DEFAULT NULL,
  `imgtwo_t` varchar(128) DEFAULT NULL,
  `imgthree_t` varchar(128) DEFAULT NULL,
  `title1` varchar(64) DEFAULT NULL,
  `title2` varchar(64) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `details` varchar(128) DEFAULT NULL,
  `imgone_b` varchar(128) DEFAULT NULL,
  `imgtwo_b` varchar(128) DEFAULT NULL,
  `imgthre_b` varchar(128) DEFAULT NULL,
  `imgfour_b` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 插入之前先把表清空（truncate） `weiduomei_cake_details`
--

TRUNCATE TABLE `weiduomei_cake_details`;
--
-- 转存表中的数据 `weiduomei_cake_details`
--

INSERT INTO `weiduomei_cake_details` (`lid`, `imgone_t`, `imgtwo_t`, `imgthree_t`,`title1`,`title2`,`price`,`details`,`imgone_b`,`imgtwo_b`,`imgthre_b`,`imgfour_b`) VALUES
(1, 'http://static.wdmcake.cn/images/201907/thumb_img/2251_thumb_P_1563836805338.jpg', 'http://static.wdmcake.cn/images/201907/thumb_img/2251_thumb_P_1563836835588.jpg', 'http://static.wdmcake.cn/images/201908/thumb_img/2251_thumb_P_1566323725342.jpg','小恐龙蛋糕',
'Dinosaur Cake','208','在侏罗纪公园中，去探索，去冒险，去发掘100%使用进口天然稀奶油的美味所在','http://www.wdmcake.cn/images/upload/Image/%E5%B0%8F%E6%81%90%E9%BE%99%E8%9B%8B%E7%B3%95_01.jpg','http://www.wdmcake.cn/images/upload/Image/%E5%B0%8F%E6%81%90%E9%BE%99%E8%9B%8B%E7%B3%95_02.jpg','http://www.wdmcake.cn/images/upload/Image/%E5%B0%8F%E6%81%90%E9%BE%99%E8%9B%8B%E7%B3%95_03.jpg','http://www.wdmcake.cn/images/upload/Image/%E5%B0%8F%E6%81%90%E9%BE%99%E8%9B%8B%E7%B3%95_04.jpg'),
(2, 'http://static.wdmcake.cn/images/201910/thumb_img/2273_thumb_P_1570501535464.jpg', 'http://static.wdmcake.cn/images/201910/thumb_img/2273_thumb_P_1570501544566.jpg', 'http://static.wdmcake.cn/images/201910/thumb_img/2273_thumb_P_1570501550897.jpg','花漾蛋糕','Flowers overflow Cake','218','选用法国或英国天然稀奶油；奶油丰富，享受经典原味','http://www.wdmcake.cn/images/upload/Image/2018071977.jpg','http://www.wdmcake.cn/images/upload/Image/2018071978.jpg','http://www.wdmcake.cn/images/upload/Image/2018071979.jpg','http://www.wdmcake.cn/images/upload/Image/2018071980.jpg'),
(3, 'http://static.wdmcake.cn/images/201910/thumb_img/2256_thumb_P_1570498400727.jpg', 'http://static.wdmcake.cn/images/201910/thumb_img/2256_thumb_P_1570498410148.jpg', 'http://static.wdmcake.cn/images/201910/thumb_img/2256_thumb_P_1570498415972.jpg','草莓公主蛋糕',
'Strawberry Princess Cake','208','娇艳欲滴草莓公主，在100%使用天然稀奶油的陪衬下鲜美无比，似乎每个人都想咬上一口','http://www.wdmcake.cn/images/upload/Image/2018071925.jpg','http://www.wdmcake.cn/images/upload/Image/2018071926.jpg','http://www.wdmcake.cn/images/upload/Image/2018071927.jpg','http://www.wdmcake.cn/images/upload/Image/2018071928.jpg'),
(4, 'http://static.wdmcake.cn/images/202007/thumb_img/2261_thumb_P_1594590569320.jpg', 'http://static.wdmcake.cn/images/201910/thumb_img/2261_thumb_P_1570504357278.jpg', 'http://static.wdmcake.cn/images/201910/thumb_img/2261_thumb_P_1570504362757.jpg','经典100%蛋糕',
'Classical Natural Cream','168','100%使用进口天然稀奶油；奶油丰富，简约时尚，享受经典原味','http://www.wdmcake.cn/images/upload/Image/870(54).jpg','http://www.wdmcake.cn/images/upload/Image/%E7%BB%8F%E5%85%B8100_02.jpg','http://www.wdmcake.cn/images/upload/Image/%E7%BB%8F%E5%85%B8100_03.jpg','http://www.wdmcake.cn/images/upload/Image/%E4%BB%99%E6%A1%83%E7%A5%9D%E5%AF%BF%E8%9B%8B%E7%B3%95%E8%AF%A6%E6%83%85%E9%A1%B5_01.jpg');


-- --------------------------------------------------------

--
-- 表的结构 `weiduomei_shoppingcar`
--

DROP TABLE IF EXISTS `weiduomei_shoppingcar`;
CREATE TABLE `weiduomei_shoppingcar` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `title` varchar(64) DEFAULT NULL,
  `num` varchar(128) DEFAULT NULL,
  `price` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 插入之前先把表清空（truncate） `weiduomei_shoppingcar`
--

TRUNCATE TABLE `weiduomei_shoppingcar`;
--
-- 转存表中的数据 `weiduomei_shoppingcar`
--

INSERT INTO `weiduomei_shoppingcar` (`id`,`pid`, `title`, `num`,`price`) VALUES
(1,1, '小恐龙蛋糕', '1','208');
--(2,2, '花漾蛋糕', '0','218'),
--(3,3, '草莓公主蛋糕', '0','208'),
--(4,4, '经典100%蛋糕', '0','168');

-- --------------------------------------------------------

--
-- 表的结构 `weiduomei_cake_product`
--

DROP TABLE IF EXISTS `weiduomei_cake_product`;
CREATE TABLE `weiduomei_cake_product` (
 `pid` int(11) NOT NULL,
  `title` varchar(64) DEFAULT NULL,
  `details` varchar(128) DEFAULT NULL,
  `pic` varchar(128) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `size` varchar(128) DEFAULT NULL,
  `href` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 插入之前先把表清空（truncate） `weiduomei_cake_product`
--

TRUNCATE TABLE `weiduomei_cake_product`;
--
-- 转存表中的数据 `weiduomei_cake_product`
--

INSERT INTO `weiduomei_cake_product` (`pid`, `title`, `details`, `pic`, `price`, `size`,`href`) VALUES
(1, '小恐龙蛋糕 Dinosaur Cake', '/在侏罗纪公园中，去探索，去冒险，去发掘100%使用进口天然稀奶油的美味所在/', 'http://static.wdmcake.cn/images/201907/goods_img/2251_G_1563836876690.jpg', '208', '/Φ15cm原味蛋糕杂果夹心','1'),
(2, '提拉米苏蛋糕 Tiramisu', '/100%使用进口干酪与100%使用进口天然稀奶油搭配一起，使得意式风情的甜蜜时光更是浪漫/', 'http://static.wdmcake.cn/images/201910/goods_img/2266_G_1570507370053.jpg', '208', '/Φ20cm 提拉米苏慕斯蛋糕 无水果夹心','2'),
(3, '粉色少女蛋糕', '/100%使用进口天然稀奶油/', 'http://static.wdmcake.cn/images/202007/goods_img/2258_G_1594595945579.jpg', '188', '/Φ15cm 原味蛋糕 杂果夹心','3'),
(4, '华尔兹蛋糕 Waltz Almond', '/100%使用进口天然稀奶油；搭配进口扁桃仁片/', 'http://static.wdmcake.cn/images/201910/goods_img/2263_G_1570502358595.jpg', '178', '/Φ15cm原味蛋糕杂果夹心','4'),
(5, '经典黑森林蛋糕 Classic Black Forest Cake', '/100%使用进口天然稀奶油，与樱桃层层融合/', 'http://static.wdmcake.cn/images/201910/goods_img/2264_G_1570504882701.jpg', '178', '/Φ15cm 巧克力味蛋糕 黑樱桃夹心','5'),
(6, '北极熊蛋糕 Polar Bears Cake', '/置身于北极熊的冰雪童话之中，在唇齿间感受100%使用进口天然稀奶油的香醇，甜蜜在心中化开/', 'http://static.wdmcake.cn/images/201907/goods_img/2248_G_1563839051246.jpg', '178', '/Φ15cm原味蛋糕杂果夹心','6'),
(7, '草莓公主蛋糕 Strawberry Princess Cake', '/娇艳欲滴草莓公主，在100%使用天然稀奶油的陪衬下鲜美无比，似乎每个人都想咬上一口/', 'http://static.wdmcake.cn/images/201910/goods_img/2256_G_1570498400100.jpg', '188', '/Φ15cm原味蛋糕 杂果夹心
','7'),
(8, '经典100%蛋糕 Classical Natural Cream', '/100%使用进口天然稀奶油；奶油丰富，简约时尚，享受经典原味/', 'http://static.wdmcake.cn/images/202007/goods_img/2261_G_1594590569763.jpg', '178', '/Φ15cm原味蛋糕杂果夹心','8'),
(9, '大黑爱小白蛋糕 Cute Pink Cream Cake', '/大黑的世界，只有小白能懂，甜蜜的童话在100%使用天然稀奶油的保护下更是多彩缤纷/', 'http://static.wdmcake.cn/images/201911/goods_img/2277_G_1574897116940.jpg', '208', '/Φ15cm 原味蛋糕 杂果夹心','9'),
(10, '缤纷盛果蛋糕 Profusion Fruit', '/100%使用进口天然稀奶油；搭配丰富的水果/', 'http://static.wdmcake.cn/images/201910/goods_img/2262_G_1570496820942.jpg', '188', '/Φ15cm原味蛋糕杂果夹心','10'),
(11, '巧克力盛宴蛋糕 Chocolate Banguet Cake', '/巧克力奶油天堂，每一口都能尝到巧克力的香甜，每一口都有100%使用进口天然稀奶油的自然味道 /', 'http://static.wdmcake.cn/images/201910/goods_img/2265_G_1570507480866.jpg', '228', '/Φ15cm 巧克力味蛋糕 双色巧克力爆谷米夹心','11'),
(12, '草莓丝绒蛋糕', '/100%使用进口天然稀奶油/', 'http://static.wdmcake.cn/images/201908/goods_img/2288_G_1567106753014.jpg', '188', '/Φ15cm 原味蛋糕 杂果夹心','12'),
(13, '仙桃祝寿蛋糕', '/100%使用进口天然稀奶油/', 'http://static.wdmcake.cn/images/201910/goods_img/2290_G_1570506812397.jpg', '228', '/Φ20cm原味蛋糕杂果夹心','13'),
(14, '芒果派对蛋糕', '/100%使用进口天然稀奶油/', 'http://static.wdmcake.cn/images/201908/goods_img/2260_G_1567106779427.jpg', '188', '/Φ15cm原味蛋糕杂果夹心','14'),
(15, '雪域森林蛋糕', '/100%使用进口天然稀奶油/', 'http://static.wdmcake.cn/images/201908/goods_img/2275_G_1567106728615.jpg', '228', '/Φ20cm原味蛋糕杂果夹心','15'),
(16, '小熊芭迪蛋糕', '/100%使用进口天然稀奶油/', 'http://static.wdmcake.cn/images/201908/goods_img/2253_G_1567106828092.jpg', '268', '/Φ15cm 原味蛋糕 双色巧克力爆谷米夹心','16'),
(17, '富贵天喜蛋糕 Riches&Honour', '/100%使用进口天然稀奶油；福寿绵延，祝寿好礼/', 'http://static.wdmcake.cn/images/201910/goods_img/2270_G_1570501058402.jpg', '228', '/Φ20cm原味蛋糕杂果夹心','17'),
(18, '福寿绵长蛋糕 Happiness and Longevity', '/100%使用进口天然稀奶油的长寿祝福，绵延整个南山/', 'http://static.wdmcake.cn/images/201910/goods_img/2274_G_1570579399078.jpg', '228', '/Φ20cm原味蛋糕杂果夹心','18'),
(19, '双层北极熊蛋糕 Polar Bears Cake', '/憨态可掬的北极熊，相互交流着各自的探险经历和欢乐趣事，你一句、我一句，场面热闹非凡/', 'http://static.wdmcake.cn/images/201907/goods_img/2252_G_1563839248366.jpg', '498', '/Φ15cm+Φ25cm原味蛋糕杂果夹心','19'),
(20, '轻柔芝士蛋糕 Light Cheese', '/100%使用进口干酪的轻柔，表达着赤诚的真心，感动你我/', 'http://static.wdmcake.cn/images/201907/goods_img/2252_G_1563839248366.jpg', '228', '/Φ18cm 乳酪蛋糕 无水果夹心','20'),
(21, '童梦奇缘蛋糕 Childhood Dream', '/孩子们都有个游乐园般的欢乐梦想，就是被100%使用进口天然稀奶油做成的礼物包围。（产品以实物为准）/', 'http://static.wdmcake.cn/images/201910/goods_img/2276_G_1570507963155.jpg', '198', '/Φ15cm原味蛋糕杂果夹心','21'),
(22, '聚福蛋糕', '/呆萌兔儿的梦想很简单，就是吃口100%使用进口天然稀奶油的香甜/', 'http://static.wdmcake.cn/images/201910/goods_img/2269_G_1570506031512.jpg', '498', '/Φ15cm+Φ25cm原味蛋糕杂果夹心','22'),
(23, '萌萌兔蛋糕 Cute Rabbit', '/呆萌兔儿的梦想很简单，就是吃口100%使用进口天然稀奶油的香甜/', 'http://static.wdmcake.cn/images/202007/goods_img/2272_G_1594596050683.jpg', '198', '/Φ15cm原味蛋糕杂果夹心','23'),
(24, '森林狂想曲蛋糕 Chocolate and Cherry & Berry', '/100%使用进口天然稀奶油，简单时尚的“裸”蛋糕 /', 'http://static.wdmcake.cn/images/202007/goods_img/2268_G_1594593362509.jpg', '188', '/Φ13cm巧克力味蛋糕黑樱桃夹心','24'),
(25, '咩咩羊蛋糕 Sheep Almond', '/小羊的聪明才智来源于不断地尝试，不断地创新，不断地发掘100%使用进口天然稀奶油的美味所在/', 'http://static.wdmcake.cn/images/201910/goods_img/2271_G_1570506874022.jpg', '188', '/Φ15cm原味蛋糕杂果夹心','25'),
(26, '花漾蛋糕', '/选用法国或英国天然稀奶油；奶油丰富，享受经典原味/', 'http://static.wdmcake.cn/images/201910/goods_img/2273_G_1570501535205.jpg', '248', '/Φ20cm 原味蛋糕 杂果夹心','26'),
(27, '爱的花语蛋糕', '/100%使用进口天然稀奶油/', 'http://static.wdmcake.cn/images/201908/goods_img/2289_G_1567106636544.jpg', '188', '/Φ15cm原味蛋糕杂果夹心','27'),
(28, '芝士小狮子蛋糕', '/100%使用进口天然稀奶油/', 'http://static.wdmcake.cn/images/201908/goods_img/2257_G_1567106804086.jpg', '308', '/Φ23cm 乳酪蛋糕 无水果夹心','28'),
(29, '草莓甜心蛋糕', '/100%使用进口天然稀奶油/', 'http://static.wdmcake.cn/images/201908/goods_img/2259_G_1567106691211.jpg', '188', '/Φ15cm原味蛋糕杂果夹心','29'),
(30, '可可天使蛋糕', '/100%使用进口天然稀奶油/', 'http://static.wdmcake.cn/images/201908/goods_img/2287_G_1567106664599.jpg', '188', '/Φ15cm原味蛋糕杂果夹心','30'),
(31, '福寿延年 Happiness And Longevity', '/100%使用进口天然稀奶油，多桃多寿/', 'http://static.wdmcake.cn/images/201910/goods_img/2368_G_1570555395375.jpg', '1299', '/3层 原味蛋糕 杂果夹心','31'),
(32, '盛宴 Grand Banquet', '/时尚风行的杯子蛋糕/', 'http://static.wdmcake.cn/images/201910/goods_img/2369_G_1570555198925.jpg', '599', '/4层 原味蛋糕 杂果夹心','32'),
(33, '挚爱一生蛋糕 Love You Lifetime', '/挚爱一生，见证此刻幸福，天然奶油的甜蜜祝福，由味道铭记/', 'http://static.wdmcake.cn/images/201910/goods_img/2336_G_1570555639441.jpg', '1299', '/3层 原味蛋糕 杂果夹心','33');

-- --------------------------------------------------------

--

-------------------------------------------------

--
-- 表的结构 `weiduomei_user`
--

DROP TABLE IF EXISTS `weiduomei_user`;
CREATE TABLE `weiduomei_user` (
  `uid` int(11) NOT NULL,
  `username` varchar(32) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 插入之前先把表清空（truncate） `xz_user`
--

TRUNCATE TABLE `weiduomei_user`;
--
-- 转存表中的数据 `xz_user`
--

INSERT INTO `weiduomei_user` (`uid`, `username`, `password`) VALUES
(1, 'dingding', '123456'),
(2, 'dangdang', '123456'),
(3, 'doudou', '123456'),
(4, 'yaya', '123456');


--
-- Indexes for table `weiduomei_cake_product`
--
ALTER TABLE `weiduomei_cake_product`
  ADD PRIMARY KEY (`pid`);



-- Indexes for table `xz_shoppingcart_item`
--
ALTER TABLE `weiduomei_shoppingcar`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `xz_user`
--
ALTER TABLE `weiduomei_user`
  ADD PRIMARY KEY (`uid`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
