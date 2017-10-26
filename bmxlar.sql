-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Czas generowania: 26 Paź 2017, 12:04
-- Wersja serwera: 5.6.24
-- Wersja PHP: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Baza danych: `bmxlar`
--
CREATE DATABASE IF NOT EXISTS `bmxlar` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `bmxlar`;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(10) unsigned NOT NULL,
  `event_id` int(10) unsigned NOT NULL,
  `categoryName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `categories`
--

INSERT INTO `categories` (`id`, `event_id`, `categoryName`, `created_at`, `updated_at`) VALUES
(1, 1, 'Under 6', '2017-09-11 22:01:23', '2017-09-11 22:01:23'),
(2, 1, 'Male 7-8', '2017-09-11 22:02:08', '2017-09-11 22:02:08'),
(3, 1, 'Super class', '2017-10-04 22:20:02', '2017-10-04 22:20:02');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `category_rider`
--

CREATE TABLE IF NOT EXISTS `category_rider` (
  `id` int(11) NOT NULL,
  `category_id` int(10) unsigned NOT NULL,
  `rider_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `category_rider`
--

INSERT INTO `category_rider` (`id`, `category_id`, `rider_id`) VALUES
(2, 1, 4),
(4, 1, 6),
(5, 1, 7),
(6, 1, 8),
(7, 1, 9),
(8, 2, 10),
(9, 2, 11),
(10, 2, 12),
(11, 2, 13);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `events`
--

CREATE TABLE IF NOT EXISTS `events` (
  `id` int(10) unsigned NOT NULL,
  `eventName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `eventDate` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `events`
--

INSERT INTO `events` (`id`, `eventName`, `eventDate`, `created_at`, `updated_at`) VALUES
(1, 'Round 1 Lucan BMX', '2017-09-14', '2017-09-11 22:01:06', '2017-09-11 22:01:06');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_08_17_095738_create_events_table', 1),
(4, '2017_09_03_131651_create_categories_table', 1),
(5, '2017_09_04_152255_create_riders_table', 1),
(6, '2017_09_07_114855_create_category_rider_table', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `motos`
--

CREATE TABLE IF NOT EXISTS `motos` (
  `id` int(10) unsigned NOT NULL,
  `category_rider_id` int(10) unsigned NOT NULL,
  `moto1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `moto2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `moto3` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `moto1results` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `moto2results` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `moto3results` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `riders`
--

CREATE TABLE IF NOT EXISTS `riders` (
  `id` int(10) unsigned NOT NULL,
  `firstName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lastName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `plateNumber` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `club` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `sex` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `riders`
--

INSERT INTO `riders` (`id`, `firstName`, `lastName`, `plateNumber`, `club`, `dob`, `sex`, `email`, `phone`, `created_at`, `updated_at`) VALUES
(3, 'Arek', 'Gooo', '402', 'Lucan', NULL, NULL, NULL, NULL, '2017-09-05 10:47:36', '2017-09-05 10:47:36'),
(4, 'Marta', 'Dup', '403', 'Lucan', NULL, NULL, NULL, NULL, '2017-09-05 16:31:04', '2017-09-05 16:31:04'),
(5, 'Mark', 'Rider', '404', 'Dublin', NULL, NULL, NULL, NULL, '2017-09-06 20:01:15', '2017-09-06 20:01:15'),
(6, 'Mateusz', 'Tumanowicz', '405', 'Lucan', '2004-05-11', NULL, NULL, NULL, '2017-09-08 13:46:30', '2017-09-08 13:46:30'),
(7, 'Omari', 'Castaneda', '406', 'Blefast', NULL, NULL, NULL, NULL, '2017-09-05 10:47:36', '2017-09-05 10:47:36'),
(8, 'Kennedi', 'Powers', '407', 'Cork', NULL, NULL, NULL, NULL, '2017-09-05 16:31:04', '2017-09-05 16:31:04'),
(9, 'Micah', 'Oneill', '408', 'Cork', NULL, NULL, NULL, NULL, '2017-09-06 20:01:15', '2017-09-06 20:01:15'),
(10, 'London', 'Chang', '409', 'Cork', NULL, NULL, NULL, NULL, '2017-09-08 13:46:30', '2017-09-08 13:46:30'),
(11, 'Bradley', 'Nolan', '410', 'Cork', NULL, NULL, NULL, NULL, '2017-09-05 10:47:36', '2017-09-05 10:47:36'),
(12, 'Gael', 'Barton', '411', 'Cork', NULL, NULL, NULL, NULL, '2017-09-05 16:31:04', '2017-09-05 16:31:04'),
(13, 'Anabella', 'Marks', '412', 'Cork', NULL, NULL, NULL, NULL, '2017-09-06 20:01:15', '2017-09-06 20:01:15'),
(14, 'Saige', 'Poole', '413', 'Cork', NULL, NULL, NULL, NULL, '2017-09-08 13:46:30', '2017-09-08 13:46:30'),
(15, 'Giselle', 'Holden', '414', 'Cork', NULL, NULL, NULL, NULL, '2017-09-05 10:47:36', '2017-09-05 10:47:36'),
(16, 'Angelo', 'Webb', '415', 'Cork', NULL, NULL, NULL, NULL, '2017-09-05 16:31:04', '2017-09-05 16:31:04'),
(17, 'Kieran', 'Trujillo', '416', 'Riverchapel', NULL, NULL, NULL, NULL, '2017-09-06 20:01:15', '2017-09-06 20:01:15'),
(18, 'Sebastian', 'Doyle', '417', 'Riverchapel', NULL, NULL, NULL, NULL, '2017-09-08 13:46:30', '2017-09-08 13:46:30'),
(19, 'Savion', 'Moreno', '418', 'Riverchapel', NULL, NULL, NULL, NULL, '2017-09-05 10:47:36', '2017-09-05 10:47:36'),
(20, 'Randy', 'Jacobson', '419', 'Riverchapel', NULL, NULL, NULL, NULL, '2017-09-05 16:31:04', '2017-09-05 16:31:04'),
(21, 'Noe', 'Sparks', '420', 'Cork', NULL, NULL, NULL, NULL, '2017-09-06 20:01:15', '2017-09-06 20:01:15'),
(22, 'Kaylyn', 'Castro', '421', 'Cork', NULL, NULL, NULL, NULL, '2017-09-08 13:46:30', '2017-09-08 13:46:30'),
(23, 'Juliette', 'Cherry', '422', 'Cork', NULL, NULL, NULL, NULL, '2017-09-05 10:47:36', '2017-09-05 10:47:36'),
(24, 'Audrey', 'Parsons', '423', 'Cork', NULL, NULL, NULL, NULL, '2017-09-05 16:31:04', '2017-09-05 16:31:04'),
(25, 'Kylie', 'Stark', '424', 'Cork', NULL, NULL, NULL, NULL, '2017-09-06 20:01:15', '2017-09-06 20:01:15'),
(26, 'Nina', 'King', '425', 'Riverchapel', NULL, NULL, NULL, NULL, '2017-09-08 13:46:30', '2017-09-08 13:46:30'),
(27, 'Aliza', 'Baird', '426', 'Riverchapel', NULL, NULL, NULL, NULL, '2017-09-05 10:47:36', '2017-09-05 10:47:36'),
(28, 'Samir', 'Holt', '427', 'Riverchapel', NULL, NULL, NULL, NULL, '2017-09-05 16:31:04', '2017-09-05 16:31:04'),
(29, 'Ahmed', 'Campbell', '428', 'Cork', NULL, NULL, NULL, NULL, '2017-09-06 20:01:15', '2017-09-06 20:01:15'),
(30, 'Macie', 'Chan', '429', 'Cork', NULL, NULL, NULL, NULL, '2017-09-08 13:46:30', '2017-09-08 13:46:30'),
(31, 'Jade', 'Choi', '430', 'Cork', NULL, NULL, NULL, NULL, '2017-09-05 10:47:36', '2017-09-05 10:47:36'),
(32, 'Brooke', 'Robles', '431', 'Cork', NULL, NULL, NULL, NULL, '2017-09-05 16:31:04', '2017-09-05 16:31:04'),
(33, 'Greyson', 'Monroe', '432', 'Cork', NULL, NULL, NULL, NULL, '2017-09-06 20:01:15', '2017-09-06 20:01:15'),
(34, 'Andre', 'Underwood', '433', 'Cork', NULL, NULL, NULL, NULL, '2017-09-08 13:46:30', '2017-09-08 13:46:30'),
(35, 'Allan', 'Moore', '434', 'Lucan', NULL, NULL, NULL, NULL, '2017-09-05 10:47:36', '2017-09-05 10:47:36'),
(36, 'Chance', 'Patel', '435', 'Lucan', NULL, NULL, NULL, NULL, '2017-09-05 16:31:04', '2017-09-05 16:31:04'),
(37, 'Julio', 'Maxwell', '436', 'Dublin', NULL, NULL, NULL, NULL, '2017-09-06 20:01:15', '2017-09-06 20:01:15'),
(38, 'Tara', 'Golden', '437', 'Lucan', NULL, NULL, NULL, NULL, '2017-09-08 13:46:30', '2017-09-08 13:46:30'),
(39, 'Carlee', 'Wolfe', '438', 'Blefast', NULL, NULL, NULL, NULL, '2017-09-05 10:47:36', '2017-09-05 10:47:36'),
(40, 'Sofia', 'Daniels', '439', 'Riverchapel', NULL, NULL, NULL, NULL, '2017-09-05 16:31:04', '2017-09-05 16:31:04'),
(41, 'Rylie', 'Harris', '440', 'Riverchapel', NULL, NULL, NULL, NULL, '2017-09-06 20:01:15', '2017-09-06 20:01:15'),
(42, 'Yadira', 'Norton', '441', 'Riverchapel', NULL, NULL, NULL, NULL, '2017-09-08 13:46:30', '2017-09-08 13:46:30'),
(43, 'Jorden', 'Velazquez', '442', 'Riverchapel', NULL, NULL, NULL, NULL, '2017-09-05 10:47:36', '2017-09-05 10:47:36'),
(44, 'Coleman', 'Floyd', '443', 'Riverchapel', NULL, NULL, NULL, NULL, '2017-09-05 16:31:04', '2017-09-05 16:31:04'),
(45, 'Yael', 'Barr', '444', 'Riverchapel', NULL, NULL, NULL, NULL, '2017-09-06 20:01:15', '2017-09-06 20:01:15'),
(46, 'Emmalee', 'Franco', '445', 'Riverchapel', NULL, NULL, NULL, NULL, '2017-09-08 13:46:30', '2017-09-08 13:46:30'),
(47, 'Maverick', 'Bartlett', '446', 'Riverchapel', NULL, NULL, NULL, NULL, '2017-09-05 10:47:36', '2017-09-05 10:47:36'),
(48, 'Hudson', 'Blake', '447', 'Riverchapel', NULL, NULL, NULL, NULL, '2017-09-05 16:31:04', '2017-09-05 16:31:04'),
(49, 'Melanie', 'Fowler', '448', 'Riverchapel', NULL, NULL, NULL, NULL, '2017-09-06 20:01:15', '2017-09-06 20:01:15'),
(50, 'Josie', 'Paul', '449', 'Cork', NULL, NULL, NULL, NULL, '2017-09-08 13:46:30', '2017-09-08 13:46:30'),
(51, 'Asher', 'Webster', '450', 'Cork', NULL, NULL, NULL, NULL, '2017-09-05 10:47:36', '2017-09-05 10:47:36'),
(52, 'Damion', 'Montes', '451', 'Cork', NULL, NULL, NULL, NULL, '2017-09-05 16:31:04', '2017-09-05 16:31:04'),
(53, 'Brian', 'Romero', '452', 'Cork', NULL, NULL, NULL, NULL, '2017-09-06 20:01:15', '2017-09-06 20:01:15'),
(54, 'Lennon', 'English', '453', 'Cork', NULL, NULL, NULL, NULL, '2017-09-08 13:46:30', '2017-09-08 13:46:30'),
(55, 'Maritza', 'Jordan', '454', 'Cork', NULL, NULL, NULL, NULL, '2017-09-05 10:47:36', '2017-09-05 10:47:36'),
(56, 'Sariah', 'Warren', '455', 'Lucan', NULL, NULL, NULL, NULL, '2017-09-05 16:31:04', '2017-09-05 16:31:04'),
(57, 'Kyle', 'Coleman', '456', 'Lucan', NULL, NULL, NULL, NULL, '2017-09-06 20:01:15', '2017-09-06 20:01:15'),
(58, 'Nathanael', 'Harding', '457', 'Dublin', NULL, NULL, NULL, NULL, '2017-09-08 13:46:30', '2017-09-08 13:46:30'),
(59, 'Kimberly', 'Arellano', '458', 'Lucan', NULL, NULL, NULL, NULL, '2017-09-05 10:47:36', '2017-09-05 10:47:36'),
(60, 'Ashanti', 'Ortega', '459', 'Blefast', NULL, NULL, NULL, NULL, '2017-09-05 16:31:04', '2017-09-05 16:31:04'),
(61, 'Clare', 'Yoder', '460', 'Riverchapel', NULL, NULL, NULL, NULL, '2017-09-06 20:01:15', '2017-09-06 20:01:15'),
(62, 'Noah', 'Vasquez', '461', 'Riverchapel', NULL, NULL, NULL, NULL, '2017-09-08 13:46:30', '2017-09-08 13:46:30'),
(63, 'Callum', 'Alvarado', '462', 'Blefast', NULL, NULL, NULL, NULL, '2017-09-05 10:47:36', '2017-09-05 10:47:36'),
(64, 'Dalton', 'Pollard', '463', 'Blefast', NULL, NULL, NULL, NULL, '2017-09-05 16:31:04', '2017-09-05 16:31:04'),
(65, 'Alfonso', 'Erickson', '464', 'Blefast', NULL, NULL, NULL, NULL, '2017-09-06 20:01:15', '2017-09-06 20:01:15'),
(66, 'Annalise', 'Heath', '465', 'Blefast', NULL, NULL, NULL, NULL, '2017-09-08 13:46:30', '2017-09-08 13:46:30'),
(67, 'Danielle', 'Hodge', '466', 'Lucan', NULL, NULL, NULL, NULL, '2017-09-05 10:47:36', '2017-09-05 10:47:36'),
(68, 'Brock', 'Li', '467', 'Lucan', NULL, NULL, NULL, NULL, '2017-09-05 16:31:04', '2017-09-05 16:31:04'),
(69, 'Antwan', 'Mcconnell', '468', 'Dublin', NULL, NULL, NULL, NULL, '2017-09-06 20:01:15', '2017-09-06 20:01:15'),
(70, 'Lincoln', 'Mullen', '469', 'Lucan', NULL, NULL, NULL, NULL, '2017-09-08 13:46:30', '2017-09-08 13:46:30'),
(71, 'Amelia', 'Hodges', '470', 'Blefast', NULL, NULL, NULL, NULL, '2017-09-05 10:47:36', '2017-09-05 10:47:36'),
(72, 'Madelynn', 'Patrick', '471', 'Blefast', NULL, NULL, NULL, NULL, '2017-09-05 16:31:04', '2017-09-05 16:31:04'),
(73, 'Luciano', 'Shah', '472', 'Blefast', NULL, NULL, NULL, NULL, '2017-09-06 20:01:15', '2017-09-06 20:01:15'),
(74, 'Brenton', 'Lynn', '473', 'Lucan', NULL, NULL, NULL, NULL, '2017-09-08 13:46:30', '2017-09-08 13:46:30'),
(75, 'Karma', 'Fletcher', '474', 'Lucan', NULL, NULL, NULL, NULL, '2017-09-05 10:47:36', '2017-09-05 10:47:36'),
(76, 'Bianca', 'Maynard', '475', 'Lucan', NULL, NULL, NULL, NULL, '2017-09-05 16:31:04', '2017-09-05 16:31:04'),
(77, 'Reuben', 'Booth', '476', 'Lucan', NULL, NULL, NULL, NULL, '2017-09-06 20:01:15', '2017-09-06 20:01:15'),
(78, 'Hazel', 'Rivers', '477', 'Lucan', NULL, NULL, NULL, NULL, '2017-09-08 13:46:30', '2017-09-08 13:46:30'),
(79, 'Scarlet', 'Shaw', '478', 'Lucan', NULL, NULL, NULL, NULL, '2017-09-05 10:47:36', '2017-09-05 10:47:36'),
(80, 'Amya', 'Gutierrez', '479', 'Lucan', NULL, NULL, NULL, NULL, '2017-09-05 16:31:04', '2017-09-05 16:31:04'),
(81, 'Harry', 'Vincent', '480', 'Lucan', NULL, NULL, NULL, NULL, '2017-09-06 20:01:15', '2017-09-06 20:01:15'),
(82, 'Fernanda', 'Hampton', '481', 'Lucan', NULL, NULL, NULL, NULL, '2017-09-08 13:46:30', '2017-09-08 13:46:30'),
(83, 'Khalil', 'Cantu', '482', 'Ratoath', NULL, NULL, NULL, NULL, '2017-09-05 10:47:36', '2017-09-05 10:47:36'),
(84, 'Karsyn', 'Hunter', '483', 'Ratoath', NULL, NULL, NULL, NULL, '2017-09-05 16:31:04', '2017-09-05 16:31:04'),
(85, 'Gary', 'Nielsen', '484', 'Ratoath', NULL, NULL, NULL, NULL, '2017-09-06 20:01:15', '2017-09-06 20:01:15'),
(86, 'Reagan', 'Hernandez', '485', 'Ratoath', NULL, NULL, NULL, NULL, '2017-09-08 13:46:30', '2017-09-08 13:46:30'),
(87, 'Kaiya', 'Massey', '486', 'Ratoath', NULL, NULL, NULL, NULL, '2017-09-05 10:47:36', '2017-09-05 10:47:36'),
(88, 'Samuel', 'Harmon', '487', 'Ratoath', NULL, NULL, NULL, NULL, '2017-09-05 16:31:04', '2017-09-05 16:31:04'),
(89, 'Jamison', 'Esparza', '488', 'Ratoath', NULL, NULL, NULL, NULL, '2017-09-06 20:01:15', '2017-09-06 20:01:15'),
(90, 'Van', 'Whitehead', '489', 'Lisburn', NULL, NULL, NULL, NULL, '2017-09-08 13:46:30', '2017-09-08 13:46:30'),
(91, 'Margaret', 'Calderon', '490', 'Lisburn', NULL, NULL, NULL, NULL, '2017-09-05 10:47:36', '2017-09-05 10:47:36'),
(92, 'Kaleigh', 'Case', '491', 'Lisburn', NULL, NULL, NULL, NULL, '2017-09-05 16:31:04', '2017-09-05 16:31:04'),
(93, 'Jamarion', 'Coffey', '492', 'Lisburn', NULL, NULL, NULL, NULL, '2017-09-06 20:01:15', '2017-09-06 20:01:15'),
(94, 'Madison', 'Wright', '493', 'Lisburn', NULL, NULL, NULL, NULL, '2017-09-08 13:46:30', '2017-09-08 13:46:30'),
(95, 'Ashlyn', 'Zavala', '494', 'Lisburn', NULL, NULL, NULL, NULL, '2017-09-05 10:47:36', '2017-09-05 10:47:36'),
(96, 'Ansley', 'Mckinney', '495', 'Cork', NULL, NULL, NULL, NULL, '2017-09-05 16:31:04', '2017-09-05 16:31:04'),
(97, 'Josue', 'Larson', '496', 'Cork', NULL, NULL, NULL, NULL, '2017-09-06 20:01:15', '2017-09-06 20:01:15'),
(98, 'Laurel', 'Hopkins', '497', 'Cork', NULL, NULL, NULL, NULL, '2017-09-08 13:46:30', '2017-09-08 13:46:30'),
(99, 'Deshawn', 'Branch', '498', 'Cork', NULL, NULL, NULL, NULL, '2017-09-05 10:47:36', '2017-09-05 10:47:36'),
(100, 'Lexi', 'Stanton', '499', 'Riverchapel', NULL, NULL, NULL, NULL, '2017-09-05 16:31:04', '2017-09-05 16:31:04'),
(101, 'Quinten', 'Morrow', '500', 'Riverchapel', NULL, NULL, NULL, NULL, '2017-09-06 20:01:15', '2017-09-06 20:01:15'),
(102, 'Ciara', 'Robbins', '501', 'Riverchapel', NULL, NULL, NULL, NULL, '2017-09-08 13:46:30', '2017-09-08 13:46:30'),
(103, 'Alonzo', 'Woodward', '502', 'Riverchapel', NULL, NULL, NULL, NULL, '2017-09-05 10:47:36', '2017-09-05 10:47:36'),
(104, 'Nathan', 'Olsen', '503', 'Cork', NULL, NULL, NULL, NULL, '2017-09-05 16:31:04', '2017-09-05 16:31:04'),
(105, 'Joseph', 'Weaver', '504', 'Cork', NULL, NULL, NULL, NULL, '2017-09-06 20:01:15', '2017-09-06 20:01:15'),
(106, 'Grady', 'Goodman', '505', 'Cork', NULL, NULL, NULL, NULL, '2017-09-08 13:46:30', '2017-09-08 13:46:30'),
(107, 'Maci', 'Hoffman', '506', 'Cork', NULL, NULL, NULL, NULL, '2017-09-05 10:47:36', '2017-09-05 10:47:36'),
(108, 'Kendal', 'Hayden', '507', 'Cork', NULL, NULL, NULL, NULL, '2017-09-05 16:31:04', '2017-09-05 16:31:04'),
(109, 'Connor', 'Lin', '508', 'Riverchapel', NULL, NULL, NULL, NULL, '2017-09-06 20:01:15', '2017-09-06 20:01:15'),
(110, 'Timothy', 'Mcfarland', '509', 'Riverchapel', NULL, NULL, NULL, NULL, '2017-09-08 13:46:30', '2017-09-08 13:46:30'),
(111, 'Dennis', 'Blackburn', '510', 'Riverchapel', NULL, NULL, NULL, NULL, '2017-09-05 10:47:36', '2017-09-05 10:47:36'),
(112, 'Sanaa', 'Weber', '511', 'Cork', NULL, NULL, NULL, NULL, '2017-09-05 16:31:04', '2017-09-05 16:31:04'),
(113, 'Presley', 'Dickson', '512', 'Cork', NULL, NULL, NULL, NULL, '2017-09-06 20:01:15', '2017-09-06 20:01:15'),
(114, 'Emilio', 'Ali', '513', 'Cork', NULL, NULL, NULL, NULL, '2017-09-08 13:46:30', '2017-09-08 13:46:30'),
(115, 'Wyatt', 'Benjamin', '514', 'Cork', NULL, NULL, NULL, NULL, '2017-09-05 10:47:36', '2017-09-05 10:47:36'),
(116, 'Jensen', 'Lang', '515', 'Cork', NULL, NULL, NULL, NULL, '2017-09-05 16:31:04', '2017-09-05 16:31:04'),
(117, 'Valeria', 'Prince', '516', 'Cork', NULL, NULL, NULL, NULL, '2017-09-06 20:01:15', '2017-09-06 20:01:15'),
(118, 'Carmen', 'Reed', '517', 'Lucan', NULL, NULL, NULL, NULL, '2017-09-08 13:46:30', '2017-09-08 13:46:30'),
(119, 'Julie', 'Perkins', '518', 'Lucan', NULL, NULL, NULL, NULL, '2017-09-05 10:47:36', '2017-09-05 10:47:36'),
(120, 'Easton', 'Pruitt', '519', 'Dublin', NULL, NULL, NULL, NULL, '2017-09-05 16:31:04', '2017-09-05 16:31:04'),
(121, 'Isaias', 'Pena', '520', 'Lucan', NULL, NULL, NULL, NULL, '2017-09-06 20:01:15', '2017-09-06 20:01:15'),
(122, 'Kendall', 'Hendrix', '521', 'Blefast', NULL, NULL, NULL, NULL, '2017-09-08 13:46:30', '2017-09-08 13:46:30'),
(123, 'Zechariah', 'Bates', '522', 'Riverchapel', NULL, NULL, NULL, NULL, '2017-09-05 10:47:36', '2017-09-05 10:47:36'),
(124, 'Luna', 'Vaughan', '523', 'Riverchapel', NULL, NULL, NULL, NULL, '2017-09-05 16:31:04', '2017-09-05 16:31:04'),
(125, 'Tyler', 'Fisher', '524', 'Riverchapel', NULL, NULL, NULL, NULL, '2017-09-06 20:01:15', '2017-09-06 20:01:15'),
(126, 'Sergio', 'Carroll', '525', 'Riverchapel', NULL, NULL, NULL, NULL, '2017-09-08 13:46:30', '2017-09-08 13:46:30'),
(127, 'Amirah', 'Buchanan', '526', 'Blefast', NULL, NULL, NULL, NULL, '2017-09-05 10:47:36', '2017-09-05 10:47:36'),
(128, 'Darion', 'Kramer', '527', 'Blefast', NULL, NULL, NULL, NULL, '2017-09-05 16:31:04', '2017-09-05 16:31:04'),
(129, 'Ashly', 'Pennington', '528', 'Lucan', NULL, NULL, NULL, NULL, '2017-09-06 20:01:15', '2017-09-06 20:01:15'),
(130, 'Carlie', 'Gallagher', '529', 'Lucan', NULL, NULL, NULL, NULL, '2017-09-08 13:46:30', '2017-09-08 13:46:30'),
(131, 'Jaeden', 'Parks', '530', 'Lucan', NULL, NULL, NULL, NULL, '2017-09-05 10:47:36', '2017-09-05 10:47:36'),
(132, 'Angelique', 'Dorsey', '531', 'Lucan', NULL, NULL, NULL, NULL, '2017-09-05 16:31:04', '2017-09-05 16:31:04'),
(133, 'Jacquelyn', 'Mejia', '532', 'Lucan', NULL, NULL, NULL, NULL, '2017-09-06 20:01:15', '2017-09-06 20:01:15'),
(134, 'Michelle', 'Wilcox', '533', 'Lucan', NULL, NULL, NULL, NULL, '2017-09-08 13:46:30', '2017-09-08 13:46:30'),
(135, 'Izaiah', 'Lowe', '534', 'Lucan', NULL, NULL, NULL, NULL, '2017-09-05 10:47:36', '2017-09-05 10:47:36'),
(136, 'Gisselle', 'Clayton', '535', 'Lucan', NULL, NULL, NULL, NULL, '2017-09-05 16:31:04', '2017-09-05 16:31:04'),
(137, 'Camryn', 'Smith', '536', 'Lucan', NULL, NULL, NULL, NULL, '2017-09-06 20:01:15', '2017-09-06 20:01:15'),
(138, 'Alyssa', 'Frey', '537', 'Ratoath', NULL, NULL, NULL, NULL, '2017-09-08 13:46:30', '2017-09-08 13:46:30'),
(139, 'Leila', 'Russo', '538', 'Ratoath', NULL, NULL, NULL, NULL, '2017-09-05 10:47:36', '2017-09-05 10:47:36'),
(140, 'Ashton', 'Scott', '539', 'Ratoath', NULL, NULL, NULL, NULL, '2017-09-05 16:31:04', '2017-09-05 16:31:04'),
(141, 'Andrew', 'Burgess', '540', 'Lucan', NULL, NULL, NULL, NULL, '2017-09-06 20:01:15', '2017-09-06 20:01:15'),
(142, 'Journey', 'Trevino', '541', 'Lucan', NULL, NULL, NULL, NULL, '2017-09-08 13:46:30', '2017-09-08 13:46:30'),
(143, 'Ariel', 'Harrington', '542', 'Dublin', NULL, NULL, NULL, NULL, '2017-09-05 10:47:36', '2017-09-05 10:47:36'),
(144, 'Teagan', 'Wilkins', '543', 'Lucan', NULL, NULL, NULL, NULL, '2017-09-05 16:31:04', '2017-09-05 16:31:04'),
(145, 'Camilla', 'Mcintosh', '544', 'Blefast', NULL, NULL, NULL, NULL, '2017-09-06 20:01:15', '2017-09-06 20:01:15'),
(146, 'Meadow', 'Delacruz', '545', 'Cork', NULL, NULL, NULL, NULL, '2017-09-08 13:46:30', '2017-09-08 13:46:30'),
(147, 'Sterling', 'Compton', '546', 'Cork', NULL, NULL, NULL, NULL, '2017-09-05 10:47:36', '2017-09-05 10:47:36'),
(148, 'Jenny', 'Potter', '547', 'Cork', NULL, NULL, NULL, NULL, '2017-09-05 16:31:04', '2017-09-05 16:31:04'),
(149, 'Adrianna', 'Hall', '548', 'Cork', NULL, NULL, NULL, NULL, '2017-09-06 20:01:15', '2017-09-06 20:01:15'),
(150, 'Zackery', 'Sandoval', '549', 'Cork', NULL, NULL, NULL, NULL, '2017-09-08 13:46:30', '2017-09-08 13:46:30');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`), ADD KEY `categories_event_id_foreign` (`event_id`);

--
-- Indexes for table `category_rider`
--
ALTER TABLE `category_rider`
  ADD PRIMARY KEY (`category_id`,`rider_id`), ADD UNIQUE KEY `category_rider_id_unique` (`id`), ADD UNIQUE KEY `id` (`id`), ADD KEY `category_rider_rider_id_foreign` (`rider_id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `events_id_unique` (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `motos`
--
ALTER TABLE `motos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`), ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `riders`
--
ALTER TABLE `riders`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `riders_platenumber_unique` (`plateNumber`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT dla tabeli `category_rider`
--
ALTER TABLE `category_rider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT dla tabeli `events`
--
ALTER TABLE `events`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT dla tabeli `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT dla tabeli `motos`
--
ALTER TABLE `motos`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `riders`
--
ALTER TABLE `riders`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=151;
--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `categories`
--
ALTER TABLE `categories`
ADD CONSTRAINT `categories_event_id_foreign` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE;

--
-- Ograniczenia dla tabeli `category_rider`
--
ALTER TABLE `category_rider`
ADD CONSTRAINT `category_rider_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
ADD CONSTRAINT `category_rider_rider_id_foreign` FOREIGN KEY (`rider_id`) REFERENCES `riders` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
