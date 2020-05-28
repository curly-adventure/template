-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mar. 05 mai 2020 à 13:03
-- Version du serveur :  8.0.18
-- Version de PHP :  7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `eblack`
--

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `name`, `description`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 0, 'Mode Homme', 'Tous les vêtements et accessoires pour hommes', NULL, '2020-05-04 17:42:28', '2020-05-04 17:42:28'),
(2, 0, 'Mode Femme', 'Tous les vêtements et accessoires pour femmes', NULL, '2020-05-04 17:42:28', '2020-05-04 17:42:28'),
(3, 0, 'Mode Enfant', 'Tous les vêtements et accessoires pour enfants', NULL, '2020-05-04 17:42:28', '2020-05-04 17:42:28'),
(4, 0, 'Electronique', 'Tous les gadgets informatiques, mobiles et autres gadgets électroniques', NULL, '2020-05-04 17:42:28', '2020-05-04 17:42:28'),
(5, 1, ' vetement', 'vetement pour hommes', NULL, '2020-05-04 17:42:28', '2020-05-04 17:42:28'),
(6, 2, ' vetement', 'vetement pour femmes', NULL, '2020-05-04 17:42:28', '2020-05-04 17:42:28'),
(7, 3, ' vetement', 'T-shirt pour enfant', NULL, '2020-05-04 17:42:28', '2020-05-04 17:42:28'),
(8, 1, 'chaussures', 'Tous les pantalons pour hommes', NULL, '2020-05-04 17:42:28', '2020-05-04 17:42:28'),
(9, 3, 'chaussures', 'Tous les pantalons pour enfants', NULL, '2020-05-04 17:42:28', '2020-05-04 17:42:28'),
(10, 2, 'chaussures', 'Tous les pantalons pour femmes', NULL, '2020-05-04 17:42:28', '2020-05-04 17:42:28'),
(11, 2, 'accessoires', 'accessoire de femmes', NULL, '2020-05-04 17:42:28', '2020-05-04 17:42:28'),
(12, 1, 'accessoires', 'accessoire d\'hommes', NULL, '2020-05-04 17:42:28', '2020-05-04 17:42:28'),
(13, 1, 'accessoires', 'accessoire d\'hommes', NULL, '2020-05-04 17:42:28', '2020-05-04 17:42:28'),
(14, 3, 'accessoires', 'accessoire pour enfants', NULL, '2020-05-04 17:42:28', '2020-05-04 17:42:28'),
(15, 4, 'accessoires', 'accessoire electroniques', NULL, '2020-05-04 17:42:28', '2020-05-04 17:42:28'),
(16, 4, 'audios', 'casque audio et autres', NULL, '2020-05-04 17:42:28', '2020-05-04 17:42:28'),
(17, 4, 'tel & pc', 'accessoire de telefonne et pc', NULL, '2020-05-04 17:42:28', '2020-05-04 17:42:28');

-- --------------------------------------------------------

--
-- Structure de la table `category_product`
--

DROP TABLE IF EXISTS `category_product`;
CREATE TABLE IF NOT EXISTS `category_product` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `category_product_category_id_foreign` (`category_id`),
  KEY `category_product_product_id_foreign` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `category_product`
--

INSERT INTO `category_product` (`id`, `category_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 8, 1, NULL, NULL),
(2, 10, 1, NULL, NULL),
(3, 2, 2, NULL, NULL),
(4, 10, 2, NULL, NULL),
(5, 4, 3, NULL, NULL),
(6, 17, 3, NULL, NULL),
(7, 4, 4, NULL, NULL),
(8, 11, 4, NULL, NULL),
(9, 1, 5, NULL, NULL),
(10, 5, 5, NULL, NULL),
(11, 1, 6, NULL, NULL),
(12, 2, 6, NULL, NULL),
(13, 3, 6, NULL, NULL),
(14, 5, 6, NULL, NULL),
(15, 6, 6, NULL, NULL),
(16, 7, 6, NULL, NULL),
(17, 1, 7, NULL, NULL),
(18, 5, 7, NULL, NULL),
(19, 1, 8, NULL, NULL),
(20, 2, 8, NULL, NULL),
(21, 3, 8, NULL, NULL),
(22, 5, 8, NULL, NULL),
(23, 6, 8, NULL, NULL),
(24, 7, 8, NULL, NULL),
(25, 1, 9, NULL, NULL),
(26, 12, 9, NULL, NULL),
(27, 2, 10, NULL, NULL),
(28, 6, 10, NULL, NULL),
(29, 2, 11, NULL, NULL),
(30, 6, 11, NULL, NULL),
(31, 1, 12, NULL, NULL),
(32, 2, 12, NULL, NULL),
(33, 3, 12, NULL, NULL),
(34, 8, 12, NULL, NULL),
(35, 9, 12, NULL, NULL),
(36, 10, 12, NULL, NULL),
(37, 3, 13, NULL, NULL),
(38, 13, 13, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8_unicode_ci NOT NULL,
  `queue` text COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(5, '2014_10_12_000000_create_users_table', 1),
(6, '2019_08_19_000000_create_failed_jobs_table', 1),
(7, '2020_05_02_141656_create_products_table', 1),
(8, '2020_05_02_141750_create_categories_table', 1),
(9, '2020_05_03_110122_create_category_product_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `fournisseur_id` int(11) NOT NULL,
  `p_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `p_code` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `p_color` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `p_desc` text COLLATE utf8_unicode_ci NOT NULL,
  `prix` double(8,2) NOT NULL,
  `image` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `products`
--

INSERT INTO `products` (`id`, `fournisseur_id`, `p_name`, `p_code`, `p_color`, `p_desc`, `prix`, `image`, `created_at`, `updated_at`) VALUES
(1, 0, 'basket bleu', 'b-bleu-123', 'bleu', 'description basket', 13000.00, 'b_bleu.jpg', '2020-05-04 17:42:28', '2020-05-04 17:42:28'),
(2, 0, 'escarpin rouge', 'esca-0011', 'rouge', 'chaussure escarpin pour femme toutes taille', 5000.00, 'escarpin-rouge.jpg', '2020-05-04 17:42:28', '2020-05-04 17:42:28'),
(3, 0, 'iphone 11', 'esca-0011', 'bleu', 'iphone 11', 105000.00, 'iphone.jpg', '2020-05-04 17:42:28', '2020-05-04 17:42:28'),
(4, 0, 'montre feminine', 'femi-0011', 'blanc', 'montre blanche simple et sympa pour femme', 15000.00, 'montre-feminine.jpg', '2020-05-04 17:42:28', '2020-05-04 17:42:28'),
(5, 0, 'veste nike noir', 'vste-nike-0011', 'blanc-noir', 'veste choco nike blanc noir', 15000.00, 'veste-nike.jpeg', '2020-05-04 17:42:28', '2020-05-04 17:42:28'),
(6, 0, 'culotte jeans', 'cl-85011', 'bleu', 'culotte jean pour homme femme et enfant', 15000.00, 'culotte.jpg', '2020-05-04 17:42:28', '2020-05-04 17:42:28'),
(7, 0, 'veste noir homme', 'vste-85011', 'noir', 'veste noir pour les hommes d\'affaire', 18550.00, 'veste.jpg', '2020-05-04 17:42:28', '2020-05-04 17:42:28'),
(8, 0, 'T-shirt noir ', 'tsh-8711', 'noir', 'Tshirt tout noir frai bo gosse pour enfant femme et homme', 18550.00, 'tshirt-noir.png', '2020-05-04 17:42:28', '2020-05-04 17:42:28'),
(9, 0, 'montre argenter', 'mtr-1085o', 'noir', 'montre argenter pour hommes d\'affaire', 18550.00, 'montre-argenter.jpg', '2020-05-04 17:42:28', '2020-05-04 17:42:28'),
(10, 0, 'tricot pour femmme avec dentel  ', 'tgf5-11', 'jaune', 'tricot pour femme avec dentel ', 18550.00, 'tricot.jpg', '2020-05-04 17:42:28', '2020-05-04 17:42:28'),
(11, 0, 'chemise blanche femmme avec bas arrondi  ', 'chmse-arron-4515', 'jaune', 'chemise assez souple pour femme pour les sortie, le travail et autre', 1550.00, 'chemise19.jpg', '2020-05-04 17:42:28', '2020-05-04 17:42:28'),
(12, 0, 'chaussure blanche', 'ch-7854', 'blanc', 'baket blanche pour enfant, homme et femme ', 18550.00, 'chaussure-blanche.jpg', '2020-05-04 17:42:28', '2020-05-04 17:42:28'),
(13, 0, 'montre noir pour enfant', 'mtre-4515', 'noire', 'montre noir pour enfant', 15250.00, 'montre.jpg', '2020-05-04 17:42:28', '2020-05-04 17:42:28');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
