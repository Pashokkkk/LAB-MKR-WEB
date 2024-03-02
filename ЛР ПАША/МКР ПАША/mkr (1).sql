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
-- База данных: `mkr`
--

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE `news` (
  `id` int NOT NULL,
  `title` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `description` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `image_url` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`id`, `title`, `description`, `image_url`) VALUES
(10, 'Нова програма ефективності працівників відзначена престижною нагородою', 'Наша компанія отримала престижну нагороду за впровадження нової програми, яка підвищила ефективність працівників.', 'https://sfera-tv.com.ua/img/1000/20220124_4599.png'),
(11, 'Вчений винаходить прогресивний спосіб очищення води', 'Нова технологія, розроблена вченим, може радикально покращити якість води в урбанізованих районах.', 'https://sfera-tv.com.ua/img/1000/20220124_4599.png'),
(12, 'Велика перемога національної збірної в олімпійських іграх', 'Наша національна збірна здобула золоту медаль в головному фіналі олімпійських ігор, підкресливши свою перевагу в спортивних досягненнях.', 'https://sfera-tv.com.ua/img/1000/20220124_4599.png'),
(13, 'Винахідник розробляє першу супершвидку електромобільну батарею', 'Нова батарея відкриває нові можливості для електромобілів, забезпечуючи довший пробіг та швидше заряджання.', 'https://sfera-tv.com.ua/img/1000/20220124_4599.png'),
(14, 'Компанія представляє інноваційну систему відновлення лісових екосистем', 'Ініціатива відновлення лісів отримує новий потік інвестицій та підтримку завдяки новітній технологічній системі.', 'https://sfera-tv.com.ua/img/1000/20220124_4599.png'),
(15, 'Дослідження розкриває нові можливості лікування найпоширеніших хвороб', 'Вчені виявили нові перспективи у лікуванні раку та інших серйозних захворювань, що відкриває шлях для подальших медичних відкриттів.', 'https://sfera-tv.com.ua/img/1000/20220124_4599.png'),
(16, 'Революційна технологія виробництва сонячних панелей', 'Нова технологія дозволяє виготовляти сонячні панелі ефективніше та економічніше, що сприятиме швидшій адаптації до зеленого енергетичного майбутнього.', 'https://sfera-tv.com.ua/img/1000/20220124_4599.png'),
(17, 'Співробітництво компаній з метою створення нового покоління мобільних пристроїв', 'Лідери технологічного ринку об\'єднуються для розробки майбутніх мобільних пристроїв, які задовольнять різноманітні потреби користувачів.', 'https://sfera-tv.com.ua/img/1000/20220124_4599.png'),
(18, 'Світова подорож найбагатших людей світу на космічному кораблі', 'Екскурсія найвідоміших мільярдерів світу на орбітальному кораблі відкриває нові можливості для космічного туризму та наукових досліджень.', 'https://sfera-tv.com.ua/img/1000/20220124_4599.png'),
(19, 'Нова стратегія боротьби зі зміною клімату отримує міжнародне визнання', 'Підписання нових міжнародних угод та прийняття стратегічних рішень сприяє активним діям у боротьбі зі зміною клімату та забезпечує майбутні покоління здоровою планетою.', 'https://sfera-tv.com.ua/img/1000/20220124_4599.png'),
(20, 'Нова програма ефективності працівників відзначена престижною нагородою', 'Наша компанія отримала престижну нагороду за впровадження нової програми, яка підвищила ефективність працівників.', 'https://sfera-tv.com.ua/img/1000/20220124_4599.png'),
(21, 'Вчений винаходить прогресивний спосіб очищення води', 'Нова технологія, розроблена вченим, може радикально покращити якість води в урбанізованих районах.', 'https://sfera-tv.com.ua/img/1000/20220124_4599.png'),
(22, 'Велика перемога національної збірної в олімпійських іграх', 'Наша національна збірна здобула золоту медаль в головному фіналі олімпійських ігор, підкресливши свою перевагу в спортивних досягненнях.', 'https://sfera-tv.com.ua/img/1000/20220124_4599.png'),
(23, 'Винахідник розробляє першу супершвидку електромобільну батарею', 'Нова батарея відкриває нові можливості для електромобілів, забезпечуючи довший пробіг та швидше заряджання.', 'https://sfera-tv.com.ua/img/1000/20220124_4599.png'),
(24, 'Компанія представляє інноваційну систему відновлення лісових екосистем', 'Ініціатива відновлення лісів отримує новий потік інвестицій та підтримку завдяки новітній технологічній системі.', 'https://sfera-tv.com.ua/img/1000/20220124_4599.png'),
(25, 'Дослідження розкриває нові можливості лікування найпоширеніших хвороб', 'Вчені виявили нові перспективи у лікуванні раку та інших серйозних захворювань, що відкриває шлях для подальших медичних відкриттів.', 'https://sfera-tv.com.ua/img/1000/20220124_4599.png'),
(26, 'Революційна технологія виробництва сонячних панелей', 'Нова технологія дозволяє виготовляти сонячні панелі ефективніше та економічніше, що сприятиме швидшій адаптації до зеленого енергетичного майбутнього.', 'https://sfera-tv.com.ua/img/1000/20220124_4599.png'),
(27, 'Співробітництво компаній з метою створення нового покоління мобільних пристроїв', 'Лідери технологічного ринку об\'єднуються для розробки майбутніх мобільних пристроїв, які задовольнять різноманітні потреби користувачів.', 'https://sfera-tv.com.ua/img/1000/20220124_4599.png'),
(28, 'Світова подорож найбагатших людей світу на космічному кораблі', 'Екскурсія найвідоміших мільярдерів світу на орбітальному кораблі відкриває нові можливості для космічного туризму та наукових досліджень.', 'https://sfera-tv.com.ua/img/1000/20220124_4599.png'),
(29, 'Нова стратегія боротьби зі зміною клімату отримує міжнародне визнання', 'Підписання нових міжнародних угод та прийняття стратегічних рішень сприяє активним діям у боротьбі зі зміною клімату та забезпечує майбутні покоління здоровою планетою.', 'https://sfera-tv.com.ua/img/1000/20220124_4599.png');

-- --------------------------------------------------------

--
-- Структура таблицы `Subscriptions`
--

CREATE TABLE `Subscriptions` (
  `id` int NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `Subscriptions`
--

INSERT INTO `Subscriptions` (`id`, `email`) VALUES
(5, 'pasha@gmail.com');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `Subscriptions`
--
ALTER TABLE `Subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `news`
--
ALTER TABLE `news`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT для таблицы `Subscriptions`
--
ALTER TABLE `Subscriptions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
