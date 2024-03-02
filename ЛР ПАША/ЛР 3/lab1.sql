-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 29 2024 г., 00:52
-- Версия сервера: 8.0.30
-- Версия PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `lab1`
--

-- --------------------------------------------------------

--
-- Структура таблицы `contacts`
--

CREATE TABLE `contacts` (
  `id` int NOT NULL,
  `name` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `email` varchar(6658) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `message` varchar(125) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Таблиця даних про контакти';

--
-- Дамп данных таблицы `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `message`) VALUES
(3, 'dwae', 'pasad@gmail.com', '54486', 'sdw'),
(4, 'dwa', 'pasad@gmail.com', 'adw', 'daw');

-- --------------------------------------------------------

--
-- Структура таблицы `House`
--

CREATE TABLE `House` (
  `id` int NOT NULL,
  `price` varchar(50) NOT NULL,
  `name` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `address` varchar(25) NOT NULL,
  `contactPhone` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `image` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `bedrooms` int NOT NULL,
  `bathrooms` int NOT NULL,
  `discount` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Таблиця для збереження даних про будинки';

--
-- Дамп данных таблицы `House`
--

INSERT INTO `House` (`id`, `price`, `name`, `address`, `contactPhone`, `image`, `bedrooms`, `bathrooms`, `discount`) VALUES
(1, '750,000', 'Detached house • 5y old', '742 Evergreen Terrace', '(555) 555-4321', 'https://images.unsplash.com/photo-1475855581690-80accde3ae2b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80', 3, 2, 1),
(2, '650,000', 'Townhouse • 3y old', '123 Oak Street', '(555) 555-1234', 'https://images.unsplash.com/photo-1475855581690-80accde3ae2b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80', 2, 2, 0),
(3, '60,000', 'Townhouse • 3y old', '123 Oak Street', '(555) 555-1234', 'https://images.unsplash.com/photo-1475855581690-80accde3ae2b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80', 2, 2, 1),
(4, '7555,000', 'Detached house • 5y old', '742 Evergreen Terrace', '(555) 555-4321', 'https://images.unsplash.com/photo-1475855581690-80accde3ae2b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80\r\n', 3, 2, 1),
(5, '588,000', 'Townhouse • 3y old', '123 Oak Street', '(555) 555-1234', 'https://images.unsplash.com/photo-1475855581690-80accde3ae2b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80', 2, 2, 0),
(6, '6045,000', 'Townhouse • 3y old', '123 Oak Street', '(555) 555-1234', 'https://images.unsplash.com/photo-1475855581690-80accde3ae2b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80', 2, 2, 1),
(7, '7555,000', 'Detached house • 5y old', '742 Evergreen Terrace', '(555) 555-4321', 'https://images.unsplash.com/photo-1475855581690-80accde3ae2b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80', 3, 2, 1),
(8, '588,000', 'Townhouse • 3y old', '123 Oak Street', '(555) 555-1234', 'https://images.unsplash.com/photo-1475855581690-80accde3ae2b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80', 2, 2, 0),
(9, '6045,000', 'Townhouse • 3y old', '123 Oak Street', '(555) 555-1234', 'https://images.unsplash.com/photo-1475855581690-80accde3ae2b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80', 2, 2, 1),
(10, '7555,000', 'Detached house • 5y old', '742 Evergreen Terrace', '(555) 555-4321', 'https://images.unsplash.com/photo-1475855581690-80accde3ae2b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80', 3, 2, 1),
(11, '588,000', 'Townhouse • 3y old', '123 Oak Street', '(555) 555-1234', 'https://images.unsplash.com/photo-1512917774080-9991f1c4c750?ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80', 2, 2, 0),
(12, '6045,000', 'Townhouse • 3y old', '123 Oak Street', '(555) 555-1234', 'https://images.unsplash.com/photo-1512917774080-9991f1c4c750?ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80', 2, 2, 1);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `House`
--
ALTER TABLE `House`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `House`
--
ALTER TABLE `House`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
