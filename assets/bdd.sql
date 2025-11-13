-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 13 nov. 2025 à 14:17
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
(41, 'items', 1, 1, 'en', '1\nHello, my name is Ahmed Benali, I have been a pottery craftsman for more than twenty years here in the village of Azrou. I learned the craft from my father, who in turn learned it from his grandfather. My work consists in shaping clay to create traditional Moroccan pottery such as tagines, vases, and decorated plates. Each piece is unique because it is handmade, without machines. The most difficult part is firing: you have to monitor the oven temperature carefully, otherwise the clay cracks. Today, I also try to train the young people of the village so that this craft does not disappear. It is a know-how that tells our culture and our history.\nen\nfr');

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
(41, NULL);

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
('NumericDataTypes', 1, '1.13.0');

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
(41, 1, 121, 5, NULL, 'en', 1, '2025-11-11 16:57:06', '2025-11-11 16:57:06', 'Omeka\\Entity\\Item');

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
('fvqkr86e5pgduua35kk4jd3m2l', 0x5f5f4c616d696e61737c613a363a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313736323838303233312e3238333036343b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a226f637364356a6564326f3072386a316139317033633464313662223b7d733a34323a224c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313736323931323135383b7d733a35333a224c616d696e61735f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313736323931393437343b7d733a34343a224c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313736323932333432393b7d733a33323a224c616d696e61735f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313736323932333430333b7d7d72656469726563745f75726c7c733a36313a22687474703a2f2f6c6f63616c686f73742f6f6d6b5f544879705f32352d32365f636c6f6e652f61646d696e2f7265736f757263652d74656d706c617465223b4c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a223930623337326663346664656564323566373564356435653738366236643735223b733a33323a223933616538336439656239656634663664353466346661646231363361653865223b7d733a343a2268617368223b733a36353a2239336165383364396562396566346636643534663466616462313633616538652d3930623337326663346664656564323566373564356435653738366236643735223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f417574687c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4f6d656b614d657373656e6765727c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a31303a7b733a33323a223232343664633863343136306266346132363736663732366236303664633030223b733a33323a223137383934353537373832353365643665386539336438323761363230643336223b733a33323a223262323231303261623039313835373132363139333736383636613739303231223b733a33323a226438356266346335316133636533356339373635653032303432663365643433223b733a33323a223035346464366565383333646238383831653035363762623838356330373332223b733a33323a223935383061313536633733613034333665396638663837653232396434666364223b733a33323a223964646438653534636239343464303734363561386633323236356433636162223b733a33323a223730363935633065363437393762626333343961313566373265366164336466223b733a33323a226135633666303035333138633363333462636162353635633836396265623530223b733a33323a226132656330393162653930383230303862383539363239326630343466613465223b733a33323a223438323336303462626331353136643738373462343931366563356333663164223b733a33323a223938346565616561376361643939306139656138396635343039376631303330223b733a33323a223939336236343338316663626365626564653262396366313338343238613733223b733a33323a223836666437343930663162313137326333376437393765666161313933303839223b733a33323a223630613166396135393561633062313033333934613032613639386261626562223b733a33323a223331383934623663386137663963643633303733396261636336303438343831223b733a33323a226237336639356634333630646164316536343761623930653532333832303362223b733a33323a223235353033366261663666333431613936326231643932613032396439393737223b733a33323a226166663863666530643631666533343038306139316338306437366536633731223b733a33323a223433666531393436386237363536303139396463353035393261383464363834223b7d733a343a2268617368223b733a36353a2234336665313934363862373635363031393964633530353932613834643638342d6166663863666530643631666533343038306139316338306437366536633731223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a3234343a7b733a33323a223239616562396633393261356232313862363037376461363266323139633435223b733a33323a223062353431643539646638633439623233316338626633613330653862353033223b733a33323a223039636434636139613266363139623039643261626139663039633765336566223b733a33323a223936393733356333623934633233316430323038623765323362613633393235223b733a33323a226362393466356662623730396435376666366430313563343630303166613937223b733a33323a226139663531393564643636343930353565303632303833333938303464383163223b733a33323a223063386163363166333661393461613962323333346435346262373939343132223b733a33323a226639626665323438663962616565316632363430663231646237306133393737223b733a33323a226138343935316430613666303536633234363533353636623730333863653735223b733a33323a226332633231316630636136626534626163646431323062326333313535343435223b733a33323a226232656466376162386133653738376432336261353432306266633636646139223b733a33323a226438373738633865666336306133336230353132363564656436323163386637223b733a33323a226335303361323937393935316635663762303431636235623136323935323264223b733a33323a223137656536316330633238306436323961306365346338313432356135653734223b733a33323a223762303038376661343962343539306561616361343661643534373832616330223b733a33323a223766393661353966393063623562373862326162393432363364336433376465223b733a33323a223131396235366531623438376633626465323339653664373733346136383937223b733a33323a223365653431383966323132643836656130306561353231623230363361353661223b733a33323a226232633930616662663663653562656432373631626433333638316366323036223b733a33323a223937353762643630646666323265623838333437366463656635613137343431223b733a33323a223136346234316331326462376236363330636535613262666266363564333732223b733a33323a226566373266616133333664616638376566333466643739666330386630666233223b733a33323a223864643164323034343432353364633866646563333662613038373138663836223b733a33323a223537656131643537333836396137636138363865663234383336323332633462223b733a33323a226236653565393365346533313963393362376635383732636362323764636434223b733a33323a223736326264356566343930663163323637333464383536623537646534326236223b733a33323a223338636533653864636231633037333136356336353562373930366134366332223b733a33323a226633613433373361316134333134633865613034393037653534373432616262223b733a33323a223930353730366263656261613836643336656265306165396663636330663563223b733a33323a226565383933373664356432623432326332363130313034646636326264353835223b733a33323a226639316632323563346466636436643532323261383632663266333063376666223b733a33323a223230636338306633373765643539373537326334616436356337363834613139223b733a33323a223464386335393739303638383163643737386264646663393937393161663863223b733a33323a223735636336616136376137613030373038356539666232313933336337643162223b733a33323a223730396232626631333335623035356266326361613563313861613038313639223b733a33323a223331646439613730353136323736376164393935393663316663343737333266223b733a33323a226437663162613132353735333739393432333666656338303235343933636164223b733a33323a226465616566653132343439303034623066663837303634343733363331363930223b733a33323a226265396632653736356266313133666432363762396130313533613066373438223b733a33323a226461336436366537313331643865366165303533653062333863663366326531223b733a33323a223435626236663130616162616635336265393066363365613532653661373738223b733a33323a223063326235613761303535626532363434383462353637326362316463313834223b733a33323a226334396162653161623964656633613233343064333137356138613461326661223b733a33323a223061623133643866303632623131623363343366623731613635616338316435223b733a33323a223236616633333639613936356362343134386135643236356437613738346661223b733a33323a223730393330343736336562636230643862333963313336306636393634326130223b733a33323a223838666263326236346638336631353664396433656536383932626534336336223b733a33323a223939363134626332346131306235383135366230363939356662623361353566223b733a33323a223062393362613761666466323464636262353139366666333261666638653334223b733a33323a223432656339313864313134336664326132353761663032636133643365356664223b733a33323a223662643633623037316339373932313366303236316463313264633533343662223b733a33323a223261363737613564376265386532313566323333613339303732316538303334223b733a33323a223937363733656165346133396231396639666362346364613237303030333266223b733a33323a226530393338373536666138643231313236633739333833393463633733663732223b733a33323a223961653930653263353131663063393133633564663536616437393836633466223b733a33323a226361326464656263313962346232623538653038363630643465363531313464223b733a33323a223334376464323031626230303335396438666361666162663539363237343430223b733a33323a223663303462613538326133323438623166323866383664633734613666643736223b733a33323a226232346162626134646562363961303365646437353762343333323132363037223b733a33323a223231373632623230653762386631656361316438303763613461623166303165223b733a33323a223033613061656133353834653065333163616461343966356263663161653739223b733a33323a223062396135343361336664303337656238303039366334333439663932373435223b733a33323a226264333463623362646638623237663765633562613737393264336330316636223b733a33323a223432323939653265383763336335303963613935356237626230313334326563223b733a33323a223465613733363134366432353161383530626133363738623864306435323931223b733a33323a223934623736343236653364656339663038313633313866616333663566353734223b733a33323a226139623037353261666365346665313039633433376262623437613035373165223b733a33323a223565373839633030396130306130633839376362346336626364326430396464223b733a33323a223065343264346633393936306431383835373634613337316164373038383836223b733a33323a226561633139363262323931343638333932386230373666653933383161646263223b733a33323a223866353237613933353664623138303161643166356139333834623330633366223b733a33323a226661396438383462336163383638373832363233613339633339303765626538223b733a33323a226532356638633237626233616534643630343663343234643935326634313161223b733a33323a223132616236386366626534303866303734663161626436363866333333353135223b733a33323a223962653863346261616539616266663665306339663862353537353633623330223b733a33323a223839656339636430313462656462353734323866396666353236386331323239223b733a33323a226161373664386164343034323965363536646236613137313665346264323963223b733a33323a226233313437303835393330646634633634653739333965653665656663333533223b733a33323a223039363633666335613735323735313939306437323434646361313261383961223b733a33323a226663346438646236313438316536323665316566663832336432303532396338223b733a33323a226366316564333761313538323337636238343263663730643530333038316534223b733a33323a223437626663386631366163316161373832383033636565643366636538386363223b733a33323a226438346336663431643434316333383538333034616438393064646366306638223b733a33323a226466653333363735366237653662666162613234343538356165346630663434223b733a33323a226530393865306465616136393662393163336433663639666164346366636339223b733a33323a223439666135303966636435346461363334663765616331333162303230383831223b733a33323a223634653864346664666466333164636436353834313834363562333039396432223b733a33323a223532663335613163316463313236353166353263343564373663386234633931223b733a33323a223831666132636666323761373762656539616337363737653666316363636131223b733a33323a226562353337663533333861363764316566363263383833633330303762373261223b733a33323a223234663633366466636664313665363461353164636431663463643330366365223b733a33323a223330363839323661393162323138373166636530653832643132653031616336223b733a33323a226131653036333139343036373965356438333861313334363664303332306661223b733a33323a223230343863626539636566636363363137303562396163343865306165323363223b733a33323a226239653266626436366135353332313939363061343037633935636561306264223b733a33323a223730313531643431633537383136623037396165616432663030373362373036223b733a33323a226666313630343463323733396434633235396335356361323564356366396336223b733a33323a223961323134303139633135316365306330616133343536303939623530313531223b733a33323a223363626564386566666664643963366430623438343338346263343734366463223b733a33323a223135356238353765636535383132386135373162336533633931373835383634223b733a33323a223634646134616562633966656233303132323862343730636533663539313065223b733a33323a223665643732386131653536316263386565353462323866393639643332343235223b733a33323a223961666361353531613932656430376332623365353237653533653734633663223b733a33323a226564666336363366643462663132373766313434656137373861666461326565223b733a33323a223735363838346637363236666430316639316137646164623236323666383732223b733a33323a223164323737396165353762393936366263316161323066633135303436663534223b733a33323a223534626362666232303239376332316661353932643035643661623236336436223b733a33323a226230333439653463636630633861363137343138613136653834646332656335223b733a33323a223062636231653766653965343361346134303362663534303037303561633764223b733a33323a223332663932653534393837386662363263646536376535653864313965353236223b733a33323a226430333865616138363530393565333239653463623131363234316564353133223b733a33323a223039636263316232633365376436386539656161623664373936316664303537223b733a33323a223531643664626632653331363462643238396633626338623831633364616365223b733a33323a223533623133393336396139323661316136346662303431333138356561316265223b733a33323a223438383238646266343038383362663933373835626632663638306536323933223b733a33323a223739343030656131333330643239306563306265393135386232306135386361223b733a33323a226565616335386664376532313262376135646463623162383162363266343439223b733a33323a223766343130306639623866366334383138633863623530323561353738336136223b733a33323a226166363961656231343162663866633939363232343035393238626530656531223b733a33323a223534633762656466653566333539373339616237376264306434303565366634223b733a33323a226237303730633533383134363535353865346538316239386165343934643161223b733a33323a226433393537326261316437333135353639646261356337626463643834383132223b733a33323a223631646563623638333463313165653331333662346539386665366639326265223b733a33323a223264663833393134623736306635366531333230386531356263643365653537223b733a33323a226431633236326664396436306530326165393934613938383830646161306162223b733a33323a223239373534376263323835346432326162666238343732643035373964363331223b733a33323a223139643735336437343665366435643737666437633432383536313331346432223b733a33323a226633376366353534633535636362323635316663303039313665643362346633223b733a33323a223865376230346630613762623039363137343663333161366131656139383138223b733a33323a223934343433613064313766666435656338333865383639323730643132336664223b733a33323a226666386138616561656163353938656566613439316530653063383730303463223b733a33323a223839623962666531663035366662616366306664613539373764353836323164223b733a33323a226231656364633835326434643939353635323131656530306535333862643363223b733a33323a226161666463653131633564613939306163323030653535613732656663656363223b733a33323a223034383765313130666538323436633363333737383739323130303964323036223b733a33323a223131616362303761313530653663366235346134653836633666383964363566223b733a33323a223732616138303064386538303530303061343335366536353237633830666138223b733a33323a226333373434636166393230336662376239613038336132373461323434333436223b733a33323a223363616332366536323638373438313232396665653135653636653233626261223b733a33323a223664666534363730626664633239316661393263333533303566353366323035223b733a33323a226238386130656461353530373963653561393665366633316338336133626234223b733a33323a226232623439396263373330653034383530643764333961313832376161663033223b733a33323a223535633465636437376238653932633832386134303032303137626533373836223b733a33323a223462323538643037353764323831393633663130653135653734653465646335223b733a33323a223662663339343964373832616565333938366334643265323431313061333961223b733a33323a223633636263373361353361393231366538626532326363396230626639633130223b733a33323a223166643263613362386638613137393432313438626530373562383661333866223b733a33323a223062326566646635356166313636633133653561356264373830626163343636223b733a33323a223562386630303337613763616638313465616332643835306133396538393031223b733a33323a223733326236656237643834623266623762353261366633303637396533643661223b733a33323a223261336236633362653161663265633664653866666330336433306563366332223b733a33323a223833313261613134346539633237373363333632386335653265323462653964223b733a33323a223438333937613737626666383535313866343433323934303738663831656434223b733a33323a223130316261663036663033666331353531353634666566313266613838643735223b733a33323a223331623130306530653134653739313162633337336163303066623931313265223b733a33323a223938663565346436653766356532383936363533363933386434383761353133223b733a33323a226237363931303832643062623966353639626565653038313232373833626464223b733a33323a223265613937386233663464343339323038666536303231616534663933666165223b733a33323a223034353763313234636461633534613565373036623063353833396563623761223b733a33323a226162316661303833363463336565333735313264346661363935316139313161223b733a33323a226666336131313664653533393537613234383637656334656566643361333438223b733a33323a223063326237316131303666363836636363343034643066396536656333323037223b733a33323a223262333261633232636531333331613936633933326466353939623463613161223b733a33323a223966323132346431663931316237353237303235333339653432393963623736223b733a33323a223963393433616539376265613535336138626335616363346162363235616636223b733a33323a223861373136366638613237366137383737376164386638373733623338303230223b733a33323a223831386636663461656331663931313165663832363263376363613330393133223b733a33323a223430333763376239646266373431353863303738356266323862633232616238223b733a33323a226263313032396262633261346535303061333666373733663837363361306162223b733a33323a223236313332346133356437316162356630316132346132646235316364386562223b733a33323a223461656136336662613435363738643637313333366436616662666630373863223b733a33323a226137323866626364313033643864396336623935323765663233343034333732223b733a33323a226639336437636532363831336463356433323562323334613131363634363137223b733a33323a226166336238316236303037376239323738326463386365666130363862643338223b733a33323a223737313734646564343539323033326665623635386664323964326662313137223b733a33323a223461393335643338353664393364646636343430356365373436343638653066223b733a33323a223364313039313233636638393730336662383536626466643738396462623234223b733a33323a226566306331386665326532383039636262356566393966336632616434646131223b733a33323a226262323861313233333365656565633237343163623038613863356135333634223b733a33323a223134336661353634323537316161303365643639313366386463376363313236223b733a33323a223765323866653963376334633065613063663833386539366630656361636466223b733a33323a223061323264656631376531643135343435323764356339343233326137616464223b733a33323a223466376638666461383833326463396332353533383165356637626663306365223b733a33323a223262316532656230303732666362653539316331383466323637623463393736223b733a33323a223130663930373264323233646331633032333866386535363739316465316539223b733a33323a223735396366663762356664346661336362313536366438316431316433653064223b733a33323a223166386364343333316566633364323730376534626264623037623834306564223b733a33323a223264656337363339653730363463323030363361346236653034313563373738223b733a33323a223039356331666239373538656665343462326364323164393536346165353362223b733a33323a223062316430643964626463313435356665646162343533623031316331373265223b733a33323a223338316330346237373334323137303839653735363730363562383632393434223b733a33323a223162336638383635353230396338396235316534326331383364326535313438223b733a33323a223133313934633234353138306138363635623461313235333435343765653135223b733a33323a223333633161396631646134323038396630326333376464353132633564396662223b733a33323a223835643362383937663932366461666562613937643934333461383434386162223b733a33323a223663386430326435343033613631643530353065316331303065376162313536223b733a33323a223732383032643839626234363432633832323936383532646535323335363034223b733a33323a223136333439636366316565363035626139346633323835613330373334646432223b733a33323a226238626465653433346361653933313735396261333465623137663336646137223b733a33323a226236336135613932323839303236356431333832363738376463366364383333223b733a33323a223133653265383632633937383561386133376466333230663064613331336634223b733a33323a223234363538626131393661373862336630363737623338363734313962323465223b733a33323a223961386230306131346366613737303164393135343337383166303762303636223b733a33323a223533653039393365363266636165346363336535653532323430616366396665223b733a33323a226235376465363433653536333336306137393965613066633065353231383939223b733a33323a223230663363376363363065656335366333643132316138653764623265623632223b733a33323a223837303361303665666138363339623839383936353937643132396536666435223b733a33323a223766306430663430363835343039623563316231303862373530393463376465223b733a33323a223666333737373135386464336330656131616233323333353835666261653839223b733a33323a226665353561353830626531393031643764383135393936666563343162633536223b733a33323a223662393139663931633631626335643662626334326337663738333134333061223b733a33323a223763663666613763363962613364303162633336313137393464323231663330223b733a33323a226639386363363363303538613833623732326230373366386338363332373134223b733a33323a223661386538316638366635396438643834386662353734616165363764356535223b733a33323a226433326230346338316536636662613163626265343138333565393235303162223b733a33323a223564626436663235336539383265356461666539623632306336393232313866223b733a33323a226436316539656638333730626231636435393034376161656463643366333266223b733a33323a223662663033653863323731613762303135663164313664623539313230333832223b733a33323a226630633964356362633536353962303933316130653033643632616637623932223b733a33323a223436323934346533326532343631346334316366623938393137306435646438223b733a33323a226136653162316433383034376335623538626361643364346239626138626465223b733a33323a223830643232353862623766623464343438636662313134353361343566363663223b733a33323a223831376662666631663162663830396236306439666264646136313439303264223b733a33323a226663363564626264303532613431653036613365623532363338333861616262223b733a33323a223839323261363233666563663065393564356665333733346535306234323062223b733a33323a223263663539656661336563386263623964353332653161323762616231316639223b733a33323a226262616636376166626666336264326538383438336338373766356538653539223b733a33323a226237303431386561633031646462303333636238653764663034656666663539223b733a33323a226438313430343631666239333532303264323432633136383632323764383937223b733a33323a223533396565386266643161336366373837376361646134333037643466393766223b733a33323a223861303262326362393938356261643439316461333664343064363831636463223b733a33323a226231356130383039326232316530386464613061313030363265646535363636223b733a33323a226565383836623531326133396530633465633163323565643937343033626430223b733a33323a223031356263623437353539633838356436383234356162386431376164323936223b733a33323a223462373134643832373161343330333937626238303231656537373237663637223b733a33323a223364613762376132373830396362666162353664333239313235346666393264223b733a33323a223463613336613730303066613961663239383937373239383838663433333963223b733a33323a223036303037393165316332666435643438656436623138303436623732653863223b733a33323a226636643365346663306131343466623337633538313530353165366135353034223b733a33323a223538613337333436373465626462396436373161643435656236303337656266223b733a33323a226162386561613139646263623630396638326536306466366631393431643939223b733a33323a223137316636353237636333656266363835373932313536383735356338636439223b733a33323a223934386365383231363834323133303165353561653130633733383532656662223b733a33323a226665303530653362343730633935643962366138613766316235623263313730223b733a33323a223464343435643662643234363033633064616264303134633862396238393235223b733a33323a223035326263376132343932633061386135343539376364386236356334303333223b733a33323a226439613863663035646230626561636432633036633131393363643439363034223b733a33323a223033316364633931626533383963393235383366373030396136346561383666223b733a33323a223439303364303939656632343763653565663362653738663161313765313633223b733a33323a223934613038623030663963616165653532313163383831353765346364366437223b733a33323a223839623835333832613963356237336162376439333835346361613361373130223b733a33323a223432666336363630643965366462316430636538663861623163323764333062223b733a33323a223236646531336137613131616330353439356530373033316365663865663964223b733a33323a226161663562313631653861393361633862343632643133336263373963646230223b733a33323a226337656238653338626630373830623362333161643630303330353237383136223b733a33323a223934383033643065346538313733663862306331396362356131623131376664223b733a33323a226534666533366565333238333334383061303661363464663839613361303164223b733a33323a223766366465616464636535346664356634383730626664386339323366333562223b733a33323a226233303065343665346662323261613138383638386138366363343335396234223b733a33323a226635323337376534336239306561643436396434373632643266623132623732223b733a33323a223732313263393866376634346661356665646237373538336630656136646266223b733a33323a223961396163303466653238386637386536666633366532306531363465653135223b733a33323a223838643463613230306663316363333664386437626263353063333935616338223b733a33323a223634656538663966626563356239383564373261383833353362396435373434223b733a33323a223730353730643932353235666533366566333638653766376361393861643562223b733a33323a226334373165646133653631303033383231393533663132663736333439663735223b733a33323a223936656566363532363963613732386338383964643936366136323265333738223b733a33323a226236616538623733663634323636613263386335393961393463626430643539223b733a33323a223537376630393062616330306531393631346537653466303237346333643165223b733a33323a226432336231353532386633363363633961323433613537303964646466313637223b733a33323a223930353530643339343334363234373464316531653736343430346634383833223b733a33323a223230353035303661643936306434363634336461393539623865613765616431223b733a33323a223531333638656263626161623537653061666333663330393833303461663163223b733a33323a226439656566653933663762336532393765356365386266306337333136336262223b733a33323a223064633139616238383966636233353936333465633938363933643737323736223b733a33323a223236653530353330313063363465633233613630323038393337623034396234223b733a33323a223234316239656463363865663936396432633062313831666236353161666165223b733a33323a226663346337353662653233643731333964646563343165643132343639623433223b733a33323a226662316532343962393261306365306631633537643430636337326566636534223b733a33323a226361333236636538306133383265326430636463643362633231663831376130223b733a33323a223262386334653535633465383466323965626339396532623765373538666166223b733a33323a223933376134356331396465376530623132626162656262333034396439633534223b733a33323a226330643966616361366465666662333164656661343936356433663330333438223b733a33323a226163306130333035616261356538636266623166343964346136653564383739223b733a33323a226138356166653130326263316337343463326437656266313265626565353138223b733a33323a223966393634316433643532623664383130653331363663313164653566616262223b733a33323a226436336163303337363535656137373039323830383166623937336163333862223b733a33323a223134363638656639363936303436386530653434633933383931316335653439223b733a33323a223164346666643233396665373162623833383031366563366631653032636632223b733a33323a223364653464653031653662663231393263666131633466663963636630343565223b733a33323a223132323662303666363736323436396531653161626363313331306133343539223b733a33323a223938346564646431353132333666383335306566313266633266393531373239223b733a33323a223764326161306436316461303465623031663133383265376537333137333232223b733a33323a223233333239646365356264633766613162313863613634303265303435636363223b733a33323a226533363536366638383933353432353439316433306163613762633034333431223b733a33323a226330313830356363376632613530333565323730373766633865663032653431223b733a33323a223136386639393436346139623230393037346266313133393833636435653563223b733a33323a226234313530636438356466346162396633646663386665343462613231343131223b733a33323a223362663436643764663963616464363133326630396134356231336163623934223b733a33323a223739363566373835666662666330653739633332333339626138383833383131223b733a33323a226237396336656534643563616639306331613335303939343538373238346632223b733a33323a226662666466336439363033623238346630343864333563316339376130346430223b733a33323a226634653933343938373330343766393635666632386463333863646531316331223b733a33323a226335353731306564363834616564633938663334623936373861393030373434223b733a33323a226532663966323235363662313735306162323135363862333162373562353632223b733a33323a223733386533386136306262326463343032376261353164363865633832313836223b733a33323a223434623761663334356264376236646132616165393834633664336635323561223b733a33323a223566396233396565623837326539333364653664313033666366346661373365223b733a33323a226265326134356533396330383231303132316439386465623336666264366333223b733a33323a223238653832306561616538343631656537343739623762643730313231373062223b733a33323a223664326137663331363535396463393633393433306537653330323762613337223b733a33323a226465306233653563373632333163643437393262366433623836383337366432223b733a33323a223032333833353830366163626234653332633363303263373636616435356362223b733a33323a226538363536663330643166636139633532666530373866306134653030336337223b733a33323a223531646632623030363663623861626461383938633434633534613835373132223b733a33323a226234656463633131336366343432393539393039323266303636326561366661223b733a33323a223563376236373663343064366231396262656432363531633730653163376562223b733a33323a226432393362626232656439643836303439353564346235613930373639323565223b733a33323a223836663738313362333638636638356432636131363935353766373761386635223b733a33323a226161383763636261373334396361643532326531653539396564363933346531223b733a33323a223362376132653934646436626466396334356131376130373534333032363635223b733a33323a223237303561613538346463373064376366353438613830656666626437303532223b733a33323a223666633864616536616633663261303436363666383965356232353561323436223b733a33323a223564653032666333336135343266363830326331663763643232373038373434223b733a33323a226539383335623662323862303738363131303161346363623735626634623131223b733a33323a223030623930333831396333326537626431626435616339363564613635323238223b733a33323a226239303739316535663637393633663566323434353939356566336431356665223b733a33323a223334343064313337663534363664316333633331383062343739346666663039223b733a33323a223833373461343336316263393666663961373636353563643066636433306632223b733a33323a226262316461613736303865393061373261373735393363656230326330656266223b733a33323a226232363564616635626232326635383532643732396262386133633165306337223b733a33323a223663663930306135346662333264353737313332613762306530646166366634223b733a33323a223330643466316530376432666231363262383961396137306566336162623936223b733a33323a226436343139393262346166343663393363306466353038646263636666613235223b733a33323a226563313732636433643164363063663466396464663231353131356338333635223b733a33323a223330373166383935313433623338316538373037343335303931643463316430223b733a33323a223238393161663763303465383638636232633734333930656439613033326139223b733a33323a223937366235306564316664396162623038396630363630316261623965643732223b733a33323a223238393136333162613130643561313766633462613964333761353032343239223b733a33323a223662653233316463643264356666303962343636386230646436386564633361223b733a33323a226339643439613635633661613961306431363837613864353065363766336133223b733a33323a223264643334633063613635386466363163633534303237633636343863396633223b733a33323a223866316235323565393739613638343361393134663234633963666532326233223b733a33323a223438353461623935343233396261333062663635383461653637346162333862223b733a33323a226664626338303162643830373365333466643933366266363438626530636537223b733a33323a223464326333343339393633373462383330303730393031373438316663346432223b733a33323a223234343164623034303439346635666336393936626637636535353835343432223b733a33323a223139343438303037323632626130313566316365623266393530616436353963223b733a33323a223164396532326236366635616537633463366465613334363764643065643238223b733a33323a226432646439366366666130643163353436303035643133656438663337313666223b733a33323a223631623138333732333530666434366264656635646334653565313935353531223b733a33323a226639646435613564383036396631363862353964653962653136353036326163223b733a33323a223663373434373438616566303337626631396136613532363331356563626537223b733a33323a223433326365636336376261363831396638623166356365663261333061393863223b733a33323a223936633431313363316262376162313165313037353939616461343032336463223b733a33323a226430643161326561313630373035646137343534383439313537333961663531223b733a33323a223963643931303431393265343763396139343137333538313638616530646136223b733a33323a226433343630383531393737366463633036343835613732363132323065643332223b733a33323a223737653566353431663361353033623335323038383835646431333664646632223b733a33323a226335393036613531313161356661623237376134306565623637386436653931223b733a33323a223334613933316436373834386631373436373335373962326665636565336233223b733a33323a226362643134636665396430623738356235653833383631613435363935643963223b733a33323a226364336464356334653466653936643535633661346535666363303639666336223b733a33323a226665613839633064353263613534646433626639343531373035386630313562223b733a33323a226439313834333334393163643765383932633165316530643537643664616465223b733a33323a226465643866623062633733623865353335303536613265656233666164306136223b733a33323a223234616539303462616238383462653433326335333138366562303666333563223b733a33323a223139656163626361383765356165333766363639616333633265383534306366223b733a33323a223962346639386362376336643537313561323134383236323833636530663434223b733a33323a226637646134356636626234616361653163636638653662633464626466386332223b733a33323a223466663964313063616131396462366566626161356461653563663666383239223b733a33323a223065313462393462663538323232636131363836613862616631343836653033223b733a33323a226339346233623431393431633635306235663430303965346366666263353565223b733a33323a226632313863653238666664363239303238613937393464633536633964393365223b733a33323a223233636434376231363930353964303039333732363132376233383965326432223b733a33323a223639343732666338386137613238643366303238316338326238393835653164223b733a33323a223333376431666664663735333938663239643435613834393565383432616462223b733a33323a226364343137323166373361633963336132396461386231333561633134366632223b733a33323a226162616562633336323064393632353063633866373633326131376438303134223b733a33323a223037383934353538663638333565363031643761383064383533356434336136223b733a33323a223637653439623231396339663565393032383261333866653661343439323964223b733a33323a223361326265653563663065653830653264303963303463663861396264656262223b733a33323a223732323632653135643939313635666139366164323831623363626436653336223b733a33323a223133376265633431653564346435636462386563336164663038303531633530223b733a33323a223735386130313863323531323238363563383664383635613739333661376565223b733a33323a226537323737303536336163626361616262316534663931373834623962336332223b733a33323a223866363034356336376536323034643630383730366663623530636137653334223b733a33323a223430653164343130616132613366653438633963343133323366636161353338223b733a33323a223331616630393936343961653533616161626530656162626639363434633534223b733a33323a226434303937313539646463633835313365623631623162303231346266393865223b733a33323a226166323030363061633731623639346233363865363231323839376333386335223b733a33323a223635663538623932356231636461303533383136346466326565626437653563223b733a33323a223339313235643261663334343334313237313133323938313261326463636532223b733a33323a223936336332313637613139623136373663383839383430613337313363323765223b733a33323a226461666131656230306337623539663863643233376665666130613330623039223b733a33323a226562356332663063333439386134323234396361393966336538353661346630223b733a33323a223666663238343562383436393738373339313837386666393638636636633533223b733a33323a223032373737653230653963366336326439366635393639303932373035383630223b733a33323a226566613364613163323930363531623235373032633766623336323063306564223b733a33323a226361383538656336313138623235633235636237646233393565396564613961223b733a33323a223030383633336531636234623539336534336332313161323461393666313364223b733a33323a223362333462623561303263316463373063333266663335663065633632343035223b733a33323a223830343365386532376230373836613734323930356231616531383733613562223b733a33323a223138383235393532333363363664353638323763303836393262326365656434223b733a33323a223662666437646564343465376636386562323337623963386166363639393639223b733a33323a223661343838373235623730336564623062613234623332313266363439386165223b733a33323a223963383566306437636335623465636338653033353032353038646230343861223b733a33323a223730373566336261336138363162326637383064356135393630646633376563223b733a33323a226163643336376333363564333733623233386230363238346166643833656632223b733a33323a223763636361373965326264666561386231663463346238366433376638353265223b733a33323a226337663033666438306636643865356430393930633766663666373934623230223b733a33323a223864386431353034303836383764306138363032303664616238306331313837223b733a33323a223831356166623036363939393961633238336631306165643061333637353039223b733a33323a226664636463366663663065626162353165666131653338326163343435396363223b733a33323a226339363738353539336637653961353162623831303539386638383437643437223b733a33323a223237393437636635636432356562303636346663623238353135633261376137223b733a33323a223466666261313130393034366434363762663163316264306436303465646239223b733a33323a223165633639663264393865613233393737633135306239356435313733306636223b733a33323a223064383638323839363030663838636138386661376561366632316137326339223b733a33323a223865636633356132353364653761333562383036613231383631666233373162223b733a33323a223131366133306663663564353761383666623835333161303832303165316632223b733a33323a226231643134363437653131653332623633666133303163323638356263393765223b733a33323a223532333831613836373162646438366431366134336536316164616662303964223b733a33323a226234353734306338393132396639393865336462623036663232363138616530223b733a33323a223164393139396335383930396437643136336633646638666530323034643437223b733a33323a223366323133356439313962646166303737383137323834343534313635383132223b733a33323a226534353737633561633563653237623035636531333566626339636337323539223b733a33323a226466323463333032323931613065633035333664313537646535663562343139223b733a33323a223735336135633862393336313135333536663032356565626164653934386532223b733a33323a223964393335643133303132356338643162636431353339383433313939326236223b733a33323a223234336234323365346464646436323365356535616361616630653135313635223b733a33323a226338346133633334323433336562653266613263353764383238626637326262223b733a33323a223230303438613163383863386432353238363364326161643235623563313537223b733a33323a223364613930353663656232623137333830653166663731393932633437623561223b733a33323a226134323430303939363566623338653137323931376231663635653362626431223b733a33323a223461303035386662613334646165373134366633393039333638383965623664223b733a33323a226462313237376136326630336462386336616161343465373365653236343661223b733a33323a223065653430376163633337613337656166633530393435396336356266656234223b733a33323a223239643535393435316238313038303335353433333530393332633034326565223b733a33323a226436326362326332373664373939393436303232373038663763653939386632223b733a33323a223663613530366662366165626263333732653964306437373337643432303661223b733a33323a226434656563353866363363373436303764333563653066643561386531366635223b733a33323a223131376438663135616665393731333637366265333936376563633365376631223b733a33323a223637346236633264393665323433363133636465343466373461363438616137223b733a33323a226465623437323665326565323131303130386434616331646534326662396164223b733a33323a223536633734353238336235656437656165343238383930616133343635613665223b733a33323a223862623761333663613033626635303632653537306238343535306261663134223b733a33323a226332643635346237396337386561373231313764356263616466323264373438223b733a33323a226162306163653463353066356535343566323165663164353539323966623363223b733a33323a223139613464666331383736363562633936383332613932313136363830663731223b733a33323a226433343061663964383133633865373266333461626165616361393061336364223b733a33323a226135663435323430393461613739383365666430343261616433646239366364223b733a33323a223836653939356662373438656133656635393035653637613639303630663534223b733a33323a226539643266646565333464316334633330363663656165383764626134353233223b733a33323a223439363437333831303730316162633963383934343533323362346438633661223b733a33323a226663653065653363613036363634636233636363363462363635346663313838223b733a33323a226638333332376366373966356466653537303666326131303338306237343666223b733a33323a223062396561643866366165366632633764386561363433313831613539393434223b733a33323a223436613061323162366634383764336165393334303730623162363038366333223b733a33323a226564663232613566386336336162343163653661636432613438373737643465223b733a33323a226261643264653636343465363332313530356562613738633366613235666136223b733a33323a226139333636663632623566663366623731626636343764663764656536356361223b733a33323a226431646562616262643365663264386532636333393761316261313830646637223b733a33323a226434353037373864376662336331376664643230363235393339653734653534223b733a33323a226263363635363461353265323334383066316664393762306435346239623361223b733a33323a226263643161393535323162386434303663616661333932653830663837656165223b733a33323a226133626434656133353665623164373933346166663263383064613037373962223b733a33323a223639306463316666356337343636616436313534643030306236666431313562223b733a33323a223462343962356466373761316139366161396531366634333165663530353533223b733a33323a223033336333323433633631616434663766623761303036333335383365653132223b733a33323a226334396430346330386538633566656334643530626261636163386664396130223b733a33323a223561326565303661376635363762346230636536386261643064396533393639223b733a33323a226634333237613539386665366135663736646131303731626136303766633936223b733a33323a223733366562663164643534646130643035663430333665666636373465363434223b733a33323a223630303031313262383638386634613437666663666237353132363238393161223b733a33323a226131316433326362376132666162346366366466333363383736623861396262223b733a33323a223265613530396439383731616330306238636539393739326430356661663564223b733a33323a226136646533333633383338633438356437393336306463356430326530303564223b733a33323a226237383666656563366263643965616462633738653865333066623061633166223b733a33323a226631626166656661383363656163376265623263656364346535633330323431223b733a33323a223032323761303461636634343364323038356239373237393665663238346565223b733a33323a226633366664623062656433336361646235633362313235316432363439343664223b733a33323a223661373261343465653437353832366666386566623333323530336264363661223b733a33323a223231366337643531343435323131636465333661366138666635356333316566223b733a33323a223438333638376434303639663831343732303630646165336464363139323832223b733a33323a226131383930363237333135636461393237336464393836303432626638393664223b733a33323a223162376135376663353964353466396436346163613033653266376632363766223b733a33323a226633653366376537363263353662313134353761623930326565633662316331223b7d733a343a2268617368223b733a36353a2266336533663765373632633536623131343537616239303265656336623163312d3162376135376663353964353466396436346163613033653266376632363766223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a39393a7b733a33323a223463343666623231396466663634366433663039633731663961386166383065223b733a33323a223263643461653766623539333431343565396337636532386237636636653431223b733a33323a226630653039336231303966653031653863373264643738386666343066366163223b733a33323a223634663666323463316335366136346161353830356562663464303864623562223b733a33323a226263333838646562373033626435383035653635643666373265653231613065223b733a33323a223762623334326230656261383035326637306566663533303835366563363635223b733a33323a223365333064326663656631643164326165373735326334376132303965633761223b733a33323a226238316230373831376565613761316264633864346661336165396530386138223b733a33323a226637643139373836353133386263306131366531666330373136623937646330223b733a33323a223635313836376465306161396662306334386537306266393931373933633866223b733a33323a223235313165653437663537393538353537383333616636616166643130393763223b733a33323a223539636366303563326164396237653064343833373535663265356635343137223b733a33323a223964363737313466633534303935636233336664616534656161363262356639223b733a33323a223332303135636563383932333539633833663262353931386536396136623932223b733a33323a226234396562343363346434353035373662353337366265613437653238623635223b733a33323a223939383362356331633962653231633836613030313337356236373532333761223b733a33323a226563386362636434363331323939656635623831663533613561626537623431223b733a33323a223433373031313732613466653033356564623863616462383664383637336332223b733a33323a226365383439633562653332323337643737656339316663643566646663626238223b733a33323a226334653232353432373730383665393231303036386634333163623461613030223b733a33323a226233303335333066303338663865316362653739366566333630623563653339223b733a33323a223430396230343131363731646439643565353966646565636361383133633663223b733a33323a226630363964653265323132396138353535356239616664343762336233316336223b733a33323a226162343234396664326264336432613136356334356330343930396434396264223b733a33323a226432346530366639366533346332356137643735643131316537363334623533223b733a33323a226239643539373130333438363265356432383138646137663231363539333766223b733a33323a223133333332633236356462616639346239393561653935343234313330376438223b733a33323a226266633063313432363730323464626334653336396233386537366634653731223b733a33323a223664643363313065636662363562363262356232353136656433313633636565223b733a33323a226161663762356463623435333963623064653033326564326134626561383865223b733a33323a223332353030636161333430613837313435623532393032363465663635623239223b733a33323a223866363666653630366433336133616666366636613733613632336332306239223b733a33323a223136393363386630376531643864366164313535326666613366333034613835223b733a33323a226135656535393033343362383330333961623835323434383937353362373461223b733a33323a223739633765333763333466313034323235356239396134343238626431323464223b733a33323a226531646335643134393537306265656130663036303139363036633566303038223b733a33323a226232313661333962353435316534633033653462313361383839666430336438223b733a33323a226639353237316263616234386434366663633737633462366136386632336566223b733a33323a223230366165336164343930373164663938343861643137653831656465306630223b733a33323a223133636632393865353032656466376233613231306438633830366131366565223b733a33323a226563656434613833393939653239303939623331373731383534386362623530223b733a33323a226336383130643531653937663863636238376164313639636538346162656266223b733a33323a226633663936616630643761643161306462653535613639646538616235346166223b733a33323a223133326430663832666365633932346434313934366135666333653734306264223b733a33323a223138396236333435383533363230656661346335656663386231636363643261223b733a33323a223434356433343262363564323564313934306633383261336333656432373936223b733a33323a223561643938383364333931376135343834613136346132313762393062396230223b733a33323a223963353738313637333466666261306166316261306435633461616635666333223b733a33323a223233326330613666316333343435346431666330626437323366343263626234223b733a33323a223662653938663936323139633537396635376166646663356364383137393364223b733a33323a223332346132303139636535633166383635373662306638396561363961326530223b733a33323a223732333166333137316334336265386265653637323762313533616262653232223b733a33323a223434363735623831333336363832376665643532356533653030663532333862223b733a33323a226339666230343630643232626536363539373237633630633837323663353031223b733a33323a223365333266643466636266396665313164393936653064613138643365653362223b733a33323a226433353735623031313966643363663438306138633634383233613662316134223b733a33323a223532323363643865643364343038663065313536386664633966613135623931223b733a33323a226437613339323037653662346636376664383035643934393931636266383931223b733a33323a223765626534633238643231356132616132396262636437613732623865333231223b733a33323a223563653464633531326138306231306130373633363163643139346433623339223b733a33323a223737356138383364616265303665313665656264316130353138666532643262223b733a33323a223761306230646361326535393339653361353766376264366338373532643265223b733a33323a223861386566363437646131613162306636326333656564313436323766396630223b733a33323a226665356136393765633133626465393863393135303163633666366130643836223b733a33323a223738393234393461383761323533623038323736323838353338383831383335223b733a33323a223765326635343062616666393737306636333535346431313035363736323265223b733a33323a223563653665656332623964393331316339356364643530393236346539623838223b733a33323a223462366164363265626533663165326362396263303662653765636464356563223b733a33323a223562646666313531336165383037396231623062643066633666346664373539223b733a33323a223032333133613838613139336131656532653730356633326537343563663933223b733a33323a223034313163653262316363333230363266316262666436316162626230656333223b733a33323a226461353333393065366466656466343765316432376235643832356666616532223b733a33323a223563383633376432666236653463333231336439626137653637616639313033223b733a33323a226239316336353261616638643030333234646131376263303065646661346433223b733a33323a226630373032383732386330383637653835333838346233333266306534383331223b733a33323a223230633931633236353633373339656464346534313566626336316263376536223b733a33323a223166313936303435356134623666353861656165383139666563333833303962223b733a33323a226138626539653036623366306438333032613239343534646337666236373032223b733a33323a226332303330653164313138646462326661623163646362386539373732616338223b733a33323a226330393230323834373432326161306365313438326135363665366163653836223b733a33323a226134336161356539393737613830623033303433666231386565663564363837223b733a33323a223638626530636364343765353931633135363238656336303661643830393335223b733a33323a223137396539346361646535313133656330333036636665386462393561346463223b733a33323a223164663631633161366131643435326163346365333766303838336164306565223b733a33323a226131386635613334323061363663396263626138383136313938316437393663223b733a33323a226361303266306130303039653663353539353361346566613532643561393663223b733a33323a223232313931313734636335323766356134353637376532343034646334613633223b733a33323a223963313534653837623165343463633136663866373761363730316666623565223b733a33323a226662356130383063306434303865323365386638643738366163613134343739223b733a33323a226564636236313366386634643463653266653033363335396634646338376636223b733a33323a223533653333313339623061326665623632353365326161396630333962396566223b733a33323a226666363761376539383437393034643731636332396634393830386634353534223b733a33323a226236656330646139356162353335306663373136373537616533333164623866223b733a33323a223462333763316337646564346366333265333230366533363166356661666431223b733a33323a223736616333326333333932356334316331633833316261313233363830383938223b733a33323a223863303237626639313666323764376334343035373561363732646230363939223b733a33323a226233653632333961303261633035316139313763313566363466356365323234223b733a33323a223832383639623262653264343963613936383862363361373538343737663237223b733a33323a226163643432373137333866386533333439313535336436323466336465346434223b733a33323a223964666135323263323933313630613834393232366531623466613663656566223b733a33323a223438333264646134626238633662366264303933326465396239333338323561223b733a33323a226563356138313733393137383266333736396239663236346339633265623831223b733a33323a223565633937336364343031616436623435653933313162613630613166643265223b733a33323a226136383233653137613837613233313530326263336237363633666439363238223b733a33323a223731313665383764383166353133646337396332613230313434363535323938223b733a33323a223338313965613262663265613530313862373663336534313164353061303431223b733a33323a223737376661346165373162653930383131383663633134656539666262366563223b733a33323a223431313731616566353537386566386333376639373936613531393764343430223b733a33323a223038636237326232666536333462373263623966323830376132326334323764223b733a33323a223461646466373730653137363836663332623835396333346137343135363366223b733a33323a223637656230313239353930363036626562346561333334633333363735366338223b733a33323a223939383665343137656663653932353464393633666639633165383133386232223b733a33323a226438346438623933613435313530346566663266616538626532396133356138223b733a33323a226163666266613965303362666231326161623462303161366265383536383839223b733a33323a226531343664336238373661343935373462343430383139313666633638386335223b733a33323a223834623530366464393162383561636534623335616465376239646430386438223b733a33323a223839373032646530373433393762653735396465326463363462363230303233223b733a33323a226337363963343464633162366237666130343638383036353566323230633534223b733a33323a223030613065333239313838646132653163646330663837363139306635356364223b733a33323a223431343163616261333065336438616539323931323434626464623139313461223b733a33323a223035306439663432366565346331613337396134666633613537303330643933223b733a33323a226537396563656334396638393463333964386436323037373030633361616139223b733a33323a223037393761396565313336663165333362396636333331326335396662336435223b733a33323a223833653437326336326331316339653437373862383333656436333035343236223b733a33323a226362356235323964326137326439313633323963613965393439623339303531223b733a33323a223337376366363639366336333636333766393864613730323564353833666530223b733a33323a223965393164616333656539383764306138306663633133663438373135646162223b733a33323a226139323330363166343063623466643138393164393535366530393530613964223b733a33323a226163623564616137623439636333613830643839383634636234313063666262223b733a33323a223130353565323133653132623264353531653937333432653564386530383466223b733a33323a226137616561316338306166643564316461636633626365613030333832663563223b733a33323a226561343263613461376564386532326134373266653836623533356566633261223b733a33323a223561633831613462626161653264336332653765366335663166373432346234223b733a33323a223866613061663961626665353162326561303766336331613962663735623839223b733a33323a226635313936313231363233383264353538366264616334366665393834616336223b733a33323a223930663930376137383865363465623335383037376531303737313738333634223b733a33323a226534333961376362663663383934303163666339393266356636356534353536223b733a33323a223135613139306264306432343765653437663735666662383039666336666438223b733a33323a226138643034383233656566633761653565393566333435393239346535383061223b733a33323a223533336235663262303434646333653637366136373835373461646130626538223b733a33323a223437636438353663636630313735366332353538616636373361316231653566223b733a33323a226537393831303364613630616164363438353264663937383430633731636235223b733a33323a223734313634383164396366393261336432656136396564326664336132343561223b733a33323a226536396133333735663431656263303830653434626631386439633836376537223b733a33323a226233636361386265633135636139303633323164636433613636336132383836223b733a33323a223965663938303266316137613934343138313030313461656330393838373434223b733a33323a223665613035383662623838626665356437326536616162333233366438313636223b733a33323a226435633934326132616537643862306334313863376135656638323661626134223b733a33323a226132303066653666343864616361376238663065666538366662646339623563223b733a33323a226635313532393364323536386330396439336264396536316666643464356137223b733a33323a223333316431393134343932626637376239663463393565303465306231643731223b733a33323a226561656362623130613435386531386465663937613836646163653536393632223b733a33323a223862336163383933396539656231306339626666313737623435393965633332223b733a33323a226535316266336566303964326536356239313235373538393235663738636135223b733a33323a226638316538363437386165376332393030353465636461386630323236663562223b733a33323a226538643834306538333232306634343937633631383331313533386530303663223b733a33323a223532363730373831333834316532613633336166613332333036633634363039223b733a33323a223862363838666162313563396663646466613331343565386165326265306236223b733a33323a223261653739353835653163313364303363323165656535303831343764636439223b733a33323a226239613665346165666630396636393335303538373666646536356539643863223b733a33323a223662663461363965613866616130366336383361383538646433303338313066223b733a33323a223430336631363561653438653131343335383530313138396266383538353533223b733a33323a223833643364343435366364643532383363363833386436313061626433343630223b733a33323a226133346236383638633465316532353337623762636563613661663539333336223b733a33323a226161396363346365663734393863343732346463316639393433643266396239223b733a33323a223032663035356634316631346636363131663231653636636464303862316661223b733a33323a226232663233396566323635653536336263656361393961393666343665313134223b733a33323a226638333563373436353933643436356335613438303664663434303564653539223b733a33323a226438646439303630383936346534653433613536386631303339346165653264223b733a33323a223461623762366136623861386235653262353631613436306533636233633432223b733a33323a223962323364383336653638613337326465313165386563616165663863306364223b733a33323a226665316136636234646234343165646638616464346136613337363630313866223b733a33323a223936613235633562613535356662336439386466383439353431623663363362223b733a33323a223037323762646637343239396666646361343634303336336134333061383630223b733a33323a226636643237613662393339643863393261313930653832316536656365623065223b733a33323a223862623861643732306539643562613964626134643365386661303232323839223b733a33323a226534633531313466303432343262356463643734616363353234616137336261223b733a33323a223936343639396164653530623035306465623430623632663265366133383636223b733a33323a223930643335383462643738363463326162616466356466636432373361333533223b733a33323a226538633634303339653434393737306134336530356662303338356534396238223b733a33323a223931313532323433653663346536333233613364323162316166626231653037223b733a33323a223965326230353837353537383330346564323931363764636235613762356336223b733a33323a223339346262356332346666303031366464386637393534313063626138613036223b733a33323a223338356636303161396364306437383462653731613566363264626332633934223b733a33323a226130653033386566633339313638386363343830616330366233323461343230223b733a33323a223765336336366564656532626535353663356138653230383031323466656637223b733a33323a226333323566346630316534383238666362663132303162346636323435616561223b733a33323a223433613831316232353231613433386538333735303939643062393537633934223b733a33323a223039646164626164613863376535363133646163363539363530303663633964223b733a33323a223966613238626666336537646532623730366635343262313434316539333465223b733a33323a223737656535646330313365323332316437616337633763653237656166646262223b733a33323a223438386361393430633331303030616239323234363061373638376132353335223b733a33323a226638316133643062326330303937353634316234663832316532386566643863223b733a33323a223333626134643865373235346562393338663634333664616536393635653235223b733a33323a223363623964333961353230313739333535356331393032333539306637356438223b733a33323a226664313234303039363737396638353464663333303765633461326663623435223b733a33323a223034646163363463393264633333366662663566393638383166343636383532223b733a33323a226164623838346364356337376536356664643036613232336635306434613935223b7d733a343a2268617368223b733a36353a2261646238383463643563373765363566646430366132323366353064346139352d3034646163363463393264633333366662663566393638383166343636383532223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d, 1762880231);
INSERT INTO `session` (`id`, `data`, `modified`) VALUES
('hhp1emv2inn9rd0upb5nt5ub7s', 0x5f5f4c616d696e61737c613a363a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313736333033393535372e3239353837363b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a22743972376c6f6d3462396f36733364656931376b6c6a666c7631223b7d733a34323a224c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313736323931303834313b7d733a33323a224c616d696e61735f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313736323931313730393b7d733a34343a224c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313736323931313936313b7d733a35333a224c616d696e61735f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313736323931313936313b7d7d72656469726563745f75726c7c733a34333a22687474703a2f2f6c6f63616c686f73742f6f6d6b5f544879705f32352d32365f636c6f6e652f61646d696e223b4c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a223561353234616563643933316162356235636238386538663432646136376265223b733a33323a226536626534636633663738303334633331313332643335353735653934373131223b7d733a343a2268617368223b733a36353a2265366265346366336637383033346333313133326433353537356539343731312d3561353234616563643933316162356235636238386538663432646136376265223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f417574687c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4f6d656b614d657373656e6765727c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a363a7b733a33323a223936343662343538373837653664613065336662373833306163373238366233223b733a33323a226430326133303363306363633362623234313265343238363639383565633832223b733a33323a223236376363383064353762356266633032303866373764383737313437356531223b733a33323a223964653966323038313561653436396135626230396535373861326338376334223b733a33323a223038313063663437666233653233623134343162363336393962346133643631223b733a33323a226232363933623536356266396366663134346566363630353064363362333631223b733a33323a223866393963393838336634666634663966383637346136353631323730393830223b733a33323a223933393733623437313039386434353934373237373134336232303432393865223b733a33323a223930643534383361653266643434343233396665626362326466333437333564223b733a33323a223936313433323461393766323864633330306231366361373065666636316663223b733a33323a226534306631663266646462653639396430373537343134626661343339376131223b733a33323a223966303137626236363834343966383035353864633137303630373461373931223b7d733a343a2268617368223b733a36353a2239663031376262363638343439663830353538646331373036303734613739312d6534306631663266646462653639396430373537343134626661343339376131223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a31363a7b733a33323a226362313936623165616666306437363637643966363935643862313632656334223b733a33323a223764343235633734383332356463646465666231313535313432363262646336223b733a33323a223636616234626661343031623332393166353339653266313835623432323436223b733a33323a223665373866336466366264383064663736346439316531353661636337306466223b733a33323a223437653930396263343837663838346631396536353333653364393331326533223b733a33323a226434373932333463316365306437623830363764316162343635663465363461223b733a33323a226638363561336464333230373963616638626166363830623762376136396663223b733a33323a223164353861326266616435313539656131623066373535663436363636626332223b733a33323a226530393861356662363065663165313237383337666561383866353433626664223b733a33323a223235313431323439336563643362303733346265383636653062353165323439223b733a33323a226561306163643664313230386239623861323232633363663865363164376166223b733a33323a223634343735656231313563343336376233313438613866343137656635646662223b733a33323a226436373730376137616665653834356530366462616136663431323334353030223b733a33323a226562636166653639356662643733653066306330313361386433343534646565223b733a33323a226234343537303162353931373835646265346463613534383062343532323332223b733a33323a226335633135383337336561623637626235373364303662383166353834303766223b733a33323a223731643730656632386530376665333434326238313633316462373831346663223b733a33323a226163326365393361353166626539346134636238656263366563396639643535223b733a33323a226433616163666464656564626466303461626538623336656462316562346638223b733a33323a223730663638346537343235353964626162623963623165653266393430663765223b733a33323a223836313431643761343732653933383664393337623839613563653237363865223b733a33323a223535313134383364653530653537366536666463373233353138383363383537223b733a33323a226433336537376261336135613432343233343238366162303837636266343330223b733a33323a223934656433303639363138316331366531363661363661396230633933646264223b733a33323a226166373264663764353333353337653463316439663262303764306161636138223b733a33323a223239613330376564313738623438656466333966663338643964376636373338223b733a33323a226532633035383762353432336664353038353562356464353332363362633738223b733a33323a226137356130666164633864666163643130393236373863626535663665366439223b733a33323a223533376438343863353031333431336266393765326565383334313435633964223b733a33323a226239626236313266306361373462343339373063316633393531313535393634223b733a33323a223638396364653064383737303961393334316263373332613561323531373963223b733a33323a223030383830303637366130663066383462386166366262613537626462313036223b7d733a343a2268617368223b733a36353a2230303838303036373661306630663834623861663662626135376264623130362d3638396364653064383737303961393334316263373332613561323531373963223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a353a7b733a33323a223132633833353132643062666531376565363334366466383965643930393738223b733a33323a223831663834373562383361316633313839393330636338366665393037643936223b733a33323a223335333939336261663838623331346635303138643566333031636136366266223b733a33323a223265643537646335326166353631306565303964626633323231383564626138223b733a33323a226661313766343636303732623763333437623335306232393533373935303031223b733a33323a226434663666346162343634383231663730376532616436613362623331373336223b733a33323a223238613166366463366334306534313739353538636138646536353637376231223b733a33323a223339366535633036626562396238643639663033356430316235303732616665223b733a33323a226130373338396564343032316335373534353063313466316530663334333833223b733a33323a223033363931633739316137353733313764663766386134353766303836663764223b7d733a343a2268617368223b733a36353a2230333639316337393161373537333137646637663861343537663038366637642d6130373338396564343032316335373534353063313466316530663334333833223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d, 1763039557),
('jsso70i415ump9npj6nkfftmmt', 0x5f5f4c616d696e61737c613a353a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313736333033393435342e3232393033323b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a223838756f726c366c373574616e6b6b7234766137617431737673223b7d733a34323a224c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313736323931303739333b7d733a35333a224c616d696e61735f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313736323932303237323b7d733a34343a224c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313736323932303237323b7d7d72656469726563745f75726c7c733a33303a22687474703a2f2f6c6f63616c686f73742f6f6d656b612d732f61646d696e223b4c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a223564316236373937643662613731346266626261346262326265343664663964223b733a33323a226431373764626366393733366566343839393338333561343231663436366464223b7d733a343a2268617368223b733a36353a2264313737646263663937333665663438393933383335613432316634363664642d3564316236373937643662613731346266626261346262326265343664663964223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f417574687c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4f6d656b614d657373656e6765727c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a323a7b733a33323a223336376263623334346665316634373830343237323666663665313037623230223b733a33323a226565666233643063386463623533643164383839353766353730636230666362223b733a33323a223534316230623432663862313761343935323961623136633262333763613661223b733a33323a223332386363626263376230646133636561366437356436353131346638386434223b7d733a343a2268617368223b733a36353a2233323863636262633762306461336365613664373564363531313466383864342d3534316230623432663862313761343935323961623136633262333763613661223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a323a7b733a33323a223963303334626463366265356530623766643364366139363534373739663536223b733a33323a226331363639306564373764653562313639326132323864376333326539333638223b733a33323a226163346261353239626336343938316531626237373735633232346330303365223b733a33323a226564633164653962303236366163643862386132623466616532343330616435223b7d733a343a2268617368223b733a36353a2265646331646539623032363661636438623861326234666165323433306164352d6163346261353239626336343938316531626237373735633232346330303365223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d, 1763039454),
('vmm1od8jvr03gcatap5en8r7ni', 0x5f5f4c616d696e61737c613a333a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313736323234343731312e3634343236373b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a2270326a6d66613233357262746466326b6c6d686a3669626c6a75223b7d733a34323a224c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313736323238373738383b7d7d72656469726563745f75726c7c733a33303a22687474703a2f2f6c6f63616c686f73742f6f6d656b612d732f61646d696e223b4c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a223961343134383231633962646634353538373165393562393364633233353262223b733a33323a223236376334323064623662326563353133393062353731656137316233633530223b7d733a343a2268617368223b733a36353a2232363763343230646236623265633531333930623537316561373162336335302d3961343134383231633962646634353538373165393562393364633233353262223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f417574687c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4f6d656b614d657373656e6765727c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d, 1762244711);

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
('browse_defaults_admin_item_sets', 2, '{\"sort_by\":\"created\",\"sort_order\":\"desc\"}'),
('browse_defaults_admin_items', 2, '{\"sort_by\":\"created\",\"sort_order\":\"desc\"}'),
('browse_defaults_admin_media', 2, '{\"sort_by\":\"created\",\"sort_order\":\"desc\"}'),
('browse_defaults_admin_sites', 2, '{\"sort_by\":\"title\",\"sort_order\":\"asc\"}'),
('columns_admin_item_sets', 2, '[{\"type\":\"resource_class\",\"default\":null,\"header\":null},{\"type\":\"owner\",\"default\":null,\"header\":null},{\"type\":\"created\",\"default\":null,\"header\":null}]'),
('columns_admin_items', 2, '[{\"type\":\"resource_class\",\"default\":null,\"header\":null},{\"type\":\"owner\",\"default\":null,\"header\":null},{\"type\":\"created\",\"default\":null,\"header\":null}]'),
('columns_admin_media', 2, '[{\"type\":\"resource_class\",\"default\":null,\"header\":null},{\"type\":\"owner\",\"default\":null,\"header\":null},{\"type\":\"created\",\"default\":null,\"header\":null}]'),
('columns_admin_sites', 2, '[{\"type\":\"slug\",\"default\":null,\"header\":null},{\"type\":\"owner\",\"default\":null,\"header\":null},{\"type\":\"created\",\"default\":null,\"header\":null}]'),
('csv_import_automap_check_names_alone', 1, 'true'),
('csv_import_delimiter', 1, '\",\"'),
('csv_import_enclosure', 1, '\"\\\"\"'),
('csv_import_global_language', 1, '\"\"'),
('csv_import_identifier_property', 1, '\"internal_id\"'),
('csv_import_multivalue_separator', 1, '\",\"'),
('csv_import_rows_by_batch', 1, '20'),
('default_resource_template', 2, '\"\"'),
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
(151, 41, 252, 40, NULL, 'resource', NULL, NULL, NULL, 1);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `property`
--
ALTER TABLE `property`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=253;

--
-- AUTO_INCREMENT pour la table `resource`
--
ALTER TABLE `resource`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

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
