-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Ноя 17 2019 г., 19:21
-- Версия сервера: 5.5.25
-- Версия PHP: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `iteashop`
--

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `price` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `category`) VALUES
(1, 'Casio', 'Mens Casio G-Shock Alarm Chronograph Watch GA-100-1A4ER', 95, 1),
(2, 'Olivia Burton', 'Abstract Florals Blush & Rose Gold Watch\nOB16VM12', 89, 1),
(3, 'Hugo Boss', 'Mens Hugo Boss Supernova Chronograph Watch 1513360', 372, 1),
(4, 'Rotary', 'the conspicuous umbrella-shaped fruiting body (sporophore) of certain fungiMens Rotary Pilot Chronograph Watch GB00647/05', 163, 1),
(5, 'Fendi', 'Including lenses\nSize: Medium (47–21–140) Natural/Tortoise/Brown FF0067', 123, 2),
(6, 'Elliot', 'Including lenses\nSize: Medium (51–18–145) White\n', 94, 2),
(7, 'Corvallis', 'Including lenses\nSize: Medium (50–17–140)\nOnly Black', 58, 2),
(8, 'Weston', 'Including lenses\r\nSize: Medium (48–19–145)Broun', 94, 2),
(9, '19-5362-BROWN LOAFERS', 'Size : 40, 41 , 42 , 43 , 44 , 45\r\nOccasion : Casual\r\nColor : Brown\r\nShoe Type : Loafers', 349, 3),
(10, '19-5369-45-40 BLUE LOAFERS', 'Size : 40, 41 , 42 , 43 , 44 , 45\r\nOccasion : Casual\r\nColor : Blue\r\nShoe Type : Loafers', 399, 3),
(11, '14-788-11-40 BLACK DERBY', 'Size : 40, 41 , 42 , 43 , 44 , 45\r\nOccasion : Formal\r\nColor : Black\r\nShoe Type : Derby', 1999, 3),
(12, '19-3942-BROWN DERBY', 'Size : 40, 41 , 42 , 43 , 44 , 45\r\nOccasion : Formal\r\nColor : Brown\r\nShoe Type : Derby', 699, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  `region` varchar(50) NOT NULL,
  `gender` tinyint(1) NOT NULL,
  `comment` varchar(350) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=45 ;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `login`, `password`, `name`, `region`, `gender`, `comment`) VALUES
(1, 'alxsiren@gmail.com', 'Pr563698', 'Alex', 'Kyiv', 0, 'Hello from comment'),
(2, 'test@gmail.com', '321', 'Ilya', 'Lviv', 1, 'Hi! First comment'),
(3, 'olx@gmail.com', 'Pp123456', 'Bob', 'Kharkiv', 1, 'Hello Im Bob!'),
(4, 'ya@yahoo.com', 'Ya123456', 'Julia', 'Kyiv', 0, 'Hello I`m Julia!'),
(5, 'dell@dell.com', 'Dell1234', 'Dell', 'Kyiv', 1, 'Hello I`m Julia!'),
(6, 'asdasd@gmil.com', 'Tt123456', 'Yan', 'Lviv', 1, 'Commeeeeent'),
(7, 'bill@delta.ua', 'Bill563698', 'Bill', 'Kharkiv', 1, 'Hello from Bill Idea agree'),
(8, 'gin@rub.ru', 'Gin123456', 'Gin', 'Kyiv', 0, 'asdasdasd'),
(9, 'dou@dou.ua', 'Rr563698', 'Alexa', 'Kyiv', 1, 'asdasdasdasdasd'),
(10, 'kil@gmail.com', 'Ui563698', 'Alexa', 'Kyiv', 1, 'asdasdasd'),
(11, 'timex@timex.com', 'Time123456', 'Timex', 'Kharkiv', 0, 'Hello from Timex'),
(12, 'so@321.ru', 'Tr123456', 'Sonya', 'Kharkiv', 1, 'Hello from Sonya'),
(13, 'ad@ad.ua', '-7c5d01a1d945f9a50de669504c7842f9', 'Piter', 'Kyiv', 1, 'Hello!!!!!!!!!!!!!!!!!!!!!!'),
(14, 'al@al.ua', 'Al563698q', 'Alena', 'Kharkiv', 0, 'Hello from Alena!!!!'),
(16, 'frank@apple.com', '6b160eceabcfb646df8bb38e6dcffc55', 'Frank', 'Kyiv', 1, 'textasdasd'),
(17, 'yang@opp.com', '72db83befb05f324a764cf8444bd41bf', 'Yang', 'Lviv', 1, 'Hello Yang !!!1'),
(20, 'admin@gmail.com', '6b160eceabcfb646df8bb38e6dcffc55', 'Alex', 'Kharkiv', 1, 'Hello!'),
(21, 'hh@hh.ua', '6b160eceabcfb646df8bb38e6dcffc55', 'Han', 'Lviv', 0, 'Hello my friend! Succsess!'),
(22, 'br@gmail.com', '6b160eceabcfb646df8bb38e6dcffc55', 'Alex', 'Kyiv', 1, 'Hello bg@gmail.com'),
(23, 'asd@gmail.com', '-59be2396dc18f0ab3b328f50f3bd4c25', 'Okla', 'Kharkiv', 0, 'Okla Hi!'),
(24, 'ipad@apple.com', '-4099fef3212428209c85213e840ae01b', 'Ipad', 'Kyiv', 1, 'Ipad'),
(25, 'seo@gmail.com', '0bd9e2bfd5f2b14331ebc47c48cce982', 'June', 'Kyiv', 1, 'June Hi!!!!!!!!!'),
(26, 'ww@gmail.com', '6b160eceabcfb646df8bb38e6dcffc55', 'Wow', 'Kyiv', 0, 'adasdasdasd'),
(27, 'vi@gmail.com', '6b160eceabcfb646df8bb38e6dcffc55', 'Via', 'Kyiv', 0, 'Aloha'),
(28, 'abr@gmail.com', '6b160eceabcfb646df8bb38e6dcffc55', 'Albert', 'Kyiv', 1, 'Hellouchik!'),
(29, 'no@gmail.com', '6b160eceabcfb646df8bb38e6dcffc55', 'None', 'Kyiv', 1, 'None is empty'),
(30, 'nat@gmail.com', '6b160eceabcfb646df8bb38e6dcffc55', 'Nat', 'Kharkiv', 0, 'Nat pik ut'),
(31, 'kok@gmail.com', '6b160eceabcfb646df8bb38e6dcffc55', 'Kok', 'Kharkiv', 1, 'Kok says Hello!'),
(32, 'joom@gmail.com', '6b160eceabcfb646df8bb38e6dcffc55', 'Joom', 'Kyiv', 1, 'Illla'),
(33, 'turbo@gmail.com', '6b160eceabcfb646df8bb38e6dcffc55', 'Turbo', 'Kyiv', 1, 'Petro!'),
(34, 'man@gmail.com', '6b160eceabcfb646df8bb38e6dcffc55', 'Man', 'Kyiv', 1, 'Alex'),
(35, 'hf@gmail.com', '6b160eceabcfb646df8bb38e6dcffc55', 'Halif', 'Kharkiv', 1, 'asdasd'),
(36, 'nt@gmail.com', '6b160eceabcfb646df8bb38e6dcffc55', 'Note', 'Kyiv', 1, 'asdasd'),
(37, 'aso@gmail.com', '0a9e10019b44b83af54315c4f3e81e7a', 'Bod', 'Kyiv', 1, 'Hello from Aso!'),
(38, 'alibaba@gmail.com', '5d66250750746286f9b1afda6930f2ff', 'Alibaba', 'Kyiv', 1, 'Hellobaba from Alibaba'),
(39, 'nipal@gmail.com', '-772cc515f5aa09a97234d98d96a0ab5b', 'Nipal', 'Kyiv', 1, 'Nipal bla bla'),
(40, 'nino@gmail.com', '6b160eceabcfb646df8bb38e6dcffc55', 'Nino', 'Kyiv', 1, 'NinoKrevetko'),
(41, 'nope@gmail.com', '3ed59ca4f08dfb187b8413f6cb9ac7eb', 'Nope', 'Lviv', 1, 'Klak Klak'),
(42, 'izh@gmail.com', '6b160eceabcfb646df8bb38e6dcffc55', 'Izh', 'Kyiv', 1, 'asdasdasd'),
(43, 'jocker@gmail.com', 'Pr563698', 'Jocker', 'Kyiv', 1, 'Jocker here'),
(44, 'lop@gmail.com', 'Pr563698', 'Ant', 'Kyiv', 1, 'dasd');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
