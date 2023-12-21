-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 21, 2023 at 11:42 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perfectcarfit`
--

-- --------------------------------------------------------

--
-- Table structure for table `car_reviews`
--

CREATE TABLE `car_reviews` (
  `id` int(6) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `carName` varchar(255) NOT NULL,
  `carYear` varchar(4) NOT NULL,
  `description` text NOT NULL,
  `type` varchar(20) NOT NULL,
  `carImage` blob DEFAULT NULL,
  `upvotes` int(6) NOT NULL,
  `downvotes` int(6) NOT NULL,
  `hasVoted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `car_reviews`
--

INSERT INTO `car_reviews` (`id`, `username`, `carName`, `carYear`, `description`, `type`, `carImage`, `upvotes`, `downvotes`, `hasVoted`) VALUES
(20, 'FirstTimeBuyer', 'Subaru Outback', '2017', 'Helpful guide for first-time buyers looking at the Subaru Outback.', 'guide', '', 0, 0, 0),
(21, 'DailyDriver', 'Toyota Camry', '2021', 'Reliable daily driver with great fuel efficiency.', 'review', '', 0, 2, 0),
(22, 'DIYCarExpert', 'Honda Civic', '2020', 'Essential guide to DIY car maintenance for your Civic.', 'guide', '', 0, 0, 0),
(23, 'FuelEfficiencyPro', 'Ford Fusion Hybrid', '2019', 'Top tips for maximizing fuel efficiency in your Fusion Hybrid.', 'tips', '', 1, 0, 0),
(24, 'AutoJournalist', 'Chevrolet Malibu', '2018', 'In-depth review highlighting the pros and cons of the Malibu.', 'review', '', 0, 0, 0),
(25, 'FirstTimeBuyer', 'Subaru Outback', '2017', 'Helpful guide for first-time buyers looking at the Subaru Outback.', 'guide', '', 0, 0, 0),
(26, 'CarEnthusiast1', 'Tesla Model S', '2022', 'Impressed with the acceleration and cutting-edge technology!', 'review', '', 3, 0, 0),
(27, 'DailyDriver', 'Toyota Camry', '2021', 'Reliable daily driver with great fuel efficiency.', 'review', '', 0, 2, 0),
(28, 'DIYCarExpert', 'Honda Civic', '2020', 'Essential guide to DIY car maintenance for your Civic.', 'guide', '', 0, 0, 0),
(29, 'FuelEfficiencyPro', 'Ford Fusion Hybrid', '2019', 'Top tips for maximizing fuel efficiency in your Fusion Hybrid.', 'tips', '', 1, 0, 0),
(30, 'AutoJournalist', 'Chevrolet Malibu', '2018', 'In-depth review highlighting the pros and cons of the Malibu.', 'review', '', 0, 0, 0),
(31, 'FirstTimeBuyer', 'Subaru Outback', '2017', 'Helpful guide for first-time buyers looking at the Subaru Outback.', 'guide', '', 0, 0, 0),
(32, 'salim', 'BMW', '2023', 'i like it', 'review', '', 0, 0, 0),
(33, '', '', '', '', '', '', 0, 0, 0),
(34, 'salim', 'khalid', '12', '213', 'tips', '', 0, 0, 0),
(35, 'salim', 'uaris', '12', '213', 'tips', '', 0, 0, 0),
(36, 'salim', 'idk', '1232', 'efij3mi ofmo3 nfij43 ', 'tips', '', 0, 0, 0),
(37, 'khalid ', 'Honda', '2013', 'it works ', 'guide', '', 0, 0, 0),
(38, 'khalid ahmed', 'Honda sevic', '2020', 'no bad', 'review', '', 0, 0, 0),
(39, 'ali', 'tesla', '2023', 'sdkmaodn iqwund iq3', 'review', '', 0, 0, 0),
(40, 'car expert', 'audi', '2018', 'dssd wqkmd ejnfkjne wfjnerfwekj f', 'review', '', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `contact_form_entries`
--

CREATE TABLE `contact_form_entries` (
  `id` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_form_entries`
--

INSERT INTO `contact_form_entries` (`id`, `full_name`, `email`, `phone_number`, `message`, `created_at`) VALUES
(1, 'salim', 'xrelax9911@gmail.com', '93395574', 'ewfewfwefwefewf', '2023-12-21 06:11:44'),
(2, 'ali salim', 'neofnewbuhfbewhf@gmail.com', '93395599', 'dokwefi jewiufniweunf niew', '2023-12-21 09:31:29'),
(3, 'admowkmf ', 'wenfiwefuhbweufuewf@gmail.com', '92388272', 'ekjnfe nwfhnwei jnweou fhbhwb fnewhfb ewhlj fnlhewj fnew', '2023-12-21 10:26:21');

-- --------------------------------------------------------

--
-- Table structure for table `mytable`
--

CREATE TABLE `mytable` (
  `FIELD1` varchar(12) NOT NULL,
  `BRAND` varchar(6) NOT NULL,
  `SIZE` varchar(5) NOT NULL,
  `PRICE` varchar(6) NOT NULL,
  `TYPE` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mytable`
--

INSERT INTO `mytable` (`FIELD1`, `BRAND`, `SIZE`, `PRICE`, `TYPE`) VALUES
('Accord', 'Honda', 'Sedan', '16,000', 'Accord'),
('Avalon', 'Toyota', 'Sedan', '6,000', 'Avalon'),
('BMW 1 series', 'BMW', 'Sedan', '20,000', 'BMW 1 series'),
('BMW 2 coupe', 'BMW', 'Sedan', '22,000', 'BMW 2 coupe'),
('BMW 5 Series', 'BMW', 'Sedan', '24,999', 'BMW 5 Series'),
('BMW X1', 'BMW', 'SUV', '21,000', 'BMW X1'),
('Civic', 'Honda', 'Sedan', '10,000', 'Civic'),
('Civic Type R', 'Honda', 'Sedan', '18,000', 'Civic Type R'),
('Corolla', 'Toyota', 'Sedan', '5,000', 'Corolla'),
('Cybertruck', 'TESLA', 'Suv', '30,000', 'Cybertruck'),
('Land Cruiser', 'Toyota', 'SUV', '30,000', 'Land Cruiser'),
('Model S', 'TESLA', 'Sedan', '44,230', 'Model S'),
('Model X', 'TESLA', 'SUV', '42,000', 'Model X'),
('Model Y', 'TESLA', 'Sedan', '21,000', 'Model Y'),
('Odyssey', 'Honda', 'SUV', '21,000', 'Odyssey'),
('Supra', 'Toyota', 'Sedan', '23,000', 'Supra');

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

CREATE TABLE `newsletters` (
  `id` int(6) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `newsletters`
--

INSERT INTO `newsletters` (`id`, `email`) VALUES
(5, 'firefoxstudying.wr4tm@aleeas.com'),
(6, 'xrelax@gmail.com'),
(7, 'xrel@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `questionnaire_responses`
--

CREATE TABLE `questionnaire_responses` (
  `id` int(11) NOT NULL,
  `satisfaction` varchar(255) NOT NULL,
  `purposes` text DEFAULT NULL,
  `why_us` text DEFAULT NULL,
  `how_find` varchar(255) NOT NULL,
  `other_text` text DEFAULT NULL,
  `submission_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `questionnaire_responses`
--

INSERT INTO `questionnaire_responses` (`id`, `satisfaction`, `purposes`, `why_us`, `how_find`, `other_text`, `submission_time`) VALUES
(6, 'on', 'Interact with the community of perfectFit, Get personalized advice from car experts', 'ewk f neif uewfu wef mewo fnuwbeuf ewjn fwnep fbhwenj fjkew fhbnwej fnwhe fjnweh fnjwe nwj kf', 'Other', 'efw ewf we ew feag er raeger garea agre ager gera', '2023-12-21 06:33:40'),
(7, 'on', 'Interact with the community of perfectFit, Get personalized advice from car experts', 'ewk f neif uewfu wef mewo fnuwbeuf ewjn fwnep fbhwenj fjkew fhbnwej fnwhe fjnweh fnjwe nwj kf', 'Other', 'efw ewf we ew feag er raeger garea agre ager gera', '2023-12-21 06:35:11'),
(8, 'on', 'Interact with the community of perfectFit', 'ewkmmf kjewnfi newin fewokm fjewnfm oemwf bewhjubf nlkewnj fhwbejn flwehbfj niewhf ewjl fineh fwlihbe fewbh fjlewhb fwjen fedw', 'Google or other search engines', '', '2023-12-21 09:31:56'),
(9, 'on', 'Get personalized advice from car experts', 'ekjfwniewj nfiniu nfiewnf ienwfi mewi fniuewnf omewijbfn ewnf iewnf hewn fewijfn ijwenf ijwneij fjewnp few f', 'Referral', '', '2023-12-21 10:12:11'),
(10, 'on', 'Interact with the community of perfectFit, Get personalized advice from car experts', 'wef ewofn ewn fhuweno fieuNW UHFBEWyi fnJEW BFHIEWu fnewhi fbewbuh FHIUEW FWE fnjuE WBIF NWJEh fbinwe fbhiuwe fefw', 'Advertisement', '', '2023-12-21 10:26:52');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password_hash` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password_hash`) VALUES
(1, 'salim', 'newibfw@gmail.com', '$2y$10$plmlYAi3wu2jJrpgdQRWueGyNWiEaaowix6myBl1hpfTToXNOoNZK'),
(2, 'salim khalid', 'supermeme.laurel957@aleeas.com', '$2y$10$WqWUdRyDmjl2KUDezdAfWukqyLS3B.He51C4qXPcqj/.BfoU/lsNW'),
(3, 'khalid', 'ownfiewbf@gmail.com', '$2y$10$eKotHA3v0F3TO25Jf7QG6uDP0MNcfiSswS8u6ntj3O0A0uzD8XAyS'),
(5, 'khalid', 'xrelax9911@gmail.com', '$2y$10$R.zNc5JOVPEgMco7.fq1U.tQOgFYH36g5SNZTfpDnIWDWYh7CSBb2'),
(6, 'ali', 'firefoxstudying.wr4tm@aleeas.com', '$2y$10$vlkYjlVSqoZUnU.n/Au8J.ASZoZGdF0w1zSR1wzQfEQJ8kagjR6Fa'),
(7, 'leon', 'student@gmail.com', '$2y$10$M2WaD.RMXwNLcF2jjUdNn.YO39Fr9boIf.8Dy7qrfP81ka/tB6dha');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `car_reviews`
--
ALTER TABLE `car_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_form_entries`
--
ALTER TABLE `contact_form_entries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mytable`
--
ALTER TABLE `mytable`
  ADD PRIMARY KEY (`FIELD1`);

--
-- Indexes for table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questionnaire_responses`
--
ALTER TABLE `questionnaire_responses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `car_reviews`
--
ALTER TABLE `car_reviews`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `contact_form_entries`
--
ALTER TABLE `contact_form_entries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `questionnaire_responses`
--
ALTER TABLE `questionnaire_responses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
