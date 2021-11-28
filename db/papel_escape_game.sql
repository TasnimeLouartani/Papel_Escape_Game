-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le : dim. 28 nov. 2021 à 19:41
-- Version du serveur : 5.7.34
-- Version de PHP : 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `papel_escape_game`
--

-- --------------------------------------------------------

--
-- Structure de la table `hall_of_fame`
--

CREATE TABLE `hall_of_fame` (
  `pseudo` text NOT NULL,
  `score` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `hall_of_fame`
--

INSERT INTO `hall_of_fame` (`pseudo`, `score`) VALUES
('El Professor ', '00:02:56'),
('Tokyo ', '00:04:20'),
('Rio ', '00:05:12'),
('Denver ', '00:07:43'),
('Nairobi ', '00:13:26');

-- --------------------------------------------------------

--
-- Structure de la table `objets`
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
-- Déchargement des données de la table `objets`
--

INSERT INTO `objets` (`id`, `nom`, `Image`, `coord_x`, `coord_y`, `Message`, `zoom`, `id_obj_suivant`) VALUES
(1, 'Clef', '../img/cle.png', 40.42132482232315, -3.6729552925321034, 'Cher criminel, tu viens d’échapper à la police en sortant de la banque d\'Espagne, maintenant il est temps de retrouver tes camarades de classe chez El Professor.\nCeci est une clé multi-usage en la possédant dans ta liste d’objets elle va te permettre de te débloquer plusieurs fois :) Tu te demandes sûrement quoi faire maintenant, en effet à chaque fois que tu cliques sur un objet, tu débloqueras un autre et des indices de la localisation de ton prochain objet se retrouveront dans chaque message. Bon maintenant que t’as compris le principe du jeu une voiture te permettra peut-être d’avancer plus vite, non? ;)', 8, 2),
(2, 'Voiture', '../img/voiture.png', 40.423793481989186, -3.6723008353554047, 'Très bien Criminel, t’as compris le principe. Mais cette fois-ci je me trouve sur la côte Est espagnole, je suis une petite ville touristique.\nOn va t\'aider un peu plus, si tu suis l\'A3 en direction de Valence puis l\'A7 vers la côte.\n', 8, 3),
(3, 'Port de castello', '../img/port.jpg', 39.99745325512647, -0.04668982925237047, 'La photo représente le port de Castellon. Celui-ci est situé dans la zone de Grao Castellón, à quatre kilomètres du centre-ville de la ville. ', 8, 4),
(4, 'Bateau', '../img/bateau.png', 39.97759262429098, 0.016363542033075645, 'Voici ton nouveau moyen pour t\'échapper :)', 8, 5),
(5, 'Carte1', '../img/carte_1.jpg', 35.77380612534269, -5.769762097272521, 'Le premier indice sur ta destination finale est tombée. As-tu une petite idée d\'où cela peut être? D\'ailleurs t\'aimerais visiter la Turquie? Si, oui un passeport t\'attend pas loin. Ce pays est un pays transcontinental situé aux confins de l\'Asie et de l\'Europe.', 8, 6),
(6, 'Passeport', '../img/passeport.png', 35.726652867035554, -5.912931163503, 'Grâce à ce passeport, tu vas pouvoir voyager un peu moins dans l\'illégalité ;) El Professor a bien protégé tes arrières.', 8, 7),
(7, 'Avion', '../img/avion2.png', 35.730258641658125, -5.925848681779893, 'C\'est parti! Direction la Turquie.', 8, 8),
(8, 'Carte2', '../img/carte_2.png', 36.24208385304166, 30.4709, 'Voici le deuxieme indice sur ta destination finale... Maintenant, trouve le jetski !', 8, 9),
(9, 'Jetski', '../img/jetski.png', 36.238997069318096, 30.471318130198288, 'Rends toi au bout de l\'île Suluada !', 8, 10),
(10, 'ile Suluada', '../img/ile.jpg', 36.231603788685085, 30.478353109519265, 'Il y a une carte sur cette île !', 8, 11),
(11, 'Carte3', '../img/carte_3.png', 36.23400005832687, 30.47572718194225, 'Ceci est le troisième indice... Alors, toujours pas d\'idées ? En attendant, penses peut-être à prendre l\'hélicoptère ?', 8, 12),
(12, 'helicoptere', '../img/helico.png', 36.23628928305185, 30.47357869574287, 'C\'est plus petit qu\'un avion mais tellement plus rapide qu\'une voiture, n\'est-ce pas? Allons-y:)', 8, 13),
(13, 'aide', '../img/aide.png', 36.33439420158612, 30.440403883323985, 'On sait bien qu\'Arturo était détesté dans votre équipe. Mais cette fois-ci, il vient t\'aider pour le dernier indice. Il se trouve pas loin, que dis-tu de chercher un peu?', 8, 14),
(14, 'Dernière Carte', '../img/carte_1.jpg', 36.30725469606914, 30.462200337771243, 'Bien joué Criminel! T\'as géré mi amigo :)', 8, NULL);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `objets`
--
ALTER TABLE `objets`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
