-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 07 Jun 2020 pada 19.13
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpus_laravel`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `authors`
--

CREATE TABLE `authors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `authors`
--

INSERT INTO `authors` (`id`, `name`) VALUES
(1, 'Georgiana Dare'),
(3, 'Federico Klein DDS'),
(4, 'Gabe Mayer'),
(5, 'Elton Kub'),
(6, 'Zoe Dach'),
(7, 'Otis Smitham'),
(8, 'Mr. Stan Olson Sr.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `author_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cover` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `books`
--

INSERT INTO `books` (`id`, `author_id`, `title`, `description`, `cover`, `qty`, `created_at`, `updated_at`) VALUES
(6, 3, 'Totam doloribus molestias enim.', 'Molestiae suscipit eveniet labore velit suscipit quia et fugit doloribus asperiores modi id at doloremque voluptates ex maxime harum explicabo eligendi magni quae maxime hic necessitatibus nulla odio harum veniam repellendus in repellendus molestiae deleniti sequi nisi itaque ut eligendi iusto necessitatibus rerum doloremque officiis quia mollitia culpa dolores quis veniam perspiciatis non reprehenderit iure.', 'https://picsum.photos/id/14/200/300', '8', '2020-06-03 20:56:52', '2020-06-07 07:18:26'),
(7, 4, 'Sed esse pariatur blanditiis et.', 'Officiis totam et sit nobis non quisquam molestiae quae ipsa autem iusto et eos aut corrupti quam autem et et accusamus qui similique pariatur aut fugit praesentium et blanditiis eaque architecto dolorum excepturi occaecati fuga qui aliquid reprehenderit nobis rerum ut reprehenderit dolor iste quia aut consequatur veniam eligendi deleniti voluptatem dicta culpa amet repudiandae et consequatur temporibus voluptatem ut qui quae ea autem et voluptatem.', 'https://picsum.photos/id/98/200/300', '13', '2020-06-03 20:56:52', '2020-06-06 00:55:22'),
(8, 8, 'Pariatur et tenetur maiores.', 'Eos error molestias ea molestias magnam voluptatem eligendi expedita suscipit autem rerum doloribus asperiores quis omnis laudantium sit totam placeat qui est vitae error soluta enim sint maiores quia culpa quas ut quo voluptate labore accusantium reprehenderit et provident vero nulla mollitia quos aut officiis est quo libero illum exercitationem quae cum odit natus minus optio similique quas reiciendis quia sit velit.', 'https://picsum.photos/id/20/200/300', '19', '2020-06-03 20:56:52', '2020-06-03 20:56:52'),
(9, 4, 'Totam eos non sunt ipsa.', 'Vel ut dolores iure et nihil dolor optio repellat et enim sint aut ullam dolorum et fuga voluptatem accusantium est ipsum expedita itaque sunt ex pariatur dolor error aut repudiandae rerum nihil quas aspernatur ut itaque quos tempore quis repellendus reiciendis eveniet autem quia consequatur aut sint et pariatur assumenda doloremque et sint rerum dolorum sequi perspiciatis quia sunt esse eos.', 'https://picsum.photos/id/46/200/300', '20', '2020-06-03 20:56:52', '2020-06-03 20:56:52'),
(10, 8, 'Harum ut ullam.', 'Nihil dolores nemo odio dolores earum doloremque ea debitis animi ut quae voluptas fugiat hic cum atque dolores voluptas est earum modi sint et excepturi qui vel reiciendis autem est est est maxime harum numquam blanditiis molestiae animi perferendis molestiae ducimus eum sit eligendi voluptas et molestiae possimus in sint tempora debitis tempora consequatur consequatur quis omnis rerum explicabo pariatur incidunt in.', 'https://picsum.photos/id/11/200/300', '18', '2020-06-03 20:56:52', '2020-06-03 20:56:52'),
(11, 3, 'Alias consectetur voluptatibus et sequi.', 'Voluptatem reprehenderit corrupti consequatur nisi consequatur non aspernatur quaerat et qui eum unde sint et autem ut similique quis exercitationem suscipit provident omnis sequi rerum sed quos voluptatem sed in impedit dolores consequatur autem facilis id asperiores in corporis modi sit quaerat velit occaecati inventore impedit et ducimus similique ipsam quasi officia aliquid deserunt dolores qui facilis perferendis eaque odit voluptatum laboriosam et est.', 'https://picsum.photos/id/66/200/300', '18', '2020-06-03 20:56:52', '2020-06-03 20:56:52'),
(12, 6, 'Qui id magnam praesentium.', 'Error saepe veritatis ad laborum non in cumque veritatis sunt et ratione sint voluptatem error rerum enim cumque dolorem et non neque cum vero sunt autem est culpa ea sit et voluptatem harum ipsum delectus dolorem maxime nesciunt temporibus et mollitia molestiae ex quod rerum reiciendis voluptas velit enim sint deleniti ratione dolorum sit ut repellendus vel nam et sed.', 'https://picsum.photos/id/100/200/300', '18', '2020-06-03 20:56:52', '2020-06-03 20:56:52'),
(13, 3, 'Commodi non labore itaque alias voluptas.', 'Et eos id omnis atque laborum neque illum ut praesentium sint aut nam iusto beatae consectetur deleniti amet ullam qui officia commodi beatae maxime quaerat porro quam libero atque voluptatem itaque eos nesciunt reprehenderit quas quaerat ut quod quasi sint excepturi amet sapiente cum.', 'https://picsum.photos/id/1/200/300', '14', '2020-06-03 20:56:53', '2020-06-03 20:56:53'),
(18, 6, 'Est atque possimus quis incidunt.', 'Enim voluptas eum voluptas vitae modi est sit enim provident rem id labore qui veniam est et consectetur vel laboriosam assumenda quidem ab officia odit vel harum at iure nobis veniam numquam quos et quasi consequuntur dolore sit et aut qui neque qui illo sed.', 'https://picsum.photos/id/14/200/300', '14', '2020-06-03 20:56:53', '2020-06-03 20:56:53'),
(19, 3, 'Praesentium iusto et iusto.', 'Ipsa labore itaque quidem at quaerat voluptatem veritatis animi modi ullam id eveniet soluta quae incidunt et eum sed voluptatum sed sint inventore sapiente quia voluptas et dolorum omnis distinctio sit aspernatur fuga dolorem provident perferendis unde dolores est amet omnis non unde distinctio corrupti architecto voluptatem accusantium quia voluptatem nam voluptatem provident delectus non saepe impedit.', 'https://picsum.photos/id/2/200/300', '13', '2020-06-03 20:56:53', '2020-06-03 20:56:53'),
(23, 1, 'Incidunt et inventore quae.', 'Nihil maxime et deleniti quis reprehenderit repellat non eligendi nemo aut et laboriosam et saepe voluptatem autem natus quod necessitatibus quod consectetur minus rerum et quia at saepe itaque eos et aut nihil quod sunt ea dolor rerum distinctio officiis dolores consequatur tempore quam at hic ut magnam neque dolorem veritatis ut ab laborum quidem culpa voluptatum quae facilis modi distinctio totam.', 'https://picsum.photos/id/94/200/300', '20', '2020-06-03 20:56:53', '2020-06-03 20:56:53'),
(24, 4, 'Ad provident est molestias velit.', 'Est molestiae voluptatem autem praesentium quo ut repellendus quod laboriosam qui libero voluptatem illum reiciendis et sit quaerat nesciunt ducimus libero qui ab rerum qui aut sit molestiae ut debitis deserunt quasi repellat consequuntur iusto laudantium qui quae rerum omnis natus incidunt incidunt fuga temporibus dolor sed.', 'https://picsum.photos/id/81/200/300', '11', '2020-06-03 20:56:53', '2020-06-03 20:56:53'),
(25, 1, 'Nesciunt veritatis rem.', 'Non maiores velit temporibus totam eum sunt placeat recusandae illo doloribus est facilis minima nisi ex qui maxime exercitationem animi eius dicta sit eos facilis et id consequatur dolores eos quo enim qui nostrum sit voluptas est molestiae nihil totam qui voluptate debitis commodi id fuga quia explicabo architecto et placeat omnis voluptates placeat quisquam.', 'https://picsum.photos/id/94/200/300', '19', '2020-06-03 20:56:53', '2020-06-03 20:56:53'),
(26, 8, 'Minus ut non voluptatum dignissimos.', 'Recusandae ipsam ut non atque non saepe quia voluptas voluptate ut vero beatae quia ut aut est sapiente nobis incidunt sunt iusto quia voluptatem consectetur voluptas numquam atque dolores cumque quia qui nam dicta est molestiae officiis alias fugit qui qui aut molestiae quidem quos perspiciatis in ut qui similique tenetur quia ut.', 'https://picsum.photos/id/32/200/300', '13', '2020-06-03 20:56:54', '2020-06-03 20:56:54'),
(27, 1, 'Repellendus libero debitis est tempora reiciendis.', 'Corrupti fugiat a est iure illum ducimus quas quasi necessitatibus molestiae et est quae dolorum nulla quo voluptatem sit dicta est est ducimus provident aperiam qui fugit ad et eum impedit voluptate quis sunt ut sapiente consectetur quas cumque consequatur autem labore aut quis in quae omnis dolor voluptatum rem.', 'https://picsum.photos/id/58/200/300', '20', '2020-06-03 20:56:54', '2020-06-03 20:56:54'),
(28, 7, 'Voluptatem ducimus et a asperiores.', 'Quaerat et fuga voluptatem voluptatem at non minus nam qui autem iste facere est unde ipsa in et quam dolorum cumque eveniet at nesciunt officiis et atque consequuntur rerum nihil vitae quia laboriosam consectetur aut voluptas dolorem maxime fugiat pariatur id accusantium provident rerum doloremque vel quis voluptatum temporibus quo doloribus quas ea.', 'https://picsum.photos/id/53/200/300', '14', '2020-06-03 20:56:54', '2020-06-03 20:56:54'),
(29, 8, 'Qui maiores sed dignissimos.', 'Ducimus voluptas enim porro dolores totam nisi temporibus officia sed quis voluptate nostrum eligendi assumenda delectus provident maiores sint aliquam explicabo at incidunt autem sint recusandae odit reprehenderit doloribus ad voluptatibus sequi voluptatibus eum explicabo harum dolor nam eos omnis.', 'https://picsum.photos/id/14/200/300', '20', '2020-06-03 20:56:54', '2020-06-03 20:56:54'),
(30, 5, 'Natus neque occaecati et.', 'Ea vero sed facilis temporibus aut ut ea similique doloribus molestiae aspernatur dolor vel qui sunt maxime non beatae dolore fuga vel ea expedita accusantium dolorem possimus exercitationem praesentium excepturi molestiae adipisci ut sint qui doloremque ducimus sapiente dolore tempore.', 'https://picsum.photos/id/95/200/300', '19', '2020-06-03 20:56:54', '2020-06-03 20:56:54'),
(31, 6, 'Est sed quae harum cum.', 'Fuga aspernatur perspiciatis est cum animi minima asperiores soluta ducimus odit consequuntur qui possimus quis voluptate eos molestias nobis velit aperiam ad labore iusto reprehenderit voluptates dolor voluptas accusantium repellat quia placeat quia eius ab at optio corrupti harum et molestiae quae similique molestias vel omnis dolor et.', 'https://picsum.photos/id/31/200/300', '18', '2020-06-03 20:56:54', '2020-06-03 20:56:54'),
(32, 4, 'Hic voluptatem non unde.', 'Cupiditate suscipit eos voluptas et animi cum sint voluptatibus ut iste quod aliquid magnam dolores earum mollitia vel totam aliquid aut commodi et eveniet perferendis eius quidem atque consectetur fugiat sed aut dolor in sit incidunt sed reprehenderit qui ut esse a illo provident aut rem blanditiis voluptatum ducimus architecto ut ipsum reprehenderit sint at sed.', 'https://picsum.photos/id/56/200/300', '19', '2020-06-03 20:56:54', '2020-06-03 20:56:54'),
(33, 1, 'Suscipit hic ipsam exercitationem ducimus.', 'Iste sit est commodi eligendi dignissimos rerum autem aspernatur porro molestiae dolor excepturi eligendi quas praesentium molestias distinctio praesentium repellat omnis error placeat modi quia laudantium esse itaque est esse reprehenderit ea minima nisi natus impedit nihil doloremque ea eos sed consequatur fugit quo provident adipisci autem dolore asperiores.', 'https://picsum.photos/id/38/200/300', '18', '2020-06-03 20:56:54', '2020-06-03 20:56:54'),
(34, 8, 'Et aperiam molestiae.', 'Atque minus dolores atque voluptates voluptas consequatur veritatis distinctio esse quo blanditiis rerum voluptas sit ut recusandae voluptatum sunt ut sit possimus animi sit eos aut libero ut aut ut provident itaque tempora repellendus magnam consequatur sint neque omnis dolorum quos maiores qui placeat aspernatur eius et quia impedit velit culpa sunt et consequatur sit aut natus velit similique deleniti debitis.', 'https://picsum.photos/id/100/200/300', '10', '2020-06-03 20:56:54', '2020-06-03 20:56:54'),
(37, 4, 'Tempora autem perferendis.', 'Qui dolor saepe animi provident sed ut sint nostrum sapiente vel odit sit voluptatem amet dolore fugiat sit quia placeat vel maxime necessitatibus architecto culpa maxime deleniti similique et repudiandae sit accusamus ut magni doloribus nulla amet ratione sunt ut accusantium dolores ullam et cupiditate consequuntur dolores qui hic quis sed eum qui nisi et est cupiditate quia quam autem facilis ea enim maiores natus animi consectetur voluptatum.', 'https://picsum.photos/id/90/200/300', '16', '2020-06-03 20:56:54', '2020-06-03 20:56:54'),
(39, 8, 'Autem ad nesciunt dolorem reprehenderit quia.', 'Voluptatem quidem sed est consequuntur ut impedit quibusdam magnam quam ea dolores voluptates magni suscipit minima perspiciatis est nobis enim accusamus sint dolorem autem et est voluptatibus provident rerum eos amet quisquam nihil saepe ut magnam deleniti commodi asperiores aut et labore exercitationem asperiores in excepturi et adipisci est molestias et consectetur saepe qui et qui facilis quia et perferendis facere doloremque aut harum perferendis.', 'https://picsum.photos/id/91/200/300', '19', '2020-06-03 20:56:54', '2020-06-03 20:56:54'),
(40, 6, 'Adipisci aut omnis totam blanditiis.', 'Deleniti enim eveniet perspiciatis ullam qui sapiente et assumenda et mollitia et alias et nam id cupiditate sint ad libero consequuntur nisi tempore sit iure nesciunt aut voluptatem temporibus voluptatibus dignissimos eligendi excepturi dolores voluptate odit voluptatem voluptatem vero quis suscipit dolorum omnis.', 'https://picsum.photos/id/21/200/300', '15', '2020-06-03 20:56:54', '2020-06-03 20:56:54'),
(41, 8, 'Rerum rerum aut aliquid molestias.', 'Et est aut ullam aut ex totam ipsam quos cumque eius reprehenderit eius pariatur voluptatibus eaque et eligendi totam non esse et et repellat cupiditate ullam in aut accusamus suscipit occaecati labore aliquam impedit officia molestias autem ea quae quod et fuga quis accusamus quia dolores sequi hic.', 'https://picsum.photos/id/53/200/300', '10', '2020-06-03 20:56:55', '2020-06-03 20:56:55'),
(42, 8, 'Et aperiam officia vitae facilis nesciunt.', 'Fuga repellat nulla enim necessitatibus debitis officiis consequuntur consequatur asperiores accusamus pariatur qui doloribus beatae quam voluptates libero natus sit eum voluptates fugit et minima perferendis et eum corrupti rerum quae iste qui ipsa eum itaque atque eligendi facere perferendis omnis molestias blanditiis.', 'https://picsum.photos/id/36/200/300', '12', '2020-06-03 20:56:55', '2020-06-03 20:56:55'),
(43, 4, 'Dolorum inventore deserunt omnis alias.', 'In quos culpa et cupiditate veritatis quas est quasi repudiandae quasi sed molestias asperiores praesentium iure molestiae laborum doloribus nobis omnis fugit laborum est a quaerat vel ut omnis et dignissimos id veritatis hic recusandae quidem corrupti et inventore odio aut officia est ut sed.', 'https://picsum.photos/id/3/200/300', '16', '2020-06-03 20:56:55', '2020-06-06 01:19:29'),
(44, 4, 'Sed animi id magnam nesciunt in.', 'Minus necessitatibus aut nesciunt molestiae similique illum qui numquam quia fugiat sequi laborum labore autem nemo nam non fuga est eligendi vitae ipsum provident et est rem inventore accusamus odit debitis repellendus maiores ducimus sit quis ut harum aut minima.', 'https://picsum.photos/id/50/200/300', '13', '2020-06-03 20:56:55', '2020-06-03 20:56:55'),
(45, 1, 'Et beatae ad aut illo itaque.', 'Voluptates dolores qui reiciendis corrupti dignissimos dolorem velit voluptatibus et est autem ut vel optio quisquam ut impedit nisi pariatur quas velit sed delectus blanditiis laudantium et consectetur sequi iste maxime a delectus aut numquam numquam ullam explicabo vero molestias earum saepe inventore similique ea omnis hic possimus sapiente voluptatem sed qui voluptatem dolore sit molestiae facilis voluptatem autem officiis consequatur tempora nam similique minus neque odit soluta et ipsa.', 'https://picsum.photos/id/74/200/300', '18', '2020-06-03 20:56:55', '2020-06-03 20:56:55'),
(46, 3, 'Ut molestiae labore.', 'Aut id deserunt aut omnis molestiae maxime est quam ducimus qui voluptatem in id quisquam ea ea voluptas reprehenderit maxime omnis enim consequuntur modi ullam quis nihil quibusdam laborum sint iusto harum est ea et molestiae vitae consequatur ipsum porro facilis minus eos ut voluptatem quis sed ut quis dolorum et provident sequi rerum id ut blanditiis amet fugit.', 'https://picsum.photos/id/16/200/300', '12', '2020-06-03 20:56:55', '2020-06-03 20:56:55'),
(47, 8, 'Sed nihil illum dolorem perferendis.', 'Qui enim eum quis quidem cupiditate ut dolore tempore dolorum praesentium et omnis quae eos nesciunt modi modi amet et omnis blanditiis aspernatur mollitia quis omnis voluptatem explicabo culpa non molestiae vel facere harum quis cupiditate eum sed neque cum voluptatibus qui et quae quia.', 'https://picsum.photos/id/31/200/300', '18', '2020-06-03 20:56:55', '2020-06-03 20:56:55'),
(48, 5, 'Dignissimos et quo sapiente aut.', 'Omnis magni repudiandae omnis quo quibusdam enim expedita nostrum repellendus dolor ad aut molestiae voluptatibus ea qui dolorem dolores minima explicabo voluptas ut ab voluptatem exercitationem eaque quo sit consequatur et incidunt sed perspiciatis labore placeat rerum placeat debitis modi eos aspernatur aut sunt eos vel aliquid molestiae et nesciunt qui facere rerum voluptas aut quae iure ut voluptas molestiae aut exercitationem qui quia quis nobis asperiores at magni reiciendis.', 'https://picsum.photos/id/46/200/300', '18', '2020-06-03 20:56:55', '2020-06-03 20:56:55'),
(49, 3, 'Vero quae laborum omnis rerum.', 'Enim odio omnis impedit magni est voluptas quam sapiente quasi eum molestias ullam nam unde voluptatem optio earum nostrum qui dolor rem molestiae et suscipit iure unde quo labore est voluptas sit ipsum corporis officia eligendi officiis totam libero rerum consequatur maiores in excepturi quae cumque.', 'https://picsum.photos/id/46/200/300', '10', '2020-06-03 20:56:55', '2020-06-03 20:56:55'),
(50, 6, 'Voluptates quia sed quaerat dicta.', 'Autem aut qui id aut nihil molestiae quos esse non maiores nemo doloremque alias aut aut aperiam eligendi consequatur odio enim tenetur maxime non in ipsa similique distinctio facere dolores ut neque quia est iste eveniet illum culpa tempora voluptas vero enim saepe et aut consequatur praesentium rem sed rerum sint unde quis ipsa voluptatum cupiditate minima natus aliquam error asperiores consequatur enim.', 'https://picsum.photos/id/30/200/300', '15', '2020-06-03 20:56:55', '2020-06-03 20:56:55'),
(51, 1, 'sangkuriang', 'sangkuriang apalah kamu dah ya ?', NULL, '12', '2020-06-03 21:12:17', '2020-06-03 21:12:17'),
(52, 5, 'hellboy', 'satu dua tiga empat lima enam tujuh', NULL, '13', '2020-06-03 21:13:14', '2020-06-03 21:13:14');

-- --------------------------------------------------------

--
-- Struktur dari tabel `borrow_history`
--

CREATE TABLE `borrow_history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `book_id` bigint(20) UNSIGNED NOT NULL,
  `returned_at` datetime DEFAULT NULL,
  `admin_id` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `borrow_history`
--

INSERT INTO `borrow_history` (`id`, `user_id`, `book_id`, `returned_at`, `admin_id`, `created_at`, `updated_at`) VALUES
(12, 2, 6, NULL, NULL, NULL, NULL),
(13, 2, 7, NULL, NULL, NULL, NULL),
(14, 3, 6, NULL, NULL, '2020-06-06 00:55:17', '2020-06-06 00:55:17'),
(15, 3, 7, NULL, NULL, '2020-06-06 00:55:22', '2020-06-06 00:55:22'),
(16, 3, 43, '2020-06-07 10:50:18', 1, '2020-06-06 01:19:29', '2020-06-07 03:50:18'),
(17, 1, 6, '2020-06-07 13:45:16', 1, '2020-06-07 06:44:22', '2020-06-07 06:45:16'),
(18, 1, 6, '2020-06-07 14:18:26', 1, '2020-06-07 07:17:40', '2020-06-07 07:18:26');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_05_26_153716_create_authors_table', 1),
(5, '2020_05_26_153820_create_books_table', 1),
(6, '2020_05_26_154342_create_borrow_history_table', 1),
(7, '2020_05_26_163530_create_permission_tables', 1),
(8, '2020_06_01_085705_add_qty_books_table', 1),
(9, '2020_06_06_144518_add_returned_at_and_receiver_user_id_on_borrow_history_table', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\User', 1),
(2, 'App\\User', 2),
(2, 'App\\User', 3);

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
-- Struktur dari tabel `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2020-06-03 20:56:45', '2020-06-03 20:56:45'),
(2, 'user', 'web', '2020-06-03 20:56:45', '2020-06-03 20:56:45');

-- --------------------------------------------------------

--
-- Struktur dari tabel `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin perpus', 'adminperpus@gmail.com', '2020-06-03 20:56:46', '$2y$10$7roUpasD1KWc7q.g2PCDyuG/nt4BtqAiAQCYxIWUitL/htLpLA9JK', NULL, '2020-06-03 20:56:46', '2020-06-03 20:56:46'),
(2, 'febriwijaya', 'febriwijaya@test', NULL, '$2y$10$twrGtSyiYsPL0.Atn/ccl.8/ncT9Bz40n2ykaQ9tl9urXg9/IOSui', NULL, '2020-06-05 00:52:31', '2020-06-05 00:52:31'),
(3, 'user', 'user@test', '2020-06-06 00:55:05', '$2y$10$YYxn5a7wq8n1AVH3GJ6MCu0ewO4hqoj1W.z0wsVrjknVzcQna9rN2', NULL, '2020-06-06 00:54:26', '2020-06-06 00:55:05');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `books_author_id_foreign` (`author_id`);

--
-- Indeks untuk tabel `borrow_history`
--
ALTER TABLE `borrow_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `borrow_history_user_id_foreign` (`user_id`),
  ADD KEY `borrow_history_book_id_foreign` (`book_id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indeks untuk tabel `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

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
-- AUTO_INCREMENT untuk tabel `authors`
--
ALTER TABLE `authors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT untuk tabel `borrow_history`
--
ALTER TABLE `borrow_history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `borrow_history`
--
ALTER TABLE `borrow_history`
  ADD CONSTRAINT `borrow_history_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `borrow_history_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
