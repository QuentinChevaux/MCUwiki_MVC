-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 23 mars 2022 à 14:21
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
(27, '148', ''),
(33, '120', '');

-- --------------------------------------------------------

--
-- Structure de la table `lexique`
--

DROP TABLE IF EXISTS `lexique`;
CREATE TABLE `lexique` (
  `id` int(10) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `definition` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `lexique`
--

INSERT INTO `lexique` (`id`, `titre`, `definition`) VALUES
(1, 'Chambre Rouge', 'Base d’espionnage soviétique où plusieurs Veuves noires et Gardes rouges ont été entraînés.'),
(4, 'Multivers', 'Un ensemble d’univers et de dimensions alternatif qui sont reliés les uns aux autres par certains liens, dotée d’une nature similaire et d’une hiérarchie universelle identique (Eternité, Infini et les Gardiens).'),
(5, 'Nexus', 'Un point d’une dimension à travers lequel il est possible d’accéder à d’autres dimensions ou d’autres périodes chronologiques d’une manière plus simple qu’en d’autres points de cette même dimension.'),
(7, 'Rayons Gamma', 'Des radiations électromagnétiques d’énergie élevée qui, en doses importantes, sont fatales à la plupart des individus.');

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
(5, 'Captain America : First Avenger', 'captainamerica', '1941. La Seconde Guerre mondiale fait rage. Après avoir tenté vainement de s\'engager dans l\'armée pour se battre aux côtés des Alliés, Steve Rogers, frêle et timide, se porte volontaire pour participer à un programme expérimental qui va le transformer en ', '2011-08-17', '1942-01-01', 'captainamerica1.jpg', '1771', 'https://www.disneyplus.com/movies/-/6xvB6xZ4r95O', 0),
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
(26, 'Les Éternels', 'leseternels', 'Après les événements d\'Avengers : Endgame, une tragédie imprévue oblige les Éternels à sortir de l\'ombre et à se rassembler à nouveau face à l\'ennemi le plus ancien de la race humaine : les Déviants.', '2021-11-03', '2023-01-07', 'eternals.jpg', '524434', '', 0),
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
  `image_personnage` varchar(255) NOT NULL,
  `id_admin` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `personnage`
--

INSERT INTO `personnage` (`id`, `nom`, `acteur`, `biographie`, `image_personnage`, `id_admin`) VALUES
(1, 'Iron Man', 'Robert Downey Jr.', 'Anthony Edward « Tony » Stark était un génie excentrique, milliardaire, playboy et philanthrope, ainsi que l\'ancien PDG de Stark Industries. Utilisant sa propre richesse et sa connaissance technique exceptionnelle, Stark joussait d\'une vie de playboy durant des années aux côtés de son ami militaire James Rhodes jusqu\'à ce qu\'il ne soit capturé par les Dix Anneaux. Sa vie étant en danger, Stark créa une armure blindée qu\'il utilisa pour échapper à ses ravisseurs, retourner chez lui et devenir le super-héros en armure connu sous le nom d\'Iron Man, affrontant les terroristes ainsi que son ancien partenaire commercial Obadiah Stane. Stark apprécia la renommée de sa nouvelle identité secrète et décida de la partager au monde entier, déclarant publiquement qu\'il était Iron Man.', 'ironman.png', 0),
(2, 'Hulk', 'Mark Ruffalo', 'Le Docteur Robert Bruce Banner est un scientifique de renom et un membre fondateur des Avengers. En tant que chercheur hautement respecté pour ses travaux dans la biochimie, les physiques nucléaires et les radiations gamma, il fut commissionné par Thaddeus Ross pour recréer le sérum de Super-Soldat qui avait créé Captain America, bien que Ross maintenait Banner à l\'écart de la vérité sur ce qu\'il devait créer. Toutefois, lorsqu\'une exposition à de hauts niveaux de radiations gamma au lieu de radiations vita se passa mal, Banner découvrit que lorsqu\'il était enragé, provoqué ou excité, il se transformait en une créature massive, remplie de colère et presque sans esprit nommée Hulk.', 'hulk.png', 0),
(3, 'Bucky Barnes', 'Sebastian Stan', 'Le Sergent James Buchanan « Bucky » Barnes est un vétéran de la Seconde Guerre mondiale, un ancien soldat du 107ème Régiment d\'Infanterie et le meilleur ami de Steve Rogers depuis l\'enfance. Barnes fut mobilisé et assigné au 107ème en 1943. Son régiment fut capturé par HYDRA et Barnes subit des expériences menées par Arnim Zola. Barnes, aux côtés de ceux qui restaient encore de son régiment, furent plus tard secourus par Rogers, qui était devenu Captain America en l\'absence de Barnes. Rassemblant leurs forces pour continuer à combattre, Barnes et Rogers formèrent les Commandos Hurlants pour affronter les forces du Crâne Rouge. Toutefois, durant une tentative pour enfin capturer Zola dans les Alpes autrichiennes, Barnes fut prit dans une embuscade et fit une chute d\'une centaine de mètres du train. Aucun corps n\'ayant été retrouvé, Barnes fut présumé décédé.', 'buckybarnes.png', 0),
(4, 'Clint Barton', 'Jeremy Renner', 'Clinton Francis « Clint » Barton, plus connu comme Hawkeye, est un tireur d\'élite, un ancien agent spécial du S.H.I.E.L.D. et un des membres fondateur des Avengers. Connu pour son utilisation d\'un arc et de flèches, Barton devint l\'un des meilleurs agents du S.H.I.E.L.D., responsable du recrutement de Black Widow, avec qui il développa une très forte amitié. Assigné par Nick Fury pour surveiller le Tesseract, il tomba sous l\'emprise mentale de Loki qui se servit de lui comme pion pour ses plan maléfiques. Cependant, après leur attaque de l\'Héliporteur, il fut libéré du contrôle mental de Loki par Black Widow et rejoignit les Avengers pour combattre contre l\'armée Chitauri de Loki pendant la Bataille de New York, mettant fin à l\'Invasion Chitauri avant que Barton ne reprenne son travail d\'agent du S.H.I.E.L.D. ', 'clintbarton.png', 0),
(5, 'Peggy Carter', 'Hayley Atwell', 'Margaret Elizabeth « Peggy » Carter était l\'une des agents les plus importantes de la Section Scientifique de Réserve pendant et après la Seconde Guerre mondiale, puis une des fondatrices du S.H.I.E.L.D.. Ancienne cryptanalyste travaillant à Bletchley Park, elle rejoignit le Special Operations Executive à la suite de la mort de son frère. Carter rejoignit ensuite la SSR, formée pour combattre HYDRA, la division d\'armement secrète des Nazis. En mission en Allemagne, elle sauva la vie d\'Abraham Erskine des mains de Johann Schmidt. Le succès de sa mission permit à la SSR de lancer le Projet Renaissance et développer leur sérum de Super-Soldat pour concevoir une armée de Super-Soldats. Durant le projet, elle devint amie avec Steve Rogers, un candidat du projet.', 'peggycarter.png', 0),
(6, 'Phil Coulson', 'Clark Gregg', 'Phillip J. « Phil » Coulson était un ancien Directeur du S.H.I.E.L.D. et avant ça, un de ses meilleurs agents et le bras-droit du Directeur Nick Fury pendant de très nombreuses missions importantes. Depuis son recrutement dans les années 90, il sert d\'agent référent à l\'Initiative Avengers à la suite d\'une Invasion Skrull sur Terre en 1995, qui mena à l\'apparition de Captain Marvel et où il permit à Fury d\'arrêter la menace en se fiant à son instinct. L\'Agent Coulson participa ensuite à d\'autres affaire pour le S.H.I.E.L.D. et était l\'agent en charge de l\'enquête chez Stark Industries après l\'enlèvement de Tony Stark. Il aida ensuite le milliardaire en lui montant un alibi pour cacher son identité d\'Iron Man, bien qu\'il décida de le révéler à la presse. Plus tard, il assura la surveillance de Stark pour le compte de Fury après quelques incidents liés à son armure. Il participa également à une mission tactique à Puente Antiguo, au Nouveau-Mexique, afin d\'enquêter sur l\'incident avec Thor et le Destructeur. ', 'philcoulson.png', 0),
(7, 'Carol Denvers', 'Brie Larson', 'Phillip J. « Phil » Coulson était un ancien Directeur du S.H.I.E.L.D. et avant ça, un de ses meilleurs agents et le bras-droit du Directeur Nick Fury pendant de très nombreuses missions importantes. Depuis son recrutement dans les années 90, il sert d\'agent référent à l\'Initiative Avengers à la suite d\'une Invasion Skrull sur Terre en 1995, qui mena à l\'apparition de Captain Marvel et où il permit à Fury d\'arrêter la menace en se fiant à son instinct. L\'Agent Coulson participa ensuite à d\'autres affaire pour le S.H.I.E.L.D. et était l\'agent en charge de l\'enquête chez Stark Industries après l\'enlèvement de Tony Stark. Il aida ensuite le milliardaire en lui montant un alibi pour cacher son identité d\'Iron Man, bien qu\'il décida de le révéler à la presse. Plus tard, il assura la surveillance de Stark pour le compte de Fury après quelques incidents liés à son armure. Il participa également à une mission tactique à Puente Antiguo, au Nouveau-Mexique, afin d\'enquêter sur l\'incident avec Thor et le Destructeur. ', 'caroldenvers.png', 0),
(8, 'Drax', 'Dave Bautista', 'Drax est un ancien criminel Kylosien intergalactique et membre des Gardiens de la Galaxie. Il souhaitait prendre sa revanche contre Ronan l\'Accusateur pour le meurtre de sa femme et de sa fille et partit déchaîner sa colère à travers la galaxie, avant d\'être emprisonné par les Cohortes de Nova au sein du Kyln. En prison, Drax se retrouva à devenir totalement inattendu de Star-Lord, Gamora, Rocket Raccoon et Groot. Ils s\'évadèrent ensemble du Kyln, devenant les Gardiens de la Galaxie, et se retrouvèrent impliqué dans la Quête de l\'Orbe. Après la Bataille de Xandar, dans laquelle il obtient la vengeance qu\'il désirait depuis longtemps sur Ronan quand les Gardiens le détruisèrent ensemble, Drax quitta Xandar avec les autres Gardiens mais pas avant avoir déclaré que Thanos était sa prochaine cible.', 'drax.png', 0),
(9, 'Nick Fury', 'Samuel L. Jackson', 'Nicholas « Nick » Joseph Fury est un ancien Colonel qui a servit pour l\'Armée des États-Unis et un vétéran en espionnage pour la CIA durant la Guerre Froide. En continuant à servir le monde, Fury rejoignit le S.H.I.E.L.D., une organisation secrète de maintien de la paix qui opérait comme la première ligne de défense contre les plus dangeureux ennemis de la Terre. La grande variété d\'ennemis s\'étendit dans les années 90 quand Fury rencontra la guerrière Kree Vers. Il l\'aida à découvrir ses héritages humains en tant que Carol Danvers, alors que les deux affrontaient la Starforce des Krees, qui était dirigée par Yon-Rogg, qui ciblait des familles de réfugiés Skrulls. Fury subit une griffure de l\'animal Flerken de Mar-Vell, Goose, qui provoqua la perte définitive de son œil gauche. Fury garda la raison de sa blessure secrète tandis que Captain Marvel quittait la Terre pour protéger le reste de l\'univers.', 'nickfury.png', 0),
(10, 'Gamora', 'Zoe Saldana', 'Gamora est une ancienne meutrière Zehoberei et membre des Gardiens de la Galaxie. Elle devint l\'une des filles adoptives de Thanos et la sœur adoptive de Nebula après qu\'il ait tué la moitié de son espèce. Gamora fut à son service pendant des années jusqu\'à ce qu\'elle ne le trahisse dans le but de s\'affranchir de sa servitude. Après avoir été embauchée pour voler l’Orbe, et après s\'être retrouvé impliquée dans la Quête de l\'Orbe, elle devint amie avec d\'autres criminels et formèrent les Gardiens de la Galaxie. Après la Bataille de Xandar dans laquelle elle affronta Nebula et où ils parvinrent à vaincre Ronan l\'Accusateur, Gamora partit avec les Gardiens. Plus tard, ils passèrent un accord avec les Souverains pour tuer l\'Abilisk, leur permettant de récupérer Nebula captive pour l\'amener devant la justice sur Xandar.', 'gamora.png', 0),
(11, 'Groot', 'Vin Diesel', 'Groot est un Flora colossus et le complice de Rocket Raccoon. Ensemble, le duo traversa la galaxie à la poursuite de primes jusqu\'à ce qu\'ils ne croisent la route de Star-Lord et Gamora et qu\'ils ne se fassent capturer et emprisonner au Kyln, où ils rencontrèrent aussi Drax le Destructeur. Ils acceptèrent alors de travailler ensemble pour s\'échapper et vendre l\'Orbe pour un gain massif. Toutefois, quand ils découvrirent que l\'Orbe contenait une des Pierres d\'Infinités qui était recherchée par Ronan l\'Accusateur, Groot convainquit ses amis de tout risquer pour mettre fin aux plans diaboliques de Ronan. Durant la Bataille de Xandar, Groot sacrifia sa propre vie pour sauver ses nouveaux amis. Néanmoins, une partie de son corps détruit fut replanté par Rocket pour donner naissance un nouveau Groot, alors qu\'ils formaient les Gardiens de la Galaxie.', 'groot.png', 0),
(12, 'Ikaris', 'Richard Madden', 'Ikaris était l\'ancien leader tactique et le plus puissant membre de la communauté des Éternels. Créé par les Célestes dans la Forge Monde, Ikaris fut envoyé sur Terre en 5 000 av. J.-C. pour faire progresser le développement sociétal de la planète et protéger ses habitants des Déviants, développant une relation amoureuse forte avec Sersi. Ikaris effectua vaillamment sa mission tout en apprenant rapidement son véritable but d\'aider à initier l\'Émergence de la planète pour donner naissance à Tiamut, estimant que la Terre était un sacrifice nécessaire pour créer davantage de vies dans l\'univers. En 2023, année annonciatrice de l\'Émergence terrestre en raison de l\'Éclipse, Ikaris fut amené à trahir et tuer la Première Éternelle Ajak quand elle commença à s\'opposer aux plans d\'Arishem, inspirée par les actes héroïques des Avengers. Ikaris aida à rassembler les Éternels en préparation de l\'événement, mais se retrouva isolé lorsque leurs objectifs s\'éloignèrent également de ceux d\'Arishem. Quand la révélation sur la morte d\'Ajak éclata et que l\'équipe se retrouva divisée sur la question de la protection de l\'humanité, Ikaris trahit ses amis. Face à ses anciens camarades, Ikaris fut surpassé et ne parvint pas à empêcher son amour de toujours Sersi de tuer Tiamut, empêchant l\'Émergence. Culpabilisant de ses actes et de son échec, Ikaris s\'en alla se suicider en fonçant droit dans le Soleil.', 'ikaris.jpg', 0),
(13, 'Ant Man', 'Paul Rudd', 'Scott Edward Harris Lang est un ancien criminel qui fut convaincu par Hank Pym, le PDG de Pym Technologies, d\'assumer le rôle du nouveau Ant-Man. En tant qu\'Ant-Man, il affronta l\'ancien protégé de Pym, Darren Cross, qui était devenu obsédé par les particules Pym et tenta de recréer puis revendre cette technologie à des organisations terroristes telles que HYDRA ou les Dix Anneaux. Après que sa fille Cassie Lang fut prise en otage par Cross, Lang parvint à s\'envoyer lui-même et Cross dans le Royaume Quantique, où il aperçut la femme disparue depuis longtemps de Pym, Janet van Dyne, avant de réussir à en revenir, tandis que Cross fut quant à lui vraisemblablement tué. Lang entama ensuite une relation amoureuse avec Hope van Dyne.', 'antman.png', 0),
(14, 'Loki', 'Tom Hiddleston', 'Loki était le fils de Laufey, le dirigeant des Géants des Glaces de Jotunheim, qui fut abandonné et laissé pour mort peu après sa naissance. Retrouvé par Odin, Loki fut amené sur Asgard, puis adopté par lui et sa femme Frigga en tant que prince Asgardien, aux côtés de Thor. Quand Thor s\'apprêtait à être couronné Roi, Loki sabota la cérémonie en laissant les Géants des Glaces attaquer Asgard, amenant Thor à vouloir prendre sa vengeance contre Jotunheim et à se faire bannir sur Terre tandis que Loki découvrait la vérité à propos de son héritage. Frigga conféra le trône à Loki quand Odin sombra dans son sommeil ; toutefois, quand les Trois Guerriers et Sif tentèrent de ramener Thor, Loki fut forcé d\'essayer de les arrêter. Néanmoins, Thor revint de son exil sur Terre et mit fin au règne de Loki. Face à la désapprobation d\'Odin quant à ses actes, Loki se laissa tomber dans les profondeurs obscures de l\'univers, entrant dans un trou de ver créé par la soudaine disparation du Bifrost.', 'loki.png', 0),
(15, 'Mantis', 'Pom Klementieff', 'Mantis est une empathe avec la capacité de sensir les sentiments des gens et de les altérer. Elle fut élevée par Ego et fut plus tard recrutée comme membre des Gardiens de la Galaxie. Depuis son enfance, Mantis aidait à calmer le comportement névrosé d\'Ego avec ses pouvoirs jusqu\'à ce que les Gardiens n\'arrivent sur sa planète. Après avoir tissé des liens avec Drax le Destructeur, elle se noua d\'affection pour les Gardiens et s\'allia à eux pour empêcher Ego de conquérir la galaxie toute entière. Alors que sa servitude pour Ego s\'était enfin terminée, Mantis devint une véritable de membre des Gardiens de la Galaxie et les accompagna durant leurs aventures.', 'mantis.png', 0),
(16, 'Wanda Maximoff', 'Elizabeth Olsen', 'Wanda Maximoff, aussi connue comme la Sorcière Rouge, est une native de Sokovie qui grandit aux côtés son frère jumeau, Pietro. Née avec la capacité magicale latente de manipuler la Magie du Chaos, elle développa une haine envers Tony Stark et se rallia à des manifestions anti-Amérique après les bombardements de Novi Grad, qui tuèrent ses parents. Dans l\'espoir de pouvoir aider son peuple contre la tyrannie, les jumeaux rejoignirent HYDRA et acceptèrent de subir des expériences avec le Sceptre sous la supervision de Wolfgang von Strucker, ce qui amplifia ses pouvoirs. Tandis que son frère développa une super-vitesse, Wanda acquit divers capacités psioniques. Quand HYDRA s\'effondra, les jumeaux rejoignirent Ultron afin d\'obtenir leur revanche sur Stark, mais ils l\'abandonnèrent lorsqu\'ils découvrirent la véritable intention d\'Ultron de détruire la Terre. Wanda et Pietro combattirent avec les Avengers durant la Bataille de Sokovie pour arrêter Ultron. Pietro fut tué durant la bataille mais Wanda survécu et, peu après la destruction finale d\'Ultron, devint membre des Avengers.', 'wandamaximoff.png', 0),
(17, 'Nebula', 'Karen Gillan', 'Nebula est une assassin Luphomoïde, une fille adoptive du seigneur de guerre intergalactique Thanos ainsi que la sœur adoptive de Gamora. En tant que bras-droit de Ronan l\'Accusateur durant leur quête commune avec Thanos, elle aida à affronter les Gardiens de la Galaxie durant la Bataille de Xandar. Fuyant la bataille après un combat contre Gamora, Nebula fut rapidement capturée par les Souverains et remise aux Gardiens après une commission achevée. Elle s\'échappa et aida Taserface à mener les autres Ravageurs dans une mutinerie comme leur ancien leader Yondu Udonta avant partir de nouveau pour tenter de tuer Gamora. Après avoir pardonné et aidé sa sœur ainsi que les Gardiens durant la Bataille de la Planète d\'Ego, elle quitta leur vaisseau pour une mission de vengeance contre Thanos.', 'nebula.png', 0),
(18, 'Okoye', 'Danai Gurira', 'Okoye est la Générale des Dora Milaje et la dirigeante des forces armées et de renseignement du Wakanda. Après la mort du Roi T\'Chaka et le couronnement de T\'Challa, Okoye partit traquer le criminel Ulysses Klaue avec Black Panther et Nakia à l\'étranger mais ils ne purent empêcher le terroriste de prendre la fuite. Quand Erik Killmonger prit le trône et sembla tuer T\'Challa, Okoye fut confrontée à sa propre loyauté mais resta fidèle à la couronne, jusqu\'à ce qu\'elle découvre les vraies ambitions de Killmonger et le retour de T\'Challa. Okoye se joignit de nouveau à T\'Challa et mena le combat pour sauver son pays, arrêtant aussi son propre mari W\'Kabi.', 'okoye.png', 0),
(19, 'Spider Man', 'Tom Holland', 'Peter Benjamin Parker est un lycéen qui combat le crimes à travers New York sous le nom de Spider-Man, servant les habitants de son voisinage et espérant rejoindre les Avengers et leurs exploits. Tandis que Parker jonglait entre ses activités super-héroïques et les exigences de sa vie étudiante, il fut approché par Tony Stark qui recruta Spider-Man pour rejoindre la Guerre Civile des Avengers, mettant brièvement Spider-Man en conflit avec son idole, Captain America. Parker accepta et reçut un nouveau costume avec des technologies Stark en échange de son aide, bien que Stark ne fit pas de lui un membre officiel des Avengers. Parker retourna ensuite à sa vie normale et à ses activités héroïques.', 'spiderman.png', 0),
(20, 'Pepper Pots', 'Gwyneth Paltrow', 'Virginia « Pepper » Potts est la Présidente Directrice Générale de Stark Industries et l\'ancienne assistante personnelle de Tony Stark avec qui elle finit par se marier. Pendant sa période comme assistante, Potts s\'occupait de son emploi du temps et accomplissait tout ce qu\'il lui demandait, mais Stark se fit capturer par des terroristes en Afghanistan. À son retour, Stark lui fit suffisamment confiance pour lui révéler ses armures Iron Man et ses missions, alors qu\'ils devenaient amis et développaient des sentiments mutuels. Potts l\'aida à vaincre Obadiah Stane en surchargeant le Réacteur ARC, ce qui tua Stane. Après la mort de Stane, ils décidèrent éviter leurs sentiments respectifs et Stark fit de Potts sa nouvelle partenaire commerciale, prenant la place de Stane.', 'pepperpots.png', 0),
(21, 'Star Lord', 'Chris Pratt', 'Peter Jason Quill est un hybride humain-Céleste qui fut été enlevé sur Terre en 1988 par le Clan Ravageur de Yondu et qui a commencé après son adoption à se construire une réputation sous les traits du hors-la-loi intergalactique nommé Star-Lord. En 2014, il décida de quitter les Ravageurs et d\'opérer individuellement, en commençant par voler un précieux artéfact connu sous le nom d\'Orbe, devenant inintentionnellement un acteur clé dans la Quête de l\'Orbe. À la suite de son arrestation, il forma une alliance bancale avec ses camarades co-détenus Gamora, Drax le Destructeur, Rocket Raccoon et Groot, qui formèrent ensemble les Gardiens de la Galaxie dans le but d\'empêcher Ronan l\'Accusateur de détruire Xandar avec la Pierre du Pouvoir.', 'starlord.png', 0),
(22, 'War Machine', 'Don Cheadle', 'Le Colonel James Rupert Rhodes est un officier au sein de l\'US Air Force et la liaison militaire entre le Département des Acquisitions et Stark Industries, où il est devenu ami proche avec Tony Stark. Quand Stark fut kidnappé par les Dix Anneaux, Rhodes dirigea personnellement la mission pour secourir son meilleur ami. Néanmoins, à leur retour, Rhodes assista impuissant à la décision de Stark d\'abandonner la branche armement de Stark Industries pour le compte de l\'armée et découvrit rapidement qu\'il se concentrait à devenir le héros en armure connu sous le nom d\'Iron Man. Malgré toutes ses craintes pour la sécurité de son ami, Rhodes s\'allia rapidement à Iron Man pour mettre un terme aux plans d\'Obadiah Stane, tout en tentant de maintenir secrète l\'identité héroïque de Stark, jusqu\'à ce que ce dernier ne la révèle publiquement à la télévision.', 'warmachine.png', 0),
(23, 'Rocket Raccoon', 'Bradley Cooper', '89P13, principalement connu Rocket, est une créature génétiquement optimisée devenu un criminel indépendant. Aux côtés de son ami et partenaire Groot, Rocket traversa la galaxie à la recherche de primes, avant qu\'ils ne rencontrèrent Star-Lord qui les convainquit de les aider à vendre l\'Orbe pour d\'importants profits. Toutefois, après qu\'ils aient découverts que l\'Orbe était une des Pierres d\'Infinités recherchée par Ronan l\'Accusateur, Rocket fut convaincu de tout risquer à l\'inverse de sa nature profonde pour empêcher Ronan de détruire Xandar et de réduire le monde en esclavage. Durant le combat qui s\'ensuivit, Rocket aida ses amis à détruire Ronan, bien que Groot fut tué. Rocket devint membre des Gardiens de la Galaxie aux côtés d\'un bébé Groot fraîchement replanté.', 'rocketraccoon.png', 0),
(24, 'Captain America', 'Chris Evans', 'Steven Grant « Steve » Rogers est un vétéran de la Seconde Guerre mondiale qui fut connu comme le tout premier super-héros au monde, Captain America. Né à Brooklyn, à New York, le jeune Rogers souffrait de nombreux problèmes de santé, et alors que l\'Amérique entrait dans la Seconde Guerre mondiale, il fut rejeté du service militaire malgré plusieurs tentatives ratées pour intégrer l\'Armée. Déterminé à servir, il devint volontaire pour le programme top-secret de Super-Soldat; et le frêle Rogers fut ainsi transformé en le nec plus ultra de l\'espèce humaine. Il rejoignit rapidement l\'effort de guerre; d\'abord comme la mascotte ayant le surnom de Captain America, puis en rejoignant concrètement la guerre dans un rôle de combattant après avoir libéré à mains nues des prisonniers de guerre Alliés.', 'captainamerica.png', 0),
(25, 'Black Widow', 'Scarlett Johansson', 'Natalia Alianovna « Natasha » Romanoff (en russe : Наталья Алиановна \"Наташа\" Романова), aussi connue en tant que Black Widow, était une des espionnes et assassins les plus talentueuses dans le monde entier et une membre fondatrice des Avengers. Enfant, elle fut endoctrinée au sein de la Chambre Rouge par le Général Dreykov et vécu auprès de ses faux parents Alexei Shostakov et Melina Vostokoff sur le sol américain. Après la destruction du North Institute, elle subit un conditionnement psychologique renforcé et fut finalement graduée de la Chambre Rouge en tant que Veuve Noire. Travaillant comme agent du KGB, elle fut ciblée par le S.H.I.E.L.D. avant de recevoir l\'ultime chance de déserter grâce à Clint Barton en assassinant Dreykov. Romanoff parvint à fuire et à remplir son objectif, bien qu\'elle eut à utiliser la fille de Dreykov, Antonia, comme dommage collatéral, ce qui la hantera toute sa vie.', 'blackwidow.png', 0),
(26, 'Sersi', 'Gemma Chan', 'Sersi est une Éternelle créée par les Célestes qui fut envoyée sur Terre dans le but de protéger les humains des Déviants afin d\'accomplir l\'Émergence. Au cours de milliers d\'années de combat et de protection, Sersi se rapprocha et se maria à Ikaris. Après leur séparition, Sersi s\'en alla vivre au sein des humains, attendant le signal des Célestes pour quitter la Terre malgré l\'apparente victoire face aux Déviants. En tant que conservatrice de musée à Londres, Sersi démarra une nouvelle vie et entama une relation avec Dane Whitman jusqu\'à une attaque de Déviants qui l\'amena à recroiser la route de Sprite et Ikaris. En quête de retrouvailles avec les autres Éternels, Sersi découvrit la mort de leur leader Ajak, qui lui passa le flambeau de diriger les Éternels. Sersi découvrit les véritables plans d\'Arishem avec l\'Émergence, à savoir détruire la Terre pour permettre la naissance d\'un nouveau Céleste, et décida rapidement de suivre la voie d\'Ajak en cherchant à empêcher l\'Émergence. Pleinement réunie avec tous les autres Éternels encore en vie, Sersi mit au point un plan pour permettre à Tiamut de rester endormi pour ainsi sauver la Terre. Malgré la trahison d\'Ikaris et Sprite, Sersi parvint à utiliser ses pouvoirs d\'une toute nouvelle manière, amplifiés par une technologie créée par Phastos, pour transmuter et tuer Tiamut avant qu\'il n\'arrache la surface terrestre. Après la bataille et la séparation avec les Éternels, Sersi retourna auprès de Whitman mais fut enlevée par Arishem qui décida de la juger et d\'épargner malgré tout l\'humanité.', 'sersi.jpg', 0),
(27, 'Shang-Chi', 'Simu Liu', 'Xu Shang-Chi (徐尚氣 en chinois) est le fils de Xu Wenwu, le fondateur des Dix Anneaux. Tout au long de son enfance, Shang-Chi subit un régime d\'entraînements brutaux qui firent de lui un formidable maître des arts martiaux. Toutefois, au cours d\'une mission pour venger la mort de sa mère, Shang-Chi décida d\'abandonner les Dix Anneaux et de laisser son passé familial derrière lui. Cherchant à démarrer une nouvelle vie loin de l\'ombre de son père, Shang-Chi se rendit aux États-Unis et parvint à maintenir une vie simple sous le nom de Shaun avec son amie Katy Chen. Finalement, les Dix Anneaux ciblèrent Shang-Chi de nouveau, ce qui l\'amena à faire équipe avec Chen et sa sœur Xu Xialing afin de faire face à Wenwu dans sa quête de percer le Portail Sombre de Ta Lo, qui libéra l\'Hôte-des-Ténèbres et ses Mangeurs d\'âmes. Quand son père sacrifia sa vie pour le sauver, Shang-Chi hérita de ses dix anneaux mystiques afin de vaincre les Mangeurs d\'âmes. Après la bataille, il fut consulté par des membres des Avengers pour étudier les anneaux et comprendre ses origines antiques.', 'shang-chi.jpg', 0),
(28, 'Shuri', 'Letitia Wright', 'Shuri est la Princesse du Wakanda, la fille de T\'Chaka et de Ramonda, la sœur de T\'Challa et la leader du Groupe de Design du Wakanda. Innovatrice chargée de créer une grande partie de la technologie moderne du Wakanda, Shuri était également connue pour avoir conçu la génération actuelle des Habits de Panthère. Après le couronnement de son frère, Shuri l\'aida ainsi que les Dora Milaje dans la traque de Ulysses Klaue, avant d\'être contrainte de fuir la Cité d\'Or quand Erik Killmonger renversa le trône, avant qu\'ils ne parviennent finalement à reprendre le contrôle du pays. Peu après, Shuri réussit à supprimer la programmation d\'HYDRA dans l\'esprit de Bucky Barnes.', 'shuri.png', 0),
(29, 'Doctor Strange', 'Benedict Cumberbatch', 'Stephen Vincent Strange, également connu comme Docteur Strange, est un puissant sorcier et un membre éminent des Maîtres des Arts Mystiques. Originellement un neurochirurgien brillant mais arrogant, Strange subit un accident de voiture qui conduisit à une quasi-paralysie de ses mains. Quand la médecine occidentale ne parvint pas à guérir l\'état de ses mains, Strange s\'embarqua dans un voyage qui le conduisit aux Maîtres des Arts Mystiques, aussi bien qu\'à la découverte de la magie et des dimensions alternatives et fut entraîné par l\'Ancien et Karl Mordo. Bien que son entraînement guérissait lentement ses mains, Strange en apprit plus sur les arts mystiques et aida rapidement les Maîtres à empêcher Kaecilius et les Zélotes de de faire fusionner la Terre avec la Dimension Noire, mais pas sans avoir à encaisser la mort de l\'Ancien. Avec la disparition de son mentor, Strange devint le nouveau protecteur du Saint des Saints de New York, aussi bien que le protecteur de la Terre contre les menaces interdimensionnelles.', 'doctorstrange.png', 0),
(30, 'Black Panther', 'Chadwick Boseman', 'T\'Challa est le Roi du Wakanda et le premier fils de T\'Chaka et Ramonda. En tant que monarche Wakandais, il devint le détenteur du titre de Black Panther. Après la mort de son père dans un attentat à la bombe secrètement orchestré par Helmut Zemo, T\'Challa tenta par tous les moyens de tuer le Soldat de l\'Hiver, qui était considéré comme le responsable de l\'attaque. Durant ses tentatives de traque du Soldat de l\'Hiver, Black Panther rejoignit une Guerre Civile entre les Avengers, où il s\'allia à Iron Man. Néanmoins, Black Panther découvrit que Zemo était le véritable responsable de la mort de son père et, alors qu\'il le capturait, le remit à Everett Ross, choississant de ne pas céder à ses désirs de vengeances qui pourraient le consumer. Il décida aussi d\'aider le Soldat de l\'Hiver en lui accordant l\'asile au Wakanda et en l\'aidant à obtenir un traitement curatif pour son conditionnement mental provoqué par HYDRA.', 'blackpanther.png', 0),
(31, 'Thanos', 'Josh Brolin', 'Thanos était un seigneur de guerre génocidaire venant de Titan, dont l\'objectif principal était d\'amener la stabilité à l\'univers car il estimait que sa conséquente population provoquerait à terme l\'épuisement de ses ressources et le condamnerait. Pour accomplir son objectif, Thanos cherchait à obtenir les Pierres d\'Infinités, leur pouvoir combiné pouvant éradiquer la moitié de l\'univers. Thanos forgea des alliances avec Loki et Ronan l\'Accusateur pour retrouver certaines Pierres, mais chacunes des alliances coûtèrent beaucoup de ressources à Thanos, et notamment la Pierre de l\'Esprit ou la loyauté de ses filles, Gamora et Nebula. Lassé par les échecs continus de ses subordonnés, Thanos força Eitri à lui créer le Gantelet d\'Infinité, tandis que Thanos se décida à trouver les six Pierres d\'Infinités lui-même.', 'thanos.png', 0),
(32, 'Thor', 'Chris Hemsworth', 'Thor Odinson est le Dieu du Tonnerre Asgardien, l\'ancien Roi d\'Asgard et de la Nouvelle Asgard et un membre fondateur des Avengers. Quand son comportement irresponsable et impétueux relança un conflit entre Asgard et Jotunheim, Thor se vit refuser son droit d\'être Roi, déposédé de son pouvoir et banni par son père Odin sur Terre. Exilé sur Terre, Thor apprit l\'humilité, découvrit l\'amour avec Jane Foster et aida à sauver ses nouveaux amis du Destructeur envoyé par son frère adoptif Loki, sacrifiant sa propre vie pour sauver celles de mortels innocents. Grâce à son acte de sacrifice désintéressé, Thor se racheta aux yeux de son père et récupéra son pouvoir, qu\'il utilisa alors pour vaincre aux plans de génocide de Loki.', 'thor.png', 0),
(33, 'Valkyrie', 'Tessa Thompson', 'Brunnhilde est une Valkyrie Asgardienne qui faisait partie d\'un groupe d\'élite de guerrières nommées les Valkyries. Elle résidait sur Sakaar sous le nom de la chasseuse de prime nommée Scrapper 142 après sa défaite des mains d\'Hela. Après des années d\'exil auto-forcé, Valkyrie fit la connaissance du prince Asgardien Thor et le vendit au Grand Maître, uniquement pour se rapprocher de lui quand il lui apprit la nouvelle invasion d\'Asgard par Hela. En rejoignant les Revengers, Valkyrie s\'échappa de Sakaar et aida Thor à vaincre Hela, observant la Destruction d\'Asgard et rejoignant ensuite les survivants restants qui se rendaient sur Terre, mais le Statesman fut attaqué par l\'Ordre Noir. Elle fit partie des quelques survivants de l\'attaque de Thanos, aidant à mener les Asgardiens en sûreté avant que le Titan Fou ne détruise le vaisseau et ne tue les forces restantes. Elle fit ensuite partie des survivants du Snap.', 'valkyrie.png', 0),
(34, 'Hope Van Dyne', 'Evangeline Lilly', 'Hope van Dyne est la fille de Hank Pym et Janet van Dyne et une membre du conseil d’administration de la compagnie fondée par son père, Pym Technologies. Quand le nouveau PDG de Pym Technologies Darren Cross renomma l\'entreprise et tenta de créer puis de vendre une nouvelle arme basée sur le costume d’Ant-Man de son père, van Dyne se réconcilia avec celui-ci et, aux côtés du voleur Scott Lang sous les traits du nouveau Ant-Man, elle réussit à arrêter Cross avant qu\'il ne puisse revendre les technologies à des organisations terroristes. Après ces événements, Pym lui offrit finalement le costume de sa mère pour devenir la nouvelle détentrice de l’identité de la Guêpe.', 'hopevandyne.png', 0),
(35, 'Vision', 'Paul Bettany', 'Vision était un synthésoïde fait de vibranium, créé par Ultron avec l\'aide d\'Helen Cho, et amené à la vie grâce à un puissant artéfact connu comme la Pierre de l\'Esprit. Conçu initialement pour être la forme parfaite pour Ultron, le corps fut volé par les Avengers. Tony Stark et Bruce Banner changèrent totalement sa programmation et implantèrent les restes de l\'I.A. personnelle de Stark, J.A.R.V.I.S., à l\'intérieur. À sa naissance, Vision déclara lui-même être un mélange d\'Ultron et J.A.R.V.I.S., mais un être qui combattrait pour protéger l\'humanité à tout prix. Vision se joignit aux Avengers dans la Bataille de Sokovie, utilisa ses pouvoirs pour empêcher Ultron de transférer sa conscience à travers internet et permit aux Avengers de mettre définitivement fin à son existence et à ses plans.', 'vision.png', 0),
(36, 'Falcon', 'Anthony Mackie', 'Samuel Thomas « Sam » Wilson est un ancien secoureur-parachutiste de l\'US Air Force, qui se retira du service actif quand son co-pilote Riley fut tué au combat, choississant d\'aider les autres vétérans souffrant de stress post-traumatique. À cette période, Wilson rencontra Captain America et fut projeté dans son conflit contre HYDRA quand Captain America cherchait l\'aide de quiconque non associé au S.H.I.E.L.D. après qu\'ils furent infiltrés par HYDRA. Reprenant son rôle de Falcon, Wilson les aida à détruire les objectifs de domination mondiale d\'Alexander Pierce. A la suite de leur victoire contre les forces d\'HYDRA de Pierce, Falcon accepta d\'aider Captain America à retrouver la trace du Soldat de l\'Hiver, qui était en fait l\'ami proche de Captain America dont le cerveau avait été lavé.', 'falcon.png', 0),
(37, 'Wong', 'Benedict Wong', 'Wong (王 en chinois) est un Maître des Arts Mystiques venant de Kamar-Taj. Quand l\'ancien bibliothécaire de Kamar-Taj est assassiné par Kaecilius et les Zélotes, Wong devint le nouveau gardien hautement protecteur de tous les livres anciens. Il fit alors la rencontre de Stephen Strange et l\'aida dans ses études des arts mystiques. Alors que Kaecilius tentait d\'utiliser son pouvoir pour amener Dormammu sur Terre, Wong et les autres Maîtres utilisèrent leurs pouvoirs pour finalement le vaincre, au prix de la mort de l\'Ancien. Avec le conflit contre Kaecilius terminé, Wong rejoignit le Docteur Strange dans la protection du Saint des Saints de New York.', 'wong.png', 0),
(38, 'Ajak', 'Salma Hayek', 'Ajak était la sage cheffe spirituelle de la communauté des Éternels venus sur Terre. Créée par les Célestes dans la Forge Monde, Ajak fut envoyée sur Terre en 5 000 av. J.-C. pour faire progresser le développement sociétal de la planète et protéger ses habitants des Déviants. Ajak fut informée du but de sa vie de préparer la planète pour l\'Émergence de la Terre avec la naissance de Tiamut. Néanmois, Ajak fut inspirée par les actes héroïques des Avengers durant la Bataille de la Terre et décida alors de s\'opposer aux idéaux de ses créateurs, estimant que l\'humanité valait la peine d\'être sauvée. En ayant confiée son désaccord à Ikaris, Ajak fut finalement trahie par son ancien ami qui l\'attira jusqu\'à une poignée de Déviants dans l\'Alaska pour être assassinée.', 'ajak.jpg', 0),
(39, 'L\'Ancien', 'Tilda Swinton', 'L\'Ancien était la Sorcière Suprême aussi bien que la leader des Maîtres des Arts Mystiques. Durant des siècles, l\'Ancien protègeait la Terre de menaces mystiques et se dédie à aider les autres dans le besoin en leur enseignant les arts magiques, leur donnant un nouvel espoir. Toutefois, plus tard, elle est remise en cause par un ancien étudiant, Kaecilius, qui a été corrompu par la Dimension Noire et désire amener Dormammu sur Terre. Au milieu de son conflit avec Kaecilius et ses Zélotes, l\'Ancien rencontre le Docteur Strange et, malgré sa réticence initiale, elle est persuadée de l\'accepter comme étudiant par Karl Mordo. Durant un dernier combat, l\'Ancien est grièvement blessée et malgré les meilleurs efforts du Docteur Strange et de Christine Palmer pour la sauver, elle accepte son destin et meurt. Avant cela, elle conseille au Docteur Strange qu\'il a besoin de vaincre Dormammu aussi bien que de trouver un nouveau but dans sa vie.', 'lancien.png', 0),
(40, 'Mystério', 'Jake Gyllenhaal', 'Quentin Beck était un ancien employé de Stark Industries qui cherchait à remplacer le défunt Tony Stark en tant que prochain défenseur de la Terre. Beck mit en scène plusieurs attaques d\'Élémentaux à travers le monde avec l\'utilisation de sa combinaison, de ses drones, et de sa technologie d\'hologramme, cherchant à attirer l\'attention et la reconnaissance du public en tant que le nouveau super-héros nommé Mystério. Beck exploita les traits de son charisme et ses talents en illusion et en tromperie pour obtenir la confiance de Nick Fury et de Spider-Man, remplissant même le vide du rôle de mentor laissé par l\'absence de Stark pour Parker. Après que sa supercherie fut découverte et que son plan de destruction massive à travers le continent européen fut découvert, Beck prouva être un adversaire de taille pour Spider-Man, bien que son arrogance et son insensibilité menèrent à sa chute lors de la Bataille de Londres. Néanmoins, Beck joua un rôle fondamental dans la divulgation de l\'identité de Spider-Man au monde entier, en envoyant des vidéos trafiquées de la bataille à différents médias, accusant Spider-Man pour les attaques.', 'mystério.png', 0),
(41, 'Yelena Belova', 'Florence Pugh', 'Yelena Belova (Елена Белова en russe) est une sœur adoptive de Natasha Romanoff et une agent de la Chambre Rouge qui travaillait pour le Général Dreykov. Après la défection de Romanoff de la Chambre Rouge, Belova et les autres Veuves Noires furent placées sous une programmation de contrôle mental et changée en subordonnées dociles pour Dreykov. Néanmoins, après avoir repris le contrôle, Belova s\'associa à Romanoff, ainsi qu\'avec leurs parents adoptifs Alexei Shostakov et Melina Vostokoff, pour neutraliser la Chambre Rouge une bonne fois pour toutes. Ils réussirent et parvinrent à libérer toutes les Veuves au cours d\'une bataille où Belova tua directement Dreykov. Après s\'être séparée avec Romanoff, Belova passa deux ans à libérer les autres Veuves au cerveaux lavés avant qu\'elle ne soit tuée par le Snap de Thanos.', 'yelenabelova.jpg', 0),
(42, 'Kate Bishop', 'Hailee Steinfeld', 'Katherine Elizabeth « Kate » Bishop est la fille d\'Eleanor et Derek Bishop et la protégé de Clint Barton. Après avoir perdu son père durant la Bataille de New York à l\'âge de 10 ans, Bishop idôlatrait les actes héroïques de l\'Avenger Clint Barton et s\'entraîna par elle-même depuis l\'enfance pour devenir une maître en archerie. Elle participa activement à des concours de sports de combats et gagna de nombreux trophées. En 2024, après avoir enquêté sur les activités d\'une vente en enchères qui fut attaquée par la Mafia des Survêtes, elle se fit involontairement passer pour le Ronin, l\'amenant à rencontrer Barton en personne. Elle devint alors sa partenaire durant leur investigation contre les Survêtes, tout en en enquêtant aussi sur le meurtre supposé d\'Armand Duquesne III par le fiancé de sa mère, Jack Duquesne. Quand Bishop découvrit que sa mère était secrètement impliquée avec les Survêtes et même pour le meurtre d\'Armand, Bishop travailla avec Barton pour démanteler leurs opérations et fit arrêter Eleanor, allant même dans un face-à-face avec le Caïd. Pour ses actes héroïques, Bishop fut choisie par Barton pour porter elle-aussi le titre d\'Hawkeye.', 'katebishop.jpg', 0),
(43, 'Abomination', 'Tim Roth', 'Emil Blonsky est un ancien commando des forces spéciales des Marines Royales Britanniques qui fut prêté au SOCOM. Dans le cadre de ses efforts pour capturer Hulk, le Général américain Thaddeus Ross recruta Blonsky et lui injecta un variant du sérum de Super-Soldat. Après avoir perdu et été grièvement blessé face à Hulk dans une bataille à l\'Université Culver, Blonsky s\'injecta lui-même du sang irradié au gamma de Banner, provoquant sa transformation en une Abomination de la taille de Hulk. Il entama alors un véritable carnage à Harlem jusqu\'à ce qu\'il ne soit vaincu par Hulk. Peu après sa défaite, le Conseil de Sécurité Mondial tenta de faire inclure Blonsky au sein de l\'Initiative des Avengers, obligeant Phil Coulson à envoyer Tony Stark comme représentant pour saboter son inclusion. Blonsky fut alors placé sous la détention du S.H.I.E.L.D. qui le retint dans un complexe cryogénique dans l\'Alaska. Finalement, Blonsky fut libéré et devint un des compétiteurs du Club des Dagues d\'Or de Xu Xialing à Macao.', 'abomination.png', 0),
(44, 'Sharon Carter', 'Emily VanCamp', 'Sharon Carter est la arrière petite-nièce de Peggy Carter, la légendaire fondatrice et directrice du S.H.I.E.L.D.. Suivant les pas de sa tante, Carter devint une agent du S.H.I.E.L.D., bien qu\'elle ne révéla jamais sa relation familiale car elle ne souhaitait pas vivre sous la pression des attentes. Sur ordres directs de Nick Fury, Carter fut chargée sous-couverture de se faire passer pour une infirmière vivant comme la voisine de Steve Rogers. Quand Fury fut attaqué, Carter mit fin à sa couverture face à Rogers. Après la révélation qu\'HYDRA avait infiltré et opérait au sein du S.H.I.E.L.D., Carter décida de rester loyale à l\'organisation et combattit durant la bataille du Triskelion, faisant face à Brock Rumlow pour protéger des millions de vies.', 'sharoncarter.png', 0),
(45, 'YellowJacket', 'Corey Stoll', 'Le Docteur Darren Cross était le protégé de Hank Pym qui usurpa son mentor comme PDG de Pym Technologies et renomma l\'entreprise Cross Technologies. Son obsession pour les Particules Pym, l\'ancienne création de Pym, l\'amena à essayer de répliquer la technologie lui-même, qu\'il espérait ensuite pouvoir vendre à HYDRA et aux Dix Anneaux. En utilisant sa propre version du costume d\'Ant-Man de Pym, qui était connu comme le costume Yellowjacket, Cross tenta d\'achever la transaction, mais il fut défié par Pym et Hope van Dyne qui détruisirent ses recherches avec l\'aide de Scott Lang. Devenu fou à la suite de son échec, Cross tenta de tuer Lang et sa famille et disparu finalement après leur bataille.', 'yellowjacket.png', 0),
(46, 'TaskMaster', 'Olga Kurylenko', 'Antonia Dreykov (Антония Дрейкова en russe), aussi connue comme le Taskmaster, est la fille du Général Dreykov qui possède d\'incroyables réflexes et aptitudes photographiques grâce à son armure qui lui permettent de recopier les techniques de combat d\'autres individus. Ayant été très lourdement blessée durant une tentative d\'assassinat contre son père, Antonia vit son esprit et son corps placés sous le contrôle d\'une puce, la changeant en Taskmaster. Devenant la commandante de la Chambre Rouge, le Taskmaster reçut pour ordre de traquer Yelena Belova, qui avait subtilisé la poudre rouge et cherchait à libérer les autres Veuves Noires. Cela mit le Taskmaster directement en collision avec la personnage qui l\'avait presque tuée il y a des années auparavant, Natasha Romanoff. Toutefois, quand Romanoff était finalement parvenu à faire tuer Dreykov et à détruire l\'académie de la Chambre Rouge, le Taskmaster fut à son tour exposée à la poudre rouge, libérant son esprit du contrôle de Dreykov et lui permettant de s\'échapper pour vivre une nouvelle vie.', 'taskmaster.jpg', 0),
(47, 'Druig', 'Barry Keoghan', 'Druig est un Éternel possédant la faculté de contrôler les esprits, faisant d\'une communauté de dix Éternels venus sur Terre. Créé par les Célestes dans la Forge Monde, Druig fut envoyé sur Terre en 5 000 av. J.-C. pour faire progresser le développement sociétal de la planète et protéger ses habitants des Déviants, développant une relation forte avec Makkari. Druig commença progressivement par être découragé de leur mission et décida de quitter les Éternels, prenant à ses côtés une petite communauté d\'humains contrôlés mentalement. S\'imposant un exil pendant des siècles, Druig dirigea sa société secrète et les garda à l\'abri des horreurs du monde extérieur. Quand les Éternels se reformèrent en 2023 pour empêcher l\'Émergence, ils se rendirent à la cache de Druig pour le convaincre de les rejoindre. Bien qu\'initialement opposé, l\'attaque des Déviants contre ses protégés humains le fit changer d\'avis et il se réconcilia avec ses anciens amis. À la suite de leur victoire, Druig et les Éternels restants se séparèrent de nouveau. Druig se joignit à Makkari et Thena et quitta la Terre à bord du Domo dans le but de croiser la route d\'autres Éternels à travers la galaxie, où ils rencontrèrent Starfox, le frère de Thanos.', 'druig.jpg', 0),
(48, 'Ego', 'Kurt Russell', 'Ego était un Céleste, un être primordial et extrêmement puissant et le père biologique de Star-Lord. Entité impitoyable et mégalomane possédant un comportement de dieu, Ego désirait seulement conquérir l\'univers tout entier grâce à un plan d\'extinction omnicide connu comme sous le nom d\'Expansion, qui aurait terraformé toutes les autres planètes à l\'aide de plants aliens, qui étaient des extensions de lui-même, éparpillés au fil des années sur ses planètes visitées. Toutefois, ce processus nécessitait deux Célestes. Ego décida de parcourir le cosmos et féconda de nombreuses femmes de différentes espèces extraterrestres, engendrant des milliers d\'enfants, puis engageant le Clan Ravageur de Yondu pour enlever et lui ramener ses progénitures. Quand ses enfants n\'héritaient pas de ses gêne de Céleste, Ego les tuait rapidement et discrètement.', 'ego.png', 0),
(49, 'Jane Foster', 'Natalie Portman', 'Le Docteur Jane Foster est une des plus grandes astrophysiciennes du monde, la plus grande astronome du monde, la créatrice de la Théorie Foster ainsi que la première experte sur Asgard. Elle rencontra Thor après qu\'il fut banni d\'Asgard et tombé sur Terre alors qu\'elle et son équipe étudiaient des anomalies astrononiques au Nouveau-Mexique. Elle l\'aida dans sa mission de retourner à Asgard et tomba finalement amoureux de lui au passage. Ils furent séparés temporairement à cause de la destruction du Pont arc-en-ciel. Durant l\'assaut de Loki sur Terre, le S.H.I.E.L.D. la garda à l\'abri du danger en la transférant dans un observatoire éloigné où Loki ne pouvait la trouver.', 'janefoster.png', 0),
(50, 'Frigga', 'Rene Russo', 'Frigga était la Reine d\'Asgard et la femme d\'Odin, la mère de Thor ainsi que la mère adoptive de Loki. Elle tenta de maintenir la paix au sein de sa famille même lorsque Loki découvrit qu\'il était le véritable fils de Laufey et qu\'il commença à vouloir se venger envers elle et son mari, prenant temporairement le contrôle du trône d\'Asgard.\r\n\r\nQuand Thor amena Jane Foster sur Asgard pour la protéger des pouvoirs de l\'Éther, Frigga prit soin d\'elle et la défendit de l\'attaque des Elfes Noirs, sacrifiant même sa propre vie des mains de Malekith pour s\'assurer de sa sécurité. La mort de Frigga permit à Loki, pour qui elle s\'était toujours inquiétée, de reconsidérer ses choix de vies et de rejoindre son frère pour venger sa mort, bien que celle-ci ne changea pas les désirs de pouvoir de Loki.', 'frigga.png', 0),
(51, 'Gilgamesh', 'Don Lee', 'Gilgamesh est le plus fort et le plus sage des membres de la communauté des Éternels venus sur Terre. Créé par les Célestes dans la Forge Monde, Gilgamesh fut envoyé sur Terre en 5 000 av. J.-C. pour faire progresser le développement sociétal de la planète et protéger ses habitants des Déviants. Il s\'exila du reste des Éternels pour protéger et assurer la sécurité de Thena qui souffrait du Mahd Wy\'ry. En tant que guerrier, Gilgamesh était légendairement connu pour ses affrontements avec les Déviants à travers l\'histoire. En 2023, Gilgamesh était installé avec Thena en Australie quand ses anciens partenaires firent appel à eux pour empêcher l\'Émergence et sauver la Terre. Gilgamesh accompagna ses camarades pour localiser Druig, mais lorsque que son installation fut attaqué par les Déviants, il resta en retrait pour faire face à l\'attaque des monstres et protéger Thena. Toutefois, Gilgamesh fut surpassé au combat et tué par Kro, le leader des Déviants.', 'gilgamesh.jpg', 0),
(52, 'Grandmaster', 'Jeff Goldblum', 'Le Grand Maître est le dirigeant de Sakaar qui possédait une fascination pour les jeux et la manipulation des formes de vies inférieures au sein de son Tournoi des Champions. Quand le Grand Maître récupéra Thor en tant que l\'un de ses nouveaux compétiteurs, il fut horrifié de découvrir que Thor connaissait déjà son actuel champion, Hulk. Comme que le Grand Maître le redoutait, Thor s\'échappa de Sakaar avec Hulk, menant à un soulèvement dans lequel le Grand Maître perdit sa position privilégiée vis-à-vis du peuple de Sakaar', 'grandmaster.png', 0),
(53, 'Justin Hammer', 'Sam Rockwell', 'Justin Hammer est un fournisseur militaire et l\'ancien PDG de Hammer Industries qui a été un puissant rival commercial de Stark Industries. Voulant se retrouver dans une meilleure situation et attaquer Tony Stark, Hammer collabora avec le Sénateur Stern et tenta de fissurer l\'opinion publique envers Stark. Toutefois, sa tentative se retourna contre et l\'image publique de Hammer fut grandement impactée. Furieux envers Stark pour son propre échec, Hammer recruta alors Ivan Vanko, un terroriste reconnu coupable, pour tenter de répliquer la technologie du Réacteur ARC de Stark, mais sa stratégie se retourna à nouveau contre lui lorsque Vanko trahit Hammer, menant ce dernier à se retrouver incarcéré au sein de Pénitencier de Seagate pour son implication dans les actes de Vanko.', 'justinhammer.png', 0);
INSERT INTO `personnage` (`id`, `nom`, `acteur`, `biographie`, `image_personnage`, `id_admin`) VALUES
(54, 'Agatha Harkness', 'Kathryn Hahn', 'Agatha Harkness est une sorcière de Salem, dans le Massachusetts, qui fut accusée d\'avoir pratiqué la magie noire par son couvent durant les procès de sorcières de Salem. Plusieurs centaines d\'années plus tard, en 2023, elle se retrouva enveloppée dans le Hex, créé par Wanda Maximoff. Non affectée par la manipulation mentale sur la population, Harkness fut fascinée et obsédée à l\'idée de contrôler le pouvoir de Maximoff. Vivant au sein de la sitcom WandaVision, Harkness vola la maison de Ralph Bohner et se fit passer pour sa femme de maison, Agnes, une résidente en apparence innocente de Westview et la voisine encombrante de Maximoff, tout en interférant avec son monde idyllique pour ses propres objectifs, en tuant notamment Sparky ou en faisant passer Bohner pour Pietro Maximoff. En réalisant que Wanda était la mythique Sorcière Rouge, elle tenta d\'absorber les pouvoirs de Wanda pour elle. Toutefois, Harkness fut vaincue par Maximoff qui lui lava l\'esprit pour la faire redevenir de nouveau Agnes et l\'emprisonner à Westview.', 'agathaharkness.jpg', 0),
(55, 'Heimdall', 'Idris Elba', 'Heimdall était l\'Asgardien qui voit et qui entend tout et l\'ancien garde du Pont du Bifrost d\'Asgard. Il pouvait voir et entendre presque n\'importe quelles choses se déroulant dans les Neuf Royaumes. Bien qu\'il avait juré d\'obéir aux ordres d\'Odin, Heimdall s\'était préparé à commettre une trahison si cela signifiait la protection des Royaumes, comme lorsqu\'il autorisa les Trois Guerriers à ramener Thor de Midgard pour vaincre Loki.', 'heimdall.png', 0),
(56, 'Hela', 'Cate Blanchett', 'Hela Odinsdottir était la Déesse de la Mort Asgardienne et l\'ancienne Exécutrice d\'Asgard. Emprisonnée dans Hel pendant des millénaires par son père Odin, Hela fut libérée de sa prison dans la foulée de la mort de son père et chercha à restaurer sa puissance sur Asgard, engageant alors simultanément une série de confrontations avec son jeune frère Thor et Loki. Puisant son pouvoir d\'Asgard elle-même, Hela commença à prendre le contrôle Asgard pour créer un Empire Asgardien. Quand l\'ensemble du peuple d\'Asgard refusa de plier le genou devant elle, Hela commença à massacrer les armées d\'Odin et à mettre le peuple en esclavage, recrutant Skurge pour être son Exécuteur personnel. Finalement, Thor revint avec son équipe nouvellement formée de Revengers et attaqua Hela, menant à la libération de Surtur par Loki, qui détruit la totalité d\'Asgard en provoquant le Ragnarök, ce qui tua Hela.', 'hela.png', 0),
(57, 'Maria Hill', 'Cobie Smulders', 'Maria Hill était l\'ancienne directrice adjointe du S.H.I.E.L.D. sous les ordres de Nick Fury et qui portait le titre de Commandante au sein de l\'organisation. Hill appréciait sa réputation qu\'elle estimait méritée et servit fidèlement notamment lorsque Fury monta l\'Initiative Avengers après la destruction du Projet P.E.G.A.S.U.S., bien qu\'elle y croyait moins que lui. Après l\'attaque de l\'Héliporteur où elle défendit l\'appareil face aux hommes de Loki et où Phil Coulson perdit la vie, Hill assista à distance à la Bataille de New York, où les Avengers mirent fin à l\'Invasion Chitauri. Plus tard, Hill aida un Coulson ressuscité par un projet secret à reprendre ses activités au S.H.I.E.L.D. en montant son équipe spécialisée.', 'mariahill.png', 0),
(58, 'Happy Hogan', 'Jon Favreau', 'Harold Joseph « Happy » Hogan est l\'un des amis les plus proches de Tony Stark et son chauffeur personnel qui travaillait auparavant comme son garde du corps personnel et son chef de la sécurité au sein de chez Stark Industries. Hogan était notamment présent pour amener Stark en Afghanistan avant son enlèvement ou pour lui amener son armure pour affronter Whiplash à Monaco. Hogan fut presque être tué lorsqu\'il enquêta de trop près sur Extremis durant la guerre d\'Aldrich Killian, ce qui motiva Stark à se venger du Mandarin qu\'il estimait responsable des blessures de Hogan. Après sa convalescence, Hogan continua de servir loyalement Stark comme employé et ami.', 'happyhogan.png', 0),
(59, 'Michelle Jones', 'Zendaya', 'Michelle Jones-Watson, communément appelée MJ, est une ancienne étudiante du lycée scientifique et technologique de Midtown, qui prenait beaucoup de plaisir à se moquer de tous ses camarades, y compris Peter Parker. En dépit de sa distance sociale et de son caractère bien trempé, Jones reçut l\'opportunité de remplacer Liz Toomes, après son départ, à la tête de l\'équipe du décathlon académique du lycée et commença à s\'ouvrir davantage à ses camarades, se rapprochant notamment de Ned Leeds et de Parker. Jones fut victime du Snap en 2018, mais fut ressuscitée comme toutes les autres victimes lors de l\'Éclipse cinq ans plus tard. Son affection fut convoitée à son retour par Parker et Brad Davis durant le voyage du lycée de Midtown en Europe en 2024. Quand elle déduisit l\'identité secrète de Parker en tant que Spider-Man, Jones l\'aida à comprendre et mettre à jour la supercherie de Mystério qui avait créé de toute pièce les attaques des Élémentaux. Peu après leur voyage en Europe, Jones et Parker commencèrent à sortir ensemble et, lors de leur première sortie, ils découvrirent avec horreur qu\'une vidéo trafiquée Mystério avait révélé au monde entier l\'identité de Spider-Man et l\'accusait des dégâts causés lors de la Bataille de Londres.', 'michellejones.png', 0),
(60, 'Kaecilius', 'Mads Mikkelsen', 'Kaecilius est un sorcier et un ancien membre des Maîtres des Arts Mystiques qui devint déçu par l\'Ancien quand il sentit que son mentor ne permettait pas aux autres dimensions d\'entrer en contact avec la Terre, ce qu\'il pensait être la clé pour être réunit avec sa femme et son fils décédés. Kaecilius forma alors les Zélotes avec pour intention de vaincre l\'Ancien et amener l\'être extra-dimensionnel Dormammu sur Terre. Toutefois, Kaecilius se retrouva défié par ses anciens alliés et par un nouveau Maître des Arts Mystiques, le Docteur Strange. Finalement, Kaecilus fut vaincu par Docteur Strange et ne fit qu\'un avec la Dimension Noire, recevant l\'immortalité qu\'il avait toujours souhaité, mais à un prix horrible qu\'il avait toujours refusé de comprendre.', 'kaecilius.png', 0),
(61, 'Katy Chen', 'Awkawfina', 'Katy Chen, ou Chen Ruiwen (陈瑞雯 en chinois), est une vieille amie de Shang-Chi. Après l\'avoir rencontré au lycée, les deux amis vivaient une vie tranquille à San Francisco où ils travaillèrent comme voituriers ensemble, jusqu\'à ce qu\'elle ne soit projetée dans les conflits de son ami avec son père Xu Wenwu et l\'organisation des Dix Anneaux après avoir été attaqués à bord d\'un bus. Voyageant en Chine avec Shang-Chi, ils approchèrent sa sœur Xu Xialing et firent appel à elle pour les aider avant qu\'ils ne soient capturés par Wenwu. Après être parvenu à s\'échapper avec une voiture volée, Chen conduisit le groupe jusqu\'au au royaume mystique de Ta Lo avec l\'aide de Trevor Slattery et de son animal Morris. Elle s\'entraîna alors au tir à l\'arc en préparation de la bataille à venir, où elle joua un rôle clé en sauvant la Grande Protectrice de l\'Hôte-des-Ténèbres.', 'katychen.jpg', 0),
(62, 'Aldrich Killian', 'Guy Pearce', 'Aldrich Killian était le fondateur et le PDG d\'Advanced Idea Mechanics. Quand Tony Stark refuse de le rejoindre dans ses recherches, Killian participe au développement d\'Extremis, formant un groupe de soldats optimisés par Extremis sous son commandement. Pour masquer ses activités illégales en attaques terroristes, il créé de toute pièce le personnage terroriste idéalisé connu sous le nom de « Mandarin » interprété par l\'acteur britannique Trevor Slattery pour servir ses besoins, ne sachant pas que le Mandarin existe réellement. Il conspirait également avec le Vice Président Rodriguez afin de prendre le contrôle des deux côtés de la Guerre de la Terreur, manipulant chaque camp à son propre profit. Cependant, après avoir kidnappé à la fois Pepper Potts et le Président Matthew Ellis, Killian est confronté par Iron Man qui arrête ses plans avec l\'aide de l\'Iron Legion et de Potts.', 'aldrichkillian.png', 0),
(63, 'Kingo', 'Kumail Nanjiani', 'Kingo est un membre de la communauté des Éternels venus sur Terre. Créé par les Célestes dans la Forge Monde, Kingo fut envoyé sur Terre en 5 000 av. J.-C. pour faire progresser le développement sociétal de la planète et protéger ses habitants des Déviants, un rôle dans lequel il s\'avéra toujours utile. Au fil du temps, Kingo s\'attacha aux humains et s\'installa en Inde pour devenir un acteur, réalisateur et danseur de films à Bollywood. En 2023, Kingo fut approché par ses vieux amis pour aider à empêcher l\'Émergence. Kingo, accompagné par son valet Karun Patel, se joignit aux autres Éternels dans leur mission pour rassembler le reste de l\'équipe, retrouvant alors Thena, Gilgamesh, Druig, Phastos et Makkari. Quand l\'équipe s\'organisa pour arrêter l\'Émergence et aller à l\'encontre de la volonté des Célestes, Kingo commença à douter du plan et accepta la trahison d\'Ikaris. Il décida de quitter le groupe en raison de ses croyances contradictoires et de sa volonté de ne blesser personne. Après que l\'Émergence fut empêchée, Kingo fut amené dans l\'espace avec Phastos et Sersi par Arishem afin que la Terre puisse faire face à son jugement.', 'kingo.jpg', 0),
(64, 'Ulysses Klaue', 'Andy Serkis', 'Ulysses Klaue était un criminel international, gangster et vendeur d\'armes sur le marché noir. En 1992, il collabora avec N\'Jobu afin de voler une quantité importante de vibranium au Wakanda. Bien qu\'il soit parvenu à voler et s\'échapper avec un stock important, il reçut une marque sur le coup de la part des Wakandais. En 2015, Klaue vendit tout son vibranium à Ultron avant se perdre son bras dans une dispute avec lui. Dans le but de remplir son stock, Klaue s\'allia avec Erik Killmonger pour voler d\'avantage de vibranium, alors qu\'il était désormais armé d\'une prothèse de bras armée. Cependant, Klaue était toujours traqué par Black Panther et tous les Dora Milaje, jusqu\'à ce qu\'il ne fut capturé par Everett Ross à l\'issu d\'un affrontement ouvert en Corée du Sud. Ayant été secouru par ses alliés, Klaue fut néanmoins trahit et assassiné par Killmonger comme moyen pour entrer au Wakanda et défier T\'Challa pour le trône.', 'ulyssesklaue.png', 0),
(65, 'Korg', 'Taika Waititi', 'Korg est un guerrier Kronien qui résidait sur Sakaar et qui fut forcé de participer au Tournoi des Champions du Grand Maître. En rencontrant Thor, Korg décida d\'aider le Prince Asgardien à s\'échapper de Sakaar avec Hulk et l\'aide de Valkyrie, en déclenchant et menant une Rébellion contre le Grand Maître. En arrivant sur Asgard avec Loki, Korg aida ensuite à vaincre Hela et ses Berserkers. Bien qu\'ils ressortirent victorieux, ils assistèrent à la destruction d\'Asgard lors du Ragnarök, tandis que Korg et son ami Miek se joignaient au peuple Asgardien dans leur voyage vers la Terre. ', 'korg.png', 0),
(66, 'Cassie Lang', 'Kathryn Newton', 'Cassandra « Cassie » Lang est la fille de Scott et Maggie Lang. Après l\'emprisonnement de son père pour des activités criminelles, Lang resta avec sa mère et son beau-père Jim Paxton, jusqu\'à la réunion familiale après la révélation que son père est le super-héros Ant-Man. Quand Scott Lang fut placé en assignation à résidence pendant 2 ans après la Guerre Civile des Avengers, Cassie passa une bonne partie de son temps avec son père et lui conseilla également de faire de Hope van Dyne sa coéquipière quand il reprit son rôle de Ant-Man. Cependant, son père disparut lors du Snap de Thanos, laissant Cassie toute seule. Cinq ans plus tard, elle retrouva son père, de retour du Royaume Quantique, et également van Dyne quand les Avengers ramenèrent les disparus du Snap.', 'cassielang.png', 0),
(67, 'Laufey', 'Colm Feore', 'Laufey était le Roi des Géants des Glaces de Jotunheim, ainsi que le père biologique de Loki. Après des milliers d\'années de guerre entre Jotunheim et Asgard et alors qu\'il tentait d\'en démarrer une seconde, Laufey fut approché par Loki qui lui offrit l\'opportunité d\'assassiner le Roi Asgardien Odin dans son sommeil. Toutefois, Laufey fut trahi et tué par Loki à l\'aide de Gungnir avant qu\'il ne tente d\'éradiquer l\'entièreté de l\'espèce des Géants des Glaces avec le Bifrost.', 'laufey.jpg', 0),
(68, 'Ned Leeds', 'Jacob Batalon', 'Edward « Ned » Leeds est un ancien étudiant du lycée scientifique et technologique de Midtown. À la suite de la découverte que son meilleur ami Peter Parker était Spider-Man, Leeds s\'employa à aider son ami dans ses aventures héroïque alors qu\'ils tentaient de retrouver et neutraliser le Vautour avant qu\'il ne puisse vendre des technologies hybrides high-tech dans le milieu criminel, mais espérait également utiliser Spider-Man pour améliorer leurs relations sociales dans leur lycée. Leeds était une victime du Snap en 2018, mais fut ramené à la vie par Hulk en 2023. L\'année suivante, Leeds se rendit en voyage scolaire en Europe avec Peter Parker et ses camarades, entamant également une relation avec Betty Brant. Quand leur voyage fut interrompu par les attaques des Élémentaux, Leeds fit de son mieux pour maintenir l\'identité de Parker secrète, bien que Michelle Jones l\'ait découverte, et fut sauvé par Spider-Man et Happy Hogan pendant la Bataille de Londres.', 'nedleeds.png', 0),
(69, 'Darcy Lewis', 'Kat Dennings', 'Le Docteur Darcy Lewis est une ancienne étudiante en sciences politiques à la Culver University qui est devenue une stagiaire pour Erik Selvig et l\'assistante de Jane Foster. En travaillant avec les scientifiques, Lewis entra en contact avec Asgard quand Thor arriva sur Terre, avant d\'être suivi par les Trois Guerriers, Sif et plus tard le Destructeur qui ravagea la ville de Puente Antiguo. Après le départ de Thor, Lewis et Foster concentrèrent toutes leurs travaux et études à essayer de comprendre le fonctionnement du Bifrost. Au cours de leurs études sur la Convergence, Foster se retrouva infectée et Thor revint sur Terre. Lewis aida alors son amie et l\'Asgardien dans leur lutte contre Malekith et les Elfes Noirs. De retour à l\'école, Lewis fut graduée d\'un doctorat en astrophysiques.', 'darcylewis.png', 0),
(70, 'Makkari', 'Lauren Ridloff', 'Makkari est une membre de la communauté des Éternels venus sur Terre doté une immense vitesse. Créée par les Célestes dans la Forge Monde, Makkari fut envoyée sur Terre en 5 000 av. J.-C. pour faire progresser le développement sociétal de la planète et protéger ses habitants des Déviants. En Mésopotamie antique, elle développa une affinité pour Druig ainsi que pour l\'humanité dans son ensemble. En 1529, après avoir complété l\'objectif primordial de vaincre les Déviants, Makkari et les autres Éternels décidèrent de se séparer. Makkari resta installée au sein du Domo, enfoui sous les restes de Babylone en Irak, où elle commença sa quête d\'exploration de la Terre et de la collecte de différents artéfacts et objets. À la suite de l\'Éclipse, Makkari fut sollicitée par Sersi pour se réussir avec les Éternels pour empêcher l\'Émergence. Après avoir empêché Tiamut d\'émerger et de détruire la Terre, et la soudaine disparition de Sersi, Phastos et Kingo, Makkari et les Éternels furent rejoints par Starfox et Pip le Troll, emplis d\'un nouvel espoir.', 'makkari.jpg', 0),
(71, 'Malekith', 'Christopher Eccleston', 'Malekith (Mälekith en Shiväisith) était le leader cruel et complètement malveillant des Elfes Noirs, une race d\'êtres supposés être plus anciens que l\'univers lui-même. Né dans un royaume de ténèbres complets, Malekith dirigea son peuple dans une guerre contre les Asgardiens en utilisant une ancienne arme connu sous le nom d\'Éther, mais ils étaient supposés être détruits depuis des milliers d\'années après une bataille contre le Roi Asgardien Bor. Toutefois, Malekith survécu aux évènements, et après s\'être caché durant des milliers d\'années, et il revint durant la Convergence et chercha de nouveau à récupérer l\'Éther afin d\'utiliser son pouvoir pour transformer l\'univers en le plongeant encore une fois dans l\'obscurité éternelle. Avant que sa tentative ne puisse être achevée, Malekith et ses armées furent vaincues par le petit-fils de Bor, Thor, durant la Bataille de Greenwich, où il fut définitivement tué.', 'malekith.png', 0),
(72, 'Ebony Maw', 'Tom Vaughan-Lawlor', 'Ebony Maw était un membre de l\'Ordre Noir et un fils adoptif de Thanos. Doté de pouvoirs de télékinésie, Maw était profondémment loyal à Thanos et donna des avertissements de son pouvoir à travers toute la galaxie tout en aidant dans la recherche des Pierres d\'Infinités. Après avoir participé au massacre de la moitié des Asgardiens, Maw et Cull Obsidian reçurent pour ordre de localiser la Pierre du Temps, menant Maw à capturer Docteur Strange puis à le torturer pour obtenir la Pierre. Néanmoins, Maw fut vaincu quand Iron Man et Spider-Man vinrent au secours de Strange, amenant Maw à être aspiré dans le vide spatial, mourant sur le coup.', 'ebonymaw.png', 0),
(73, 'Quicksilver', 'Aaron Taylor-Johnson', 'Pietro Maximoff, aussi connu comme Quicksilver, était un natif de la Sokovie qui grandit aux côtés de sa sœur jumelle, Wanda. Enlisé dans des guerres et émeutes constantes, la Sokovie devint la base d\'opérations d\'une cellule d\'HYDRA dirigée par Wolfgang von Strucker. Strucker recruta Pietro et Wanda pour prendre part à une série d\'expériences impliquant la Pierre de l\'Esprit à l\'intérieur du Sceptre, donnant aux jumeaux des super-pouvoirs. Tandis que sa sœur développa une batterie de facultés psioniques, Pietro développa la faculté de se déplacer à des vitesses supersoniques. Après l\'attaque des Avengers contre le centre de recherche d\'HYDRA, les jumeaux s\'associèrent à Ultron pour poursuivre leur quête de vengeance contre Tony Stark, l\'homme qui avait conçu les armes responsables de la mort de leur famille. Toutefois, les jumeaux changèrent brusquement de camp et aidèrent les Avengers quand ils découvrirent les vraies intentions d\'Ultron. Pietro combattit au cours de la Bataille de Sokovie avec tous les autres Avengers, mais il sacrifia sa vie pour protéger Hawkeye et Costel des tirs d\'Ultron, au grand chagrin de sa sœur. Le sacrifice de Pietro ne fut pas vain puisque les Avengers parvinrent à empêcher Ultron d\'enclencher son plan cataclysmique d\'extinction globale.', 'quicksilver.png', 0),
(74, 'M\'Baku', 'Winston Duke', 'Le Seigneur M\'Baku est le chef de la Tribu Jabari, un groupe de Wakandais qui s\'étaient écartés de la société principale du Wakanda et un fervant opposant du pouvoir de T\'Challa, mais échoua à le vaincre lors de l\'affrontement rituel pour le trône, avant de l\'aider à défendre le Wakanda face à Erik Killmonger. Voyant la menace qui représentait Killmonger pour le monde, M\'Baku choisit de sauver la vie de T\'Challa et rassembla ses armées pour l\'aider à vaincre Killmonger dans un combat final. Grâce à ses choix et sa nouvelle amitié avec T\'Challa, M\'Baku siéga au Conseil Tribal.', 'mbaku.png', 0),
(75, 'Mobius M. Mobius', 'Owen Wilson', 'Mobius M. Mobius est un agent du Tribunal des Variations Anachroniques qui s\'était spécialisé dans les enquêtes et les analyses sur des criminels temporels extrêmement dangereux. Après avoir démarré une mission d\'investigation sur Sylvie Laufeydottir, une variante de Loki qui tuait des agents du TVA, Mobius recruta un autre variant de Loki dans l\'espoir qu\'il puisse aider l\'organisation à arrêter son soi-même alternatif. Une amitié bancale se forma entre les deux jusqu\'à ce que Loki ne se joigne à la quête de Sylvie au cours d\'une mission. Après avoir recapturé les deux variants Loki et appris que le TVA lui avait menti et lavé le cerveau, Mobius se joigna brièvement avec eux avant d\'être brouillé par les Minuteurs de Ravonna Renslayer. Après son brouillage, Mobius fut envoyé dans le Néant, où il secoura Sylvie et travailla avec une équipe de variants Loki pour les aider à vaincre Alioth. Alors que la bataille contre Alioth démarrait, Mobius retourna au sein du TVA à travers une porte temporelle pour confronter Renslayer et tenter de renverser l\'organisation. Toutefois, quand le véritable créateur du TVA disparut, Kang le Conquérant prit le contrôle de l\'organisation et re-lava le cerveau de Mobius et de tous les agents de l\'organisation.', 'mobiusm.mobius.jpg', 0),
(76, 'Karl Mordo', 'Chiwetel Ejiofor', 'Karl Mordo est un ancien sorcier des Maîtres des Arts Mystiques qui était devenu un allié proche de l\'Ancien, l\'aidant dans son recrutement et dans l\'entraînement de leurs futurs sorciers. Quand Mordo fit la rencontre de Stephen Strange, il l\'invita à Kamar-Taj, malgré les objections de l\'Ancien, et ils finirent par combattre ensemble contre Kaecilius et les Zélotes. Pendant les affrontements, Mordo découvrit que l\'Ancien puissait son pouvoir de la Dimension Noire, ce qui avait été totalement interdit à tous les autres Maîtres. À l\'issu de la mort de l\'Ancien des mains Kaecilius, qui fut lui-même vaincu avant qu\'il ne parvienne à amener Dormammu sur Terre, Mordo se trouva être tellement mortifié par la trahison de l\'Ancien qu\'il décida de tourner le dos à ses alliés et choisissa d\'utiliser ses pouvoirs pour restaurer l\'équilibre en retirant leur pouvoir aux sorciers.', 'karlmordo.png', 0),
(77, 'Karlu Morgenthau', 'Erin Kellyman', 'Karli Morgenthau était la cheffe du groupe anti-patriotique des Flag Smashers. Orpheline à Madripoor après le Snap, elle fut prise sous la garde de Donya Madani, jusqu\'à ce qu\'elle ne soit diagnostiquée mourante en 2024 après l\'Éclipse. Face à l\'ignorance du monde pour les personnes qui furent affectés par leur disparation et qui furent abandonnés par les différents états et le Conseil Mondial de Rapatriement, Morgenthau lança le mouvement des Flag Smashers avec pour but d\'unifier un monde sans frontières et partager les ressources qui ne recevaient pas le traitement préférentiel du CMR. En lançant son mouvement, elle vola une vingtaine de fioles de sérum de Super-Soldat à Wilfred Nagel, s\'attirant les foudres de Power Broker qui l\'avait recueillie. Ses nombreux crimes en Europe attirèrent l\'attention de Falcon, du Soldat de l\'Hiver, de Captain America et Battlestar. Lors d\'un affrontement, Morgenthau tua accidentellement Battlestar et fit face à la colère vengeresse de John Walker. Morgenthau tenta d\'annuler la ratification des Lois du Rattachement à New York, mais fut finalement tuée par Power Broker, bien que ses idéaux furent respectés par le nouveau Captain America, Sam Wilson, pour changer les mentalités du CMR.', 'karlumorgenthau.jpg', 0),
(78, 'Nakia', 'Lupita Nyong\'o', 'Nakia est une membre des Chiens de Guerre et l\'amoureuse de T\'Challa, qui fut souvent en mission à travers le monde, assistant aux grandes détresses de nombreux peuples et commença à croire avec force que le Wakanda pourrait activement les aider. Elle fut extraite d\'une mission pour assister au couronnement de T\'Challa et prit part à une mission pour arrêter le criminel d\'état Ulysses Klaue. À la suite de leur échec pour l\'appréhender, Nakia s\'exila quand Erik Killmonger prit le trône du Wakanda. Elle retrouva T\'Challa dans les Terres Jabari et l\'aida à reprendre le trône à Killmonger. Alors que T\'Challa décidait d\'ouvrir le Wakanda au reste du monde, Nakia superviserait la politique humanitaire du Wakanda.', 'nakia.png', 0),
(79, 'Erik Killmonger', 'Michael B. Jordan', 'N\'Jadaka, aussi connu comme Erik Stevens, était un ancien Navy SEAL américain d\'origine Wakandaise grâce à son père, le Prince N\'Jobu. La sauvagerie d\'N\'Jdaka durant son service pour les opérations spéciales américaines lui firent obtenir le surnom de Killmonger. Quand Killmonger était enfant, T\'Chaka tua son père pour avoir essayé de tuer Zuri qui l\'avait dénoncé pour avoir trahi le Wakanda. Cet événement conduisit Killmonger à dédier toute sa vie à vouloir détrôner son cousin, T\'Challa, afin de finalement accomplir les objectifs de son père de prendre le contrôle du monde en utilisant toutes les technologies en vibranium du Wakanda pour mettre fin à l\'oppresion des descendants de peuples Africains à travers le monde. Manipulant et tuant Ulysses Klaue pour obtenir accès au royaume, Killmonger sembla tuer T\'Challa lors d\'un combat rituel et récupéra le trône. Juste avant que Killmonger ne puisse libérer ses forces à travers le monde, Black Panther fit son retour et défia Killmonger, le neutralisant et le tuant lors de leur combat final.', 'erikkillmonger.png', 0),
(80, 'Kraglin Obfonteri', 'Sean Gunn', 'Kraglin Obfonteri est le second du clan Ravageur de Yondu Udonta. Il suivait toujours Udonta durant ses activités au sein des Ravageurs et lui demeura loyal à son capitaine durant la traque de Star-Lord, leur ancien partenaire qui s\'était joué d\'eux en volant l\'Orbe. Après des réconciliations avec Star-Lord, Obfonteri se joignit à Udonta et ses camarades, ainsi qu\'aux Gardiens de la Galaxie, pour affronter Ronan l\'Accusateur et ses forces pendant la Bataille de Xandar.', 'kraglinobfonteri.png', 0),
(81, 'Odin', 'Anthony Hopkins', 'Odin Borson était l\'ancien Roi d\'Asgard, protecteur des Neuf Royaumes, père d\'Hela et Thor, père adoptif de Loki et mari de Frigga. Durant les anciens temps, Odin était vénéré comme dieu de la sagesse par les habitants de la Terre. Plus grand guerrier de tous les Neuf Royaumes, Odin apprit au fil des siècles à apprécier la paix, bannissant même sa propre fille Hela sur Hel quand elle tenta de subjuguer l\'univers tout entier. Quand Thor provoqua une nouvelle guerre avec les Géants des Glaces de Jotunheim, Odin lui retira ses pouvoirs divins et l\'exila sur Terre, laissant Loki prendre le trône. Pendant cette période, Odin tomba dans son sommeil, et quand Thor revint et sauva les Géants des Glaces de leur extinction orchestrée par Loki – qui sembla perdre la vie durant l\'affrontement, Odin réalisa que Thor avait prouvé être suffisamment digne pour prendre le trône d\'Asgard.', 'odin.png', 0),
(82, 'May Parker', 'Marisa Tomei', 'Maybelle « May » Parker était la tante Peter Parker et la veuve du défunt Ben Parker. Elle prit la responsibilité d\'élever Peter seule, se tenant à ses côtés lorsque Tony Stark devint son mentor, bien qu\'elle ne connaissait pas les détails derrière son stage chez Stark Industries. Parker découvrit finalement que son fils était en fait Spider-Man, mais accepta son identité secrète. Toutefois, Parker fut tuée durant le Snap, qui emporta également Peter, avant qu\'ils ne soient ressuscités cinq ans plus tard grâce aux actions des Avengers. À la suite de l\'Éclipse, Parker continua à soutenir Peter en tant que Spider-Man, tout en démarrant une relation romantique avec Happy Hogan. Elle prit part activement au sein de sa communauté en travaillant pour l\'armée du salut et le F.E.A.S.T. en trouvant de nouvelles habitations pour ceux qui furent déplacées en retournant à la vie.', 'mayparker.png', 0),
(83, 'Phastos', 'Brian Tyree Henry', 'Phastos est l\'inventeur de la communauté des Éternels venus sur Terre. Créé par les Célestes dans la Forge Monde, Phastos fut envoyé sur Terre en 5 000 av. J.-C. pour faire progresser le développement sociétal de la planète et protéger ses habitants des Déviants. Phastos guida et fit progresser de très nombreuses innovations technologiques à travers le cours de l\'humanité, mais tomba dans un état de dépression après le bombardement atomique d\'Hiroshima, qui mena à de très lourdes pertes humaines. Se blâmant pour la catastrophe, Phastos prit ses distances avec ses camarades Éternels et abandonna son soutien à l\'humanité. À l\'ère contemporaire, Phastos s\'installa et créa une famille avec son mari Ben Stoss, élevant ensemble un fils, Jack. Quand les Éternels terrestres se réassemblèrent pour faire face à une nouvelle vague de Déviants dirigés par Kro, Phastos découvrit à quoi menait son véritable but : préparer l\'Émergence de la Terre, ce qui mènerai à la naissance de Tiamut et à la destruction de la planète. Les Éternels se divisèrent et Phastos décida de protéger la planète pour empêcher l\'Émergence. En choississant de sauver la planète et l\'humanité plutôt que de permettre la naissance d\'un Céleste, Phastos fut enlevé de la Terre par Arishem pour être jugé.', 'phastos.jpg', 0),
(84, 'Alexander Pierce', 'Robert Redford', 'Alexander Goodwin Pierce était un des leaders d\'HYDRA et son meilleur agent sous-couverture au sein du Gouvernement des États-Unis, du S.H.I.E.L.D. et du Conseil de Sécurité Mondial, où il intervint directement à l\'issu de la Bataille de New York et la victoire des Avengers pour récupérer le Sceptre. Il commandait les forces d\'HYDRA au sein du S.H.I.E.L.D., travaillant pour créer un monde tellement chaotique que le peuple lui-même serait prêt à perdre ses libertés au profit du contrôle absolu d\'HYDRA pour sauver leurs vies. Dans ce but, il créa le Projet Insight, un projet qui aurait donner à HYDRA un contrôle absolu sur le monde, incitant le coup d\'état d\'HYDRA. Son plan fut mis en échec par Captain America, Black Widow, Falcon, Maria Hill et Nick Fury durant la Bataille du Triskelion où il fut tué par Fury.', 'alexanderpierce.png', 0),
(85, 'Hank Pym', 'Michael Douglas', 'Le Docteur Henry Jonathan « Hank » Pym est un entomologiste et physicien, qui a développé le costume d’Ant-Man, après avoir découvert les particules Pym. Pendant un temps, il travailla pour le S.H.I.E.L.D. en tant que consultant et devint le tout premier Ant-Man, combattant aux côtés de sa femme, Janet van Dyne, qui avait prit l\'identité de la Guêpe, et prenant à des missions ensembles, notamment une pour capturer leur ancien allié, Elihas Starr. Toutefois, durant une mission pour arrêter un missile de l\'Union Soviétique, Ant-Man assista au sacrifice de la Guêpe pour sauver des millions de vies, celle-ci se retrouvant piégée dans le Royaume Quantique et Pym n\'ayant aucun moyen pour la sauver. Pym changea alors de direction et fonda Pym Technologies tout en prenant sa retraite en tant qu\'Ant-Man, jurant de ne jamais réutiliser son invention et tournant le dos au S.H.I.E.L.D. quand il découvrit qu\'Howard Stark et Mitchell Carson avaient tenté de recréer ses concepts originaux dans son dos pour les besoins du S.H.I.E.L.D.', 'hankpym.png', 0),
(86, 'Monica Rambeau', 'Teyonah Parris', 'La Capitaine Monica Rambeau est la fille de la défunte Maria Rambeau. Durant son enfance, elle était amie avec Carol Danvers, une amie de sa mère, et refusait de croire les rapports qui affirmaient que Danvers avait été tuée dans un mystérieux crash d\'avion. Rambeau fut impressionné et ravie quand Danvers fit son retour six ans plus tard avec des pouvoirs considérables. Rambeau convainquit sa mère de rejoindre Danvers dans une mission pour aider Talos à sauver les réfugiés Skrulls des forces Krees. Avant la mission, Rambeau aida Danvers en choississant les couleurs de son uniforme qu\'elle utilisera plus tard en tant que Captain Marvel.\r\n\r\nAprès que Danvers soit retournée dans l\'espace, Maria fonda le S.W.O.R.D. sur Terre. Rambeau suivit les pas de sa mère en rejoignant aussi le S.W.O.R.D. à l\'âge adulte. En 2018, Rambeau fut tuée lors du Snap alors qu\'elle accompagnait Maria dans ses traitements pour le cancer. Elle revint à la vie cinq ans plus tard, mais découvrit que sa mère était morte à cause de complications de sa maladie. Tout en faisant face au deuil, Rambeau fut menée dans une crise surnaturelle dans la ville de Westview, où elle joua un rôle clé dans le sauvatage de la population piégée dans le Hex forgé par Wanda Maximoff, obtenant des pouvoirs surhumains au passage.', 'monicarambeau.jpg', 0),
(87, 'Ramonda', 'Angela Bassett', 'Ramonda est la Reine Mère du Wakanda, épouse de T\'Chaka et mère de T\'Challa et Shuri. Elle se tenait aux côtés de son fils quand il devint le Roi du Wakanda, mais fut forcée de partir en exil lorsque Erik Killmonger vainquit T\'Challa dans un combat rituel et prit le contrôle du trône. Ramonda s\'enfuya avec Shuri, Nakia et Everett Ross jusqu\'aux Terres Jabari. Là-bas, elle retrouva son fils T\'Challa, qu\'elle sauva grâce aux pouvoirs de l\'Herbe-Cœur. Ramonda resta aux Terres Jabari pendant que T\'Challa et ses alliés partirent combattre Killmonger puis revint finalement à la Cité d\'Or après la victoire de T\'Challa.', 'ramonda.jpg', 0),
(88, 'Ronan l\'Accusateur', 'Lee Pace', 'Ronan était un seigneur de guerre radical de la race Kree et un ancien membre des Accusateurs. En 1995, durant la guerre Kree-Skrull, Ronan travailla avec Yon-Rogg et la Starforce après l\'embuscade sur Torfa pour éradiquer les derniers réfugiés Skrulls. Ronan et les Accusateurs furent appelés pour tirer des missiles ballistiques sur la Terre pour anéantir la dernière opposition Skrull sur place, mais est forcé de battre en retraite quand Captain Marvel lança une contre-offensive contre le Kree, promettant des représailles.', 'ronanlaccusateur.png', 0),
(89, 'Everett Ross', 'Martin Freeman', 'L\'Agent Everett Kenneth Ross est un agent de la CIA et un ancien Commissaire Exécutif à l\'Antiterrorisme pour la Force Conjointe Anti-Terroriste. En collaborant avec Thaddeus Ross, Ross fut chargé de contrôler et réguler les actes des Avengers à la suite de la création des Accords de Sokovie, qui furent conçus pour limiter les actes héroïques après plusieurs missions désastreuses. Toutefois, les objectifs de Ross entrèrent en conflit avec Captain America alors que le Soldat de l\'Hiver était accusé pour un acte terroriste effroyable qu\'il semblait avoir commis. Après que Tony Stark ait révélé qu\'Helmut Zemo était responsable de ces attaques et que Zemo était appréhendé par Black Panther, Ross récupéra la charge de la détention de Zemo.', 'everettross.png', 0),
(90, 'Thaddeus Ross', 'William Hurt', 'Thaddeus E. « Thunderbolt » Ross est l\'ancien Lieutenant-Général de l\'Armée des États-Unis qui est devenu le Secrétaire d\'État du Président Matthew Ellis. Durant sa carrière, il fut placé en charge d\'un projet militaire nommé le Programme de Développement d\'Arme Biotechnique, avec comme objectif principal pour Ross de trouver un moyen de recréer le Sérum de Super-Soldat. Cependant, l\'expérience mena à un accident qui transforma le scientifique Bruce Banner en Hulk. Après une longue traque, Banner fut capturé mais l\'officier subordonné Emil Blonsky utilisa toutes leurs expériences pour se transformer en la monstrueuse Abomination. Face à toutes ces complications, Ross fut contraint d\'accepter Hulk comme allié, le laissant s\'échapper après le combat dans New York, alors que Ross était totalement humilié par une telle défaite désastreuse.', 'thaddeusross.jpg', 0),
(91, 'Crossbones', 'Frank Grillo', 'Brock Rumlow était un infiltré d\'HYDRA qui se faisait passer pour un agent du S.H.I.E.L.D., et le commandant de l\'équipe de terrain STRIKE. En raison de son entraînement à la fois au sein du S.H.I.E.L.D. et d\'HYDRA, Rumlow est devenu un combattant de classe internationale, doté d\'une vaste expérience dans le combat de rue, les arts martiaux et les techniques de combat militaires. À la suite de la Bataille de New York, l\'équipe STRIKE de Rumlow a reçu l\'ordre de ramener le Sceptre à HYDRA. A la suite de cela, Rumlow suivit Captain America dans plusieurs missions jusqu\'à ce que le coup d\'état d\'HYDRA n\'ait lieu et que Rumlow ne reçoive l\'ordre de diriger l\'équipe et d\'assassiner Captain America sous les ordres d\'Alexander Pierce. Finalement, tous les plans d\'HYDRA furent neutralisés et, durant la Bataille du Triskelion, Rumlow fut presque écrasé à mort en combattant contre Sam Wilson, souffrant d\'horribles blessures au visage.', 'crossbones.png', 0),
(92, 'Crâne Rouge', 'Hugo Weaving', 'Johann Schmidt est l\'ancien dirigeant d\'HYDRA, la division spéciale d\'armement des Schutzstaffel Nazi et une incarnation moderne de l\'ancienne société d\'HYDRA. Devenu un conseiller d\'Adolf Hitler durant la Seconde Guerre mondiale, Schmidt développa l\'ambition de devenir l\'homme supérieur, l\'amenant à tester sur lui-même la version inachevée du sérum de Super-Soldat d\'Abraham Erskine, entraînant ainsi une horrible défiguration qui lui valu le nom de Crâne Rouge. Alors qu\'il dirigeait HYDRA, Crâne Rouge découvrit Tesseract qu\'il estimait capable de l\'aider à prendre le contrôle du monde. Néanmoins, les plans de Crâne Rouge furent défiés par le seul Super-Soldat des Alliés, Captain America, qui détruisit les installations d\'HYDRA. Une fois l\'offensive de Crâne Rouge lancée dans le but de mettre les États-Unis à genoux, il fut intercepté par Captain America puis disparu dans un trou de ver après avoir touché le Tesseract à mains nues.', 'crânerouge.png', 0),
(93, 'Erik Selvig', 'Stellan Skarsgård', 'Le Docteur Erik Selvig est un astrophysicien et le professeur de Jane Foster et Darcy Lewis. Selvig était un professeur en astrophysiques théoriques à l\'Université Culver. Tandis qu\'il travaillait aux côtés de Foster et Lewis à propos d\'anomalies astronomiques au Nouveau-Mexique, Selvig rencontra un Asgardien nommé Thor. Peu de temps après cela, Selvig fut recruté comme consultant pour le S.H.I.E.L.D. par Nick Fury afin d\'étudier le Tesseract. Quand Loki, le frère de Thor, commença à envahir la Terre, Selvig entra sous l\'emprise mentale de Loki grâce au Sceptre et participa à ses plans pour ouvrir un portail au dessus de New York. Libéré de son emprise, Selvig aida Black Widow à refermer le portail mais son esprit fut temporairement endommagé et il entra en dépression mentale. Malgré sa folie, ses travaux sur la Convergence lui permirent d\'aider de nouveau Thor durant la Bataille de Greenwich, puis plus tard pour l\'aider à comprendre ses mystérieuses visions pendant l\'Offensive d\'Ultron. Selvig fut finalement recruté pour travailler au sein du Nouveau Complexe des Avengers. Il fit partie des nombreuses victimes de Thanos lors de son Snap en 2018 avant d\'être ramené cinq ans plus tard.', 'erikselvig.png', 0),
(94, 'Sif', 'Jaimie Alexander', 'Dame Sif est une guerrière Asgardienne respectuée et une très bonne amie de Thor et des Trois Guerriers. Quand Thor était sur le point de provoquer une guerre avec les Géants des Glaces et se retrouva sans pouvoirs sur Terre, Sif et ses amis désobéisèrent aux ordres de leur nouveau roi Loki et se rendirent sur Terre pour secourir leur ami. Grâce à eux, Thor retourna sur Asgard et mit fin au règne de terreur de Loki.', 'sif.png', 0),
(95, 'Trevor Slattery', 'Ben Kingsley', 'Trevor Slattery est un acteur qui, alors qu\'il souffrait de sévères troubles légaux et d\'addictions aux drogues, fut approché par le scientifique Aldrich Killian pour se faire passer pour le Mandarin, le terroriste idéaliste parfait. Prenant la responsabilité des accidents d\'ampleurs provoqués par Killian, camouflés en attaques terroristes, sa personne du Mandarin convainquit le peuple qu\'il était aux commandes de la tristement célèbre organisation terroriste des Dix Anneaux, devenant rapidement le terroriste le plus craint dans tout l\'Ouest.', 'trevorslattery.png', 0),
(96, 'Sprite', 'Lia McHugh', 'Sprite est la grandiose narratrice de la communauté des Éternels venus sur Terre, possédant l\'apparence d\'une enfant. Sprtie racontait des histoires à l\'humanité à travers les siècles, créant de nombreux mythes et légendes à travers l\'histoire. En 2023, Sprite vivait aux côtés de Sersi à Londres quand Kro attaqua, l\'obligeant avec Ikaris à chercher Ajak, uniquement pour la retrouver morte. Dans le but d\'empêcher l\'Émergence, les Éternels se reformèrent et Sprite accompagna l\'équipe qui se réunissait avec Thena, Gilgamesh et Druig. À la cache de Druig, Kingo révéla qu\'il avait connaissance du secret de Sprite, à savoir qu\'elle était amoureuse d\'Ikaris mais qu\'il était d\'impossible d\'être avec lui. Quand Ikaris trahit le groupe, Sprite, motivée par son amour, décida de prendre partie pour lui et combattit contre Sersi pour l\'empêcher d\'arrêter l\'Émergence, mais échoua. Après la bataille et le suicide d\'Ikaris, Sersi accepta de transformer Sprite en humaine, afin qu\'elle puisse grandir et vivre la vie qu\'elle avait toujours souhaité.', 'sprite.jpg', 0),
(97, 'Iron Monger', 'Jeff Bridges', 'Obadiah Stane était le collaborateur commercial de Tony Stark et un bon ami de son père, Howard Stark. Après la mort d\'Howard Stark, Stane devint le PDG intérimaire de Stark Industries jusqu\'à ce que Tony Stark ne prenne rapidement la relève. La jalousie de Stane envers le jeune Stark le conduisit à s\'associer à l\'organisation terroriste des Dix Anneaux pour organiser une tentative d\'assassinat ratée pour lui permettre de redevenir PDG. Stane continua à armer les Dix Anneaux avec des armes de Stark Industries pour faciliter leur campagne armée en Afghanistan et notamment à Gulmira. Quand son implication avec les terroristes fut exposée par Pepper Potts, Stane créa l\'armure Iron Monger et tenta de tuer Stark lui-même, menant à sa propre mort.', 'ironmonger.png', 0),
(98, 'Howard Stark', 'Dominic Cooper / John Slattery', 'Howard Anthony Walter Stark était un inventeur, scientifique, ingénieur, entrepreneur et réalisateur de films. Fondateur de Stark Industries, Stark travailla pour plusieurs projets gouvernementaux durant la Seconde Guerre mondiale, notamment le Projet Manhattan et le Projet Renaissance; ce dernier menant à l\'utilisation du sérum de Super-Soldat pour créer Captain America. Fabriquant à Rogers en bouclier en vibranium, Stark l\'aida lui, ainsi que l\'Armée des États-Unis et la Section Scientifique de Réserve, dans le combat contre HYDRA. En recherchant Rogers qui avait disparu, Stark parvint tout de même à retrouver le Tesseract.\r\n\r\n', 'howardstark.png', 0),
(99, 'Fantôme', 'Hannah John-Kamen', 'Ava Starr est la fille d\'Elihas et Catherine Starr, qui avait obtenu la faculté se rendre intangible, invisible et de générer de hauts niveaux d\'énergie à la suite d\'un accident quantique qui avait tué ses parents. À un jeune âge, le S.H.I.E.L.D. commença à prendre avantage de ses pouvoirs pour en faire une agent furtive sous le surnom de Fantôme, avant le Coup d\'état d\'HYDRA. Sous la protection de Bill Foster, Starr réalisa qu\'elle mourait lentement à cause d\'un manque d\'énergie quantique, qu\'elle canalisait constamment et involontairement.', 'fantôme.png', 0),
(100, 'Sylvie Laufeydottir', 'Sophia Di Martino', 'Loki Laufeydottir, plus tard connue comme Sylvie Laufeydottir, est une des variantes de Loki Laufeyson à travers le Multivers. Née en tant que femme, provenant d\'un nexus qui attira l\'attention du Tribunal des Variations Anachroniques, Sylvie parvint à s\'échapper en se cachant dans les apocalypses de différents flux temporels, tout en cherchant à prendre sa revanche contre le TVA et les Gardiens du Temps. Sur le point d\'accomplir enfin son plan, elle fut interrompue par un autre variant Loki, avec qui elle forma finalement une difficile alliance pour survivre à la destruction de Lamentis-1. Sylvie convainquit Loki des mensonges et manipulations du TVA et s\'associèrent pour le combattre, découvrant que les Gardiens du Temps étaient des faux. Avec pour seul et unique allié Loki, Sylvie le suivit jusque dans le Néant après que Ravonna Renslayer l\'y ait envoyé. Ils y découvrirent finalement Celui qui demeure, le véritable créateur du TVA. Malgré les avertissements de Loki sur les conséquences que cela engendrerait, Sylvie accomplit sa vengeance et tua Celui qui demeure, provoquant la division du Multivers et l\'ascension au pouvoir de Kang le Conquérant.', 'sylvielaufeydottir.jpg', 0),
(101, 'Talos', 'Ben Mendelsohn', 'Talos est un commandant Skrull qui a collaboré avec la scientifique Kree rénégate Mar-Vell dans le but de sauver les restes de son peuple des Kree. Alors que la guerre entre les deux espèces fait rage, Talos parvint à récupérer des informations sur le moteur supraluminique de la part de Vers et arriva sur Terre pour le retrouver, ainsi que sa famille depuis longtemps disparue. Sur Terre, Talos confronta Vers et Nick Fury, se déguisant dans la peau du Directeur Keller du S.H.I.E.L.D., mais il fut finalement exposé. Finalement, Talos aida Carol Danvers à réaliser que les Krees l\'avaient manipulée et elle accepta de l\'aider en affrontent la Starforce et en trouvant un nouveau monde pour les Skrulls survivants.', 'talos.png', 0),
(102, 'T\'Chaka', 'John Kani', 'Le Roi T\'Chaka était le dirigeant du Royaume du Wakanda, ayant assumé le trône et le rôle de Black Panther pendant sa jeunesse. Durant sa période en tant que souverain, une petite partie des ressources de vibranium de T\'Chaka furent volées par Ulysses Klaue, amenant T\'Chaka à découvrir que son propre frère N\'Jobu avait aidé Klaue, forçant T\'Chaka à le tuer et à laisser son fils derrière. T\'Chaka retourna ensuite dans son pays et s\'occupa de son royaume, préparant son fils T\'Challa à récupérer le trône.', 'tchaka.png', 0),
(103, 'Thena', 'Angelina Jolie', 'Thena est puissante guerrière membre de la communauté des Éternels venus sur Terre. Créée par les Célestes dans la Forge Monde, Thena fut envoyée sur Terre en 5 000 av. J.-C. avec neuf autres Éternels pour faire progresser le développement sociétal de la planète et protéger ses habitants des Déviants, devenant avec le temps un guerrier légendaire et même une légende grecque. Toutefois, en 1521, en affrontant les derniers Déviants à Tenochtitlan, le Mahd Wy\'ry de Thena lui fit temporairement se retourner contre ses alliés, mais elle fut arrêtée par Gilgamesh. La Première Éternelle Ajak proposa de soigner Thena au prix de ses souvenirs, mais Gilgamesh se porta volontaire pour prendre soin, devenant de fait son partenaire dans un exil forcé. En 2023, Thena vivait aux côtés de Gilgamesh en exil en Australie quand leurs anciens coéquipiers refirent surface pour rassembler l\'équipe et arrêter l\'Émergence. Thena continua à souffrir de son Mahd Wy\'ry et ils découvrirent rapidement qu\'il s\'agissait en fait d\'anciens souvenirs d\'autres mondes disparus, sachant bien au fond d\'elle que la Terre était condamnée. Thena accepta d\'aider les autres Éternels à empêcher l\'Émergence et développa une profonde haine pour le Déviant Kro après qu\'il ait tué Gilgamesh, cherchant à se venger de lui. Durant la bataille contre le traître Ikaris, Thena affronta Kro en face-à-face et le tua, vengeant enfin Gilgamesh. Après avoir empêché l\'Émergence, Thena, aux côtés de Druig et Makkari, voyagèrent dans l\'espace à bord du Domo à la recherche d\'autres Éternels et croisèrent la route de Starfox.', 'thena.jpg', 0),
(104, 'Flash Thompson', 'Tony Revolori', 'Eugene « Flash » Thompson est un ancien étudiant du lycée scientifique et technologique de Midtown. Pendant les cours, Thompson passait son temps à tourmenter son camarade et partenaire de décathlon Peter Parker, en se moquant constamment des affirmations de Parker sur le fait qu\'il travaillait avec Tony Stark et qu\'il connaissait personnellement Spider-Man, ce que Thompson refusait de croire possible. Cependant, l\'admiration de Thompson pour Spider-Man continua à grandir après qu\'il l\'ait sauvé au Washington Monument, mais également lorsqu\'il le rencontra après que le héros ait confronté le Vautour et prit la voiture du père de Thompson.', 'flashthompson.png', 0),
(105, 'Collectionneur', 'Benicio del Toro', 'Taneleer Tivan, bien plus connu comme le Collectionneur, est à la tête du Tivan Group et est renommé pour être le gardien de la plus large collection de faune interstellaire, reliques et espèces dans la galaxie, opérant depuis l\'installation de Knowhere. Grâce à son accord avec les Asgardiens, le Collectionneur entra en possession de la Pierre de Réalité, une des six Pierres d\'Infinités. En passant un nouvel accord avec les Gardiens de la Galaxie, il parvint presque à prendre possession d\'une seconde Pierre, la Pierre du Pouvoir. Des années plus tard, son importance possession attira Thanos qui attaqua son musée et récupéra la Pierre de Réalité.', 'collectionneur.png', 0),
(106, 'Vautour', 'Michael Keaton', 'Adrian Toomes est l\'ancien propriétaire de Bestman Nettoyage, une compagnie de déblaiement basée à New York, qui décida de devenir un criminel après avoir perdu son mode de vie tout entier quand le Damage Control, une co-entreprise entre le gouvernement fédéral et Tony Stark, fut créé et remplaça son entreprise. En recrutant ses collaborateurs et en s\'équipant d\'un exo-costume créé à partir de technologies Chitauris qu\'il avait volé, Toomes prit l\'identité du Vautour et passa les quatre années qui suivirent à voler des armements avancés pour les revendre au marché noir avec Jackson Brice, le Shocker et le Bricoleur. Toutefois, alors que les activités illégales de Toomes furent découvertes par Spider-Man, Toomes fut forcé de traquer le jeune héros. Durant l\'affrontement final, Spider-Man vainquit le Vautour avant sauver sa vie. En guise de gratitude, Toomes refusa de livrer l\'identité secrète aux autres co-détenus, et notamment Mac Gargan, en prison.', 'vautour.png', 0);
INSERT INTO `personnage` (`id`, `nom`, `acteur`, `biographie`, `image_personnage`, `id_admin`) VALUES
(107, 'Yondu Udonta', 'Michael Rooker', 'Le Capitaine Yondu Udonta était un Centaurien, leader d\'une faction exilée des Ravageurs et le père adoptif de Peter Quill. Quand Quill trahit les Ravageurs et vole l\'Orbe pour lui-même, Udonta diriga la traque pour retrouver son ancien allié. Finalement, Udonta rattrapa Quill mais ce dernier le convainquit de l\'aider dans la guerre contre Ronan l\'Accusateur, qui menaçait d\'utiliser la Pierre du Pouvoir au sein de l\'Orbe pour détruire la planète Xandar, mais Quill s\'assura qu\'Udonta ne récupère pas la Pierre d\'Infinité à la fin. Malgré avoir perdu la Pierre, Udonta choisit de ne pas se venger contre Quill, menant à des doutes au sein de ses propres hommes.', 'yonduudonta.png', 0),
(108, 'Ultron', 'James Spader', 'Ultron était une intelligence artificielle d\'un programme de maintien de la paix créé par Tony Stark à partir des codes cryptés dérivées de la Pierre de l\'Esprit encastrée dans le Sceptre de Loki, retravaillé par lui-même et avec l\'aide de Bruce Banner. Les objectifs d\'Ultron étaient de protéger la Terre contre toutes les menaces, qu\'elles soient domestiques ou extraterrestres, pouvant se déclarer à l\'avenir. Possédant de multiples corps hôtes sous son contrôle ainsi qu\'une variante de la personnalité de Stark, Ultron considéra l\'humanité elle-même comme étant la plus grande menace de la Terre et tenta de créer sa propre singularité technologique en commettant un génocide à l\'échelle planétaire, laissant derrière le cataclysme uniquement ses doubles de métal. Avec l\'aide initiale de Pietro et Wanda Maximoff, Ultron fragmenta brièvemment tous les Avengers, mais il fut abandonné par ses alliés lorsqu\'ils découvrirent ses véritables intentions génocidaire. Seul, Ultron tenta d\'utiliser un dispositif composé à la fois de vibranium et de technologies Chitauri pour soulever Novi Grad dans le ciel et l\'utiliser comme météore contre la Terre afin éradiquer l\'humanité toute entière. Ultron réussit presque son objectif, mais il fut vaincu par les Avengers et son plan fut anéanti au dernier moment, tandis que son dernier corps rescapé fut détruit par Vision.', 'ultron.png', 0),
(109, 'Janet van Dyne', 'Michelle Pfeiffer', 'Janet van Dyne est la femme de Hank Pym et la mère de Hope van Dyne. Agissant sous les traits de la Guêpe aux côtés de Pym qui était Ant-Man, van Dyne travailla dans de nombreuses missions pour le S.H.I.E.L.D., notamment une pour capturer leur ancien allié, Elihas Starr. Durant une mission en 1987 pour arrêter un missile balistique intercontinental Soviétique qui se dirigeait vers les États-Unis, van Dyne se sacrifia pour sauver des millions de vies mais se retrouva piégée dans le Royaume Quantique', 'janetvandyne.png', 0),
(110, 'Whiplash', 'Mickey Rourke', 'Ivan Antonovich Vanko (Иван Антонович Ванко en russe) était un physicien Russe et le fils du scientifique disgrâcié Anton Vanko. Quand le père de Vanko mourut péniblement en raison des actes d\'Howard Stark, Vanko jura de se venger contre le propre fils de Stark, Tony Stark et la totalité de la famille Stark pour l\'avoir ruiné et pour l\'humiliation endurée par lui et son père durant toute leurs vies. Il conçut une armure similaire à celle d\'Iron Man dans le but de le vaincre et détruire la réputation de sa famille, devenant Whiplash. Bien que sa première tentative échoua et qu\'il fut arrêté, Vanko s\'allia avec Justin Hammer, qui le recruta pour fabriquer les Hammer Drones que Vanko vola et utilisa contre Stark. Quand il fut définitivement vaincu par Iron Man et War Machine, il se sacrifie finalement dans une tentative finale et désespérée pour détruire l\'héritage de Stark.', 'whiplash.png', 0),
(111, 'Volstagg', 'Ray Stevenson', 'Volstagg était un guerrier Asgardien et un membre des Trois Guerriers. Il était un bon ami de Thor, Sif et de ses camarades guerriers Hogun et Fandral. Aux côtés de ses camarades guerriers, Volstagg prit part à un assaut irréfléchi contre les Géants des Glaces de Jotunheim, ce qui mena rapidement le Roi Odin à décider de directement punir Thor en le banissant sur Terre sans ses pouvoirs. Quand Loki prit le trône d\'Asgard durant le bannissement de Thor, Volstagg et ses alliés jouèrent un rôle clé en sauvant Thor du Destructeur avant de le ramener sur Asgard où il empêcha avec succès Loki d\'usurper le trône d\'Asgard et restaura la paix.', 'volstagg.png', 0),
(112, 'Xu Wenwu', 'Tony Leung Chiu-wai', 'Xu Wenwu (徐文武 en chinois) était une figure légendaire et presque mythique, qui accéda progressivement au pouvoir après avoir découvert un ensemble d\'anneaux mythiques et qui fonda une armée connue comme les Dix Anneaux. Wenwu devint alors un puissant seigneur de guerre qui conquit des royaumes entiers au fil des millénaires, tandis que les anneaux interromptaient sa processus de vieillesse. Durant l\'époque moderne, Wenwu continua à rechercher du pouvoir et se mit en quête de découvrir l\'ancienne cité de Ta Lo. Il tomba alors amoureux de la gardienne des portes de Ta Lo, Ying Li, avec laquelle il eut deux enfants, Xu Shang-Chi et Xu Xialing. Bien qu\'il jura d\'éloigner toute violence de sa famille, Wenwu récupéra finalement ses anneaux à la suite du meurtre de Ying Li des mains du Gang de Fer, entraînant Shang-Chi à devenir son assassin pour venger la mort de sa femme. Toutefois, les deux enfants de Wenwu atteignirent un point de crainte de leur père qui les amena à l\'abandonner.', 'xuwenwu.jpg', 0),
(113, 'Jimmy Woo', 'Randall Park', 'L\'Agent James E. « Jimmy » Woo est un ancien agent du S.H.I.E.L.D. qui fut recruté par le FBI. Woo fut assigné pour devenir l\'officier en charge de Scott Lang pour s\'assurer qu\'il respecte son assignation à résidence après son évasion du Raft. Woo venait régulièrement rendre visite à Lang pour s\'assurer qu\'il n\'enfreignait pas son assignation, tout en traquant dans le même Hope van Dyne et Hank Pym qui étaient en cavale. Quand Lang reprit secrètement ses activités en tant qu\'Ant-Man et libéra van Dyne et Pym de la détention FBI, Woo tenta de l\'interpeller mais il ne parvint pas à prouver sa culpabilité et fut contraint de le libérer lorsque ses deux ans d\'assignation prirent fin.\r\n\r\nEn 2023, directement après l\'Éclipse, Woo enquêta sur une affaire de personnes disparues à Westview, dans le New Jersey, et se retrouva à travailler avec le S.W.O.R.D. comme liaison fédérale quand la population de la ville s\'était mystérieusement volatilisée dans d\'étranges circonstances. Il collabora avec Monica Rambeau et avec l\'astrophysicienne Darcy Lewis pour découvrir que Wanda Maximoff avait pris le contrôle de la ville.', 'jimmywoo.jpg', 0),
(114, 'Yon-Rogg', 'Jude Law', 'Yon-Rogg est un commandant de l\'Empire Kree et le leader de la Starforce, avec pas une once de doute envers l\'Intelligence Suprême et les idéologies Krees. En 1989, Yon-Rogg et Minn-Erva furent envoyés pour tuer Mar-Vell sur Terre, à la recherche d\'un cœur d\'énergie alimenté au Tesseract qu\'elle développait. Yon-Rogg effectua la mission avec succès et prit Vers sous son aile, une pilote de l\'US Air Force qui avait absorbé l\'énergie du coeur durant sa destruction, estimant pouvoir en faire une soldat Kree. En 1995, au cours de la Guerre Kree-Skrull, la Starforce piéga la population Skrull, et notamment Talos, sur C-53. Quand Vers découvrit par la même occasion ses vraies origines sur C-53, Yon-Rogg reçut l\'autorisation de Ronan l\'Accusateur de la capturer. Après avoir échoué à anéantir les réfugiés Skrulls et à reprendre le Tesseract, Yon-Rogg fut vaincu par Vers et fut renvoyé sur Hala avec un message d\'avertissement de la jeune héroïne pour l\'Intelligence Suprême.', 'yon-rogg.png', 0),
(115, 'Baron Zemo', 'Daniel Brühl', 'Le Baron Helmut Zemo est un aristocrate, un ancien Colonel au sein des forces armées Sokoviennes et un ancien commandant de l\'EKO Scorpion. À la suite de la Bataille de Sokovie, Zemo devint un maître terroriste qui souhaitait se venger contre les Avengers après avoir perdu sa famille et devint obsédé à l\'idée de les détruire. Sachant qu\'il ne ferait pas le poids face aux Avengers, Zemo prépara un plan méticuleux pour les détruire de l\'intérieur en faisant accuser le Soldat de l\'Hiver de la mort de T\'Chaka, obligeant Captain America à le défendre face au monde entier. Le plan de Zemo provoqua la Guerre Civile des Avengers, dans laquelle Iron Man dirigea une chasse-à-l\'homme contre Barnes et où Zemo fit découvrir à Stark que Barnes était responsable de la mort de ses parents. Avec les Avengers désormais en ruines, Zemo tenta de se suicider, mais il fut capturé par Black Panther qui le livra à la Force Conjointe Anti-Terroriste pour être emprisonné.', 'baronzemo.png', 0),
(116, 'Arnim Zola', 'Toby Jones', 'Le Docteur Arnim Zola était un scientifique Suisse travaillant pour HYDRA avant, pendant, et après la Seconde Guerre mondiale. À l\'origine, employé des Sturmabteilung Nazi, Zola fut recruté en 1934 par l\'officier Schutzstaffel Johann Schmidt pour devenir le scientifique en chef de l\'organisation HYDRA de Schmidt. Durant la guerre, il conçut de nombreuses armes avancées pour aider HYDRA dans sa quête pour la domination mondiale. Durant les premiers jours de la Seconde Guerre mondiale, Zola fut assigné par Schmidt à l\'étude du Tesseract pour fabriquer de nouvelles armes, que Schmidt espérait utiliser pour renverser le Troisième Reich d\'Adolf Hitler. Cependant, alors que la guerre arrivait à sa fin, Captain America et les Commandos Hurlants attaquèrent Zola dans son train, pour finalement le capturer.', 'arnimzola.png', 0),
(117, 'Dormammu', 'Benedict Cumberbatch', 'Dormammu est une entité primordiale inter-dimensionnelle qui possédaitde des pouvoirs surnaturels de niveaux apocalyptiques et qui régnait sur la Dimension Noire. Dormammu convainquit Kaecilius d\'utiliser son pouvoir pour détruire les Maîtres des Arts Mystiques et amener la Dimension Noire sur Terre. Avant que Dormammu ne puisse compléter ses objectifs, il fut confronté par Docteur Strange, qui utilisa l\'Œil d\'Agamotto pour piéger Dormammu dans une boucle temporelle sans fin, jusqu\'à ce qu\'il n\'accepte de quitter la Terre et d\'amener Kaecilius avec lui.', 'dormammu.png', 0),
(118, 'Goose', 'Gonzo', 'Goose est un Flerken et l\'ancien animal de compagnie de Mar-Vell. À la suite de la mort de sa propriétaire, Goose partit avec Carol Danvers et Nick Fury dans l\'espace, durant leur quête pour retrouver le Laboratoire de Mar-Vell. Après avoir sauvé les réfugiés Skrulls et protéger le Tesseract de la Starforce et des soldats Krees, Goose blessa et fit perdre à Fury son œil gauche à cause de ses griffes. Malgré ce qu\'il s\'est passé, Fury opta pour reprendre la garde de Goose après que Danvers.', 'goose.png', 0),
(119, 'Korath le Poursuivant', 'Djimon Hounsou', 'Korath était un soldat Kree qui servit au sein de la Starforce durant la Guerre Kree-Skrull sous le commandement de Yon-Rogg. En 1995, il aida l\'équipe à affronter une opposition Skrull diminuante. Chargé plus tard d\'acquérir le Tesseract pour le compte de l\'Empire Kree, Korath échoua quand lui et plusieurs de ses coéquipiers furent vaincus par Captain Marvel en orbite de la Terre.\r\n\r\nEn 2014, Korath était un guerrier cybernétiquement avancé qui avait abandonné la Starforce et commencé à travailler directement comme homme de main pour Ronan l\'Accusateur. Chargé par Thanos de retrouver l\'Orbe, Korath rencontra Star-Lord et demeura plus tard loyal à Ronan lorsqu\'il trahit Thanos. Durant la Bataille de Xandar, Korath fut tué par Drax le Destructeur alors que les Gardiens de la Galaxie attaquaient l\'Astre Noir.', 'korathlepoursuivant.png', 0),
(120, 'Luis', 'Michael Peña', 'Luis est le meilleur ami et l\'ancien compagnon de cellule de Scott Lang au sein de la Prison d\'état de San Quentin. Quand Lang sortit de prison, Luis lui proposa de reprendre des activités criminelles aux côtés de Dave et Kurt pour obtenir de l\'argent, ce que Lang refusa dans un premier temps, avant de se ravisser pour aller cambrioler le domicile d\'Hank Pym, où Lang récupéra le costume d\'Ant-Man. Plus tard, Lang et Pym firent appel à Luis et ses camarades pour les aider pour casse au sein du siège de Pym Technologies pour voler le Costume Yellowjacket, où Luis se fit passer pour un garde de la sécurité.\r\n\r\nEn 2018, Luis et ses acolytes abandonnèrent leurs vices criminels pour fonder une société spécialisée en sécurité nommée X-Con Security Consultants, leur permettant d\'avoir un emploi malgré leurs antécédants judiciaires. Luis se retrouva impliqué dans les affaires d\'Ant-Man après avoir été capturé et interrogé par Sonny Burch et ses hommes. Pour se racheter auprès de Lang après avoir livré sa position, Luis aida de nouveau Ant-Man ainsi que sa nouvelle partenaire, la Guêpe, à défendre le laboratoire mobile de Hank Pym de Burch et du Fantôme lors d\'une course poursuite dans les rues de San Francisco.', 'luis.png', 0),
(121, 'L\'Exécuteur', 'Karl Urban', 'Skurge était un ancien guerrier Einherjar qui fut chargé de devenir le gardien du Bifrost par Loki à la suite du bannissement d\'Heimdall. Quand il fut révélé que Loki dirigeait Asgard en secret, Skurge fut rétrogradé et devint concierge. Il fut toutefois recruté par Hela pour devenir son Exécuteur personnel. Néanmoins, la déception de Skurge et son conflit interne pour son nouveau rôle en voyant sa brutalité vis-à-vis de son propre peuple et de la menace qu\'elle représentait pour les Neuf Royaumes lui firent finalement se retourner contre la Déesse de la Mort. Durant ses derniers instants, Skurge combattit contre l\'armée toute entière de Berserkers d\'Hela et permit à son peuple de survivre à la Destruction d\'Asgard au prix de sa vie. Ces actions changèrent finalement Skurge en héros pour Asgard.', 'lexécuteur.png', 0),
(122, 'Ayesha', 'Elizabeth Debicki', 'Ayesha est la Grande Prêtresse Dorée des Souverains. Elle embaucha les Gardiens de la Galaxie pour protéger les Batteries Anulax de l\'Abilisk. Mais après avoir vaincu la créature, Rocket Raccoon vola certaines batteries. Entrant en conflit avec les Gardiens, elle tenta de les tuer en utilisant sa flotte d\'Omnicrafts, mais ils parvinrent à s\'échapper dans un champ d\'astéroïdes quantique. N\'étant pas parvenu à anéantir les Gardiens elle-même, Ayesha embaucha Yondu Udonta et sa propre bande de Ravageurs pour accomplir la tâche, uniquement pour être trahie. Avec les informations obtenues par Taserface, l\'armée d\'Ayesha tenta une nouvelle fois de tuer les Gardiens au beau milieu de la bataille contre Ego, mais échoua une nouvelle fois. Cela força Ayesha à créer Adam Warlock, leur plus grande arme, pour enfin prendre sa revanche sur les Gardiens.', 'ayesha.png', 0),
(123, 'Corvus Glaive', 'Michael James Shaw', 'Corvus Glaive était un des enfants adoptifs de Thanos et un membre de l\'Ordre Noir. Il rejoignit son père dans sa quête des six Pierres d\'Infinités, attaquant tout d\'abord le Statesman avec ses frères et sœurs et participa au massacre des réfugiés Asgardiens à bord pour récupérer la Pierre de l\'Espace. Plus tard, Glaive et Proxima Midnight attaquèrent Vision et Wanda Maixmoff et parvinrent presque à les tuer avant l\'arrivée décisive de Captain America, de Falcon et de Black Widow. Black Widow blessa d\'ailleurs Glaive, ce qui le força à prendre la fuite avec Midnight. Il pourchassa ensuite un Vision blessé durant la Bataille du Wakanda après que Midnight ait fait croire aux Avengers qu\'il avait succombé à ses blessures. Il attaqua Vision et ensuite Captain America, mais Vision l\'empala avec sa propre arme par derrière, ce qui le tua.', 'corvusglaive.png', 0),
(124, 'Dave', 'T.I.', 'Dave est un ami de Scott Lang et de Luis, qui participa au casse de Lang chez Pym Technologies.', 'dave.png', 0),
(125, 'Kurt', 'David Dastmalchian', 'Kurt est un ami de Scott Lang, Luis et Dave qui servait comme hacker dans leur équipe durant leurs braquages. Après avoir fait la rencontre de Scott Lang à sa sortie de prison, Kurt aida à organiser un braquage chez Hank Pym où Lang vola le costume d\'Ant-Man. Quelques temps plus tard, Kurt participa également au casse de Pym Technologies aux côtés de ses amis, de Pym et de Hope van Dyne où il aida à pirater les systèmes de sécurité du bâtiment. Grâce à l\'expérience acquise entre eux, Kurt et ses amis fondèrent X-Con Security Consultants à San Francisco et abandonnèrent leur carrière criminelle. Ils aidèrent de nouveau Ant-Man et la Guêpe à appréhender Sonny Burch.', 'kurt.png', 0),
(126, 'Maria Rambeau', 'Lashana Lynch', 'La Capitaine Maria « Photon » Rambeau était un ancienne pilote de l\'US Air Force et la fondatrice du S.W.O.R.D., ainsi que la mère célibataire de Monica Rambeau. Elle devint la meilleure amie de Carol Danvers, qui fut présummée morte pendant six ans, après un accident qui provoqua le crash de son appareil avec Wendy Lawson. Rambeau retrouva le chemin de son amie Danvers durant la Guerre Kree-Skrull et l\'aida à se rappeler de sa vie d\'avant. Elle l\'aide de nouveau elle, Nick Fury et Talos à retrouver le laboratoire de Mar-Vell et le groupe de réfugiés Skrulls qui se trouvaient à l\'intérieur. Rambeau combattit contre les Krees à l\'intérieur et parvint à sortir en manœuvrant avec un vaisseau spatial, tuant Minn-Erva durant une course poursuite dans le désert des Mojaves. Elle retourna ensuite chez elle, où elle célébra la victoire avec ses nouveaux alliés.', 'mariarambeau.png', 0),
(127, 'Cull Obsidian', 'Terry Notary', 'Cull Obsidian était physiquement le plus puissant des enfants adoptifs de Thanos et un membre de l\'Ordre Noir. Il rejoignit Thanos dans sa quête pour obtenir toutes les Pierres d\'Infinités et affronta notamment Iron Man, Spider-Man, Docteur Strange et Wong pour tenter d\'obtenir la Pierre du Temps mais échoua. Il combattit plus tard dans la Bataille du Wakanda, où il fut tué par Bruce Banner dans une armure Hulkbuster.', 'cullobsidian.png', 0),
(128, 'Proxima', 'Carrie Coon', 'Proxima Midnight était une des filles adoptives de Thanos et une membre de l\'Ordre Noir. Elle rejoignit son père dans sa quête pour les Pierres d\'Infinités, attaquant d\'abord le Statesman avec ses frères et aida à tuer les Asgardiens à bord puis à récupérer la Pierre de l\'Espace. Elle attaqua ensuite Vision et Wanda Maximoff, parvenant presque à les tuer jusqu\'à l\'intervention décisive de Captain America, Falcon et Black Widow. Elle fut forcée de prendre la fuite quand Black Widow blessa Corvus Glaive avant de retourner au combat durant la Bataille du Wakanda. Ellle combattit et tua presque à la fois Okoye et Black Widow avant que Wanda Maximoff n\'utilise ses pouvoirs de télékinésie pour la lancer sur le chemin d\'une batteuse, la tuant sur le coup.', 'proxima.png', 0),
(129, 'Jasper Sitwell', 'Maximiliano Hernández', 'L\'Agent Jasper Sitwell était un infiltré d\'HYDRA, qui se faisait passer pour un agent de haut-rang du S.H.I.E.L.D.. Sitwell fut endoctriné dans les rangs d\'HYDRA en ayant été entraîné à l\'académie Préparatoire d\'HYDRA, moment à partir duquel il devint un agent double au sein des rangs du S.H.I.E.L.D.. Durant ses années de service en travaillant sous-couverture, Sitwell devint un bon ami de Phil Coulson. Il fit également partie des agents assignés à une enquête sur un mystérieux marteau au Nouveau-Mexique lié à l\'Asgardien Thor. À la suite de la Bataille de New York, il fut assigné avec l\'équipe du STRIKE au transport du Sceptre pour HYDRA.', 'jaspersitwell.png', 0);

-- --------------------------------------------------------

--
-- Structure de la table `personnage_oeuvre`
--

DROP TABLE IF EXISTS `personnage_oeuvre`;
CREATE TABLE `personnage_oeuvre` (
  `id_oeuvre` int(10) NOT NULL,
  `id_personnage` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `personnage_oeuvre`
--

INSERT INTO `personnage_oeuvre` (`id_oeuvre`, `id_personnage`) VALUES
(1, 1),
(1, 6),
(1, 9),
(1, 20),
(1, 22),
(1, 58),
(1, 97),
(2, 1),
(2, 2),
(2, 43),
(2, 90),
(3, 1),
(3, 6),
(3, 9),
(3, 20),
(3, 22),
(3, 25),
(3, 53),
(3, 58),
(3, 98),
(3, 110),
(4, 4),
(4, 6),
(4, 9),
(4, 14),
(4, 32),
(4, 49),
(4, 50),
(4, 55),
(4, 67),
(4, 69),
(4, 81),
(4, 93),
(4, 94),
(4, 111),
(4, 129),
(5, 3),
(5, 5),
(5, 9),
(5, 24),
(5, 92),
(5, 98),
(5, 116),
(6, 1),
(6, 2),
(6, 4),
(6, 6),
(6, 9),
(6, 14),
(6, 20),
(6, 24),
(6, 25),
(6, 31),
(6, 32),
(6, 57),
(6, 93),
(6, 129),
(7, 1),
(7, 2),
(7, 20),
(7, 22),
(7, 58),
(7, 62),
(7, 95),
(8, 14),
(8, 24),
(8, 32),
(8, 49),
(8, 50),
(8, 55),
(8, 69),
(8, 71),
(8, 81),
(8, 93),
(8, 94),
(8, 105),
(8, 111),
(9, 3),
(9, 5),
(9, 9),
(9, 16),
(9, 24),
(9, 25),
(9, 36),
(9, 44),
(9, 57),
(9, 84),
(9, 91),
(9, 116),
(9, 129),
(10, 8),
(10, 10),
(10, 11),
(10, 17),
(10, 21),
(10, 23),
(10, 80),
(10, 88),
(10, 105),
(10, 107),
(10, 119),
(11, 1),
(11, 2),
(11, 4),
(11, 9),
(11, 16),
(11, 22),
(11, 24),
(11, 25),
(11, 31),
(11, 32),
(11, 35),
(11, 36),
(11, 55),
(11, 57),
(11, 64),
(11, 73),
(11, 93),
(11, 108),
(12, 3),
(12, 5),
(12, 13),
(12, 24),
(12, 34),
(12, 36),
(12, 45),
(12, 66),
(12, 85),
(12, 98),
(12, 109),
(12, 120),
(12, 124),
(12, 125),
(13, 1),
(13, 3),
(13, 4),
(13, 13),
(13, 16),
(13, 19),
(13, 22),
(13, 24),
(13, 25),
(13, 30),
(13, 35),
(13, 36),
(13, 44),
(13, 82),
(13, 89),
(13, 90),
(13, 91),
(13, 98),
(13, 102),
(13, 115),
(14, 29),
(14, 32),
(14, 37),
(14, 39),
(14, 60),
(14, 76),
(14, 117),
(15, 8),
(15, 10),
(15, 11),
(15, 15),
(15, 17),
(15, 21),
(15, 23),
(15, 48),
(15, 80),
(15, 107),
(15, 122),
(16, 1),
(16, 19),
(16, 20),
(16, 24),
(16, 58),
(16, 59),
(16, 68),
(16, 82),
(16, 104),
(16, 106),
(17, 2),
(17, 14),
(17, 29),
(17, 32),
(17, 33),
(17, 52),
(17, 55),
(17, 56),
(17, 65),
(17, 81),
(17, 111),
(17, 121),
(18, 3),
(18, 18),
(18, 28),
(18, 30),
(18, 64),
(18, 74),
(18, 78),
(18, 79),
(18, 87),
(18, 89),
(18, 102),
(19, 1),
(19, 2),
(19, 3),
(19, 8),
(19, 9),
(19, 10),
(19, 11),
(19, 14),
(19, 15),
(19, 16),
(19, 17),
(19, 18),
(19, 19),
(19, 20),
(19, 21),
(19, 22),
(19, 23),
(19, 24),
(19, 25),
(19, 28),
(19, 29),
(19, 30),
(19, 31),
(19, 32),
(19, 35),
(19, 36),
(19, 37),
(19, 55),
(19, 57),
(19, 58),
(19, 68),
(19, 72),
(19, 74),
(19, 90),
(19, 92),
(19, 123),
(19, 127),
(19, 128),
(20, 13),
(20, 34),
(20, 66),
(20, 85),
(20, 99),
(20, 109),
(20, 113),
(20, 120),
(20, 124),
(20, 125),
(21, 2),
(21, 6),
(21, 7),
(21, 9),
(21, 22),
(21, 86),
(21, 88),
(21, 101),
(21, 114),
(21, 118),
(21, 119),
(21, 126),
(22, 1),
(22, 2),
(22, 3),
(22, 4),
(22, 5),
(22, 7),
(22, 8),
(22, 9),
(22, 10),
(22, 11),
(22, 13),
(22, 14),
(22, 15),
(22, 16),
(22, 17),
(22, 18),
(22, 19),
(22, 20),
(22, 21),
(22, 22),
(22, 23),
(22, 24),
(22, 25),
(22, 28),
(22, 29),
(22, 30),
(22, 31),
(22, 32),
(22, 33),
(22, 36),
(22, 37),
(22, 49),
(22, 57),
(22, 58),
(22, 65),
(22, 66),
(22, 68),
(22, 74),
(22, 80),
(22, 82),
(22, 85),
(22, 87),
(22, 90),
(22, 92),
(22, 109),
(22, 129),
(23, 9),
(23, 19),
(23, 40),
(23, 58),
(23, 59),
(23, 68),
(23, 82),
(23, 101),
(23, 104),
(24, 25),
(24, 41),
(24, 46),
(24, 90),
(25, 2),
(25, 7),
(25, 27),
(25, 37),
(25, 43),
(25, 61),
(25, 95),
(25, 112),
(26, 12),
(26, 26),
(26, 27),
(26, 38),
(26, 47),
(26, 51),
(26, 63),
(26, 70),
(26, 83),
(26, 96),
(26, 103),
(27, 19),
(27, 29),
(27, 37),
(27, 58),
(27, 59),
(27, 68),
(27, 82),
(27, 104),
(28, 16),
(28, 35),
(28, 54),
(28, 69),
(28, 73),
(28, 86),
(28, 113),
(29, 3),
(29, 22),
(29, 36),
(29, 44),
(29, 77),
(29, 115),
(30, 14),
(30, 75),
(30, 100),
(31, 5),
(31, 116),
(32, 4),
(32, 41),
(32, 42);

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
-- Index pour la table `lexique`
--
ALTER TABLE `lexique`
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
-- AUTO_INCREMENT pour la table `lexique`
--
ALTER TABLE `lexique`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT pour la table `oeuvre`
--
ALTER TABLE `oeuvre`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT pour la table `personnage`
--
ALTER TABLE `personnage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

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
