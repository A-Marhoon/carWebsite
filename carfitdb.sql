-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2023 at 07:30 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carfitdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `communityreviews`
--

CREATE TABLE `communityreviews` (
  `reviewID` int(11) NOT NULL,
  `userName` varchar(50) NOT NULL,
  `carName` varchar(50) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `communityreviews`
--

INSERT INTO `communityreviews` (`reviewID`, `userName`, `carName`, `description`) VALUES
(1, 'John Doe', 'Toyota Camry', 'This community is fantastic!'),
(2, 'Alice Smith', 'Honda Civic', 'Great tips on maintaining my car.'),
(3, 'Bob Johnson', 'Ford Mustang', 'Awesome community, very helpful members.'),
(4, 'Emma Davis', 'Chevrolet Corvette', 'I found the best car detailing service through this community.'),
(5, 'Michael Wilson', 'Nissan Altima', 'The guides here are a lifesaver!'),
(6, 'Olivia Taylor', 'BMW X5', 'Tips for long drives are spot on.'),
(7, 'William Miller', 'Audi A4', 'Impressed with the knowledge shared by community members.'),
(8, 'Sophia Brown', 'Volkswagen Golf', 'This community is a must for car enthusiasts.'),
(9, 'Ethan Davis', 'Mercedes-Benz S-Class', 'The reviews helped me choose the perfect car.'),
(10, 'Ava Johnson', 'Jeep Wrangler', 'Excellent community support for off-road adventures.');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(1, 'John Doe', 'john.doe@example.com', 'password1'),
(2, 'Jane Smith', 'jane.smith@example.com', 'password2'),
(3, 'Bob Johnson', 'bob.johnson@example.com', 'password3'),
(4, 'Alice Williams', 'alice.williams@example.com', 'password4'),
(5, 'Michael Brown', 'michael.brown@example.com', 'password5'),
(6, 'Emily Davis', 'emily.davis@example.com', 'password6'),
(7, 'Daniel Wilson', 'daniel.wilson@example.com', 'password7'),
(8, 'Olivia Moore', 'olivia.moore@example.com', 'password8'),
(9, 'David Taylor', 'david.taylor@example.com', 'password9'),
(10, 'Sophia Miller', 'sophia.miller@example.com', 'password10');

-- --------------------------------------------------------

--
-- Table structure for table `year_make_model_trim_full_specs_by_teoalida_sample`
--

CREATE TABLE `year_make_model_trim_full_specs_by_teoalida_sample` (
  `ID` varchar(105) DEFAULT NULL,
  `Make` varchar(6) DEFAULT NULL,
  `Model` varchar(8) DEFAULT NULL,
  `Year` varchar(4) DEFAULT NULL,
  `Invoice` varchar(7) DEFAULT NULL,
  `Body type` varchar(11) DEFAULT NULL,
  `Drive type` varchar(17) DEFAULT NULL,
  `Combined MPG` varchar(2) DEFAULT NULL,
  `Range (miles)` varchar(15) DEFAULT NULL,
  `Pros` varchar(300) DEFAULT NULL,
  `Cons` varchar(227) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `year_make_model_trim_full_specs_by_teoalida_sample`
--

INSERT INTO `year_make_model_trim_full_specs_by_teoalida_sample` (`ID`, `Make`, `Model`, `Year`, `Invoice`, `Body type`, `Drive type`, `Combined MPG`, `Range (miles)`, `Pros`, `Cons`) VALUES
('401729246', 'BMW', '3 Series', '2018', '$32,955', 'Sedan', 'rear wheel drive', '28', '379.2/553.0 mi.', 'Balances sharp handling with a ride quality that won\'t beat you up;Engine choices offer power, smoothness and fuel efficiency;Interior is upscale and spacious, with logical, easy-to-use controls;', 'Base 320i model offers limited feature availability;Storage for small personal items is limited;'),
('401729240', 'BMW', '3 Series', '2018', '$34,815', 'Sedan', 'all wheel drive', '27', '363.4/537.2 mi.', 'Balances sharp handling with a ride quality that won\'t beat you up;Engine choices offer power, smoothness and fuel efficiency;Interior is upscale and spacious, with logical, easy-to-use controls;', 'Base 320i model offers limited feature availability;Storage for small personal items is limited;'),
('401729243', 'BMW', '3 Series', '2018', '$37,935', 'Sedan', 'rear wheel drive', '27', '363.4/537.2 mi.', 'Balances sharp handling with a ride quality that won\'t beat you up;Engine choices offer power, smoothness and fuel efficiency;Interior is upscale and spacious, with logical, easy-to-use controls;', 'Base 320i model offers limited feature availability;Storage for small personal items is limited;'),
('401729244', 'BMW', '3 Series', '2018', '$39,795', 'Sedan', 'all wheel drive', '27', '363.4/521.4 mi.', 'Balances sharp handling with a ride quality that won\'t beat you up;Engine choices offer power, smoothness and fuel efficiency;Interior is upscale and spacious, with logical, easy-to-use controls;', 'Base 320i model offers limited feature availability;Storage for small personal items is limited;'),
('401729238', 'BMW', '3 Series', '2018', '$46,025', 'Sedan', 'rear wheel drive', '25', '331.8/505.6 mi.', 'Balances sharp handling with a ride quality that won\'t beat you up;Engine choices offer power, smoothness and fuel efficiency;Interior is upscale and spacious, with logical, easy-to-use controls;', 'Base 320i model offers limited feature availability;Storage for small personal items is limited;'),
('401729239', 'BMW', '3 Series', '2018', '$47,885', 'Sedan', 'all wheel drive', '25', '331.8/489.8 mi.', 'Balances sharp handling with a ride quality that won\'t beat you up;Engine choices offer power, smoothness and fuel efficiency;Interior is upscale and spacious, with logical, easy-to-use controls;', 'Base 320i model offers limited feature availability;Storage for small personal items is limited;'),
('401729247', 'BMW', '3 Series', '2018', '$39,330', 'Sedan', 'rear wheel drive', '36', '465.0/645.0 mi.', 'Balances sharp handling with a ride quality that won\'t beat you up;Engine choices offer power, smoothness and fuel efficiency;Interior is upscale and spacious, with logical, easy-to-use controls;', 'Base 320i model offers limited feature availability;Storage for small personal items is limited;'),
('401729242', 'BMW', '3 Series', '2018', '$41,190', 'Sedan', 'all wheel drive', '34', '450.0/600.0 mi.', 'Balances sharp handling with a ride quality that won\'t beat you up;Engine choices offer power, smoothness and fuel efficiency;Interior is upscale and spacious, with logical, easy-to-use controls;', 'Base 320i model offers limited feature availability;Storage for small personal items is limited;'),
('401729241', 'BMW', '3 Series', '2018', '$43,420', 'Wagon', 'all wheel drive', '34', '450.0/600.0 mi.', 'Balances sharp handling with a ride quality that won\'t beat you up;Engine choices offer power, smoothness and fuel efficiency;Interior is upscale and spacious, with logical, easy-to-use controls;', 'Base 320i model offers limited feature availability;Storage for small personal items is limited;'),
('401729237', 'BMW', '3 Series', '2018', '$42,025', 'Wagon', 'all wheel drive', '27', '363.4/521.4 mi.', 'Balances sharp handling with a ride quality that won\'t beat you up;Engine choices offer power, smoothness and fuel efficiency;Interior is upscale and spacious, with logical, easy-to-use controls;', 'Base 320i model offers limited feature availability;Storage for small personal items is limited;'),
('401732583', 'BMW', '3 Series', '2018', '$62,345', 'Sedan', 'rear wheel drive', '20', '268.6/395.0 mi.', 'Agile handling without a penalizing ride quality;Upscale, well-equipped interior with room for four adults;Powerful brakes;', 'Other sport sedans sound better, go faster;Steering is less lively than in competitors;'),
('401789631', 'BMW', '3 Series', '2018', '$91,875', 'Sedan', 'rear wheel drive', '19', '254.4/349.8 mi.', 'Exclusive parts that add power and reduce weight;Limited production makes this a special model;Recalibrated suspension and bespoke interior;', 'Not good for long trips;Down on creature comforts;Limited availability;'),
('401828691', 'BMW', '3 Series', '2020', '$38,400', 'Sedan', 'rear wheel drive', '30', '405.6/561.6 mi.', 'Balances sharp handling with a ride quality that won\'t beat you up;Strong and efficient four- and six-cylinder engines;Interior is upscale and spacious, with logical, easy-to-use controls;', 'New iDrive system is more convoluted to use than before;Unrefined operation of some driver assist safety aids;No longer offers a manual transmission;'),
('401828692', 'BMW', '3 Series', '2020', '$40,260', 'Sedan', 'all wheel drive', '28', '390.0/530.4 mi.', 'Balances sharp handling with a ride quality that won\'t beat you up;Strong and efficient four- and six-cylinder engines;Interior is upscale and spacious, with logical, easy-to-use controls;', 'New iDrive system is more convoluted to use than before;Unrefined operation of some driver assist safety aids;No longer offers a manual transmission;'),
('401822513', 'Ford', 'F-150', '2020', '$27,451', 'Truck', 'rear wheel drive', '22', '437.0/575.0 mi.', 'High towing and payload capacities are ideal for work or play;Comfort and safety tech runs the gamut from blue-collar basic to luxury living;Multiple engines deliver balance of power and fuel economy;Raptor model\'s gonzo off-road ability;', 'Ride can be rough with an unladen bed;Fell short of some fuel economy estimates in our real-world testing;'),
('401822514', 'Ford', 'F-150', '2020', '$27,738', 'Truck', 'rear wheel drive', '22', '437.0/575.0 mi.', 'High towing and payload capacities are ideal for work or play;Comfort and safety tech runs the gamut from blue-collar basic to luxury living;Multiple engines deliver balance of power and fuel economy;Raptor model\'s gonzo off-road ability;', 'Ride can be rough with an unladen bed;Fell short of some fuel economy estimates in our real-world testing;'),
('401822520', 'Ford', 'F-150', '2020', '$31,888', 'Truck', 'four wheel drive', '20', '414.0/529.0 mi.', 'High towing and payload capacities are ideal for work or play;Comfort and safety tech runs the gamut from blue-collar basic to luxury living;Multiple engines deliver balance of power and fuel economy;Raptor model\'s gonzo off-road ability;', 'Ride can be rough with an unladen bed;Fell short of some fuel economy estimates in our real-world testing;'),
('401822518', 'Ford', 'F-150', '2020', '$32,174', 'Truck', 'four wheel drive', '20', '414.0/529.0 mi.', 'High towing and payload capacities are ideal for work or play;Comfort and safety tech runs the gamut from blue-collar basic to luxury living;Multiple engines deliver balance of power and fuel economy;Raptor model\'s gonzo off-road ability;', 'Ride can be rough with an unladen bed;Fell short of some fuel economy estimates in our real-world testing;'),
('401822519', 'Ford', 'F-150', '2020', '$32,500', 'Truck', 'rear wheel drive', '22', '437.0/575.0 mi.', 'High towing and payload capacities are ideal for work or play;Comfort and safety tech runs the gamut from blue-collar basic to luxury living;Multiple engines deliver balance of power and fuel economy;Raptor model\'s gonzo off-road ability;', 'Ride can be rough with an unladen bed;Fell short of some fuel economy estimates in our real-world testing;'),
('401822516', 'Ford', 'F-150', '2020', '$32,781', 'Truck', 'rear wheel drive', '22', '437.0/575.0 mi.', 'High towing and payload capacities are ideal for work or play;Comfort and safety tech runs the gamut from blue-collar basic to luxury living;Multiple engines deliver balance of power and fuel economy;Raptor model\'s gonzo off-road ability;', 'Ride can be rough with an unladen bed;Fell short of some fuel economy estimates in our real-world testing;'),
('401822517', 'Ford', 'F-150', '2020', '$35,704', 'Truck', 'four wheel drive', '20', '414.0/529.0 mi.', 'High towing and payload capacities are ideal for work or play;Comfort and safety tech runs the gamut from blue-collar basic to luxury living;Multiple engines deliver balance of power and fuel economy;Raptor model\'s gonzo off-road ability;', 'Ride can be rough with an unladen bed;Fell short of some fuel economy estimates in our real-world testing;'),
('401822515', 'Ford', 'F-150', '2020', '$35,984', 'Truck', 'four wheel drive', '20', '414.0/529.0 mi.', 'High towing and payload capacities are ideal for work or play;Comfort and safety tech runs the gamut from blue-collar basic to luxury living;Multiple engines deliver balance of power and fuel economy;Raptor model\'s gonzo off-road ability;', 'Ride can be rough with an unladen bed;Fell short of some fuel economy estimates in our real-world testing;'),
('401822561', 'Ford', 'F-150', '2020', '$31,353', 'Truck', 'rear wheel drive', '22', '437.0/575.0 mi.', 'High towing and payload capacities are ideal for work or play;Comfort and safety tech runs the gamut from blue-collar basic to luxury living;Multiple engines deliver balance of power and fuel economy;Raptor model\'s gonzo off-road ability;', 'Ride can be rough with an unladen bed;Fell short of some fuel economy estimates in our real-world testing;'),
('401822562', 'Ford', 'F-150', '2020', '$32,599', 'Truck', 'rear wheel drive', '22', '460.0/598.0 mi.', 'High towing and payload capacities are ideal for work or play;Comfort and safety tech runs the gamut from blue-collar basic to luxury living;Multiple engines deliver balance of power and fuel economy;Raptor model\'s gonzo off-road ability;', 'Ride can be rough with an unladen bed;Fell short of some fuel economy estimates in our real-world testing;'),
('401822570', 'Ford', 'F-150', '2020', '$34,628', 'Truck', 'four wheel drive', '20', '414.0/529.0 mi.', 'High towing and payload capacities are ideal for work or play;Comfort and safety tech runs the gamut from blue-collar basic to luxury living;Multiple engines deliver balance of power and fuel economy;Raptor model\'s gonzo off-road ability;', 'Ride can be rough with an unladen bed;Fell short of some fuel economy estimates in our real-world testing;'),
('401822565', 'Ford', 'F-150', '2020', '$36,782', 'Truck', 'four wheel drive', '18', '345.0/483.0 mi.', 'High towing and payload capacities are ideal for work or play;Comfort and safety tech runs the gamut from blue-collar basic to luxury living;Multiple engines deliver balance of power and fuel economy;Raptor model\'s gonzo off-road ability;', 'Ride can be rough with an unladen bed;Fell short of some fuel economy estimates in our real-world testing;'),
('401822572', 'Ford', 'F-150', '2020', '$35,221', 'Truck', 'rear wheel drive', '22', '437.0/575.0 mi.', 'High towing and payload capacities are ideal for work or play;Comfort and safety tech runs the gamut from blue-collar basic to luxury living;Multiple engines deliver balance of power and fuel economy;Raptor model\'s gonzo off-road ability;', 'Ride can be rough with an unladen bed;Fell short of some fuel economy estimates in our real-world testing;'),
('401822569', 'Ford', 'F-150', '2020', '$36,443', 'Truck', 'rear wheel drive', '22', '460.0/598.0 mi.', 'High towing and payload capacities are ideal for work or play;Comfort and safety tech runs the gamut from blue-collar basic to luxury living;Multiple engines deliver balance of power and fuel economy;Raptor model\'s gonzo off-road ability;', 'Ride can be rough with an unladen bed;Fell short of some fuel economy estimates in our real-world testing;'),
('401822566', 'Ford', 'F-150', '2020', '$38,424', 'Truck', 'four wheel drive', '20', '414.0/529.0 mi.', 'High towing and payload capacities are ideal for work or play;Comfort and safety tech runs the gamut from blue-collar basic to luxury living;Multiple engines deliver balance of power and fuel economy;Raptor model\'s gonzo off-road ability;', 'Ride can be rough with an unladen bed;Fell short of some fuel economy estimates in our real-world testing;'),
('401822571', 'Ford', 'F-150', '2020', '$40,532', 'Truck', 'four wheel drive', '18', '345.0/483.0 mi.', 'High towing and payload capacities are ideal for work or play;Comfort and safety tech runs the gamut from blue-collar basic to luxury living;Multiple engines deliver balance of power and fuel economy;Raptor model\'s gonzo off-road ability;', 'Ride can be rough with an unladen bed;Fell short of some fuel economy estimates in our real-world testing;'),
('401822567', 'Ford', 'F-150', '2020', '$40,439', 'Truck', 'rear wheel drive', '22', '460.0/598.0 mi.', 'High towing and payload capacities are ideal for work or play;Comfort and safety tech runs the gamut from blue-collar basic to luxury living;Multiple engines deliver balance of power and fuel economy;Raptor model\'s gonzo off-road ability;', 'Ride can be rough with an unladen bed;Fell short of some fuel economy estimates in our real-world testing;'),
('401822564', 'Ford', 'F-150', '2020', '$40,719', 'Truck', 'rear wheel drive', '22', '460.0/598.0 mi.', 'High towing and payload capacities are ideal for work or play;Comfort and safety tech runs the gamut from blue-collar basic to luxury living;Multiple engines deliver balance of power and fuel economy;Raptor model\'s gonzo off-road ability;', 'Ride can be rough with an unladen bed;Fell short of some fuel economy estimates in our real-world testing;'),
('401822568', 'Ford', 'F-150', '2020', '$43,642', 'Truck', 'four wheel drive', '20', '414.0/529.0 mi.', 'High towing and payload capacities are ideal for work or play;Comfort and safety tech runs the gamut from blue-collar basic to luxury living;Multiple engines deliver balance of power and fuel economy;Raptor model\'s gonzo off-road ability;', 'Ride can be rough with an unladen bed;Fell short of some fuel economy estimates in our real-world testing;'),
('401822563', 'Ford', 'F-150', '2020', '$44,811', 'Truck', 'four wheel drive', '18', '345.0/483.0 mi.', 'High towing and payload capacities are ideal for work or play;Comfort and safety tech runs the gamut from blue-collar basic to luxury living;Multiple engines deliver balance of power and fuel economy;Raptor model\'s gonzo off-road ability;', 'Ride can be rough with an unladen bed;Fell short of some fuel economy estimates in our real-world testing;'),
('401822613', 'Ford', 'F-150', '2020', '$49,981', 'Truck', 'four wheel drive', '16', '390.0/468.0 mi.', 'High towing and payload capacities are ideal for work or play;Comfort and safety tech runs the gamut from blue-collar basic to luxury living;Multiple engines deliver balance of power and fuel economy;Raptor model\'s gonzo off-road ability;', 'Ride can be rough with an unladen bed;Fell short of some fuel economy estimates in our real-world testing;'),
('401822593', 'Ford', 'F-150', '2020', '$33,697', 'Truck', 'rear wheel drive', '22', '494.0/650.0 mi.', 'High towing and payload capacities are ideal for work or play;Comfort and safety tech runs the gamut from blue-collar basic to luxury living;Multiple engines deliver balance of power and fuel economy;Raptor model\'s gonzo off-road ability;', 'Ride can be rough with an unladen bed;Fell short of some fuel economy estimates in our real-world testing;'),
('401822594', 'Ford', 'F-150', '2020', '$34,944', 'Truck', 'rear wheel drive', '22', '520.0/676.0 mi.', 'High towing and payload capacities are ideal for work or play;Comfort and safety tech runs the gamut from blue-collar basic to luxury living;Multiple engines deliver balance of power and fuel economy;Raptor model\'s gonzo off-road ability;', 'Ride can be rough with an unladen bed;Fell short of some fuel economy estimates in our real-world testing;'),
('401822598', 'Ford', 'F-150', '2020', '$37,049', 'Truck', 'four wheel drive', '20', '468.0/598.0 mi.', 'High towing and payload capacities are ideal for work or play;Comfort and safety tech runs the gamut from blue-collar basic to luxury living;Multiple engines deliver balance of power and fuel economy;Raptor model\'s gonzo off-road ability;', 'Ride can be rough with an unladen bed;Fell short of some fuel economy estimates in our real-world testing;'),
('401822595', 'Ford', 'F-150', '2020', '$39,203', 'Truck', 'four wheel drive', '18', '390.0/546.0 mi.', 'High towing and payload capacities are ideal for work or play;Comfort and safety tech runs the gamut from blue-collar basic to luxury living;Multiple engines deliver balance of power and fuel economy;Raptor model\'s gonzo off-road ability;', 'Ride can be rough with an unladen bed;Fell short of some fuel economy estimates in our real-world testing;'),
('401822604', 'Ford', 'F-150', '2020', '$37,418', 'Truck', 'rear wheel drive', '22', '494.0/650.0 mi.', 'High towing and payload capacities are ideal for work or play;Comfort and safety tech runs the gamut from blue-collar basic to luxury living;Multiple engines deliver balance of power and fuel economy;Raptor model\'s gonzo off-road ability;', 'Ride can be rough with an unladen bed;Fell short of some fuel economy estimates in our real-world testing;'),
('401822601', 'Ford', 'F-150', '2020', '$38,640', 'Truck', 'rear wheel drive', '22', '520.0/676.0 mi.', 'High towing and payload capacities are ideal for work or play;Comfort and safety tech runs the gamut from blue-collar basic to luxury living;Multiple engines deliver balance of power and fuel economy;Raptor model\'s gonzo off-road ability;', 'Ride can be rough with an unladen bed;Fell short of some fuel economy estimates in our real-world testing;'),
('401822600', 'Ford', 'F-150', '2020', '$40,687', 'Truck', 'four wheel drive', '20', '468.0/598.0 mi.', 'High towing and payload capacities are ideal for work or play;Comfort and safety tech runs the gamut from blue-collar basic to luxury living;Multiple engines deliver balance of power and fuel economy;Raptor model\'s gonzo off-road ability;', 'Ride can be rough with an unladen bed;Fell short of some fuel economy estimates in our real-world testing;'),
('401822603', 'Ford', 'F-150', '2020', '$42,795', 'Truck', 'four wheel drive', '18', '390.0/546.0 mi.', 'High towing and payload capacities are ideal for work or play;Comfort and safety tech runs the gamut from blue-collar basic to luxury living;Multiple engines deliver balance of power and fuel economy;Raptor model\'s gonzo off-road ability;', 'Ride can be rough with an unladen bed;Fell short of some fuel economy estimates in our real-world testing;'),
('401822599', 'Ford', 'F-150', '2020', '$42,645', 'Truck', 'rear wheel drive', '22', '520.0/676.0 mi.', 'High towing and payload capacities are ideal for work or play;Comfort and safety tech runs the gamut from blue-collar basic to luxury living;Multiple engines deliver balance of power and fuel economy;Raptor model\'s gonzo off-road ability;', 'Ride can be rough with an unladen bed;Fell short of some fuel economy estimates in our real-world testing;'),
('401822597', 'Ford', 'F-150', '2020', '$42,926', 'Truck', 'rear wheel drive', '22', '520.0/676.0 mi.', 'High towing and payload capacities are ideal for work or play;Comfort and safety tech runs the gamut from blue-collar basic to luxury living;Multiple engines deliver balance of power and fuel economy;Raptor model\'s gonzo off-road ability;', 'Ride can be rough with an unladen bed;Fell short of some fuel economy estimates in our real-world testing;'),
('401822602', 'Ford', 'F-150', '2020', '$45,849', 'Truck', 'four wheel drive', '20', '468.0/598.0 mi.', 'High towing and payload capacities are ideal for work or play;Comfort and safety tech runs the gamut from blue-collar basic to luxury living;Multiple engines deliver balance of power and fuel economy;Raptor model\'s gonzo off-road ability;', 'Ride can be rough with an unladen bed;Fell short of some fuel economy estimates in our real-world testing;'),
('401822596', 'Ford', 'F-150', '2020', '$47,017', 'Truck', 'four wheel drive', '18', '390.0/546.0 mi.', 'High towing and payload capacities are ideal for work or play;Comfort and safety tech runs the gamut from blue-collar basic to luxury living;Multiple engines deliver balance of power and fuel economy;Raptor model\'s gonzo off-road ability;', 'Ride can be rough with an unladen bed;Fell short of some fuel economy estimates in our real-world testing;'),
('401822608', 'Ford', 'F-150', '2020', '$49,546', 'Truck', 'rear wheel drive', '19', '442.0/598.0 mi.', 'High towing and payload capacities are ideal for work or play;Comfort and safety tech runs the gamut from blue-collar basic to luxury living;Multiple engines deliver balance of power and fuel economy;Raptor model\'s gonzo off-road ability;', 'Ride can be rough with an unladen bed;Fell short of some fuel economy estimates in our real-world testing;'),
('401822606', 'Ford', 'F-150', '2020', '$49,826', 'Truck', 'rear wheel drive', '19', '442.0/598.0 mi.', 'High towing and payload capacities are ideal for work or play;Comfort and safety tech runs the gamut from blue-collar basic to luxury living;Multiple engines deliver balance of power and fuel economy;Raptor model\'s gonzo off-road ability;', 'Ride can be rough with an unladen bed;Fell short of some fuel economy estimates in our real-world testing;'),
('401822612', 'Ford', 'F-150', '2020', '$52,748', 'Truck', 'four wheel drive', '18', '390.0/546.0 mi.', 'High towing and payload capacities are ideal for work or play;Comfort and safety tech runs the gamut from blue-collar basic to luxury living;Multiple engines deliver balance of power and fuel economy;Raptor model\'s gonzo off-road ability;', 'Ride can be rough with an unladen bed;Fell short of some fuel economy estimates in our real-world testing;'),
('401822605', 'Ford', 'F-150', '2020', '$53,029', 'Truck', 'four wheel drive', '18', '390.0/546.0 mi.', 'High towing and payload capacities are ideal for work or play;Comfort and safety tech runs the gamut from blue-collar basic to luxury living;Multiple engines deliver balance of power and fuel economy;Raptor model\'s gonzo off-road ability;', 'Ride can be rough with an unladen bed;Fell short of some fuel economy estimates in our real-world testing;'),
('401822607', 'Ford', 'F-150', '2020', '$51,911', 'Truck', 'rear wheel drive', '19', '442.0/598.0 mi.', 'High towing and payload capacities are ideal for work or play;Comfort and safety tech runs the gamut from blue-collar basic to luxury living;Multiple engines deliver balance of power and fuel economy;Raptor model\'s gonzo off-road ability;', 'Ride can be rough with an unladen bed;Fell short of some fuel economy estimates in our real-world testing;'),
('401822616', 'Ford', 'F-150', '2020', '$52,191', 'Truck', 'rear wheel drive', '19', '442.0/598.0 mi.', 'High towing and payload capacities are ideal for work or play;Comfort and safety tech runs the gamut from blue-collar basic to luxury living;Multiple engines deliver balance of power and fuel economy;Raptor model\'s gonzo off-road ability;', 'Ride can be rough with an unladen bed;Fell short of some fuel economy estimates in our real-world testing;'),
('401822614', 'Ford', 'F-150', '2020', '$55,114', 'Truck', 'four wheel drive', '18', '390.0/546.0 mi.', 'High towing and payload capacities are ideal for work or play;Comfort and safety tech runs the gamut from blue-collar basic to luxury living;Multiple engines deliver balance of power and fuel economy;Raptor model\'s gonzo off-road ability;', 'Ride can be rough with an unladen bed;Fell short of some fuel economy estimates in our real-world testing;'),
('401822609', 'Ford', 'F-150', '2020', '$55,395', 'Truck', 'four wheel drive', '18', '390.0/546.0 mi.', 'High towing and payload capacities are ideal for work or play;Comfort and safety tech runs the gamut from blue-collar basic to luxury living;Multiple engines deliver balance of power and fuel economy;Raptor model\'s gonzo off-road ability;', 'Ride can be rough with an unladen bed;Fell short of some fuel economy estimates in our real-world testing;'),
('401822610', 'Ford', 'F-150', '2020', '$52,772', 'Truck', 'four wheel drive', '16', '540.0/648.0 mi.', 'High towing and payload capacities are ideal for work or play;Comfort and safety tech runs the gamut from blue-collar basic to luxury living;Multiple engines deliver balance of power and fuel economy;Raptor model\'s gonzo off-road ability;', 'Ride can be rough with an unladen bed;Fell short of some fuel economy estimates in our real-world testing;'),
('401822611', 'Ford', 'F-150', '2020', '$63,312', 'Truck', 'rear wheel drive', '19', '612.0/792.0 mi.', 'High towing and payload capacities are ideal for work or play;Comfort and safety tech runs the gamut from blue-collar basic to luxury living;Multiple engines deliver balance of power and fuel economy;Raptor model\'s gonzo off-road ability;', 'Ride can be rough with an unladen bed;Fell short of some fuel economy estimates in our real-world testing;'),
('401822615', 'Ford', 'F-150', '2020', '$66,462', 'Truck', 'four wheel drive', '19', '612.0/756.0 mi.', 'High towing and payload capacities are ideal for work or play;Comfort and safety tech runs the gamut from blue-collar basic to luxury living;Multiple engines deliver balance of power and fuel economy;Raptor model\'s gonzo off-road ability;', 'Ride can be rough with an unladen bed;Fell short of some fuel economy estimates in our real-world testing;'),
('401709372', 'Toyota', 'Prius', '2017', '$22,067', 'Hatchback', 'front wheel drive', '52', '610.2/565.0 mi.', 'Capable of 50-plus miles per gallon;Cabin remains quiet even when the gasoline engine is engaged;Easy to see out of and maneuver around town;Offers a complete package of high-tech active safety equipment;', 'Offset instrument panel is out of driver\'s direct line of sight;Must use Toyota\'s Entune app software to make the most of a smartphone connection;Still a slow car despite its improved performance versus the previous model;'),
('401658857', 'Toyota', 'Prius', '2017', '$23,204', 'Hatchback', 'front wheel drive', '52', '610.2/565.0 mi.', 'Capable of 50-plus miles per gallon;Cabin remains quiet even when the gasoline engine is engaged;Easy to see out of and maneuver around town;Offers a complete package of high-tech active safety equipment;', 'Offset instrument panel is out of driver\'s direct line of sight;Must use Toyota\'s Entune app software to make the most of a smartphone connection;Still a slow car despite its improved performance versus the previous model;'),
('401658853', 'Toyota', 'Prius', '2017', '$23,655', 'Hatchback', 'front wheel drive', '56', '655.4/598.9 mi.', 'Capable of 50-plus miles per gallon;Cabin remains quiet even when the gasoline engine is engaged;Easy to see out of and maneuver around town;Offers a complete package of high-tech active safety equipment;', 'Offset instrument panel is out of driver\'s direct line of sight;Must use Toyota\'s Entune app software to make the most of a smartphone connection;Still a slow car despite its improved performance versus the previous model;'),
('401658855', 'Toyota', 'Prius', '2017', '$24,888', 'Hatchback', 'front wheel drive', '52', '610.2/565.0 mi.', 'Capable of 50-plus miles per gallon;Cabin remains quiet even when the gasoline engine is engaged;Easy to see out of and maneuver around town;Offers a complete package of high-tech active safety equipment;', 'Offset instrument panel is out of driver\'s direct line of sight;Must use Toyota\'s Entune app software to make the most of a smartphone connection;Still a slow car despite its improved performance versus the previous model;'),
('401658852', 'Toyota', 'Prius', '2017', '$26,173', 'Hatchback', 'front wheel drive', '52', '610.2/565.0 mi.', 'Capable of 50-plus miles per gallon;Cabin remains quiet even when the gasoline engine is engaged;Easy to see out of and maneuver around town;Offers a complete package of high-tech active safety equipment;', 'Offset instrument panel is out of driver\'s direct line of sight;Must use Toyota\'s Entune app software to make the most of a smartphone connection;Still a slow car despite its improved performance versus the previous model;'),
('401658854', 'Toyota', 'Prius', '2017', '$27,122', 'Hatchback', 'front wheel drive', '52', '610.2/565.0 mi.', 'Capable of 50-plus miles per gallon;Cabin remains quiet even when the gasoline engine is engaged;Easy to see out of and maneuver around town;Offers a complete package of high-tech active safety equipment;', 'Offset instrument panel is out of driver\'s direct line of sight;Must use Toyota\'s Entune app software to make the most of a smartphone connection;Still a slow car despite its improved performance versus the previous model;'),
('401658856', 'Toyota', 'Prius', '2017', '$27,941', 'Hatchback', 'front wheel drive', '52', '610.2/565.0 mi.', 'Capable of 50-plus miles per gallon;Cabin remains quiet even when the gasoline engine is engaged;Easy to see out of and maneuver around town;Offers a complete package of high-tech active safety equipment;', 'Offset instrument panel is out of driver\'s direct line of sight;Must use Toyota\'s Entune app software to make the most of a smartphone connection;Still a slow car despite its improved performance versus the previous model;'),
('401741147', 'Toyota', 'Prius', '2018', '$22,067', 'Hatchback', 'front wheel drive', '52', '610.2/565.0 mi.', 'Capable of returning 50-plus miles per gallon;Quiet cabin, even with gas engine engaged;Easy to see out of and maneuver around town;Complete suite of active safety technology is available;', 'Offset instrument panel is out of driver\'s direct line of sight;Must use Toyota\'s Entune app to make the most of a smartphone connection;Acceleration can be laggardly;'),
('401741153', 'Toyota', 'Prius', '2018', '$23,204', 'Hatchback', 'front wheel drive', '52', '610.2/565.0 mi.', 'Capable of returning 50-plus miles per gallon;Quiet cabin, even with gas engine engaged;Easy to see out of and maneuver around town;Complete suite of active safety technology is available;', 'Offset instrument panel is out of driver\'s direct line of sight;Must use Toyota\'s Entune app to make the most of a smartphone connection;Acceleration can be laggardly;'),
('401741149', 'Toyota', 'Prius', '2018', '$23,655', 'Hatchback', 'front wheel drive', '56', '655.4/598.9 mi.', 'Capable of returning 50-plus miles per gallon;Quiet cabin, even with gas engine engaged;Easy to see out of and maneuver around town;Complete suite of active safety technology is available;', 'Offset instrument panel is out of driver\'s direct line of sight;Must use Toyota\'s Entune app to make the most of a smartphone connection;Acceleration can be laggardly;'),
('401741151', 'Toyota', 'Prius', '2018', '$24,888', 'Hatchback', 'front wheel drive', '52', '610.2/565.0 mi.', 'Capable of returning 50-plus miles per gallon;Quiet cabin, even with gas engine engaged;Easy to see out of and maneuver around town;Complete suite of active safety technology is available;', 'Offset instrument panel is out of driver\'s direct line of sight;Must use Toyota\'s Entune app to make the most of a smartphone connection;Acceleration can be laggardly;'),
('401741148', 'Toyota', 'Prius', '2018', '$26,173', 'Hatchback', 'front wheel drive', '52', '610.2/565.0 mi.', 'Capable of returning 50-plus miles per gallon;Quiet cabin, even with gas engine engaged;Easy to see out of and maneuver around town;Complete suite of active safety technology is available;', 'Offset instrument panel is out of driver\'s direct line of sight;Must use Toyota\'s Entune app to make the most of a smartphone connection;Acceleration can be laggardly;'),
('401741150', 'Toyota', 'Prius', '2018', '$27,634', 'Hatchback', 'front wheel drive', '52', '610.2/565.0 mi.', 'Capable of returning 50-plus miles per gallon;Quiet cabin, even with gas engine engaged;Easy to see out of and maneuver around town;Complete suite of active safety technology is available;', 'Offset instrument panel is out of driver\'s direct line of sight;Must use Toyota\'s Entune app to make the most of a smartphone connection;Acceleration can be laggardly;'),
('401741152', 'Toyota', 'Prius', '2018', '$28,453', 'Hatchback', 'front wheel drive', '52', '610.2/565.0 mi.', 'Capable of returning 50-plus miles per gallon;Quiet cabin, even with gas engine engaged;Easy to see out of and maneuver around town;Complete suite of active safety technology is available;', 'Offset instrument panel is out of driver\'s direct line of sight;Must use Toyota\'s Entune app to make the most of a smartphone connection;Acceleration can be laggardly;'),
('401780670', 'Toyota', 'Prius', '2019', '$22,344', 'Hatchback', 'front wheel drive', '56', '655.4/598.9 mi.', 'Capable of returning 50-plus miles per gallon;Quiet cabin, even with the gas engine engaged;Easy to see out of and maneuver around town;Newly available all-wheel drive;', 'Offset instrument panel is out of driver\'s direct line of sight;Must use Toyota\'s Entune app to make the most of a smartphone connection;Acceleration can be sluggish;Driving over broken pavement feels choppier than it should;'),
('401786991', 'Toyota', 'Prius', '2019', '$23,482', 'Hatchback', 'front wheel drive', '52', '610.2/565.0 mi.', 'Capable of returning 50-plus miles per gallon;Quiet cabin, even with the gas engine engaged;Easy to see out of and maneuver around town;Newly available all-wheel drive;', 'Offset instrument panel is out of driver\'s direct line of sight;Must use Toyota\'s Entune app to make the most of a smartphone connection;Acceleration can be sluggish;Driving over broken pavement feels choppier than it should;'),
('401787010', 'Toyota', 'Prius', '2019', '$24,798', 'Hatchback', 'all wheel drive', '50', '551.2/508.8 mi.', 'Capable of returning 50-plus miles per gallon;Quiet cabin, even with the gas engine engaged;Easy to see out of and maneuver around town;Newly available all-wheel drive;', 'Offset instrument panel is out of driver\'s direct line of sight;Must use Toyota\'s Entune app to make the most of a smartphone connection;Acceleration can be sluggish;Driving over broken pavement feels choppier than it should;'),
('401786989', 'Toyota', 'Prius', '2019', '$29,975', 'Hatchback', 'front wheel drive', '52', '610.2/565.0 mi.', 'Capable of returning 50-plus miles per gallon;Quiet cabin, even with the gas engine engaged;Easy to see out of and maneuver around town;Newly available all-wheel drive;', 'Offset instrument panel is out of driver\'s direct line of sight;Must use Toyota\'s Entune app to make the most of a smartphone connection;Acceleration can be sluggish;Driving over broken pavement feels choppier than it should;'),
('401786990', 'Toyota', 'Prius', '2019', '$25,897', 'Hatchback', 'front wheel drive', '52', '610.2/565.0 mi.', 'Capable of returning 50-plus miles per gallon;Quiet cabin, even with the gas engine engaged;Easy to see out of and maneuver around town;Newly available all-wheel drive;', 'Offset instrument panel is out of driver\'s direct line of sight;Must use Toyota\'s Entune app to make the most of a smartphone connection;Acceleration can be sluggish;Driving over broken pavement feels choppier than it should;'),
('401787009', 'Toyota', 'Prius', '2019', '$26,828', 'Hatchback', 'all wheel drive', '50', '551.2/508.8 mi.', 'Capable of returning 50-plus miles per gallon;Quiet cabin, even with the gas engine engaged;Easy to see out of and maneuver around town;Newly available all-wheel drive;', 'Offset instrument panel is out of driver\'s direct line of sight;Must use Toyota\'s Entune app to make the most of a smartphone connection;Acceleration can be sluggish;Driving over broken pavement feels choppier than it should;'),
('401819539', 'Toyota', 'Prius', '2020', '$22,866', 'Hatchback', 'front wheel drive', '56', '655.4/598.9 mi.', 'Capable of returning 50-plus miles per gallon;Quiet cabin, even with the gas engine engaged;Easy to see out of and maneuver around town;Newly available all-wheel drive;', 'Offset instrument panel is out of driver\'s direct line of sight;Must use Toyota\'s Entune app to make the most of a smartphone connection;Jittery ride quality on rough pavement;Standard infotainment system looks and feels dated;'),
('401819541', 'Toyota', 'Prius', '2020', '$24,003', 'Hatchback', 'front wheel drive', '52', '610.2/565.0 mi.', 'Capable of returning 50-plus miles per gallon;Quiet cabin, even with the gas engine engaged;Easy to see out of and maneuver around town;Newly available all-wheel drive;', 'Offset instrument panel is out of driver\'s direct line of sight;Must use Toyota\'s Entune app to make the most of a smartphone connection;Jittery ride quality on rough pavement;Standard infotainment system looks and feels dated;'),
('401819537', 'Toyota', 'Prius', '2020', '$25,319', 'Hatchback', 'all wheel drive', '50', '551.2/508.8 mi.', 'Capable of returning 50-plus miles per gallon;Quiet cabin, even with the gas engine engaged;Easy to see out of and maneuver around town;Newly available all-wheel drive;', 'Offset instrument panel is out of driver\'s direct line of sight;Must use Toyota\'s Entune app to make the most of a smartphone connection;Jittery ride quality on rough pavement;Standard infotainment system looks and feels dated;'),
('401819540', 'Toyota', 'Prius', '2020', '$26,416', 'Hatchback', 'front wheel drive', '52', '610.2/565.0 mi.', 'Capable of returning 50-plus miles per gallon;Quiet cabin, even with the gas engine engaged;Easy to see out of and maneuver around town;Newly available all-wheel drive;', 'Offset instrument panel is out of driver\'s direct line of sight;Must use Toyota\'s Entune app to make the most of a smartphone connection;Jittery ride quality on rough pavement;Standard infotainment system looks and feels dated;'),
('401819538', 'Toyota', 'Prius', '2020', '$27,346', 'Hatchback', 'all wheel drive', '50', '551.2/508.8 mi.', 'Capable of returning 50-plus miles per gallon;Quiet cabin, even with the gas engine engaged;Easy to see out of and maneuver around town;Newly available all-wheel drive;', 'Offset instrument panel is out of driver\'s direct line of sight;Must use Toyota\'s Entune app to make the most of a smartphone connection;Jittery ride quality on rough pavement;Standard infotainment system looks and feels dated;'),
('401819542', 'Toyota', 'Prius', '2020', '$30,256', 'Hatchback', 'front wheel drive', '52', '610.2/565.0 mi.', 'Capable of returning 50-plus miles per gallon;Quiet cabin, even with the gas engine engaged;Easy to see out of and maneuver around town;Newly available all-wheel drive;', 'Offset instrument panel is out of driver\'s direct line of sight;Must use Toyota\'s Entune app to make the most of a smartphone connection;Jittery ride quality on rough pavement;Standard infotainment system looks and feels dated;');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `communityreviews`
--
ALTER TABLE `communityreviews`
  ADD PRIMARY KEY (`reviewID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `communityreviews`
--
ALTER TABLE `communityreviews`
  MODIFY `reviewID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
