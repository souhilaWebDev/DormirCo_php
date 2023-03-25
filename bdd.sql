-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : ven. 24 mars 2023 à 08:16
-- Version du serveur : 8.0.31
-- Version de PHP : 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `f2i`
--

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id_user` int NOT NULL AUTO_INCREMENT,
  `firstname` varchar(150) NOT NULL,
  `lastname` varchar(150) NOT NULL,
  `email` varchar(180) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `password` varchar(255) NOT NULL,
  `date_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_user`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id_user`, `firstname`, `lastname`, `email`, `phone`, `password`, `date_create`) VALUES
(1, 'Jean', 'Tit', 'jeanti@gouv.fr', '0771023973', '$argon2i$v=19$m=65536,t=4,p=1$TFNuaFl3anF3RHFxaGZLVQ$sMA76APm/prIw7cnCRkfN/g1HHI2arLd9c3huTDjOFo', '2023-03-22 11:00:31'),
(2, 'jeirfegoifjeziofjeziofjieziojfi', 'bgbn', 'fezdze0@fjkjk.com', '0711023973', '$argon2i$v=19$m=65536,t=4,p=1$LmwxTUY5aE9kMDhodnZ1NQ$nOrjjUWg2szUxraesHEtVsRj8Gj5v5loJrI3Ld62N6U', '2023-03-22 15:59:56'),
(3, 'jeirfegoifjeziofjeziofjieziojfi', 'bgbn', 'fezdjgtycyze0@fjkjk.com', '0711023973', '$argon2i$v=19$m=65536,t=4,p=1$aVRMNWJZdG90c204YlVBbw$mjI2/RXOMdznMdMasHh3jEhhYsWR2d9NSFbBcUUSCtg', '2023-03-22 16:00:45'),
(4, 'jeirfegoifjeziofjeziofjieziojfi', 'bgbn', 'fezdjgtycyze0@gmail.com', '0711023973', '$argon2i$v=19$m=65536,t=4,p=1$bTZELmVEWGRKUVNEdkl2NA$/PQTOqnmaJYQloEd+FEPtGpzG4fDrkrAmhN/w2DXPC4', '2023-03-22 16:01:19'),
(5, 'jeirfegoifjeziofjeziofjieziojfi', 'bgbn', 'fezdjgtnycyze0@gmail.com', '0711023973', '$argon2i$v=19$m=65536,t=4,p=1$dnJQQkhsejRvb2JqVFVYbA$PERNXz/mQ4V20Y6kMyBO+IvHRXsqYbgTRgfti4jnxoc', '2023-03-22 16:02:02'),
(6, 'jena', 'bhjh', 'nomprenom@de.de', '0711023973', '$argon2i$v=19$m=65536,t=4,p=1$VTJiLmg1OERvWWpnT21LaA$KM1DOcfG7z/c28IAYSbSW01rDkEdUY2f2t8uzOxPJhY', '2023-03-22 16:03:41'),
(7, 'jena', 'bhjh', 'nomprenohm@de.de', '0711023973', '$argon2i$v=19$m=65536,t=4,p=1$S1BnSWZ4bkozZXRtWkZBZQ$3rBdM2ozLdxhaeznTxRJuiCRm0TmSx9GMWiNIofDfcM', '2023-03-22 16:04:52'),
(8, 'jena', 'bhjh', 'nomprenpohm@de.de', '0711023973', '$argon2i$v=19$m=65536,t=4,p=1$MzgweDRZQ0M5UmJ5RDBFeQ$KZxXROfBeLVVIgvAs/GD6yXd4NWeR8uxDZNRfnZFUp0', '2023-03-22 16:05:30'),
(9, 'test', 'test', 'test@test.com', '0711023973', '$argon2i$v=19$m=65536,t=4,p=1$UVVxeFprVTdLR2p2LzNyUA$Ovr7nFA+ojOQRwGRaQT0fYxPpT0x+QvTOdrSbcCwqug', '2023-03-23 09:18:04');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
