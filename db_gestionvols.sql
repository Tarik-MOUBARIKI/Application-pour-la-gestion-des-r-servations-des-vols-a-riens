-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  sam. 16 mai 2020 à 18:40
-- Version du serveur :  10.4.10-MariaDB
-- Version de PHP :  7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `db_gestionvols`
--

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

DROP TABLE IF EXISTS `client`;
CREATE TABLE IF NOT EXISTS `client` (
  `idClient` int(11) NOT NULL AUTO_INCREMENT,
  `Nom` varchar(200) NOT NULL,
  `Prenom` varchar(200) NOT NULL,
  `Email` varchar(200) NOT NULL,
 
  PRIMARY KEY (`idClient`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`idClient`, `Nom`, `Prenom`, `Email`) VALUES
(1, 'moubariki', 'tarik', 'moubariki.tarik@gmail.com');

-- --------------------------------------------------------

--
-- Structure de la table `reservation`
--

DROP TABLE IF EXISTS `reservation`;
CREATE TABLE IF NOT EXISTS `reservation` (
  `idreservation` int(11) NOT NULL AUTO_INCREMENT,
  `idClient` int(11) NOT NULL,
  `idVol` int(11) NOT NULL,
  `date_reseravtion` datetime NOT NULL,
  PRIMARY KEY (`idreservation`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `reservation`
--

INSERT INTO `reservation` (`idreservation`, `idClient`, `idVol`, `date_reseravtion`) VALUES
(1, 1, 3, '2020-03-06 08:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `vols`
--

DROP TABLE IF EXISTS `vols`;
CREATE TABLE IF NOT EXISTS `vols` (
  `idVol` int(11) NOT NULL AUTO_INCREMENT,
  `depart` varchar(200) NOT NULL,
  `destination` varchar(200) NOT NULL,
  `date_depart` date NOT NULL,
  `time` time NOT NULL,
  `prix` float NOT NULL,
  `place_disponible` int(11) NOT NULL,
  PRIMARY KEY (`idVol`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `vols`
--

INSERT INTO `vols` (`idVol`, `depart`, `destination`, `date_depart`, `time`, `prix`, `place_disponible`) VALUES
(1, 'Safi', 'Casablanca', '2020-05-10', '12:00:00', 100, 10),
(2, 'Agadir', 'Fes', '2020-05-12', '00:00:00', 200, 20),
(3, 'Fes', 'Marrakech', '2020-06-11', '18:00:00', 300, 0);


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
