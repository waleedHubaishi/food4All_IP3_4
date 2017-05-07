-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Erstellungszeit: 27. Feb 2017 um 16:11
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

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `advertisement`
--

CREATE TABLE `advertisement` (
  `IDAdvr` int(10) NOT NULL,
  `IDUser` int(10) NOT NULL,
  `IDAddr` int(10) NOT NULL,
  `IDResv` int(10) NOT NULL,
  `IDCity` int(10) NOT NULL,
  `TimeCreation` datetime NOT NULL,
  `TimeExpiry` datetime NOT NULL,
  `TimePickup` datetime NOT NULL,
  `StatusResv` tinyint(1) NOT NULL DEFAULT '0',
  `StatusPickup` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `category`
--

CREATE TABLE `category` (
  `IDCat` int(10) NOT NULL,
  `NameCat` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `food`
--

CREATE TABLE `food` (
  `IDFood` int(10) NOT NULL,
  `IDAdv` int(10) NOT NULL,
  `IDUser` int(10) NOT NULL,
  `IDAddr` int(10) NOT NULL,
  `IDResv` int(10) NOT NULL,
  `IDCity` int(10) NOT NULL,
  `NameFood` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `foodcategory`
--

CREATE TABLE `foodcategory` (
  `IDFood` int(10) NOT NULL,
  `IDAdvr` int(10) NOT NULL,
  `IDUser` int(10) NOT NULL,
  `IDAddr` int(10) NOT NULL,
  `IDCat` int(10) NOT NULL,
  `IDResv` int(10) NOT NULL,
  `IDCity` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `reservation`
--

CREATE TABLE `reservation` (
  `IDResv` int(10) NOT NULL,
  `IDUser` int(10) NOT NULL,
  `TimeResv` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `user`
--

CREATE TABLE `user` (
  `IDuser` int(10) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Exp` int(20) NOT NULL,
  `Level` int(4) NOT NULL,
  `Rating` int(1) NOT NULL,
  `RatingCounter` int(5) NOT NULL,
  `TimeRegistration` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  ADD PRIMARY KEY (`IDCat`),
  ADD UNIQUE KEY `IDCat` (`IDCat`);

--
-- Indizes für die Tabelle `citycountry`
--
ALTER TABLE `citycountry`
  ADD PRIMARY KEY (`IDCity`),
  ADD UNIQUE KEY `IDCity` (`IDCity`);

--
-- Indizes für die Tabelle `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`IDFood`),
  ADD UNIQUE KEY `IDFood` (`IDFood`);

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

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
