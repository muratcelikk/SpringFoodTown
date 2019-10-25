-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 25 Eyl 2019, 00:43:44
-- Sunucu sürümü: 10.1.38-MariaDB
-- PHP Sürümü: 7.1.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `foodtown`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `admin`
--

CREATE TABLE `admin` (
  `aid` int(11) NOT NULL,
  `aname` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `amail` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `apass` varchar(32) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `admin`
--

INSERT INTO `admin` (`aid`, `aname`, `amail`, `apass`) VALUES
(1, 'Murat Çelik', 'admin@mail.com', '827ccb0eea8a706c4c34a16891f84e7b'),
(5, 'Jonathon look', 'look@mail.com', '827ccb0eea8a706c4c34a16891f84e7b');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `api`
--

CREATE TABLE `api` (
  `apiid` int(11) NOT NULL,
  `apiname` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `apikey` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `apimail` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `apipass` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `role` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `api`
--

INSERT INTO `api` (`apiid`, `apiname`, `apikey`, `apimail`, `apipass`, `role`) VALUES
(1, 'Albert Einstein', '82207c62ea6b8e93d3a57f109781e910', 'albert@mail.com', '12345', 'ADMIN'),
(2, 'Henry Ford', 'ca2e25e13eb0f4e18b1c36dd2d38acf4', 'henry@mail.com', '12345', 'USER');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `bcomment`
--

CREATE TABLE `bcomment` (
  `bcid` int(11) NOT NULL,
  `bcname` varchar(100) COLLATE utf8_turkish_ci DEFAULT NULL,
  `bcmail` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `bcomment` text COLLATE utf8_turkish_ci,
  `bcommentid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `bcomment`
--

INSERT INTO `bcomment` (`bcid`, `bcname`, `bcmail`, `bcomment`, `bcommentid`) VALUES
(4, 'John', 'jo@mail.com', 'Cras vitae mi erat, posuere mollis arcu. Pellentesque iaculis gravida nulla ac hendrerit. Vestibulum faucibus neque at lacus tristique eu ultrices ipsum mollis. Phasellus venenatis, lacus in malesuada pellentesque, nisl ipsum faucibus velit, et eleifend velit nulla a mi. Praesent pharetra semper purus, a vehicula massa interdum in.', 1),
(5, 'Edgar', 'edgar@mail.com', 'Cras vitae mi erat, posuere mollis arcu. Pellentesque iaculis gravida nulla ac hendrerit. Vestibulum faucibus neque at lacus tristique eu ultrices ipsum mollis. Phasellus venenatis, lacus in malesuada pellentesque, nisl ipsum faucibus velit, et eleifend velit nulla a mi. Praesent pharetra semper purus, a vehicula massa interdum in.', 1),
(7, 'Alex De souza', 'de@mail.com', 'Cras vitae mi erat, posuere mollis arcu. Pellentesque iaculis gravida nulla ac hendrerit. Vestibulum faucibus neque at lacus tristique eu ultrices ipsum mollis. Phasellus venenatis, lacus in malesuada pellentesque, nisl ipsum faucibus velit, et eleifend velit nulla a mi. Praesent pharetra semper purus, a vehicula massa interdum in.', 4),
(9, 'Eric', 'eric@mail.com', 'Cras vitae mi erat, posuere mollis arcu. Pellentesque iaculis gravida nulla ac hendrerit. Vestibulum faucibus neque at lacus tristique eu ultrices ipsum mollis. Phasellus venenatis, lacus in malesuada pellentesque, nisl ipsum faucibus velit, et eleifend velit nulla a mi. Praesent pharetra semper purus, a vehicula massa interdum in.', 6),
(10, 'Bierhoff', 'bier@mail.com', 'Cras vitae mi erat, posuere mollis arcu. Pellentesque iaculis gravida nulla ac hendrerit. Vestibulum faucibus neque at lacus tristique eu ultrices ipsum mollis. Phasellus venenatis, lacus in malesuada pellentesque, nisl ipsum faucibus velit, et eleifend velit nulla a mi. Praesent pharetra semper purus, a vehicula massa interdum in.', 2),
(11, 'Jonathon', 'Jonathon@mail.com', 'diam consequat semper eu vitae elit. In hac habitasse platea dictumst. Mauris mattis auctor cursus. Phasellus tellus tellus, imperdiet ut imperdiet eu, iaculis a sem. Donec vehicula luctus nunc in laoreet. Aliquam erat volutpat. Suspendisse vulputate porttitor condimentum. Proin viverra orci a leo suscipit placerat. Sed feugiat posuere semper. Cras vitae mi erat, posuere mollis arcu. Pellentesq', 5);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `blog`
--

CREATE TABLE `blog` (
  `bid` int(11) NOT NULL,
  `btitle` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `bimg` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `bdesc` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `barticle` text COLLATE utf8_turkish_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `blog`
--

INSERT INTO `blog` (`bid`, `btitle`, `bimg`, `bdesc`, `barticle`) VALUES
(1, 'Instant Pot Carnitas Inspired Street Tacos Recipe', 'http://jellyster.com/html/fooddev/images/blog/grid-1.jpg', 'Pellentesque iaculis gravida nulla ac hendrerit. Vestibulum faucibus neque at lacus tristique eu ultrices ipsum mollis. Phasellus venenatis lacus...', 'Mauris mattis auctor cursus. Phasellus tellus tellus, imperdiet ut imperdiet eu, iaculis a sem. Donec vehicula luctus nunc in laoreet. Aliquam erat volutpat. Suspendisse vulputate porttitor condimentum. Proin viverra orci a leo suscipit placerat. Sed feugiat posuere semper. Cras vitae mi erat, posuere mollis arcu. Pellentesque iaculis gravida nulla ac hendrerit. Vestibulum faucibus neque at lacus tristique eu ultrices ipsum mollis. Phasellus venenatis, lacus in malesuada pellentesque, nisl ipsum faucibus velit, et eleifend velit nulla a mi. Praesent pharetra semper purus, a vehicula massa interdum in. Nulla a magna at diam consequat semper eu vitae elit. In hac habitasse platea dictumst.  Mauris mattis auctor cursus. Phasellus tellus tellus, imperdiet ut imperdiet eu, iaculis a sem. Donec vehicula luctus nunc in laoreet. Aliquam erat volutpat. Suspendisse vulputate porttitor condimentum. Proin viverra orci a leo suscipit placerat. Sed feugiat posuere semper. Cras vitae mi erat, posuere mollis arcu. Pellentesq'),
(2, 'Strawberry Shortcake Strawberry Pancakes Recipe', 'http://jellyster.com/html/fooddev/images/blog/grid-2.jpg', 'Pellentesque iaculis gravida nulla ac hendrerit. Vestibulum faucibus neque at lacus tristique eu ultrices ipsum mollis. Phasellus venenatis lacus...', 'Mauris mattis auctor cursus. Phasellus tellus tellus, imperdiet ut imperdiet eu, iaculis a sem. Donec vehicula luctus nunc in laoreet. Aliquam erat volutpat. Suspendisse vulputate porttitor condimentum. Proin viverra orci a leo suscipit placerat. Sed feugiat posuere semper. Cras vitae mi erat, posuere mollis arcu. Pellentesque iaculis gravida nulla ac hendrerit. Vestibulum faucibus neque at lacus tristique eu ultrices ipsum mollis. Phasellus venenatis, lacus in malesuada pellentesque, nisl ipsum faucibus velit, et eleifend velit nulla a mi. Praesent pharetra semper purus, a vehicula massa interdum in. Nulla a magna at diam consequat semper eu vitae elit. In hac habitasse platea dictumst.  Mauris mattis auctor cursus. Phasellus tellus tellus, imperdiet ut imperdiet eu, iaculis a sem. Donec vehicula luctus nunc in laoreet. Aliquam erat volutpat. Suspendisse vulputate porttitor condimentum. Proin viverra orci a leo suscipit placerat. Sed feugiat posuere semper. Cras vitae mi erat, posuere mollis arcu. Pellentesq'),
(3, 'Chicken Satay Recipe and a No Peanut Peanut Sauce', 'http://jellyster.com/html/fooddev/images/blog/grid-3.jpg', 'Pellentesque iaculis gravida nulla ac hendrerit. Vestibulum faucibus neque at lacus tristique eu ultrices ipsum mollis. Phasellus venenatis lacus...', 'Mauris mattis auctor cursus. Phasellus tellus tellus, imperdiet ut imperdiet eu, iaculis a sem. Donec vehicula luctus nunc in laoreet. Aliquam erat volutpat. Suspendisse vulputate porttitor condimentum. Proin viverra orci a leo suscipit placerat. Sed feugiat posuere semper. Cras vitae mi erat, posuere mollis arcu. Pellentesque iaculis gravida nulla ac hendrerit. Vestibulum faucibus neque at lacus tristique eu ultrices ipsum mollis. Phasellus venenatis, lacus in malesuada pellentesque, nisl ipsum faucibus velit, et eleifend velit nulla a mi. Praesent pharetra semper purus, a vehicula massa interdum in. Nulla a magna at diam consequat semper eu vitae elit. In hac habitasse platea dictumst.  Mauris mattis auctor cursus. Phasellus tellus tellus, imperdiet ut imperdiet eu, iaculis a sem. Donec vehicula luctus nunc in laoreet. Aliquam erat volutpat. Suspendisse vulputate porttitor condimentum. Proin viverra orci a leo suscipit placerat. Sed feugiat posuere semper. Cras vitae mi erat, posuere mollis arcu. Pellentesq'),
(16, 'How to Make Japanese Soufflé Creme Brûlée Pancakes', 'http://jellyster.com/html/fooddev/images/blog/grid-4.jpg', 'Pellentesque iaculis gravida nulla ac hendrerit. Vestibulum faucibus neque at lacus tristique eu ultrices ipsum mollis. Phasellus venenatis lacus...', 'Pellentesque iaculis gravida nulla ac hendrerit. Vestibulum faucibus neque at lacus tristique eu ultrices ipsum mollis. Phasellus venenatis lacus...\', \'Mauris mattis auctor cursus. Phasellus tellus tellus, imperdiet ut imperdiet eu, iaculis a sem. Donec vehicula luctus nunc in laoreet. Aliquam erat volutpat. Suspendisse vulputate porttitor condimentum. Proin viverra orci a leo suscipit placerat. Sed feugiat posuere semper. Cras vitae mi erat, posuere mollis arcu. Pellentesque iaculis gravida nulla ac hendrerit. Vestibulum faucibus neque at lacus tristique eu ultrices ipsum mollis. Phasellus venenatis, lacus in malesuada pellentesque, nisl ipsum faucibus velit, et eleifend velit nulla a mi. Praesent pharetra semper purus, a vehicula massa interdum in. Nulla a magna at diam consequat semper eu vitae elit. In hac habitasse platea dictumst.  Mauris mattis auctor cursus. Phasellus tellus tellus, imperdiet ut imperdiet eu, iaculis a sem. Donec vehicula luctus nunc in laoreet. Aliquam erat volutpat. Suspendisse vulputate porttitor condimentum. Proin viverra orci a leo suscipit placerat. Sed feugiat posuere semper. Cras vitae mi erat, posuere mollis arcu. Pellentesq\'');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `cart`
--

CREATE TABLE `cart` (
  `cartid` int(11) NOT NULL,
  `cartproduct` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `cartquantity` int(3) DEFAULT NULL,
  `cartprize` double(11,0) DEFAULT NULL,
  `cartimg` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `categories`
--

CREATE TABLE `categories` (
  `cid` int(11) NOT NULL,
  `cname` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `categories`
--

INSERT INTO `categories` (`cid`, `cname`) VALUES
(1, 'Burgers'),
(2, 'Pizzas'),
(3, 'Vegetarian'),
(4, 'Soft drinks'),
(5, 'Deserts');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `contact`
--

CREATE TABLE `contact` (
  `contactid` int(11) NOT NULL,
  `contactname` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `contactmail` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `contactsubject` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `contactphone` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `contactmessage` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `contact`
--

INSERT INTO `contact` (`contactid`, `contactname`, `contactmail`, `contactsubject`, `contactphone`, `contactmessage`) VALUES
(2, 'Kevin', 'kevin@mail.com', 'Valar morgulus', '99986387557', 'Valar morgulus neque at lacus tristique eu ultrices ipsum mollis. Phasellus venenatis, lacus in malesuada pellentesque');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `fcomment`
--

CREATE TABLE `fcomment` (
  `fcid` int(11) NOT NULL,
  `fcname` varchar(100) COLLATE utf8_turkish_ci DEFAULT NULL,
  `fcmail` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `fcomment` text COLLATE utf8_turkish_ci,
  `fcommentid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `fcomment`
--

INSERT INTO `fcomment` (`fcid`, `fcname`, `fcmail`, `fcomment`, `fcommentid`) VALUES
(2, 'John', 'jo@mail.com', 'Cras vitae mi erat, posuere mollis arcu. Pellentesque iaculis gravida nulla ac hendrerit. Vestibulum faucibus neque at lacus tristique eu ultrices ipsum mollis. Phasellus venenatis, lacus in malesuada pellentesque, nisl ipsum faucibus velit, et eleifend velit nulla a mi. Praesent pharetra semper purus, a vehicula massa interdum in.', 7),
(4, 'Edgar', 'edgar@mail.com', 'Cras vitae mi erat, posuere mollis arcu. Pellentesque iaculis gravida nulla ac hendrerit. Vestibulum faucibus neque at lacus tristique eu ultrices ipsum mollis. Phasellus venenatis, lacus in malesuada pellentesque, nisl ipsum faucibus velit, et eleifend velit nulla a mi. Praesent pharetra semper purus, a vehicula massa interdum in.', 9),
(6, 'Lulu', 'lulu@mail.com', 'Cras vitae mi erat, posuere mollis arcu. Pellentesque iaculis gravida nulla ac hendrerit. Vestibulum faucibus neque at lacus tristique eu ultrices ipsum mollis. Phasellus venenatis, lacus in malesuada pellentesque, nisl ipsum faucibus velit, et eleifend velit nulla a mi. Praesent pharetra semper purus, a vehicula massa interdum in.', 11),
(7, 'Samyy', 'samyy@mail.com', 'Cras vitae mi erat, posuere mollis arcu. Pellentesque iaculis gravida nulla ac hendrerit. Vestibulum faucibus neque at lacus tristique eu ultrices ipsum mollis. Phasellus venenatis, lacus in malesuada pellentesque, nisl ipsum faucibus velit, et eleifend velit nulla a mi. Praesent pharetra semper purus, a vehicula massa interdum in.', 12),
(22, 'Carlton', 'carlt@mail.com', 'Cras vitae mi erat, posuere mollis arcu. Pellentesque iaculis gravida nulla ac hendrerit. Vestibulum faucibus neque at lacus tristique eu ultrices ipsum mollis. Phasellus venenatis, lacus in malesuada pellentesque, nisl ipsum faucibus velit, et eleifend velit nulla a mi. Praesent pharetra semper purus, a vehicula massa interdum in.', 25),
(24, 'John', 'jo@mail.com', 'Cras vitae mi erat, posuere mollis arcu. Pellentesque iaculis gravida nulla ac hendrerit. Vestibulum faucibus neque at lacus tristique eu ultrices ipsum mollis. Phasellus venenatis, lacus in malesuada pellentesque, nisl ipsum faucibus velit, et eleifend velit nulla a mi. Praesent pharetra semper purus, a vehicula massa interdum in.', 7),
(25, 'Edgar', 'edgar@mail.com', 'Cras vitae mi erat, posuere mollis arcu. Pellentesque iaculis gravida nulla ac hendrerit. Vestibulum faucibus neque at lacus tristique eu ultrices ipsum mollis. Phasellus venenatis, lacus in malesuada pellentesque, nisl ipsum faucibus velit, et eleifend velit nulla a mi. Praesent pharetra semper purus, a vehicula massa interdum in.', 9),
(26, 'Lulu', 'lulu@mail.com', 'Cras vitae mi erat, posuere mollis arcu. Pellentesque iaculis gravida nulla ac hendrerit. Vestibulum faucibus neque at lacus tristique eu ultrices ipsum mollis. Phasellus venenatis, lacus in malesuada pellentesque, nisl ipsum faucibus velit, et eleifend velit nulla a mi. Praesent pharetra semper purus, a vehicula massa interdum in.', 11),
(27, 'Suny', 'suny@mail.com', 'Cras vitae mi erat, posuere mollis arcu. Pellentesque iaculis gravida nulla ac hendrerit. Vestibulum faucibus neque at lacus tristique eu ultrices ipsum mollis. Phasellus venenatis, lacus in malesuada pellentesque, nisl ipsum faucibus velit, et eleifend velit nulla a mi. Praesent pharetra semper purus, a vehicula massa interdum in.', 12),
(28, 'Carlton', 'carlt@mail.com', 'Cras vitae mi erat, posuere mollis arcu. Pellentesque iaculis gravida nulla ac hendrerit. Vestibulum faucibus neque at lacus tristique eu ultrices ipsum mollis. Phasellus venenatis, lacus in malesuada pellentesque, nisl ipsum faucibus velit, et eleifend velit nulla a mi. Praesent pharetra semper purus, a vehicula massa interdum in.', 25);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `order`
--

CREATE TABLE `order` (
  `oid` int(11) NOT NULL,
  `ototalprize` double(255,0) DEFAULT NULL,
  `ototalquantity` int(255) DEFAULT NULL,
  `statu` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `uid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `order`
--

INSERT INTO `order` (`oid`, `ototalprize`, `ototalquantity`, `statu`, `uid`) VALUES
(10, 26, 2, 'Delivered', 3),
(11, 70, 5, 'On Way', 4),
(13, 125, 9, 'On Way', 8),
(14, 55, 4, 'On Way', 4),
(15, 52, 2, 'Preparing', 8),
(23, 60, 3, 'Preparing', 0),
(24, 14, 1, 'On Way', 3),
(25, 13, 1, 'Preparing', 11);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `order_table`
--

CREATE TABLE `order_table` (
  `oid` int(11) NOT NULL,
  `ototalprize` double(255,0) DEFAULT NULL,
  `ototalquantity` int(11) NOT NULL,
  `statu` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `uname` varchar(255) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `product`
--

CREATE TABLE `product` (
  `pid` int(11) NOT NULL,
  `pimg` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `pname` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `pdesc` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `pprize` double(11,0) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `product`
--

INSERT INTO `product` (`pid`, `pimg`, `pname`, `pdesc`, `pprize`, `cid`) VALUES
(6, 'http://jellyster.com/html/fooddev/images/food-menu/burger1.jpg', 'Luger Burger', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat', 12, 1),
(7, 'http://jellyster.com/html/fooddev/images/food-menu/burger2.jpg', 'Le Pigeon Burger', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat', 13, 1),
(8, 'http://jellyster.com/html/fooddev/images/food-menu/burger3.jpg', 'Double Animal Style', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat', 14, 1),
(9, 'http://jellyster.com/html/fooddev/images/food-menu/burger4.jpg', 'Whiskey King Burger', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat', 15, 1),
(10, 'http://jellyster.com/html/fooddev/images/food-menu/burger1.jpg', 'Vista La Burger', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat', 13, 1),
(11, 'http://jellyster.com/html/fooddev/images/food-menu/burger2.jpg', 'Combo Fista Burger', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat', 14, 1),
(12, 'http://jellyster.com/html/fooddev/images/food-menu/pizza1.jpg', 'Pizza Alla Napoletana', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat', 22, 2),
(13, 'http://jellyster.com/html/fooddev/images/food-menu/pizza2.jpg', 'Pizza Mariana', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat', 23, 2),
(14, 'http://jellyster.com/html/fooddev/images/food-menu/pizza3.jpg', 'Pizza Veronese', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat', 24, 2),
(15, 'http://jellyster.com/html/fooddev/images/food-menu/pizza4.jpg', 'Pizza Ai Quattro', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat', 25, 2),
(16, 'http://jellyster.com/html/fooddev/images/food-menu/pizza1.jpg', 'Pizza De Vochi', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat', 26, 2),
(17, 'http://jellyster.com/html/fooddev/images/food-menu/pizza2.jpg', 'Pizza Combisso', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat', 24, 2),
(18, 'http://jellyster.com/html/fooddev/images/food-menu/salad1.jpg', 'Pilachu Fruit', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat', 5, 3),
(19, 'http://jellyster.com/html/fooddev/images/food-menu/salad2.jpg', 'Choloride', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat', 13, 3),
(20, 'http://jellyster.com/html/fooddev/images/food-menu/salad3.jpg', 'Brocco Flower', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat', 14, 3),
(21, 'http://jellyster.com/html/fooddev/images/food-menu/salad4.jpg', 'Brussels Sprouts', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat', 15, 3),
(22, 'http://jellyster.com/html/fooddev/images/food-menu/salad1.jpg', 'Green Paradise', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat', 16, 3),
(23, 'http://jellyster.com/html/fooddev/images/food-menu/salad2.jpg', 'Amazons', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat', 17, 3),
(24, 'http://jellyster.com/html/fooddev/images/food-menu/drink1.jpg', 'Keurig Dr Pepper', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat', 5, 4),
(25, 'http://jellyster.com/html/fooddev/images/food-menu/drink2.jpg', 'Hamoud Boualem', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat', 13, 4),
(26, 'http://jellyster.com/html/fooddev/images/food-menu/drink3.jpg', 'National Beverage', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat', 14, 4),
(27, 'http://jellyster.com/html/fooddev/images/food-menu/drink4.jpg', 'Polar Beverages', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat', 15, 4),
(28, 'http://jellyster.com/html/fooddev/images/food-menu/drink1.jpg', 'Natural Beauty', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat', 16, 4),
(29, 'http://jellyster.com/html/fooddev/images/food-menu/drink2.jpg', 'Eyes Wide Shot', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat', 17, 4),
(30, 'http://jellyster.com/html/fooddev/images/food-menu/dessert1.jpg', 'Mint Oreo Cake', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat', 12, 5),
(31, 'http://jellyster.com/html/fooddev/images/food-menu/dessert2.jpg', 'Ultimate Gooey', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat', 13, 5),
(32, 'http://jellyster.com/html/fooddev/images/food-menu/dessert3.jpg', 'Butter Finger Cookie', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat', 14, 5),
(34, 'http://jellyster.com/html/fooddev/images/food-menu/dessert4.jpg', 'Meyer Lemon Bars', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat', 15, 5),
(35, 'http://jellyster.com/html/fooddev/images/food-menu/dessert1.jpg', 'Bavaria Dream', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat', 16, 5),
(36, 'http://jellyster.com/html/fooddev/images/food-menu/dessert2.jpg', 'Cream De La Bruges', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat', 17, 5);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `product_table`
--

CREATE TABLE `product_table` (
  `pid` int(11) NOT NULL,
  `pname` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `pimg` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `pprize` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `cname` varchar(255) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `user`
--

CREATE TABLE `user` (
  `uid` int(11) NOT NULL,
  `uname` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `umail` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `upass` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `user`
--

INSERT INTO `user` (`uid`, `uname`, `umail`, `upass`) VALUES
(3, 'Jennifer Lopez', 'jenn@mail.com', '827ccb0eea8a706c4c34a16891f84e7b'),
(4, 'Thomas Humprey', 'thomas@mail.com', '827ccb0eea8a706c4c34a16891f84e7b'),
(8, 'Keanu Reeves', 'ken@mail.com', '827ccb0eea8a706c4c34a16891f84e7b'),
(9, 'Jonathan Cooper', 'jon@mail.com', '827ccb0eea8a706c4c34a16891f84e7b'),
(11, 'admin', 'admin@mail.com', '827ccb0eea8a706c4c34a16891f84e7b'),
(12, 'Jennifer Lopez', 'jenn@mail.com', '827ccb0eea8a706c4c34a16891f84e7b'),
(13, 'Thomas Humprey', 'thomas@mail.com', '827ccb0eea8a706c4c34a16891f84e7b'),
(14, 'Keanu Reeves', 'ken@mail.com', '827ccb0eea8a706c4c34a16891f84e7b'),
(15, 'Jonathan Cooper', 'jon@mail.com', '827ccb0eea8a706c4c34a16891f84e7b'),
(16, 'admin', 'admin@mail.com', '827ccb0eea8a706c4c34a16891f84e7b');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`aid`);

--
-- Tablo için indeksler `api`
--
ALTER TABLE `api`
  ADD PRIMARY KEY (`apiid`);

--
-- Tablo için indeksler `bcomment`
--
ALTER TABLE `bcomment`
  ADD PRIMARY KEY (`bcid`);

--
-- Tablo için indeksler `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`bid`);

--
-- Tablo için indeksler `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cartid`) USING BTREE;

--
-- Tablo için indeksler `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cid`);

--
-- Tablo için indeksler `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contactid`);

--
-- Tablo için indeksler `fcomment`
--
ALTER TABLE `fcomment`
  ADD PRIMARY KEY (`fcid`);

--
-- Tablo için indeksler `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`oid`);

--
-- Tablo için indeksler `order_table`
--
ALTER TABLE `order_table`
  ADD PRIMARY KEY (`oid`);

--
-- Tablo için indeksler `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`pid`);

--
-- Tablo için indeksler `product_table`
--
ALTER TABLE `product_table`
  ADD PRIMARY KEY (`pid`);

--
-- Tablo için indeksler `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uid`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `admin`
--
ALTER TABLE `admin`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `api`
--
ALTER TABLE `api`
  MODIFY `apiid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `bcomment`
--
ALTER TABLE `bcomment`
  MODIFY `bcid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Tablo için AUTO_INCREMENT değeri `blog`
--
ALTER TABLE `blog`
  MODIFY `bid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Tablo için AUTO_INCREMENT değeri `cart`
--
ALTER TABLE `cart`
  MODIFY `cartid` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `categories`
--
ALTER TABLE `categories`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `contact`
--
ALTER TABLE `contact`
  MODIFY `contactid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `fcomment`
--
ALTER TABLE `fcomment`
  MODIFY `fcid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Tablo için AUTO_INCREMENT değeri `order`
--
ALTER TABLE `order`
  MODIFY `oid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Tablo için AUTO_INCREMENT değeri `order_table`
--
ALTER TABLE `order_table`
  MODIFY `oid` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `product`
--
ALTER TABLE `product`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- Tablo için AUTO_INCREMENT değeri `product_table`
--
ALTER TABLE `product_table`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `user`
--
ALTER TABLE `user`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
