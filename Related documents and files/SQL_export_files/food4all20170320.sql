-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Erstellungszeit: 20. Mrz 2017 um 15:38
-- Server-Version: 10.1.19-MariaDB
-- PHP-Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `food4all`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `user`
--

CREATE TABLE `user` (
  `IDuser` int(10) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Password` varchar(30) NOT NULL,
  `Exp` int(20) NOT NULL,
  `Level` int(4) NOT NULL,
  `Rating` int(1) NOT NULL,
  `RatingCounter` int(5) NOT NULL,
  `TimeRegistration` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `user`
--

INSERT INTO `user` (`IDuser`, `Name`, `Email`, `Password`, `Exp`, `Level`, `Rating`, `RatingCounter`, `TimeRegistration`) VALUES
(1, 'Björn', 'bjoern.stark@students.fhnw.ch', 'password123', 5000, 10, 5, 1, '2017-03-02 00:00:00'),
(2, 'Hussein', 'hussein.farzi@students.fhnw.ch', 'password123', 5000, 10, 5, 1, '2017-03-02 00:00:00');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`IDuser`),
  ADD UNIQUE KEY `IDuser` (`IDuser`),
  ADD UNIQUE KEY `Name` (`Name`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
