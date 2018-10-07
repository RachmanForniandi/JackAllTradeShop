-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 07 Okt 2018 pada 07.08
-- Versi server: 10.1.31-MariaDB
-- Versi PHP: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jat_db`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `api_token` varchar(220) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `api_token`, `is_admin`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@admin.com', '$2y$10$QyQcro7pbZI5jOuu4HDQRuO0X9WGUDjC.cKGBkxmNn1yM6D6sXx.C', 'YkX8NUyXMcHLcvoUYddiIElB', 1, 'dyiiW90HvYLMdEdS', NULL, NULL),
(2, 'natalia29', 'xsantoso@example.net', '$2y$10$zo.R6PgyO69swBG77iDTd.VLboP1TO3kLww/Hb6Sb1fglZkpgC9.e', 'wlq65prdD297MVVWRjgwyWKS', 0, 'rCjIMeATtiUJFDHq', '2018-10-06 21:40:20', '2018-10-06 21:40:20'),
(3, 'eva.palastri', 'wadi49@example.org', '$2y$10$yhCDvG1icF5YpCGDywbbPudmWE5wicBepKOyDxdEHCqpYBU4TlehK', 'ZaTCQm9MlITETkKV4oWl2T47', 0, 'dKZjMbZp50i3OPt6', '2018-10-06 21:40:20', '2018-10-06 21:40:20'),
(4, 'aditya08', 'cdongoran@example.org', '$2y$10$1y90aDVufXxfys8Rly0RS.DN2E.u/iN6EM9YAahimYL5j1NdbD/BS', 'XkIsugaepFuoQ2GNkxq3uYoX', 0, 'KbeTxWWusrYrG8T5', '2018-10-06 21:40:20', '2018-10-06 21:40:20'),
(5, 'suartini.prasetya', 'dewi06@example.com', '$2y$10$CCQ1Rkcl9l9ZrIFXumTeiuuOLGVZow0DwMOY5zgRGUN67EOgyQzxu', 'HhMvY42ybQqixrsYWwY26c5q', 0, 'uWFb4StEfH0ehYCA', '2018-10-06 21:40:20', '2018-10-06 21:40:20'),
(6, 'laswi.gunawan', 'ika.rahmawati@example.net', '$2y$10$OeSF/5CXCq0dN41Iq7Gn2uyEt8CIE56FunJCFF1c9SLLs6jSf5vOW', 'z1gVCi5ml6RRVE8NZgitYq0E', 0, 'cLfsbSPJRh1hQLOX', '2018-10-06 21:40:21', '2018-10-06 21:40:21'),
(7, 'jono38', 'utama09@example.net', '$2y$10$V2RCc2sPGi4mH3d.ocgp3Of0cHxEilReLQF3IZkUjnD9jMgn9LP6e', 'yfDyEJFAp1qI5cVKSL8BiGrO', 0, 'Ch2A7WRLOC0UcVQ5', '2018-10-06 21:40:21', '2018-10-06 21:40:21'),
(8, 'ira.permata', 'rahayu.budiman@example.org', '$2y$10$lNBAAG.6vYPPfxeiKNdYh.ChlyTenaMRvn2JrGfMKdoEe6TwiXRWG', 'gtpqacmkSBViV9o8u8PRnP11', 0, 'wm9u6fL3OvOEooV5', '2018-10-06 21:40:21', '2018-10-06 21:40:21'),
(9, 'elisa.wastuti', 'marpaung.jarwadi@example.com', '$2y$10$.7DXo7e9N6G82D8FxieOmOIKGbogdKntoJOT1NITS8wq.KhRUNirm', 'Z9dSVIMnoqHGBUdWwNCZpwfn', 0, 'FGTxcVB46jctnsUE', '2018-10-06 21:40:21', '2018-10-06 21:40:21'),
(10, 'sihombing.lega', 'mardhiyah.fitriani@example.org', '$2y$10$.F6i88LDrxPhDfeQrFghbO5ED04cFWMcefavkH4cJPVlOLr2cUYmu', 'kUQ6J1Ty6fueiZ61EZ6JhUG6', 0, 'CJbnK1ud8kbYfTBM', '2018-10-06 21:40:21', '2018-10-06 21:40:21'),
(11, 'rina.tarihoran', 'rahmi.pudjiastuti@example.net', '$2y$10$xrNdIUHS0yAY1W8q04clOuBZssRBASdLkcuWSQakhHR/N0mbF1gC.', 'nJwqXKq9fjbzsozt6I4l2PGf', 0, 'djDiRACXfejUsib0', '2018-10-06 21:40:21', '2018-10-06 21:40:21'),
(12, 'ladriansyah', 'puji16@example.net', '$2y$10$8g.vI8JImT3w9U2BbWQ4JOdvNBVejRUvPdv2D3KFAiY9fYlx2SwHi', 'YN7FXRiUmLsUkbUf7wT61EA6', 0, 'aVCXU4REWkowqLzl', '2018-10-06 21:40:21', '2018-10-06 21:40:21'),
(13, 'endah.anggraini', 'susamah@example.org', '$2y$10$D8XJXNy4/XVtv7ULv0glseuZ3ophSAmejcjry/oCz.in/K57larda', 'lQCSVAu91cX6pyJvjsugDLM8', 0, '40abpfPmuV058qQP', '2018-10-06 21:40:21', '2018-10-06 21:40:21'),
(14, 'yuni47', 'qwijayanti@example.org', '$2y$10$lSlpk29ZSdfbi9q.YYTvBO7BcnPvjX0LaBilSkT.mcDbI6qre42Ei', 'kwNYUzWbpxSvYMDuCloOscqa', 0, 'e2zxlOp3RUUhiLjI', '2018-10-06 21:40:21', '2018-10-06 21:40:21'),
(15, 'panji98', 'pandu93@example.net', '$2y$10$agPe8pOUL6Gb8w9L3/OHIOrtOzu7RKDYeOFgMc./wYrywh1BRLgGG', 'Jia5a2ZIHw9SO1TiDiKU0n5A', 0, '7ZjS49q3v4lFis70', '2018-10-06 21:40:21', '2018-10-06 21:40:21'),
(16, 'dewi.latupono', 'permata.maria@example.org', '$2y$10$L39lGmHJ2aS/NSS9EdYMWeKd1920gNC6rEfZ68hakS7lgO2VmwLfS', 'yHrmuAnNE7eLPpmyjTCsrbbG', 0, 'K6YePwtygEaGRaMO', '2018-10-06 21:40:21', '2018-10-06 21:40:21'),
(17, 'nwaluyo', 'uputra@example.com', '$2y$10$mdO6IT8bxwoarLapiNaIIu0FoV.Byh/vkOG8nOrHlT2j33mpmUWpm', 'qtp1KBuJBqSLED7LGlLfYzJi', 0, 'OJymOEzPGCfyRTRv', '2018-10-06 21:40:21', '2018-10-06 21:40:21'),
(18, 'kayla.firgantoro', 'mursita40@example.net', '$2y$10$U3MOJEGBOax3lKPHCVkIs.Onvo/dTxIkkpKOAr8kKm58shEtUk3Ia', 'H0xxoEGfglL9iHup9UISUD4k', 0, 'jT9R6p7DHMBJoVj2', '2018-10-06 21:40:21', '2018-10-06 21:40:21'),
(19, 'winarno.vivi', 'jayadi.marpaung@example.org', '$2y$10$pJJ3A1PGFj15Ndm6DKBejeYnY7o71DGnH32QRHtPHrnMZVoSM/qqS', 'Gmciy0UQGN1hPGW8Xmdji0qE', 0, 'rsQJYVSlGFUB9JES', '2018-10-06 21:40:21', '2018-10-06 21:40:21'),
(20, 'wadi.widiastuti', 'tina.widodo@example.com', '$2y$10$9iZ1nZnv6AWfs99QWJrKIuMr9DYMMUDgPtbCWSPHdpwQuqgUFeUk.', '9ZtHShEzAWP3s8aK5Ml3FfNN', 0, 'BV8yIGu0LOZfG0DK', '2018-10-06 21:40:21', '2018-10-06 21:40:21'),
(21, 'kawaya66', 'paris45@example.net', '$2y$10$QJHBbSBN1yCxx6HGaXLNfu4tcdH.cmcPo96uMbn8JKNUEgersdCu2', 'iC31RQ7hia9JqeAugndZkU1a', 0, 'jMi0tZvq7y9uvpt7', '2018-10-06 21:40:21', '2018-10-06 21:40:21'),
(22, 'puti16', 'kunthara65@example.net', '$2y$10$VnNM5BNa5fYP/ojSfJl7kuTfKPmO8/YNIeagYzI0ELStd5Bbc2QMO', 'KZs3kJ0HhD9CGWJ0hIn50OFP', 0, '5DXioGxMYi2wwXPk', '2018-10-06 21:40:21', '2018-10-06 21:40:21'),
(23, 'nyulianti', 'lukita14@example.net', '$2y$10$fAFtHXefzBJMK8wHFAFxVehZQXGv54Exr/YcCOjCgwwAcUzU1.mxO', 'S4yS3ehIYgff9Arz3y28NJbF', 0, 'DlJArOuDKts79yT1', '2018-10-06 21:40:21', '2018-10-06 21:40:21'),
(24, 'hartati.hari', 'olaksmiwati@example.net', '$2y$10$9YpwIcqN/UctgN5jMircVuUnzfN1xDVsJqm9VaDUyyvg2hzxwQznm', 'knwYAnma1nyI9HyUfejrAZDG', 0, 'MwUe3qiHsge1EdL1', '2018-10-06 21:40:21', '2018-10-06 21:40:21'),
(25, 'cengkir.suryatmi', 'wpertiwi@example.org', '$2y$10$exLsLE6K9R4vg/et3OxBSuIivBlYsqQZOp.t0fR9wXTGo22MtUDd2', 'Gz6a4zqyJGquLq3leFcCSuXH', 0, 'PAb9npvKsSZsTFua', '2018-10-06 21:40:21', '2018-10-06 21:40:21'),
(26, 'usyi09', 'rnababan@example.org', '$2y$10$F0Zoy9VvMvUncMt/WitHzOF6zj.F.duY9d9Vq6w97oyZdTHe066Je', 'G9chJdsFTvJiPSkGLcJV2bKT', 0, '2PA21LgxiZGoeRkD', '2018-10-06 21:40:21', '2018-10-06 21:40:21'),
(27, 'jumari.usamah', 'bramadan@example.net', '$2y$10$NVesNc6rld658Hp9EAanXegXoVDLMg10RmEZF3ANoK9mhWESp7xMS', '2GRi9WY6sYkALYBVQX7aPvR9', 0, 'jnJhdf9nu3bN6Kvy', '2018-10-06 21:40:21', '2018-10-06 21:40:21'),
(28, 'putri.hariyah', 'gunawan.faizah@example.org', '$2y$10$dimM8wfRfDqAv/TXWpm8X.ErgeHR0x.J6JtENHnIQPfHT5GqVGnpC', 'Ex8ZJn0gjvwia4AAObgU1SKG', 0, 'ScSHUBm9WN6kofr7', '2018-10-06 21:40:21', '2018-10-06 21:40:21'),
(29, 'novi.nurdiyanti', 'baktiadi.mayasari@example.org', '$2y$10$UVjt3PnvAAfg7f.hviC24uujJ9zozan7C1vZMmJVq5LJ.N9iHKJEO', 'THRPir7FgXFN9kM12qmaRyHU', 0, '7QR9Q3qaA483j9TF', '2018-10-06 21:40:21', '2018-10-06 21:40:21'),
(30, 'iriana.yuliarti', 'jmaryati@example.org', '$2y$10$UX14MzmYRKvw.nSQ80aqieUsOuzKqL/fmkmxaq8fYwvNRLYHGVZDC', 'uopni7RomqL2NlSlZxPdXNbn', 0, 'XPEJJOlFOSxnSXRB', '2018-10-06 21:40:22', '2018-10-06 21:40:22'),
(31, 'abyasa.tarihoran', 'prabowo.lanang@example.net', '$2y$10$3wSnd2CQet3BhX6cLvucxeC5zSj3ZIdMALpUZfe09gTEP.358jSyS', 'JfgocdXVsHd1k6CV50bhqaFM', 0, 'pQFHaKCZQVWmFRA1', '2018-10-06 21:40:22', '2018-10-06 21:40:22'),
(32, 'ivan62', 'yance.yolanda@example.net', '$2y$10$NBNGj70no.TRJYYweB9mDeymBJAaCD/C66iq7qjM5X7WSDdNB/9I2', 'P5hU2VwAlNgY0UvJVdmBCR2X', 0, 'QX6J237DYpmFAuPB', '2018-10-06 21:40:22', '2018-10-06 21:40:22'),
(33, 'xwasita', 'ajiman55@example.net', '$2y$10$ieNX.umd3QqSE5cP30x3h.jajTpQvt86R7LnxDt9s7pM0FdmNPebG', 'Y7nqN9lPLsvzsTIylRuOEnOv', 0, 'qLQwXkI0O7xz6xYq', '2018-10-06 21:40:22', '2018-10-06 21:40:22'),
(34, 'suartini.diah', 'jabal25@example.org', '$2y$10$UWkDx3t0idlYzpmJaT7L6euhUwilPS2YBYN6LNoc3y3GM4ZYGUxU2', 'UsRhUmQsQP2YDD2Ntz69VuZ9', 0, 'PpHgQNcvORIoSuzy', '2018-10-06 21:40:22', '2018-10-06 21:40:22'),
(35, 'mariadi68', 'pratama.puti@example.com', '$2y$10$0ZdFa9tJCRcsQouhUV/.OOOujHyQ7m7AoJNgAMCsJh1SWAC84Bk6i', 'yyE05naTApxKqPntoWpAXVPU', 0, 'EBXRkv8puHVuFeIh', '2018-10-06 21:40:22', '2018-10-06 21:40:22'),
(36, 'usamah.kawaya', 'hamima.yulianti@example.com', '$2y$10$EW5/QNiIrrf29I45czSci./RaYwLDw3mnF9IatbvJzJSYJep/XDa6', 'jO07vaiAOrfevlq1h3fYb6K2', 0, 'zSqEtSpaq9gQ3HOE', '2018-10-06 21:40:22', '2018-10-06 21:40:22'),
(37, 'wibisono.usman', 'firmansyah.aurora@example.net', '$2y$10$S6XQdsYRMsebyykjlDU7/.p/9ow4ivGjVhCzyWTS/N0vyfY2.ALCq', 'aJQSP2U1zKlG4U06vASRYOj1', 0, 'VkE2IzTNZf172aDJ', '2018-10-06 21:40:22', '2018-10-06 21:40:22'),
(38, 'ssaputra', 'mandasari.pangeran@example.net', '$2y$10$RmH6GHXfKfj/EJrVkXOlwuRcNOHNLej44dajqEctb3v4jUjVvU676', '2YBnoPPOfqZytVBswIalRcRC', 0, 'asAET2ODfCxGtQn9', '2018-10-06 21:40:22', '2018-10-06 21:40:22'),
(39, 'wnuraini', 'hartati.yunita@example.com', '$2y$10$rDvtKbpLAAfknQ1b/QyTA.0Zje4YGzhjf3ckoNtJLA6KzoYwChuZm', 'ya4oQDyLOaipJUlCKpGzq2Sb', 0, 'Af3yXXuaCPrGP0TR', '2018-10-06 21:40:22', '2018-10-06 21:40:22'),
(40, 'rahayu.maya', 'nainggolan.budi@example.net', '$2y$10$Uyq6OHR8zaSG733sT3aufedbGskT35rUUbEtgemyplIa54bV7pJP6', 'BazfYZvHnzXjO2Fx7vzY00Tf', 0, 'H1YfATwNdgAT0eVa', '2018-10-06 21:40:22', '2018-10-06 21:40:22'),
(41, 'hastuti.jarwadi', 'tira19@example.com', '$2y$10$R6pvSRy6eSCrmRTMGHeCuuE/sP5eVmJYWXMmaz4Ld98I/q36VJX3q', '6AZ6cFP7wE0UvahBj5R0IfYL', 0, 'nQaxt8gAs339nYGE', '2018-10-06 21:40:22', '2018-10-06 21:40:22'),
(42, 'luluh.hutapea', 'viman39@example.org', '$2y$10$Edru33bdP3Vt0wtggZpbruua2TwYOAOMw4z7xbMsl39D7WpbpmXW6', 'Oftb9Ko0GbsWeqAAkfF1b9lC', 0, 'uo7uHYBQINTAcXP5', '2018-10-06 21:40:22', '2018-10-06 21:40:22'),
(43, 'hassanah.jarwi', 'kusumo.uda@example.net', '$2y$10$/Pn6lh7eclNj1kBNvxJJEO1.kI3mqLSfUYdt7T0ZQHUSGfclSJ65e', 'Dzk6J44OefEn4PPC6V6MC8CM', 0, '58jE1sOBpqQyrfwg', '2018-10-06 21:40:22', '2018-10-06 21:40:22'),
(44, 'viman85', 'nurdiyanti.hani@example.com', '$2y$10$eZUIrzpkLOmy52VfRVNMcuXoVFrIkCXSCrynSlBg8jYIzVBkInqOa', 'VwitqJba9aULSh4Dy8b71elG', 0, 'Q9g1W8JGVbr86ZCu', '2018-10-06 21:40:22', '2018-10-06 21:40:22'),
(45, 'capa21', 'taufik72@example.org', '$2y$10$nm.f8CU0mWPl3oxle3XmOenZy3USNHq2pDv07d/Vfg3Y2nSDCfw/a', 'b88xiBb3HAyE0dw7SrY0jMtk', 0, 'cBezPF8P0S2cXGJD', '2018-10-06 21:40:22', '2018-10-06 21:40:22'),
(46, 'vtarihoran', 'salahudin.abyasa@example.org', '$2y$10$r16d6mFWmbdDsndunso89e4qGV6oTgvtBH7zsFq4i4xRJVnr/PMMG', 'yYYo4MNbNHSFAUAGkczgNDUI', 0, 'I93KR5Wx0OFljFkf', '2018-10-06 21:40:22', '2018-10-06 21:40:22'),
(47, 'putri.anggriawan', 'pangestu.simon@example.org', '$2y$10$mS9Ut3BFoz98dT9uTGc/1OLXEDCPrXVwZColGZS2dJpVTkAHvmHFK', 'EMcgAKIabxCEdRFQP0hhfwqF', 0, 'OL1cbMQcElgeRAyB', '2018-10-06 21:40:22', '2018-10-06 21:40:22'),
(48, 'radika.pertiwi', 'yono.wijaya@example.org', '$2y$10$zq4ruC0oHD9.Gg6IJJai9usjXEZ7T57URjtFhNJIaa2TCcqzBVGEK', 's2rxGwKzx3tAgN1HjEb7acLq', 0, 'K7S63t9vtgTuQlrD', '2018-10-06 21:40:22', '2018-10-06 21:40:22'),
(49, 'utama.ayu', 'rajata.laila@example.com', '$2y$10$G3Y08uH6LYc4OXJSWbwsyOIjj0lAu.wRTVqtUpC.VvLE8kVAxL78e', 'W5dAtynjG9l941SB49AH6imf', 0, 'CzDmw6M9ko6ONRPT', '2018-10-06 21:40:22', '2018-10-06 21:40:22'),
(50, 'saefullah.rama', 'zulfa.andriani@example.net', '$2y$10$PLUg6XkQAAbEhtEbjR6G2OFPRyyaHSy/WKXrW5b0cglF/NMhQcog6', 'GoP2ZwhxWMjf9ao6Q31mVNVH', 0, 'XrJmZIEAdP0OOevG', '2018-10-06 21:40:22', '2018-10-06 21:40:22'),
(51, 'luwes.thamrin', 'latupono.eko@example.com', '$2y$10$NVDcFxYlrBfDZb5vUOXuGu8UATxYpz9IeJ2letDTxOwZiQeaz5KSq', 'nPwVON5Zm7l3uk8ofC2xOeVq', 0, 'HFk09Yw6dcJHhdse', '2018-10-06 21:40:22', '2018-10-06 21:40:22'),
(52, 'ilsa32', 'unjani04@example.com', '$2y$10$sr73kg7FSvXAPa7YEfWFc.feFqwujYw3xWEUV2/AY.RZZmQiHGOz2', 'gjLWpCflG8rJzxNDucSNK6PO', 0, 'rXqhaIbQ4FmmVy3T', '2018-10-06 21:40:22', '2018-10-06 21:40:22'),
(53, 'kairav26', 'titin.dongoran@example.org', '$2y$10$XhlP/uVKjY/Mio1zjRlgK.WiJmPSgxsnqcqYNqz1F/uFJdfELHD1O', 'AJ414v9CFcqe9n1WF6Hgzehx', 0, 'kQvMEqkkEsrUwkYX', '2018-10-06 21:40:22', '2018-10-06 21:40:22'),
(54, 'laila29', 'fujiati.pangeran@example.com', '$2y$10$40wPqKNbHPyHPGI/OZ8Ak.vnQ9rflThqrZSxivBwF2qZgxKc4Pav6', 'Ym0xa5ZI2puPd5gZCU1bpP4f', 0, 'GwuQCQ9zscowEnqK', '2018-10-06 21:40:22', '2018-10-06 21:40:22'),
(55, 'rahimah.puji', 'paulin12@example.org', '$2y$10$zGpWlk6E6rLNN0FKB1wxI.D7uRt4.QyJ5W9ukjcGWKdHnDs/gFswe', 'aF1hMH6q3FBn9t8lL21vHzM2', 0, '4xT7ggh9A2YIC8Hp', '2018-10-06 21:40:23', '2018-10-06 21:40:23'),
(56, 'padmi.hardiansyah', 'smangunsong@example.net', '$2y$10$BKSnyyTH6WKWG8f9j0sTTexL7c5/tuKwG64SIGcKChcg3d.aDU8JC', 'EvqJXTuimOXkXc1Uq12KiIxA', 0, 'r2VPCa9z3G9eaCdM', '2018-10-06 21:40:23', '2018-10-06 21:40:23'),
(57, 'azalea51', 'samosir.maimunah@example.org', '$2y$10$9pkuQUWyPb7aZFkcmivQfOEEr0aPaKyjF6nm7..TrjMTbr.CZA/Oe', 'UYE5qngM8PjGkwTNEhpz8AiD', 0, '2fE4kKQeTTeMkkKp', '2018-10-06 21:40:23', '2018-10-06 21:40:23'),
(58, 'bella.pradipta', 'kezia.pratama@example.net', '$2y$10$XYcW6FTLwL.I7EiOMPaYAOQus4BrKctCnkJoRs7efinDI6O0S7ifS', '8gQZNJp0pchoex7zytJaLrpw', 0, 'pwOIetHPx23MmtjP', '2018-10-06 21:40:23', '2018-10-06 21:40:23'),
(59, 'zsaptono', 'puspasari.bambang@example.org', '$2y$10$LKD5Y3xmldJ5HBz2N5Ren.LipWsRVf2hpcsNg9ZYOX3dZPcIHi1Sq', 'hNo9DvjYazRqTt3eJmh6HoKF', 0, 'e4Wcg5LotlmHdpQj', '2018-10-06 21:40:23', '2018-10-06 21:40:23'),
(60, 'bahuraksa.prabowo', 'erahayu@example.org', '$2y$10$66KBwdAatnERtSMUcClM9.2i9UwMzstWWmfXjgSaDbc7wdsy1Z2xe', 'ajCtqiCfqC1NDgi82hDfg6dM', 0, 'XK5w2P13CNB6pC53', '2018-10-06 21:40:23', '2018-10-06 21:40:23'),
(61, 'zizi77', 'pmarpaung@example.org', '$2y$10$19O6GLtEgJsoJHQHZQC8DuSTCXNx4FBHuwrOh5paX2j33AVxJxOua', 'mwjWn8yIrE3jvONMdfSZ2q6l', 0, 'ya0mhmToqTcvMkDo', '2018-10-06 21:40:23', '2018-10-06 21:40:23');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
