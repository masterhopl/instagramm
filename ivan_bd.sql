-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 04 2019 г., 03:16
-- Версия сервера: 5.6.41
-- Версия PHP: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `ghg`
--
CREATE DATABASE IF NOT EXISTS `ghg` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `ghg`;

-- --------------------------------------------------------

--
-- Структура таблицы `game2`
--

CREATE TABLE `game2` (
  `fio` varchar(355) NOT NULL,
  `email` varchar(355) NOT NULL,
  `login` varchar(355) NOT NULL,
  `password` varchar(355) NOT NULL,
  `id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `game2`
--

INSERT INTO `game2` (`fio`, `email`, `login`, `password`, `id`) VALUES
('fg', 'damirzabolotskiy@gmail.com', '321', '123456', 2),
('fg', 'drewqas42@gmail.com', 'qwerty', 'd', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `game3`
--

CREATE TABLE `game3` (
  `header` varchar(355) NOT NULL,
  `text` varchar(355) NOT NULL,
  `user_id` int(10) NOT NULL,
  `id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `game3`
--

INSERT INTO `game3` (`header`, `text`, `user_id`, `id`) VALUES
('dasd', 'ti krut', 2, 2),
('sad', 'ti krut', 2, 19),
('sad', 'sad', 2, 20),
('erw', 'damir', 3, 21);

-- --------------------------------------------------------

--
-- Структура таблицы `notes`
--

CREATE TABLE `notes` (
  `id` int(10) NOT NULL,
  `text` varchar(355) NOT NULL,
  `date` date NOT NULL,
  `img` varchar(355) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `notes`
--

INSERT INTO `notes` (`id`, `text`, `date`, `img`, `status`) VALUES
(2, 'ti krut', '2005-03-01', '', 1),
(3, 'ti krut', '0001-03-13', '', 1),
(4, 'ti krut', '0012-03-12', '', 1);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `game2`
--
ALTER TABLE `game2`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `game3`
--
ALTER TABLE `game3`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `game2`
--
ALTER TABLE `game2`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `game3`
--
ALTER TABLE `game3`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT для таблицы `notes`
--
ALTER TABLE `notes`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
