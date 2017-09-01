-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Ven 01 Septembre 2017 à 15:14
-- Version du serveur :  10.1.13-MariaDB
-- Version de PHP :  5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `microcms`
--

-- --------------------------------------------------------

--
-- Structure de la table `t_article`
--

CREATE TABLE `t_article` (
  `art_id` int(11) NOT NULL,
  `art_title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `art_content` varchar(2000) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `t_article`
--

INSERT INTO `t_article` (`art_id`, `art_title`, `art_content`) VALUES
(1, 'First article', 'Hi there! This is the very first article.'),
(2, 'Lorem ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut hendrerit mauris ac porttitor accumsan. Nunc vitae pulvinar odio, auctor interdum dolor. Aenean sodales dui quis metus iaculis, hendrerit vulputate lorem vestibulum. Suspendisse pulvinar, purus at euismod semper, nulla orci pulvinar massa, ac placerat nisi urna eu tellus. Fusce dapibus rutrum diam et dictum. Sed tellus ipsum, ullamcorper at consectetur vitae, gravida vel sem. Vestibulum pellentesque tortor et elit posuere vulputate. Sed et volutpat nunc. Praesent nec accumsan nisi, in hendrerit nibh. In ipsum mi, fermentum et eleifend eget, eleifend vitae libero. Phasellus in magna tempor diam consequat posuere eu eget urna. Fusce varius nulla dolor, vel semper dui accumsan vitae. Sed eget risus neque.'),
(3, 'Lorem ipsum in french', 'J’en dis autant de ceux qui, par mollesse d’esprit, c’est-à-dire par la crainte de la peine et de la douleur, manquent aux devoirs de la vie. Et il est très facile de rendre raison de ce que j’avance. Car, lorsque nous sommes tout à fait libres, et que rien ne nous empêche de faire ce qui peut nous donner le plus de plaisir, nous pouvons nous livrer entièrement à la volupté et chasser toute sorte de douleur ; mais, dans les temps destinés aux devoirs de la société ou à la nécessité des affaires, souvent il faut faire divorce avec la volupté, et ne se point refuser à la peine. La règle que suit en cela un homme sage, c’est de renoncer à de légères voluptés pour en avoir de plus grandes, et de savoir supporter des douleurs légères pour en éviter de plus fâcheuses.'),
(4, 'je suis un article', 'zgefoapfanfkjabidhab ljaendkjabkjab aldnakjek aodnkj');

-- --------------------------------------------------------

--
-- Structure de la table `t_comment`
--

CREATE TABLE `t_comment` (
  `com_id` int(11) NOT NULL,
  `com_content` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `art_id` int(11) NOT NULL,
  `usr_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `t_comment`
--

INSERT INTO `t_comment` (`com_id`, `com_content`, `art_id`, `usr_id`) VALUES
(1, 'kdhgierhuginsiurnijrg', 3, 6);

-- --------------------------------------------------------

--
-- Structure de la table `t_experience`
--

CREATE TABLE `t_experience` (
  `xp_id` int(11) NOT NULL,
  `xp_contrat` varchar(255) NOT NULL,
  `xp_debut` date NOT NULL,
  `xp_fin` date NOT NULL,
  `xp_descriptif` varchar(300) NOT NULL,
  `xp_poste` varchar(255) NOT NULL,
  `xp_img` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `t_experience`
--

INSERT INTO `t_experience` (`xp_id`, `xp_contrat`, `xp_debut`, `xp_fin`, `xp_descriptif`, `xp_poste`, `xp_img`) VALUES
(1, 'CDD', '2017-02-20', '2017-12-20', '<h4>LePoleS : Grande Ecole du Numérique Pantin </h4>\r\n<ul>\r\n<li>Formation Web Force 3</li>\r\n<li>Javascript, Jquery</li>\r\n<li> PHP, SQL, AJAX</li>\r\n<li>Wordpress, Silex</li>\r\n</ul>', 'Développeur / Intégrateur Web', 'http://www.entreprenons-ensemble.fr/sites/www.entreprenons-ensemble.fr/files/logolepolessmall.png'),
(2, 'CDD', '2014-09-01', '2016-09-01', '<h4> GRDF (Gaz Réseaux De France) Ingénierie Pantin</h4>\r\n<ul>\r\n<li> Gestion de projets </li>\r\n<li> Relation clients/mairies/entreprise prestataires </li>\r\n<li> Gérer l’enveloppe Financière, commande matériel, devis entreprise </li>\r\n<li> Vérifier/superviser les travaux</li> Rédaction compte rendu.\r', 'Chargé d''affaire Ingénierie', 'http://geiqepi.fr/wp-content/uploads/2013/05/grdf.jpg'),
(3, 'CDI', '2016-00-00', '2016-00-00', '<h4>Uber - Ile de France</h4>\r\n<ul>\r\n<li> Relation client </li>\r\n</ul', 'Chauffeur VTC', 'https://d1a3f4spazzrp4.cloudfront.net/uber-com/1.3.0/d1a3f4spazzrp4.cloudfront.net/images/uber-serp-logo-f6e7549c89.jpg'),
(4, 'CDI', '2016-00-00', '2016-00-00', '<h4> Star''s Service - Ile de France </h4>\r\n<ul>\r\n<li>Relation client</li>\r\n<li>Autonomie</li>\r\n<li>Organisation</li>\r\n</ul>', 'Chauffeur Livreur', 'http://www.silver-economy-expo.com/wp-content/uploads/2014/10/GROUPE-STARS-SERVICES.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `t_loisirs`
--

CREATE TABLE `t_loisirs` (
  `loisir_id` int(11) NOT NULL,
  `loisir_nom` varchar(255) NOT NULL,
  `loisir_descriptif` varchar(3000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `t_loisirs`
--

INSERT INTO `t_loisirs` (`loisir_id`, `loisir_nom`, `loisir_descriptif`) VALUES
(1, 'luge', 'j''aime faire de la luge dans les descentes !!');

-- --------------------------------------------------------

--
-- Structure de la table `t_perso`
--

CREATE TABLE `t_perso` (
  `perso_id` int(11) NOT NULL,
  `perso_nom` varchar(255) NOT NULL,
  `perso_prenom` varchar(255) NOT NULL,
  `perso_poste` varchar(255) NOT NULL,
  `perso_img` varchar(300) NOT NULL,
  `perso_facebook` varchar(300) NOT NULL,
  `perso_github` varchar(300) NOT NULL,
  `perso_codepen` varchar(300) NOT NULL,
  `perso_tel` varchar(255) NOT NULL,
  `perso_adresse` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `t_perso`
--

INSERT INTO `t_perso` (`perso_id`, `perso_nom`, `perso_prenom`, `perso_poste`, `perso_img`, `perso_facebook`, `perso_github`, `perso_codepen`, `perso_tel`, `perso_adresse`) VALUES
(1, 'Bawaka', 'Shawn', 'Developpeur web', 'http://digitalspyuk.cdnds.net/12/44/768x993/gallery_movies_star_wars_bts_pics_13.jpg', 'https://www.facebook.com/profile.php?id=100008801719489', 'https://github.com/adricen', 'https://codepen.io/Adricen/', '05 16 48 16', '45 Rue du foutoire 45023 Creuzie');

-- --------------------------------------------------------

--
-- Structure de la table `t_portfolio`
--

CREATE TABLE `t_portfolio` (
  `port_id` int(11) NOT NULL,
  `port_name` varchar(255) NOT NULL,
  `port_lieu` varchar(255) NOT NULL,
  `port_descriptif` varchar(1000) NOT NULL,
  `port_date` date NOT NULL,
  `port_img` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `t_portfolio`
--

INSERT INTO `t_portfolio` (`port_id`, `port_name`, `port_lieu`, `port_descriptif`, `port_date`, `port_img`) VALUES
(2, 'Site CV', 'Paris', 'Site CV', '0000-00-00', 'images/siteCV.PNG'),
(4, 'Iphone', 'Paris', 'Travail Pratique SIte Apple', '0000-00-00', 'images/iphone.PNG'),
(6, 'Oh my cats', 'Paris', 'Travail Pratique Bootstrap', '0000-00-00', 'images/chat.PNG'),
(7, 'Location de villa', 'Paris', 'Exercice Pratique Bootstrap', '0000-00-00', 'images/villa.PNG'),
(8, 'Livraison de chicha', 'Paris', 'V1 pour Projet livraison de chicha sur Paris', '0000-00-00', 'images/chicha.PNG'),
(9, 'Boutique complète', 'Paris', 'Création site e-commerce Complet (Pas stylisé)', '0000-00-00', 'images/boutique.PNG'),
(10, 'Licorne', 'Paris', 'Exercice Web Force 3', '0000-00-00', 'images/licorne.PNG');

-- --------------------------------------------------------

--
-- Structure de la table `t_user`
--

CREATE TABLE `t_user` (
  `usr_id` int(11) NOT NULL,
  `usr_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `usr_password` varchar(88) COLLATE utf8_unicode_ci NOT NULL,
  `usr_salt` varchar(23) COLLATE utf8_unicode_ci NOT NULL,
  `usr_role` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `t_user`
--

INSERT INTO `t_user` (`usr_id`, `usr_name`, `usr_password`, `usr_salt`, `usr_role`) VALUES
(3, 'admin', '$2y$13$A8MQM2ZNOi99EW.ML7srhOJsCaybSbexAj/0yXrJs4gQ/2BqMMW2K', 'EDDsl&fBCJB|a5XUtAlnQN8', 'ROLE_ADMIN'),
(6, 'Adricen', '$2y$13$Jz8z9URQQhtMSrJxv.B/iOmudR.ILGk84DN4f31/5YwmDtUZ.Vgc.', '01643b5402b3f86883d75fb', 'ROLE_ADMIN'),
(7, 'Teva', '$2y$13$6zRKaE/EmMNUrSKafmsLr.g9RrDn7..n03oqsNeESBbEKEM9lEyga', 'c1f484695a224ecbf107a29', 'ROLE_ADMIN');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `t_article`
--
ALTER TABLE `t_article`
  ADD PRIMARY KEY (`art_id`);

--
-- Index pour la table `t_comment`
--
ALTER TABLE `t_comment`
  ADD PRIMARY KEY (`com_id`),
  ADD KEY `fk_com_art` (`art_id`),
  ADD KEY `fk_com_usr` (`usr_id`);

--
-- Index pour la table `t_experience`
--
ALTER TABLE `t_experience`
  ADD PRIMARY KEY (`xp_id`);

--
-- Index pour la table `t_loisirs`
--
ALTER TABLE `t_loisirs`
  ADD PRIMARY KEY (`loisir_id`);

--
-- Index pour la table `t_perso`
--
ALTER TABLE `t_perso`
  ADD PRIMARY KEY (`perso_id`);

--
-- Index pour la table `t_portfolio`
--
ALTER TABLE `t_portfolio`
  ADD PRIMARY KEY (`port_id`);

--
-- Index pour la table `t_user`
--
ALTER TABLE `t_user`
  ADD PRIMARY KEY (`usr_id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `t_article`
--
ALTER TABLE `t_article`
  MODIFY `art_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `t_comment`
--
ALTER TABLE `t_comment`
  MODIFY `com_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `t_experience`
--
ALTER TABLE `t_experience`
  MODIFY `xp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `t_loisirs`
--
ALTER TABLE `t_loisirs`
  MODIFY `loisir_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `t_perso`
--
ALTER TABLE `t_perso`
  MODIFY `perso_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `t_portfolio`
--
ALTER TABLE `t_portfolio`
  MODIFY `port_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT pour la table `t_user`
--
ALTER TABLE `t_user`
  MODIFY `usr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `t_comment`
--
ALTER TABLE `t_comment`
  ADD CONSTRAINT `fk_com_art` FOREIGN KEY (`art_id`) REFERENCES `t_article` (`art_id`),
  ADD CONSTRAINT `fk_com_usr` FOREIGN KEY (`usr_id`) REFERENCES `t_user` (`usr_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
