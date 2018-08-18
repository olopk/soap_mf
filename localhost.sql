-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Czas generowania: 18 Sie 2018, 11:50
-- Wersja serwera: 10.1.28-MariaDB
-- Wersja PHP: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `aplikacja`
--
CREATE DATABASE IF NOT EXISTS `aplikacja` DEFAULT CHARACTER SET utf8 COLLATE utf8_polish_ci;
USE `aplikacja`;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `db_credentials`
--

CREATE TABLE `db_credentials` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbdriver` varchar(10) COLLATE utf8_polish_ci NOT NULL,
  `servername` varchar(10) COLLATE utf8_polish_ci NOT NULL,
  `dblogin` varchar(10) COLLATE utf8_polish_ci NOT NULL,
  `dbpass` varchar(10) COLLATE utf8_polish_ci NOT NULL,
  `dbname` varchar(10) COLLATE utf8_polish_ci NOT NULL,
  `tbname` varchar(10) COLLATE utf8_polish_ci NOT NULL,
  `col_nip` varchar(10) COLLATE utf8_polish_ci NOT NULL,
  `col_kon` varchar(10) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `db_credentials`
--

INSERT INTO `db_credentials` (`id`, `dbdriver`, `servername`, `dblogin`, `dbpass`, `dbname`, `tbname`, `col_nip`, `col_kon`) VALUES
(6, 'mysql', 'localhost', 'root', '', 'subiekt', 'kontrahenc', 'nip', 'nazwa');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `kontrahent_status`
--

CREATE TABLE `kontrahent_status` (
  `id` int(10) UNSIGNED NOT NULL,
  `nazwa` varchar(50) COLLATE utf8_polish_ci NOT NULL,
  `nip` bigint(10) NOT NULL,
  `kod` varchar(5) COLLATE utf8_polish_ci NOT NULL,
  `komunikat` varchar(100) COLLATE utf8_polish_ci NOT NULL,
  `data_utworzenia` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `data_aktualizacji` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `login` varchar(20) COLLATE utf8_polish_ci NOT NULL,
  `password` varchar(20) COLLATE utf8_polish_ci NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`id`, `login`, `password`, `create_time`, `update_time`) VALUES
(1, 'Olek', 'Olek', '2018-08-03 11:01:20', '2018-08-03 11:01:20'),
(2, 'Marek', 'Petarek', '2018-08-04 09:41:39', '2018-08-04 09:41:39');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `db_credentials`
--
ALTER TABLE `db_credentials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kontrahent_status`
--
ALTER TABLE `kontrahent_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `db_credentials`
--
ALTER TABLE `db_credentials`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT dla tabeli `kontrahent_status`
--
ALTER TABLE `kontrahent_status`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Baza danych: `subiekt`
--
CREATE DATABASE IF NOT EXISTS `subiekt` DEFAULT CHARACTER SET utf8 COLLATE utf8_polish_ci;
USE `subiekt`;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `kontrahenci`
--

CREATE TABLE `kontrahenci` (
  `id` int(10) UNSIGNED NOT NULL,
  `nazwa` varchar(50) COLLATE utf8_polish_ci NOT NULL,
  `nip` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `kontrahenci`
--

INSERT INTO `kontrahenci` (`id`, `nazwa`, `nip`) VALUES
(1, 'OpenIT', 8431614194),
(2, 'Firma Krzak', 843000000),
(3, 'Przedsiebiorstwo komunalne', 8430003548),
(4, 'Test', 999111666),
(5, 'Costam ktostam', 222444555);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `kontrahenci`
--
ALTER TABLE `kontrahenci`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `kontrahenci`
--
ALTER TABLE `kontrahenci`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
