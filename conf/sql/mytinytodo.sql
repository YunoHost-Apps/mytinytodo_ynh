-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : dim. 23 oct. 2022 à 09:54
-- Version du serveur : 10.5.15-MariaDB-0+deb11u1
-- Version de PHP : 7.4.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `mytinytodo`
--

-- --------------------------------------------------------

--
-- Structure de la table `lists`
--

CREATE TABLE `lists` (
  `id` int(10) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ow` int(11) NOT NULL DEFAULT 0,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `d_created` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `d_edited` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `sorting` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `published` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `taskview` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `extra` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `lists`
--

INSERT INTO `lists` (`id`, `uuid`, `ow`, `name`, `d_created`, `d_edited`, `sorting`, `published`, `taskview`, `extra`) VALUES
(1, 'efb9dc53-2b93-46e7-9b26-bee35291b52e', 0, 'Todo', 1666511484, 0, 0, 0, 1, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `mtt_lists`
--

CREATE TABLE `mtt_lists` (
  `id` int(10) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL DEFAULT '',
  `ow` int(11) NOT NULL DEFAULT 0,
  `name` varchar(50) NOT NULL DEFAULT '',
  `d_created` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `d_edited` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `sorting` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `published` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `taskview` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `mtt_lists`
--

INSERT INTO `mtt_lists` (`id`, `uuid`, `ow`, `name`, `d_created`, `d_edited`, `sorting`, `published`, `taskview`) VALUES
(1, 'ad9ad4a6-032a-4e44-979f-b7feebc73c1a', 0, 'Todo', 1490075778, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `mtt_tag2task`
--

CREATE TABLE `mtt_tag2task` (
  `tag_id` int(10) UNSIGNED NOT NULL,
  `task_id` int(10) UNSIGNED NOT NULL,
  `list_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `mtt_tags`
--

CREATE TABLE `mtt_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `mtt_todolist`
--

CREATE TABLE `mtt_todolist` (
  `id` int(10) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL DEFAULT '',
  `list_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `d_created` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `d_completed` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `d_edited` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `compl` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(250) NOT NULL,
  `note` text DEFAULT NULL,
  `prio` tinyint(4) NOT NULL DEFAULT 0,
  `ow` int(11) NOT NULL DEFAULT 0,
  `tags` varchar(600) NOT NULL DEFAULT '',
  `tags_ids` varchar(250) NOT NULL DEFAULT '',
  `duedate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `data` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_access` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `expires` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `settings`
--

CREATE TABLE `settings` (
  `param_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `param_value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `settings`
--

INSERT INTO `settings` (`param_key`, `param_value`) VALUES
('config.json', '{\n    \"url\": \"\",\n    \"mtt_url\": \"\",\n    \"title\": \"\",\n    \"lang\": \"en\",\n    \"password\": \"\",\n    \"smartsyntax\": 1,\n    \"timezone\": \"UTC\",\n    \"autotag\": 1,\n    \"duedateformat\": 1,\n    \"firstdayofweek\": 1,\n    \"clock\": 24,\n    \"dateformat\": \"j M Y\",\n    \"dateformat2\": \"n\\/j\\/y\",\n    \"dateformatshort\": \"j M\",\n    \"showdate\": 0,\n    \"showtime\": 0,\n    \"markup\": \"markdown\",\n    \"appearance\": \"system\",\n    \"extensions\": []\n}');

-- --------------------------------------------------------

--
-- Structure de la table `tag2task`
--

CREATE TABLE `tag2task` (
  `tag_id` int(10) UNSIGNED NOT NULL,
  `task_id` int(10) UNSIGNED NOT NULL,
  `list_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `todolist`
--

CREATE TABLE `todolist` (
  `id` int(10) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `list_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `d_created` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `d_completed` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `d_edited` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `compl` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prio` tinyint(4) NOT NULL DEFAULT 0,
  `ow` int(11) NOT NULL DEFAULT 0,
  `tags` varchar(600) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tags_ids` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `duedate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `lists`
--
ALTER TABLE `lists`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uuid` (`uuid`);

--
-- Index pour la table `mtt_lists`
--
ALTER TABLE `mtt_lists`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uuid` (`uuid`);

--
-- Index pour la table `mtt_tag2task`
--
ALTER TABLE `mtt_tag2task`
  ADD KEY `tag_id` (`tag_id`),
  ADD KEY `task_id` (`task_id`),
  ADD KEY `list_id` (`list_id`);

--
-- Index pour la table `mtt_tags`
--
ALTER TABLE `mtt_tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Index pour la table `mtt_todolist`
--
ALTER TABLE `mtt_todolist`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uuid` (`uuid`),
  ADD KEY `list_id` (`list_id`);

--
-- Index pour la table `sessions`
--
ALTER TABLE `sessions`
  ADD UNIQUE KEY `id` (`id`);

--
-- Index pour la table `settings`
--
ALTER TABLE `settings`
  ADD UNIQUE KEY `param_key` (`param_key`);

--
-- Index pour la table `tag2task`
--
ALTER TABLE `tag2task`
  ADD KEY `tag_id` (`tag_id`),
  ADD KEY `task_id` (`task_id`),
  ADD KEY `list_id` (`list_id`);

--
-- Index pour la table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Index pour la table `todolist`
--
ALTER TABLE `todolist`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uuid` (`uuid`),
  ADD KEY `list_id` (`list_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `lists`
--
ALTER TABLE `lists`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `mtt_lists`
--
ALTER TABLE `mtt_lists`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `mtt_tags`
--
ALTER TABLE `mtt_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `mtt_todolist`
--
ALTER TABLE `mtt_todolist`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `todolist`
--
ALTER TABLE `todolist`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
