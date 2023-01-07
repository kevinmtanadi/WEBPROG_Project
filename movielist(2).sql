-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 07, 2023 at 06:18 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `movielist`
--

-- --------------------------------------------------------

--
-- Table structure for table `actor`
--

CREATE TABLE `actor` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `biography` varchar(10000) NOT NULL,
  `dob` date NOT NULL,
  `pob` varchar(255) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `popularity` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `actor`
--

INSERT INTO `actor` (`id`, `name`, `gender`, `biography`, `dob`, `pob`, `image_url`, `popularity`) VALUES
(1, 'Tom Holland', 'male', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Aut molestiae dignissimos sed totam ipsum asperiores molestias saepe commodi maiores corporis, officiis eius atque, numquam dolor nobis. Sint quasi minus rem sapiente non nihil illum nemo, neque eveniet eligendi nobis aliquam repellendus hic ipsum enim at facilis tempore asperiores laudantium soluta numquam. Eius quos eum excepturi tempore? Saepe iste fuga molestias qui voluptatum quibusdam at explicabo voluptas consequatur rerum! Quia iusto sed distinctio, vero voluptas, eos excepturi, sit maxime aspernatur rerum voluptatem? Quod accusamus minus ad voluptatem repellendus nulla animi autem esse cupiditate ipsam consectetur nostrum iusto impedit accusantium quae facere, quo possimus. Ea corporis, atque, blanditiis amet sunt molestias dolores ex a, expedita est quaerat nulla. Id praesentium quia aut vel earum consectetur voluptate dolores a corporis, ipsa optio beatae sint nostrum magnam cumque natus doloribus ducimus! Qui, distinctio tempore! Repellendus corporis explicabo itaque magnam. Velit qui est voluptates accusantium.', '2023-01-03', 'London, England', '1673011713.jpg', 70),
(2, 'Zendaya', 'female', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Aut molestiae dignissimos sed totam ipsum asperiores molestias saepe commodi maiores corporis, officiis eius atque, numquam dolor nobis. Sint quasi minus rem sapiente non nihil illum nemo, neque eveniet eligendi nobis aliquam repellendus hic ipsum enim at facilis tempore asperiores laudantium soluta numquam. Eius quos eum excepturi tempore? Saepe iste fuga molestias qui voluptatum quibusdam at explicabo voluptas consequatur rerum! Quia iusto sed distinctio, vero voluptas, eos excepturi, sit maxime aspernatur rerum voluptatem? Quod accusamus minus ad voluptatem repellendus nulla animi autem esse cupiditate ipsam consectetur nostrum iusto impedit accusantium quae facere, quo possimus. Ea corporis, atque, blanditiis amet sunt molestias dolores ex a, expedita est quaerat nulla. Id praesentium quia aut vel earum consectetur voluptate dolores a corporis, ipsa optio beatae sint nostrum magnam cumque natus doloribus ducimus! Qui, distinctio tempore! Repellendus corporis explicabo itaque magnam. Velit qui est voluptates accusantium.', '2022-11-17', 'California, US', '1673011735.jpg', 60),
(3, 'Benedict Cumberbatch', 'male', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Aut molestiae dignissimos sed totam ipsum asperiores molestias saepe commodi maiores corporis, officiis eius atque, numquam dolor nobis. Sint quasi minus rem sapiente non nihil illum nemo, neque eveniet eligendi nobis aliquam repellendus hic ipsum enim at facilis tempore asperiores laudantium soluta numquam. Eius quos eum excepturi tempore? Saepe iste fuga molestias qui voluptatum quibusdam at explicabo voluptas consequatur rerum! Quia iusto sed distinctio, vero voluptas, eos excepturi, sit maxime aspernatur rerum voluptatem? Quod accusamus minus ad voluptatem repellendus nulla animi autem esse cupiditate ipsam consectetur nostrum iusto impedit accusantium quae facere, quo possimus. Ea corporis, atque, blanditiis amet sunt molestias dolores ex a, expedita est quaerat nulla. Id praesentium quia aut vel earum consectetur voluptate dolores a corporis, ipsa optio beatae sint nostrum magnam cumque natus doloribus ducimus! Qui, distinctio tempore! Repellendus corporis explicabo itaque magnam. Velit qui est voluptates accusantium.', '2022-11-08', 'London, England', '1673011753.jpg', 57),
(4, 'Tom Hardy', 'male', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Aut molestiae dignissimos sed totam ipsum asperiores molestias saepe commodi maiores corporis, officiis eius atque, numquam dolor nobis. Sint quasi minus rem sapiente non nihil illum nemo, neque eveniet eligendi nobis aliquam repellendus hic ipsum enim at facilis tempore asperiores laudantium soluta numquam. Eius quos eum excepturi tempore? Saepe iste fuga molestias qui voluptatum quibusdam at explicabo voluptas consequatur rerum! Quia iusto sed distinctio, vero voluptas, eos excepturi, sit maxime aspernatur rerum voluptatem? Quod accusamus minus ad voluptatem repellendus nulla animi autem esse cupiditate ipsam consectetur nostrum iusto impedit accusantium quae facere, quo possimus. Ea corporis, atque, blanditiis amet sunt molestias dolores ex a, expedita est quaerat nulla. Id praesentium quia aut vel earum consectetur voluptate dolores a corporis, ipsa optio beatae sint nostrum magnam cumque natus doloribus ducimus! Qui, distinctio tempore! Repellendus corporis explicabo itaque magnam. Velit qui est voluptates accusantium.', '2022-10-04', 'London, England', '1673011770.jpg', 105),
(5, 'Woody Harrelson', 'male', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Aut molestiae dignissimos sed totam ipsum asperiores molestias saepe commodi maiores corporis, officiis eius atque, numquam dolor nobis. Sint quasi minus rem sapiente non nihil illum nemo, neque eveniet eligendi nobis aliquam repellendus hic ipsum enim at facilis tempore asperiores laudantium soluta numquam. Eius quos eum excepturi tempore? Saepe iste fuga molestias qui voluptatum quibusdam at explicabo voluptas consequatur rerum! Quia iusto sed distinctio, vero voluptas, eos excepturi, sit maxime aspernatur rerum voluptatem? Quod accusamus minus ad voluptatem repellendus nulla animi autem esse cupiditate ipsam consectetur nostrum iusto impedit accusantium quae facere, quo possimus. Ea corporis, atque, blanditiis amet sunt molestias dolores ex a, expedita est quaerat nulla. Id praesentium quia aut vel earum consectetur voluptate dolores a corporis, ipsa optio beatae sint nostrum magnam cumque natus doloribus ducimus! Qui, distinctio tempore! Repellendus corporis explicabo itaque magnam. Velit qui est voluptates accusantium.', '2022-11-24', 'London, England', '1673011783.jpg', 125),
(6, 'Keanu Reeves', 'male', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Aut molestiae dignissimos sed totam ipsum asperiores molestias saepe commodi maiores corporis, officiis eius atque, numquam dolor nobis. Sint quasi minus rem sapiente non nihil illum nemo, neque eveniet eligendi nobis aliquam repellendus hic ipsum enim at facilis tempore asperiores laudantium soluta numquam. Eius quos eum excepturi tempore? Saepe iste fuga molestias qui voluptatum quibusdam at explicabo voluptas consequatur rerum! Quia iusto sed distinctio, vero voluptas, eos excepturi, sit maxime aspernatur rerum voluptatem? Quod accusamus minus ad voluptatem repellendus nulla animi autem esse cupiditate ipsam consectetur nostrum iusto impedit accusantium quae facere, quo possimus. Ea corporis, atque, blanditiis amet sunt molestias dolores ex a, expedita est quaerat nulla. Id praesentium quia aut vel earum consectetur voluptate dolores a corporis, ipsa optio beatae sint nostrum magnam cumque natus doloribus ducimus! Qui, distinctio tempore! Repellendus corporis explicabo itaque magnam. Velit qui est voluptates accusantium.', '2022-10-14', 'London, England', '1673011804.jpg', 135),
(8, 'Emma Stone', 'female', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Unde ducimus molestiae voluptas amet fugiat consequatur, accusamus ad soluta placeat ut libero ipsam dignissimos accusantium consequuntur quibusdam, enim officiis blanditiis, atque ab nulla laboriosam qui tempore inventore. Ea reiciendis maxime id culpa molestias dolorem cumque harum, dignissimos ut nam aspernatur animi cum facere blanditiis illum sint fuga esse, fugiat, laborum iste explicabo! Nesciunt sunt placeat, praesentium eveniet laboriosam eligendi voluptatibus in amet inventore consequatur cum dolore reiciendis officia voluptates quos quod rem beatae nemo omnis labore fuga nam earum eaque aspernatur. Maxime repellendus eius quod dolores alias accusamus praesentium, porro obcaecati quae blanditiis, eum optio voluptas animi fugiat ea temporibus ab cumque sapiente esse suscipit laboriosam! Adipisci nulla hic quasi dicta vel iure sunt atque fugit iste voluptas possimus maxime reprehenderit distinctio aliquid quisquam tempore repellendus, corrupti porro autem reiciendis corporis? Quisquam, nisi id. Ex obcaecati aspernatur asperiores nihil tempore sit quo veniam, recusandae porro. Earum nam ut ea assumenda blanditiis omnis quo architecto fugiat fugit repudiandae facilis voluptatem autem laboriosam illo alias, odit quibusdam? Distinctio harum facere aspernatur dolorum deserunt accusamus non ab obcaecati quisquam! Exercitationem beatae aliquid, architecto sunt doloremque sint rem maiores similique iusto, expedita nisi. Enim, sapiente.', '2022-11-14', 'Arizona, US', '1673017859.jpg', 135),
(9, 'Jesse Eisenberg', 'male', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Unde ducimus molestiae voluptas amet fugiat consequatur, accusamus ad soluta placeat ut libero ipsam dignissimos accusantium consequuntur quibusdam, enim officiis blanditiis, atque ab nulla laboriosam qui tempore inventore. Ea reiciendis maxime id culpa molestias dolorem cumque harum, dignissimos ut nam aspernatur animi cum facere blanditiis illum sint fuga esse, fugiat, laborum iste explicabo! Nesciunt sunt placeat, praesentium eveniet laboriosam eligendi voluptatibus in amet inventore consequatur cum dolore reiciendis officia voluptates quos quod rem beatae nemo omnis labore fuga nam earum eaque aspernatur. Maxime repellendus eius quod dolores alias accusamus praesentium, porro obcaecati quae blanditiis, eum optio voluptas animi fugiat ea temporibus ab cumque sapiente esse suscipit laboriosam! Adipisci nulla hic quasi dicta vel iure sunt atque fugit iste voluptas possimus maxime reprehenderit distinctio aliquid quisquam tempore repellendus, corrupti porro autem reiciendis corporis? Quisquam, nisi id. Ex obcaecati aspernatur asperiores nihil tempore sit quo veniam, recusandae porro. Earum nam ut ea assumenda blanditiis omnis quo architecto fugiat fugit repudiandae facilis voluptatem autem laboriosam illo alias, odit quibusdam? Distinctio harum facere aspernatur dolorum deserunt accusamus non ab obcaecati quisquam! Exercitationem beatae aliquid, architecto sunt doloremque sint rem maiores similique iusto, expedita nisi. Enim, sapiente.', '2022-11-15', 'New York, US', '1673017917.jpg', 107),
(10, 'Elizabeth Olsen', 'female', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dolore eius at dolor iure quaerat mollitia accusantium quam incidunt quod nesciunt est quasi nostrum quibusdam delectus alias sed sapiente, dolores molestias. Eum recusandae corporis reprehenderit, animi quia voluptatibus. Eveniet necessitatibus consequatur quis, laudantium illo iure voluptatibus in voluptatem quo dolore amet minima et ullam culpa, dolorem quisquam obcaecati maxime molestias praesentium tenetur totam non nobis. Eveniet quos saepe, quaerat molestias quis sint porro explicabo, aperiam dolore iste veritatis atque repellendus ea inventore perspiciatis, corporis excepturi quidem consectetur cupiditate! Dolore dignissimos, voluptas accusantium deleniti harum repellendus laborum repudiandae ut adipisci perferendis a distinctio facere inventore, nisi cum temporibus ipsa iure eum officiis aut pariatur accusamus iusto! Quos atque, dicta quae eaque quod rerum officiis iure nisi nemo est aperiam ipsam fuga quia, recusandae tenetur? Obcaecati rem accusantium quae voluptatem quasi nisi sequi veniam, illum totam cupiditate hic incidunt impedit eum molestias quidem pariatur. Eaque nulla tempore ullam neque error harum aliquid ratione a mollitia ad sit ipsa consequuntur vitae, in itaque maxime, dicta laborum veniam, rem ex assumenda ea. Enim cum fugiat facilis! Nam amet error dolor, repellat, adipisci officiis, rerum tempore enim autem debitis modi pariatur doloremque deserunt repellendus quaerat sint!', '2022-10-11', 'California, US', '1673067204.jpg', 135),
(11, 'Xochitl Gomez', 'female', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dolore eius at dolor iure quaerat mollitia accusantium quam incidunt quod nesciunt est quasi nostrum quibusdam delectus alias sed sapiente, dolores molestias. Eum recusandae corporis reprehenderit, animi quia voluptatibus. Eveniet necessitatibus consequatur quis, laudantium illo iure voluptatibus in voluptatem quo dolore amet minima et ullam culpa, dolorem quisquam obcaecati maxime molestias praesentium tenetur totam non nobis. Eveniet quos saepe, quaerat molestias quis sint porro explicabo, aperiam dolore iste veritatis atque repellendus ea inventore perspiciatis, corporis excepturi quidem consectetur cupiditate! Dolore dignissimos, voluptas accusantium deleniti harum repellendus laborum repudiandae ut adipisci perferendis a distinctio facere inventore, nisi cum temporibus ipsa iure eum officiis aut pariatur accusamus iusto! Quos atque, dicta quae eaque quod rerum officiis iure nisi nemo est aperiam ipsam fuga quia, recusandae tenetur? Obcaecati rem accusantium quae voluptatem quasi nisi sequi veniam, illum totam cupiditate hic incidunt impedit eum molestias quidem pariatur. Eaque nulla tempore ullam neque error harum aliquid ratione a mollitia ad sit ipsa consequuntur vitae, in itaque maxime, dicta laborum veniam, rem ex assumenda ea. Enim cum fugiat facilis! Nam amet error dolor, repellat, adipisci officiis, rerum tempore enim autem debitis modi pariatur doloremque deserunt repellendus quaerat sint!', '2022-11-15', 'California, US', '1673067224.jpg', 45),
(12, 'Adam Sandler', 'male', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dignissimos magni officiis voluptatem recusandae eos necessitatibus iusto cum dicta, beatae illo saepe similique temporibus expedita ab. Sequi exercitationem earum dolore, ipsa at reiciendis. Suscipit, facere dolorem hic iure quia explicabo sit numquam quasi dolorum vero fuga libero ipsam, nihil ullam sint eius, culpa quos alias incidunt soluta dicta nam eum quidem possimus! Maiores adipisci distinctio possimus est, architecto, quis vitae dignissimos sapiente veniam, sint ipsum. Exercitationem magni eum accusantium commodi voluptate reprehenderit ex animi, neque nisi et ad vitae unde maxime necessitatibus consequuntur ipsa quo id ratione minus qui ducimus! Blanditiis nulla eveniet alias tempora ut voluptate error voluptas omnis? Laborum culpa nam dolore, suscipit dolores voluptatum. Nisi voluptas consequuntur voluptate quia aperiam saepe rerum, quod, dolorem ipsa vel temporibus quos labore animi. Aliquid accusamus, quod quia soluta laudantium molestias voluptates quae, reprehenderit, illo necessitatibus aliquam cumque? Similique quae molestiae ea aspernatur. Consequatur quam sequi nesciunt velit! Necessitatibus repellendus, distinctio officia magni et quas. Necessitatibus quos maiores sapiente! Repudiandae provident quo quaerat. Expedita aut esse consectetur, facere soluta nihil alias, magni ducimus, laudantium molestiae corporis officiis mollitia tenetur tempore accusamus odio similique ab! Omnis, esse qui? Perspiciatis odit eaque dolorem animi.', '2022-11-07', 'New York, US', '1673067476.jpg', 150),
(13, 'Salma Hayek', 'female', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dignissimos magni officiis voluptatem recusandae eos necessitatibus iusto cum dicta, beatae illo saepe similique temporibus expedita ab. Sequi exercitationem earum dolore, ipsa at reiciendis. Suscipit, facere dolorem hic iure quia explicabo sit numquam quasi dolorum vero fuga libero ipsam, nihil ullam sint eius, culpa quos alias incidunt soluta dicta nam eum quidem possimus! Maiores adipisci distinctio possimus est, architecto, quis vitae dignissimos sapiente veniam, sint ipsum. Exercitationem magni eum accusantium commodi voluptate reprehenderit ex animi, neque nisi et ad vitae unde maxime necessitatibus consequuntur ipsa quo id ratione minus qui ducimus! Blanditiis nulla eveniet alias tempora ut voluptate error voluptas omnis? Laborum culpa nam dolore, suscipit dolores voluptatum. Nisi voluptas consequuntur voluptate quia aperiam saepe rerum, quod, dolorem ipsa vel temporibus quos labore animi. Aliquid accusamus, quod quia soluta laudantium molestias voluptates quae, reprehenderit, illo necessitatibus aliquam cumque? Similique quae molestiae ea aspernatur. Consequatur quam sequi nesciunt velit! Necessitatibus repellendus, distinctio officia magni et quas. Necessitatibus quos maiores sapiente! Repudiandae provident quo quaerat. Expedita aut esse consectetur, facere soluta nihil alias, magni ducimus, laudantium molestiae corporis officiis mollitia tenetur tempore accusamus odio similique ab! Omnis, esse qui? Perspiciatis odit eaque dolorem animi.', '2022-10-03', 'California, US', '1673067499.jpg', 67),
(14, 'David Spade', 'male', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dignissimos magni officiis voluptatem recusandae eos necessitatibus iusto cum dicta, beatae illo saepe similique temporibus expedita ab. Sequi exercitationem earum dolore, ipsa at reiciendis. Suscipit, facere dolorem hic iure quia explicabo sit numquam quasi dolorum vero fuga libero ipsam, nihil ullam sint eius, culpa quos alias incidunt soluta dicta nam eum quidem possimus! Maiores adipisci distinctio possimus est, architecto, quis vitae dignissimos sapiente veniam, sint ipsum. Exercitationem magni eum accusantium commodi voluptate reprehenderit ex animi, neque nisi et ad vitae unde maxime necessitatibus consequuntur ipsa quo id ratione minus qui ducimus! Blanditiis nulla eveniet alias tempora ut voluptate error voluptas omnis? Laborum culpa nam dolore, suscipit dolores voluptatum. Nisi voluptas consequuntur voluptate quia aperiam saepe rerum, quod, dolorem ipsa vel temporibus quos labore animi. Aliquid accusamus, quod quia soluta laudantium molestias voluptates quae, reprehenderit, illo necessitatibus aliquam cumque? Similique quae molestiae ea aspernatur. Consequatur quam sequi nesciunt velit! Necessitatibus repellendus, distinctio officia magni et quas. Necessitatibus quos maiores sapiente! Repudiandae provident quo quaerat. Expedita aut esse consectetur, facere soluta nihil alias, magni ducimus, laudantium molestiae corporis officiis mollitia tenetur tempore accusamus odio similique ab! Omnis, esse qui? Perspiciatis odit eaque dolorem animi.', '2022-10-09', 'London, England', '1673067522.jpg', 34),
(15, 'Mark Wahlberg', 'male', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus, accusantium ratione. Reiciendis ratione minus omnis tempore maiores aspernatur, vel, quam necessitatibus fugiat, deleniti incidunt magni corporis repudiandae. Sapiente culpa delectus natus quam sint, officia error laboriosam sunt veritatis voluptas id minima, laborum, eos cum sit reprehenderit in architecto nesciunt at quos harum aperiam blanditiis. Suscipit nihil corrupti laudantium ducimus, recusandae, exercitationem iure, quae at autem cum enim maiores nulla? Sint architecto, eveniet iure nulla, omnis nisi, facilis eligendi rerum autem reiciendis impedit. Ea vel quisquam optio quasi, voluptates tenetur qui aliquam iusto, totam explicabo sunt velit asperiores debitis officiis repudiandae officia maxime! Nemo facere quisquam cumque, voluptas sequi id voluptates sit accusantium inventore, porro dolor dolorum tenetur recusandae ipsum omnis eaque. Cum officiis, excepturi amet impedit esse quos nemo eius maiores doloremque ipsum iure quibusdam odio accusamus magni voluptatum fugiat voluptates distinctio eveniet. Ab illo ad ipsa assumenda. Quisquam, excepturi voluptatibus! Dolor fugiat ipsa odit, asperiores dolore repellat rem aliquam sint aliquid ratione quidem similique accusamus, iusto itaque delectus illum obcaecati deleniti necessitatibus repellendus saepe labore possimus voluptatibus nesciunt? Harum provident dolorum fugiat eos aliquam corrupti nemo itaque alias! Adipisci, nesciunt aliquid qui vel explicabo itaque totam obcaecati recusandae mollitia?', '2022-08-28', 'California, US', '1673067830.jpg', 156),
(16, 'Josh Brolin', 'male', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Aliquam aliquid odit quibusdam excepturi, laudantium maiores!', '2022-09-04', 'California, US', '1673067997.jpg', 102),
(17, 'Hugh Jackman', 'male', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus, accusantium ratione. Reiciendis ratione minus omnis tempore maiores aspernatur, vel, quam necessitatibus fugiat, deleniti incidunt magni corporis repudiandae. Sapiente culpa delectus natus quam sint, officia error laboriosam sunt veritatis voluptas id minima, laborum, eos cum sit reprehenderit in architecto nesciunt at quos harum aperiam blanditiis. Suscipit nihil corrupti laudantium ducimus, recusandae, exercitationem iure, quae at autem cum enim maiores nulla? Sint architecto, eveniet iure nulla, omnis nisi, facilis eligendi rerum autem reiciendis impedit. Ea vel quisquam optio quasi, voluptates tenetur qui aliquam iusto, totam explicabo sunt velit asperiores debitis officiis repudiandae officia maxime! Nemo facere quisquam cumque, voluptas sequi id voluptates sit accusantium inventore, porro dolor dolorum tenetur recusandae ipsum omnis eaque. Cum officiis, excepturi amet impedit esse quos nemo eius maiores doloremque ipsum iure quibusdam odio accusamus magni voluptatum fugiat voluptates distinctio eveniet. Ab illo ad ipsa assumenda. Quisquam, excepturi voluptatibus! Dolor fugiat ipsa odit, asperiores dolore repellat rem aliquam sint aliquid ratione quidem similique accusamus, iusto itaque delectus illum obcaecati deleniti necessitatibus repellendus saepe labore possimus voluptatibus nesciunt? Harum provident dolorum fugiat eos aliquam corrupti nemo itaque alias! Adipisci, nesciunt aliquid qui vel explicabo itaque totam obcaecati recusandae mollitia?', '2022-08-07', 'California, US', '1673068244.jpg', 175),
(18, 'Zac Efron', 'male', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus, accusantium ratione. Reiciendis ratione minus omnis tempore maiores aspernatur, vel, quam necessitatibus fugiat, deleniti incidunt magni corporis repudiandae. Sapiente culpa delectus natus quam sint, officia error laboriosam sunt veritatis voluptas id minima, laborum, eos cum sit reprehenderit in architecto nesciunt at quos harum aperiam blanditiis. Suscipit nihil corrupti laudantium ducimus, recusandae, exercitationem iure, quae at autem cum enim maiores nulla? Sint architecto, eveniet iure nulla, omnis nisi, facilis eligendi rerum autem reiciendis impedit. Ea vel quisquam optio quasi, voluptates tenetur qui aliquam iusto, totam explicabo sunt velit asperiores debitis officiis repudiandae officia maxime! Nemo facere quisquam cumque, voluptas sequi id voluptates sit accusantium inventore, porro dolor dolorum tenetur recusandae ipsum omnis eaque. Cum officiis, excepturi amet impedit esse quos nemo eius maiores doloremque ipsum iure quibusdam odio accusamus magni voluptatum fugiat voluptates distinctio eveniet. Ab illo ad ipsa assumenda. Quisquam, excepturi voluptatibus! Dolor fugiat ipsa odit, asperiores dolore repellat rem aliquam sint aliquid ratione quidem similique accusamus, iusto itaque delectus illum obcaecati deleniti necessitatibus repellendus saepe labore possimus voluptatibus nesciunt? Harum provident dolorum fugiat eos aliquam corrupti nemo itaque alias! Adipisci, nesciunt aliquid qui vel explicabo itaque totam obcaecati recusandae mollitia?', '2022-01-30', 'New York, US', '1673068275.jpg', 124),
(19, 'Dwayne Johnson', 'male', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus, accusantium ratione. Reiciendis ratione minus omnis tempore maiores aspernatur, vel, quam necessitatibus fugiat, deleniti incidunt magni corporis repudiandae. Sapiente culpa delectus natus quam sint, officia error laboriosam sunt veritatis voluptas id minima, laborum, eos cum sit reprehenderit in architecto nesciunt at quos harum aperiam blanditiis. Suscipit nihil corrupti laudantium ducimus, recusandae, exercitationem iure, quae at autem cum enim maiores nulla? Sint architecto, eveniet iure nulla, omnis nisi, facilis eligendi rerum autem reiciendis impedit. Ea vel quisquam optio quasi, voluptates tenetur qui aliquam iusto, totam explicabo sunt velit asperiores debitis officiis repudiandae officia maxime! Nemo facere quisquam cumque, voluptas sequi id voluptates sit accusantium inventore, porro dolor dolorum tenetur recusandae ipsum omnis eaque. Cum officiis, excepturi amet impedit esse quos nemo eius maiores doloremque ipsum iure quibusdam odio accusamus magni voluptatum fugiat voluptates distinctio eveniet. Ab illo ad ipsa assumenda. Quisquam, excepturi voluptatibus! Dolor fugiat ipsa odit, asperiores dolore repellat rem aliquam sint aliquid ratione quidem similique accusamus, iusto itaque delectus illum obcaecati deleniti necessitatibus repellendus saepe labore possimus voluptatibus nesciunt? Harum provident dolorum fugiat eos aliquam corrupti nemo itaque alias! Adipisci, nesciunt aliquid qui vel explicabo itaque totam obcaecati recusandae mollitia?', '2022-04-03', 'New York, US', '1673068375.jpg', 156),
(20, 'Alexandra Daddario', 'female', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus, accusantium ratione. Reiciendis ratione minus omnis tempore maiores aspernatur, vel, quam necessitatibus fugiat, deleniti incidunt magni corporis repudiandae. Sapiente culpa delectus natus quam sint, officia error laboriosam sunt veritatis voluptas id minima, laborum, eos cum sit reprehenderit in architecto nesciunt at quos harum aperiam blanditiis. Suscipit nihil corrupti laudantium ducimus, recusandae, exercitationem iure, quae at autem cum enim maiores nulla? Sint architecto, eveniet iure nulla, omnis nisi, facilis eligendi rerum autem reiciendis impedit. Ea vel quisquam optio quasi, voluptates tenetur qui aliquam iusto, totam explicabo sunt velit asperiores debitis officiis repudiandae officia maxime! Nemo facere quisquam cumque, voluptas sequi id voluptates sit accusantium inventore, porro dolor dolorum tenetur recusandae ipsum omnis eaque. Cum officiis, excepturi amet impedit esse quos nemo eius maiores doloremque ipsum iure quibusdam odio accusamus magni voluptatum fugiat voluptates distinctio eveniet. Ab illo ad ipsa assumenda. Quisquam, excepturi voluptatibus! Dolor fugiat ipsa odit, asperiores dolore repellat rem aliquam sint aliquid ratione quidem similique accusamus, iusto itaque delectus illum obcaecati deleniti necessitatibus repellendus saepe labore possimus voluptatibus nesciunt? Harum provident dolorum fugiat eos aliquam corrupti nemo itaque alias! Adipisci, nesciunt aliquid qui vel explicabo itaque totam obcaecati recusandae mollitia?', '2022-07-31', 'New York, US', '1673068402.jpg', 189);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `genre`
--

CREATE TABLE `genre` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `genre`
--

INSERT INTO `genre` (`id`, `name`) VALUES
(1, 'Comedy'),
(2, 'Sci-Fi'),
(3, 'Horror'),
(4, 'Romance'),
(5, 'Action'),
(6, 'Thriller'),
(7, 'Drama'),
(8, 'Mystery'),
(9, 'Crime'),
(10, 'Animation'),
(11, 'Adventure'),
(12, 'Fantasy');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2020_12_31_092330_create_genre_table', 1),
(6, '2021_12_30_112505_create_actor_table', 1),
(7, '2022_12_30_110812_create_movie_table', 1),
(8, '2023_01_04_050516_create_movie_genre_table', 1),
(9, '2023_01_04_054232_create_movie_actor_table', 1),
(10, '2023_01_05_143332_create_watchlist_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `movie`
--

CREATE TABLE `movie` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `director` varchar(255) NOT NULL,
  `release_date` date NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `bg_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `movie`
--

INSERT INTO `movie` (`id`, `title`, `description`, `director`, `release_date`, `image_url`, `bg_url`) VALUES
(1, 'Spider-Man: No Way Home', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nisi officia quibusdam reiciendis omnis hic, facere est a blanditiis ad vero deserunt magnam voluptate nulla consectetur tenetur adipisci nesciunt pariatur maxime.', 'Jon Watts', '2022-08-24', 'movie_.1673011845.jpg', 'bg_.1673011845.jpeg'),
(2, 'Venom Let There Be Carnage', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nisi officia quibusdam reiciendis omnis hic, facere est a blanditiis ad vero deserunt magnam voluptate nulla consectetur tenetur adipisci nesciunt pariatur maxime.', 'Andy Serkis', '2022-09-06', 'movie_.1673011873.jpg', 'bg_.1673011873.jpg'),
(5, 'The Matrix Ressurections', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nisi officia quibusdam reiciendis omnis hic, facere est a blanditiis ad vero deserunt magnam voluptate nulla consectetur tenetur adipisci nesciunt pariatur maxime.', 'Lana Wachowski', '2022-11-23', 'movie_.1673012011.jpg', 'bg_.1673012011.jpg'),
(6, 'Zombieland', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Eveniet minus a molestiae doloremque ipsam aspernatur.', 'Ruben Fleischer', '2021-06-14', 'movie_.1673018154.jpg', 'bg_.1673018154.jpg'),
(7, 'Zombieland Double Tap', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Eveniet minus a molestiae doloremque ipsam aspernatur.', 'Ruben Fleischer', '2022-06-24', 'movie_.1673018295.jpg', 'bg_.1673018295.jpg'),
(8, 'Dr. Strange Multiverse of Madness', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Eum tempora deleniti distinctio vero sint unde.', 'Sam Raimi', '2022-11-08', 'movie_.1673067269.jpeg', 'bg_.1673067269.jpg'),
(9, 'Grown Ups', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Consequuntur, mollitia possimus? Quasi accusantium exercitationem inventore!', 'Dennis Dugan', '2010-02-23', 'movie_.1673067657.jpg', 'bg_.1673067657.jpg'),
(10, 'Grown Ups 2', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. A quaerat dignissimos aspernatur soluta, necessitatibus eveniet.', 'Dennis Dugan', '2013-01-08', 'movie_.1673067701.jpg', 'bg_.1673067701.jpg'),
(11, 'Uncharted', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Aliquam aliquid odit quibusdam excepturi, laudantium maiores!', 'Ruben Fleischer', '2022-04-11', 'movie_.1673067911.jpg', 'bg_.1673067911.jpg'),
(12, 'Oldboy', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Aliquam aliquid odit quibusdam excepturi, laudantium maiores!', 'Spike Lee', '2013-04-23', 'movie_.1673068140.jpg', 'bg_.1673068140.jpg'),
(13, 'Baywatch', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Aliquam aliquid odit quibusdam excepturi, laudantium maiores!', 'Seth Gordon', '2017-04-07', 'movie_.1673068525.jpg', 'bg_.1673068525.jpg'),
(14, 'The Greatest Showman', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Aliquam aliquid odit quibusdam excepturi, laudantium maiores!', 'Michael Gracey', '2017-12-29', 'movie_.1673068600.jpg', 'bg_.1673068600.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `movie_actor`
--

CREATE TABLE `movie_actor` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `movie_id` bigint(20) UNSIGNED NOT NULL,
  `actor_id` bigint(20) UNSIGNED NOT NULL,
  `character_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `movie_actor`
--

INSERT INTO `movie_actor` (`id`, `movie_id`, `actor_id`, `character_name`) VALUES
(1, 1, 1, 'Peter Parker'),
(2, 1, 2, 'MJ'),
(3, 1, 3, 'Dr. Strange'),
(4, 2, 4, 'Venom'),
(5, 2, 5, 'Carnage'),
(8, 5, 6, 'Neo'),
(9, 6, 5, 'Tallahassee'),
(10, 6, 8, 'Wichita'),
(11, 6, 9, 'Columbus'),
(12, 7, 5, 'Tallahassee'),
(13, 7, 9, 'Columbus'),
(14, 7, 8, 'Wichita'),
(15, 8, 3, 'Dr. Strange'),
(16, 8, 10, 'Scarlet Witch'),
(17, 8, 11, 'America'),
(18, 9, 12, 'Lenny Feder'),
(19, 9, 13, 'Roxanne Chase'),
(20, 9, 14, 'Marcus Higgins'),
(21, 10, 12, 'Lenny Feder'),
(22, 10, 13, 'Roxanne Chase'),
(23, 10, 14, 'Marcus Higgins'),
(24, 11, 1, 'Nathan Drake'),
(25, 11, 15, 'Victor Sullivan'),
(26, 12, 16, 'Joe Doucett'),
(27, 12, 10, 'Marie Sebastian'),
(28, 13, 19, 'Mitch Buccanon'),
(29, 13, 18, 'Matt Brody'),
(30, 13, 20, 'Summer Quinn'),
(31, 14, 17, 'P.T. Barnum'),
(32, 14, 18, 'Phillip Carlyle'),
(33, 14, 2, 'Anne Wheeler');

-- --------------------------------------------------------

--
-- Table structure for table `movie_genre`
--

CREATE TABLE `movie_genre` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `movie_id` bigint(20) UNSIGNED NOT NULL,
  `genre_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `movie_genre`
--

INSERT INTO `movie_genre` (`id`, `movie_id`, `genre_id`) VALUES
(1, 1, 5),
(2, 1, 11),
(3, 1, 12),
(4, 2, 1),
(5, 2, 5),
(6, 2, 11),
(12, 5, 2),
(13, 5, 5),
(14, 6, 1),
(15, 6, 3),
(16, 6, 4),
(17, 6, 5),
(18, 7, 1),
(19, 7, 3),
(20, 7, 4),
(21, 7, 5),
(22, 7, 6),
(23, 8, 5),
(24, 8, 6),
(25, 8, 11),
(26, 8, 12),
(27, 9, 1),
(28, 9, 4),
(29, 10, 1),
(30, 10, 4),
(31, 10, 7),
(32, 11, 5),
(33, 11, 8),
(34, 11, 11),
(35, 12, 5),
(36, 12, 6),
(37, 12, 9),
(38, 13, 1),
(39, 13, 5),
(40, 13, 11),
(41, 14, 4),
(42, 14, 7),
(43, 14, 11);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `dob` date NOT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'member',
  `image_url` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `dob`, `role`, `image_url`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@example.com', '$2y$10$4KYCZZnHztvj5hMZoRYRtuiHrkCrvBj0TV.Y/g2sTB50tR/dFlRju', '2023-01-06', 'admin', 'profile.webp', 'ogQD0x8SlGT5xTYAxes3PH5UHOUV2Gve9yy3o4TUrVq229yS0zYNxy67Fvt2', '2023-01-06 06:26:14', NULL),
(2, 'gegek', 'kevinmt2342@gmail.com', '$2y$10$H2NXVK622JAxZ9qYTwj2beBRkGaJE/xFCuwAkSNxClr.rP5ox5xEO', '2023-01-06', 'member', 'gegek.1673013628.jpg', 'z6Aw3A5ZMTTwBQlM7PXM6i21FcXXYrR2vaUn27eeeHuig2LRnJKZewCJjE0f', '2023-01-06 07:00:15', '2023-01-06 07:00:28');

-- --------------------------------------------------------

--
-- Table structure for table `watchlist`
--

CREATE TABLE `watchlist` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `movie_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `watchlist`
--

INSERT INTO `watchlist` (`id`, `user_id`, `movie_id`, `status`) VALUES
(1, 2, 1, 'Planning'),
(2, 2, 2, 'Planning'),
(3, 2, 5, 'Planning'),
(4, 2, 6, 'Planning'),
(5, 2, 7, 'Planning');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `actor`
--
ALTER TABLE `actor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movie_actor`
--
ALTER TABLE `movie_actor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `movie_actor_movie_id_foreign` (`movie_id`),
  ADD KEY `movie_actor_actor_id_foreign` (`actor_id`);

--
-- Indexes for table `movie_genre`
--
ALTER TABLE `movie_genre`
  ADD PRIMARY KEY (`id`),
  ADD KEY `movie_genre_movie_id_foreign` (`movie_id`),
  ADD KEY `movie_genre_genre_id_foreign` (`genre_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `watchlist`
--
ALTER TABLE `watchlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `watchlist_user_id_foreign` (`user_id`),
  ADD KEY `watchlist_movie_id_foreign` (`movie_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `actor`
--
ALTER TABLE `actor`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `genre`
--
ALTER TABLE `genre`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `movie`
--
ALTER TABLE `movie`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `movie_actor`
--
ALTER TABLE `movie_actor`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `movie_genre`
--
ALTER TABLE `movie_genre`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `watchlist`
--
ALTER TABLE `watchlist`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `movie_actor`
--
ALTER TABLE `movie_actor`
  ADD CONSTRAINT `movie_actor_actor_id_foreign` FOREIGN KEY (`actor_id`) REFERENCES `actor` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `movie_actor_movie_id_foreign` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `movie_genre`
--
ALTER TABLE `movie_genre`
  ADD CONSTRAINT `movie_genre_genre_id_foreign` FOREIGN KEY (`genre_id`) REFERENCES `genre` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `movie_genre_movie_id_foreign` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `watchlist`
--
ALTER TABLE `watchlist`
  ADD CONSTRAINT `watchlist_movie_id_foreign` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`id`),
  ADD CONSTRAINT `watchlist_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
