-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 28, 2021 at 10:12 AM
-- Server version: 5.7.24
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `papel_escape_game`
--

-- --------------------------------------------------------

--
-- Table structure for table `hall_of_fame`
--

CREATE TABLE `hall_of_fame` (
  `pseudo` text NOT NULL,
  `score` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hall_of_fame`
--

INSERT INTO `hall_of_fame` (`pseudo`, `score`) VALUES
('El Professor ', '00:02:56'),
('Tokyo ', '00:04:20'),
('Rio ', '00:05:12'),
('Denver ', '00:07:43'),
('Nairobi ', '00:13:26');

-- --------------------------------------------------------

--
-- Table structure for table `objets`
--

CREATE TABLE `objets` (
  `id` int(11) NOT NULL,
  `nom` text NOT NULL,
  `Image` text NOT NULL,
  `coord_x` double NOT NULL,
  `coord_y` double NOT NULL,
  `Message` text NOT NULL,
  `zoom` int(11) NOT NULL,
  `id_obj_suivant` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `objets`
--

INSERT INTO `objets` (`id`, `nom`, `Image`, `coord_x`, `coord_y`, `Message`, `zoom`, `id_obj_suivant`) VALUES
(1, 'Clef', '../img/cle.png', 40.42132482232315, -3.6729552925321034, 'Garde la bien précieusement, tu pourras prendre la voiture pour t\'enfuir plus rapidement !', 8, 2),
(2, 'Voiture', '../img/voiture.png', 40.423793481989186, -3.6723008353554047, 'Afin de rejoindre tes amis, suis l\'A3 en direction de Valence puis prends l\'A7 vers une commune au nord de cette ville...', 8, 3),
(3, 'Port de castello', '../img/port.jpg', 39.99745325512647, -0.04668982925237047, 'Voici le port de Castello, il faut que tu te diriges vers le bateau...', 8, 4),
(4, 'Bateau', '../img/bateau.png', 39.97759262429098, 0.016363542033075645, 'GO !', 8, 5),
(5, 'Carte1', '../img/carte_1.jpg', 35.77380612534269, -5.769762097272521, 'Voici le premier indice sur ta destination finale... Essaie de trouver le passeport maintenant !', 8, 6),
(6, 'Passeport', '../img/passeport.png', 35.726652867035554, -5.912931163503, 'Grâce à ce passeport, tu vas pouvoir voyager un peu moins dans l\'illégalité', 8, 7),
(7, 'Avion', '../img/avion2.png', 35.730258641658125, -5.925848681779893, 'Hop là !', 8, 8),
(8, 'Carte2', '../img/carte_2.png', 36.24208385304166, 30.4709, 'Voici le deuxieme indice sur ta destination finale... Maintenant, trouve le jetski !', 8, 9),
(9, 'Jetski', '../img/jetski.png', 36.238997069318096, 30.471318130198288, 'Rends toi au bout de l\'île Suluada !', 8, 10),
(10, 'ile Suluada', '../img/ile.jpg', 36.231603788685085, 30.478353109519265, 'Il y a une carte sur cette île !', 8, 11),
(11, 'Carte3', '../img/carte_3.png', 36.23400005832687, 30.47572718194225, 'Ceci est le troisieme indice... Alors, toujours pas d idees ? En attendant, prends l\'hélicoptère !', 8, 12),
(12, 'helicoptere', '../img/helico.png', 36.23628928305185, 30.47357869574287, 'C\'est plus rapide !', 8, 13),
(13, 'aide', '../img/aide.png', 36.33439420158612, 30.440403883323985, 'Le dernier indice se trouve pas loin, cherche bien....', 8, 14),
(14, 'Dernière Carte', '../img/carte_1.jpg', 36.30725469606914, 30.462200337771243, 'Dernier indice !', 8, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `objets`
--
ALTER TABLE `objets`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
