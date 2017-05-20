-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Erstellungszeit: 10. Mai 2017 um 09:38
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
-- Tabellenstruktur für Tabelle `address`
--

CREATE TABLE `address` (
  `IDAddress` int(10) NOT NULL,
  `IDUser` int(10) NOT NULL,
  `IDCity` int(10) NOT NULL,
  `Street` varchar(30) NOT NULL,
  `HouseNr` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `address`
--

INSERT INTO `address` (`IDAddress`, `IDUser`, `IDCity`, `Street`, `HouseNr`) VALUES
(1, 1, 1, 'Teststrasse', 123);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `advertisement`
--

CREATE TABLE `advertisement` (
  `IDAdvr` int(10) NOT NULL,
  `IDUser` int(10) NOT NULL,
  `IDAddr` int(10) NOT NULL,
  `IDResv` int(10) NOT NULL,
  `IDCity` int(11) NOT NULL,
  `NameCat` varchar(30) NOT NULL,
  `NameFood` varchar(20) NOT NULL,
  `Description` varchar(150) NOT NULL DEFAULT '',
  `TimeCreation` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `TimeExpiry` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `TimePickup` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `StatusResv` tinyint(1) NOT NULL DEFAULT '0',
  `StatusPickup` tinyint(1) NOT NULL DEFAULT '0',
  `ImageUrl` varchar(200) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `advertisement`
--

INSERT INTO `advertisement` (`IDAdvr`, `IDUser`, `IDAddr`, `IDResv`, `IDCity`, `NameCat`, `NameFood`, `Description`, `TimeCreation`, `TimeExpiry`, `TimePickup`, `StatusResv`, `StatusPickup`, `ImageUrl`) VALUES
(1, 1, 1, 1, 0, 'Kuchen', 'Apfelkuchen', '', '2017-02-28 23:00:00', '2017-03-01 23:00:00', '2017-03-01 23:00:00', 0, 0, '');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `category`
--

CREATE TABLE `category` (
  `NameCat` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `category`
--

INSERT INTO `category` (`NameCat`) VALUES
('Kuchen');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `citycountry`
--

CREATE TABLE `citycountry` (
  `IDCity` int(10) NOT NULL,
  `PostCode` smallint(6) NOT NULL,
  `City` varchar(20) NOT NULL,
  `Country` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `citycountry`
--

INSERT INTO `citycountry` (`IDCity`, `PostCode`, `City`, `Country`) VALUES
(1, 1234, 'Entenhausen', 'Schweiz');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `reservation`
--

CREATE TABLE `reservation` (
  `IDResv` int(10) NOT NULL,
  `IDUser` int(10) NOT NULL,
  `TimeResv` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `reservation`
--

INSERT INTO `reservation` (`IDResv`, `IDUser`, `TimeResv`) VALUES
(1, 1, '2017-03-02 00:00:00');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `user`
--

CREATE TABLE `user` (
  `IDuser` int(10) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Email` varchar(40) NOT NULL,
  `Password` varchar(30) NOT NULL,
  `Exp` int(20) NOT NULL DEFAULT '0',
  `Level` int(4) NOT NULL DEFAULT '1',
  `Rating` int(1) NOT NULL DEFAULT '0',
  `RatingCounter` int(5) NOT NULL DEFAULT '0',
  `TimeRegistration` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `user`
--

INSERT INTO `user` (`IDuser`, `Name`, `Email`, `Password`, `Exp`, `Level`, `Rating`, `RatingCounter`, `TimeRegistration`) VALUES
(1, 'Björn', 'bjoern.stark@students.fhnw.ch', 'password123', 5000, 10, 5, 1, '2017-03-01 23:00:00'),
(2, 'Hussein', 'hussein.farzi@students.fhnw.ch', 'password123', 5000, 10, 5, 1, '2017-03-01 23:00:00'),
(3, 'test', 'test@test.test', 'test', 123, 123, 1, 123, '2017-03-19 23:00:00'),
(4, 'asdf', 'qwerqweasfd', 'testPasqwfoqsword', 0, 0, 0, 0, '0000-00-00 00:00:00');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`IDAddress`),
  ADD UNIQUE KEY `IDAddress` (`IDAddress`);

--
-- Indizes für die Tabelle `advertisement`
--
ALTER TABLE `advertisement`
  ADD PRIMARY KEY (`IDAdvr`),
  ADD UNIQUE KEY `IDAdvr` (`IDAdvr`);

--
-- Indizes für die Tabelle `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`NameCat`),
  ADD UNIQUE KEY `NameCat` (`NameCat`);

--
-- Indizes für die Tabelle `citycountry`
--
ALTER TABLE `citycountry`
  ADD PRIMARY KEY (`IDCity`),
  ADD UNIQUE KEY `IDCity` (`IDCity`);

--
-- Indizes für die Tabelle `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`IDResv`),
  ADD UNIQUE KEY `IDResv` (`IDResv`);

--
-- Indizes für die Tabelle `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`IDuser`),
  ADD UNIQUE KEY `IDuser` (`IDuser`),
  ADD UNIQUE KEY `Name` (`Name`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `address`
--
ALTER TABLE `address`
  MODIFY `IDAddress` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT für Tabelle `advertisement`
--
ALTER TABLE `advertisement`
  MODIFY `IDAdvr` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT für Tabelle `citycountry`
--
ALTER TABLE `citycountry`
  MODIFY `IDCity` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT für Tabelle `reservation`
--
ALTER TABLE `reservation`
  MODIFY `IDResv` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT für Tabelle `user`
--
ALTER TABLE `user`
  MODIFY `IDuser` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
