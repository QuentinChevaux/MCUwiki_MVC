-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 10 mars 2022 à 16:04
-- Version du serveur : 10.4.21-MariaDB
-- Version de PHP : 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `mcuwiki`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `admin`
--

INSERT INTO `admin` (`id`) VALUES
(1);

-- --------------------------------------------------------

--
-- Structure de la table `favoris`
--

DROP TABLE IF EXISTS `favoris`;
CREATE TABLE `favoris` (
  `id_oeuvre` int(10) NOT NULL,
  `id_visiteur` int(10) NOT NULL,
  `oeuvre_favorite` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `film`
--

DROP TABLE IF EXISTS `film`;
CREATE TABLE `film` (
  `id` int(10) NOT NULL,
  `duree` varchar(255) NOT NULL,
  `streaming_platform` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `film`
--

INSERT INTO `film` (`id`, `duree`, `streaming_platform`) VALUES
(1, '126', ''),
(2, '112', ''),
(3, '125', 'disney'),
(4, '114', 'disney'),
(5, '124', 'disney'),
(6, '143', 'disney'),
(7, '149', 'disney'),
(8, '112', 'disney'),
(9, '136', 'disney'),
(10, '122', 'disney'),
(11, '141', 'disney'),
(12, '118', 'disney'),
(13, '148', 'disney'),
(14, '115', 'disney'),
(15, '137', 'disney'),
(16, '133', 'netflix'),
(17, '130', 'disney'),
(18, '135', 'disney'),
(19, '149', 'disney'),
(20, '118', 'disney'),
(21, '124', 'disney'),
(22, '182', ''),
(23, '130', ''),
(24, '133', ''),
(25, '132', ''),
(26, '157', ''),
(27, '148', '');

-- --------------------------------------------------------

--
-- Structure de la table `oeuvre`
--

DROP TABLE IF EXISTS `oeuvre`;
CREATE TABLE `oeuvre` (
  `id` int(10) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `date_fictive` date NOT NULL,
  `image` varchar(255) NOT NULL,
  `tmdb` varchar(255) NOT NULL,
  `streaming_link` varchar(255) NOT NULL,
  `id_admin` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `oeuvre`
--

INSERT INTO `oeuvre` (`id`, `titre`, `slug`, `description`, `date`, `date_fictive`, `image`, `tmdb`, `streaming_link`, `id_admin`) VALUES
(1, 'Iron Man', 'ironman', 'Alors qu\'il fait l\'essai d\'une arme de son invention en Afghanistan, le milliardaire Tony Stark est capturé par des insurgés qui le forcent à travailler pour eux. Mais à leur insu, le scientifique crée pour lui-même une armure superpuissante au moyen de l', '2008-03-30', '2010-01-01', 'ironman1.jpg', '1726', '', 0),
(2, 'L\'Incroyable Hulk', 'lincroyablehulk', 'Tapi dans les bas-fonds de Sao Paulo, Bruce Banner tente désespérément de percer le secret de la maladie qui l\'afflige. Repéré par l\'armée américaine, qui entend dupliquer le modèle pour en faire une arme guerrière, il leur file entre les doigts et rentre', '2008-07-23', '2005-01-01', 'incrediblehulk.jpg', '1724', '', 0),
(3, 'Iron Man 2', 'ironman2', 'Le monde sait désormais que l\'inventeur milliardaire Tony Stark et le super-héros Iron Man ne font qu\'un. Cependant, malgré les pressions, Tony n\'est pas disposé à divulguer les secrets de son armure, redoutant que l\'information atterrisse dans de mauvais', '2010-04-28', '2011-01-01', 'ironman2.jpg', '10138', 'https://www.disneyplus.com/movies/-/lXjCr9QmGGQJ', 0),
(4, 'Thor', 'thor', 'Le roi Odin règne avec sagesse sur son royaume. Une entente maintient la paix avec les Géants du monde glacé de Jotunheim. Les gestes irréfléchis du jeune Thor, pressenti pour prendre la place de son père sur le trône, mettent cependant en péril la paix f', '2011-04-27', '2010-01-02', 'thor.jpg', '10195', 'https://www.disneyplus.com/movies/-/1p4vdKzTuhzr', 0),
(5, 'Captain America', 'captainamerica', '1941. La Seconde Guerre mondiale fait rage. Après avoir tenté vainement de s\'engager dans l\'armée pour se battre aux côtés des Alliés, Steve Rogers, frêle et timide, se porte volontaire pour participer à un programme expérimental qui va le transformer en ', '2011-08-17', '1942-01-01', 'captainamerica1.jpg', '1771', 'https://www.disneyplus.com/movies/-/6xvB6xZ4r95O', 0),
(6, 'Avengers', 'avengers', 'Quand un ennemi inattendu fait surface pour menacer la sécurité et l\'équilibre mondial, Nick Fury, directeur de l\'agence internationale pour le maintien de la paix, connue sous le nom du S.H.I.E.L.D., doit former une équipe pour éviter une catastrophe mon', '2012-04-25', '2012-01-01', 'avengers1.jpg', '24428', 'https://www.disneyplus.com/movies/-/2h6PcHFDbsPy', 0),
(7, 'Iron Man 3', 'ironman3', 'Tony Stark, alias Iron Man, mène une vie confortable aux côtés de sa compagne, Pepper. Cependant, il se retrouve confronté à Mandarin, chef d\'une organisation terroriste, qui détruit sa maison et tout son univers. Tony Stark part alors à la recherche de P', '2013-04-24', '2012-01-03', 'ironman3.jpg', '68721', 'https://www.disneyplus.com/movies/-/3s4Ihq7P2c6e', 0),
(8, 'Thor : Le Monde Des Ténèbres', 'thorlemondedestenebres', 'Alors que sur Terre, l\'astrophysicienne Jane Foster, grand amour de Thor, trouve par hasard une substance mystérieuse, l\'Éther, que beaucoup croyaient perdue depuis longtemps, Thor part délivrer son frère adoptif, Loki, dans sa prison d\'Asgard, car il a b', '2013-10-30', '2013-01-01', 'thor2.jpg', '76338', 'https://www.disneyplus.com/movies/-/ZHk7aM5xTbW7', 0),
(9, 'Captain America : Le Soldat de L\'Hiver', 'captainamericalesoldatdelhiver', 'Steve Rogers, plus connu sous le nom de Captain America, s\'est adapté tant bien que mal à son nouvel environnement, et poursuit ses missions en tant qu\'agent du S.H.I.E.L.D., l\'agence militaire chargée d\'assurer l\'ordre international. Mais une organisatio', '2014-03-26', '2014-01-01', 'captainamerica2.jpg', '100402', 'https://www.disneyplus.com/movies/-/TVme5whcowSy', 0),
(10, 'Les Gardiens de La Galaxie', 'lesgardiensdelagalaxie', 'Peter Quill est un aventurier traqué par tous les chasseurs de primes pour avoir volé un mystérieux globe convoité par le puissant Ronan, dont les agissements menacent l\'univers tout entier. Lorsqu\'il découvre le véritable pouvoir de ce globe et la menace', '2014-08-13', '2014-01-02', 'guardianofthegalaxy1.jpg', '118340', 'https://www.disneyplus.com/movies/-/1S4WM9h3KRR6', 0),
(11, 'Avengers : L\'Ère D\'Ultron', 'avengersleredultron', 'Alors qu\'il tente de récupérer le sceptre de Loki avec l\'aide de ses camarades Avengers, Tony Stark découvre que Strucker avait mis au point une intelligence artificielle révolutionnaire, plus puissante encore que Jarvis. Strucker, mis hors d\'état de nuir', '2015-04-22', '2015-01-01', 'avengers2.jpg', '99861', 'https://www.disneyplus.com/movies/-/76IUxY0rNHzt', 0),
(12, 'Ant-Man', 'antman', 'Doté d\'une capacité étonnante, celle de rétrécir considérablement sa taille tout en multipliant sa force, Scott Lang, voleur professionnel, doit accepter le héros qui sommeille en lui afin de venir en aide à son mentor, le docteur Hank Pym, et ainsi proté', '2015-07-14', '2015-01-02', 'antman1.jpg', '102899', 'https://www.disneyplus.com/movies/-/5c92KVf1zgUX', 0),
(13, 'Captain America : Civil War', 'captainamericacivilwar', 'Steve Rogers est désormais à la tête des Avengers, dont la mission est de protéger l\'humanité. À la suite d\'une de leurs interventions qui a causé d\'importants dégâts collatéraux, le gouvernement décide de mettre en place un organisme de commandement et d', '2016-10-26', '2016-01-01', 'captainamerica3.jpg', '271110', 'https://www.disneyplus.com/movies/-/4ovfyKnnIBCg', 0),
(14, 'Doctor Strange', 'doctorstrange', 'Doctor Strange suit l\'histoire du Docteur Stephen Strange, talentueux neurochirurgien qui, après un tragique accident de voiture, doit mettre son égo de côté et apprendre les secrets d\'un monde caché de mysticisme et de dimensions alternatives. Basé à New', '2016-10-26', '2016-01-04', 'doctorstrange.jpg', '284052', 'https://www.disneyplus.com/movies/-/4GgMJ1aHKHA2', 0),
(15, 'Les Gardiens de La Galaxie Vol.2', 'lesgardiensdelagalaxievol2', 'Ce deuxième volet propose à nouveau les aventures de l\'équipe alors qu\'elle traverse les confins du cosmos. Les gardiens doivent combattre pour rester unis alors qu\'ils découvrent les mystères de la filiation de Peter Quill. Les vieux ennemis vont devenir', '2017-05-05', '2014-01-03', 'guardianofthegalaxy2.jpg', '283995', 'https://www.disneyplus.com/movies/-/ZdRX4mMbp1gM', 0),
(16, 'Spider Man : Homecoming', 'spidermanhomecoming', 'Après ses spectaculaires débuts avec les Avengers, le jeune Peter Parker découvre peu à peu sa nouvelle identité, celle de Spider-Man, le superhéros lanceur de toile. Galvanisé par ses expériences précédentes, Peter rentre chez lui auprès de sa tante May,', '2017-07-07', '2016-01-03', 'spiderman1.jpg', '315635', 'https://www.netflix.com/title/80166369/', 0),
(17, 'Thor : Ragnarok', 'thorragnarok', 'Privé de son puissant marteau, Thor est retenu prisonnier sur une lointaine planète aux confins de l\'univers. Pour sauver Asgard, il va devoir lutter contre le temps afin d\'empêcher l\'impitoyable Hela d\'accomplir le Ragnarök, ou la destruction de son mond', '2017-10-25', '2017-01-01', 'thor3.jpg', '284053', 'https://www.disneyplus.com/movies/-/3XqAT8UV8ojS', 0),
(18, 'Black Panther', 'blackpanther', 'Après les événements qui se sont déroulés dans Captain America : Civil War, T\'Challa revient chez lui prendre sa place sur le trône du Wakanda, une nation africaine technologiquement très avancée mais lorsqu\'un vieil ennemi resurgit, le courage de T\'Chall', '2018-02-16', '2016-01-02', 'blackpanther.jpg', '284054', 'https://www.disneyplus.com/movies/-/1GuXuYPj99Ke', 0),
(19, 'Avengers : Infinity War', 'avengersinfinitywar', 'Alors que les Avengers et leurs alliés ont continué de protéger le monde face à des menaces bien trop grandes pour être combattues par un héros seul, un nouveau danger est venu de l\'espace : Thanos. Despote craint dans tout l\'univers, Thanos a pour object', '2018-04-27', '2018-01-02', 'avengers3.jpg', '299536', 'https://www.disneyplus.com/movies/-/1WEuZ7H6y39v', 0),
(20, 'Ant-Man et la Guêpe', 'antmanetlaguepe', 'Après les événements survenus dans Captain America, Civil War, Scott Lang a bien du mal à concilier sa vie de super-héros et ses responsabilités de père. Cependant, ses réflexions sur les conséquences de ses choix tournent court lorsque Hope van Dyne et l', '2018-07-06', '2018-01-01', 'antman2.jpg', '363088', 'https://www.disneyplus.com/movies/-/5D7wkVHmlCKU', 0),
(21, 'Captain Marvel', 'captainmarvel', 'Captain Marvel se bat dans le camp des Kree aux côtés de son maître, Yon-Rogg. Des images d\'un passé qu\'elle a oublié refont surface lorsqu\'elle se fait enlever par les Skrulls, qui tentent d\'extirper certaines informations de son cerveau. Après une bagar', '2019-03-06', '1995-01-01', 'captainmarvel.jpg', '299537', 'https://www.disneyplus.com/movies/-/38xJGlLAQy9a', 0),
(22, 'Avengers : Endgame', 'avengersendgame', 'Le Titan Thanos, ayant réussi à s\'approprier les six Pierres d\'Infinité et à les réunir sur le Gantelet doré, a pu réaliser son objectif de pulvériser la moitié de la population de l\'Univers. Cinq ans plus tard, Scott Lang, alias Ant-Man, parvient à s\'éch', '2019-04-24', '2018-01-03', 'avengers4.jpg', '299534', '', 0),
(23, 'Spider Man : Far From Home', 'spidermanfarfromhome', 'L\'araignée sympa du quartier décide de rejoindre ses meilleurs amis Ned, MJ, et le reste de la bande pour des vacances en Europe. Cependant, le projet de Peter de laisser son costume de super-héros derrière lui pendant quelques semaines est rapidement com', '2019-06-26', '2023-01-01', 'spiderman2.jpg', '429617', '', 0),
(24, 'Black Widow', 'blackwidow', 'Lorsqu\'un complot dangereux en lien avec son passé ressurgit, Natasha Romanoff, alias Black Widow, doit y faire face. Tandis qu\'elle se fait poursuivre par une force qui ne s\'arrête devant rien, Natasha confronte des liens brisés ainsi que les conséquence', '2021-07-07', '2016-01-05', 'blackwidow.jpg', '497698', '', 0),
(25, 'Shang-Chi et la Légende des Dix Anneaux', 'shangchietlalegendedesdixanneaux', 'Shang-Chi est le fils du chef d\'une puissante organisation criminelle. Le garçon a été élevé dès son plus jeune âge pour devenir un guerrier, mais il a décidé d\'abandonner cette voie et de s\'enfuir pour vivre une vie paisible. Mais tout change lorsqu\'il e', '2021-09-01', '2023-01-06', 'shangchi.jpg', '566525', '', 0),
(26, 'Les Éternels', 'leseternels', 'Après les événements d\'\"Avengers : Endgame\", une tragédie imprévue oblige les Éternels à sortir de l\'ombre et à se rassembler à nouveau face à l\'ennemi le plus ancien de la race humaine : les Déviants.', '2021-11-03', '2023-01-07', 'eternals.jpg', '524434', '', 0),
(27, 'Spider Man : No Way Home', 'spidermannowayhome', 'Avec l\'identité de Spiderman désormais révélée, celui-ci est démasqué et n\'est plus en mesure de séparer sa vie normale en tant que Peter Parker des enjeux élevés d\'être un superhéros. Lorsque Peter demande de l\'aide au docteur Strange, les enjeux devienn', '2021-12-15', '2023-01-08', 'spiderman3.jpg', '634649', '', 0),
(28, 'Wanda Vision', 'wandavision', 'Wanda Maximoff, alias la Sorcière Rouge, et Vision sont des super-héros, qui coulent des jours paisibles dans une banlieue parfaite, jusqu\'au jour où Vision commence à soupçonner que tout n\'est peut-être pas ce qu\'il y paraît.', '2021-01-15', '2023-01-02', 'wandavision.jpg', '85271', 'https://www.disneyplus.com/series/-/4SrN28ZjDLwH', 0),
(29, 'Falcon et le Soldat de l\'hiver', 'falconetlesoldatdelhiver', 'Six mois après la fin des évènements liés à ThanosN 2,1, Bucky Barnes fait équipe avec Sam Wilson. Les deux hommes vont se lancer dans une aventure planétaire et vont devoir faire face aux Flag-Smashers.', '2021-03-19', '2023-01-03', 'falconwintersoldier.jpg', '88396', 'https://www.disneyplus.com/series/-/4gglDBMx8icA', 0),
(30, 'Loki', 'loki', 'Dans une réalité alternative, Loki s\'est échappé avec le Tesseract. Après son évasion, il est emmené auprès du Tribunal des Variations Anachroniques, un organisme qui agit pour arrêter toute personne qui tenterait d\'altérer l\'éternel flux temporel.', '2021-06-09', '2012-01-02', 'loki.jpg', '84958', 'https://www.disneyplus.com/series/-/6pARMvILBGzF', 0),
(31, 'What If...?', 'whatif', 'Une série d\'animation fascinante qui, en changeant des événements clés des films de l\'Univers cinématographique Marvel, ouvre une myriade de possibilités.', '2021-08-11', '2025-01-01', 'whatif.jpg', '91363', 'https://www.disneyplus.com/series/-/7672ZVj1ZxU9', 0),
(32, 'Hawkeye', 'hawkeye', 'Le super-héros Clint Barton et son successeur Kate Bishop combattent le mal. Cependant, lorsque les rôles sont soudainement inversés, ils doivent éviter à tout prix de devenir eux-mêmes des cibles.', '2021-11-24', '2024-01-01', 'hawkeye.jpg', '88329', 'https://www.disneyplus.com/series/-/11Zy8m9Dkj5l', 0);

-- --------------------------------------------------------

--
-- Structure de la table `personnage`
--

DROP TABLE IF EXISTS `personnage`;
CREATE TABLE `personnage` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `acteur` varchar(255) NOT NULL,
  `biographie` text NOT NULL,
  `id_admin` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `personnage_oeuvre`
--

DROP TABLE IF EXISTS `personnage_oeuvre`;
CREATE TABLE `personnage_oeuvre` (
  `id_oeuvre` int(10) NOT NULL,
  `id_personnage` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `serie`
--

DROP TABLE IF EXISTS `serie`;
CREATE TABLE `serie` (
  `id` int(10) NOT NULL,
  `nbepisode` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `serie`
--

INSERT INTO `serie` (`id`, `nbepisode`) VALUES
(28, '9'),
(29, '6'),
(30, '6'),
(31, '10'),
(32, '6');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(10) NOT NULL,
  `login` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `login`, `password`) VALUES
(1, 'quentin.chevaux@gmail.com', '$2y$10$xrLAXIWtjG9cCvge5QPgSONevokN3tO1.eGGwLQV8RwsYZhHjVH9e'),
(2, 'jean@gmail.com', '$2y$10$.sTE9lINxevWUGQTo1KO0.sBxJ4PGebqO5tS28gHWP.rCqDlCfFLu');

-- --------------------------------------------------------

--
-- Structure de la table `visiteur`
--

DROP TABLE IF EXISTS `visiteur`;
CREATE TABLE `visiteur` (
  `id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `vu`
--

DROP TABLE IF EXISTS `vu`;
CREATE TABLE `vu` (
  `id_oeuvre` int(10) NOT NULL,
  `id_marathon` int(10) NOT NULL,
  `oeuvres_vues` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `oeuvre`
--
ALTER TABLE `oeuvre`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `personnage`
--
ALTER TABLE `personnage`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `personnage_oeuvre`
--
ALTER TABLE `personnage_oeuvre`
  ADD PRIMARY KEY (`id_oeuvre`,`id_personnage`),
  ADD KEY `personnage_oeuvre_ibfk_2` (`id_personnage`);

--
-- Index pour la table `serie`
--
ALTER TABLE `serie`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `visiteur`
--
ALTER TABLE `visiteur`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `oeuvre`
--
ALTER TABLE `oeuvre`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT pour la table `personnage`
--
ALTER TABLE `personnage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `visiteur`
--
ALTER TABLE `visiteur`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
