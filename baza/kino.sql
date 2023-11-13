-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Окт 02 2023 г., 19:43
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
-- База данных: `kino`
--

-- --------------------------------------------------------

--
-- Структура таблицы `actors`
--

CREATE TABLE `actors` (
  `id` bigint UNSIGNED NOT NULL,
  `actor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `actors`
--

INSERT INTO `actors` (`id`, `actor`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Tom Hanks', NULL, '2023-09-24 13:18:32', NULL),
(2, 'Johnny Depp', '2023-09-24 13:16:05', '2023-09-24 13:18:41', '2023-09-24 13:18:41'),
(3, 'Joaquin Phoenix', '2023-09-25 13:25:03', '2023-09-25 13:25:03', NULL),
(4, 'Robert De Niro', '2023-09-25 13:25:20', '2023-09-25 13:25:20', NULL),
(5, 'Zazie Beetz', '2023-09-25 13:26:08', '2023-09-25 13:26:08', NULL),
(6, 'Tom Hardy', '2023-09-27 13:37:38', '2023-09-27 13:37:38', NULL),
(7, 'Michelle Williams', '2023-09-27 13:38:03', '2023-09-27 13:38:03', NULL),
(8, 'Riz Ahmed', '2023-09-27 13:38:23', '2023-09-27 13:38:23', NULL),
(9, 'Woody Harrelson', '2023-09-27 13:44:35', '2023-09-27 13:44:35', NULL),
(10, 'Naomie Harris', '2023-09-27 13:44:53', '2023-09-27 13:44:53', NULL),
(11, 'Dan Stevens', '2023-09-27 14:17:39', '2023-09-27 14:17:39', NULL),
(12, 'Rebecca Hall', '2023-09-27 14:17:58', '2023-09-27 14:17:58', NULL),
(13, 'Brian Tyree Henry', '2023-09-27 14:18:10', '2023-09-29 11:35:31', NULL),
(14, 'Jason Statham', '2023-09-27 14:23:10', '2023-09-27 14:23:10', NULL),
(15, 'Li Bingbing', '2023-09-27 14:23:31', '2023-09-27 14:23:31', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `film_id` bigint UNSIGNED NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `film_id`, `comment`, `created_at`, `updated_at`) VALUES
(3, 1, 4, 'New test comment', '2023-09-30 11:17:00', '2023-09-30 11:17:00'),
(5, 1, 4, 'Pizdec blyat verjapes ashxatec', '2023-09-30 11:44:09', '2023-09-30 11:44:09'),
(6, 3, 4, 'Mi hatel es akauntic', '2023-09-30 11:45:27', '2023-09-30 11:45:27'),
(7, 3, 4, 'yhyyyn cicik ashxatuma', '2023-09-30 11:45:42', '2023-09-30 11:45:42'),
(8, 1, 7, 'glgl', '2023-09-30 12:00:59', '2023-09-30 12:00:59');

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `films`
--

CREATE TABLE `films` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `rejisor_id` bigint UNSIGNED NOT NULL,
  `year_id` bigint UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `films`
--

INSERT INTO `films` (`id`, `name`, `description`, `rejisor_id`, `year_id`, `image`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Infernod', '<p>Inferno is film about hell</p>', 1, 1, 'images/eiYgwv7dohgzn9I6gHtPWqHuwQSZSrxIpP1zh72b.jpg', '2023-09-25 12:34:32', '2023-09-25 12:51:52', '2023-09-25 12:51:52'),
(2, 'Inferno', '<p>Inferno is film about hell</p>', 1, 4, 'images/Ta0gwXsFEvjQFDlEkFB30TtgC2jA7SpY5qmTMIrU.jpg', '2023-09-25 12:35:55', '2023-09-25 12:35:59', '2023-09-25 12:35:59'),
(3, 'Joker', '<p><i style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\"><b>Joker</b></i><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">&nbsp;is a 2019 American&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Psychological_thriller\" title=\"Psychological thriller\" style=\"color: rgb(51, 102, 204); background: none rgb(255, 255, 255); overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\">psychological thriller</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">&nbsp;film directed by&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Todd_Phillips\" title=\"Todd Phillips\" style=\"color: rgb(51, 102, 204); background: none rgb(255, 255, 255); overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\">Todd Phillips</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">, who also co-wrote the screenplay with&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Scott_Silver\" title=\"Scott Silver\" style=\"color: rgb(51, 102, 204); background: none rgb(255, 255, 255); overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\">Scott Silver</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">. The film, based on&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/DC_Comics\" title=\"DC Comics\" style=\"color: rgb(51, 102, 204); background: none rgb(255, 255, 255); overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\">DC Comics</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">&nbsp;characters, stars&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Joaquin_Phoenix\" title=\"Joaquin Phoenix\" style=\"color: rgb(51, 102, 204); background: none rgb(255, 255, 255); overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\">Joaquin Phoenix</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">&nbsp;as&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Joker_(character)\" title=\"Joker (character)\" style=\"color: rgb(51, 102, 204); background: none rgb(255, 255, 255); overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\">Joker</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">. Set in 1981, it follows Arthur Fleck, a failed clown and aspiring stand-up comic whose descent into mental illness and&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Nihilism\" title=\"Nihilism\" style=\"color: rgb(51, 102, 204); background: none rgb(255, 255, 255); overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\">nihilism</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">&nbsp;inspires a violent countercultural revolution against the wealthy in a decaying&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Gotham_City\" title=\"Gotham City\" style=\"color: rgb(51, 102, 204); background: none rgb(255, 255, 255); overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\">Gotham City</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">.&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Robert_De_Niro\" title=\"Robert De Niro\" style=\"color: rgb(51, 102, 204); background: none rgb(255, 255, 255); overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\">Robert De Niro</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">,&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Zazie_Beetz\" title=\"Zazie Beetz\" style=\"color: rgb(51, 102, 204); background: none rgb(255, 255, 255); overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\">Zazie Beetz</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">&nbsp;and&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Frances_Conroy\" title=\"Frances Conroy\" style=\"color: rgb(51, 102, 204); background: none rgb(255, 255, 255); overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\">Frances Conroy</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">&nbsp;appear in supporting roles. Distributed by&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Warner_Bros._Pictures\" title=\"Warner Bros. Pictures\" style=\"color: rgb(51, 102, 204); background: none rgb(255, 255, 255); overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\">Warner Bros. Pictures</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">,&nbsp;</span><i style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">Joker</i><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">&nbsp;was produced by Warner Bros. Pictures and&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/DC_Films\" class=\"mw-redirect\" title=\"DC Films\" style=\"color: rgb(51, 102, 204); background: none rgb(255, 255, 255); overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\">DC Films</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">&nbsp;in association with&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Village_Roadshow_Pictures\" title=\"Village Roadshow Pictures\" style=\"color: rgb(51, 102, 204); background: none rgb(255, 255, 255); overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\">Village Roadshow Pictures</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">,&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Bron_Creative\" class=\"mw-redirect\" title=\"Bron Creative\" style=\"color: rgb(51, 102, 204); background: none rgb(255, 255, 255); overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\">Bron Creative</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">&nbsp;and Joint Effort.</span><br></p>', 2, 5, 'images/oiwG4e6wFQoDJPtcLPOtpBhYKgOrGe6Qp8gjcuyC.png', '2023-09-25 13:32:08', '2023-09-25 13:47:07', '2023-09-25 13:47:07'),
(4, 'Joker', '<p><div class=\"mb-4 w-100\" style=\"box-sizing: border-box; width: 1253.2px; margin-bottom: 1.5rem !important; color: rgb(33, 37, 41); font-family: &quot;Source Sans Pro&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(244, 246, 249); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"></div></p><div class=\"mb-4\" style=\"box-sizing: border-box; margin-bottom: 1.5rem !important; color: rgb(33, 37, 41); font-family: &quot;Source Sans Pro&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(244, 246, 249); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\"><i style=\"box-sizing: border-box; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\"><b style=\"box-sizing: border-box; font-weight: bolder;\">Joker</b></i><span style=\"box-sizing: border-box; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">&nbsp;is a 2019 American&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Psychological_thriller\" title=\"Psychological thriller\" style=\"box-sizing: border-box; color: rgb(51, 102, 204); text-decoration: none; background: none rgb(255, 255, 255); overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\">psychological thriller</a><span style=\"box-sizing: border-box; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">&nbsp;film directed by&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Todd_Phillips\" title=\"Todd Phillips\" style=\"box-sizing: border-box; color: rgb(51, 102, 204); text-decoration: none; background: none rgb(255, 255, 255); overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\">Todd Phillips</a><span style=\"box-sizing: border-box; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">, who also co-wrote the screenplay with&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Scott_Silver\" title=\"Scott Silver\" style=\"box-sizing: border-box; color: rgb(51, 102, 204); text-decoration: none; background: none rgb(255, 255, 255); overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\">Scott Silver</a><span style=\"box-sizing: border-box; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">. The film, based on&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/DC_Comics\" title=\"DC Comics\" style=\"box-sizing: border-box; color: rgb(51, 102, 204); text-decoration: none; background: none rgb(255, 255, 255); overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\">DC Comics</a><span style=\"box-sizing: border-box; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">&nbsp;characters, stars&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Joaquin_Phoenix\" title=\"Joaquin Phoenix\" style=\"box-sizing: border-box; color: rgb(51, 102, 204); text-decoration: none; background: none rgb(255, 255, 255); overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\">Joaquin Phoenix</a><span style=\"box-sizing: border-box; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">&nbsp;as&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Joker_(character)\" title=\"Joker (character)\" style=\"box-sizing: border-box; color: rgb(51, 102, 204); text-decoration: none; background: none rgb(255, 255, 255); overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\">Joker</a><span style=\"box-sizing: border-box; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">. Set in 1981, it follows Arthur Fleck, a failed clown and aspiring stand-up comic whose descent into mental illness and&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Nihilism\" title=\"Nihilism\" style=\"box-sizing: border-box; color: rgb(51, 102, 204); text-decoration: none; background: none rgb(255, 255, 255); overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\">nihilism</a><span style=\"box-sizing: border-box; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">&nbsp;inspires a violent countercultural revolution against the wealthy in a decaying&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Gotham_City\" title=\"Gotham City\" style=\"box-sizing: border-box; color: rgb(51, 102, 204); text-decoration: none; background: none rgb(255, 255, 255); overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\">Gotham City</a><span style=\"box-sizing: border-box; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">.&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Robert_De_Niro\" title=\"Robert De Niro\" style=\"box-sizing: border-box; color: rgb(51, 102, 204); text-decoration: none; background: none rgb(255, 255, 255); overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\">Robert De Niro</a><span style=\"box-sizing: border-box; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">,&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Zazie_Beetz\" title=\"Zazie Beetz\" style=\"box-sizing: border-box; color: rgb(51, 102, 204); text-decoration: none; background: none rgb(255, 255, 255); overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\">Zazie Beetz</a><span style=\"box-sizing: border-box; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">&nbsp;and&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Frances_Conroy\" title=\"Frances Conroy\" style=\"box-sizing: border-box; color: rgb(51, 102, 204); text-decoration: none; background: none rgb(255, 255, 255); overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\">Frances Conroy</a><span style=\"box-sizing: border-box; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">&nbsp;appear in supporting roles. Distributed by&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Warner_Bros._Pictures\" title=\"Warner Bros. Pictures\" style=\"box-sizing: border-box; color: rgb(51, 102, 204); text-decoration: none; background: none rgb(255, 255, 255); overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\">Warner Bros. Pictures</a><span style=\"box-sizing: border-box; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">,&nbsp;</span><i style=\"box-sizing: border-box; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">Joker</i><span style=\"box-sizing: border-box; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">&nbsp;was produced by Warner Bros. Pictures and&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/DC_Films\" class=\"mw-redirect\" title=\"DC Films\" style=\"box-sizing: border-box; color: rgb(51, 102, 204); text-decoration: none; background: none rgb(255, 255, 255); overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\">DC Films</a><span style=\"box-sizing: border-box; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">&nbsp;in association with&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Village_Roadshow_Pictures\" title=\"Village Roadshow Pictures\" style=\"box-sizing: border-box; color: rgb(51, 102, 204); text-decoration: none; background: none rgb(255, 255, 255); overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\">Village Roadshow Pictures</a><span style=\"box-sizing: border-box; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">,&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Bron_Creative\" class=\"mw-redirect\" title=\"Bron Creative\" style=\"box-sizing: border-box; color: rgb(51, 102, 204); text-decoration: none; background: none rgb(255, 255, 255); overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\">Bron Creative</a><span style=\"box-sizing: border-box; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">&nbsp;and Joint Effort.</span><br style=\"box-sizing: border-box;\"></p></div>', 2, 5, 'images/eiLfJG8hcC2o0AUCbxgxcHBBqvQWoidTJzQ6Itfl.png', '2023-09-25 13:47:54', '2023-09-25 13:47:54', NULL),
(5, 'Venom', '<p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 17px; letter-spacing: -0.1px;\">An investigative reporter finds himself host to a parasitic alien life form and pursued by corporate villains. Violent, action-packed and often scary,&nbsp;</span><em style=\"box-sizing: inherit; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 17px; letter-spacing: -0.1px;\">Venom</em><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 17px; letter-spacing: -0.1px;\">&nbsp;deserves its M rating, and we strongly recommend parental guidance for younger teenagers.</span><br></p>', 3, 6, 'images/QQfSfHMwUQZshumAt8aD3nkA2XjwSlGd5n2qdNMA.jpg', '2023-09-27 13:42:59', '2023-09-27 13:42:59', NULL),
(6, 'Venom: Let There Be Carnage', '<p><i style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\"><b>Venom: Let There Be Carnage</b></i><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">&nbsp;is a 2021 American&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Superhero_film\" title=\"Superhero film\" style=\"color: rgb(51, 102, 204); background: none rgb(255, 255, 255); overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\">superhero film</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">&nbsp;featuring the&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Marvel_Comics\" title=\"Marvel Comics\" style=\"color: rgb(51, 102, 204); background: none rgb(255, 255, 255); overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\">Marvel Comics</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">&nbsp;character&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Venom_(character)\" title=\"Venom (character)\" style=\"color: rgb(51, 102, 204); background: none rgb(255, 255, 255); overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\">Venom</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">, produced by&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Columbia_Pictures\" title=\"Columbia Pictures\" style=\"color: rgb(51, 102, 204); background: none rgb(255, 255, 255); overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\">Columbia Pictures</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">&nbsp;in association with&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Marvel_Entertainment\" title=\"Marvel Entertainment\" style=\"color: rgb(51, 102, 204); background: none rgb(255, 255, 255); overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\">Marvel</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">. Distributed by&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Sony_Pictures_Releasing\" class=\"mw-redirect\" title=\"Sony Pictures Releasing\" style=\"color: rgb(51, 102, 204); background: none rgb(255, 255, 255); overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\">Sony Pictures Releasing</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">, it is the second film in&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Sony%27s_Spider-Man_Universe\" title=\"Sony\'s Spider-Man Universe\" style=\"color: rgb(51, 102, 204); background: none rgb(255, 255, 255); overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\">Sony\'s Spider-Man Universe</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">&nbsp;and the sequel to&nbsp;</span><i style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\"><a href=\"https://en.wikipedia.org/wiki/Venom_(2018_film)\" title=\"Venom (2018 film)\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; overflow-wrap: break-word;\">Venom</a></i><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">&nbsp;(2018). The film was directed by&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Andy_Serkis\" title=\"Andy Serkis\" style=\"color: rgb(51, 102, 204); background: none rgb(255, 255, 255); overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\">Andy Serkis</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">&nbsp;from a screenplay by&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Kelly_Marcel\" title=\"Kelly Marcel\" style=\"color: rgb(51, 102, 204); background: none rgb(255, 255, 255); overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\">Kelly Marcel</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">, based on a story she wrote with&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Tom_Hardy\" title=\"Tom Hardy\" style=\"color: rgb(51, 102, 204); background: none rgb(255, 255, 255); overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\">Tom Hardy</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">, who stars as&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Eddie_Brock_(Sony%27s_Spider-Man_Universe)\" class=\"mw-redirect\" title=\"Eddie Brock (Sony\'s Spider-Man Universe)\" style=\"color: rgb(51, 102, 204); background: none rgb(255, 255, 255); overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\">Eddie Brock</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">&nbsp;and&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Venom_(Sony%27s_Spider-Man_Universe)\" title=\"Venom (Sony\'s Spider-Man Universe)\" style=\"color: rgb(51, 102, 204); background: none rgb(255, 255, 255); overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\">Venom</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">&nbsp;alongside&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Michelle_Williams_(actress)\" title=\"Michelle Williams (actress)\" style=\"color: rgb(51, 102, 204); background: none rgb(255, 255, 255); overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\">Michelle Williams</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">,&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Naomie_Harris\" title=\"Naomie Harris\" style=\"color: rgb(51, 102, 204); background: none rgb(255, 255, 255); overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\">Naomie Harris</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">,&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Reid_Scott_(actor)\" title=\"Reid Scott (actor)\" style=\"color: rgb(51, 102, 204); background: none rgb(255, 255, 255); overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\">Reid Scott</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">,&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Stephen_Graham\" title=\"Stephen Graham\" style=\"color: rgb(51, 102, 204); background: none rgb(255, 255, 255); overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\">Stephen Graham</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">, and&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Woody_Harrelson\" title=\"Woody Harrelson\" style=\"color: rgb(51, 102, 204); background: none rgb(255, 255, 255); overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\">Woody Harrelson</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">. In the film, Eddie and the alien&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Symbiote_(comics)\" title=\"Symbiote (comics)\" style=\"color: rgb(51, 102, 204); background: none rgb(255, 255, 255); overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\">symbiote</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">&nbsp;Venom must face serial killer&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Cletus_Kasady\" title=\"Cletus Kasady\" style=\"color: rgb(51, 102, 204); background: none rgb(255, 255, 255); overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\">Cletus Kasady</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">&nbsp;(Harrelson) after he becomes the host of an offshoot of Venom named&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Carnage_(character)\" title=\"Carnage (character)\" style=\"color: rgb(51, 102, 204); background: none rgb(255, 255, 255); overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\">Carnage</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">.</span><br></p>', 4, 7, 'images/4rMQLvTirmIswIYKvg8DID9frBjVErvkcQSiEi01.jpg', '2023-09-27 13:51:13', '2023-09-27 13:51:13', NULL),
(7, 'Godzilla vs Kong', '<p><i style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\"><b>Godzilla vs. Kong</b></i><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">&nbsp;is a 2021 American&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Monster_film\" class=\"mw-redirect\" title=\"Monster film\" style=\"color: rgb(51, 102, 204); background: none rgb(255, 255, 255); overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\">monster film</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">&nbsp;directed by&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Adam_Wingard\" title=\"Adam Wingard\" style=\"color: rgb(51, 102, 204); background: none rgb(255, 255, 255); overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\">Adam Wingard</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">. Produced by&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Legendary_Entertainment\" title=\"Legendary Entertainment\" style=\"color: rgb(51, 102, 204); background: none rgb(255, 255, 255); overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\">Legendary Pictures</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">&nbsp;and distributed by&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Warner_Bros._Pictures\" title=\"Warner Bros. Pictures\" style=\"color: rgb(51, 102, 204); background: none rgb(255, 255, 255); overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\">Warner Bros. Pictures</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">, it is a&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Sequel\" title=\"Sequel\" style=\"color: rgb(51, 102, 204); background: none rgb(255, 255, 255); overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\">sequel</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">&nbsp;to&nbsp;</span><i style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\"><a href=\"https://en.wikipedia.org/wiki/Kong:_Skull_Island\" title=\"Kong: Skull Island\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; overflow-wrap: break-word;\">Kong: Skull Island</a></i><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">&nbsp;(2017) and&nbsp;</span><i style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\"><a href=\"https://en.wikipedia.org/wiki/Godzilla:_King_of_the_Monsters_(2019_film)\" title=\"Godzilla: King of the Monsters (2019 film)\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; overflow-wrap: break-word;\">Godzilla: King of the Monsters</a></i><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">&nbsp;(2019), and is the fourth film in the&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/MonsterVerse\" title=\"MonsterVerse\" style=\"color: rgb(51, 102, 204); background: none rgb(255, 255, 255); overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\">MonsterVerse</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">. It is also the 36th film in the&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Godzilla_(franchise)\" title=\"Godzilla (franchise)\" style=\"color: rgb(51, 102, 204); background: none rgb(255, 255, 255); overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\"><i>Godzilla</i>&nbsp;franchise</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">, the 12th film in the&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/King_Kong_(franchise)\" title=\"King Kong (franchise)\" style=\"color: rgb(51, 102, 204); background: none rgb(255, 255, 255); overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\"><i>King Kong</i>&nbsp;franchise</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">, and the fourth&nbsp;</span><i style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">Godzilla</i><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">&nbsp;film to be completely produced by an American film studio.</span><sup id=\"cite_ref-14\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; text-wrap: nowrap; font-size: 11.2px; color: rgb(32, 33, 34); font-family: sans-serif;\"><a href=\"https://en.wikipedia.org/wiki/Godzilla_vs._Kong#cite_note-14\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; overflow-wrap: break-word;\">[b]</a></sup><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">&nbsp;The film stars&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Alexander_Skarsg%C3%A5rd\" title=\"Alexander Skarsgård\" style=\"color: rgb(51, 102, 204); background: none rgb(255, 255, 255); overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\">Alexander Skarsgård</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">,&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Millie_Bobby_Brown\" title=\"Millie Bobby Brown\" style=\"color: rgb(51, 102, 204); background: none rgb(255, 255, 255); overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\">Millie Bobby Brown</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">,&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Rebecca_Hall\" title=\"Rebecca Hall\" style=\"color: rgb(51, 102, 204); background: none rgb(255, 255, 255); overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\">Rebecca Hall</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">,&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Brian_Tyree_Henry\" title=\"Brian Tyree Henry\" style=\"color: rgb(51, 102, 204); background: none rgb(255, 255, 255); overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\">Brian Tyree Henry</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">,&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Shun_Oguri\" title=\"Shun Oguri\" style=\"color: rgb(51, 102, 204); background: none rgb(255, 255, 255); overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\">Shun Oguri</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">,&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Eiza_Gonz%C3%A1lez\" title=\"Eiza González\" style=\"color: rgb(51, 102, 204); background: none rgb(255, 255, 255); overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\">Eiza González</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">,&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Julian_Dennison\" title=\"Julian Dennison\" style=\"color: rgb(51, 102, 204); background: none rgb(255, 255, 255); overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\">Julian Dennison</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">,&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Lance_Reddick\" title=\"Lance Reddick\" style=\"color: rgb(51, 102, 204); background: none rgb(255, 255, 255); overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\">Lance Reddick</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">,&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Kyle_Chandler\" title=\"Kyle Chandler\" style=\"color: rgb(51, 102, 204); background: none rgb(255, 255, 255); overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\">Kyle Chandler</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">, and&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Demi%C3%A1n_Bichir\" title=\"Demián Bichir\" style=\"color: rgb(51, 102, 204); background: none rgb(255, 255, 255); overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\">Demián Bichir</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">. Brown and Chandler reprise their roles from the previous&nbsp;</span><i style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">Godzilla</i><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">&nbsp;film. In the film,&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/King_Kong\" title=\"King Kong\" style=\"color: rgb(51, 102, 204); background: none rgb(255, 255, 255); overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\">Kong</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">&nbsp;clashes with&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Godzilla_(MonsterVerse)\" title=\"Godzilla (MonsterVerse)\" style=\"color: rgb(51, 102, 204); background: none rgb(255, 255, 255); overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\">Godzilla</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">&nbsp;after humans move the ape from Skull Island to the&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Hollow_Earth\" title=\"Hollow Earth\" style=\"color: rgb(51, 102, 204); background: none rgb(255, 255, 255); overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\">Hollow Earth</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">, homeworld of the monsters known as \"Titans\", to retrieve a power source for a&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Mechagodzilla\" title=\"Mechagodzilla\" style=\"color: rgb(51, 102, 204); background: none rgb(255, 255, 255); overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\">secret weapon</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">&nbsp;intended to stop Godzilla\'s mysterious attacks.</span><br></p>', 5, 7, 'images/KxDPMaQnhF72Se3wfHjvkFrZbguRr3vUoLjQ8fCl.png', '2023-09-27 14:20:57', '2023-09-27 14:20:57', NULL),
(8, 'Deadpool2', '<p><i style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\"><b>Deadpool</b></i><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">&nbsp;is a 2016 American&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Superhero_film\" title=\"Superhero film\" style=\"color: rgb(51, 102, 204); background: none rgb(255, 255, 255); overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\">superhero film</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">&nbsp;based on the&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Marvel_Comics\" title=\"Marvel Comics\" style=\"color: rgb(51, 102, 204); background: none rgb(255, 255, 255); overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\">Marvel Comics</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">&nbsp;character&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Deadpool\" title=\"Deadpool\" style=\"color: rgb(51, 102, 204); background: none rgb(255, 255, 255); overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\">of the same name</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">. Distributed by&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/20th_Century_Fox\" class=\"mw-redirect\" title=\"20th Century Fox\" style=\"color: rgb(51, 102, 204); background: none rgb(255, 255, 255); overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\">20th Century Fox</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">, it is a&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Spin-off_(media)\" title=\"Spin-off (media)\" style=\"color: rgb(51, 102, 204); background: none rgb(255, 255, 255); overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\">spin-off</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">&nbsp;in the&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/X-Men_(film_series)\" title=\"X-Men (film series)\" style=\"color: rgb(51, 102, 204); background: none rgb(255, 255, 255); overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\"><i>X-Men</i>&nbsp;film series</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">&nbsp;and the eighth installment overall. Directed by&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Tim_Miller_(director)\" title=\"Tim Miller (director)\" style=\"color: rgb(51, 102, 204); background: none rgb(255, 255, 255); overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\">Tim Miller</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">&nbsp;(in his feature directorial debut) and written by&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Rhett_Reese\" title=\"Rhett Reese\" style=\"color: rgb(51, 102, 204); background: none rgb(255, 255, 255); overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\">Rhett Reese</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">&nbsp;and&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Paul_Wernick\" title=\"Paul Wernick\" style=\"color: rgb(51, 102, 204); background: none rgb(255, 255, 255); overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\">Paul Wernick</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">, it stars&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Ryan_Reynolds\" title=\"Ryan Reynolds\" style=\"color: rgb(51, 102, 204); background: none rgb(255, 255, 255); overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\">Ryan Reynolds</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">&nbsp;in the title role alongside&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Morena_Baccarin\" title=\"Morena Baccarin\" style=\"color: rgb(51, 102, 204); background: none rgb(255, 255, 255); overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\">Morena Baccarin</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">,&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Ed_Skrein\" title=\"Ed Skrein\" style=\"color: rgb(51, 102, 204); background: none rgb(255, 255, 255); overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\">Ed Skrein</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">,&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/T._J._Miller\" class=\"mw-redirect\" title=\"T. J. Miller\" style=\"color: rgb(51, 102, 204); background: none rgb(255, 255, 255); overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\">T. J. Miller</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">,&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Gina_Carano\" title=\"Gina Carano\" style=\"color: rgb(51, 102, 204); background: none rgb(255, 255, 255); overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\">Gina Carano</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">, and&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Brianna_Hildebrand\" title=\"Brianna Hildebrand\" style=\"color: rgb(51, 102, 204); background: none rgb(255, 255, 255); overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\">Brianna Hildebrand</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">. In the film, Wade Wilson hunts the man who gave him&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Mutant_(Marvel_Comics)\" title=\"Mutant (Marvel Comics)\" style=\"color: rgb(51, 102, 204); background: none rgb(255, 255, 255); overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\">mutant</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">&nbsp;abilities and a scarred physical appearance, becoming the&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Antihero\" title=\"Antihero\" style=\"color: rgb(51, 102, 204); background: none rgb(255, 255, 255); overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\">antihero</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">&nbsp;Deadpool.</span><br></p>', 3, 7, 'images/0sXUauQozM3ufd2nH9WbCJH4kLDNkmd0zpvLHbBE.jpg', '2023-09-27 14:22:07', '2023-09-27 14:22:07', NULL),
(9, 'Meg', '<p><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">Despite the objections of Heller (now a member of the Mana One crew), Zhang and Mac venture to Thailand to recruit Taylor, who is now a drunken loner. Taylor is initially skeptical but relents after listening to a taped recording containing the dialogue between Lori, her crew and Mana One. Suyin attempts the rescue in their absence but is attacked by a&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Giant_squid\" title=\"Giant squid\" style=\"color: rgb(51, 102, 204); background: none rgb(255, 255, 255); overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\">giant squid</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">. Before the squid can crush her&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Submersible\" title=\"Submersible\" style=\"color: rgb(51, 102, 204); background: none rgb(255, 255, 255); overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\">submersible</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">, it is killed by an enormous&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Shark\" title=\"Shark\" style=\"color: rgb(51, 102, 204); background: none rgb(255, 255, 255); overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\">shark</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">. Having agreed to help, Taylor breaches the thermocline and reaches the sunken submersible. When the shark returns and attacks the submersible before the evacuation has been completed, Toshi sacrifices himself to help the others escape.</span><br></p>', 4, 6, 'images/s79MvdpML3ObthoNSDIceKkyBczWWpQB8x2kcMwI.jpg', '2023-09-27 14:24:34', '2023-09-27 14:24:34', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `film_actors`
--

CREATE TABLE `film_actors` (
  `id` bigint UNSIGNED NOT NULL,
  `film_id` bigint UNSIGNED NOT NULL,
  `actor_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `film_actors`
--

INSERT INTO `film_actors` (`id`, `film_id`, `actor_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 1, 1, NULL, NULL),
(3, 2, 1, NULL, NULL),
(4, 2, 1, NULL, NULL),
(5, 3, 3, NULL, NULL),
(6, 3, 4, NULL, NULL),
(7, 3, 5, NULL, NULL),
(8, 3, 2, NULL, NULL),
(9, 3, 3, NULL, NULL),
(10, 3, 4, NULL, NULL),
(11, 4, 3, NULL, NULL),
(12, 4, 4, NULL, NULL),
(13, 4, 5, NULL, NULL),
(14, 5, 6, NULL, NULL),
(15, 5, 7, NULL, NULL),
(16, 5, 8, NULL, NULL),
(17, 6, 1, NULL, NULL),
(18, 6, 9, NULL, NULL),
(19, 6, 10, NULL, NULL),
(20, 7, 4, NULL, NULL),
(21, 7, 5, NULL, NULL),
(22, 7, 12, NULL, NULL),
(23, 8, 5, NULL, NULL),
(24, 8, 7, NULL, NULL),
(25, 8, 10, NULL, NULL),
(26, 9, 6, NULL, NULL),
(27, 9, 11, NULL, NULL),
(28, 9, 14, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `film_genres`
--

CREATE TABLE `film_genres` (
  `id` bigint UNSIGNED NOT NULL,
  `film_id` bigint UNSIGNED NOT NULL,
  `genre_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `film_genres`
--

INSERT INTO `film_genres` (`id`, `film_id`, `genre_id`, `created_at`, `updated_at`) VALUES
(1, 4, 2, NULL, NULL),
(2, 4, 3, NULL, NULL),
(3, 4, 4, NULL, NULL),
(4, 5, 1, NULL, NULL),
(5, 5, 5, NULL, NULL),
(6, 6, 1, NULL, NULL),
(7, 6, 5, NULL, NULL),
(8, 7, 1, NULL, NULL),
(9, 7, 5, NULL, NULL),
(10, 7, 7, NULL, NULL),
(11, 8, 2, NULL, NULL),
(12, 8, 5, NULL, NULL),
(13, 8, 6, NULL, NULL),
(14, 9, 1, NULL, NULL),
(15, 9, 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `film_user_likes`
--

CREATE TABLE `film_user_likes` (
  `id` bigint UNSIGNED NOT NULL,
  `film_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `film_user_likes`
--

INSERT INTO `film_user_likes` (`id`, `film_id`, `user_id`, `created_at`, `updated_at`) VALUES
(14, 4, 1, NULL, NULL),
(15, 7, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `genres`
--

CREATE TABLE `genres` (
  `id` bigint UNSIGNED NOT NULL,
  `genre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `genres`
--

INSERT INTO `genres` (`id`, `genre`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Horror', '2023-09-24 14:32:10', '2023-09-24 14:32:10', NULL),
(2, 'Crime', '2023-09-25 13:29:58', '2023-09-25 13:29:58', NULL),
(3, 'Drama', '2023-09-25 13:30:15', '2023-09-25 13:30:15', NULL),
(4, 'Triller', '2023-09-25 13:30:21', '2023-09-25 13:30:21', NULL),
(5, 'Action', '2023-09-27 13:39:49', '2023-09-27 13:39:49', NULL),
(6, 'Adventure', '2023-09-27 13:40:02', '2023-09-27 13:40:02', NULL),
(7, 'Sci-Fi', '2023-09-27 14:19:50', '2023-09-27 14:19:50', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(6, '2014_10_12_000000_create_users_table', 1),
(7, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(10, '2023_09_24_095437_create_rejisors_table', 1),
(11, '2023_09_24_095910_create_years_table', 2),
(12, '2023_09_24_095920_create_films_table', 2),
(13, '2023_09_24_101027_add_column_soft_deletes_to_rejisors_table', 3),
(14, '2023_09_24_101120_add_column_soft_deletes_to_years_table', 3),
(15, '2023_09_24_101206_add_column_soft_deletes_to_films_table', 3),
(16, '2023_09_24_145544_create_actors_table', 4),
(17, '2023_09_24_145808_create_film_actors_table', 4),
(18, '2023_09_24_150127_create_genres_table', 4),
(19, '2023_09_24_150149_create_film_genres_table', 4),
(21, '2023_09_25_153145_add_column_for_images_to_films_table', 5),
(24, '2014_10_12_100000_create_password_resets_table', 6),
(25, '2023_09_26_162512_add_column_role_to_users_table', 6),
(26, '2023_09_28_162413_create_film_user_likes_table', 7),
(27, '2023_09_30_133012_create_comments_table', 8);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `rejisors`
--

CREATE TABLE `rejisors` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `rejisors`
--

INSERT INTO `rejisors` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Martin Scorsese', '2023-09-24 14:47:36', '2023-09-24 14:47:36', NULL),
(2, 'Todd Phillips', '2023-09-25 13:23:38', '2023-09-25 13:23:38', NULL),
(3, 'Ruben Fleischer', '2023-09-27 13:37:16', '2023-09-27 13:37:16', NULL),
(4, 'Andy Serkis', '2023-09-27 13:45:14', '2023-09-27 13:45:14', NULL),
(5, 'Adam Wingard', '2023-09-27 14:17:23', '2023-09-27 14:17:23', NULL),
(6, 'Jon Turteltaub', '2023-09-27 14:23:43', '2023-09-27 14:23:43', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` smallint UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `role`) VALUES
(1, 'Aren', 'hovhannisyan.aren.2006@gmail.com', NULL, '$2y$10$JzDXyrchoDQuVcYwT9Eyv.FQLRQU8.nVl0vV/inCq3itK5zBltVhO', 'LTRDjmgooy6HElTzt8f8ytt9ndjPeYgEENuROl08NOzYmQbBjL66I5mxDXo8', '2023-09-26 12:13:02', '2023-09-27 11:40:40', 1),
(3, 'User', 'email@mail.com', NULL, '$2y$10$DtGlLWkdA5yq60oUpdAtM.W1hozwMmqYm3i2DnsOR8ilv.O1LaXrS', NULL, '2023-09-27 11:52:54', '2023-09-27 11:52:54', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `years`
--

CREATE TABLE `years` (
  `id` bigint UNSIGNED NOT NULL,
  `year` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `years`
--

INSERT INTO `years` (`id`, `year`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2020, '2023-09-24 14:58:36', '2023-09-24 14:58:55', '2023-09-24 14:58:55'),
(2, 1990, '2023-09-24 15:05:13', '2023-09-24 15:05:13', NULL),
(3, 1982, '2023-09-24 15:05:22', '2023-09-24 15:05:22', NULL),
(4, 2020, '2023-09-24 15:05:28', '2023-09-24 15:05:28', NULL),
(5, 2019, '2023-09-25 13:23:03', '2023-09-25 13:23:03', NULL),
(6, 2018, '2023-09-27 13:39:08', '2023-09-27 13:39:08', NULL),
(7, 2021, '2023-09-27 13:46:07', '2023-09-27 13:46:07', NULL);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `actors`
--
ALTER TABLE `actors`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_user_idx` (`user_id`),
  ADD KEY `comments_film_idx` (`film_id`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Индексы таблицы `films`
--
ALTER TABLE `films`
  ADD PRIMARY KEY (`id`),
  ADD KEY `film_rejisor_idx` (`rejisor_id`),
  ADD KEY `film_year_idx` (`year_id`);

--
-- Индексы таблицы `film_actors`
--
ALTER TABLE `film_actors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `film_actor_film_idx` (`film_id`),
  ADD KEY `film_actor_actor_idx` (`actor_id`);

--
-- Индексы таблицы `film_genres`
--
ALTER TABLE `film_genres`
  ADD PRIMARY KEY (`id`),
  ADD KEY `film_genre_film_idx` (`film_id`),
  ADD KEY `film_genre_genre_idx` (`genre_id`);

--
-- Индексы таблицы `film_user_likes`
--
ALTER TABLE `film_user_likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ful_film_idx` (`film_id`),
  ADD KEY `ful_user_idx` (`user_id`);

--
-- Индексы таблицы `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Индексы таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Индексы таблицы `rejisors`
--
ALTER TABLE `rejisors`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Индексы таблицы `years`
--
ALTER TABLE `years`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `actors`
--
ALTER TABLE `actors`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `films`
--
ALTER TABLE `films`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `film_actors`
--
ALTER TABLE `film_actors`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT для таблицы `film_genres`
--
ALTER TABLE `film_genres`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT для таблицы `film_user_likes`
--
ALTER TABLE `film_user_likes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `genres`
--
ALTER TABLE `genres`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT для таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `rejisors`
--
ALTER TABLE `rejisors`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `years`
--
ALTER TABLE `years`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_film_fk` FOREIGN KEY (`film_id`) REFERENCES `films` (`id`),
  ADD CONSTRAINT `comments_user_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ограничения внешнего ключа таблицы `films`
--
ALTER TABLE `films`
  ADD CONSTRAINT `film_rejisor_fk` FOREIGN KEY (`rejisor_id`) REFERENCES `rejisors` (`id`),
  ADD CONSTRAINT `film_year_fk` FOREIGN KEY (`year_id`) REFERENCES `years` (`id`);

--
-- Ограничения внешнего ключа таблицы `film_actors`
--
ALTER TABLE `film_actors`
  ADD CONSTRAINT `film_actor_actor_fk` FOREIGN KEY (`actor_id`) REFERENCES `actors` (`id`),
  ADD CONSTRAINT `film_actor_film_fk` FOREIGN KEY (`film_id`) REFERENCES `films` (`id`);

--
-- Ограничения внешнего ключа таблицы `film_genres`
--
ALTER TABLE `film_genres`
  ADD CONSTRAINT `film_genre_film_fk` FOREIGN KEY (`film_id`) REFERENCES `films` (`id`),
  ADD CONSTRAINT `film_genre_genre_fk` FOREIGN KEY (`genre_id`) REFERENCES `genres` (`id`);

--
-- Ограничения внешнего ключа таблицы `film_user_likes`
--
ALTER TABLE `film_user_likes`
  ADD CONSTRAINT `ful_film_fk` FOREIGN KEY (`film_id`) REFERENCES `films` (`id`),
  ADD CONSTRAINT `ful_user_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
