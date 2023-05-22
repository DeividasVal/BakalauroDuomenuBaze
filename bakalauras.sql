-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2023 at 10:02 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bakalauras`
--

-- --------------------------------------------------------

--
-- Table structure for table `atsiliepimas`
--

CREATE TABLE `atsiliepimas` (
  `atsiliepimo_id` int(11) NOT NULL,
  `korepetitoriaus_id` int(11) NOT NULL,
  `profilio_id` int(11) NOT NULL,
  `mokinio_id` int(11) NOT NULL,
  `atsiliepimo_tekstas` varchar(800) NOT NULL,
  `ivertinimas` float NOT NULL,
  `laikas` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `atsiliepimas`
--

INSERT INTO `atsiliepimas` (`atsiliepimo_id`, `korepetitoriaus_id`, `profilio_id`, `mokinio_id`, `atsiliepimo_tekstas`, `ivertinimas`, `laikas`) VALUES
(13, 28, 37, 78, 'Geras korepetitorius! Padėjo išlaikyti egzaminą!', 5, '2023-04-22 15:32:36'),
(14, 28, 37, 82, 'Padejo su namu darbais.', 4, '2023-05-10 18:16:36'),
(16, 28, 37, 91, 'Geras korepetitorius!', 5, '2023-05-10 19:49:47'),
(17, 29, 38, 81, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum congue nisl eu sollicitudin scelerisque. Pellentesque ex nibh, tempor ultricies mollis sit amet, malesuada non quam. Sed a libero quis nisl scelerisque porttitor. Vestibulum suscipit, odio nec tincidunt hendrerit, lacus metus commodo tellus, vel posuere massa tellus ut arcu. Vivamus tortor enim, semper vel metus sit amet, tincidunt consectetur risus. Donec pharetra eros est. Nulla augue ligula, sagittis in enim laoreet, consectetur sollicitudin leo. Duis sed nibh semper, dignissim mauris sit amet, aliquam velit.', 4, '2023-05-10 20:06:27'),
(18, 29, 38, 78, 'Padėjo su VBE.', 3, '2023-05-10 20:07:07'),
(23, 29, 38, 96, 'Atsiliepimas.', 4, '2023-05-10 20:58:12');

-- --------------------------------------------------------

--
-- Table structure for table `isimena`
--

CREATE TABLE `isimena` (
  `profilio_id` int(11) NOT NULL,
  `mokinio_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `isimena`
--

INSERT INTO `isimena` (`profilio_id`, `mokinio_id`) VALUES
(37, 78),
(37, 83),
(39, 86),
(39, 88),
(39, 90),
(40, 83),
(40, 86),
(40, 88),
(40, 89),
(40, 90),
(40, 96);

-- --------------------------------------------------------

--
-- Table structure for table `korepetitorius`
--

CREATE TABLE `korepetitorius` (
  `korepetitoriaus_id` int(11) NOT NULL,
  `pilnas_korepetitoriaus_vardas` varchar(80) NOT NULL,
  `korepetitoriaus_vartotojo_vardas` varchar(30) NOT NULL,
  `korepetitoriaus_slaptazodis` varchar(80) NOT NULL,
  `korepetitoriaus_el_pastas` varchar(50) NOT NULL,
  `korepetitoriaus_nuotrauka` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `korepetitorius`
--

INSERT INTO `korepetitorius` (`korepetitoriaus_id`, `pilnas_korepetitoriaus_vardas`, `korepetitoriaus_vartotojo_vardas`, `korepetitoriaus_slaptazodis`, `korepetitoriaus_el_pastas`, `korepetitoriaus_nuotrauka`) VALUES
(28, 'Gediminas Gediminaitis', 'gediminas123', 'gediminas', 'gediminas.gediminaitis@gmail.com', 'uploads/96a539ff1c01448923fb98b00a8ac401.jpg'),
(29, 'Rokas Rokaitis', 'rokas123', 'rokas', 'rokas.rokaitis@gmail.com', 'uploads/GettyImages-178826352-MLedit-e1644939915776.jpg'),
(30, 'Povilas Povilaitis', 'povilas123', 'povilas', 'povilas.povilaitis@gmail.com', 'uploads/unsplash-image-2l0CWTpcChI.jpg'),
(31, 'Mantas Mantaitis', 'mantas123', 'mantas', 'mantas.mantaitis@gmail.com', 'uploads/GettyImages-1263432693.jpg'),
(35, 'Darius Daraitis', 'darius123', 'darius', 'darius@gmail.com', 'uploads/237-536x354.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `korepetitorius_profilis`
--

CREATE TABLE `korepetitorius_profilis` (
  `profilio_id` int(11) NOT NULL,
  `korepetitoriaus_id` int(11) NOT NULL,
  `profilio_adresas` varchar(50) COLLATE utf8mb4_lithuanian_ci NOT NULL,
  `profilio_miestas` varchar(30) COLLATE utf8mb4_lithuanian_ci NOT NULL,
  `profilio_mokymo_tipas` int(11) NOT NULL,
  `profilio_dalykai` varchar(300) COLLATE utf8mb4_lithuanian_ci NOT NULL,
  `profilio_val` varchar(30) COLLATE utf8mb4_lithuanian_ci NOT NULL,
  `profilio_aprasymas` varchar(2000) COLLATE utf8mb4_lithuanian_ci NOT NULL,
  `profilio_istaiga` varchar(200) COLLATE utf8mb4_lithuanian_ci NOT NULL,
  `profilio_dalykai_istaigoj` varchar(200) COLLATE utf8mb4_lithuanian_ci NOT NULL,
  `profilio_prieinamumas` varchar(500) COLLATE utf8mb4_lithuanian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_lithuanian_ci;

--
-- Dumping data for table `korepetitorius_profilis`
--

INSERT INTO `korepetitorius_profilis` (`profilio_id`, `korepetitoriaus_id`, `profilio_adresas`, `profilio_miestas`, `profilio_mokymo_tipas`, `profilio_dalykai`, `profilio_val`, `profilio_aprasymas`, `profilio_istaiga`, `profilio_dalykai_istaigoj`, `profilio_prieinamumas`) VALUES
(37, 28, 'Mindaugo g. 9', 'Vilnius', 3, '[\"Matematika\",\"Fizika\"]', '15', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ut bibendum elit. Nulla non enim massa. Vivamus a mauris eleifend elit blandit laoreet. Praesent at lacus et ante maximus egestas. Praesent bibendum ligula in sodales ullamcorper. Vivamus purus tortor, ullamcorper sed mauris a, vehicula commodo sem. Duis malesuada velit vitae mollis pellentesque. Nulla at sapien neque. Etiam id elit eget leo hendrerit ornare at in erat. Etiam quam magna, aliquam vel scelerisque quis, laoreet eu libero. Nam posuere accumsan mauris, eget efficitur massa eleifend ut.\n\nSed elementum libero vel facilisis rhoncus. Donec ligula eros, venenatis in libero sit amet, consequat euismod nisl. Fusce vel ante sit amet felis congue luctus quis at elit. Aenean finibus, mauris vel pretium rutrum, purus orci eleifend lectus, vel faucibus felis lectus pellentesque arcu. Nullam tempus leo vitae est porttitor sagittis. Donec odio turpis, ultrices eu faucibus vitae, viverra at ipsum. Suspendisse imperdiet eros non quam dignissim, sit amet egestas lectus tristique. Pellentesque congue tellus est, a semper eros laoreet at.', 'Vilniaus Universitetas', 'Fizika', '[[false,false,false,false,false,false,false],[false,false,false,false,false,false,false],[true,true,false,true,true,false,false],[true,true,false,true,true,false,false],[true,true,false,true,true,false,false],[true,true,false,false,false,false,false],[false,false,false,false,false,false,false],[false,false,false,false,false,false,false]]'),
(38, 29, 'Matematikos g. 54-19', 'Kaunas', 1, '[\"Matematika\",\"Fizika\"]', '10', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ut bibendum elit. Nulla non enim massa. Vivamus a mauris eleifend elit blandit laoreet. Praesent at lacus et ante maximus egestas. Praesent bibendum ligula in sodales ullamcorper. Vivamus purus tortor, ullamcorper sed mauris a, vehicula commodo sem. Duis malesuada velit vitae mollis pellentesque. Nulla at sapien neque. Etiam id elit eget leo hendrerit ornare at in erat. Etiam quam magna, aliquam vel scelerisque quis, laoreet eu libero. Nam posuere accumsan mauris, eget efficitur massa eleifend ut.\n\nSed elementum libero vel facilisis rhoncus. Donec ligula eros, venenatis in libero sit amet, consequat euismod nisl. Fusce vel ante sit amet felis congue luctus quis at elit. Aenean finibus, mauris vel pretium rutrum, purus orci eleifend lectus, vel faucibus felis lectus pellentesque arcu. Nullam tempus leo vitae est porttitor sagittis. Donec odio turpis, ultrices eu faucibus vitae, viverra at ipsum. Suspendisse imperdiet eros non quam dignissim, sit amet egestas lectus tristique. Pellentesque congue tellus est, a semper eros laoreet at.', 'Vilniaus Universitetas', 'Matematika ir matematikos taikymai\n', '[[true,true,true,true,true,false,false],[true,true,true,true,true,false,false],[true,true,true,true,true,false,false],[true,true,true,false,false,false,false],[true,true,true,false,false,false,false],[false,false,false,false,false,false,false],[false,false,false,false,false,false,false],[false,false,false,false,false,false,false]]'),
(39, 30, 'Naugarduko g. 9', 'Klaipėda', 3, '[\"Informatika\"]', '5', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ut bibendum elit. Nulla non enim massa. Vivamus a mauris eleifend elit blandit laoreet. Praesent at lacus et ante maximus egestas. Praesent bibendum ligula in sodales ullamcorper. Vivamus purus tortor, ullamcorper sed mauris a, vehicula commodo sem. Duis malesuada velit vitae mollis pellentesque. Nulla at sapien neque. Etiam id elit eget leo hendrerit ornare at in erat. Etiam quam magna, aliquam vel scelerisque quis, laoreet eu libero. Nam posuere accumsan mauris, eget efficitur massa eleifend ut.\n\nSed elementum libero vel facilisis rhoncus. Donec ligula eros, venenatis in libero sit amet, consequat euismod nisl. Fusce vel ante sit amet felis congue luctus quis at elit. Aenean finibus, mauris vel pretium rutrum, purus orci eleifend lectus, vel faucibus felis lectus pellentesque arcu. Nullam tempus leo vitae est porttitor sagittis. Donec odio turpis, ultrices eu faucibus vitae, viverra at ipsum. Suspendisse imperdiet eros non quam dignissim, sit amet egestas lectus tristique. Pellentesque congue tellus est, a semper eros laoreet at.', 'Vilniaus Simono Daukanto gimnazija', 'Informatika 10-12 kl.', '[[true,false,false,false,false,false,false],[false,false,false,false,false,false,false],[false,true,false,false,false,false,false],[false,true,false,false,false,false,false],[false,false,false,false,false,false,false],[false,false,false,false,false,false,false],[false,false,false,false,false,false,false],[false,false,false,false,false,false,false]]'),
(40, 31, 'Trakų g. 7', 'Vilnius', 2, '[\"Fizika\",\"Matematika\"]', '15', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ut bibendum elit. Nulla non enim massa. Vivamus a mauris eleifend elit blandit laoreet. Praesent at lacus et ante maximus egestas. Praesent bibendum ligula in sodales ullamcorper. Vivamus purus tortor, ullamcorper sed mauris a, vehicula commodo sem. Duis malesuada velit vitae mollis pellentesque. Nulla at sapien neque. Etiam id elit eget leo hendrerit ornare at in erat. Etiam quam magna, aliquam vel scelerisque quis, laoreet eu libero. Nam posuere accumsan mauris, eget efficitur massa eleifend ut.\n\nSed elementum libero vel facilisis rhoncus. Donec ligula eros, venenatis in libero sit amet, consequat euismod nisl. Fusce vel ante sit amet felis congue luctus quis at elit. Aenean finibus, mauris vel pretium rutrum, purus orci eleifend lectus, vel faucibus felis lectus pellentesque arcu. Nullam tempus leo vitae est porttitor sagittis. Donec odio turpis, ultrices eu faucibus vitae, viverra at ipsum. Suspendisse imperdiet eros non quam dignissim, sit amet egestas lectus tristique. Pellentesque congue tellus est, a semper eros laoreet at.', 'VILNIUS TECH', 'Aplinkos apsaugos inžinerija', '[[true,true,true,true,true,false,false],[true,true,true,true,true,false,false],[true,true,true,true,true,false,false],[true,true,true,true,true,false,false],[false,false,false,false,false,false,false],[false,false,false,false,false,false,false],[false,false,false,false,false,false,false],[false,false,false,false,false,false,false]]'),
(43, 35, 'Dariaus g. 1', 'Vilnius', 1, '[\"Istorija\"]', '5', 'Aprasymas.', 'Vilniaus Universitetas', 'Istorija', '[[true,true,false,false,false,true,false],[true,true,false,false,false,true,false],[true,true,false,false,false,false,false],[false,false,false,false,false,false,false],[false,false,false,false,false,true,false],[false,false,false,false,false,false,false],[false,false,false,false,false,false,false],[false,false,false,false,false,false,false]]');

-- --------------------------------------------------------

--
-- Table structure for table `mokinys`
--

CREATE TABLE `mokinys` (
  `mokinio_id` int(11) NOT NULL,
  `pilnas_mokinio_vardas` varchar(80) NOT NULL,
  `mokinio_vartotojo_vardas` varchar(30) NOT NULL,
  `mokinio_slaptazodis` varchar(80) NOT NULL,
  `mokinio_el_pastas` varchar(50) NOT NULL,
  `mokinio_nuotrauka` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mokinys`
--

INSERT INTO `mokinys` (`mokinio_id`, `pilnas_mokinio_vardas`, `mokinio_vartotojo_vardas`, `mokinio_slaptazodis`, `mokinio_el_pastas`, `mokinio_nuotrauka`) VALUES
(78, 'Petras Petraitis', 'petras123', 'petras', 'petras.petraitis@gmail.com', 'uploads/most_independent_dog_breeds_2880_600.jpg'),
(80, 'Lukas Lukaitis', 'lukas123', 'lukas', 'lukas.lukaitis@gmail.com', ''),
(81, 'Tomas Tomaitis', 'tomas123', 'tomas', 'tomas.tomaitis@gmail.com', 'uploads/d7bd58ee666e8e41721edb6e00f2f88e.jpg'),
(82, 'Jonas Jonaitis', 'jonas123', 'jonas', 'jonas.jonaitis@gmail.com', ''),
(96, 'Rimas Rimas', 'rimas123', 'rimas', 'rimas@gmail.com', 'uploads/1f7d4bbbe27c33090348615adfc0e4c8--sled-dogs-dolls.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `pamoku_medziaga`
--

CREATE TABLE `pamoku_medziaga` (
  `pam_mok_id` int(11) NOT NULL,
  `mokinio_id` int(11) NOT NULL,
  `korepetitoriaus_id` int(11) NOT NULL,
  `failas` varchar(500) NOT NULL,
  `pavadinimas` varchar(100) NOT NULL,
  `laikas_issiusta` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pamoku_medziaga`
--

INSERT INTO `pamoku_medziaga` (`pam_mok_id`, `mokinio_id`, `korepetitoriaus_id`, `failas`, `pavadinimas`, `laikas_issiusta`) VALUES
(45, 96, 29, 'uploads/sample-1.pdf', 'Formules', '2023-05-10 20:56:15');

-- --------------------------------------------------------

--
-- Table structure for table `uzklausos`
--

CREATE TABLE `uzklausos` (
  `id` int(11) NOT NULL,
  `mokinio_id` int(11) NOT NULL,
  `korepetitoriaus_id` int(11) NOT NULL,
  `būsena` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `uzklausos`
--

INSERT INTO `uzklausos` (`id`, `mokinio_id`, `korepetitoriaus_id`, `būsena`) VALUES
(47, 80, 28, 0),
(49, 81, 28, 0),
(50, 82, 28, 0),
(53, 82, 30, 0),
(75, 78, 30, 0),
(84, 81, 29, 0),
(85, 78, 29, 2),
(88, 96, 29, 1);

-- --------------------------------------------------------

--
-- Table structure for table `zinutes`
--

CREATE TABLE `zinutes` (
  `zinutes_id` int(11) NOT NULL,
  `gavejo_id` int(11) NOT NULL,
  `siuntejo_id` int(11) NOT NULL,
  `tekstas_zinutes` varchar(300) NOT NULL,
  `laikas_zinutes` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `zinutes`
--

INSERT INTO `zinutes` (`zinutes_id`, `gavejo_id`, `siuntejo_id`, `tekstas_zinutes`, `laikas_zinutes`) VALUES
(85, 29, 96, 'Sveikas', '2023-05-10 20:56:05'),
(86, 96, 29, 'sveiki', '2023-05-10 20:58:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `atsiliepimas`
--
ALTER TABLE `atsiliepimas`
  ADD PRIMARY KEY (`atsiliepimo_id`);

--
-- Indexes for table `isimena`
--
ALTER TABLE `isimena`
  ADD PRIMARY KEY (`profilio_id`,`mokinio_id`);

--
-- Indexes for table `korepetitorius`
--
ALTER TABLE `korepetitorius`
  ADD PRIMARY KEY (`korepetitoriaus_id`),
  ADD UNIQUE KEY `korepetitoriaus_vartotojo_vardas` (`korepetitoriaus_vartotojo_vardas`),
  ADD UNIQUE KEY `korepetitoriaus_el_pastas` (`korepetitoriaus_el_pastas`);

--
-- Indexes for table `korepetitorius_profilis`
--
ALTER TABLE `korepetitorius_profilis`
  ADD PRIMARY KEY (`profilio_id`),
  ADD UNIQUE KEY `korepetitoriaus_id` (`korepetitoriaus_id`);

--
-- Indexes for table `mokinys`
--
ALTER TABLE `mokinys`
  ADD PRIMARY KEY (`mokinio_id`),
  ADD UNIQUE KEY `mokinio_vartotojo_vardas` (`mokinio_vartotojo_vardas`),
  ADD UNIQUE KEY `mokinio_el_pastas` (`mokinio_el_pastas`);

--
-- Indexes for table `pamoku_medziaga`
--
ALTER TABLE `pamoku_medziaga`
  ADD PRIMARY KEY (`pam_mok_id`);

--
-- Indexes for table `uzklausos`
--
ALTER TABLE `uzklausos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `korepetitoriaus_id` (`korepetitoriaus_id`);

--
-- Indexes for table `zinutes`
--
ALTER TABLE `zinutes`
  ADD PRIMARY KEY (`zinutes_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `atsiliepimas`
--
ALTER TABLE `atsiliepimas`
  MODIFY `atsiliepimo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `korepetitorius`
--
ALTER TABLE `korepetitorius`
  MODIFY `korepetitoriaus_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `korepetitorius_profilis`
--
ALTER TABLE `korepetitorius_profilis`
  MODIFY `profilio_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `mokinys`
--
ALTER TABLE `mokinys`
  MODIFY `mokinio_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `pamoku_medziaga`
--
ALTER TABLE `pamoku_medziaga`
  MODIFY `pam_mok_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `uzklausos`
--
ALTER TABLE `uzklausos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `zinutes`
--
ALTER TABLE `zinutes`
  MODIFY `zinutes_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
