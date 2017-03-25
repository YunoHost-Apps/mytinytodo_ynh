-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Client :  localhost
-- Généré le :  Mar 21 Mars 2017 à 06:57
-- Version du serveur :  10.0.30-MariaDB-0+deb8u1
-- Version de PHP :  5.6.30-0+deb8u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `mytinytodo`
--

-- --------------------------------------------------------

--
-- Structure de la table `mtt_lists`
--

CREATE TABLE `mtt_lists` (
  `id` int(10) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL DEFAULT '',
  `ow` int(11) NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `d_created` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `d_edited` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `sorting` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `published` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `taskview` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `mtt_lists`
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
  `list_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `d_created` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `d_completed` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `d_edited` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `compl` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL,
  `note` text,
  `prio` tinyint(4) NOT NULL DEFAULT '0',
  `ow` int(11) NOT NULL DEFAULT '0',
  `tags` varchar(600) NOT NULL DEFAULT '',
  `tags_ids` varchar(250) NOT NULL DEFAULT '',
  `duedate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Index pour les tables exportées
--

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
-- AUTO_INCREMENT pour les tables exportées
--

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
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
