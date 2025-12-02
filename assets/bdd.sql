-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 02 déc. 2025 à 09:17
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `omeka_s`
--

-- --------------------------------------------------------

--
-- Structure de la table `api_key`
--

CREATE TABLE `api_key` (
  `id` varchar(32) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `label` varchar(255) NOT NULL,
  `credential_hash` varchar(60) NOT NULL,
  `last_ip` varbinary(16) DEFAULT NULL COMMENT '(DC2Type:ip_address)',
  `last_accessed` datetime DEFAULT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `api_key`
--

INSERT INTO `api_key` (`id`, `owner_id`, `label`, `credential_hash`, `last_ip`, `last_accessed`, `created`) VALUES
('2TD8L8Kw9ajkgQ0fmLo0A2HTbvnMIsgR', 2, 'Enregistreur Audio 2', '$2y$10$rUgXNgLmuqjcg.ilrTIiJukKVfB9TEGlnXUswgLd56jnbzwwxSWqK', 0x00000000000000000000000000000001, '2025-11-16 12:00:50', '2025-11-16 09:44:47'),
('2xU6w0f1ehPqUtdBs00yxojPjFlkbUk5', 1, 'Enregistreur Audio', '$2y$10$y.SIhhv02dBaEXVcqIdYnONzVJZrsy4rT5yyEYN6N8Hf9NWW8ez8q', 0x00000000000000000000000000000001, '2025-11-14 18:26:52', '2025-11-13 13:40:28');

-- --------------------------------------------------------

--
-- Structure de la table `asset`
--

CREATE TABLE `asset` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `media_type` varchar(255) NOT NULL,
  `storage_id` varchar(190) NOT NULL,
  `extension` varchar(255) DEFAULT NULL,
  `alt_text` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `csvimport_entity`
--

CREATE TABLE `csvimport_entity` (
  `id` int(11) NOT NULL,
  `job_id` int(11) NOT NULL,
  `entity_id` int(11) NOT NULL,
  `resource_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `csvimport_entity`
--

INSERT INTO `csvimport_entity` (`id`, `job_id`, `entity_id`, `resource_type`) VALUES
(1, 24, 1, 'items'),
(2, 24, 2, 'items'),
(3, 24, 3, 'items'),
(6, 33, 6, 'items'),
(7, 34, 7, 'items'),
(8, 35, 8, 'items'),
(9, 36, 9, 'items'),
(10, 37, 10, 'items'),
(11, 37, 11, 'items'),
(12, 37, 12, 'items'),
(13, 38, 13, 'items'),
(14, 39, 14, 'items'),
(15, 40, 15, 'items'),
(16, 41, 16, 'items'),
(17, 42, 17, 'items'),
(18, 42, 18, 'items'),
(19, 42, 19, 'items'),
(20, 43, 20, 'items'),
(21, 44, 21, 'items'),
(22, 45, 22, 'items'),
(23, 46, 23, 'items'),
(24, 47, 24, 'items'),
(25, 48, 25, 'items'),
(26, 49, 26, 'items'),
(27, 50, 27, 'items'),
(28, 51, 28, 'items'),
(29, 52, 29, 'items'),
(30, 53, 30, 'items'),
(31, 54, 31, 'items'),
(32, 56, 32, 'items'),
(33, 57, 33, 'items'),
(34, 58, 34, 'items'),
(35, 59, 35, 'items'),
(36, 60, 36, 'items'),
(37, 61, 37, 'items'),
(38, 62, 38, 'items'),
(39, 63, 39, 'items'),
(40, 64, 40, 'items'),
(41, 65, 41, 'items');

-- --------------------------------------------------------

--
-- Structure de la table `csvimport_import`
--

CREATE TABLE `csvimport_import` (
  `id` int(11) NOT NULL,
  `job_id` int(11) NOT NULL,
  `undo_job_id` int(11) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `resource_type` varchar(255) NOT NULL,
  `has_err` tinyint(1) NOT NULL,
  `stats` longtext NOT NULL COMMENT '(DC2Type:json_array)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `csvimport_import`
--

INSERT INTO `csvimport_import` (`id`, `job_id`, `undo_job_id`, `comment`, `resource_type`, `has_err`, `stats`) VALUES
(1, 24, NULL, '', 'items', 0, '{\"added\":{\"items\":3}}'),
(6, 33, NULL, '', 'items', 0, '{\"added\":{\"items\":1}}'),
(7, 34, NULL, '', 'items', 0, '{\"added\":{\"items\":1}}'),
(8, 35, NULL, '', 'items', 0, '{\"added\":{\"items\":1}}'),
(9, 36, NULL, '', 'items', 0, '{\"added\":{\"items\":1}}'),
(10, 37, NULL, '', 'items', 0, '{\"added\":{\"items\":3}}'),
(11, 38, NULL, '', 'items', 0, '{\"added\":{\"items\":1}}'),
(12, 39, NULL, '', 'items', 0, '{\"added\":{\"items\":1}}'),
(13, 40, NULL, '', 'items', 0, '{\"added\":{\"items\":1}}'),
(14, 41, NULL, '', 'items', 1, '{\"added\":{\"items\":1}}'),
(15, 42, NULL, '', 'items', 0, '{\"added\":{\"items\":3}}'),
(16, 43, NULL, '', 'items', 0, '{\"added\":{\"items\":1}}'),
(17, 44, NULL, '', 'items', 1, '{\"added\":{\"items\":1}}'),
(18, 45, NULL, '', 'items', 1, '{\"added\":{\"items\":1}}'),
(19, 46, NULL, '', 'items', 0, '{\"added\":{\"items\":1}}'),
(20, 47, NULL, '', 'items', 0, '{\"added\":{\"items\":1}}'),
(21, 48, NULL, '', 'items', 0, '{\"added\":{\"items\":1}}'),
(22, 49, NULL, '', 'items', 0, '{\"added\":{\"items\":1}}'),
(23, 50, NULL, '', 'items', 0, '{\"added\":{\"items\":1}}'),
(24, 51, NULL, '', 'items', 0, '{\"added\":{\"items\":1}}'),
(25, 52, NULL, '', 'items', 1, '{\"added\":{\"items\":1}}'),
(26, 53, NULL, '', 'items', 0, '{\"added\":{\"items\":1}}'),
(27, 54, NULL, '', 'items', 0, '{\"added\":{\"items\":1}}'),
(28, 55, NULL, '', 'items', 0, '{\"skipped\":{\"items\":1}}'),
(29, 56, NULL, '', 'items', 0, '{\"added\":{\"items\":1}}'),
(30, 57, NULL, '', 'items', 0, '{\"added\":{\"items\":1}}'),
(31, 58, NULL, '', 'items', 0, '{\"added\":{\"items\":1}}'),
(32, 59, NULL, '', 'items', 0, '{\"added\":{\"items\":1}}'),
(33, 60, NULL, '', 'items', 0, '{\"added\":{\"items\":1}}'),
(34, 61, NULL, '', 'items', 0, '{\"added\":{\"items\":1}}'),
(35, 62, NULL, '', 'items', 0, '{\"added\":{\"items\":1}}'),
(36, 63, NULL, '', 'items', 0, '{\"added\":{\"items\":1}}'),
(37, 64, NULL, '', 'items', 0, '{\"added\":{\"items\":1}}'),
(38, 65, NULL, '', 'items', 0, '{\"added\":{\"items\":1}}');

-- --------------------------------------------------------

--
-- Structure de la table `fulltext_search`
--

CREATE TABLE `fulltext_search` (
  `id` int(11) NOT NULL,
  `resource` varchar(190) NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL,
  `title` longtext DEFAULT NULL,
  `text` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `fulltext_search`
--

INSERT INTO `fulltext_search` (`id`, `resource`, `owner_id`, `is_public`, `title`, `text`) VALUES
(17, 'items', 1, 1, 'Alice Dupont', '1\nAlice Dupont\nalice.dupont@mail.com\nEtudiant'),
(18, 'items', 1, 1, 'Marc Bernard', '2\nMarc Bernard\nmarc.bernard@univ.fr\nChercheur'),
(19, 'items', 1, 1, 'Sarah Lambert', '3\nSarah Lambert\nsarah.lambert@mail.com\nAdministrateur'),
(39, 'items', 1, 1, 'Entretien avec un artisan', '1\nEntretien avec un artisan\n2025-10-01\nAlice Dupont'),
(40, 'items', 1, 1, 'fr', '1\nBonjour, je m\'appelle Ahmed Benali, je suis artisan potier depuis plus de vingt ans ici, dans le village d\'Azrou. J\'ai appris le métier de mon père, qui lui-même le tenait de son grand-père. Mon travail consiste à façonner la terre pour créer des poteries traditionnelles marocaines, comme les tajines, les vases ou les assiettes décorées. Chaque pièce est unique, parce qu\'elle est faite à la main, sans machine. La partie la plus difficile, c\'est la cuisson : il faut surveiller la température du four, sinon la terre se fissure. Aujourd\'hui, j\'essaie aussi de former les jeunes du village, pour que cet artisanat ne disparaisse pas. C\'est un savoir-faire qui raconte notre culture et notre histoire.\nfr\nEntretien avec un artisan'),
(41, 'items', 1, 1, 'en', '1\nHello, my name is Ahmed Benali, I have been a pottery craftsman for more than twenty years here in the village of Azrou. I learned the craft from my father, who in turn learned it from his grandfather. My work consists in shaping clay to create traditional Moroccan pottery such as tagines, vases, and decorated plates. Each piece is unique because it is handmade, without machines. The most difficult part is firing: you have to monitor the oven temperature carefully, otherwise the clay cracks. Today, I also try to train the young people of the village so that this craft does not disappear. It is a know-how that tells our culture and our history.\nen\nfr'),
(45, 'items', 1, 1, 'Entretien9', 'Entretien9\nEntretien9\n2025-11-14\nAlice Dupont'),
(46, 'media', 1, 1, NULL, ''),
(47, 'items', 1, 1, 'Entretien10', 'Entretien10\n2025-11-14\nMarc Bernard\nEntretien10\n'),
(48, 'media', 1, 1, NULL, ''),
(49, 'items', 1, 1, 'Entretien11', 'Entretien11\n2025-11-14\nAlice Dupont\nEntretien11\n'),
(50, 'media', 1, 1, NULL, ''),
(51, 'items', 1, 1, 'Entretien30', 'Entretien30\n2025-11-14\nAlice Dupont\nEntretien30\n'),
(52, 'media', 1, 1, NULL, ''),
(53, 'items', 1, 1, 'Entretien112', 'Entretien112\n2025-11-14\nAlice Dupont\nEntretien112\n'),
(54, 'media', 1, 1, NULL, ''),
(55, 'items', 2, 1, 'Entretien33', 'Entretien33\n2025-11-16\nAlice Dupont\nEntretien33\n'),
(56, 'media', 2, 1, NULL, ''),
(57, 'items', 2, 1, 'Entretien32', 'Entretien32\n2025-11-16\nAlice Dupont\nEntretien32\n'),
(58, 'media', 2, 1, NULL, ''),
(59, 'items', 1, 1, NULL, 'Entretien3\n2025-11-28'),
(60, 'items', 1, 1, NULL, 'Entretien1122\n2025-11-28'),
(61, 'items', 1, 1, 'exp1.mp3', 'Audio - exp1.mp3\nexp1.mp3\n2025-11-29T10:09:54 29 novembre 2025 à 10:09:54'),
(62, 'items', 1, 1, 'exp1.mp3', 'Audio - exp1.mp3\nexp1.mp3\n2025-11-29T10:12:28 29 novembre 2025 à 10:12:28'),
(63, 'items', 1, 1, 'exp1.mp3', 'Audio - exp1.mp3\nexp1.mp3\n2025-11-29T10:17:10 29 novembre 2025 à 10:17:10'),
(64, 'items', 1, 1, 'exp1.mp3', 'Audio - exp1.mp3\nexp1.mp3\n2025-11-29T10:19:49 29 novembre 2025 à 10:19:49'),
(65, 'items', 1, 1, 'exp1.mp3', 'Audio - exp1.mp3\nexp1.mp3\n2025-11-29T10:24:22 29 novembre 2025 à 10:24:22'),
(66, 'items', 1, 1, 'exp1.mp3', 'Audio - exp1.mp3\nexp1.mp3\n2025-11-29T10:28:26 29 novembre 2025 à 10:28:26'),
(67, 'items', 1, 1, 'exp1.mp3', 'Audio - exp1.mp3\nexp1.mp3\n2025-11-29T10:29:26 29 novembre 2025 à 10:29:26'),
(68, 'items', 1, 1, 'exp1.mp3', 'Audio - exp1.mp3\nexp1.mp3\n2025-11-29T10:35:32 29 novembre 2025 à 10:35:32'),
(69, 'items', 1, 1, 'fr', 'Transcription de Audio #68\nBonjour, je m\'appelle Amètre Benali, je suis artiste en potier depuis plus de 20 ans ici, dans le village d\'Azrou.\r\nJ\'ai appris le métier de mon père, qui lui-même le tenait de son grand-père.\r\nMon travail consiste à façonner la terre pour créer des poteries traditionnelles marocaines,\r\ncomme les tajines, les vase ou les assiettes décorées.\r\nChaque pièce est unique, parce qu\'elle est faite à la main, sans machine.\r\nLa partie la plus difficile, c\'est la cuisson.\r\nIl faut surveiller la température du four, sinon la terre se fissure.\r\nAujourd\'hui, j\'essaie aussi de former les jeunes du village pour que cet artisanat ne disparaisse pas.\r\nC\'est un savoir-faire qui raconte notre culture et notre histoire.\nfr\nexp1.mp3'),
(70, 'items', 1, 1, 'en', 'Traduction de Transcription #69\nHello, my name is Ameter Benali, I have been a potter artist for over 20 years here in the village of Azrou.\nI learned my father\'s job, which he himself held from his grandfather.\nMy job is to shape the earth to create traditional Moroccan pottery,\nlike tajins, vases or decorated plates.\nEach piece is unique, because it is handmade, without a machine.\nThe hardest part is cooking.\nYou have to monitor the oven temperature, otherwise the earth cracks.\nToday, I am also trying to train young people in the village so that this craft does not disappear.\nIt is a know-how that tells our culture and our history.\nen\nfr'),
(71, 'items', 1, 1, 'exp1.mp3', 'Audio - exp1.mp3\nexp1.mp3\n2025-11-29T11:38:33 29 novembre 2025 à 11:38:33'),
(72, 'items', 1, 1, 'fr', 'Transcription de Audio #71\nBonjour, je m\'appelle Amètre Benali, je suis artiste en potier depuis plus de 20 ans ici, dans le village d\'Azrou.\r\nJ\'ai appris le métier de mon père, qui lui-même le tenait de son grand-père.\r\nMon travail consiste à façonner la terre pour créer des poteries traditionnelles marocaines,\r\ncomme les tajines, les vase ou les assiettes décorées.\r\nChaque pièce est unique, parce qu\'elle est faite à la main, sans machine.\r\nLa partie la plus difficile, c\'est la cuisson.\r\nIl faut surveiller la température du four, sinon la terre se fissure.\r\nAujourd\'hui, j\'essaie aussi de former les jeunes du village pour que cet artisanat ne disparaisse pas.\r\nC\'est un savoir-faire qui raconte notre culture et notre histoire.\nfr\nexp1.mp3'),
(73, 'items', 1, 1, 'en', 'Traduction de Transcription #72\nHello, my name is Ameter Benali, I have been a potter artist for over 20 years here in the village of Azrou.\nI learned my father\'s job, which he himself held from his grandfather.\nMy job is to shape the earth to create traditional Moroccan pottery,\nlike tajins, vases or decorated plates.\nEach piece is unique, because it is handmade, without a machine.\nThe hardest part is cooking.\nYou have to monitor the oven temperature, otherwise the earth cracks.\nToday, I am also trying to train young people in the village so that this craft does not disappear.\nIt is a know-how that tells our culture and our history.\nen\nfr'),
(74, 'items', 1, 1, 'exp1.mp3', 'exp1.mp3\nexp1.mp3\n2025-11-29T11:43:12 29 novembre 2025 à 11:43:12'),
(75, 'items', 1, 1, 'exp1.mp3', 'Audio - exp1.mp3\nexp1.mp3\n2025-11-29T13:11:27 29 novembre 2025 à 13:11:27'),
(76, 'items', 1, 1, 'fr', 'Transcription de Audio #75\nBonjour, je m\'appelle Amètre Benali, je suis artiste en potier depuis plus de 20 ans ici, dans le village d\'Azrou.\r\nJ\'ai appris le métier de mon père, qui lui-même le tenait de son grand-père.\r\nMon travail consiste à façonner la terre pour créer des poteries traditionnelles marocaines,\r\ncomme les tajines, les vase ou les assiettes décorées.\r\nChaque pièce est unique, parce qu\'elle est faite à la main, sans machine.\r\nLa partie la plus difficile, c\'est la cuisson.\r\nIl faut surveiller la température du four, sinon la terre se fissure.\r\nAujourd\'hui, j\'essaie aussi de former les jeunes du village pour que cet artisanat ne disparaisse pas.\r\nC\'est un savoir-faire qui raconte notre culture et notre histoire.\nfr\nexp1.mp3'),
(77, 'items', 1, 1, 'ar', 'Traduction de Transcription #76\nمرحباً، اسمي (أميتر بينالي)، لقد كنت فناناً أكثر من 20 عاماً هنا في قرية (أزرو).\nلقد تعلمت عمل والدي وهو نفسه من جده\nعملي هو تشكيل الأرض لخلق بوتي المغربي التقليدي\nمثل تاجينز أو زهريات أو لوحات زينة\nكل قطعة فريدة لأنها مصنوعة يدوياً بدون آلة\nالجزء الأصعب هو الطبخ\nيجب أن تراقب درجة حرارة الفرن وإلا تشق الأرض\nواليوم، أحاول أيضا تدريب الشباب في القرية حتى لا تختفي هذه المركبة.\nإنها دراية تخبر ثقافتنا وتاريخنا.\nar\nfr'),
(78, 'items', 1, 1, NULL, 'exp1.mp3\nexp1.mp3'),
(79, 'media', 1, 1, 'exp1.mp3', 'exp1.mp3'),
(80, 'items', 1, 1, 'fr', 'Transcription de exp1.mp3\nBonjour, je m\'appelle Amètre Benali, je suis artiste en potier depuis plus de 20 ans ici, dans le village d\'Azrou.\r\nJ\'ai appris le métier de mon père, qui lui-même le tenait de son grand-père.\r\nMon travail consiste à façonner la terre pour créer des poteries traditionnelles marocaines,\r\ncomme les tajines, les vase ou les assiettes décorées.\r\nChaque pièce est unique, parce qu\'elle est faite à la main, sans machine.\r\nLa partie la plus difficile, c\'est la cuisson.\r\nIl faut surveiller la température du four, sinon la terre se fissure.\r\nAujourd\'hui, j\'essaie aussi de former les jeunes du village pour que cet artisanat ne disparaisse pas.\r\nC\'est un savoir-faire qui raconte notre culture et notre histoire.\nfr\n'),
(81, 'items', 1, 1, 'es', 'Traduction (es) de exp1.mp3\nHola, me llamo Ameter Benali, he sido un artista de alfareros durante más de 20 años aquí en el pueblo de Azrou.\nAprendí el trabajo de mi padre, que él mismo mantenía de su abuelo.\nMi trabajo es formar la tierra para crear cerámica marroquí tradicional,\ncomo tajins, vasijas o platos decorados.\nCada pieza es única, porque es hecha a mano, sin una máquina.\nLa parte más difícil es cocinar.\nTienes que controlar la temperatura del horno, de lo contrario la tierra se rompe.\nHoy, también estoy tratando de entrenar a los jóvenes en el pueblo para que esta artesanía no desaparezca.\nEs un conocimiento que cuenta nuestra cultura y nuestra historia.\nes\nfr'),
(82, 'items', 1, 1, NULL, '82\nexp1.mp3\nexp1.mp3'),
(83, 'media', 1, 1, 'exp1.mp3', 'exp1.mp3'),
(84, 'items', 1, 1, NULL, '84'),
(85, 'items', 1, 1, NULL, '85'),
(86, 'items', 1, 1, NULL, '86\nexp1.mp3\nexp1.mp3'),
(87, 'media', 1, 1, 'exp1.mp3', 'exp1.mp3'),
(88, 'items', 1, 1, NULL, '88'),
(89, 'items', 1, 1, NULL, '89'),
(90, 'items', 1, 1, 'exp1.mp3', 'exp1.mp3\nexp1.mp3\n2025-11-29\nexp1.mp3'),
(91, 'media', 1, 1, 'exp1.mp3', 'exp1.mp3'),
(92, 'items', 1, 1, 'fr', 'Transcription de exp1.mp3\nBonjour, je m\'appelle Amètre Benali, je suis artiste en potier depuis plus de 20 ans ici, dans le village d\'Azrou.\r\nJ\'ai appris le métier de mon père, qui lui-même le tenait de son grand-père.\r\nMon travail consiste à façonner la terre pour créer des poteries traditionnelles marocaines,\r\ncomme les tajines, les vase ou les assiettes décorées.\r\nChaque pièce est unique, parce qu\'elle est faite à la main, sans machine.\r\nLa partie la plus difficile, c\'est la cuisson.\r\nIl faut surveiller la température du four, sinon la terre se fissure.\r\nAujourd\'hui, j\'essaie aussi de former les jeunes du village pour que cet artisanat ne disparaisse pas.\r\nC\'est un savoir-faire qui raconte notre culture et notre histoire.\nfr\nexp1.mp3'),
(93, 'items', 1, 1, 'ar', 'Traduction (ar) de exp1.mp3\nمرحباً، اسمي (أميتر بينالي)، لقد كنت فناناً أكثر من 20 عاماً هنا في قرية (أزرو).\nلقد تعلمت عمل والدي وهو نفسه من جده\nعملي هو تشكيل الأرض لخلق بوتي المغربي التقليدي\nمثل تاجينز أو زهريات أو لوحات زينة\nكل قطعة فريدة لأنها مصنوعة يدوياً بدون آلة\nالجزء الأصعب هو الطبخ\nيجب أن تراقب درجة حرارة الفرن وإلا تشق الأرض\nواليوم، أحاول أيضا تدريب الشباب في القرية حتى لا تختفي هذه المركبة.\nإنها دراية تخبر ثقافتنا وتاريخنا.\nar\nfr'),
(94, 'items', 1, 1, 'exp1.mp3', 'exp1.mp3\nexp1.mp3\n2025-11-30\nexp1.mp3'),
(95, 'media', 1, 1, 'exp1.mp3', 'exp1.mp3'),
(96, 'items', 1, 1, 'fr', 'Transcription de exp1.mp3\nBonjour, je m\'appelle Amètre Benali, je suis artiste en potier depuis plus de 20 ans ici, dans le village d\'Azrou.\r\nJ\'ai appris le métier de mon père, qui lui-même le tenait de son grand-père.\r\nMon travail consiste à façonner la terre pour créer des poteries traditionnelles marocaines,\r\ncomme les tajines, les vase ou les assiettes décorées.\r\nChaque pièce est unique, parce qu\'elle est faite à la main, sans machine.\r\nLa partie la plus difficile, c\'est la cuisson.\r\nIl faut surveiller la température du four, sinon la terre se fissure.\r\nAujourd\'hui, j\'essaie aussi de former les jeunes du village pour que cet artisanat ne disparaisse pas.\r\nC\'est un savoir-faire qui raconte notre culture et notre histoire.\nfr\nexp1.mp3'),
(97, 'items', 1, 1, 'ar', 'Traduction (ar) de exp1.mp3\nمرحباً، اسمي (أميتر بينالي)، لقد كنت فناناً أكثر من 20 عاماً هنا في قرية (أزرو).\nلقد تعلمت عمل والدي وهو نفسه من جده\nعملي هو تشكيل الأرض لخلق بوتي المغربي التقليدي\nمثل تاجينز أو زهريات أو لوحات زينة\nكل قطعة فريدة لأنها مصنوعة يدوياً بدون آلة\nالجزء الأصعب هو الطبخ\nيجب أن تراقب درجة حرارة الفرن وإلا تشق الأرض\nواليوم، أحاول أيضا تدريب الشباب في القرية حتى لا تختفي هذه المركبة.\nإنها دراية تخبر ثقافتنا وتاريخنا.\nar\nfr');

-- --------------------------------------------------------

--
-- Structure de la table `item`
--

CREATE TABLE `item` (
  `id` int(11) NOT NULL,
  `primary_media_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `item`
--

INSERT INTO `item` (`id`, `primary_media_id`) VALUES
(17, NULL),
(18, NULL),
(19, NULL),
(39, NULL),
(40, NULL),
(41, NULL),
(45, NULL),
(59, NULL),
(60, NULL),
(61, NULL),
(62, NULL),
(63, NULL),
(64, NULL),
(65, NULL),
(66, NULL),
(67, NULL),
(68, NULL),
(69, NULL),
(70, NULL),
(71, NULL),
(72, NULL),
(73, NULL),
(74, NULL),
(75, NULL),
(76, NULL),
(77, NULL),
(78, NULL),
(80, NULL),
(81, NULL),
(82, NULL),
(84, NULL),
(85, NULL),
(86, NULL),
(88, NULL),
(89, NULL),
(90, NULL),
(92, NULL),
(93, NULL),
(94, NULL),
(96, NULL),
(97, NULL),
(47, 48),
(49, 50),
(51, 52),
(53, 54),
(55, 56),
(57, 58);

-- --------------------------------------------------------

--
-- Structure de la table `item_item_set`
--

CREATE TABLE `item_item_set` (
  `item_id` int(11) NOT NULL,
  `item_set_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `item_set`
--

CREATE TABLE `item_set` (
  `id` int(11) NOT NULL,
  `is_open` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `item_site`
--

CREATE TABLE `item_site` (
  `item_id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `job`
--

CREATE TABLE `job` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `pid` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `class` varchar(255) NOT NULL,
  `args` longtext DEFAULT NULL COMMENT '(DC2Type:json_array)',
  `log` longtext DEFAULT NULL,
  `started` datetime NOT NULL,
  `ended` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `job`
--

INSERT INTO `job` (`id`, `owner_id`, `pid`, `status`, `class`, `args`, `log`, `started`, `ended`) VALUES
(24, 1, '304', 'completed', 'CSVImport\\Job\\Import', '{\"filename\":\"utilisateur.csv\",\"filesize\":\"193\",\"filepath\":\"C:\\\\omeka\\\\temp\\\\ome8959.tmp\",\"media_type\":\"text\\/csv\",\"resource_type\":\"items\",\"comment\":\"\",\"automap_check_names_alone\":true,\"column\":[\"o2t:idUtilisateur\",\"o2t:nom\",\"o2t:email\",\"o2t:role\"],\"column-property\":[{\"o2t:idUtilisateur\":219},{\"o2t:nom\":220},{\"o2t:email\":221},{\"o2t:role\":222}],\"generic-data\":\"default\",\"media-source\":\"default\",\"resource-identifier-property\":\"\",\"o:resource_template\":{\"o:id\":2},\"o:resource_class\":{\"o:id\":114},\"o:owner\":{\"o:id\":1},\"o:is_public\":1,\"multivalue_separator\":\",\",\"global_language\":\"\",\"action\":\"create\",\"identifier_column\":0,\"identifier_property\":\"\",\"action_unidentified\":\"skip\",\"rows_by_batch\":20,\"column-multivalue\":[],\"delimiter\":\",\",\"enclosure\":\"\\\"\",\"escape\":\"\\\\\"}', NULL, '2025-10-23 16:28:47', '2025-10-23 16:35:12'),
(33, 1, '780', 'completed', 'CSVImport\\Job\\Import', '{\"filename\":\"audio.csv\",\"filesize\":\"143\",\"filepath\":\"C:\\\\omeka\\\\temp\\\\ome5BE3.tmp\",\"media_type\":\"text\\/csv\",\"resource_type\":\"items\",\"comment\":\"\",\"automap_check_names_alone\":true,\"column\":[\"o2t:idAudio\",\"o2t:titre\",\"o2t:fichier\",\"o2t:dateUpload\",\"o2t:aPourUtilisateur\"],\"column-property\":[{\"o2t:idAudio\":223},{\"o2t:titre\":224},{\"o2t:fichier\":225},{\"o2t:dateUpload\":226},{\"o2t:aPourUtilisateur\":227}],\"generic-data\":\"default\",\"media-source\":\"default\",\"resource-identifier-property\":\"\",\"o:resource_template\":{\"o:id\":3},\"o:resource_class\":{\"o:id\":115},\"o:owner\":{\"o:id\":1},\"o:is_public\":1,\"multivalue_separator\":\",\",\"global_language\":\"\",\"action\":\"create\",\"identifier_column\":0,\"identifier_property\":\"\",\"action_unidentified\":\"skip\",\"rows_by_batch\":20,\"column-multivalue\":[],\"delimiter\":\",\",\"enclosure\":\"\\\"\",\"escape\":\"\\\\\"}', NULL, '2025-10-23 18:01:29', '2025-10-23 18:01:30'),
(34, 1, '11760', 'completed', 'CSVImport\\Job\\Import', '{\"filename\":\"audio.csv\",\"filesize\":\"143\",\"filepath\":\"C:\\\\omeka\\\\temp\\\\ome3132.tmp\",\"media_type\":\"text\\/csv\",\"resource_type\":\"items\",\"comment\":\"\",\"automap_check_names_alone\":true,\"column\":[\"o2t:idAudio\",\"o2t:titre\",\"o2t:fichier\",\"o2t:dateUpload\",\"o2t:aPourUtilisateur\"],\"column-property\":[{\"o2t:idAudio\":223},{\"o2t:titre\":224},{\"o2t:fichier\":225},{\"o2t:dateUpload\":226},{\"o2t:aPourUtilisateur\":227}],\"generic-data\":\"default\",\"media-source\":\"default\",\"resource-identifier-property\":\"\",\"o:resource_template\":{\"o:id\":3},\"o:resource_class\":{\"o:id\":115},\"o:owner\":{\"o:id\":1},\"o:is_public\":1,\"multivalue_separator\":\",\",\"global_language\":\"\",\"action\":\"create\",\"identifier_column\":0,\"identifier_property\":\"\",\"action_unidentified\":\"skip\",\"rows_by_batch\":20,\"column-multivalue\":[],\"delimiter\":\",\",\"enclosure\":\"\\\"\",\"escape\":\"\\\\\"}', NULL, '2025-10-23 18:03:25', '2025-10-23 18:03:26'),
(35, 1, '19956', 'completed', 'CSVImport\\Job\\Import', '{\"filename\":\"transcription.csv\",\"filesize\":\"848\",\"filepath\":\"C:\\\\omeka\\\\temp\\\\ome2A3A.tmp\",\"media_type\":\"text\\/csv\",\"resource_type\":\"items\",\"comment\":\"\",\"automap_check_names_alone\":true,\"column\":[\"o2t:idTranscription\",\"o2t:contenuTranscription\",\"o2t:langueTranscription\",\"o2t:aPourAudio\"],\"column-property\":[{\"o2t:idTranscription\":228},{\"o2t:contenuTranscription\":229},{\"o2t:langueTranscription\":230},{\"o2t:aPourAudio\":231}],\"generic-data\":\"default\",\"media-source\":\"default\",\"resource-identifier-property\":\"\",\"o:resource_template\":{\"o:id\":4},\"o:resource_class\":{\"o:id\":116},\"o:owner\":{\"o:id\":1},\"o:is_public\":1,\"multivalue_separator\":\",\",\"global_language\":\"\",\"action\":\"create\",\"identifier_column\":0,\"identifier_property\":\"\",\"action_unidentified\":\"skip\",\"rows_by_batch\":20,\"column-multivalue\":[],\"delimiter\":\",\",\"enclosure\":\"\\\"\",\"escape\":\"\\\\\"}', NULL, '2025-10-23 18:04:36', '2025-10-23 18:04:36'),
(36, 1, '18760', 'completed', 'CSVImport\\Job\\Import', '{\"filename\":\"traduction.csv\",\"filesize\":\"765\",\"filepath\":\"C:\\\\omeka\\\\temp\\\\ome78.tmp\",\"media_type\":\"text\\/csv\",\"resource_type\":\"items\",\"comment\":\"\",\"automap_check_names_alone\":true,\"column\":[\"o2t:idTraduction\",\"o2t:contenuTraduction\",\"o2t:langueCible\",\"o2t:aPourTranscription\"],\"column-property\":[{\"o2t:idTraduction\":232},{\"o2t:contenuTraduction\":233},{\"o2t:langueCible\":234},{\"o2t:aPourTranscription\":235}],\"generic-data\":\"default\",\"media-source\":\"default\",\"resource-identifier-property\":\"\",\"o:resource_template\":{\"o:id\":5},\"o:resource_class\":{\"o:id\":117},\"o:owner\":{\"o:id\":1},\"o:is_public\":1,\"multivalue_separator\":\",\",\"global_language\":\"\",\"action\":\"create\",\"identifier_column\":0,\"identifier_property\":\"\",\"action_unidentified\":\"skip\",\"rows_by_batch\":20,\"column-multivalue\":[],\"delimiter\":\",\",\"enclosure\":\"\\\"\",\"escape\":\"\\\\\"}', NULL, '2025-10-23 18:05:29', '2025-10-23 18:05:29'),
(37, 1, '6532', 'completed', 'CSVImport\\Job\\Import', '{\"filename\":\"utilisateur.csv\",\"filesize\":\"193\",\"filepath\":\"C:\\\\omeka\\\\temp\\\\omeC94C.tmp\",\"media_type\":\"text\\/csv\",\"resource_type\":\"items\",\"comment\":\"\",\"automap_check_names_alone\":true,\"column\":[\"o2t:idUtilisateur\",\"o2t:nom\",\"o2t:email\",\"o2t:role\"],\"column-property\":[{\"o2t:idUtilisateur\":236},{\"o2t:nom\":237},{\"o2t:email\":238},{\"o2t:role\":239}],\"generic-data\":\"default\",\"media-source\":\"default\",\"resource-identifier-property\":\"\",\"o:resource_template\":{\"o:id\":2},\"o:resource_class\":{\"o:id\":118},\"o:owner\":{\"o:id\":1},\"o:is_public\":1,\"multivalue_separator\":\",\",\"global_language\":\"\",\"action\":\"create\",\"identifier_column\":0,\"identifier_property\":\"\",\"action_unidentified\":\"skip\",\"rows_by_batch\":20,\"column-multivalue\":[],\"delimiter\":\",\",\"enclosure\":\"\\\"\",\"escape\":\"\\\\\"}', NULL, '2025-11-11 14:57:57', '2025-11-11 14:57:59'),
(38, 1, '11864', 'completed', 'CSVImport\\Job\\Import', '{\"filename\":\"audio.csv\",\"filesize\":\"99\",\"filepath\":\"C:\\\\omeka\\\\temp\\\\ome920D.tmp\",\"media_type\":\"text\\/csv\",\"resource_type\":\"items\",\"comment\":\"\",\"automap_check_names_alone\":true,\"column\":[\"o2t:idAudio\",\"o2t:titre\",\"o2t:dateUpload\",\"o2t:aPourUtilisateur\"],\"column-property\":[{\"o2t:idAudio\":240},{\"o2t:titre\":241},{\"o2t:dateUpload\":243},{\"o2t:aPourUtilisateur\":244}],\"generic-data\":\"default\",\"media-source\":\"default\",\"resource-identifier-property\":\"\",\"o:resource_template\":{\"o:id\":3},\"o:resource_class\":{\"o:id\":119},\"o:owner\":{\"o:id\":1},\"o:is_public\":1,\"multivalue_separator\":\",\",\"global_language\":\"\",\"action\":\"create\",\"identifier_column\":0,\"identifier_property\":\"\",\"action_unidentified\":\"skip\",\"rows_by_batch\":20,\"column-multivalue\":[],\"delimiter\":\",\",\"enclosure\":\"\\\"\",\"escape\":\"\\\\\"}', NULL, '2025-11-11 14:58:53', '2025-11-11 14:58:53'),
(39, 1, '19176', 'completed', 'CSVImport\\Job\\Import', '{\"filename\":\"transcription.csv\",\"filesize\":\"808\",\"filepath\":\"C:\\\\omeka\\\\temp\\\\ome3FE3.tmp\",\"media_type\":\"text\\/csv\",\"resource_type\":\"items\",\"comment\":\"\",\"automap_check_names_alone\":true,\"column\":[\"o2t:idTranscription\",\"o2t:contenuTranscription\",\"o2t:langueTranscription\",\"o2t:aPourAudio\"],\"column-property\":[{\"o2t:idTranscription\":245},{\"o2t:contenuTranscription\":246},{\"o2t:langueTranscription\":247},{\"o2t:aPourAudio\":248}],\"generic-data\":\"default\",\"media-source\":\"default\",\"resource-identifier-property\":\"\",\"o:resource_template\":{\"o:id\":4},\"o:resource_class\":{\"o:id\":120},\"o:owner\":{\"o:id\":1},\"o:is_public\":1,\"multivalue_separator\":\",\",\"global_language\":\"\",\"action\":\"create\",\"identifier_column\":0,\"identifier_property\":\"\",\"action_unidentified\":\"skip\",\"rows_by_batch\":20,\"column-multivalue\":[],\"delimiter\":\",\",\"enclosure\":\"\\\"\",\"escape\":\"\\\\\"}', NULL, '2025-11-11 14:59:29', '2025-11-11 14:59:29'),
(40, 1, '12792', 'completed', 'CSVImport\\Job\\Import', '{\"filename\":\"traduction.csv\",\"filesize\":\"739\",\"filepath\":\"C:\\\\omeka\\\\temp\\\\omeBA93.tmp\",\"media_type\":\"text\\/csv\",\"resource_type\":\"items\",\"comment\":\"\",\"automap_check_names_alone\":true,\"column\":[\"o2t:idTraduction\",\"o2t:contenuTraduction\",\"o2t:langueCible\",\"o2t:aPourTranscription\"],\"column-property\":[{\"o2t:idTraduction\":249},{\"o2t:contenuTraduction\":250},{\"o2t:langueCible\":251},{\"o2t:aPourTranscription\":252}],\"generic-data\":\"default\",\"media-source\":\"default\",\"resource-identifier-property\":\"\",\"o:resource_template\":{\"o:id\":5},\"o:resource_class\":{\"o:id\":121},\"o:owner\":{\"o:id\":1},\"o:is_public\":1,\"multivalue_separator\":\",\",\"global_language\":\"\",\"action\":\"create\",\"identifier_column\":0,\"identifier_property\":\"\",\"action_unidentified\":\"skip\",\"rows_by_batch\":20,\"column-multivalue\":[],\"delimiter\":\",\",\"enclosure\":\"\\\"\",\"escape\":\"\\\\\"}', NULL, '2025-11-11 14:59:57', '2025-11-11 14:59:57'),
(41, 1, '4572', 'completed', 'CSVImport\\Job\\Import', '{\"filename\":\"audio.csv\",\"filesize\":\"99\",\"filepath\":\"C:\\\\omeka\\\\temp\\\\omeFEE1.tmp\",\"media_type\":\"text\\/csv\",\"resource_type\":\"items\",\"comment\":\"\",\"automap_check_names_alone\":true,\"column\":[\"o2t:idAudio\",\"o2t:titre\",\"o2t:dateUpload\",\"o2t:aPourUtilisateur\"],\"column-property\":[{\"o2t:idAudio\":240},{\"o2t:titre\":241},{\"o2t:dateUpload\":243},{\"o2t:aPourUtilisateur\":244}],\"column-data-type\":{\"3\":\"resource\"},\"column-resource-identifier-property\":{\"3\":\"o2t:aPourUtilisateur\"},\"generic-data\":\"default\",\"media-source\":\"default\",\"resource-identifier-property\":\"\",\"o:resource_template\":{\"o:id\":3},\"o:resource_class\":{\"o:id\":119},\"o:owner\":{\"o:id\":1},\"o:is_public\":1,\"multivalue_separator\":\",\",\"global_language\":\"\",\"action\":\"create\",\"identifier_column\":0,\"identifier_property\":\"\",\"action_unidentified\":\"skip\",\"rows_by_batch\":20,\"column-multivalue\":[],\"delimiter\":\",\",\"enclosure\":\"\\\"\",\"escape\":\"\\\\\"}', '2025-11-11T15:08:42+00:00 ERR (3): \"1\" (o2t:aPourUtilisateur) is not a valid resource.\r\n', '2025-11-11 15:08:42', '2025-11-11 15:08:42'),
(42, 1, '2636', 'completed', 'CSVImport\\Job\\Import', '{\"filename\":\"utilisateur.csv\",\"filesize\":\"193\",\"filepath\":\"C:\\\\omeka\\\\temp\\\\ome9CDF.tmp\",\"media_type\":\"text\\/csv\",\"resource_type\":\"items\",\"comment\":\"\",\"automap_check_names_alone\":true,\"column\":[\"o2t:idUtilisateur\",\"o2t:nom\",\"o2t:email\",\"o2t:role\"],\"column-property\":[{\"o2t:idUtilisateur\":236},{\"o2t:nom\":237},{\"o2t:email\":238},{\"o2t:role\":239}],\"generic-data\":\"default\",\"media-source\":\"default\",\"resource-identifier-property\":\"\",\"o:resource_template\":{\"o:id\":2},\"o:resource_class\":{\"o:id\":118},\"o:owner\":{\"o:id\":1},\"o:is_public\":1,\"multivalue_separator\":\",\",\"global_language\":\"\",\"action\":\"create\",\"identifier_column\":0,\"identifier_property\":\"\",\"action_unidentified\":\"skip\",\"rows_by_batch\":20,\"column-multivalue\":[],\"delimiter\":\",\",\"enclosure\":\"\\\"\",\"escape\":\"\\\\\"}', NULL, '2025-11-11 15:10:42', '2025-11-11 15:10:43'),
(43, 1, '10472', 'completed', 'CSVImport\\Job\\Import', '{\"filename\":\"audio.csv\",\"filesize\":\"99\",\"filepath\":\"C:\\\\omeka\\\\temp\\\\omeA884.tmp\",\"media_type\":\"text\\/csv\",\"resource_type\":\"items\",\"comment\":\"\",\"automap_check_names_alone\":true,\"column-property\":[{\"o2t:idAudio\":240},{\"o2t:titre\":241},{\"o2t:dateUpload\":243},{\"o2t:aPourUtilisateur\":244}],\"column-resource-identifier-property\":{\"3\":\"o2t:aPourUtilisateur\"},\"generic-data\":\"default\",\"media-source\":\"default\",\"resource-identifier-property\":\"\",\"o:resource_template\":{\"o:id\":3},\"o:resource_class\":{\"o:id\":119},\"o:owner\":{\"o:id\":1},\"o:is_public\":1,\"multivalue_separator\":\",\",\"global_language\":\"\",\"action\":\"create\",\"identifier_column\":0,\"identifier_property\":\"\",\"action_unidentified\":\"skip\",\"rows_by_batch\":20,\"column-multivalue\":[],\"delimiter\":\",\",\"enclosure\":\"\\\"\",\"escape\":\"\\\\\"}', NULL, '2025-11-11 15:12:37', '2025-11-11 15:12:38'),
(44, 1, '1820', 'completed', 'CSVImport\\Job\\Import', '{\"filename\":\"audio.csv\",\"filesize\":\"99\",\"filepath\":\"C:\\\\omeka\\\\temp\\\\ome306.tmp\",\"media_type\":\"text\\/csv\",\"resource_type\":\"items\",\"comment\":\"\",\"automap_check_names_alone\":true,\"column-property\":[{\"o2t:idAudio\":240},{\"o2t:titre\":241},{\"o2t:dateUpload\":243},{\"o2t:aPourUtilisateur\":244}],\"column-data-type\":{\"3\":\"resource\"},\"column-resource-identifier-property\":{\"3\":\"o2t:aPourUtilisateur\"},\"generic-data\":\"default\",\"media-source\":\"default\",\"resource-identifier-property\":\"\",\"o:resource_template\":{\"o:id\":3},\"o:resource_class\":{\"o:id\":119},\"o:owner\":{\"o:id\":1},\"o:is_public\":1,\"multivalue_separator\":\",\",\"global_language\":\"\",\"action\":\"create\",\"identifier_column\":0,\"identifier_property\":\"\",\"action_unidentified\":\"skip\",\"rows_by_batch\":20,\"column-multivalue\":[],\"delimiter\":\",\",\"enclosure\":\"\\\"\",\"escape\":\"\\\\\"}', '2025-11-11T15:13:36+00:00 ERR (3): \"1\" (o2t:aPourUtilisateur) is not a valid resource.\r\n', '2025-11-11 15:13:36', '2025-11-11 15:13:37'),
(45, 1, '10940', 'completed', 'CSVImport\\Job\\Import', '{\"filename\":\"audio.csv\",\"filesize\":\"111\",\"filepath\":\"C:\\\\omeka\\\\temp\\\\ome23E7.tmp\",\"media_type\":\"text\\/csv\",\"resource_type\":\"items\",\"comment\":\"\",\"automap_check_names_alone\":true,\"column-property\":[{\"o2t:idAudio\":240},{\"o2t:titre\":241},{\"o2t:dateUpload\":243},{\"o2t:aPourUtilisateur\":244}],\"column-data-type\":{\"3\":\"resource\"},\"column-resource-identifier-property\":{\"3\":\"o2t:aPourUtilisateur\"},\"generic-data\":\"default\",\"media-source\":\"default\",\"resource-identifier-property\":\"\",\"o:resource_template\":{\"o:id\":3},\"o:resource_class\":{\"o:id\":119},\"o:owner\":{\"o:id\":1},\"o:is_public\":1,\"multivalue_separator\":\",\",\"global_language\":\"\",\"action\":\"create\",\"identifier_column\":0,\"identifier_property\":\"\",\"action_unidentified\":\"skip\",\"rows_by_batch\":20,\"column-multivalue\":[],\"delimiter\":\",\",\"enclosure\":\"\\\"\",\"escape\":\"\\\\\"}', '2025-11-11T15:22:33+00:00 ERR (3): \"o:resource:17\" (o2t:aPourUtilisateur) is not a valid resource.\r\n', '2025-11-11 15:22:33', '2025-11-11 15:22:33'),
(46, 1, '4172', 'completed', 'CSVImport\\Job\\Import', '{\"filename\":\"audio.csv\",\"filesize\":\"111\",\"filepath\":\"C:\\\\omeka\\\\temp\\\\omeD9E1.tmp\",\"media_type\":\"text\\/csv\",\"resource_type\":\"items\",\"comment\":\"\",\"automap_check_names_alone\":true,\"column\":[\"o2t:idAudio\",\"o2t:titre\",\"o2t:dateUpload\",\"o2t:aPourUtilisateur\"],\"column-property\":[{\"o2t:idAudio\":240},{\"o2t:titre\":241},{\"o2t:dateUpload\":243},{\"o2t:aPourUtilisateur\":244}],\"column-data-type\":{\"3\":\"resource\"},\"generic-data\":\"default\",\"media-source\":\"default\",\"resource-identifier-property\":\"\",\"o:resource_template\":{\"o:id\":3},\"o:resource_class\":{\"o:id\":119},\"o:owner\":{\"o:id\":1},\"o:is_public\":1,\"multivalue_separator\":\",\",\"global_language\":\"\",\"action\":\"create\",\"identifier_column\":0,\"identifier_property\":\"\",\"action_unidentified\":\"skip\",\"rows_by_batch\":20,\"column-multivalue\":[],\"delimiter\":\",\",\"enclosure\":\"\\\"\",\"escape\":\"\\\\\"}', NULL, '2025-11-11 15:26:43', '2025-11-11 15:26:44'),
(47, 1, '18572', 'completed', 'CSVImport\\Job\\Import', '{\"filename\":\"audio.csv\",\"filesize\":\"111\",\"filepath\":\"C:\\\\omeka\\\\temp\\\\ome85E8.tmp\",\"media_type\":\"text\\/csv\",\"resource_type\":\"items\",\"comment\":\"\",\"automap_check_names_alone\":true,\"column-property\":[{\"o2t:idAudio\":240},{\"o2t:titre\":241},{\"o2t:dateUpload\":243},{\"o2t:aPourUtilisateur\":244}],\"column-data-type\":{\"3\":\"resource\"},\"generic-data\":\"default\",\"media-source\":\"default\",\"resource-identifier-property\":\"\",\"o:resource_template\":\"\",\"o:resource_class\":\"\",\"o:owner\":{\"o:id\":1},\"o:is_public\":1,\"multivalue_separator\":\",\",\"global_language\":\"\",\"action\":\"create\",\"identifier_column\":0,\"identifier_property\":\"\",\"action_unidentified\":\"skip\",\"rows_by_batch\":20,\"column-multivalue\":[],\"delimiter\":\",\",\"enclosure\":\"\\\"\",\"escape\":\"\\\\\"}', NULL, '2025-11-11 15:30:14', '2025-11-11 15:30:14'),
(48, 1, '17436', 'completed', 'CSVImport\\Job\\Import', '{\"filename\":\"audio.csv\",\"filesize\":\"111\",\"filepath\":\"C:\\\\omeka\\\\temp\\\\ome2E37.tmp\",\"media_type\":\"text\\/csv\",\"resource_type\":\"items\",\"comment\":\"\",\"automap_check_names_alone\":true,\"column\":[\"o2t:idAudio\",\"o2t:titre\",\"o2t:dateUpload\",\"o2t:aPourUtilisateur\"],\"column-property\":[{\"o2t:idAudio\":240},{\"o2t:titre\":241},{\"o2t:dateUpload\":243},{\"o2t:aPourUtilisateur\":244}],\"generic-data\":\"default\",\"media-source\":\"default\",\"resource-identifier-property\":\"\",\"o:resource_template\":{\"o:id\":3},\"o:resource_class\":{\"o:id\":119},\"o:owner\":{\"o:id\":1},\"o:is_public\":1,\"multivalue_separator\":\",\",\"global_language\":\"\",\"action\":\"create\",\"identifier_column\":0,\"identifier_property\":\"\",\"action_unidentified\":\"skip\",\"rows_by_batch\":20,\"column-multivalue\":[],\"delimiter\":\",\",\"enclosure\":\"\\\"\",\"escape\":\"\\\\\"}', NULL, '2025-11-11 15:31:06', '2025-11-11 15:31:07'),
(49, 1, '16952', 'completed', 'CSVImport\\Job\\Import', '{\"filename\":\"audio.csv\",\"filesize\":\"111\",\"filepath\":\"C:\\\\omeka\\\\temp\\\\ome8BD.tmp\",\"media_type\":\"text\\/csv\",\"resource_type\":\"items\",\"comment\":\"\",\"automap_check_names_alone\":true,\"column-property\":[{\"o2t:idAudio\":240},{\"o2t:titre\":241},{\"o2t:dateUpload\":243},{\"o2t:aPourUtilisateur\":244}],\"column-data-type\":{\"3\":\"resource\"},\"generic-data\":\"default\",\"media-source\":\"default\",\"resource-identifier-property\":\"\",\"o:resource_template\":{\"o:id\":3},\"o:resource_class\":{\"o:id\":119},\"o:owner\":{\"o:id\":1},\"o:is_public\":1,\"multivalue_separator\":\",\",\"global_language\":\"\",\"action\":\"create\",\"identifier_column\":0,\"identifier_property\":\"\",\"action_unidentified\":\"skip\",\"rows_by_batch\":20,\"column-multivalue\":[],\"delimiter\":\",\",\"enclosure\":\"\\\"\",\"escape\":\"\\\\\"}', NULL, '2025-11-11 15:39:13', '2025-11-11 15:39:14'),
(50, 1, '19076', 'completed', 'CSVImport\\Job\\Import', '{\"filename\":\"audio.csv\",\"filesize\":\"111\",\"filepath\":\"C:\\\\omeka\\\\temp\\\\omeF6F4.tmp\",\"media_type\":\"text\\/csv\",\"resource_type\":\"items\",\"comment\":\"\",\"automap_check_names_alone\":true,\"column\":[\"o2t:idAudio\",\"o2t:titre\",\"o2t:dateUpload\",\"o2t:aPourUtilisateur\"],\"column-property\":[{\"o2t:idAudio\":240},{\"o2t:titre\":241},{\"o2t:dateUpload\":243},{\"o2t:aPourUtilisateur\":244}],\"generic-data\":\"default\",\"media-source\":\"default\",\"resource-identifier-property\":\"\",\"o:resource_template\":{\"o:id\":3},\"o:resource_class\":{\"o:id\":119},\"o:owner\":{\"o:id\":1},\"o:is_public\":1,\"multivalue_separator\":\",\",\"global_language\":\"\",\"action\":\"create\",\"identifier_column\":0,\"identifier_property\":\"\",\"action_unidentified\":\"skip\",\"rows_by_batch\":20,\"column-multivalue\":[],\"delimiter\":\",\",\"enclosure\":\"\\\"\",\"escape\":\"\\\\\"}', NULL, '2025-11-11 15:43:57', '2025-11-11 15:43:58'),
(51, 1, '9752', 'completed', 'CSVImport\\Job\\Import', '{\"filename\":\"audio.csv\",\"filesize\":\"111\",\"filepath\":\"C:\\\\omeka\\\\temp\\\\omeEC91.tmp\",\"media_type\":\"text\\/csv\",\"resource_type\":\"items\",\"comment\":\"\",\"automap_check_names_alone\":true,\"column-property\":[{\"o2t:idAudio\":240},{\"o2t:titre\":241},{\"o2t:dateUpload\":243},{\"o2t:aPourUtilisateur\":244}],\"column-data-type\":{\"3\":\"resource\"},\"generic-data\":\"default\",\"media-source\":\"default\",\"resource-identifier-property\":\"\",\"o:resource_template\":{\"o:id\":3},\"o:resource_class\":{\"o:id\":119},\"o:owner\":{\"o:id\":1},\"o:is_public\":1,\"multivalue_separator\":\",\",\"global_language\":\"\",\"action\":\"create\",\"identifier_column\":0,\"identifier_property\":\"\",\"action_unidentified\":\"skip\",\"rows_by_batch\":20,\"column-multivalue\":[],\"delimiter\":\",\",\"enclosure\":\"\\\"\",\"escape\":\"\\\\\"}', NULL, '2025-11-11 15:45:42', '2025-11-11 15:45:43'),
(52, 1, '16672', 'completed', 'CSVImport\\Job\\Import', '{\"filename\":\"audio.csv\",\"filesize\":\"111\",\"filepath\":\"C:\\\\omeka\\\\temp\\\\ome84D6.tmp\",\"media_type\":\"text\\/csv\",\"resource_type\":\"items\",\"comment\":\"\",\"automap_check_names_alone\":true,\"column-property\":[{\"o2t:idAudio\":240},{\"o2t:titre\":241},{\"o2t:dateUpload\":243},{\"o2t:aPourUtilisateur\":244}],\"column-data-type\":{\"3\":\"resource\"},\"column-resource-identifier-property\":{\"3\":\"o2t:aPourUtilisateur\"},\"generic-data\":\"default\",\"media-source\":\"default\",\"resource-identifier-property\":\"\",\"o:resource_template\":{\"o:id\":3},\"o:resource_class\":{\"o:id\":119},\"o:owner\":{\"o:id\":1},\"o:is_public\":1,\"multivalue_separator\":\",\",\"global_language\":\"\",\"action\":\"create\",\"identifier_column\":0,\"identifier_property\":\"\",\"action_unidentified\":\"skip\",\"rows_by_batch\":20,\"column-multivalue\":[],\"delimiter\":\",\",\"enclosure\":\"\\\"\",\"escape\":\"\\\\\"}', '2025-11-11T15:46:56+00:00 ERR (3): \"o:resource:17\" (o2t:aPourUtilisateur) is not a valid resource.\r\n', '2025-11-11 15:46:55', '2025-11-11 15:46:56'),
(53, 1, '18780', 'completed', 'CSVImport\\Job\\Import', '{\"filename\":\"audio.csv\",\"filesize\":\"111\",\"filepath\":\"C:\\\\omeka\\\\temp\\\\omeEFD2.tmp\",\"media_type\":\"text\\/csv\",\"resource_type\":\"items\",\"comment\":\"\",\"automap_check_names_alone\":true,\"column-property\":[{\"o2t:idAudio\":240},{\"o2t:titre\":241},{\"o2t:dateUpload\":243},{\"o2t:aPourUtilisateur\":244}],\"column-data-type\":{\"3\":\"resource\"},\"generic-data\":\"default\",\"media-source\":\"default\",\"resource-identifier-property\":\"\",\"o:resource_template\":{\"o:id\":3},\"o:resource_class\":{\"o:id\":119},\"o:owner\":{\"o:id\":1},\"o:is_public\":1,\"multivalue_separator\":\",\",\"global_language\":\"\",\"action\":\"create\",\"identifier_column\":0,\"identifier_property\":\"\",\"action_unidentified\":\"skip\",\"rows_by_batch\":20,\"column-multivalue\":[],\"delimiter\":\",\",\"enclosure\":\"\\\"\",\"escape\":\"\\\\\"}', NULL, '2025-11-11 15:48:23', '2025-11-11 15:48:24'),
(54, 1, '18732', 'completed', 'CSVImport\\Job\\Import', '{\"filename\":\"audio.csv\",\"filesize\":\"111\",\"filepath\":\"C:\\\\omeka\\\\temp\\\\omeD80B.tmp\",\"media_type\":\"text\\/csv\",\"resource_type\":\"items\",\"comment\":\"\",\"automap_check_names_alone\":true,\"column-property\":[{\"o2t:idAudio\":240},{\"o2t:titre\":241},{\"o2t:dateUpload\":243},{\"o2t:aPourUtilisateur\":244}],\"column-data-type\":{\"3\":\"resource\"},\"generic-data\":\"default\",\"media-source\":\"default\",\"resource-identifier-property\":\"\",\"o:resource_template\":{\"o:id\":3},\"o:resource_class\":{\"o:id\":119},\"o:owner\":{\"o:id\":1},\"o:is_public\":1,\"multivalue_separator\":\",\",\"global_language\":\"\",\"action\":\"create\",\"identifier_column\":0,\"identifier_property\":\"\",\"action_unidentified\":\"skip\",\"rows_by_batch\":20,\"column-multivalue\":[],\"delimiter\":\",\",\"enclosure\":\"\\\"\",\"escape\":\"\\\\\"}', NULL, '2025-11-11 15:58:21', '2025-11-11 15:58:22'),
(55, 1, '4288', 'completed', 'CSVImport\\Job\\Import', '{\"filename\":\"audio.csv\",\"filesize\":\"111\",\"filepath\":\"C:\\\\omeka\\\\temp\\\\ome7863.tmp\",\"media_type\":\"text\\/csv\",\"resource_type\":\"items\",\"comment\":\"\",\"automap_check_names_alone\":true,\"column\":[\"o2t:idAudio\",\"o2t:titre\",\"o2t:dateUpload\",\"o2t:aPourUtilisateur\"],\"column-property\":[{\"o2t:idAudio\":240},{\"o2t:titre\":241},{\"o2t:dateUpload\":243},{\"o2t:aPourUtilisateur\":244}],\"column-data-type\":{\"3\":\"resource\"},\"generic-data\":\"default\",\"media-source\":\"default\",\"resource-identifier-property\":\"\",\"o:resource_template\":{\"o:id\":3},\"o:resource_class\":{\"o:id\":119},\"o:owner\":{\"o:id\":1},\"o:is_public\":1,\"multivalue_separator\":\",\",\"global_language\":\"\",\"action\":\"update\",\"identifier_column\":3,\"identifier_property\":\"internal_id\",\"action_unidentified\":\"skip\",\"rows_by_batch\":20,\"column-multivalue\":[],\"delimiter\":\",\",\"enclosure\":\"\\\"\",\"escape\":\"\\\\\"}', '2025-11-11T16:11:16+00:00 INFO (6): The following identifiers are not associated with a resource and were skipped: \"o:resource:17\".\r\n', '2025-11-11 16:11:15', '2025-11-11 16:11:16'),
(56, 1, '1972', 'completed', 'CSVImport\\Job\\Import', '{\"filename\":\"audio.csv\",\"filesize\":\"111\",\"filepath\":\"C:\\\\omeka\\\\temp\\\\omeB7E5.tmp\",\"media_type\":\"text\\/csv\",\"resource_type\":\"items\",\"comment\":\"\",\"automap_check_names_alone\":true,\"column-property\":[{\"o2t:idAudio\":240},{\"o2t:titre\":241},{\"o2t:dateUpload\":243},{\"o2t:aPourUtilisateur\":244}],\"column-data-type\":{\"3\":\"resource\"},\"generic-data\":\"default\",\"media-source\":\"default\",\"resource-identifier-property\":\"\",\"o:resource_template\":{\"o:id\":3},\"o:resource_class\":{\"o:id\":119},\"o:owner\":{\"o:id\":1},\"o:is_public\":1,\"multivalue_separator\":\",\",\"global_language\":\"\",\"action\":\"create\",\"identifier_column\":0,\"identifier_property\":\"internal_id\",\"action_unidentified\":\"skip\",\"rows_by_batch\":20,\"column-multivalue\":[],\"delimiter\":\",\",\"enclosure\":\"\\\"\",\"escape\":\"\\\\\"}', NULL, '2025-11-11 16:12:31', '2025-11-11 16:12:32'),
(57, 1, '16920', 'completed', 'CSVImport\\Job\\Import', '{\"filename\":\"audio.csv\",\"filesize\":\"108\",\"filepath\":\"C:\\\\omeka\\\\temp\\\\ome3D3F.tmp\",\"media_type\":\"text\\/csv\",\"resource_type\":\"items\",\"comment\":\"\",\"automap_check_names_alone\":true,\"column\":[\"o2t:idAudio\",\"o2t:titre\",\"o2t:dateUpload\",\"o2t:aPourUtilisateur\"],\"column-property\":[{\"o2t:idAudio\":240},{\"o2t:titre\":241},{\"o2t:dateUpload\":243},{\"o2t:aPourUtilisateur\":244}],\"column-data-type\":{\"3\":\"resource\"},\"generic-data\":\"default\",\"media-source\":\"default\",\"resource-identifier-property\":\"\",\"o:resource_template\":{\"o:id\":3},\"o:resource_class\":{\"o:id\":119},\"o:owner\":{\"o:id\":1},\"o:is_public\":1,\"multivalue_separator\":\",\",\"global_language\":\"\",\"action\":\"create\",\"identifier_column\":0,\"identifier_property\":\"internal_id\",\"action_unidentified\":\"skip\",\"rows_by_batch\":20,\"column-multivalue\":[],\"delimiter\":\",\",\"enclosure\":\"\\\"\",\"escape\":\"\\\\\"}', NULL, '2025-11-11 16:13:44', '2025-11-11 16:13:45'),
(58, 1, '2356', 'completed', 'CSVImport\\Job\\Import', '{\"filename\":\"audio.csv\",\"filesize\":\"105\",\"filepath\":\"C:\\\\omeka\\\\temp\\\\ome3136.tmp\",\"media_type\":\"text\\/csv\",\"resource_type\":\"items\",\"comment\":\"\",\"automap_check_names_alone\":true,\"column\":[\"o2t:idAudio\",\"o2t:titre\",\"o2t:dateUpload\",\"o2t:aPourUtilisateur\"],\"column-property\":[{\"o2t:idAudio\":240},{\"o2t:titre\":241},{\"o2t:dateUpload\":243},{\"o2t:aPourUtilisateur\":244}],\"column-data-type\":{\"3\":\"resource\"},\"generic-data\":\"default\",\"media-source\":\"default\",\"resource-identifier-property\":\"\",\"o:resource_template\":{\"o:id\":3},\"o:resource_class\":{\"o:id\":119},\"o:owner\":{\"o:id\":1},\"o:is_public\":1,\"multivalue_separator\":\",\",\"global_language\":\"\",\"action\":\"create\",\"identifier_column\":0,\"identifier_property\":\"internal_id\",\"action_unidentified\":\"skip\",\"rows_by_batch\":20,\"column-multivalue\":[],\"delimiter\":\",\",\"enclosure\":\"\\\"\",\"escape\":\"\\\\\"}', NULL, '2025-11-11 16:14:48', '2025-11-11 16:14:49'),
(59, 1, '18196', 'completed', 'CSVImport\\Job\\Import', '{\"filename\":\"audio.csv\",\"filesize\":\"117\",\"filepath\":\"C:\\\\omeka\\\\temp\\\\omeA498.tmp\",\"media_type\":\"text\\/csv\",\"resource_type\":\"items\",\"comment\":\"\",\"automap_check_names_alone\":true,\"column\":[\"o2t:idAudio\",\"o2t:titre\",\"o2t:dateUpload\",\"o2t:aPourUtilisateur\"],\"column-property\":[{\"o2t:idAudio\":240},{\"o2t:titre\":241},{\"o2t:dateUpload\":243},{\"o2t:aPourUtilisateur\":244}],\"column-data-type\":{\"3\":\"resource\"},\"generic-data\":\"default\",\"media-source\":\"default\",\"resource-identifier-property\":\"\",\"o:resource_template\":{\"o:id\":3},\"o:resource_class\":{\"o:id\":119},\"o:owner\":{\"o:id\":1},\"o:is_public\":1,\"multivalue_separator\":\",\",\"global_language\":\"\",\"action\":\"create\",\"identifier_column\":0,\"identifier_property\":\"internal_id\",\"action_unidentified\":\"skip\",\"rows_by_batch\":20,\"column-multivalue\":[],\"delimiter\":\",\",\"enclosure\":\"\\\"\",\"escape\":\"\\\\\"}', NULL, '2025-11-11 16:21:51', '2025-11-11 16:21:51'),
(60, 1, '4640', 'completed', 'CSVImport\\Job\\Import', '{\"filename\":\"audio.csv\",\"filesize\":\"125\",\"filepath\":\"C:\\\\omeka\\\\temp\\\\omeA76F.tmp\",\"media_type\":\"text\\/csv\",\"resource_type\":\"items\",\"comment\":\"\",\"automap_check_names_alone\":true,\"column-property\":[{\"o2t:idAudio\":240},{\"o2t:titre\":241},{\"o2t:dateUpload\":243},{\"o2t:aPourUtilisateur\":244}],\"column-data-type\":{\"3\":\"resource\"},\"generic-data\":\"default\",\"media-source\":\"default\",\"resource-identifier-property\":\"\",\"o:resource_template\":{\"o:id\":3},\"o:resource_class\":{\"o:id\":119},\"o:owner\":{\"o:id\":1},\"o:is_public\":1,\"multivalue_separator\":\",\",\"global_language\":\"\",\"action\":\"create\",\"identifier_column\":0,\"identifier_property\":\"internal_id\",\"action_unidentified\":\"skip\",\"rows_by_batch\":20,\"column-multivalue\":[],\"delimiter\":\",\",\"enclosure\":\"\\\"\",\"escape\":\"\\\\\"}', NULL, '2025-11-11 16:27:14', '2025-11-11 16:27:14'),
(61, 1, '15756', 'completed', 'CSVImport\\Job\\Import', '{\"filename\":\"audio.csv\",\"filesize\":\"111\",\"filepath\":\"C:\\\\omeka\\\\temp\\\\ome7572.tmp\",\"media_type\":\"text\\/csv\",\"resource_type\":\"items\",\"comment\":\"\",\"automap_check_names_alone\":true,\"column-property\":[{\"o2t:idAudio\":240},{\"o2t:titre\":241},{\"o2t:dateUpload\":243},{\"o2t:aPourUtilisateur\":244}],\"column-data-type\":{\"3\":\"resource\"},\"generic-data\":\"default\",\"media-source\":\"default\",\"resource-identifier-property\":\"\",\"o:resource_template\":{\"o:id\":3},\"o:resource_class\":{\"o:id\":119},\"o:owner\":{\"o:id\":1},\"o:is_public\":1,\"multivalue_separator\":\",\",\"global_language\":\"\",\"action\":\"create\",\"identifier_column\":0,\"identifier_property\":\"internal_id\",\"action_unidentified\":\"skip\",\"rows_by_batch\":20,\"column-multivalue\":[],\"delimiter\":\",\",\"enclosure\":\"\\\"\",\"escape\":\"\\\\\"}', NULL, '2025-11-11 16:31:31', '2025-11-11 16:31:32'),
(62, 1, '2492', 'completed', 'CSVImport\\Job\\Import', '{\"filename\":\"audio.csv\",\"filesize\":\"154\",\"filepath\":\"C:\\\\omeka\\\\temp\\\\omeB52C.tmp\",\"media_type\":\"text\\/csv\",\"resource_type\":\"items\",\"comment\":\"\",\"automap_check_names_alone\":true,\"column\":[\"o2t:idAudio\",\"o2t:titre\",\"o2t:dateUpload\",\"o2t:aPourUtilisateur\"],\"column-property\":[{\"o2t:idAudio\":240},{\"o2t:titre\":241},{\"o2t:dateUpload\":243},{\"o2t:aPourUtilisateur\":244}],\"column-data-type\":{\"3\":\"resource\"},\"generic-data\":\"default\",\"media-source\":\"default\",\"resource-identifier-property\":\"\",\"o:resource_template\":{\"o:id\":3},\"o:resource_class\":{\"o:id\":119},\"o:owner\":{\"o:id\":1},\"o:is_public\":1,\"multivalue_separator\":\",\",\"global_language\":\"\",\"action\":\"create\",\"identifier_column\":0,\"identifier_property\":\"internal_id\",\"action_unidentified\":\"skip\",\"rows_by_batch\":20,\"column-multivalue\":[],\"delimiter\":\",\",\"enclosure\":\"\\\"\",\"escape\":\"\\\\\"}', NULL, '2025-11-11 16:37:15', '2025-11-11 16:37:16'),
(63, 1, '6624', 'completed', 'CSVImport\\Job\\Import', '{\"filename\":\"audio.csv\",\"filesize\":\"106\",\"filepath\":\"C:\\\\omeka\\\\temp\\\\omeE0AB.tmp\",\"media_type\":\"text\\/csv\",\"resource_type\":\"items\",\"comment\":\"\",\"automap_check_names_alone\":true,\"column\":[\"o2t:idAudio\",\"o2t:titre\",\"o2t:dateUpload\",\"o2t:aPourUtilisateur\"],\"column-property\":[{\"o2t:idAudio\":240},{\"o2t:titre\":241},{\"o2t:dateUpload\":243},{\"o2t:aPourUtilisateur\":244}],\"column-data-type\":{\"3\":\"resource\"},\"generic-data\":\"default\",\"media-source\":\"default\",\"resource-identifier-property\":\"\",\"o:resource_template\":{\"o:id\":3},\"o:resource_class\":{\"o:id\":119},\"o:owner\":{\"o:id\":1},\"o:is_public\":1,\"multivalue_separator\":\",\",\"global_language\":\"\",\"action\":\"create\",\"identifier_column\":0,\"identifier_property\":\"internal_id\",\"action_unidentified\":\"skip\",\"rows_by_batch\":20,\"column-multivalue\":[],\"delimiter\":\",\",\"enclosure\":\"\\\"\",\"escape\":\"\\\\\"}', NULL, '2025-11-11 16:42:57', '2025-11-11 16:42:57'),
(64, 1, '25480', 'completed', 'CSVImport\\Job\\Import', '{\"filename\":\"transcription.csv\",\"filesize\":\"809\",\"filepath\":\"C:\\\\omeka\\\\temp\\\\ome7A96.tmp\",\"media_type\":\"text\\/csv\",\"resource_type\":\"items\",\"comment\":\"\",\"automap_check_names_alone\":true,\"column\":[\"o2t:idTranscription\",\"o2t:contenuTranscription\",\"o2t:langueTranscription\",\"o2t:aPourAudio\"],\"column-property\":[{\"o2t:idTranscription\":245},{\"o2t:contenuTranscription\":246},{\"o2t:langueTranscription\":247},{\"o2t:aPourAudio\":248}],\"column-data-type\":{\"3\":\"resource\"},\"generic-data\":\"default\",\"media-source\":\"default\",\"resource-identifier-property\":\"\",\"o:resource_template\":{\"o:id\":4},\"o:resource_class\":{\"o:id\":120},\"o:owner\":{\"o:id\":1},\"o:is_public\":1,\"multivalue_separator\":\",\",\"global_language\":\"\",\"action\":\"create\",\"identifier_column\":0,\"identifier_property\":\"internal_id\",\"action_unidentified\":\"skip\",\"rows_by_batch\":20,\"column-multivalue\":[],\"delimiter\":\",\",\"enclosure\":\"\\\"\",\"escape\":\"\\\\\"}', NULL, '2025-11-11 16:55:47', '2025-11-11 16:55:50'),
(65, 1, '20728', 'completed', 'CSVImport\\Job\\Import', '{\"filename\":\"traduction.csv\",\"filesize\":\"740\",\"filepath\":\"C:\\\\omeka\\\\temp\\\\omeDC7A.tmp\",\"media_type\":\"text\\/csv\",\"resource_type\":\"items\",\"comment\":\"\",\"automap_check_names_alone\":true,\"column\":[\"o2t:idTraduction\",\"o2t:contenuTraduction\",\"o2t:langueCible\",\"o2t:aPourTranscription\"],\"column-property\":[{\"o2t:idTraduction\":249},{\"o2t:contenuTraduction\":250},{\"o2t:langueCible\":251},{\"o2t:aPourTranscription\":252}],\"column-data-type\":{\"3\":\"resource\"},\"generic-data\":\"default\",\"media-source\":\"default\",\"resource-identifier-property\":\"\",\"o:resource_template\":{\"o:id\":5},\"o:resource_class\":{\"o:id\":121},\"o:owner\":{\"o:id\":1},\"o:is_public\":1,\"multivalue_separator\":\",\",\"global_language\":\"\",\"action\":\"create\",\"identifier_column\":0,\"identifier_property\":\"internal_id\",\"action_unidentified\":\"skip\",\"rows_by_batch\":20,\"column-multivalue\":[],\"delimiter\":\",\",\"enclosure\":\"\\\"\",\"escape\":\"\\\\\"}', NULL, '2025-11-11 16:57:05', '2025-11-11 16:57:06');

-- --------------------------------------------------------

--
-- Structure de la table `media`
--

CREATE TABLE `media` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `ingester` varchar(255) NOT NULL,
  `renderer` varchar(255) NOT NULL,
  `data` longtext DEFAULT NULL COMMENT '(DC2Type:json_array)',
  `source` longtext DEFAULT NULL,
  `media_type` varchar(255) DEFAULT NULL,
  `storage_id` varchar(190) DEFAULT NULL,
  `extension` varchar(255) DEFAULT NULL,
  `sha256` char(64) DEFAULT NULL,
  `size` bigint(20) DEFAULT NULL,
  `has_original` tinyint(1) NOT NULL,
  `has_thumbnails` tinyint(1) NOT NULL,
  `position` int(11) DEFAULT NULL,
  `lang` varchar(190) DEFAULT NULL,
  `alt_text` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `media`
--

INSERT INTO `media` (`id`, `item_id`, `ingester`, `renderer`, `data`, `source`, `media_type`, `storage_id`, `extension`, `sha256`, `size`, `has_original`, `has_thumbnails`, `position`, `lang`, `alt_text`) VALUES
(46, 45, 'upload', 'file', NULL, 'Entretien9_1763143385348.webm', 'video/webm', 'b53857ca498ddd2f51af0c6c184e8759cb54a1ac', 'webm', '91a73ac05ab15476a2cb56d4d8f8b346bc870e64b06d01ece8ee5f7021d1cf2d', 85304, 1, 0, 1, NULL, NULL),
(48, 47, 'upload', 'file', NULL, 'Entretien10_1763143686189.webm', 'video/webm', '2da555ce0d15c6d8c128dc02a4bb4eb20f0b8eb4', 'webm', 'c27e6d90238a9d2676c6dd1fd4662dd167939ea9792912b2f7ca2e825cfe9acf', 86270, 1, 0, 1, NULL, NULL),
(50, 49, 'upload', 'file', NULL, 'Entretien11_1763143909781.webm', 'video/webm', 'e44329721289cdf6e2ddd4482638fc1a5ae10482', 'webm', 'b7a103916508f57035b9b627e5255a18ca525930adbd52770263602f72f34864', 68882, 1, 0, 1, NULL, NULL),
(52, 51, 'upload', 'file', NULL, 'Entretien30_1763144053681.webm', 'video/webm', 'f4d0105c57cc92ab6557b5365f66f802532ae493', 'webm', '7a836fb582aa496163fe92d8c7eff69118d9231e2cd08c32bdf5629ef82a7910', 69848, 1, 0, 1, NULL, NULL),
(54, 53, 'upload', 'file', NULL, 'Entretien112_1763144811493.webm', 'video/webm', 'cdb3964c7d01c416036fa9bed9dd9e3b2f394611', 'webm', 'a5d21d9292e4b1e40807efdcaf3c3bfb5630df24a708efbb5c8d1377600bad7a', 59222, 1, 0, 1, NULL, NULL),
(56, 55, 'upload', 'file', NULL, 'Entretien33_1763286495344.webm', 'video/webm', '5f3d10357a651c103680b54c60fb566ad4568d80', 'webm', '77b24c9516d4d1091d7341ecaf535cc1a1d8e91f150c005d3a4d3693d5b7141b', 82406, 1, 0, 1, NULL, NULL),
(58, 57, 'upload', 'file', NULL, 'Entretien32_1763294449805.webm', 'video/webm', '1f36a269d8243f2e5cfce7c8d298e62720ebca09', 'webm', 'cdae2c7d53790876d570d62cef17e8d6b53b9f9a101426bec72d7649770b0ff8', 85304, 1, 0, 1, NULL, NULL),
(79, 78, 'upload', 'file', NULL, 'exp1.mp3', 'audio/mpeg', '2d04fb8ee75d497b41405ab8cd0487ef54a881b3', 'mp3', 'e92f05150f81ad5d12046d4b30d3af3670e05e2ebbb7499e45f163c662fb9a22', 259629, 1, 0, 1, NULL, NULL),
(83, 82, 'upload', 'file', NULL, 'exp1.mp3', 'audio/mpeg', '515b089df7c410be0aeaa736c09a6e3d4a99567a', 'mp3', 'e92f05150f81ad5d12046d4b30d3af3670e05e2ebbb7499e45f163c662fb9a22', 259629, 1, 0, 1, NULL, NULL),
(87, 86, 'upload', 'file', NULL, 'exp1.mp3', 'audio/mpeg', 'd2695a6db59f6646a3f1754e95da3b2a0a5e92dd', 'mp3', 'e92f05150f81ad5d12046d4b30d3af3670e05e2ebbb7499e45f163c662fb9a22', 259629, 1, 0, 1, NULL, NULL),
(91, 90, 'upload', 'file', NULL, 'exp1.mp3', 'audio/mpeg', 'a147b9a6d99afa94808383b86dbdb376d6d99b9e', 'mp3', 'e92f05150f81ad5d12046d4b30d3af3670e05e2ebbb7499e45f163c662fb9a22', 259629, 1, 0, 1, NULL, NULL),
(95, 94, 'upload', 'file', NULL, 'exp1.mp3', 'audio/mpeg', '47e888e1ad2d4070c379367afde3fb9b737d6bae', 'mp3', 'e92f05150f81ad5d12046d4b30d3af3670e05e2ebbb7499e45f163c662fb9a22', 259629, 1, 0, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `migration`
--

CREATE TABLE `migration` (
  `version` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migration`
--

INSERT INTO `migration` (`version`) VALUES
('20171128053327'),
('20180412035023'),
('20180919072656'),
('20180924033501'),
('20181002015551'),
('20181004043735'),
('20181106060421'),
('20190307043537'),
('20190319020708'),
('20190412090532'),
('20190423040354'),
('20190423071228'),
('20190514061351'),
('20190515055359'),
('20190729023728'),
('20190809092609'),
('20190815062003'),
('20200224022356'),
('20200226064602'),
('20200325091157'),
('20200326091310'),
('20200803000000'),
('20200831000000'),
('20210205101827'),
('20210225095734'),
('20210810083804'),
('20220718090449'),
('20220824103916'),
('20230124033031'),
('20230410074846'),
('20230523085358'),
('20230601060113'),
('20230713101012'),
('20231016000000'),
('20240103030617');

-- --------------------------------------------------------

--
-- Structure de la table `module`
--

CREATE TABLE `module` (
  `id` varchar(190) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `version` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `module`
--

INSERT INTO `module` (`id`, `is_active`, `version`) VALUES
('CSVImport', 1, '2.6.2'),
('NumericDataTypes', 1, '1.13.0'),
('Oral2Text', 1, '1.0.0');

-- --------------------------------------------------------

--
-- Structure de la table `numeric_data_types_duration`
--

CREATE TABLE `numeric_data_types_duration` (
  `id` int(11) NOT NULL,
  `resource_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `value` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `numeric_data_types_integer`
--

CREATE TABLE `numeric_data_types_integer` (
  `id` int(11) NOT NULL,
  `resource_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `value` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `numeric_data_types_interval`
--

CREATE TABLE `numeric_data_types_interval` (
  `id` int(11) NOT NULL,
  `resource_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `value` bigint(20) NOT NULL,
  `value2` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `numeric_data_types_timestamp`
--

CREATE TABLE `numeric_data_types_timestamp` (
  `id` int(11) NOT NULL,
  `resource_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `value` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `numeric_data_types_timestamp`
--

INSERT INTO `numeric_data_types_timestamp` (`id`, `resource_id`, `property_id`, `value`) VALUES
(1, 61, 243, 1764410994),
(2, 62, 243, 1764411148),
(3, 63, 243, 1764411430),
(4, 64, 243, 1764411589),
(5, 65, 243, 1764411862),
(6, 66, 243, 1764412106),
(7, 67, 243, 1764412166),
(8, 68, 243, 1764412532),
(9, 71, 243, 1764416313),
(10, 74, 243, 1764416592),
(11, 75, 243, 1764421887);

-- --------------------------------------------------------

--
-- Structure de la table `password_creation`
--

CREATE TABLE `password_creation` (
  `id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `user_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `activate` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `password_creation`
--

INSERT INTO `password_creation` (`id`, `user_id`, `created`, `activate`) VALUES
('Qgscuf5uSTOEFv89r69eCt2gwsVZfmI8', 2, '2025-10-21 08:09:12', 1);

-- --------------------------------------------------------

--
-- Structure de la table `property`
--

CREATE TABLE `property` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `vocabulary_id` int(11) NOT NULL,
  `local_name` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(255) NOT NULL,
  `comment` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `property`
--

INSERT INTO `property` (`id`, `owner_id`, `vocabulary_id`, `local_name`, `label`, `comment`) VALUES
(1, NULL, 1, 'title', 'Title', 'A name given to the resource.'),
(2, NULL, 1, 'creator', 'Creator', 'An entity primarily responsible for making the resource.'),
(3, NULL, 1, 'subject', 'Subject', 'The topic of the resource.'),
(4, NULL, 1, 'description', 'Description', 'An account of the resource.'),
(5, NULL, 1, 'publisher', 'Publisher', 'An entity responsible for making the resource available.'),
(6, NULL, 1, 'contributor', 'Contributor', 'An entity responsible for making contributions to the resource.'),
(7, NULL, 1, 'date', 'Date', 'A point or period of time associated with an event in the lifecycle of the resource.'),
(8, NULL, 1, 'type', 'Type', 'The nature or genre of the resource.'),
(9, NULL, 1, 'format', 'Format', 'The file format, physical medium, or dimensions of the resource.'),
(10, NULL, 1, 'identifier', 'Identifier', 'An unambiguous reference to the resource within a given context.'),
(11, NULL, 1, 'source', 'Source', 'A related resource from which the described resource is derived.'),
(12, NULL, 1, 'language', 'Language', 'A language of the resource.'),
(13, NULL, 1, 'relation', 'Relation', 'A related resource.'),
(14, NULL, 1, 'coverage', 'Coverage', 'The spatial or temporal topic of the resource, the spatial applicability of the resource, or the jurisdiction under which the resource is relevant.'),
(15, NULL, 1, 'rights', 'Rights', 'Information about rights held in and over the resource.'),
(16, NULL, 1, 'audience', 'Audience', 'A class of entity for whom the resource is intended or useful.'),
(17, NULL, 1, 'alternative', 'Alternative Title', 'An alternative name for the resource.'),
(18, NULL, 1, 'tableOfContents', 'Table Of Contents', 'A list of subunits of the resource.'),
(19, NULL, 1, 'abstract', 'Abstract', 'A summary of the resource.'),
(20, NULL, 1, 'created', 'Date Created', 'Date of creation of the resource.'),
(21, NULL, 1, 'valid', 'Date Valid', 'Date (often a range) of validity of a resource.'),
(22, NULL, 1, 'available', 'Date Available', 'Date (often a range) that the resource became or will become available.'),
(23, NULL, 1, 'issued', 'Date Issued', 'Date of formal issuance (e.g., publication) of the resource.'),
(24, NULL, 1, 'modified', 'Date Modified', 'Date on which the resource was changed.'),
(25, NULL, 1, 'extent', 'Extent', 'The size or duration of the resource.'),
(26, NULL, 1, 'medium', 'Medium', 'The material or physical carrier of the resource.'),
(27, NULL, 1, 'isVersionOf', 'Is Version Of', 'A related resource of which the described resource is a version, edition, or adaptation.'),
(28, NULL, 1, 'hasVersion', 'Has Version', 'A related resource that is a version, edition, or adaptation of the described resource.'),
(29, NULL, 1, 'isReplacedBy', 'Is Replaced By', 'A related resource that supplants, displaces, or supersedes the described resource.'),
(30, NULL, 1, 'replaces', 'Replaces', 'A related resource that is supplanted, displaced, or superseded by the described resource.'),
(31, NULL, 1, 'isRequiredBy', 'Is Required By', 'A related resource that requires the described resource to support its function, delivery, or coherence.'),
(32, NULL, 1, 'requires', 'Requires', 'A related resource that is required by the described resource to support its function, delivery, or coherence.'),
(33, NULL, 1, 'isPartOf', 'Is Part Of', 'A related resource in which the described resource is physically or logically included.'),
(34, NULL, 1, 'hasPart', 'Has Part', 'A related resource that is included either physically or logically in the described resource.'),
(35, NULL, 1, 'isReferencedBy', 'Is Referenced By', 'A related resource that references, cites, or otherwise points to the described resource.'),
(36, NULL, 1, 'references', 'References', 'A related resource that is referenced, cited, or otherwise pointed to by the described resource.'),
(37, NULL, 1, 'isFormatOf', 'Is Format Of', 'A related resource that is substantially the same as the described resource, but in another format.'),
(38, NULL, 1, 'hasFormat', 'Has Format', 'A related resource that is substantially the same as the pre-existing described resource, but in another format.'),
(39, NULL, 1, 'conformsTo', 'Conforms To', 'An established standard to which the described resource conforms.'),
(40, NULL, 1, 'spatial', 'Spatial Coverage', 'Spatial characteristics of the resource.'),
(41, NULL, 1, 'temporal', 'Temporal Coverage', 'Temporal characteristics of the resource.'),
(42, NULL, 1, 'mediator', 'Mediator', 'An entity that mediates access to the resource and for whom the resource is intended or useful.'),
(43, NULL, 1, 'dateAccepted', 'Date Accepted', 'Date of acceptance of the resource.'),
(44, NULL, 1, 'dateCopyrighted', 'Date Copyrighted', 'Date of copyright.'),
(45, NULL, 1, 'dateSubmitted', 'Date Submitted', 'Date of submission of the resource.'),
(46, NULL, 1, 'educationLevel', 'Audience Education Level', 'A class of entity, defined in terms of progression through an educational or training context, for which the described resource is intended.'),
(47, NULL, 1, 'accessRights', 'Access Rights', 'Information about who can access the resource or an indication of its security status.'),
(48, NULL, 1, 'bibliographicCitation', 'Bibliographic Citation', 'A bibliographic reference for the resource.'),
(49, NULL, 1, 'license', 'License', 'A legal document giving official permission to do something with the resource.'),
(50, NULL, 1, 'rightsHolder', 'Rights Holder', 'A person or organization owning or managing rights over the resource.'),
(51, NULL, 1, 'provenance', 'Provenance', 'A statement of any changes in ownership and custody of the resource since its creation that are significant for its authenticity, integrity, and interpretation.'),
(52, NULL, 1, 'instructionalMethod', 'Instructional Method', 'A process, used to engender knowledge, attitudes and skills, that the described resource is designed to support.'),
(53, NULL, 1, 'accrualMethod', 'Accrual Method', 'The method by which items are added to a collection.'),
(54, NULL, 1, 'accrualPeriodicity', 'Accrual Periodicity', 'The frequency with which items are added to a collection.'),
(55, NULL, 1, 'accrualPolicy', 'Accrual Policy', 'The policy governing the addition of items to a collection.'),
(56, NULL, 3, 'affirmedBy', 'affirmedBy', 'A legal decision that affirms a ruling.'),
(57, NULL, 3, 'annotates', 'annotates', 'Critical or explanatory note for a Document.'),
(58, NULL, 3, 'authorList', 'list of authors', 'An ordered list of authors. Normally, this list is seen as a priority list that order authors by importance.'),
(59, NULL, 3, 'citedBy', 'cited by', 'Relates a document to another document that cites the\nfirst document.'),
(60, NULL, 3, 'cites', 'cites', 'Relates a document to another document that is cited\nby the first document as reference, comment, review, quotation or for\nanother purpose.'),
(61, NULL, 3, 'contributorList', 'list of contributors', 'An ordered list of contributors. Normally, this list is seen as a priority list that order contributors by importance.'),
(62, NULL, 3, 'court', 'court', 'A court associated with a legal document; for example, that which issues a decision.'),
(63, NULL, 3, 'degree', 'degree', 'The thesis degree.'),
(64, NULL, 3, 'director', 'director', 'A Film director.'),
(65, NULL, 3, 'distributor', 'distributor', 'Distributor of a document or a collection of documents.'),
(66, NULL, 3, 'editor', 'editor', 'A person having managerial and sometimes policy-making responsibility for the editorial part of a publishing firm or of a newspaper, magazine, or other publication.'),
(67, NULL, 3, 'editorList', 'list of editors', 'An ordered list of editors. Normally, this list is seen as a priority list that order editors by importance.'),
(68, NULL, 3, 'interviewee', 'interviewee', 'An agent that is interviewed by another agent.'),
(69, NULL, 3, 'interviewer', 'interviewer', 'An agent that interview another agent.'),
(70, NULL, 3, 'issuer', 'issuer', 'An entity responsible for issuing often informally published documents such as press releases, reports, etc.'),
(71, NULL, 3, 'organizer', 'organizer', 'The organizer of an event; includes conference organizers, but also government agencies or other bodies that are responsible for conducting hearings.'),
(72, NULL, 3, 'owner', 'owner', 'Owner of a document or a collection of documents.'),
(73, NULL, 3, 'performer', 'performer', NULL),
(74, NULL, 3, 'presentedAt', 'presented at', 'Relates a document to an event; for example, a paper to a conference.'),
(75, NULL, 3, 'presents', 'presents', 'Relates an event to associated documents; for example, conference to a paper.'),
(76, NULL, 3, 'producer', 'producer', 'Producer of a document or a collection of documents.'),
(77, NULL, 3, 'recipient', 'recipient', 'An agent that receives a communication document.'),
(78, NULL, 3, 'reproducedIn', 'reproducedIn', 'The resource in which another resource is reproduced.'),
(79, NULL, 3, 'reversedBy', 'reversedBy', 'A legal decision that reverses a ruling.'),
(80, NULL, 3, 'reviewOf', 'review of', 'Relates a review document to a reviewed thing (resource, item, etc.).'),
(81, NULL, 3, 'status', 'status', 'The publication status of (typically academic) content.'),
(82, NULL, 3, 'subsequentLegalDecision', 'subsequentLegalDecision', 'A legal decision on appeal that takes action on a case (affirming it, reversing it, etc.).'),
(83, NULL, 3, 'transcriptOf', 'transcript of', 'Relates a document to some transcribed original.'),
(84, NULL, 3, 'translationOf', 'translation of', 'Relates a translated document to the original document.'),
(85, NULL, 3, 'translator', 'translator', 'A person who translates written document from one language to another.'),
(86, NULL, 3, 'abstract', 'abstract', 'A summary of the resource.'),
(87, NULL, 3, 'argued', 'date argued', 'The date on which a legal case is argued before a court. Date is of format xsd:date'),
(88, NULL, 3, 'asin', 'asin', NULL),
(89, NULL, 3, 'chapter', 'chapter', 'An chapter number'),
(90, NULL, 3, 'coden', 'coden', NULL),
(91, NULL, 3, 'content', 'content', 'This property is for a plain-text rendering of the content of a Document. While the plain-text content of an entire document could be described by this property.'),
(92, NULL, 3, 'doi', 'doi', NULL),
(93, NULL, 3, 'eanucc13', 'eanucc13', NULL),
(94, NULL, 3, 'edition', 'edition', 'The name defining a special edition of a document. Normally its a literal value composed of a version number and words.'),
(95, NULL, 3, 'eissn', 'eissn', NULL),
(96, NULL, 3, 'gtin14', 'gtin14', NULL),
(97, NULL, 3, 'handle', 'handle', NULL),
(98, NULL, 3, 'identifier', 'identifier', NULL),
(99, NULL, 3, 'isbn', 'isbn', NULL),
(100, NULL, 3, 'isbn10', 'isbn10', NULL),
(101, NULL, 3, 'isbn13', 'isbn13', NULL),
(102, NULL, 3, 'issn', 'issn', NULL),
(103, NULL, 3, 'issue', 'issue', 'An issue number'),
(104, NULL, 3, 'lccn', 'lccn', NULL),
(105, NULL, 3, 'locator', 'locator', 'A description (often numeric) that locates an item within a containing document or collection.'),
(106, NULL, 3, 'numPages', 'number of pages', 'The number of pages contained in a document'),
(107, NULL, 3, 'numVolumes', 'number of volumes', 'The number of volumes contained in a collection of documents (usually a series, periodical, etc.).'),
(108, NULL, 3, 'number', 'number', 'A generic item or document number. Not to be confused with issue number.'),
(109, NULL, 3, 'oclcnum', 'oclcnum', NULL),
(110, NULL, 3, 'pageEnd', 'page end', 'Ending page number within a continuous page range.'),
(111, NULL, 3, 'pageStart', 'page start', 'Starting page number within a continuous page range.'),
(112, NULL, 3, 'pages', 'pages', 'A string of non-contiguous page spans that locate a Document within a Collection. Example: 23-25, 34, 54-56. For continuous page ranges, use the pageStart and pageEnd properties.'),
(113, NULL, 3, 'pmid', 'pmid', NULL),
(114, NULL, 3, 'prefixName', 'prefix name', 'The prefix of a name'),
(115, NULL, 3, 'section', 'section', 'A section number'),
(116, NULL, 3, 'shortDescription', 'shortDescription', NULL),
(117, NULL, 3, 'shortTitle', 'short title', 'The abbreviation of a title.'),
(118, NULL, 3, 'sici', 'sici', NULL),
(119, NULL, 3, 'suffixName', 'suffix name', 'The suffix of a name'),
(120, NULL, 3, 'upc', 'upc', NULL),
(121, NULL, 3, 'uri', 'uri', 'Universal Resource Identifier of a document'),
(122, NULL, 3, 'volume', 'volume', 'A volume number'),
(123, NULL, 4, 'mbox', 'personal mailbox', 'A  personal mailbox, ie. an Internet mailbox associated with exactly one owner, the first owner of this mailbox. This is a \'static inverse functional property\', in that  there is (across time and change) at most one individual that ever has any particular value for foaf:mbox.'),
(124, NULL, 4, 'mbox_sha1sum', 'sha1sum of a personal mailbox URI name', 'The sha1sum of the URI of an Internet mailbox associated with exactly one owner, the  first owner of the mailbox.'),
(125, NULL, 4, 'gender', 'gender', 'The gender of this Agent (typically but not necessarily \'male\' or \'female\').'),
(126, NULL, 4, 'geekcode', 'geekcode', 'A textual geekcode for this person, see http://www.geekcode.com/geek.html'),
(127, NULL, 4, 'dnaChecksum', 'DNA checksum', 'A checksum for the DNA of some thing. Joke.'),
(128, NULL, 4, 'sha1', 'sha1sum (hex)', 'A sha1sum hash, in hex.'),
(129, NULL, 4, 'based_near', 'based near', 'A location that something is based near, for some broadly human notion of near.'),
(130, NULL, 4, 'title', 'title', 'Title (Mr, Mrs, Ms, Dr. etc)'),
(131, NULL, 4, 'nick', 'nickname', 'A short informal nickname characterising an agent (includes login identifiers, IRC and other chat nicknames).'),
(132, NULL, 4, 'jabberID', 'jabber ID', 'A jabber ID for something.'),
(133, NULL, 4, 'aimChatID', 'AIM chat ID', 'An AIM chat ID'),
(134, NULL, 4, 'skypeID', 'Skype ID', 'A Skype ID'),
(135, NULL, 4, 'icqChatID', 'ICQ chat ID', 'An ICQ chat ID'),
(136, NULL, 4, 'yahooChatID', 'Yahoo chat ID', 'A Yahoo chat ID'),
(137, NULL, 4, 'msnChatID', 'MSN chat ID', 'An MSN chat ID'),
(138, NULL, 4, 'name', 'name', 'A name for some thing.'),
(139, NULL, 4, 'firstName', 'firstName', 'The first name of a person.'),
(140, NULL, 4, 'lastName', 'lastName', 'The last name of a person.'),
(141, NULL, 4, 'givenName', 'Given name', 'The given name of some person.'),
(142, NULL, 4, 'givenname', 'Given name', 'The given name of some person.'),
(143, NULL, 4, 'surname', 'Surname', 'The surname of some person.'),
(144, NULL, 4, 'family_name', 'family_name', 'The family name of some person.'),
(145, NULL, 4, 'familyName', 'familyName', 'The family name of some person.'),
(146, NULL, 4, 'phone', 'phone', 'A phone,  specified using fully qualified tel: URI scheme (refs: http://www.w3.org/Addressing/schemes.html#tel).'),
(147, NULL, 4, 'homepage', 'homepage', 'A homepage for some thing.'),
(148, NULL, 4, 'weblog', 'weblog', 'A weblog of some thing (whether person, group, company etc.).'),
(149, NULL, 4, 'openid', 'openid', 'An OpenID for an Agent.'),
(150, NULL, 4, 'tipjar', 'tipjar', 'A tipjar document for this agent, describing means for payment and reward.'),
(151, NULL, 4, 'plan', 'plan', 'A .plan comment, in the tradition of finger and \'.plan\' files.'),
(152, NULL, 4, 'made', 'made', 'Something that was made by this agent.'),
(153, NULL, 4, 'maker', 'maker', 'An agent that  made this thing.'),
(154, NULL, 4, 'img', 'image', 'An image that can be used to represent some thing (ie. those depictions which are particularly representative of something, eg. one\'s photo on a homepage).'),
(155, NULL, 4, 'depiction', 'depiction', 'A depiction of some thing.'),
(156, NULL, 4, 'depicts', 'depicts', 'A thing depicted in this representation.'),
(157, NULL, 4, 'thumbnail', 'thumbnail', 'A derived thumbnail image.'),
(158, NULL, 4, 'myersBriggs', 'myersBriggs', 'A Myers Briggs (MBTI) personality classification.'),
(159, NULL, 4, 'workplaceHomepage', 'workplace homepage', 'A workplace homepage of some person; the homepage of an organization they work for.'),
(160, NULL, 4, 'workInfoHomepage', 'work info homepage', 'A work info homepage of some person; a page about their work for some organization.'),
(161, NULL, 4, 'schoolHomepage', 'schoolHomepage', 'A homepage of a school attended by the person.'),
(162, NULL, 4, 'knows', 'knows', 'A person known by this person (indicating some level of reciprocated interaction between the parties).'),
(163, NULL, 4, 'interest', 'interest', 'A page about a topic of interest to this person.'),
(164, NULL, 4, 'topic_interest', 'topic_interest', 'A thing of interest to this person.'),
(165, NULL, 4, 'publications', 'publications', 'A link to the publications of this person.'),
(166, NULL, 4, 'currentProject', 'current project', 'A current project this person works on.'),
(167, NULL, 4, 'pastProject', 'past project', 'A project this person has previously worked on.'),
(168, NULL, 4, 'fundedBy', 'funded by', 'An organization funding a project or person.'),
(169, NULL, 4, 'logo', 'logo', 'A logo representing some thing.'),
(170, NULL, 4, 'topic', 'topic', 'A topic of some page or document.'),
(171, NULL, 4, 'primaryTopic', 'primary topic', 'The primary topic of some page or document.'),
(172, NULL, 4, 'focus', 'focus', 'The underlying or \'focal\' entity associated with some SKOS-described concept.'),
(173, NULL, 4, 'isPrimaryTopicOf', 'is primary topic of', 'A document that this thing is the primary topic of.'),
(174, NULL, 4, 'page', 'page', 'A page or document about this thing.'),
(175, NULL, 4, 'theme', 'theme', 'A theme.'),
(176, NULL, 4, 'account', 'account', 'Indicates an account held by this agent.'),
(177, NULL, 4, 'holdsAccount', 'account', 'Indicates an account held by this agent.'),
(178, NULL, 4, 'accountServiceHomepage', 'account service homepage', 'Indicates a homepage of the service provide for this online account.'),
(179, NULL, 4, 'accountName', 'account name', 'Indicates the name (identifier) associated with this online account.'),
(180, NULL, 4, 'member', 'member', 'Indicates a member of a Group'),
(181, NULL, 4, 'membershipClass', 'membershipClass', 'Indicates the class of individuals that are a member of a Group'),
(182, NULL, 4, 'birthday', 'birthday', 'The birthday of this Agent, represented in mm-dd string form, eg. \'12-31\'.'),
(183, NULL, 4, 'age', 'age', 'The age in years of some agent.'),
(184, NULL, 4, 'status', 'status', 'A string expressing what the user is happy for the general public (normally) to know about their current activity.'),
(236, 1, 8, 'idUtilisateur', 'Identifiant utilisateur', 'Identifiant unique de l’utilisateur.'),
(237, 1, 8, 'nom', 'Nom', 'Nom complet de l’utilisateur.'),
(238, 1, 8, 'email', 'Email', 'Adresse email de l’utilisateur.'),
(239, 1, 8, 'role', 'Rôle', 'Rôle de l’utilisateur (étudiant, chercheur, admin...).'),
(240, 1, 8, 'idAudio', 'Identifiant audio', 'Identifiant unique de l’audio.'),
(241, 1, 8, 'titre', 'Titre', 'Titre du fichier audio.'),
(242, 1, 8, 'fichier', 'Fichier', 'Lien ou chemin du fichier audio.'),
(243, 1, 8, 'dateUpload', 'Date de téléversement', 'Date à laquelle l’audio a été ajouté par l’utilisateur.'),
(244, 1, 8, 'aPourUtilisateur', 'Téléversé par', 'Utilisateur ayant téléversé l’audio.'),
(245, 1, 8, 'idTranscription', 'Identifiant transcription', 'Identifiant unique de la transcription.'),
(246, 1, 8, 'contenuTranscription', 'Contenu', 'Texte de la transcription générée à partir de l’audio.'),
(247, 1, 8, 'langueTranscription', 'Langue', 'Langue utilisée pour la transcription.'),
(248, 1, 8, 'aPourAudio', 'Associe à l’audio', 'Audio auquel appartient cette transcription.'),
(249, 1, 8, 'idTraduction', 'Identifiant traduction', 'Identifiant unique de la traduction.'),
(250, 1, 8, 'contenuTraduction', 'Contenu', 'Texte de la traduction d’une transcription.'),
(251, 1, 8, 'langueCible', 'Langue cible', 'Langue dans laquelle la transcription a été traduite.'),
(252, 1, 8, 'aPourTranscription', 'Traduit depuis', 'Transcription dont cette traduction est issue.');

-- --------------------------------------------------------

--
-- Structure de la table `resource`
--

CREATE TABLE `resource` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `resource_class_id` int(11) DEFAULT NULL,
  `resource_template_id` int(11) DEFAULT NULL,
  `thumbnail_id` int(11) DEFAULT NULL,
  `title` longtext DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  `resource_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `resource`
--

INSERT INTO `resource` (`id`, `owner_id`, `resource_class_id`, `resource_template_id`, `thumbnail_id`, `title`, `is_public`, `created`, `modified`, `resource_type`) VALUES
(17, 1, 118, 2, NULL, 'Alice Dupont', 1, '2025-11-11 15:10:43', '2025-11-11 15:10:43', 'Omeka\\Entity\\Item'),
(18, 1, 118, 2, NULL, 'Marc Bernard', 1, '2025-11-11 15:10:43', '2025-11-11 15:10:43', 'Omeka\\Entity\\Item'),
(19, 1, 118, 2, NULL, 'Sarah Lambert', 1, '2025-11-11 15:10:43', '2025-11-11 15:10:43', 'Omeka\\Entity\\Item'),
(39, 1, 119, 3, NULL, 'Entretien avec un artisan', 1, '2025-11-11 16:42:57', '2025-11-11 16:42:57', 'Omeka\\Entity\\Item'),
(40, 1, 120, 4, NULL, 'fr', 1, '2025-11-11 16:55:49', '2025-11-11 16:55:49', 'Omeka\\Entity\\Item'),
(41, 1, 121, 5, NULL, 'en', 1, '2025-11-11 16:57:06', '2025-11-11 16:57:06', 'Omeka\\Entity\\Item'),
(45, 1, 119, 3, NULL, 'Entretien9', 1, '2025-11-14 18:03:05', '2025-11-14 18:03:05', 'Omeka\\Entity\\Item'),
(46, 1, NULL, NULL, NULL, NULL, 1, '2025-11-14 18:03:05', '2025-11-14 18:03:05', 'Omeka\\Entity\\Media'),
(47, 1, 119, 3, NULL, 'Entretien10', 1, '2025-11-14 18:08:06', '2025-11-14 18:08:07', 'Omeka\\Entity\\Item'),
(48, 1, NULL, NULL, NULL, NULL, 1, '2025-11-14 18:08:06', '2025-11-14 18:08:06', 'Omeka\\Entity\\Media'),
(49, 1, 119, 3, NULL, 'Entretien11', 1, '2025-11-14 18:11:50', '2025-11-14 18:11:50', 'Omeka\\Entity\\Item'),
(50, 1, NULL, NULL, NULL, NULL, 1, '2025-11-14 18:11:50', '2025-11-14 18:11:50', 'Omeka\\Entity\\Media'),
(51, 1, 119, 3, NULL, 'Entretien30', 1, '2025-11-14 18:14:14', '2025-11-14 18:14:14', 'Omeka\\Entity\\Item'),
(52, 1, NULL, NULL, NULL, NULL, 1, '2025-11-14 18:14:14', '2025-11-14 18:14:14', 'Omeka\\Entity\\Media'),
(53, 1, 119, 3, NULL, 'Entretien112', 1, '2025-11-14 18:26:51', '2025-11-14 18:26:52', 'Omeka\\Entity\\Item'),
(54, 1, NULL, NULL, NULL, NULL, 1, '2025-11-14 18:26:51', '2025-11-14 18:26:51', 'Omeka\\Entity\\Media'),
(55, 2, 119, 3, NULL, 'Entretien33', 1, '2025-11-16 09:48:17', '2025-11-16 09:48:22', 'Omeka\\Entity\\Item'),
(56, 2, NULL, NULL, NULL, NULL, 1, '2025-11-16 09:48:18', '2025-11-16 09:48:18', 'Omeka\\Entity\\Media'),
(57, 2, 119, 3, NULL, 'Entretien32', 1, '2025-11-16 12:00:50', '2025-11-16 12:00:50', 'Omeka\\Entity\\Item'),
(58, 2, NULL, NULL, NULL, NULL, 1, '2025-11-16 12:00:50', '2025-11-16 12:00:50', 'Omeka\\Entity\\Media'),
(59, 1, 119, NULL, NULL, NULL, 1, '2025-11-28 12:29:39', '2025-11-28 12:29:39', 'Omeka\\Entity\\Item'),
(60, 1, 119, NULL, NULL, NULL, 1, '2025-11-28 12:33:19', '2025-11-28 12:33:19', 'Omeka\\Entity\\Item'),
(61, 1, 119, 3, NULL, 'exp1.mp3', 1, '2025-11-29 10:09:54', '2025-11-29 10:09:54', 'Omeka\\Entity\\Item'),
(62, 1, 119, 3, NULL, 'exp1.mp3', 1, '2025-11-29 10:12:28', '2025-11-29 10:12:28', 'Omeka\\Entity\\Item'),
(63, 1, 119, 3, NULL, 'exp1.mp3', 1, '2025-11-29 10:17:10', '2025-11-29 10:17:10', 'Omeka\\Entity\\Item'),
(64, 1, 119, 3, NULL, 'exp1.mp3', 1, '2025-11-29 10:19:49', '2025-11-29 10:19:49', 'Omeka\\Entity\\Item'),
(65, 1, 119, 3, NULL, 'exp1.mp3', 1, '2025-11-29 10:24:22', '2025-11-29 10:24:22', 'Omeka\\Entity\\Item'),
(66, 1, 119, 3, NULL, 'exp1.mp3', 1, '2025-11-29 10:28:26', '2025-11-29 10:28:26', 'Omeka\\Entity\\Item'),
(67, 1, 119, 3, NULL, 'exp1.mp3', 1, '2025-11-29 10:29:27', '2025-11-29 10:29:27', 'Omeka\\Entity\\Item'),
(68, 1, 119, 3, NULL, 'exp1.mp3', 1, '2025-11-29 10:35:32', '2025-11-29 10:35:32', 'Omeka\\Entity\\Item'),
(69, 1, 120, 4, NULL, 'fr', 1, '2025-11-29 10:35:32', '2025-11-29 10:35:32', 'Omeka\\Entity\\Item'),
(70, 1, 121, 5, NULL, 'en', 1, '2025-11-29 10:35:32', '2025-11-29 10:35:32', 'Omeka\\Entity\\Item'),
(71, 1, 119, 3, NULL, 'exp1.mp3', 1, '2025-11-29 11:38:33', '2025-11-29 11:38:33', 'Omeka\\Entity\\Item'),
(72, 1, 120, 4, NULL, 'fr', 1, '2025-11-29 11:38:33', '2025-11-29 11:38:33', 'Omeka\\Entity\\Item'),
(73, 1, 121, 5, NULL, 'en', 1, '2025-11-29 11:38:33', '2025-11-29 11:38:33', 'Omeka\\Entity\\Item'),
(74, 1, 119, 3, NULL, 'exp1.mp3', 1, '2025-11-29 11:43:12', '2025-11-29 11:43:12', 'Omeka\\Entity\\Item'),
(75, 1, 119, 3, NULL, 'exp1.mp3', 1, '2025-11-29 13:11:28', '2025-11-29 13:11:29', 'Omeka\\Entity\\Item'),
(76, 1, 120, 4, NULL, 'fr', 1, '2025-11-29 13:11:29', '2025-11-29 13:11:29', 'Omeka\\Entity\\Item'),
(77, 1, 121, 5, NULL, 'ar', 1, '2025-11-29 13:11:29', '2025-11-29 13:11:29', 'Omeka\\Entity\\Item'),
(78, 1, 119, 3, NULL, NULL, 1, '2025-11-29 13:35:51', '2025-11-29 13:35:52', 'Omeka\\Entity\\Item'),
(79, 1, NULL, NULL, NULL, 'exp1.mp3', 1, '2025-11-29 13:35:51', '2025-11-29 13:35:51', 'Omeka\\Entity\\Media'),
(80, 1, 120, 4, NULL, 'fr', 1, '2025-11-29 13:35:52', '2025-11-29 13:35:52', 'Omeka\\Entity\\Item'),
(81, 1, 121, 5, NULL, 'es', 1, '2025-11-29 13:35:52', '2025-11-29 13:35:52', 'Omeka\\Entity\\Item'),
(82, 1, 119, 3, NULL, NULL, 1, '2025-11-29 13:41:58', '2025-11-29 13:41:58', 'Omeka\\Entity\\Item'),
(83, 1, NULL, NULL, NULL, 'exp1.mp3', 1, '2025-11-29 13:41:58', '2025-11-29 13:41:58', 'Omeka\\Entity\\Media'),
(84, 1, 120, 4, NULL, NULL, 1, '2025-11-29 13:41:58', '2025-11-29 13:41:58', 'Omeka\\Entity\\Item'),
(85, 1, 121, 5, NULL, NULL, 1, '2025-11-29 13:41:58', '2025-11-29 13:41:58', 'Omeka\\Entity\\Item'),
(86, 1, 119, 3, NULL, NULL, 1, '2025-11-29 13:47:12', '2025-11-29 13:47:12', 'Omeka\\Entity\\Item'),
(87, 1, NULL, NULL, NULL, 'exp1.mp3', 1, '2025-11-29 13:47:12', '2025-11-29 13:47:12', 'Omeka\\Entity\\Media'),
(88, 1, 120, 4, NULL, NULL, 1, '2025-11-29 13:47:12', '2025-11-29 13:47:12', 'Omeka\\Entity\\Item'),
(89, 1, 121, 5, NULL, NULL, 1, '2025-11-29 13:47:12', '2025-11-29 13:47:12', 'Omeka\\Entity\\Item'),
(90, 1, 119, 3, NULL, 'exp1.mp3', 1, '2025-11-29 13:53:04', '2025-11-29 13:53:04', 'Omeka\\Entity\\Item'),
(91, 1, NULL, NULL, NULL, 'exp1.mp3', 1, '2025-11-29 13:53:04', '2025-11-29 13:53:04', 'Omeka\\Entity\\Media'),
(92, 1, 120, 4, NULL, 'fr', 1, '2025-11-29 13:53:04', '2025-11-29 13:53:04', 'Omeka\\Entity\\Item'),
(93, 1, 121, 5, NULL, 'ar', 1, '2025-11-29 13:53:04', '2025-11-29 13:53:04', 'Omeka\\Entity\\Item'),
(94, 1, 119, 3, NULL, 'exp1.mp3', 1, '2025-11-30 15:52:00', '2025-11-30 15:52:00', 'Omeka\\Entity\\Item'),
(95, 1, NULL, NULL, NULL, 'exp1.mp3', 1, '2025-11-30 15:52:01', '2025-11-30 15:52:01', 'Omeka\\Entity\\Media'),
(96, 1, 120, 4, NULL, 'fr', 1, '2025-11-30 15:52:03', '2025-11-30 15:52:03', 'Omeka\\Entity\\Item'),
(97, 1, 121, 5, NULL, 'ar', 1, '2025-11-30 15:52:03', '2025-11-30 15:52:03', 'Omeka\\Entity\\Item');

-- --------------------------------------------------------

--
-- Structure de la table `resource_class`
--

CREATE TABLE `resource_class` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `vocabulary_id` int(11) NOT NULL,
  `local_name` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(255) NOT NULL,
  `comment` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `resource_class`
--

INSERT INTO `resource_class` (`id`, `owner_id`, `vocabulary_id`, `local_name`, `label`, `comment`) VALUES
(1, NULL, 1, 'Agent', 'Agent', 'A resource that acts or has the power to act.'),
(2, NULL, 1, 'AgentClass', 'Agent Class', 'A group of agents.'),
(3, NULL, 1, 'BibliographicResource', 'Bibliographic Resource', 'A book, article, or other documentary resource.'),
(4, NULL, 1, 'FileFormat', 'File Format', 'A digital resource format.'),
(5, NULL, 1, 'Frequency', 'Frequency', 'A rate at which something recurs.'),
(6, NULL, 1, 'Jurisdiction', 'Jurisdiction', 'The extent or range of judicial, law enforcement, or other authority.'),
(7, NULL, 1, 'LicenseDocument', 'License Document', 'A legal document giving official permission to do something with a Resource.'),
(8, NULL, 1, 'LinguisticSystem', 'Linguistic System', 'A system of signs, symbols, sounds, gestures, or rules used in communication.'),
(9, NULL, 1, 'Location', 'Location', 'A spatial region or named place.'),
(10, NULL, 1, 'LocationPeriodOrJurisdiction', 'Location, Period, or Jurisdiction', 'A location, period of time, or jurisdiction.'),
(11, NULL, 1, 'MediaType', 'Media Type', 'A file format or physical medium.'),
(12, NULL, 1, 'MediaTypeOrExtent', 'Media Type or Extent', 'A media type or extent.'),
(13, NULL, 1, 'MethodOfInstruction', 'Method of Instruction', 'A process that is used to engender knowledge, attitudes, and skills.'),
(14, NULL, 1, 'MethodOfAccrual', 'Method of Accrual', 'A method by which resources are added to a collection.'),
(15, NULL, 1, 'PeriodOfTime', 'Period of Time', 'An interval of time that is named or defined by its start and end dates.'),
(16, NULL, 1, 'PhysicalMedium', 'Physical Medium', 'A physical material or carrier.'),
(17, NULL, 1, 'PhysicalResource', 'Physical Resource', 'A material thing.'),
(18, NULL, 1, 'Policy', 'Policy', 'A plan or course of action by an authority, intended to influence and determine decisions, actions, and other matters.'),
(19, NULL, 1, 'ProvenanceStatement', 'Provenance Statement', 'A statement of any changes in ownership and custody of a resource since its creation that are significant for its authenticity, integrity, and interpretation.'),
(20, NULL, 1, 'RightsStatement', 'Rights Statement', 'A statement about the intellectual property rights (IPR) held in or over a Resource, a legal document giving official permission to do something with a resource, or a statement about access rights.'),
(21, NULL, 1, 'SizeOrDuration', 'Size or Duration', 'A dimension or extent, or a time taken to play or execute.'),
(22, NULL, 1, 'Standard', 'Standard', 'A basis for comparison; a reference point against which other things can be evaluated.'),
(23, NULL, 2, 'Collection', 'Collection', 'An aggregation of resources.'),
(24, NULL, 2, 'Dataset', 'Dataset', 'Data encoded in a defined structure.'),
(25, NULL, 2, 'Event', 'Event', 'A non-persistent, time-based occurrence.'),
(26, NULL, 2, 'Image', 'Image', 'A visual representation other than text.'),
(27, NULL, 2, 'InteractiveResource', 'Interactive Resource', 'A resource requiring interaction from the user to be understood, executed, or experienced.'),
(28, NULL, 2, 'Service', 'Service', 'A system that provides one or more functions.'),
(29, NULL, 2, 'Software', 'Software', 'A computer program in source or compiled form.'),
(30, NULL, 2, 'Sound', 'Sound', 'A resource primarily intended to be heard.'),
(31, NULL, 2, 'Text', 'Text', 'A resource consisting primarily of words for reading.'),
(32, NULL, 2, 'PhysicalObject', 'Physical Object', 'An inanimate, three-dimensional object or substance.'),
(33, NULL, 2, 'StillImage', 'Still Image', 'A static visual representation.'),
(34, NULL, 2, 'MovingImage', 'Moving Image', 'A series of visual representations imparting an impression of motion when shown in succession.'),
(35, NULL, 3, 'AcademicArticle', 'Academic Article', 'A scholarly academic article, typically published in a journal.'),
(36, NULL, 3, 'Article', 'Article', 'A written composition in prose, usually nonfiction, on a specific topic, forming an independent part of a book or other publication, as a newspaper or magazine.'),
(37, NULL, 3, 'AudioDocument', 'audio document', 'An audio document; aka record.'),
(38, NULL, 3, 'AudioVisualDocument', 'audio-visual document', 'An audio-visual document; film, video, and so forth.'),
(39, NULL, 3, 'Bill', 'Bill', 'Draft legislation presented for discussion to a legal body.'),
(40, NULL, 3, 'Book', 'Book', 'A written or printed work of fiction or nonfiction, usually on sheets of paper fastened or bound together within covers.'),
(41, NULL, 3, 'BookSection', 'Book Section', 'A section of a book.'),
(42, NULL, 3, 'Brief', 'Brief', 'A written argument submitted to a court.'),
(43, NULL, 3, 'Chapter', 'Chapter', 'A chapter of a book.'),
(44, NULL, 3, 'Code', 'Code', 'A collection of statutes.'),
(45, NULL, 3, 'CollectedDocument', 'Collected Document', 'A document that simultaneously contains other documents.'),
(46, NULL, 3, 'Collection', 'Collection', 'A collection of Documents or Collections'),
(47, NULL, 3, 'Conference', 'Conference', 'A meeting for consultation or discussion.'),
(48, NULL, 3, 'CourtReporter', 'Court Reporter', 'A collection of legal cases.'),
(49, NULL, 3, 'Document', 'Document', 'A document (noun) is a bounded physical representation of body of information designed with the capacity (and usually intent) to communicate. A document may manifest symbolic, diagrammatic or sensory-representational information.'),
(50, NULL, 3, 'DocumentPart', 'document part', 'a distinct part of a larger document or collected document.'),
(51, NULL, 3, 'DocumentStatus', 'Document Status', 'The status of the publication of a document.'),
(52, NULL, 3, 'EditedBook', 'Edited Book', 'An edited book.'),
(53, NULL, 3, 'Email', 'EMail', 'A written communication addressed to a person or organization and transmitted electronically.'),
(54, NULL, 3, 'Event', 'Event', NULL),
(55, NULL, 3, 'Excerpt', 'Excerpt', 'A passage selected from a larger work.'),
(56, NULL, 3, 'Film', 'Film', 'aka movie.'),
(57, NULL, 3, 'Hearing', 'Hearing', 'An instance or a session in which testimony and arguments are presented, esp. before an official, as a judge in a lawsuit.'),
(58, NULL, 3, 'Image', 'Image', 'A document that presents visual or diagrammatic information.'),
(59, NULL, 3, 'Interview', 'Interview', 'A formalized discussion between two or more people.'),
(60, NULL, 3, 'Issue', 'Issue', 'something that is printed or published and distributed, esp. a given number of a periodical'),
(61, NULL, 3, 'Journal', 'Journal', 'A periodical of scholarly journal Articles.'),
(62, NULL, 3, 'LegalCaseDocument', 'Legal Case Document', 'A document accompanying a legal case.'),
(63, NULL, 3, 'LegalDecision', 'Decision', 'A document containing an authoritative determination (as a decree or judgment) made after consideration of facts or law.'),
(64, NULL, 3, 'LegalDocument', 'Legal Document', 'A legal document; for example, a court decision, a brief, and so forth.'),
(65, NULL, 3, 'Legislation', 'Legislation', 'A legal document proposing or enacting a law or a group of laws.'),
(66, NULL, 3, 'Letter', 'Letter', 'A written or printed communication addressed to a person or organization and usually transmitted by mail.'),
(67, NULL, 3, 'Magazine', 'Magazine', 'A periodical of magazine Articles. A magazine is a publication that is issued periodically, usually bound in a paper cover, and typically contains essays, stories, poems, etc., by many writers, and often photographs and drawings, frequently specializing in a particular subject or area, as hobbies, news, or sports.'),
(68, NULL, 3, 'Manual', 'Manual', 'A small reference book, especially one giving instructions.'),
(69, NULL, 3, 'Manuscript', 'Manuscript', 'An unpublished Document, which may also be submitted to a publisher for publication.'),
(70, NULL, 3, 'Map', 'Map', 'A graphical depiction of geographic features.'),
(71, NULL, 3, 'MultiVolumeBook', 'Multivolume Book', 'A loose, thematic, collection of Documents, often Books.'),
(72, NULL, 3, 'Newspaper', 'Newspaper', 'A periodical of documents, usually issued daily or weekly, containing current news, editorials, feature articles, and usually advertising.'),
(73, NULL, 3, 'Note', 'Note', 'Notes or annotations about a resource.'),
(74, NULL, 3, 'Patent', 'Patent', 'A document describing the exclusive right granted by a government to an inventor to manufacture, use, or sell an invention for a certain number of years.'),
(75, NULL, 3, 'Performance', 'Performance', 'A public performance.'),
(76, NULL, 3, 'Periodical', 'Periodical', 'A group of related documents issued at regular intervals.'),
(77, NULL, 3, 'PersonalCommunication', 'Personal Communication', 'A communication between an agent and one or more specific recipients.'),
(78, NULL, 3, 'PersonalCommunicationDocument', 'Personal Communication Document', 'A personal communication manifested in some document.'),
(79, NULL, 3, 'Proceedings', 'Proceedings', 'A compilation of documents published from an event, such as a conference.'),
(80, NULL, 3, 'Quote', 'Quote', 'An excerpted collection of words.'),
(81, NULL, 3, 'ReferenceSource', 'Reference Source', 'A document that presents authoritative reference information, such as a dictionary or encylopedia .'),
(82, NULL, 3, 'Report', 'Report', 'A document describing an account or statement describing in detail an event, situation, or the like, usually as the result of observation, inquiry, etc..'),
(83, NULL, 3, 'Series', 'Series', 'A loose, thematic, collection of Documents, often Books.'),
(84, NULL, 3, 'Slide', 'Slide', 'A slide in a slideshow'),
(85, NULL, 3, 'Slideshow', 'Slideshow', 'A presentation of a series of slides, usually presented in front of an audience with written text and images.'),
(86, NULL, 3, 'Standard', 'Standard', 'A document describing a standard'),
(87, NULL, 3, 'Statute', 'Statute', 'A bill enacted into law.'),
(88, NULL, 3, 'Thesis', 'Thesis', 'A document created to summarize research findings associated with the completion of an academic degree.'),
(89, NULL, 3, 'ThesisDegree', 'Thesis degree', 'The academic degree of a Thesis'),
(90, NULL, 3, 'Webpage', 'Webpage', 'A web page is an online document available (at least initially) on the world wide web. A web page is written first and foremost to appear on the web, as distinct from other online resources such as books, manuscripts or audio documents which use the web primarily as a distribution mechanism alongside other more traditional methods such as print.'),
(91, NULL, 3, 'Website', 'Website', 'A group of Webpages accessible on the Web.'),
(92, NULL, 3, 'Workshop', 'Workshop', 'A seminar, discussion group, or the like, that emphasizes zxchange of ideas and the demonstration and application of techniques, skills, etc.'),
(93, NULL, 4, 'LabelProperty', 'Label Property', 'A foaf:LabelProperty is any RDF property with texual values that serve as labels.'),
(94, NULL, 4, 'Person', 'Person', 'A person.'),
(95, NULL, 4, 'Document', 'Document', 'A document.'),
(96, NULL, 4, 'Organization', 'Organization', 'An organization.'),
(97, NULL, 4, 'Group', 'Group', 'A class of Agents.'),
(98, NULL, 4, 'Agent', 'Agent', 'An agent (eg. person, group, software or physical artifact).'),
(99, NULL, 4, 'Project', 'Project', 'A project (a collective endeavour of some kind).'),
(100, NULL, 4, 'Image', 'Image', 'An image.'),
(101, NULL, 4, 'PersonalProfileDocument', 'PersonalProfileDocument', 'A personal profile RDF document.'),
(102, NULL, 4, 'OnlineAccount', 'Online Account', 'An online account.'),
(103, NULL, 4, 'OnlineGamingAccount', 'Online Gaming Account', 'An online gaming account.'),
(104, NULL, 4, 'OnlineEcommerceAccount', 'Online E-commerce Account', 'An online e-commerce account.'),
(105, NULL, 4, 'OnlineChatAccount', 'Online Chat Account', 'An online chat account.'),
(118, 1, 8, 'Utilisateur', 'Utilisateur', 'Personne utilisant Oral2Text pour téléverser, transcrire ou traduire des audios.'),
(119, 1, 8, 'Audio', 'Audio', 'Fichier audio téléversé par un utilisateur.'),
(120, 1, 8, 'Transcription', 'Transcription', 'Texte généré à partir d’un fichier audio.'),
(121, 1, 8, 'Traduction', 'Traduction', 'Version traduite d’une transcription dans une autre langue.');

-- --------------------------------------------------------

--
-- Structure de la table `resource_template`
--

CREATE TABLE `resource_template` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `resource_class_id` int(11) DEFAULT NULL,
  `title_property_id` int(11) DEFAULT NULL,
  `description_property_id` int(11) DEFAULT NULL,
  `label` varchar(190) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `resource_template`
--

INSERT INTO `resource_template` (`id`, `owner_id`, `resource_class_id`, `title_property_id`, `description_property_id`, `label`) VALUES
(1, NULL, NULL, NULL, NULL, 'Base Resource'),
(2, 1, 118, 237, NULL, 'Utilisateur'),
(3, 1, 119, 241, NULL, 'Audio'),
(4, 1, 120, 247, NULL, 'Transcription'),
(5, 1, 121, 251, NULL, 'Traduction');

-- --------------------------------------------------------

--
-- Structure de la table `resource_template_property`
--

CREATE TABLE `resource_template_property` (
  `id` int(11) NOT NULL,
  `resource_template_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `alternate_label` varchar(255) DEFAULT NULL,
  `alternate_comment` longtext DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `data_type` longtext DEFAULT NULL COMMENT '(DC2Type:json_array)',
  `is_required` tinyint(1) NOT NULL,
  `is_private` tinyint(1) NOT NULL,
  `default_lang` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `resource_template_property`
--

INSERT INTO `resource_template_property` (`id`, `resource_template_id`, `property_id`, `alternate_label`, `alternate_comment`, `position`, `data_type`, `is_required`, `is_private`, `default_lang`) VALUES
(1, 1, 1, NULL, NULL, 1, NULL, 0, 0, NULL),
(2, 1, 15, NULL, NULL, 2, NULL, 0, 0, NULL),
(3, 1, 8, NULL, NULL, 3, NULL, 0, 0, NULL),
(4, 1, 2, NULL, NULL, 4, NULL, 0, 0, NULL),
(5, 1, 7, NULL, NULL, 5, NULL, 0, 0, NULL),
(6, 1, 4, NULL, NULL, 6, NULL, 0, 0, NULL),
(7, 1, 9, NULL, NULL, 7, NULL, 0, 0, NULL),
(8, 1, 12, NULL, NULL, 8, NULL, 0, 0, NULL),
(9, 1, 40, 'Place', NULL, 9, NULL, 0, 0, NULL),
(10, 1, 5, NULL, NULL, 10, NULL, 0, 0, NULL),
(11, 1, 17, NULL, NULL, 11, NULL, 0, 0, NULL),
(12, 1, 6, NULL, NULL, 12, NULL, 0, 0, NULL),
(13, 1, 25, NULL, NULL, 13, NULL, 0, 0, NULL),
(14, 1, 10, NULL, NULL, 14, NULL, 0, 0, NULL),
(15, 1, 13, NULL, NULL, 15, NULL, 0, 0, NULL),
(16, 1, 29, NULL, NULL, 16, NULL, 0, 0, NULL),
(17, 1, 30, NULL, NULL, 17, NULL, 0, 0, NULL),
(18, 1, 50, NULL, NULL, 18, NULL, 0, 0, NULL),
(19, 1, 3, NULL, NULL, 19, NULL, 0, 0, NULL),
(20, 1, 41, NULL, NULL, 20, NULL, 0, 0, NULL),
(63, 2, 236, NULL, NULL, 1, '[\"numeric:integer\"]', 0, 0, NULL),
(64, 2, 237, NULL, NULL, 2, '[\"literal\"]', 0, 0, NULL),
(65, 2, 238, NULL, NULL, 3, '[\"literal\"]', 0, 0, NULL),
(66, 2, 239, NULL, NULL, 4, '[\"literal\"]', 0, 0, NULL),
(67, 3, 240, NULL, NULL, 1, '[\"numeric:integer\"]', 0, 0, NULL),
(68, 3, 241, NULL, NULL, 2, '[\"literal\"]', 0, 0, NULL),
(69, 3, 242, NULL, NULL, 3, '[\"resource:media\"]', 0, 0, NULL),
(70, 3, 243, NULL, NULL, 4, '[\"numeric:timestamp\"]', 0, 0, NULL),
(71, 3, 244, NULL, NULL, 5, '[\"resource:item\"]', 0, 0, NULL),
(72, 4, 245, NULL, NULL, 1, '[\"numeric:integer\"]', 0, 0, NULL),
(73, 4, 246, NULL, NULL, 2, '[\"literal\"]', 0, 0, NULL),
(74, 4, 247, NULL, NULL, 3, '[\"literal\"]', 0, 0, NULL),
(75, 4, 248, NULL, NULL, 4, '[\"resource:item\"]', 0, 0, NULL),
(76, 5, 249, NULL, NULL, 1, '[\"numeric:integer\"]', 0, 0, NULL),
(77, 5, 250, NULL, NULL, 2, '[\"literal\"]', 0, 0, NULL),
(78, 5, 251, NULL, NULL, 3, '[\"literal\"]', 0, 0, NULL),
(79, 5, 252, NULL, NULL, 4, '[\"resource:item\"]', 0, 0, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `session`
--

CREATE TABLE `session` (
  `id` varchar(190) NOT NULL,
  `data` longblob NOT NULL,
  `modified` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `session`
--

INSERT INTO `session` (`id`, `data`, `modified`) VALUES
('3uo1pb950c2t3t281psf09plit', 0x5f5f4c616d696e61737c613a363a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313736333937353730332e3138313435323b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a22666565646168373836316d76666e676c66646e31336c72646775223b7d733a34323a224c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313736333933373735373b7d733a33323a224c616d696e61735f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313736343031383930333b7d733a35393a224c616d696e61735f56616c696461746f725f437372665f73616c745f6d6f64756c655f4f72616c32546578745f636f6e6669677572655f63737266223b613a313a7b733a363a22455850495245223b693a313736343031383838363b7d733a34343a224c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313736343031373437393b7d7d72656469726563745f75726c7c733a34333a22687474703a2f2f6c6f63616c686f73742f6f6d6b5f544879705f32352d32365f636c6f6e652f61646d696e223b4c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a223864373365346266323739336132306561333536396266376133316637343334223b733a33323a223633393836646238653931653436653639363337653735393465653861356132223b7d733a343a2268617368223b733a36353a2236333938366462386539316534366536393633376537353934656538613561322d3864373365346266323739336132306561333536396266376133316637343334223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f417574687c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4f6d656b614d657373656e6765727c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a33363a7b733a33323a223764633464626532656161666235633634613037633837633339656666363964223b733a33323a223336353135383733353461643034333431633439636139336362373735383264223b733a33323a223038323964666664666630356465663737363539346330316232363931643562223b733a33323a226433656436613434313064653865643130346365353364353661666262313565223b733a33323a223665373531653734653236363461353266613333633861656539636635353763223b733a33323a223030383966373730373835383435633034616665666432363138613137336339223b733a33323a223263353536366631316266363938616561646335616235616636613832393363223b733a33323a223664396232633839343466366132386135353666633461316134333061326435223b733a33323a223265326234633662643333393466636239383330333464636262333961643462223b733a33323a223462326232653066663832353737343335366362626531613435363363346234223b733a33323a226434653563313262636437356538646663653361363061323331336665333664223b733a33323a226561313736316535653430633135626565636535313161393333343630316133223b733a33323a226130666465343261303934383862643939323437343062396437613666376131223b733a33323a223036323964656563643964643038396666383166616662613431346534393266223b733a33323a223137363966623930653836643362316165313864393362656130366439376334223b733a33323a223633636139326438363339393234303366336633343264376633306565316439223b733a33323a223066323636323935636464346563383632643931656663323532306632303266223b733a33323a223863666632323534613336346637646334633139623563353135363836303939223b733a33323a226331363139303631663362626564393935643430383932613532616534303635223b733a33323a223536353861393062353030356363343963383834366431623038323036643435223b733a33323a226262623361626663376533623331393065343037323164383561663366376264223b733a33323a223861643362326634363439356366303236366138666566303234643066666666223b733a33323a226630353834613265633031346262353261316130616466393362616166353338223b733a33323a226232393566313430376661663730306162653961303536663931636535393631223b733a33323a223565356235373036333832353736366263373835626636613738383133343333223b733a33323a223336313134626636333238373639363935663064633863313531333936666638223b733a33323a226233363666636337623432396136623931613666633933393965353662666634223b733a33323a223562366637636636326535343662306335386261613535353765643432663761223b733a33323a223638396338376663303739616365656132313635666332623463623661613261223b733a33323a223264663638366236373030306639633431303334333462613633386533396435223b733a33323a223338616261383334383961646162323136346566336461333437636234353461223b733a33323a223266333139383336653963303639383166306232653738653237383631343832223b733a33323a226562643739323465306639663031316662616434336237623135383232326330223b733a33323a223863663436343764663737346531363634643766353762653064626431353663223b733a33323a223366666164623435653134613135373336313334303864393464316663313532223b733a33323a223438663434346230376430383262616261373830326638353637323762323731223b733a33323a223433303531316435646539656636326531643036333663353339653332343066223b733a33323a226333646632306438323134366166636532363635636438363538323433623334223b733a33323a226439306366323963306563663436623631306335633138626433623433646366223b733a33323a223938663665303131336565636339326538646364366439373461653536656361223b733a33323a223565643864366133333832343065326266613461643835326263353938383438223b733a33323a226636613031343661663430636530323137316662626538613262616361643264223b733a33323a223965633732626538616364623532313363336664663031353461373334333236223b733a33323a226638383163326364323764613262333966373433623139633333363934396163223b733a33323a226663363166393535643339393664383333623365653763396366313633616234223b733a33323a226135623663306263313737366265636234653665666539666265636261346435223b733a33323a223932323930623966313935373332366134353032316361363861313566333537223b733a33323a226335393230353539346463343364306632333037323637396634613930633835223b733a33323a226531353334376131613561306461333461333738653365383062333339313638223b733a33323a223336663563336438353434303135353530333262333837323064363239633837223b733a33323a223162636637383339376431386137343937613765363861623733323966376538223b733a33323a223732626266326536653932346661396164623062303931653832613065333230223b733a33323a223637623338646535333562623766393461393663623965366562373336303264223b733a33323a223930363164653261363135303836303735646532383233343866633935643439223b733a33323a223265653161346139643433326437366135643761653838326230616666633061223b733a33323a223734343230346263306231356131646163383734623364343261663934383731223b733a33323a223033366632376561323635373937316266323465333762353964366439666130223b733a33323a223934663764343139623133323039656632636434363366653766623765313137223b733a33323a223361653538336466306235383635663362393236623230303962383138393232223b733a33323a223961353365383532373232646435373635653165326161376334383762333765223b733a33323a223963303863653264343562333830393364353238306531313066376139336236223b733a33323a226363366432383334336136353134626464316433613663326566373863363966223b733a33323a226433656362316139613665636239393233363734636630373639636466386162223b733a33323a223939613831643762333732396263616430343938396434643165313836373835223b733a33323a223038616336653162363632633665313864373738363634653963653537343934223b733a33323a226135353363346566336431386435666664303639366138353462663438653433223b733a33323a223333623636613835306436383032336662643633356564333963393339333234223b733a33323a226638643466306537626134633361633364393238323638306163383635313433223b733a33323a223166303461633533313263393565366366613837313265343964653232376436223b733a33323a226464353166653165303439633139663836643331336135303732396231653163223b733a33323a226137373039626432333064386432373933306164363462366562353936633937223b733a33323a223133663031663538633662303665633430626131336664326330653332653536223b7d733a343a2268617368223b733a36353a2231336630316635386336623036656334306261313366643263306533326535362d6137373039626432333064386432373933306164363462366562353936633937223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f6d6f64756c655f4f72616c32546578745f636f6e6669677572655f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a383a7b733a33323a223437613734373934363666656437313433306563333232306462323566656633223b733a33323a226136396433393137656535343866663864343461633436323763613062623765223b733a33323a223364383833623330333164633538656233663239323564646532663731303163223b733a33323a223330313263633331656666336162663237396262393131633366343166396161223b733a33323a226561613937613631323438646432313732646366653939613764643534323330223b733a33323a226232356663313561646138333234396161663762633630353562666634616535223b733a33323a223438633530323733656137393739313465653264333533356136633363366161223b733a33323a223330323939303763633762323566663066386337346164376661623431323064223b733a33323a226165643336623139303035313739393135366366656438656239353030323666223b733a33323a226662613631626339386466383032383035616539653638353638656232323031223b733a33323a223134616538376163363831366535636362666438353839646135323734376530223b733a33323a223539393833313336666231343265383135323930643165323633353133316630223b733a33323a223562663863636266656364386536643530626135333433633433613437343836223b733a33323a223938663539633635393638326139613765396364386635323331376137396331223b733a33323a223963386639366630646261396465333736613637393064313231336564383737223b733a33323a226563663064646663663163396138353736663836656237393466386637396561223b7d733a343a2268617368223b733a36353a2265636630646466636631633961383537366638366562373934663866373965612d3963386639366630646261396465333736613637393064313231336564383737223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a323a7b733a33323a226239393964383833323964633532373331313539353661323265336465636535223b733a33323a226366623966353539333938343834383365323035326330626639343535656139223b733a33323a226234363938643637636533343164633531646639386161383431343961656466223b733a33323a223539343465356366383434616265373536636533366530373434323835346164223b7d733a343a2268617368223b733a36353a2235393434653563663834346162653735366365333665303734343238353461642d6234363938643637636533343164633531646639386161383431343961656466223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d, 1763975703),
('6sfslcloo3s2djnh12outhd9n4', 0x5f5f4c616d696e61737c613a343a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313736333436323436312e3236343431323b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a227133716e366462356a656f6f7131386b727274396b6c6f613376223b7d733a34323a224c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313736333530313533383b7d733a34343a224c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313736333530353539323b7d7d72656469726563745f75726c7c733a34333a22687474703a2f2f6c6f63616c686f73742f6f6d6b5f544879705f32352d32365f636c6f6e652f61646d696e223b4c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a223833353061306666653363383663366234663734353465653464373436323133223b733a33323a223062636661633163393363323634643766353037333637316532316138633731223b7d733a343a2268617368223b733a36353a2230626366616331633933633236346437663530373336373165323161386337312d3833353061306666653363383663366234663734353465653464373436323133223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f417574687c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4f6d656b614d657373656e6765727c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a323a7b733a33323a223662326339363364393534343839626461303334323436363561656134356534223b733a33323a223566333566626331373439363239323536376437376466633934376636653932223b733a33323a226561343430373631633630336162666639666363393136666339373438396633223b733a33323a226530336435653436346133353739326534343137313331333963633930343864223b7d733a343a2268617368223b733a36353a2265303364356534363461333537393265343431373133313339636339303438642d6561343430373631633630336162666639666363393136666339373438396633223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d, 1763462461),
('bbmqj8gj9anukgn80iv4djrmhp', 0x5f5f4c616d696e61737c613a363a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313736343531383131382e3237343730393b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a2274316e373063647332326338676b62386431756f73626c636b32223b7d733a34323a224c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313736343536303932343b7d733a33323a224c616d696e61735f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313736343536313331383b7d733a35393a224c616d696e61735f56616c696461746f725f437372665f73616c745f6d6f64756c655f4f72616c32546578745f636f6e6669677572655f63737266223b613a313a7b733a363a22455850495245223b693a313736343536313330303b7d733a34343a224c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313736343536313236343b7d7d72656469726563745f75726c7c733a34333a22687474703a2f2f6c6f63616c686f73742f6f6d6b5f544879705f32352d32365f636c6f6e652f61646d696e223b4c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a223635303738616239326538346437363663666163643138393261393434323234223b733a33323a223136653030623161646137616634376566306231326164636139326164336435223b7d733a343a2268617368223b733a36353a2231366530306231616461376166343765663062313261646361393261643364352d3635303738616239326538346437363663666163643138393261393434323234223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f417574687c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4f6d656b614d657373656e6765727c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a31323a7b733a33323a223033316636343633323264336536663736376363363330373831663231386134223b733a33323a226362656566316336393563326239353130373432663931613563363066396261223b733a33323a223133313534353633336336346130383437613962623265313066636230643736223b733a33323a223161303763643635616434636437626231636634336338316538343262633937223b733a33323a226166623633626439653565333065646130373936393663623331306133376432223b733a33323a223462643136386161643362306233373036316261613030353439656661306437223b733a33323a223362633536653639663539653132393364343261333037363338366439626331223b733a33323a226234653765646430346236366530663465366363303762326638353164323931223b733a33323a226662353262306166333162643461343832616636646433613764356538326237223b733a33323a223964346265363837623033356538396438663537303233636265353761626331223b733a33323a223661333164636533383631393032343230653139386131616433313437393565223b733a33323a226139386662636630663564376338303361393161646437373133666634383063223b733a33323a223033633137366136323266313336383364633163303030363865373134343466223b733a33323a223431363238653631626337333563656561303639326434353630356533363232223b733a33323a223234343337306236383339336238313766353538363434393862343861653535223b733a33323a226463323837326362383763656338376135386331393862373431323537393336223b733a33323a223032323965373262353431393061363966396636373766393266656164373139223b733a33323a226262366663303835616363653635333534303963386366313463363664353735223b733a33323a223033646633326536376463306132376333346261653266353463393338666463223b733a33323a223632313966383432653661393665626464646634376563643561316163653663223b733a33323a226535643566383664303334613833383938666266363535626630383638613030223b733a33323a226331646264366238376430646239663438373066343032356362383932316366223b733a33323a223365653431383865346466303332653165333265636266363835393064623533223b733a33323a223832643238633363653362303265346462336564373962663162313565363931223b7d733a343a2268617368223b733a36353a2238326432386333636533623032653464623365643739626631623135653639312d3365653431383865346466303332653165333265636266363835393064623533223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f6d6f64756c655f4f72616c32546578745f636f6e6669677572655f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a323a7b733a33323a223137663231353430346332656361343664643861376162626665323865373732223b733a33323a223865303036313339633161326331323031653565653564656333326335343462223b733a33323a223733353366653433326135366632666261343934373439313935646531313337223b733a33323a226633326136313633623137626464383636333938616637623833623439333762223b7d733a343a2268617368223b733a36353a2266333261363136336231376264643836363339386166376238336234393337622d3733353366653433326135366632666261343934373439313935646531313337223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a383a7b733a33323a226432643664613837343437323339336232333735646462393035333932366236223b733a33323a223732383064373865353166313165363435346161366532356462623664306435223b733a33323a223634356331383566653664353137613565623537383866383436396366633235223b733a33323a223966373131636161646532663438643833316534613231313365633035656536223b733a33323a223665393537363233626138663032633539366262636130633065626537386265223b733a33323a223636626564643362396237366338346164393730626366623066363835383832223b733a33323a226634376465663862653431333239343764366136376134626661656565366436223b733a33323a226635663031393034666466323666653933363032316262353633626562316561223b733a33323a226266613631636231333034326432386335356663323265363337373136613339223b733a33323a226365656231653230373539303731623633636339323933653635646466623635223b733a33323a226334613132383765373761363336333530343466333538616338313861383061223b733a33323a223037343530643662366563363737333934643966316332383736663332393339223b733a33323a226461303161656263666534393139623365643633376437383430343865313035223b733a33323a223731626439316634623438323237343339633839393337613863636537633536223b733a33323a226131653533393965666465346236623431333035393936626563303861666430223b733a33323a223536383563326661313338336537666134303939623063313438366564313538223b7d733a343a2268617368223b733a36353a2235363835633266613133383365376661343039396230633134383665643135382d6131653533393965666465346236623431333035393936626563303861666430223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d, 1764518118),
('bpso142uk2pr1jasbeucmb9rdp', 0x5f5f4c616d696e61737c613a353a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313736343636333232342e3537323534343b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a22333339666b333473667335677069347575737536746268696b73223b7d733a34323a224c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313736343635383036363b7d733a33323a224c616d696e61735f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313736343730363337393b7d733a35393a224c616d696e61735f56616c696461746f725f437372665f73616c745f6d6f64756c655f4f72616c32546578745f636f6e6669677572655f63737266223b613a313a7b733a363a22455850495245223b693a313736343730363336323b7d7d72656469726563745f75726c7c733a34333a22687474703a2f2f6c6f63616c686f73742f6f6d6b5f544879705f32352d32365f636c6f6e652f61646d696e223b4c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a226466353037396461366435663333376230363862306133383434336564653863223b733a33323a223435613337326337386264643730376439346535646261316364356539343466223b7d733a343a2268617368223b733a36353a2234356133373263373862646437303764393465356462613163643565393434662d6466353037396461366435663333376230363862306133383434336564653863223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f417574687c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4f6d656b614d657373656e6765727c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a31353a7b733a33323a223630383937353836383638613438303662336364616262383763366165313532223b733a33323a223931616461316464623564656234323866663230396661363338373939366538223b733a33323a223030643034356665663032336562616331633662643066336632386338316365223b733a33323a223731653038373531383838373837333939356634333330386135633936356361223b733a33323a223737316637333065643038333761643237383161623234643963643961313330223b733a33323a226131303266633738313239336536363239646134343434616266383161336632223b733a33323a226135376630653937333336373739633363643131623565613363356565623763223b733a33323a226466313930653039626430336333383061366430343162646630346636663033223b733a33323a223563306631623334616234383137303463653665616663653661323332663935223b733a33323a226162363030663463386236643762636666376332663864346361373934393466223b733a33323a223866633134626362666137346133373066356433613531313266386433346337223b733a33323a223162636637336133613164633137363863306636323262386534656630393162223b733a33323a226232336633363363616632383935366532643735633632663264313534326362223b733a33323a223334636465323736636639316135313561346538613662393434363335343163223b733a33323a226133386234646332353739343737653862613935343964653837376566386231223b733a33323a223265643835313137666238333433316461393831656333363630333232363666223b733a33323a226130366632343766306536346138303538653961373031653333313432363765223b733a33323a223236363466623561616464633236333430326432623333626338373062613933223b733a33323a223465353431333739336337336231343333663939313430613738323532333936223b733a33323a223265303239306138303162646462343066383861323766306130643161336163223b733a33323a223535663766663064303531656633636637613666613033653639333138646166223b733a33323a223861353434653731366238616235653136666330626266323366336439383964223b733a33323a223930353330313832633736613537363666373236326435653537303937653035223b733a33323a223261326662653762306630623862613866333435663337366264633339666363223b733a33323a226333363364323130613566303835643734643630326139303462343466316561223b733a33323a223030353765373064363031643633313461343234633334396162343966613464223b733a33323a223635366632366134313139373464613663306266353734636638656535626265223b733a33323a226430623465366166363738643039343935353835633065323237356537323630223b733a33323a223039313864346334613839336336633534616663646339663438353530376635223b733a33323a223665393031663230653961646432373662303536623931326366316533353833223b7d733a343a2268617368223b733a36353a2236653930316632306539616464323736623035366239313263663165333538332d3039313864346334613839336336633534616663646339663438353530376635223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f6d6f64756c655f4f72616c32546578745f636f6e6669677572655f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a333a7b733a33323a223530333265303533623663346562363139343632363765366561663736613934223b733a33323a223062343062353832616263336330646530393162616337383431393463616163223b733a33323a226237386637396365626439313736633538396435353139326562326438633235223b733a33323a223266356234386238346666323631336363383738323932396237633563646137223b733a33323a223334653862353335353066653162326465663939643138613738366431326233223b733a33323a223864626236623334623730333230393063613434383864653935383963353734223b7d733a343a2268617368223b733a36353a2238646262366233346237303332303930636134343838646539353839633537342d3334653862353335353066653162326465663939643138613738366431326233223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d, 1764663224),
('efm0dlja34a7bptfe3e76b089d', 0x5f5f4c616d696e61737c613a323a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313736343332373832332e3330393434343b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a2265666d30646c6a61333461376270746665336537366230383964223b7d7d, 1764327830),
('fvtcrvqo8h781nsnc1dj5rgtbv', 0x5f5f4c616d696e61737c613a323a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313736333839343532362e37333433313b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a22667674637276716f38683738316e736e6331646a357267746276223b7d7d, 1763894538),
('gfip2gtggbq8tjok66384acap8', 0x5f5f4c616d696e61737c613a323a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313736343630383434362e3030393437313b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a22676669703267746767627138746a6f6b36363338346163617038223b7d7d, 1764608457),
('ifbonb9v0sido0rmo952u607l5', 0x5f5f4c616d696e61737c613a363a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313736343332383239302e3733393138333b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a22326c6432366b6772653837736a6f38396b347163323871736a39223b7d733a34323a224c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313736343337313034353b7d733a33323a224c616d696e61735f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313736343337313434393b7d733a34343a224c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313736343337313433333b7d733a35393a224c616d696e61735f56616c696461746f725f437372665f73616c745f6d6f64756c655f4f72616c32546578745f636f6e6669677572655f63737266223b613a313a7b733a363a22455850495245223b693a313736343337313433383b7d7d72656469726563745f75726c7c733a34333a22687474703a2f2f6c6f63616c686f73742f6f6d6b5f544879705f32352d32365f636c6f6e652f61646d696e223b4c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a226430653235396435303830333839383832633530663634376639343037353965223b733a33323a223537323439396330313836306564376364653334313161633936353666386664223b7d733a343a2268617368223b733a36353a2235373234393963303138363065643763646533343131616339363536663866642d6430653235396435303830333839383832633530663634376639343037353965223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f417574687c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4f6d656b614d657373656e6765727c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a313a7b733a383a226d65737361676573223b613a313a7b693a313b613a313a7b693a303b733a32333a225375636365737366756c6c79206c6f67676564206f7574223b7d7d7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a31353a7b733a33323a223761356235623330653062343565623034363137303837653234373666623964223b733a33323a223934306231626335666361643463626565323064313430646534356462336639223b733a33323a223261303433356363643939393636656532333937333461313931326564383063223b733a33323a226566353362666363623832356231316233386365316362636430633534323030223b733a33323a223165646138613165633237626463323432303833626534623036646262633638223b733a33323a223937326438643939363462626330373630366636323330613330666231373934223b733a33323a226535353266313235613139313135326463363637383934326666393636306665223b733a33323a226633633266396434633532326661633965313035363563636565636263353737223b733a33323a226661653439376433646262663032363132323733636531353039383265306339223b733a33323a223162393063373366386464653234353134636666616530343539626337303033223b733a33323a226538356139373239383736353137396562383665363537646634633434393965223b733a33323a223634653838646438656635353338306135323337613838383565646535343761223b733a33323a226130633766356562653134353135363132316365663738616465383338646161223b733a33323a226366313762383163666234316639306233316664376437376665393538613330223b733a33323a223465343232336238366366616639636161376266343839316564363534383636223b733a33323a223461636536666361333632636362366632343339623265666665616465616165223b733a33323a223938346430353731636161323561393337623963333264303739663032373930223b733a33323a223935303639356562373062313461303139626666363762303163386434326335223b733a33323a223039316564373438663565626235663938663963313663316464363065393463223b733a33323a223265386131613138386630393933373131363462326137643739666230663761223b733a33323a223333343734363238396665663662373931623233636231363238666231663334223b733a33323a223432623562656337356336633830646537353637656666356365396466666239223b733a33323a226461333030386138366236383266343335363637306565316364653464373939223b733a33323a226330613763316461376164386335306336336362376230653531383466333261223b733a33323a223663656163336131613366306633356263663034633735626162653838333361223b733a33323a223630383138653234633236613834393334376530393532616431323961643531223b733a33323a223834363538633561303066383739666139386434326264383964306561363462223b733a33323a223065623331326162633437343038656663356430636638643133626635663634223b733a33323a226666363934333839343835316666373734383835636530326636386365376530223b733a33323a226461636134336264366139376261663938346539393533636463663536663836223b7d733a343a2268617368223b733a36353a2264616361343362643661393762616639383465393935336364636635366638362d6666363934333839343835316666373734383835636530326636386365376530223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a323a7b733a33323a226533366363363531306634373864643332313035663663303264613036363764223b733a33323a223936393237663261306465313935316334363562623338353030613262393864223b733a33323a223032343765383238373933393231313138656432643535373738643232396666223b733a33323a223565366266323339316165313330666634396261353534326133626537323732223b7d733a343a2268617368223b733a36353a2235653662663233393161653133306666343962613535343261336265373237322d3032343765383238373933393231313138656432643535373738643232396666223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f6d6f64756c655f4f72616c32546578745f636f6e6669677572655f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a323a7b733a33323a226262396233663431353631313662656463353334643136613164353633633630223b733a33323a223932666230633033643136663136636430396662666162633562643733666339223b733a33323a223430303436336238653136393564666563656234346332646331646333336561223b733a33323a223132653765623936323035366139613562613530666264376335646164326532223b7d733a343a2268617368223b733a36353a2231326537656239363230353661396135626135306662643763356461643265322d3430303436336238653136393564666563656234346332646331646333336561223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d, 1764328290),
('l3hop7sr3m0fpobauqthmsar85', 0x5f5f4c616d696e61737c613a323a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313736333435363237302e3534353838313b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a226c33686f70377372336d3066706f6261757174686d7361723835223b7d7d, 1763456277),
('p0dr59i4scokijaviqhc6dg69o', 0x5f5f4c616d696e61737c613a323a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313736343332383230352e37343839383b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a22703064723539693473636f6b696a61766971686336646736396f223b7d7d, 1764328206),
('qoq0a307bdhcmfdfu556ipr4lf', 0x5f5f4c616d696e61737c613a333a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313736333435373932392e3137303436373b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a22726d61636d386139746569756337733471676772657173636373223b7d733a34323a224c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313736333439393438373b7d7d72656469726563745f75726c7c733a34333a22687474703a2f2f6c6f63616c686f73742f6f6d6b5f544879705f32352d32365f636c6f6e652f61646d696e223b4c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a223765633631306238373330636332353032343762356231376232356164616636223b733a33323a226231623038333839383032396231623831636433366637643833616130663735223b7d733a343a2268617368223b733a36353a2262316230383338393830323962316238316364333666376438336161306637352d3765633631306238373330636332353032343762356231376232356164616636223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f417574687c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4f6d656b614d657373656e6765727c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d, 1763457929),
('r20kbjcnasi07adakc92b57m2d', 0x5f5f4c616d696e61737c613a323a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313736333436323433332e3530353636313b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a227232306b626a636e61736930376164616b6339326235376d3264223b7d7d, 1763462436),
('u67393hl1me9dijg480ink32qp', 0x5f5f4c616d696e61737c613a323a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313736343631313131332e3836313734393b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a22753637333933686c316d653964696a67343830696e6b33327170223b7d7d, 1764611126);
INSERT INTO `session` (`id`, `data`, `modified`) VALUES
('v3l96e6dfhp15ufjo9afmarq4b', 0x5f5f4c616d696e61737c613a363a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313736343432343432392e3939363138363b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a2273733167716e39666c6971766735633271716632327476366472223b7d733a34323a224c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313736343337313439313b7d733a33323a224c616d696e61735f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313736343436373534373b7d733a34343a224c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313736343436373633303b7d733a35393a224c616d696e61735f56616c696461746f725f437372665f73616c745f6d6f64756c655f4f72616c32546578745f636f6e6669677572655f63737266223b613a313a7b733a363a22455850495245223b693a313736343435343131373b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a223765306362626664343365663262303561643362366330643662666536613738223b733a33323a223363373765616531316530346337643762623265653538623332663539383936223b7d733a343a2268617368223b733a36353a2233633737656165313165303463376437626232656535386233326635393839362d3765306362626664343365663262303561643362366330643662666536613738223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f417574687c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4f6d656b614d657373656e6765727c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d72656469726563745f75726c7c4e3b4c616d696e61735f56616c696461746f725f437372665f73616c745f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a37323a7b733a33323a223839356139343832353234626237366532383833386538346337646461663738223b733a33323a226564643231336438383130646336666166373138326639353532623063363164223b733a33323a226331396266666363613831626139656234386235643864653364636438636264223b733a33323a223835313964643063313166663562303666393864653834313765333931316438223b733a33323a223134323264353862663961326263393030336136316233393838356132353833223b733a33323a223663326637643364393130383530663766376362393438326530343335333566223b733a33323a223332393465666534323161353237366339383630303939613039613466316666223b733a33323a223265613239653931323837346663356433323232633264356632353731363337223b733a33323a223338613937646666313838646636376338663566386662616363653332353730223b733a33323a223764303037313936373364333165346135366533616462333836303061316331223b733a33323a223362613938643633343665633764306136663530663564356666313863363037223b733a33323a223766383334326535643235393061303539363261303862393066396533333238223b733a33323a226237313332383934653665656238323138393334313665366264343063316136223b733a33323a223630643535353363313035623034316462373630633537656164613538346335223b733a33323a226533643365386165646335336435636635666131373066626537373133343131223b733a33323a226236306165373866323132326265333537343330643561336239366139663062223b733a33323a223966663734666637303362636532633538376565336339623235323530633436223b733a33323a223633306334373961363862363362626432366161383334336131373931343537223b733a33323a226363643565626139616365336662346231386365636164316639313035333763223b733a33323a226236643332323937663236613131363663653365393938306135633231383037223b733a33323a223839333832613838303830343039313131616563663264333565373133343835223b733a33323a223535346131376266636165613264346664613134663439643133363965336335223b733a33323a226539303863323365663539626339653461396636336533626536306234306131223b733a33323a223435313861623164333930373136343862313361623333313265636365626531223b733a33323a223933393561396433383638316535356362363466663761613631663537336336223b733a33323a223134636162643665666562326436333765663134353465656431306534346636223b733a33323a223037373239646131653766303135613736636332613837636463326666323030223b733a33323a226134343436383234636363616333313861633634656439383132313231663031223b733a33323a223932613639393436626166633965393134383166303137303961383432333061223b733a33323a226531656231343633303038633231656636663663333462633232376565333630223b733a33323a226235373264393464643432653965663363353839663835613366376432396230223b733a33323a223036336430643765663965333539636362663537393463663763316432646564223b733a33323a226130616537393631353337653365623162636130326239373261316465373635223b733a33323a226362656133366237383063666533353665323835653862373965376665346536223b733a33323a223638333263616230653939363861356662383761666564633362333335383161223b733a33323a223336653233316339333733373938656365383434306538636131373732393061223b733a33323a223332313239323138376166343630323562356232313230653965366632653035223b733a33323a223533323438623035343231383636393266373230653935616562393833316563223b733a33323a223065666461663066646666653238383064393637333062633130393130336165223b733a33323a223134643331323939393831616661303764656561613564333465383364323235223b733a33323a223865396630633537626232323439643866386666393437636231306265646132223b733a33323a223234313961653362346332393433633464666461393261373164363061663463223b733a33323a226466373430326663363766623734373838326637363262386537326134326363223b733a33323a223531363534326636643961636231623335643463646165626361383463353337223b733a33323a223961373838366335343331313062393263623264643064316361626665363332223b733a33323a223465386464303731353566636332656465353365616633303139396432343162223b733a33323a226336353461343131363636383161346564373638313161646665613661323230223b733a33323a226333616365663432353339303037356365396663626438386464343535613934223b733a33323a223235626532383031343231323766616364616431333161366337643734373461223b733a33323a223662636464356630393837376563323764623865623838343562626439636436223b733a33323a223334346362323839303436363130303962373933336336613966636636636363223b733a33323a223735306636376430376536383435353633313166353065656337663366646561223b733a33323a223163366465373337653933366331656135363531663861663035396566323561223b733a33323a223236376666316636633339653630663732623331323466666338316361333833223b733a33323a223233313631393533616239616163646534326237343065656637306336393633223b733a33323a226133636366633262303331393136313263323664653562663631386330373232223b733a33323a226433393735326662376565356462633064376530666532363034343030613530223b733a33323a223437333039363530636535316366393061366131616339666563633962376363223b733a33323a223466626635336631393865346362353064653431623539383365623561636461223b733a33323a223062663238663538326132323265353731313533376134323234366161343534223b733a33323a223739313238343237316532363233623031326434393439633764326565363063223b733a33323a223031313933353363326338616632636233373331616632613365663536633334223b733a33323a223535313366383065663364616261363338643531653139313565306630643761223b733a33323a223837316433326637656461393932663734646364303033353562386137613934223b733a33323a223231333166303437623135383830613034363837646639653639396362393865223b733a33323a223037326634643335623363663131656139326635663364393333663639366632223b733a33323a223036653965346539323463663937356664316161666433343133333937366363223b733a33323a223433396535356339356638633464626331353238366262386436386263613534223b733a33323a223139346164383531386263653534333238303062326336623631316230633130223b733a33323a223237356134316631343435303566343334633333373666333834666431623061223b733a33323a223833363236653636356630356361323139653133663635393339313836323262223b733a33323a223364383761363735303432373632386333313466353233316639383063343338223b733a33323a223062343035373436313463366161313431323134653436343032323130376630223b733a33323a226534643730386539333439333062373861353366393564353231313234383139223b733a33323a223637646534383864393265393137326434323933353130313431313332353937223b733a33323a223237383462393164323764353130613132386233386339363562306464653833223b733a33323a223333663862313439663436633365343565393161656137323466663263333933223b733a33323a223130303161303766396465633865636565316462633564306261316338366136223b733a33323a226162383535313262613464306434343836393761356137303138633333376530223b733a33323a226138643966623135306439363232646635396234353937616262326163663938223b733a33323a226431386330366539396630646339646232613735353538636436303830306166223b733a33323a223833393033613837626535643032366434326436666339336434656263633733223b733a33323a226535376532656466366166383837656336323864333233633661643535396263223b733a33323a226664316165636434373539653337303561333837306664353666653634643930223b733a33323a223133383836303233363031663764333263353363326438353939653334343037223b733a33323a226133653734363965663662386537633765316664613237386463653832373136223b733a33323a226462343430333461373535633332656538613839383831643164373230623930223b733a33323a223330373935656139646164616136633638353331333764376434313666363765223b733a33323a226333396534396534643162643566356433303064353961353630353164373063223b733a33323a226562393663313733313565633866323430323730326139336333653766336461223b733a33323a223161653365303131643530653565633533393161316435393939303938666534223b733a33323a223235386636656161323234333230386666323131613037316531363663323761223b733a33323a226561353532386162386633396163303339643733303566633432393033323038223b733a33323a226139626539663466396132666264356530306437323763653739643831613264223b733a33323a223562303564383939393732383465333737383463653038373934336131333062223b733a33323a223666346638373263393564626632363264623566346162346637613562343266223b733a33323a226138653662323836663432303366343361393638353831336137393264356465223b733a33323a226662643230353239336635333163323362306535356266636163353639383634223b733a33323a223165666539313635313066633161363635623835323564336333306439616663223b733a33323a223133306138663538653361616130613332333239383030346635636332666535223b733a33323a223238396166376231653562393338366434623032306432653034393436643466223b733a33323a226538623037623564313865393439353662383465653232366365653866396266223b733a33323a226635353436633237653437623733366363383833663630343532303532396630223b733a33323a223838353665316663363466653766363463336263616231633435363739633333223b733a33323a226338303938613232663930336162363739623233386336613061643864343566223b733a33323a223465396562663031373230363635633736353636366431653331353230353531223b733a33323a226561353438336437353034323932376265373734373533303463393064393332223b733a33323a223637353462306462646137626232303030363864303730356637663530373564223b733a33323a223732643264343161383366303238323538386464626435613634366161356263223b733a33323a223736326331363062373033663534343239323339623935313565353262323465223b733a33323a223836636462393138336337313261666266633539306339613463613433626463223b733a33323a223132303866353263343364313561336330323662353962346634346136373432223b733a33323a226538316337653031303632326566303136626131623463376232323166383662223b733a33323a223037313265363965663032633561383833326235336333366562633734396232223b733a33323a223464623938646430636262356165653533616438613236363961346664306365223b733a33323a223236393865353362383639376338396366633165303066363862623032643661223b733a33323a223335636233363334626139636139346165633563643064336336643539623565223b733a33323a223064613037353932613263376439393438346632303662623434323736366133223b733a33323a223065363534626632313932636436363830333830313062373961313764643133223b733a33323a223838653162323137396132666537656437343132346330303430643936353664223b733a33323a226430306337613364306665396435393936613230373539326330623563336366223b733a33323a226432666238363165303464326463363937353562386639356634323131313537223b733a33323a223232306131363466323039333835393931666630306532376264616333386131223b733a33323a223561616535636162666436343339643033633064653436336161323936313930223b733a33323a223066386537616330373061663433626135663463306365633063383338353030223b733a33323a226234636362613730396439386339373435316464333037393039653237333330223b733a33323a226362373836376339613139663833623931353836383862353437316564386166223b733a33323a223531366538373762653937303138396262383030386130323437356232363963223b733a33323a223864396538363930646564396665643532633635373162643537616335383530223b733a33323a223261366461366532626633663134656434306134353162353139643834393866223b733a33323a223765363339323532316238326562663132316539383134653235623733333931223b733a33323a223931313538346463643138353363323861343561663336656434323930316162223b733a33323a226630616335653365626430393635336364383039343465323165626436383639223b733a33323a226332383365643065326431633939323531373333643831613236313835663037223b733a33323a223631613139656335336161343633343563656164383936373530373962343535223b733a33323a226432323834383530376633666636653666333637623039383965393238643038223b733a33323a223136386439363465666634306663363432346532663839376437353833636536223b733a33323a226233613366643939303739333064333637306436373063303561323639313766223b733a33323a223566356431363230363462346633353439363034653934353131613837316431223b733a33323a223564663833623162396436386635343538613036396261623763343932303436223b733a33323a226438663939653732363064316432386135653238313438363561383964316336223b733a33323a223239663362336336613532386336653061386465303537346137653164303464223b733a33323a226365353730383236623434343865646337353336636235626430336262376336223b733a33323a226264346662343633383839303535376538316637636333633638343866306538223b7d733a343a2268617368223b733a36353a2262643466623436333838393035353765383166376363336336383438663065382d6365353730383236623434343865646337353336636235626430336262376336223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a34363a7b733a33323a226532386363346537616664336436376636343962303036613966313035303537223b733a33323a226163393937666263336430643237663932326335383766346465343730386561223b733a33323a223330623663623365356431343761613132303565646537633734623238313336223b733a33323a226631303831376533333832363464633365393166323031363933373139363237223b733a33323a223135383264303935346131363431366137336130383233303066623033613561223b733a33323a223438626230393733336366613437366230356363643839363862623232653633223b733a33323a223437613634313564623363336365613432616464643537336234643531633863223b733a33323a223364653430653835623732643238363364643632643961663837633732653739223b733a33323a223632393666323064613833396566386361626563663362643930383634313230223b733a33323a223834323063663035353539306366343931666561323464366565663965306362223b733a33323a223831633231653264363032316665386266616531626437663166393430356230223b733a33323a226461396630633432343631396534396665623062663232643730646332336630223b733a33323a223037336564323238343462393664626362653030656432653133346331336463223b733a33323a223562643730653330373531323437626662386234613335653439366330373838223b733a33323a223061663766326238653039353062396565626134323138316533333931623466223b733a33323a223962313465306536316531353932353930653930313235653233326136666361223b733a33323a223136323462616562663237353438313530373266633163363262313135376262223b733a33323a226539653832386630653266386661376366643366313564646632376331666633223b733a33323a226431663563366230343130356335396166313564376461326130373562636235223b733a33323a226533663962303664623238373364623561633239386630363735366365323363223b733a33323a223332336136646630643638626238626566396235393434633165316462313134223b733a33323a226663323537623532623366393433306439373238363361313731666434626265223b733a33323a226263646366613937643061666365363534316332323035623237366565306236223b733a33323a223635396432323366666333343538303365383234636533336263326263346335223b733a33323a226435626563613363623663633966333636666361396535343338353964613761223b733a33323a223365616132663562333661326634653932313030373465333232313263363965223b733a33323a226361353036663264663832636235383136373736326338323832353861373863223b733a33323a223662653137626135613564323162336265376261363265373235373730376463223b733a33323a226532316265616464346238646236313966613535393863316433333931663934223b733a33323a226362346532353061343930636436353864383061656339633839316361333762223b733a33323a223762353436626264653662636461376138323363353030643563643766323133223b733a33323a223330393638366265333732626664663438373637313033363662653466313863223b733a33323a223131626137353537653434343939383362376631383436393261633061643837223b733a33323a223233613232323938356235356630636631353634356662626464343063326434223b733a33323a226334326636616636623634353438613038353635333430343038663665633464223b733a33323a226265633361323036366564356130383636303761633937646262333864353962223b733a33323a223638326564613639636437656632323034363161343438653730616535373435223b733a33323a223766303936323430383665366432663361326162666339366539373734643833223b733a33323a223965666261383331663830303036616663346336626538626363633932636137223b733a33323a223961363861323166613133376163343438393766303239303537663837636635223b733a33323a223932623732656236343335356130373765396539633366366362616435313630223b733a33323a223735333561643037323735656131313132663834663436363639343065393433223b733a33323a226233326533646464666436386536303965633632333133636432666531346637223b733a33323a223838343365316533366565326437656464386132363831326165656233333432223b733a33323a226365643862633637323163316233393563656462383838613037366432636361223b733a33323a223233376233623635663362333239373862393036653761336661653765376235223b733a33323a223563373965636137663739653635373037623161616363393336333334306362223b733a33323a226236313234393136333937366162656162306264643162386366333166646261223b733a33323a223333323165643937303932306533333565303037313964663237343263326236223b733a33323a226130376336353433663464336435313933396331353363383931363262366530223b733a33323a226565663630363166363737353965326439643764643033353961386266326435223b733a33323a226665653263336366666662653733366332346335363561396639613566643234223b733a33323a223936653864393635393162636336376135613165666231633534653632373735223b733a33323a223163313362653433613461623539393861643336303963616262326566333430223b733a33323a223230633064613933363835643331353531363139316161633332643032623134223b733a33323a226163643634386362343637336433663839323136633036656539336166363164223b733a33323a226530666565613538316635366134343063353337313738363937316564333030223b733a33323a223464623436363063356136386463366134343463656233303661383939666564223b733a33323a223565633839326336326165643433366464336336376531316665653136653130223b733a33323a226538396139333265353163343530306162653836633935323335613738633533223b733a33323a223963646465353964633336653636323032643636643331656230623964646233223b733a33323a223764616138326238343939346639353564613632363333326365666331626164223b733a33323a223038666265613561353764626161343536623331653739303633343765663135223b733a33323a223036346133653166316431386331383634356435373939396233313534323163223b733a33323a223836653732336438366134366663623630323431623362373239663534633465223b733a33323a223364616261373335316364363136393763633830613533613831363031386635223b733a33323a226265343136333436613339616562346166633866356364646161643433323332223b733a33323a226263323133636635303233366566306533313434326164393562643732303466223b733a33323a223839303136386332633330653231343734383735353463393062376461346162223b733a33323a223234326434656136346135666130303139633630653533653031396239356561223b733a33323a223137653362333233353539626133636631363464306130373361626135323831223b733a33323a223036346136363564363834303637306139353430396634653634303462643063223b733a33323a226331663964373762383864396238643234363139393136346130626536396566223b733a33323a223937353734343034306339383463366361616532656166663961373961373866223b733a33323a226233663535306233613266663134383934363436663661376637363336376235223b733a33323a226439366562303439646133363062616134366433313036313431306534373330223b733a33323a223864343365373137386334373439383162633166363536613364396131396464223b733a33323a226336616261336332653861363064343735323231616336666363393066396661223b733a33323a223038616635663665653062363064333435653139623133383634666563383337223b733a33323a223034383166626133373634306362633330643765343861323031363030343039223b733a33323a223263653832336666623038316637396665323339376230346662313132613830223b733a33323a226537663538373761376133353464396334353633326439633233643639303137223b733a33323a226664383932313239333339373163363233653062383761663934316461646234223b733a33323a223436373663363865646137323461333462306236663065663730396666336132223b733a33323a223636326132353231666335346638363631363536303864633736326264303134223b733a33323a226535313439613536666230343536336462316665623466636536623930626166223b733a33323a223961343462623330363034633762313831613235336232613932323565303966223b733a33323a223063363430643931333164333934386265323331396534643932613261613236223b733a33323a226431663161343239643966346235633864316233306266643663303032623736223b733a33323a226434653531646462353662323832306566386338316334303265376264663866223b733a33323a223034663364633134313865393737353837663838636330303661363231306631223b733a33323a223536393463316661373432313962306632333365636634633464646166306265223b7d733a343a2268617368223b733a36353a2235363934633166613734323139623066323333656366346334646461663062652d3034663364633134313865393737353837663838636330303661363231306631223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f6d6f64756c655f4f72616c32546578745f636f6e6669677572655f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a223036323234376264323964333561626332326239656439303563636236383361223b733a33323a226565346463626335643864646337633433336137633536373131653530356235223b7d733a343a2268617368223b733a36353a2265653464636263356438646463376334333361376335363731316535303562352d3036323234376264323964333561626332326239656439303563636236383361223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d, 1764424430);

-- --------------------------------------------------------

--
-- Structure de la table `setting`
--

CREATE TABLE `setting` (
  `id` varchar(190) NOT NULL,
  `value` longtext NOT NULL COMMENT '(DC2Type:json_array)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `setting`
--

INSERT INTO `setting` (`id`, `value`) VALUES
('administrator_email', '\"mohemmedbouzidi16@gmail.com\"'),
('default_site', '\"\"'),
('default_to_private', '\"0\"'),
('disable_file_validation', '\"0\"'),
('disable_jsonld_embed', '\"0\"'),
('disable_jsonld_reverse', '\"0\"'),
('extension_whitelist', '[\"aac\",\"aif\",\"aiff\",\"asf\",\"asx\",\"avi\",\"bmp\",\"c\",\"cc\",\"class\",\"css\",\"divx\",\"doc\",\"docx\",\"exe\",\"gif\",\"gz\",\"gzip\",\"h\",\"ico\",\"j2k\",\"jp2\",\"jpe\",\"jpeg\",\"jpg\",\"m4a\",\"m4v\",\"mdb\",\"mid\",\"midi\",\"mov\",\"mp2\",\"mp3\",\"mp4\",\"mpa\",\"mpe\",\"mpeg\",\"mpg\",\"mpp\",\"odb\",\"odc\",\"odf\",\"odg\",\"odp\",\"ods\",\"odt\",\"ogg\",\"opus\",\"pdf\",\"png\",\"pot\",\"pps\",\"ppt\",\"pptx\",\"qt\",\"ra\",\"ram\",\"rtf\",\"rtx\",\"swf\",\"tar\",\"tif\",\"tiff\",\"txt\",\"wav\",\"wax\",\"webm\",\"webp\",\"wma\",\"wmv\",\"wmx\",\"wri\",\"xla\",\"xls\",\"xlsx\",\"xlt\",\"xlw\",\"zip\"]'),
('favicon', '\"\"'),
('installation_title', '\"Oral2Text\"'),
('locale', '\"fr\"'),
('media_alt_text_property', '\"\"'),
('media_type_whitelist', '{\"0\":\"application\\/msword\",\"1\":\"application\\/ogg\",\"2\":\"application\\/pdf\",\"3\":\"application\\/rtf\",\"4\":\"application\\/vnd.ms-access\",\"5\":\"application\\/vnd.ms-excel\",\"6\":\"application\\/vnd.ms-powerpoint\",\"7\":\"application\\/vnd.ms-project\",\"8\":\"application\\/vnd.ms-write\",\"9\":\"application\\/vnd.oasis.opendocument.chart\",\"10\":\"application\\/vnd.oasis.opendocument.database\",\"11\":\"application\\/vnd.oasis.opendocument.formula\",\"12\":\"application\\/vnd.oasis.opendocument.graphics\",\"13\":\"application\\/vnd.oasis.opendocument.presentation\",\"14\":\"application\\/vnd.oasis.opendocument.spreadsheet\",\"15\":\"application\\/vnd.oasis.opendocument.text\",\"16\":\"application\\/vnd.openxmlformats-officedocument.wordprocessingml.document\",\"17\":\"application\\/vnd.openxmlformats-officedocument.presentationml.presentation\",\"18\":\"application\\/vnd.openxmlformats-officedocument.spreadsheetml.sheet\",\"19\":\"application\\/x-gzip\",\"20\":\"application\\/x-ms-wmp\",\"21\":\"application\\/x-msdownload\",\"22\":\"application\\/x-shockwave-flash\",\"23\":\"application\\/x-tar\",\"24\":\"application\\/zip\",\"25\":\"audio\\/midi\",\"26\":\"audio\\/mp4\",\"27\":\"audio\\/mpeg\",\"28\":\"audio\\/ogg\",\"29\":\"audio\\/x-aac\",\"30\":\"audio\\/x-aiff\",\"31\":\"audio\\/x-ms-wma\",\"32\":\"audio\\/x-ms-wax\",\"33\":\"audio\\/x-realaudio\",\"34\":\"audio\\/x-wav\",\"35\":\"image\\/bmp\",\"36\":\"image\\/gif\",\"37\":\"image\\/jp2\",\"38\":\"image\\/jpeg\",\"39\":\"image\\/pjpeg\",\"40\":\"image\\/png\",\"41\":\"image\\/tiff\",\"42\":\"image\\/webp\",\"43\":\"image\\/x-icon\",\"44\":\"text\\/css\",\"45\":\"text\\/plain\",\"46\":\"text\\/richtext\",\"47\":\"video\\/divx\",\"48\":\"video\\/mp4\",\"49\":\"video\\/mpeg\",\"50\":\"video\\/ogg\",\"51\":\"video\\/quicktime\",\"52\":\"video\\/webm\",\"53\":\"video\\/x-ms-asf\",\"55\":\"video\\/x-msvideo\",\"56\":\"video\\/x-ms-wmv\"}'),
('oral2text_libretranslate_api_key', '\"\"'),
('oral2text_libretranslate_url', '\"http:\\/\\/localhost:5000\\/translate\"'),
('oral2text_translation_target_language', '\"en\"'),
('oral2text_whisper_language', '\"fr\"'),
('oral2text_whisper_model', '\"base\"'),
('pagination_per_page', '\"25\"'),
('property_label_information', '\"none\"'),
('recaptcha_secret_key', '\"\"'),
('recaptcha_site_key', '\"\"'),
('time_zone', '\"Europe\\/Paris\"'),
('use_htmlpurifier', '\"1\"'),
('value_languages', '[]'),
('version', '\"4.1.1\"'),
('version_notifications', '\"1\"');

-- --------------------------------------------------------

--
-- Structure de la table `site`
--

CREATE TABLE `site` (
  `id` int(11) NOT NULL,
  `thumbnail_id` int(11) DEFAULT NULL,
  `homepage_id` int(11) DEFAULT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `slug` varchar(190) NOT NULL,
  `theme` varchar(190) NOT NULL,
  `title` varchar(190) NOT NULL,
  `summary` longtext DEFAULT NULL,
  `navigation` longtext NOT NULL COMMENT '(DC2Type:json_array)',
  `item_pool` longtext NOT NULL COMMENT '(DC2Type:json_array)',
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL,
  `assign_new_items` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `site_block_attachment`
--

CREATE TABLE `site_block_attachment` (
  `id` int(11) NOT NULL,
  `block_id` int(11) NOT NULL,
  `item_id` int(11) DEFAULT NULL,
  `media_id` int(11) DEFAULT NULL,
  `caption` longtext NOT NULL,
  `position` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `site_item_set`
--

CREATE TABLE `site_item_set` (
  `id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL,
  `item_set_id` int(11) NOT NULL,
  `position` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `site_page`
--

CREATE TABLE `site_page` (
  `id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL,
  `slug` varchar(190) NOT NULL,
  `title` varchar(190) NOT NULL,
  `is_public` tinyint(1) NOT NULL,
  `layout` varchar(255) DEFAULT NULL,
  `layout_data` longtext DEFAULT NULL COMMENT '(DC2Type:json)',
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `site_page_block`
--

CREATE TABLE `site_page_block` (
  `id` int(11) NOT NULL,
  `page_id` int(11) NOT NULL,
  `layout` varchar(80) NOT NULL,
  `data` longtext NOT NULL COMMENT '(DC2Type:json_array)',
  `layout_data` longtext DEFAULT NULL COMMENT '(DC2Type:json)',
  `position` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `site_permission`
--

CREATE TABLE `site_permission` (
  `id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `role` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `site_setting`
--

CREATE TABLE `site_setting` (
  `id` varchar(190) NOT NULL,
  `site_id` int(11) NOT NULL,
  `value` longtext NOT NULL COMMENT '(DC2Type:json_array)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(190) NOT NULL,
  `name` varchar(190) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  `password_hash` varchar(60) DEFAULT NULL,
  `role` varchar(190) NOT NULL,
  `is_active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `name`, `created`, `modified`, `password_hash`, `role`, `is_active`) VALUES
(1, 'mohemmedbouzidi16@gmail.com', 'mohammed', '2025-10-02 14:31:26', '2025-10-02 14:31:27', '$2y$10$Fd5eZQpXIylHlxa/c1W75OhezBuSqHdi/u/Vn/baflf9CZaKMfGCS', 'global_admin', 1),
(2, 'samuel.szoniecky@univ-paris8.fr', 'samuel', '2025-10-21 08:09:11', '2025-10-21 08:09:43', '$2y$10$O53gVWlUij1bcsco7alKLO7KZC/b19hlDnLZPgLcbUxH.nsmDFcA.', 'global_admin', 1);

-- --------------------------------------------------------

--
-- Structure de la table `user_setting`
--

CREATE TABLE `user_setting` (
  `id` varchar(190) NOT NULL,
  `user_id` int(11) NOT NULL,
  `value` longtext NOT NULL COMMENT '(DC2Type:json_array)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user_setting`
--

INSERT INTO `user_setting` (`id`, `user_id`, `value`) VALUES
('browse_defaults_admin_item_sets', 1, '{\"sort_by\":\"created\",\"sort_order\":\"desc\"}'),
('browse_defaults_admin_item_sets', 2, '{\"sort_by\":\"created\",\"sort_order\":\"desc\"}'),
('browse_defaults_admin_items', 1, '{\"sort_by\":\"created\",\"sort_order\":\"desc\"}'),
('browse_defaults_admin_items', 2, '{\"sort_by\":\"created\",\"sort_order\":\"desc\"}'),
('browse_defaults_admin_media', 1, '{\"sort_by\":\"created\",\"sort_order\":\"desc\"}'),
('browse_defaults_admin_media', 2, '{\"sort_by\":\"created\",\"sort_order\":\"desc\"}'),
('browse_defaults_admin_sites', 1, '{\"sort_by\":\"title\",\"sort_order\":\"asc\"}'),
('browse_defaults_admin_sites', 2, '{\"sort_by\":\"title\",\"sort_order\":\"asc\"}'),
('columns_admin_item_sets', 1, '[{\"type\":\"resource_class\",\"default\":null,\"header\":null},{\"type\":\"owner\",\"default\":null,\"header\":null},{\"type\":\"created\",\"default\":null,\"header\":null}]'),
('columns_admin_item_sets', 2, '[{\"type\":\"resource_class\",\"default\":null,\"header\":null},{\"type\":\"owner\",\"default\":null,\"header\":null},{\"type\":\"created\",\"default\":null,\"header\":null}]'),
('columns_admin_items', 1, '[{\"type\":\"resource_class\",\"default\":null,\"header\":null},{\"type\":\"owner\",\"default\":null,\"header\":null},{\"type\":\"created\",\"default\":null,\"header\":null}]'),
('columns_admin_items', 2, '[{\"type\":\"resource_class\",\"default\":null,\"header\":null},{\"type\":\"owner\",\"default\":null,\"header\":null},{\"type\":\"created\",\"default\":null,\"header\":null}]'),
('columns_admin_media', 1, '[{\"type\":\"resource_class\",\"default\":null,\"header\":null},{\"type\":\"owner\",\"default\":null,\"header\":null},{\"type\":\"created\",\"default\":null,\"header\":null}]'),
('columns_admin_media', 2, '[{\"type\":\"resource_class\",\"default\":null,\"header\":null},{\"type\":\"owner\",\"default\":null,\"header\":null},{\"type\":\"created\",\"default\":null,\"header\":null}]'),
('columns_admin_sites', 1, '[{\"type\":\"slug\",\"default\":null,\"header\":null},{\"type\":\"owner\",\"default\":null,\"header\":null},{\"type\":\"created\",\"default\":null,\"header\":null}]'),
('columns_admin_sites', 2, '[{\"type\":\"slug\",\"default\":null,\"header\":null},{\"type\":\"owner\",\"default\":null,\"header\":null},{\"type\":\"created\",\"default\":null,\"header\":null}]'),
('csv_import_automap_check_names_alone', 1, 'true'),
('csv_import_delimiter', 1, '\",\"'),
('csv_import_enclosure', 1, '\"\\\"\"'),
('csv_import_global_language', 1, '\"\"'),
('csv_import_identifier_property', 1, '\"internal_id\"'),
('csv_import_multivalue_separator', 1, '\",\"'),
('csv_import_rows_by_batch', 1, '20'),
('default_resource_template', 1, '\"\"'),
('default_resource_template', 2, '\"\"'),
('locale', 1, '\"fr\"'),
('locale', 2, '\"fr\"');

-- --------------------------------------------------------

--
-- Structure de la table `value`
--

CREATE TABLE `value` (
  `id` int(11) NOT NULL,
  `resource_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `value_resource_id` int(11) DEFAULT NULL,
  `value_annotation_id` int(11) DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `lang` varchar(255) DEFAULT NULL,
  `value` longtext DEFAULT NULL,
  `uri` longtext DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `value`
--

INSERT INTO `value` (`id`, `resource_id`, `property_id`, `value_resource_id`, `value_annotation_id`, `type`, `lang`, `value`, `uri`, `is_public`) VALUES
(68, 17, 236, NULL, NULL, 'literal', NULL, '1', NULL, 1),
(69, 17, 237, NULL, NULL, 'literal', NULL, 'Alice Dupont', NULL, 1),
(70, 17, 238, NULL, NULL, 'literal', NULL, 'alice.dupont@mail.com', NULL, 1),
(71, 17, 239, NULL, NULL, 'literal', NULL, 'Etudiant', NULL, 1),
(72, 18, 236, NULL, NULL, 'literal', NULL, '2', NULL, 1),
(73, 18, 237, NULL, NULL, 'literal', NULL, 'Marc Bernard', NULL, 1),
(74, 18, 238, NULL, NULL, 'literal', NULL, 'marc.bernard@univ.fr', NULL, 1),
(75, 18, 239, NULL, NULL, 'literal', NULL, 'Chercheur', NULL, 1),
(76, 19, 236, NULL, NULL, 'literal', NULL, '3', NULL, 1),
(77, 19, 237, NULL, NULL, 'literal', NULL, 'Sarah Lambert', NULL, 1),
(78, 19, 238, NULL, NULL, 'literal', NULL, 'sarah.lambert@mail.com', NULL, 1),
(79, 19, 239, NULL, NULL, 'literal', NULL, 'Administrateur', NULL, 1),
(140, 39, 240, NULL, NULL, 'literal', NULL, '1', NULL, 1),
(141, 39, 241, NULL, NULL, 'literal', NULL, 'Entretien avec un artisan', NULL, 1),
(142, 39, 243, NULL, NULL, 'literal', NULL, '2025-10-01', NULL, 1),
(143, 39, 244, 17, NULL, 'resource', NULL, NULL, NULL, 1),
(144, 40, 245, NULL, NULL, 'literal', NULL, '1', NULL, 1),
(145, 40, 246, NULL, NULL, 'literal', NULL, 'Bonjour, je m\'appelle Ahmed Benali, je suis artisan potier depuis plus de vingt ans ici, dans le village d\'Azrou. J\'ai appris le métier de mon père, qui lui-même le tenait de son grand-père. Mon travail consiste à façonner la terre pour créer des poteries traditionnelles marocaines, comme les tajines, les vases ou les assiettes décorées. Chaque pièce est unique, parce qu\'elle est faite à la main, sans machine. La partie la plus difficile, c\'est la cuisson : il faut surveiller la température du four, sinon la terre se fissure. Aujourd\'hui, j\'essaie aussi de former les jeunes du village, pour que cet artisanat ne disparaisse pas. C\'est un savoir-faire qui raconte notre culture et notre histoire.', NULL, 1),
(146, 40, 247, NULL, NULL, 'literal', NULL, 'fr', NULL, 1),
(147, 40, 248, 39, NULL, 'resource', NULL, NULL, NULL, 1),
(148, 41, 249, NULL, NULL, 'literal', NULL, '1', NULL, 1),
(149, 41, 250, NULL, NULL, 'literal', NULL, 'Hello, my name is Ahmed Benali, I have been a pottery craftsman for more than twenty years here in the village of Azrou. I learned the craft from my father, who in turn learned it from his grandfather. My work consists in shaping clay to create traditional Moroccan pottery such as tagines, vases, and decorated plates. Each piece is unique because it is handmade, without machines. The most difficult part is firing: you have to monitor the oven temperature carefully, otherwise the clay cracks. Today, I also try to train the young people of the village so that this craft does not disappear. It is a know-how that tells our culture and our history.', NULL, 1),
(150, 41, 251, NULL, NULL, 'literal', NULL, 'en', NULL, 1),
(151, 41, 252, 40, NULL, 'resource', NULL, NULL, NULL, 1),
(165, 45, 1, NULL, NULL, 'literal', NULL, 'Entretien9', NULL, 1),
(166, 45, 241, NULL, NULL, 'literal', NULL, 'Entretien9', NULL, 1),
(167, 45, 243, NULL, NULL, 'literal', NULL, '2025-11-14', NULL, 1),
(168, 45, 244, 17, NULL, 'resource', NULL, NULL, NULL, 1),
(169, 47, 241, NULL, NULL, 'literal', NULL, 'Entretien10', NULL, 1),
(170, 47, 243, NULL, NULL, 'literal', NULL, '2025-11-14', NULL, 1),
(171, 47, 244, 18, NULL, 'resource', NULL, NULL, NULL, 1),
(172, 47, 1, NULL, NULL, 'literal', NULL, 'Entretien10', NULL, 1),
(173, 47, 242, 48, NULL, 'resource', NULL, NULL, NULL, 1),
(174, 49, 241, NULL, NULL, 'literal', NULL, 'Entretien11', NULL, 1),
(175, 49, 243, NULL, NULL, 'literal', NULL, '2025-11-14', NULL, 1),
(176, 49, 244, 17, NULL, 'resource', NULL, NULL, NULL, 1),
(177, 49, 1, NULL, NULL, 'literal', NULL, 'Entretien11', NULL, 1),
(178, 49, 242, 50, NULL, 'resource', NULL, NULL, NULL, 1),
(179, 51, 241, NULL, NULL, 'literal', NULL, 'Entretien30', NULL, 1),
(180, 51, 243, NULL, NULL, 'literal', NULL, '2025-11-14', NULL, 1),
(181, 51, 244, 17, NULL, 'resource', NULL, NULL, NULL, 1),
(182, 51, 1, NULL, NULL, 'literal', NULL, 'Entretien30', NULL, 1),
(183, 51, 242, 52, NULL, 'resource', NULL, NULL, NULL, 1),
(184, 53, 241, NULL, NULL, 'literal', NULL, 'Entretien112', NULL, 1),
(185, 53, 243, NULL, NULL, 'literal', NULL, '2025-11-14', NULL, 1),
(186, 53, 244, 17, NULL, 'resource', NULL, NULL, NULL, 1),
(187, 53, 1, NULL, NULL, 'literal', NULL, 'Entretien112', NULL, 1),
(188, 53, 242, 54, NULL, 'resource', NULL, NULL, NULL, 1),
(189, 55, 241, NULL, NULL, 'literal', NULL, 'Entretien33', NULL, 1),
(190, 55, 243, NULL, NULL, 'literal', NULL, '2025-11-16', NULL, 1),
(191, 55, 244, 17, NULL, 'resource', NULL, NULL, NULL, 1),
(192, 55, 1, NULL, NULL, 'literal', NULL, 'Entretien33', NULL, 1),
(193, 55, 242, 56, NULL, 'resource', NULL, NULL, NULL, 1),
(194, 57, 241, NULL, NULL, 'literal', NULL, 'Entretien32', NULL, 1),
(195, 57, 243, NULL, NULL, 'literal', NULL, '2025-11-16', NULL, 1),
(196, 57, 244, 17, NULL, 'resource', NULL, NULL, NULL, 1),
(197, 57, 1, NULL, NULL, 'literal', NULL, 'Entretien32', NULL, 1),
(198, 57, 242, 58, NULL, 'resource', NULL, NULL, NULL, 1),
(199, 59, 241, NULL, NULL, 'literal', NULL, 'Entretien3', NULL, 1),
(200, 59, 243, NULL, NULL, 'literal', NULL, '2025-11-28', NULL, 1),
(201, 60, 241, NULL, NULL, 'literal', NULL, 'Entretien1122', NULL, 1),
(202, 60, 243, NULL, NULL, 'literal', NULL, '2025-11-28', NULL, 1),
(203, 61, 1, NULL, NULL, 'literal', NULL, 'Audio - exp1.mp3', NULL, 1),
(204, 61, 241, NULL, NULL, 'literal', NULL, 'exp1.mp3', NULL, 1),
(205, 61, 243, NULL, NULL, 'numeric:timestamp', NULL, '2025-11-29T10:09:54', NULL, 1),
(206, 62, 1, NULL, NULL, 'literal', NULL, 'Audio - exp1.mp3', NULL, 1),
(207, 62, 241, NULL, NULL, 'literal', NULL, 'exp1.mp3', NULL, 1),
(208, 62, 243, NULL, NULL, 'numeric:timestamp', NULL, '2025-11-29T10:12:28', NULL, 1),
(209, 63, 1, NULL, NULL, 'literal', NULL, 'Audio - exp1.mp3', NULL, 1),
(210, 63, 241, NULL, NULL, 'literal', NULL, 'exp1.mp3', NULL, 1),
(211, 63, 243, NULL, NULL, 'numeric:timestamp', NULL, '2025-11-29T10:17:10', NULL, 1),
(212, 64, 1, NULL, NULL, 'literal', NULL, 'Audio - exp1.mp3', NULL, 1),
(213, 64, 241, NULL, NULL, 'literal', NULL, 'exp1.mp3', NULL, 1),
(214, 64, 243, NULL, NULL, 'numeric:timestamp', NULL, '2025-11-29T10:19:49', NULL, 1),
(215, 65, 1, NULL, NULL, 'literal', NULL, 'Audio - exp1.mp3', NULL, 1),
(216, 65, 241, NULL, NULL, 'literal', NULL, 'exp1.mp3', NULL, 1),
(217, 65, 243, NULL, NULL, 'numeric:timestamp', NULL, '2025-11-29T10:24:22', NULL, 1),
(218, 66, 1, NULL, NULL, 'literal', NULL, 'Audio - exp1.mp3', NULL, 1),
(219, 66, 241, NULL, NULL, 'literal', NULL, 'exp1.mp3', NULL, 1),
(220, 66, 243, NULL, NULL, 'numeric:timestamp', NULL, '2025-11-29T10:28:26', NULL, 1),
(221, 67, 1, NULL, NULL, 'literal', NULL, 'Audio - exp1.mp3', NULL, 1),
(222, 67, 241, NULL, NULL, 'literal', NULL, 'exp1.mp3', NULL, 1),
(223, 67, 243, NULL, NULL, 'numeric:timestamp', NULL, '2025-11-29T10:29:26', NULL, 1),
(224, 68, 1, NULL, NULL, 'literal', NULL, 'Audio - exp1.mp3', NULL, 1),
(225, 68, 241, NULL, NULL, 'literal', NULL, 'exp1.mp3', NULL, 1),
(226, 68, 243, NULL, NULL, 'numeric:timestamp', NULL, '2025-11-29T10:35:32', NULL, 1),
(227, 69, 1, NULL, NULL, 'literal', NULL, 'Transcription de Audio #68', NULL, 1),
(228, 69, 246, NULL, NULL, 'literal', NULL, 'Bonjour, je m\'appelle Amètre Benali, je suis artiste en potier depuis plus de 20 ans ici, dans le village d\'Azrou.\r\nJ\'ai appris le métier de mon père, qui lui-même le tenait de son grand-père.\r\nMon travail consiste à façonner la terre pour créer des poteries traditionnelles marocaines,\r\ncomme les tajines, les vase ou les assiettes décorées.\r\nChaque pièce est unique, parce qu\'elle est faite à la main, sans machine.\r\nLa partie la plus difficile, c\'est la cuisson.\r\nIl faut surveiller la température du four, sinon la terre se fissure.\r\nAujourd\'hui, j\'essaie aussi de former les jeunes du village pour que cet artisanat ne disparaisse pas.\r\nC\'est un savoir-faire qui raconte notre culture et notre histoire.', NULL, 1),
(229, 69, 247, NULL, NULL, 'literal', NULL, 'fr', NULL, 1),
(230, 69, 248, 68, NULL, 'resource', NULL, NULL, NULL, 1),
(231, 70, 1, NULL, NULL, 'literal', NULL, 'Traduction de Transcription #69', NULL, 1),
(232, 70, 250, NULL, NULL, 'literal', NULL, 'Hello, my name is Ameter Benali, I have been a potter artist for over 20 years here in the village of Azrou.\nI learned my father\'s job, which he himself held from his grandfather.\nMy job is to shape the earth to create traditional Moroccan pottery,\nlike tajins, vases or decorated plates.\nEach piece is unique, because it is handmade, without a machine.\nThe hardest part is cooking.\nYou have to monitor the oven temperature, otherwise the earth cracks.\nToday, I am also trying to train young people in the village so that this craft does not disappear.\nIt is a know-how that tells our culture and our history.', NULL, 1),
(233, 70, 251, NULL, NULL, 'literal', NULL, 'en', NULL, 1),
(234, 70, 252, 69, NULL, 'resource', NULL, NULL, NULL, 1),
(235, 71, 1, NULL, NULL, 'literal', NULL, 'Audio - exp1.mp3', NULL, 1),
(236, 71, 241, NULL, NULL, 'literal', NULL, 'exp1.mp3', NULL, 1),
(237, 71, 243, NULL, NULL, 'numeric:timestamp', NULL, '2025-11-29T11:38:33', NULL, 1),
(238, 72, 1, NULL, NULL, 'literal', NULL, 'Transcription de Audio #71', NULL, 1),
(239, 72, 246, NULL, NULL, 'literal', NULL, 'Bonjour, je m\'appelle Amètre Benali, je suis artiste en potier depuis plus de 20 ans ici, dans le village d\'Azrou.\r\nJ\'ai appris le métier de mon père, qui lui-même le tenait de son grand-père.\r\nMon travail consiste à façonner la terre pour créer des poteries traditionnelles marocaines,\r\ncomme les tajines, les vase ou les assiettes décorées.\r\nChaque pièce est unique, parce qu\'elle est faite à la main, sans machine.\r\nLa partie la plus difficile, c\'est la cuisson.\r\nIl faut surveiller la température du four, sinon la terre se fissure.\r\nAujourd\'hui, j\'essaie aussi de former les jeunes du village pour que cet artisanat ne disparaisse pas.\r\nC\'est un savoir-faire qui raconte notre culture et notre histoire.', NULL, 1),
(240, 72, 247, NULL, NULL, 'literal', NULL, 'fr', NULL, 1),
(241, 72, 248, 71, NULL, 'resource', NULL, NULL, NULL, 1),
(242, 73, 1, NULL, NULL, 'literal', NULL, 'Traduction de Transcription #72', NULL, 1),
(243, 73, 250, NULL, NULL, 'literal', NULL, 'Hello, my name is Ameter Benali, I have been a potter artist for over 20 years here in the village of Azrou.\nI learned my father\'s job, which he himself held from his grandfather.\nMy job is to shape the earth to create traditional Moroccan pottery,\nlike tajins, vases or decorated plates.\nEach piece is unique, because it is handmade, without a machine.\nThe hardest part is cooking.\nYou have to monitor the oven temperature, otherwise the earth cracks.\nToday, I am also trying to train young people in the village so that this craft does not disappear.\nIt is a know-how that tells our culture and our history.', NULL, 1),
(244, 73, 251, NULL, NULL, 'literal', NULL, 'en', NULL, 1),
(245, 73, 252, 72, NULL, 'resource', NULL, NULL, NULL, 1),
(246, 74, 1, NULL, NULL, 'literal', NULL, 'exp1.mp3', NULL, 1),
(247, 74, 241, NULL, NULL, 'literal', NULL, 'exp1.mp3', NULL, 1),
(248, 74, 243, NULL, NULL, 'numeric:timestamp', NULL, '2025-11-29T11:43:12', NULL, 1),
(249, 75, 1, NULL, NULL, 'literal', NULL, 'Audio - exp1.mp3', NULL, 1),
(250, 75, 241, NULL, NULL, 'literal', NULL, 'exp1.mp3', NULL, 1),
(251, 75, 243, NULL, NULL, 'numeric:timestamp', NULL, '2025-11-29T13:11:27', NULL, 1),
(252, 76, 1, NULL, NULL, 'literal', NULL, 'Transcription de Audio #75', NULL, 1),
(253, 76, 246, NULL, NULL, 'literal', NULL, 'Bonjour, je m\'appelle Amètre Benali, je suis artiste en potier depuis plus de 20 ans ici, dans le village d\'Azrou.\r\nJ\'ai appris le métier de mon père, qui lui-même le tenait de son grand-père.\r\nMon travail consiste à façonner la terre pour créer des poteries traditionnelles marocaines,\r\ncomme les tajines, les vase ou les assiettes décorées.\r\nChaque pièce est unique, parce qu\'elle est faite à la main, sans machine.\r\nLa partie la plus difficile, c\'est la cuisson.\r\nIl faut surveiller la température du four, sinon la terre se fissure.\r\nAujourd\'hui, j\'essaie aussi de former les jeunes du village pour que cet artisanat ne disparaisse pas.\r\nC\'est un savoir-faire qui raconte notre culture et notre histoire.', NULL, 1),
(254, 76, 247, NULL, NULL, 'literal', NULL, 'fr', NULL, 1),
(255, 76, 248, 75, NULL, 'resource', NULL, NULL, NULL, 1),
(256, 77, 1, NULL, NULL, 'literal', NULL, 'Traduction de Transcription #76', NULL, 1),
(257, 77, 250, NULL, NULL, 'literal', NULL, 'مرحباً، اسمي (أميتر بينالي)، لقد كنت فناناً أكثر من 20 عاماً هنا في قرية (أزرو).\nلقد تعلمت عمل والدي وهو نفسه من جده\nعملي هو تشكيل الأرض لخلق بوتي المغربي التقليدي\nمثل تاجينز أو زهريات أو لوحات زينة\nكل قطعة فريدة لأنها مصنوعة يدوياً بدون آلة\nالجزء الأصعب هو الطبخ\nيجب أن تراقب درجة حرارة الفرن وإلا تشق الأرض\nواليوم، أحاول أيضا تدريب الشباب في القرية حتى لا تختفي هذه المركبة.\nإنها دراية تخبر ثقافتنا وتاريخنا.', NULL, 1),
(258, 77, 251, NULL, NULL, 'literal', NULL, 'ar', NULL, 1),
(259, 77, 252, 76, NULL, 'resource', NULL, NULL, NULL, 1),
(260, 78, 242, 79, NULL, 'resource', NULL, NULL, NULL, 1),
(263, 79, 1, NULL, NULL, 'literal', NULL, 'exp1.mp3', NULL, 1),
(264, 80, 1, NULL, NULL, 'literal', NULL, 'Transcription de exp1.mp3', NULL, 1),
(265, 80, 246, NULL, NULL, 'literal', NULL, 'Bonjour, je m\'appelle Amètre Benali, je suis artiste en potier depuis plus de 20 ans ici, dans le village d\'Azrou.\r\nJ\'ai appris le métier de mon père, qui lui-même le tenait de son grand-père.\r\nMon travail consiste à façonner la terre pour créer des poteries traditionnelles marocaines,\r\ncomme les tajines, les vase ou les assiettes décorées.\r\nChaque pièce est unique, parce qu\'elle est faite à la main, sans machine.\r\nLa partie la plus difficile, c\'est la cuisson.\r\nIl faut surveiller la température du four, sinon la terre se fissure.\r\nAujourd\'hui, j\'essaie aussi de former les jeunes du village pour que cet artisanat ne disparaisse pas.\r\nC\'est un savoir-faire qui raconte notre culture et notre histoire.', NULL, 1),
(266, 80, 247, NULL, NULL, 'literal', NULL, 'fr', NULL, 1),
(267, 80, 248, 78, NULL, 'resource', NULL, NULL, NULL, 1),
(268, 81, 1, NULL, NULL, 'literal', NULL, 'Traduction (es) de exp1.mp3', NULL, 1),
(269, 81, 250, NULL, NULL, 'literal', NULL, 'Hola, me llamo Ameter Benali, he sido un artista de alfareros durante más de 20 años aquí en el pueblo de Azrou.\nAprendí el trabajo de mi padre, que él mismo mantenía de su abuelo.\nMi trabajo es formar la tierra para crear cerámica marroquí tradicional,\ncomo tajins, vasijas o platos decorados.\nCada pieza es única, porque es hecha a mano, sin una máquina.\nLa parte más difícil es cocinar.\nTienes que controlar la temperatura del horno, de lo contrario la tierra se rompe.\nHoy, también estoy tratando de entrenar a los jóvenes en el pueblo para que esta artesanía no desaparezca.\nEs un conocimiento que cuenta nuestra cultura y nuestra historia.', NULL, 1),
(270, 81, 251, NULL, NULL, 'literal', NULL, 'es', NULL, 1),
(271, 81, 252, 80, NULL, 'resource', NULL, NULL, NULL, 1),
(272, 82, 240, NULL, NULL, 'literal', NULL, '82', NULL, 1),
(273, 82, 242, 83, NULL, 'resource', NULL, NULL, NULL, 1),
(275, 83, 1, NULL, NULL, 'literal', NULL, 'exp1.mp3', NULL, 1),
(276, 84, 245, NULL, NULL, 'literal', NULL, '84', NULL, 1),
(280, 85, 249, NULL, NULL, 'literal', NULL, '85', NULL, 1),
(284, 86, 240, NULL, NULL, 'literal', NULL, '86', NULL, 1),
(285, 86, 242, 87, NULL, 'resource', NULL, NULL, NULL, 1),
(287, 87, 1, NULL, NULL, 'literal', NULL, 'exp1.mp3', NULL, 1),
(288, 88, 245, NULL, NULL, 'literal', NULL, '88', NULL, 1),
(292, 89, 249, NULL, NULL, 'literal', NULL, '89', NULL, 1),
(296, 90, 1, NULL, NULL, 'literal', NULL, 'exp1.mp3', NULL, 1),
(297, 90, 241, NULL, NULL, 'literal', NULL, 'exp1.mp3', NULL, 1),
(298, 90, 243, NULL, NULL, 'literal', NULL, '2025-11-29', NULL, 1),
(299, 91, 1, NULL, NULL, 'literal', NULL, 'exp1.mp3', NULL, 1),
(300, 92, 1, NULL, NULL, 'literal', NULL, 'Transcription de exp1.mp3', NULL, 1),
(301, 92, 246, NULL, NULL, 'literal', NULL, 'Bonjour, je m\'appelle Amètre Benali, je suis artiste en potier depuis plus de 20 ans ici, dans le village d\'Azrou.\r\nJ\'ai appris le métier de mon père, qui lui-même le tenait de son grand-père.\r\nMon travail consiste à façonner la terre pour créer des poteries traditionnelles marocaines,\r\ncomme les tajines, les vase ou les assiettes décorées.\r\nChaque pièce est unique, parce qu\'elle est faite à la main, sans machine.\r\nLa partie la plus difficile, c\'est la cuisson.\r\nIl faut surveiller la température du four, sinon la terre se fissure.\r\nAujourd\'hui, j\'essaie aussi de former les jeunes du village pour que cet artisanat ne disparaisse pas.\r\nC\'est un savoir-faire qui raconte notre culture et notre histoire.', NULL, 1),
(302, 92, 247, NULL, NULL, 'literal', NULL, 'fr', NULL, 1),
(303, 92, 248, 90, NULL, 'resource', NULL, NULL, NULL, 1),
(304, 93, 1, NULL, NULL, 'literal', NULL, 'Traduction (ar) de exp1.mp3', NULL, 1),
(305, 93, 250, NULL, NULL, 'literal', NULL, 'مرحباً، اسمي (أميتر بينالي)، لقد كنت فناناً أكثر من 20 عاماً هنا في قرية (أزرو).\nلقد تعلمت عمل والدي وهو نفسه من جده\nعملي هو تشكيل الأرض لخلق بوتي المغربي التقليدي\nمثل تاجينز أو زهريات أو لوحات زينة\nكل قطعة فريدة لأنها مصنوعة يدوياً بدون آلة\nالجزء الأصعب هو الطبخ\nيجب أن تراقب درجة حرارة الفرن وإلا تشق الأرض\nواليوم، أحاول أيضا تدريب الشباب في القرية حتى لا تختفي هذه المركبة.\nإنها دراية تخبر ثقافتنا وتاريخنا.', NULL, 1),
(306, 93, 251, NULL, NULL, 'literal', NULL, 'ar', NULL, 1),
(307, 93, 252, 92, NULL, 'resource', NULL, NULL, NULL, 1),
(308, 94, 1, NULL, NULL, 'literal', NULL, 'exp1.mp3', NULL, 1),
(309, 94, 241, NULL, NULL, 'literal', NULL, 'exp1.mp3', NULL, 1),
(310, 94, 243, NULL, NULL, 'literal', NULL, '2025-11-30', NULL, 1),
(311, 95, 1, NULL, NULL, 'literal', NULL, 'exp1.mp3', NULL, 1),
(312, 96, 1, NULL, NULL, 'literal', NULL, 'Transcription de exp1.mp3', NULL, 1),
(313, 96, 246, NULL, NULL, 'literal', NULL, 'Bonjour, je m\'appelle Amètre Benali, je suis artiste en potier depuis plus de 20 ans ici, dans le village d\'Azrou.\r\nJ\'ai appris le métier de mon père, qui lui-même le tenait de son grand-père.\r\nMon travail consiste à façonner la terre pour créer des poteries traditionnelles marocaines,\r\ncomme les tajines, les vase ou les assiettes décorées.\r\nChaque pièce est unique, parce qu\'elle est faite à la main, sans machine.\r\nLa partie la plus difficile, c\'est la cuisson.\r\nIl faut surveiller la température du four, sinon la terre se fissure.\r\nAujourd\'hui, j\'essaie aussi de former les jeunes du village pour que cet artisanat ne disparaisse pas.\r\nC\'est un savoir-faire qui raconte notre culture et notre histoire.', NULL, 1),
(314, 96, 247, NULL, NULL, 'literal', NULL, 'fr', NULL, 1),
(315, 96, 248, 94, NULL, 'resource', NULL, NULL, NULL, 1),
(316, 97, 1, NULL, NULL, 'literal', NULL, 'Traduction (ar) de exp1.mp3', NULL, 1),
(317, 97, 250, NULL, NULL, 'literal', NULL, 'مرحباً، اسمي (أميتر بينالي)، لقد كنت فناناً أكثر من 20 عاماً هنا في قرية (أزرو).\nلقد تعلمت عمل والدي وهو نفسه من جده\nعملي هو تشكيل الأرض لخلق بوتي المغربي التقليدي\nمثل تاجينز أو زهريات أو لوحات زينة\nكل قطعة فريدة لأنها مصنوعة يدوياً بدون آلة\nالجزء الأصعب هو الطبخ\nيجب أن تراقب درجة حرارة الفرن وإلا تشق الأرض\nواليوم، أحاول أيضا تدريب الشباب في القرية حتى لا تختفي هذه المركبة.\nإنها دراية تخبر ثقافتنا وتاريخنا.', NULL, 1),
(318, 97, 251, NULL, NULL, 'literal', NULL, 'ar', NULL, 1),
(319, 97, 252, 96, NULL, 'resource', NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Structure de la table `value_annotation`
--

CREATE TABLE `value_annotation` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `vocabulary`
--

CREATE TABLE `vocabulary` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `namespace_uri` varchar(190) NOT NULL,
  `prefix` varchar(190) NOT NULL,
  `label` varchar(255) NOT NULL,
  `comment` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `vocabulary`
--

INSERT INTO `vocabulary` (`id`, `owner_id`, `namespace_uri`, `prefix`, `label`, `comment`) VALUES
(1, NULL, 'http://purl.org/dc/terms/', 'dcterms', 'Dublin Core', 'Basic resource metadata (DCMI Metadata Terms)'),
(2, NULL, 'http://purl.org/dc/dcmitype/', 'dctype', 'Dublin Core Type', 'Basic resource types (DCMI Type Vocabulary)'),
(3, NULL, 'http://purl.org/ontology/bibo/', 'bibo', 'Bibliographic Ontology', 'Bibliographic metadata (BIBO)'),
(4, NULL, 'http://xmlns.com/foaf/0.1/', 'foaf', 'Friend of a Friend', 'Relationships between people and organizations (FOAF)'),
(8, 1, 'https://raw.githubusercontent.com/bouzidi48/Oral2Text/main/assets/vocab#', 'o2t', 'o2t', '');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `api_key`
--
ALTER TABLE `api_key`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_C912ED9D7E3C61F9` (`owner_id`);

--
-- Index pour la table `asset`
--
ALTER TABLE `asset`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_2AF5A5C5CC5DB90` (`storage_id`),
  ADD KEY `IDX_2AF5A5C7E3C61F9` (`owner_id`);

--
-- Index pour la table `csvimport_entity`
--
ALTER TABLE `csvimport_entity`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_84D382F4BE04EA9` (`job_id`);

--
-- Index pour la table `csvimport_import`
--
ALTER TABLE `csvimport_import`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_17B50881BE04EA9` (`job_id`),
  ADD UNIQUE KEY `UNIQ_17B508814C276F75` (`undo_job_id`);

--
-- Index pour la table `fulltext_search`
--
ALTER TABLE `fulltext_search`
  ADD PRIMARY KEY (`id`,`resource`),
  ADD KEY `IDX_AA31FE4A7E3C61F9` (`owner_id`);
ALTER TABLE `fulltext_search` ADD FULLTEXT KEY `IDX_AA31FE4A2B36786B3B8BA7C7` (`title`,`text`);

--
-- Index pour la table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_1F1B251ECBE0B084` (`primary_media_id`);

--
-- Index pour la table `item_item_set`
--
ALTER TABLE `item_item_set`
  ADD PRIMARY KEY (`item_id`,`item_set_id`),
  ADD KEY `IDX_6D0C9625126F525E` (`item_id`),
  ADD KEY `IDX_6D0C9625960278D7` (`item_set_id`);

--
-- Index pour la table `item_set`
--
ALTER TABLE `item_set`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `item_site`
--
ALTER TABLE `item_site`
  ADD PRIMARY KEY (`item_id`,`site_id`),
  ADD KEY `IDX_A1734D1F126F525E` (`item_id`),
  ADD KEY `IDX_A1734D1FF6BD1646` (`site_id`);

--
-- Index pour la table `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_FBD8E0F87E3C61F9` (`owner_id`);

--
-- Index pour la table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_6A2CA10C5CC5DB90` (`storage_id`),
  ADD KEY `IDX_6A2CA10C126F525E` (`item_id`),
  ADD KEY `item_position` (`item_id`,`position`);

--
-- Index pour la table `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `module`
--
ALTER TABLE `module`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `numeric_data_types_duration`
--
ALTER TABLE `numeric_data_types_duration`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_E1B5FC6089329D25` (`resource_id`),
  ADD KEY `IDX_E1B5FC60549213EC` (`property_id`),
  ADD KEY `property_value` (`property_id`,`value`),
  ADD KEY `value` (`value`);

--
-- Index pour la table `numeric_data_types_integer`
--
ALTER TABLE `numeric_data_types_integer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_6D39C79089329D25` (`resource_id`),
  ADD KEY `IDX_6D39C790549213EC` (`property_id`),
  ADD KEY `property_value` (`property_id`,`value`),
  ADD KEY `value` (`value`);

--
-- Index pour la table `numeric_data_types_interval`
--
ALTER TABLE `numeric_data_types_interval`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_7E2C936B89329D25` (`resource_id`),
  ADD KEY `IDX_7E2C936B549213EC` (`property_id`),
  ADD KEY `property_value` (`property_id`,`value`),
  ADD KEY `value` (`value`);

--
-- Index pour la table `numeric_data_types_timestamp`
--
ALTER TABLE `numeric_data_types_timestamp`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_7367AFAA89329D25` (`resource_id`),
  ADD KEY `IDX_7367AFAA549213EC` (`property_id`),
  ADD KEY `property_value` (`property_id`,`value`),
  ADD KEY `value` (`value`);

--
-- Index pour la table `password_creation`
--
ALTER TABLE `password_creation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_C77917B4A76ED395` (`user_id`);

--
-- Index pour la table `property`
--
ALTER TABLE `property`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8BF21CDEAD0E05F6623C14D5` (`vocabulary_id`,`local_name`),
  ADD KEY `IDX_8BF21CDE7E3C61F9` (`owner_id`),
  ADD KEY `IDX_8BF21CDEAD0E05F6` (`vocabulary_id`);

--
-- Index pour la table `resource`
--
ALTER TABLE `resource`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_BC91F4167E3C61F9` (`owner_id`),
  ADD KEY `IDX_BC91F416448CC1BD` (`resource_class_id`),
  ADD KEY `IDX_BC91F41616131EA` (`resource_template_id`),
  ADD KEY `IDX_BC91F416FDFF2E92` (`thumbnail_id`),
  ADD KEY `title` (`title`(190)),
  ADD KEY `is_public` (`is_public`);

--
-- Index pour la table `resource_class`
--
ALTER TABLE `resource_class`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_C6F063ADAD0E05F6623C14D5` (`vocabulary_id`,`local_name`),
  ADD KEY `IDX_C6F063AD7E3C61F9` (`owner_id`),
  ADD KEY `IDX_C6F063ADAD0E05F6` (`vocabulary_id`);

--
-- Index pour la table `resource_template`
--
ALTER TABLE `resource_template`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_39ECD52EEA750E8` (`label`),
  ADD KEY `IDX_39ECD52E7E3C61F9` (`owner_id`),
  ADD KEY `IDX_39ECD52E448CC1BD` (`resource_class_id`),
  ADD KEY `IDX_39ECD52E724734A3` (`title_property_id`),
  ADD KEY `IDX_39ECD52EB84E0D1D` (`description_property_id`);

--
-- Index pour la table `resource_template_property`
--
ALTER TABLE `resource_template_property`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_4689E2F116131EA549213EC` (`resource_template_id`,`property_id`),
  ADD KEY `IDX_4689E2F116131EA` (`resource_template_id`),
  ADD KEY `IDX_4689E2F1549213EC` (`property_id`);

--
-- Index pour la table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `site`
--
ALTER TABLE `site`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_694309E4989D9B62` (`slug`),
  ADD UNIQUE KEY `UNIQ_694309E4571EDDA` (`homepage_id`),
  ADD KEY `IDX_694309E4FDFF2E92` (`thumbnail_id`),
  ADD KEY `IDX_694309E47E3C61F9` (`owner_id`);

--
-- Index pour la table `site_block_attachment`
--
ALTER TABLE `site_block_attachment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_236473FEE9ED820C` (`block_id`),
  ADD KEY `IDX_236473FE126F525E` (`item_id`),
  ADD KEY `IDX_236473FEEA9FDD75` (`media_id`),
  ADD KEY `block_position` (`block_id`,`position`);

--
-- Index pour la table `site_item_set`
--
ALTER TABLE `site_item_set`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_D4CE134F6BD1646960278D7` (`site_id`,`item_set_id`),
  ADD KEY `IDX_D4CE134F6BD1646` (`site_id`),
  ADD KEY `IDX_D4CE134960278D7` (`item_set_id`),
  ADD KEY `position` (`position`);

--
-- Index pour la table `site_page`
--
ALTER TABLE `site_page`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_2F900BD9F6BD1646989D9B62` (`site_id`,`slug`),
  ADD KEY `is_public` (`is_public`),
  ADD KEY `IDX_2F900BD9F6BD1646` (`site_id`);

--
-- Index pour la table `site_page_block`
--
ALTER TABLE `site_page_block`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_C593E731C4663E4` (`page_id`),
  ADD KEY `page_position` (`page_id`,`position`);

--
-- Index pour la table `site_permission`
--
ALTER TABLE `site_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_C0401D6FF6BD1646A76ED395` (`site_id`,`user_id`),
  ADD KEY `IDX_C0401D6FF6BD1646` (`site_id`),
  ADD KEY `IDX_C0401D6FA76ED395` (`user_id`);

--
-- Index pour la table `site_setting`
--
ALTER TABLE `site_setting`
  ADD PRIMARY KEY (`id`,`site_id`),
  ADD KEY `IDX_64D05A53F6BD1646` (`site_id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- Index pour la table `user_setting`
--
ALTER TABLE `user_setting`
  ADD PRIMARY KEY (`id`,`user_id`),
  ADD KEY `IDX_C779A692A76ED395` (`user_id`);

--
-- Index pour la table `value`
--
ALTER TABLE `value`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_1D7758349B66727E` (`value_annotation_id`),
  ADD KEY `IDX_1D77583489329D25` (`resource_id`),
  ADD KEY `IDX_1D775834549213EC` (`property_id`),
  ADD KEY `IDX_1D7758344BC72506` (`value_resource_id`),
  ADD KEY `value` (`value`(190)),
  ADD KEY `uri` (`uri`(190)),
  ADD KEY `is_public` (`is_public`);

--
-- Index pour la table `value_annotation`
--
ALTER TABLE `value_annotation`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `vocabulary`
--
ALTER TABLE `vocabulary`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_9099C97B9B267FDF` (`namespace_uri`),
  ADD UNIQUE KEY `UNIQ_9099C97B93B1868E` (`prefix`),
  ADD KEY `IDX_9099C97B7E3C61F9` (`owner_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `asset`
--
ALTER TABLE `asset`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `csvimport_entity`
--
ALTER TABLE `csvimport_entity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT pour la table `csvimport_import`
--
ALTER TABLE `csvimport_import`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT pour la table `job`
--
ALTER TABLE `job`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT pour la table `numeric_data_types_duration`
--
ALTER TABLE `numeric_data_types_duration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `numeric_data_types_integer`
--
ALTER TABLE `numeric_data_types_integer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `numeric_data_types_interval`
--
ALTER TABLE `numeric_data_types_interval`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `numeric_data_types_timestamp`
--
ALTER TABLE `numeric_data_types_timestamp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `property`
--
ALTER TABLE `property`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=253;

--
-- AUTO_INCREMENT pour la table `resource`
--
ALTER TABLE `resource`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT pour la table `resource_class`
--
ALTER TABLE `resource_class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT pour la table `resource_template`
--
ALTER TABLE `resource_template`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `resource_template_property`
--
ALTER TABLE `resource_template_property`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT pour la table `site`
--
ALTER TABLE `site`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `site_block_attachment`
--
ALTER TABLE `site_block_attachment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `site_item_set`
--
ALTER TABLE `site_item_set`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `site_page`
--
ALTER TABLE `site_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `site_page_block`
--
ALTER TABLE `site_page_block`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `site_permission`
--
ALTER TABLE `site_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `value`
--
ALTER TABLE `value`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=320;

--
-- AUTO_INCREMENT pour la table `vocabulary`
--
ALTER TABLE `vocabulary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `api_key`
--
ALTER TABLE `api_key`
  ADD CONSTRAINT `FK_C912ED9D7E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `asset`
--
ALTER TABLE `asset`
  ADD CONSTRAINT `FK_2AF5A5C7E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `csvimport_entity`
--
ALTER TABLE `csvimport_entity`
  ADD CONSTRAINT `FK_84D382F4BE04EA9` FOREIGN KEY (`job_id`) REFERENCES `job` (`id`);

--
-- Contraintes pour la table `csvimport_import`
--
ALTER TABLE `csvimport_import`
  ADD CONSTRAINT `FK_17B508814C276F75` FOREIGN KEY (`undo_job_id`) REFERENCES `job` (`id`),
  ADD CONSTRAINT `FK_17B50881BE04EA9` FOREIGN KEY (`job_id`) REFERENCES `job` (`id`);

--
-- Contraintes pour la table `fulltext_search`
--
ALTER TABLE `fulltext_search`
  ADD CONSTRAINT `FK_AA31FE4A7E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `item`
--
ALTER TABLE `item`
  ADD CONSTRAINT `FK_1F1B251EBF396750` FOREIGN KEY (`id`) REFERENCES `resource` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_1F1B251ECBE0B084` FOREIGN KEY (`primary_media_id`) REFERENCES `media` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `item_item_set`
--
ALTER TABLE `item_item_set`
  ADD CONSTRAINT `FK_6D0C9625126F525E` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_6D0C9625960278D7` FOREIGN KEY (`item_set_id`) REFERENCES `item_set` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `item_set`
--
ALTER TABLE `item_set`
  ADD CONSTRAINT `FK_1015EEEBF396750` FOREIGN KEY (`id`) REFERENCES `resource` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `item_site`
--
ALTER TABLE `item_site`
  ADD CONSTRAINT `FK_A1734D1F126F525E` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_A1734D1FF6BD1646` FOREIGN KEY (`site_id`) REFERENCES `site` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `job`
--
ALTER TABLE `job`
  ADD CONSTRAINT `FK_FBD8E0F87E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `media`
--
ALTER TABLE `media`
  ADD CONSTRAINT `FK_6A2CA10C126F525E` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`),
  ADD CONSTRAINT `FK_6A2CA10CBF396750` FOREIGN KEY (`id`) REFERENCES `resource` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `numeric_data_types_duration`
--
ALTER TABLE `numeric_data_types_duration`
  ADD CONSTRAINT `FK_E1B5FC60549213EC` FOREIGN KEY (`property_id`) REFERENCES `property` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_E1B5FC6089329D25` FOREIGN KEY (`resource_id`) REFERENCES `resource` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `numeric_data_types_integer`
--
ALTER TABLE `numeric_data_types_integer`
  ADD CONSTRAINT `FK_6D39C790549213EC` FOREIGN KEY (`property_id`) REFERENCES `property` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_6D39C79089329D25` FOREIGN KEY (`resource_id`) REFERENCES `resource` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `numeric_data_types_interval`
--
ALTER TABLE `numeric_data_types_interval`
  ADD CONSTRAINT `FK_7E2C936B549213EC` FOREIGN KEY (`property_id`) REFERENCES `property` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_7E2C936B89329D25` FOREIGN KEY (`resource_id`) REFERENCES `resource` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `numeric_data_types_timestamp`
--
ALTER TABLE `numeric_data_types_timestamp`
  ADD CONSTRAINT `FK_7367AFAA549213EC` FOREIGN KEY (`property_id`) REFERENCES `property` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_7367AFAA89329D25` FOREIGN KEY (`resource_id`) REFERENCES `resource` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `password_creation`
--
ALTER TABLE `password_creation`
  ADD CONSTRAINT `FK_C77917B4A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `property`
--
ALTER TABLE `property`
  ADD CONSTRAINT `FK_8BF21CDE7E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_8BF21CDEAD0E05F6` FOREIGN KEY (`vocabulary_id`) REFERENCES `vocabulary` (`id`);

--
-- Contraintes pour la table `resource`
--
ALTER TABLE `resource`
  ADD CONSTRAINT `FK_BC91F41616131EA` FOREIGN KEY (`resource_template_id`) REFERENCES `resource_template` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_BC91F416448CC1BD` FOREIGN KEY (`resource_class_id`) REFERENCES `resource_class` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_BC91F4167E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_BC91F416FDFF2E92` FOREIGN KEY (`thumbnail_id`) REFERENCES `asset` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `resource_class`
--
ALTER TABLE `resource_class`
  ADD CONSTRAINT `FK_C6F063AD7E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_C6F063ADAD0E05F6` FOREIGN KEY (`vocabulary_id`) REFERENCES `vocabulary` (`id`);

--
-- Contraintes pour la table `resource_template`
--
ALTER TABLE `resource_template`
  ADD CONSTRAINT `FK_39ECD52E448CC1BD` FOREIGN KEY (`resource_class_id`) REFERENCES `resource_class` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_39ECD52E724734A3` FOREIGN KEY (`title_property_id`) REFERENCES `property` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_39ECD52E7E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_39ECD52EB84E0D1D` FOREIGN KEY (`description_property_id`) REFERENCES `property` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `resource_template_property`
--
ALTER TABLE `resource_template_property`
  ADD CONSTRAINT `FK_4689E2F116131EA` FOREIGN KEY (`resource_template_id`) REFERENCES `resource_template` (`id`),
  ADD CONSTRAINT `FK_4689E2F1549213EC` FOREIGN KEY (`property_id`) REFERENCES `property` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `site`
--
ALTER TABLE `site`
  ADD CONSTRAINT `FK_694309E4571EDDA` FOREIGN KEY (`homepage_id`) REFERENCES `site_page` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_694309E47E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_694309E4FDFF2E92` FOREIGN KEY (`thumbnail_id`) REFERENCES `asset` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `site_block_attachment`
--
ALTER TABLE `site_block_attachment`
  ADD CONSTRAINT `FK_236473FE126F525E` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_236473FEE9ED820C` FOREIGN KEY (`block_id`) REFERENCES `site_page_block` (`id`),
  ADD CONSTRAINT `FK_236473FEEA9FDD75` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `site_item_set`
--
ALTER TABLE `site_item_set`
  ADD CONSTRAINT `FK_D4CE134960278D7` FOREIGN KEY (`item_set_id`) REFERENCES `item_set` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_D4CE134F6BD1646` FOREIGN KEY (`site_id`) REFERENCES `site` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `site_page`
--
ALTER TABLE `site_page`
  ADD CONSTRAINT `FK_2F900BD9F6BD1646` FOREIGN KEY (`site_id`) REFERENCES `site` (`id`);

--
-- Contraintes pour la table `site_page_block`
--
ALTER TABLE `site_page_block`
  ADD CONSTRAINT `FK_C593E731C4663E4` FOREIGN KEY (`page_id`) REFERENCES `site_page` (`id`);

--
-- Contraintes pour la table `site_permission`
--
ALTER TABLE `site_permission`
  ADD CONSTRAINT `FK_C0401D6FA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_C0401D6FF6BD1646` FOREIGN KEY (`site_id`) REFERENCES `site` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `site_setting`
--
ALTER TABLE `site_setting`
  ADD CONSTRAINT `FK_64D05A53F6BD1646` FOREIGN KEY (`site_id`) REFERENCES `site` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `user_setting`
--
ALTER TABLE `user_setting`
  ADD CONSTRAINT `FK_C779A692A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `value`
--
ALTER TABLE `value`
  ADD CONSTRAINT `FK_1D7758344BC72506` FOREIGN KEY (`value_resource_id`) REFERENCES `resource` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_1D775834549213EC` FOREIGN KEY (`property_id`) REFERENCES `property` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_1D77583489329D25` FOREIGN KEY (`resource_id`) REFERENCES `resource` (`id`),
  ADD CONSTRAINT `FK_1D7758349B66727E` FOREIGN KEY (`value_annotation_id`) REFERENCES `value_annotation` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `value_annotation`
--
ALTER TABLE `value_annotation`
  ADD CONSTRAINT `FK_C03BA4EBF396750` FOREIGN KEY (`id`) REFERENCES `resource` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `vocabulary`
--
ALTER TABLE `vocabulary`
  ADD CONSTRAINT `FK_9099C97B7E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
