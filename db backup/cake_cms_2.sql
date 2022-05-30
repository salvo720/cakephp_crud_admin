-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Gen 20, 2021 alle 22:27
-- Versione del server: 10.4.17-MariaDB
-- Versione PHP: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cake_cms_2`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `details` text NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `articles`
--

INSERT INTO `articles` (`id`, `title`, `details`, `created`, `modified`) VALUES
(1, 'What is Lorem Ipsum?', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2020-01-29 00:00:00', '2020-01-29 00:00:00'),
(2, 'Why do we use it?', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', '2020-01-29 00:00:00', '2020-01-29 00:00:00'),
(3, 'Where does it come from?', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.', '2020-01-20 00:00:00', '2020-01-21 00:00:00'),
(4, 'Where can I get some?', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. ', '2020-01-28 00:00:00', '2020-01-28 00:00:00'),
(6, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', '2020-01-28 00:00:00', '2020-01-30 00:00:00');

-- --------------------------------------------------------

--
-- Struttura della tabella `categories`
--

CREATE TABLE `categories` (
  `id` smallint(5) NOT NULL,
  `name` varchar(20) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `categories`
--

INSERT INTO `categories` (`id`, `name`, `created`) VALUES
(1, 'meat', '2019-11-12 00:00:00'),
(2, 'Fish', '2019-11-17 00:00:00');

-- --------------------------------------------------------

--
-- Struttura della tabella `football_ragistrations`
--

CREATE TABLE `football_ragistrations` (
  `id` smallint(5) NOT NULL,
  `student_id` smallint(5) NOT NULL,
  `created_to` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `football_ragistrations`
--

INSERT INTO `football_ragistrations` (`id`, `student_id`, `created_to`, `updated_at`) VALUES
(1, 3, '2019-10-31 00:00:00', '2019-10-31 00:00:00');

-- --------------------------------------------------------

--
-- Struttura della tabella `friends`
--

CREATE TABLE `friends` (
  `id` smallint(5) NOT NULL,
  `name` varchar(25) NOT NULL,
  `amount` float NOT NULL,
  `city` varchar(20) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `friends`
--

INSERT INTO `friends` (`id`, `name`, `amount`, `city`, `created`) VALUES
(1, 'Jamal', 200, 'Tokyo', '2019-11-12 00:00:00'),
(2, 'Jone', 120, 'Dhaka', '2019-11-12 00:00:00'),
(3, 'Kamal', 100, 'Mosko', '2019-11-12 00:00:00'),
(4, 'Satis', 20, 'KolKata', '2019-11-12 00:00:00'),
(5, 'Lili', 223, 'Dhaka', '2019-11-11 00:00:00');

-- --------------------------------------------------------

--
-- Struttura della tabella `menus`
--

CREATE TABLE `menus` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `status` tinyint(2) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `menus`
--

INSERT INTO `menus` (`id`, `name`, `status`, `created`, `modified`) VALUES
(1, 'PHP', 1, '2020-04-18 14:24:32', '2020-04-18 14:24:32'),
(2, 'JavaScript', 1, '2020-04-18 14:25:27', '2020-04-18 14:25:27'),
(3, 'Java', 1, '2020-04-18 14:46:42', '2020-04-18 14:46:42');

-- --------------------------------------------------------

--
-- Struttura della tabella `phinxlog`
--

CREATE TABLE `phinxlog` (
  `version` bigint(20) NOT NULL,
  `migration_name` varchar(100) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `breakpoint` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `picnic_ragistrations`
--

CREATE TABLE `picnic_ragistrations` (
  `id` smallint(6) NOT NULL,
  `student_id` smallint(6) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `picnic_ragistrations`
--

INSERT INTO `picnic_ragistrations` (`id`, `student_id`, `amount`, `created_at`, `updated_at`) VALUES
(1, 1, '500.00', '2019-10-30 03:09:00', '2019-10-30 03:09:00'),
(2, 3, '500.00', '2019-10-29 06:00:00', '2019-10-29 06:00:00'),
(3, 5, '500.00', '2019-10-30 03:09:10', '2019-10-30 03:09:10');

-- --------------------------------------------------------

--
-- Struttura della tabella `products`
--

CREATE TABLE `products` (
  `id` smallint(5) NOT NULL,
  `name` varchar(20) NOT NULL,
  `category_id` smallint(5) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `products`
--

INSERT INTO `products` (`id`, `name`, `category_id`, `created`, `modified`) VALUES
(1, 'Beef', 1, '2019-11-18 00:00:00', '2019-11-20 00:00:00'),
(2, 'Mutton', 1, '2019-11-18 00:00:00', '2019-11-20 00:00:00'),
(3, 'Deshi Chicken', 1, '2019-11-18 00:00:00', '2019-11-20 00:00:00'),
(4, 'Broiler', 1, '2019-11-18 00:00:00', '2019-11-20 00:00:00'),
(5, 'Cow Liver', 1, '2019-11-18 00:00:00', '2019-11-20 00:00:00'),
(6, 'Pabda', 2, '2019-11-17 00:00:00', '2019-11-17 00:00:00'),
(7, 'Rui', 2, '2019-11-17 00:00:00', '2019-11-17 00:00:00'),
(8, 'Mola', 2, '2019-11-17 00:00:00', '2019-11-17 00:00:00'),
(9, 'Koral', 2, '2019-11-17 00:00:00', '2019-11-17 00:00:00'),
(10, 'abc', 1, '2020-02-22 16:31:50', '2020-02-22 16:31:51');

-- --------------------------------------------------------

--
-- Struttura della tabella `profiles`
--

CREATE TABLE `profiles` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `mobile` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `profiles`
--

INSERT INTO `profiles` (`id`, `user_id`, `mobile`, `created`, `modified`) VALUES
(1, 6, 121212, '2020-04-10 07:35:31', '2020-04-10 07:35:31'),
(2, 1, 181111, '2020-04-12 13:04:43', '2020-04-12 13:04:43'),
(3, 2, 112121212, '2020-04-12 13:41:24', '2020-04-12 13:41:24'),
(4, 3, 23232323, '2020-04-12 13:41:34', '2020-04-12 13:41:34'),
(5, 7, 32323, '2020-04-12 15:00:26', '2020-04-12 15:00:26'),
(6, 8, 1212, '2020-04-12 15:09:22', '2020-04-12 15:09:22'),
(7, 9, 12119, '2020-04-12 15:10:47', '2020-04-12 15:10:47'),
(8, 10, 121212, '2020-04-12 15:12:19', '2020-04-12 15:12:19'),
(9, 11, 121212, '2020-04-13 14:33:23', '2020-04-13 14:33:23'),
(12, 22, 56765, '2021-01-14 17:11:31', '2021-01-14 17:11:31'),
(13, 23, 54747754, '2021-01-14 17:12:22', '2021-01-14 17:12:22'),
(14, 24, 354453445, '2021-01-14 17:39:20', '2021-01-14 17:39:20'),
(15, 25, 2147483647, '2021-01-14 18:37:30', '2021-01-14 18:37:30');

-- --------------------------------------------------------

--
-- Struttura della tabella `skills`
--

CREATE TABLE `skills` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `skills`
--

INSERT INTO `skills` (`id`, `user_id`, `name`, `created`, `modified`) VALUES
(1, 11, 'php', '2020-04-13 14:33:23', '2020-04-13 14:33:23'),
(2, 11, 'javascript', '2020-04-13 14:33:23', '2020-04-13 14:33:23'),
(3, 6, 'Java', '2020-04-16 15:47:00', '2020-04-16 15:47:00'),
(4, 6, 'Python', '2020-04-16 15:47:00', '2020-04-16 15:47:00'),
(5, 6, 'c++', '2020-04-16 15:47:00', '2020-04-16 15:47:00'),
(6, 1, 'c', '2020-04-16 15:47:37', '2020-04-16 15:47:37'),
(7, 1, 'c++', '2020-04-16 15:47:37', '2020-04-16 15:47:37'),
(8, 24, 'php', '2021-01-14 17:39:20', '2021-01-14 17:39:20'),
(9, 24, 'java ', '2021-01-14 17:39:20', '2021-01-14 17:39:20'),
(10, 24, 'javascript', '2021-01-14 17:39:20', '2021-01-14 17:39:20'),
(11, 25, 'php', '2021-01-14 18:37:30', '2021-01-14 18:37:30'),
(12, 25, 'c++', '2021-01-14 18:37:30', '2021-01-14 18:37:30'),
(13, 25, 'c#', '2021-01-14 18:37:30', '2021-01-14 18:37:30');

-- --------------------------------------------------------

--
-- Struttura della tabella `spouses`
--

CREATE TABLE `spouses` (
  `id` smallint(6) NOT NULL,
  `name` varchar(20) NOT NULL,
  `friend_id` smallint(6) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `spouses`
--

INSERT INTO `spouses` (`id`, `name`, `friend_id`, `created`) VALUES
(1, 'Karina', 2, '2019-11-11 00:00:00'),
(2, 'Jenifar', 1, '2019-11-11 00:00:00'),
(3, 'Maria', 4, '2019-11-12 00:00:00');

-- --------------------------------------------------------

--
-- Struttura della tabella `students`
--

CREATE TABLE `students` (
  `id` mediumint(6) NOT NULL,
  `name` varchar(25) NOT NULL,
  `age` decimal(10,3) NOT NULL,
  `country` varchar(25) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `students`
--

INSERT INTO `students` (`id`, `name`, `age`, `country`, `created_at`, `updated_at`) VALUES
(1, 'Jone', '13.000', 'Japan', '2019-10-30 03:12:14', '2019-10-30 03:14:00'),
(2, 'Sujo', '21.000', 'Japan', '2019-10-30 03:12:14', '2019-10-30 03:14:00'),
(3, 'Kamal', '23.000', 'Bangladesh', '2019-10-29 06:00:00', '2019-10-30 05:12:00'),
(4, 'Sabina', '18.000', 'Bangladesh', '2019-10-29 06:00:00', '2019-10-30 05:12:00'),
(5, 'Jamal', '12.000', 'Bangladesh', '2019-10-30 03:09:10', '2019-10-30 03:08:06'),
(6, 'Satis', '22.000', 'India', '2019-10-30 03:07:11', '2019-10-30 03:25:11'),
(8, '', '0.000', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, '', '0.000', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'jone', '12.000', 'BD', '2019-11-18 00:00:00', '2019-11-18 00:00:00');

-- --------------------------------------------------------

--
-- Struttura della tabella `submenus`
--

CREATE TABLE `submenus` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `submenus`
--

INSERT INTO `submenus` (`id`, `menu_id`, `name`, `status`, `created`, `modified`) VALUES
(1, 1, 'CakePHP', 1, '2020-04-18 14:25:41', '2020-04-18 14:25:41'),
(2, 1, 'Leravel', 1, '2020-04-18 14:25:56', '2020-04-18 14:25:56'),
(3, 1, 'Yii', 1, '2020-04-18 14:26:04', '2020-04-18 14:26:04'),
(4, 2, 'NodeJs', 1, '2020-04-18 14:26:14', '2020-04-18 14:26:14'),
(5, 2, 'React Js', 1, '2020-04-18 14:26:22', '2020-04-18 14:26:22');

-- --------------------------------------------------------

--
-- Struttura della tabella `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `email` varchar(25) NOT NULL,
  `amount` int(11) NOT NULL,
  `password` varchar(100) NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` tinyint(2) NOT NULL DEFAULT 1,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `amount`, `password`, `image`, `status`, `created`, `modified`) VALUES
(1, 'pitocmsssss', 'demo123@admin.com', 0, '$2y$10$kcprj5VbJlJgcJXx3U5SJuFLmnlk5kNJKrpScZ8HQO6H7O9WgEHpi', 'user-img/template.jpg', 0, '2020-04-01 07:14:22', '2020-04-16 15:47:37'),
(2, 'test232', 'test@test.com', 0, '$2y$10$jQaO3/f3tpSjbpduPmZ59O99knmqxB8TtQzlfYPfc11AV7Cq/K5S.', 'user-img/8709387_orig.jpg', 1, '2020-04-01 07:14:42', '2020-04-12 13:41:24'),
(3, 'pitocms', 'pitocms@yahoo.com', 0, '$2y$10$yIXWSpsXIOeFoqomVHaggesm6rpUDFVTv2375uSHRKLQJVuUgf7X.', 'user-img/p120274.jpg', 1, '2020-04-03 15:15:44', '2020-04-12 13:41:34'),
(12, 's', 's@gmail.com', 0, '$2y$10$KzD2xPPWbKWp0KUWnUDUtunlEL02k5E7v1ZtEmEuM9ICR.z9D45tC', 'user-img/nova2.jpg', 1, '2021-01-11 21:42:18', '2021-01-11 21:42:18'),
(13, 'a', 'as@gmail.com', 0, '$2y$10$SEoL0n3X/baJL0f1uHhUJOng.VYLkslz26u/5WWuZL7fHN8DbEUPK', 'user-img/download.jpg', 1, '2021-01-11 21:42:39', '2021-01-14 16:42:31'),
(14, 'asd', 'asd@gmail.com', 0, '$2y$10$9jSCG8zqZL2/PpBbhNFfke1GBgy30EbiaN0Uah5D/LPQt30kyu1/S', 'user-img/cakephpimage.jpg', 0, '2021-01-11 21:42:51', '2021-01-14 16:47:30'),
(15, 'asdf', 'asdf@gmail.com', 0, '$2y$10$0rcvD0Zyo6KQl4IgQ/ZPMO/huZTrCWSw9VA.lyrlvoek5SQ3aDvzG', 'user-img/', 0, '2021-01-11 21:42:59', '2021-01-12 19:36:28'),
(19, 'hhh', 'hhh@gmail.com', 0, '$2y$10$VqbddzgoiR1hMF2NsfT64.Pg/WD7DUwe7P5NGLeqvxwNkjt942G32', 'user-img/cakephpimage.jpg', 1, '2021-01-14 17:03:52', '2021-01-14 17:03:52'),
(22, 'u', 'u@gmail.com', 0, '$2y$10$1S63.Pn/m/OKoQy0p6cO1OcWiTgYGs7MBKj7Uk1XKYESUqjlIGiXG', 'user-img/nova22.jpg', 1, '2021-01-14 17:11:31', '2021-01-14 17:11:31'),
(23, 'hjk', 'hk@gmail.com', 0, '$2y$10$Gx06TUNMW/MvoFB3z7i8i.mlRwx2nqFEkAedNWsqK7Q8x60o3hSt2', 'user-img/cakephpimage.jpg', 1, '2021-01-14 17:12:22', '2021-01-14 17:12:22'),
(24, 'gfghgf', 'fd@gmail.com', 0, '$2y$10$2xIhNpQMkaNGMLDLM3TBT.y3Ce6nqYGxtirfeZJ2vX.fOCz4pkheC', 'user-img/nova77.jpg', 1, '2021-01-14 17:39:20', '2021-01-14 17:39:20');

-- --------------------------------------------------------

--
-- Struttura della tabella `user_logs`
--

CREATE TABLE `user_logs` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `ip` varchar(45) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `user_logs`
--

INSERT INTO `user_logs` (`id`, `user_id`, `ip`, `created`, `modified`) VALUES
(1, 0, '127.0.0.1', '2021-01-19 18:57:51', '2021-01-19 18:57:51'),
(2, 0, '::1', '2021-01-19 22:16:31', '2021-01-19 22:16:31'),
(3, 0, '::1', '2021-01-20 19:41:46', '2021-01-20 19:41:46');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `football_ragistrations`
--
ALTER TABLE `football_ragistrations`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `friends`
--
ALTER TABLE `friends`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `phinxlog`
--
ALTER TABLE `phinxlog`
  ADD PRIMARY KEY (`version`);

--
-- Indici per le tabelle `picnic_ragistrations`
--
ALTER TABLE `picnic_ragistrations`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `spouses`
--
ALTER TABLE `spouses`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `submenus`
--
ALTER TABLE `submenus`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `user_logs`
--
ALTER TABLE `user_logs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT per la tabella `categories`
--
ALTER TABLE `categories`
  MODIFY `id` smallint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT per la tabella `football_ragistrations`
--
ALTER TABLE `football_ragistrations`
  MODIFY `id` smallint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT per la tabella `friends`
--
ALTER TABLE `friends`
  MODIFY `id` smallint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT per la tabella `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT per la tabella `picnic_ragistrations`
--
ALTER TABLE `picnic_ragistrations`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT per la tabella `products`
--
ALTER TABLE `products`
  MODIFY `id` smallint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT per la tabella `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT per la tabella `skills`
--
ALTER TABLE `skills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT per la tabella `spouses`
--
ALTER TABLE `spouses`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT per la tabella `students`
--
ALTER TABLE `students`
  MODIFY `id` mediumint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT per la tabella `submenus`
--
ALTER TABLE `submenus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT per la tabella `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT per la tabella `user_logs`
--
ALTER TABLE `user_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
