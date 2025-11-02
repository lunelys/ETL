-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 02, 2025 at 07:16 PM
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
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `crm`
--

CREATE TABLE `crm` (
  `client_id` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `date_inscription` varchar(100) NOT NULL,
  `revenu_annuel` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `crm`
--

INSERT INTO `crm` (`client_id`, `nom`, `email`, `date_inscription`, `revenu_annuel`) VALUES
(1, 'Client_1', 'client1@gmail.com', '06/03/2022', ''),
(2, 'Client_2', 'client2@gmail.com', '15/03/2022', '35000'),
(3, 'Client_3', 'client3@gmail.com', '08/01/2023', '35000'),
(4, 'Client_4', 'client4@gmail.com', '28/04/2022', '28000€'),
(5, 'Client_5', 'client5@gmail.com', '25/09/2022', '42 000 €'),
(6, 'Client_6', 'client6@gmail.com', '26/03/2023', '52000'),
(7, 'Client_7', 'client7@gmail.com', '29/10/2022', '52000'),
(8, 'Client_8', 'client8@gmail.com', '22/08/2022', '52000'),
(9, 'Client_9', 'client9@gmail.com', '30/08/2022', '28000€'),
(10, 'Client_10', 'client10@gmail.com', '21/04/2023', '28000€'),
(11, 'Client_11', 'client11@gmail.com', '17/08/2023', '42 000 €'),
(12, 'Client_12', 'client12@gmail.com', '20/05/2022', '35000'),
(13, 'Client_13', 'client13@gmail.com', '16/03/2023', ''),
(14, 'Client_14', 'client14@gmail.com', '02/02/2023', '35000'),
(15, 'Client_15', 'client15@gmail.com', '08/11/2023', '52000');

-- --------------------------------------------------------

--
-- Table structure for table `ecommerce`
--

CREATE TABLE `ecommerce` (
  `customerID` int(11) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `purchase_date` varchar(100) NOT NULL,
  `total_spent` varchar(100) NOT NULL,
  `newsletter_optin` varchar(5) NOT NULL DEFAULT 'No'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ecommerce`
--

INSERT INTO `ecommerce` (`customerID`, `full_name`, `purchase_date`, `total_spent`, `newsletter_optin`) VALUES
(5, 'Client_19', '20-12-2023', '64.91€', ''),
(6, 'Client_21', '11-12-2023', '287.13€', 'Yes'),
(7, 'Client_13', '16-07-2023', '265.94€', 'No'),
(8, 'Client_22', '01-11-2023', '176.28€', 'No'),
(9, 'Client_17', '22-03-2023', '184.17€', 'Yes'),
(10, 'Client_8', '24-02-2023', '238.32€', ''),
(12, 'Client_16', '16-12-2023', '169.02€', ''),
(13, 'Client_11', '08-10-2023', '436.86€', 'Yes'),
(14, 'Client_24', '11-11-2023', '497.69€', ''),
(16, 'Client_6', '05-07-2023', '230.15€', 'No'),
(17, 'Client_12', '05-06-2023', '364.92€', 'No'),
(18, 'Client_18', '12-01-2023', '92.62€', ''),
(21, 'Client_9', '07-01-2023', '394.42€', 'No'),
(22, 'Client_14', '02-08-2023', '329.87€', 'No'),
(24, 'Client_23', '10-12-2023', '136.66€', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `crm`
--
ALTER TABLE `crm`
  ADD PRIMARY KEY (`client_id`);

--
-- Indexes for table `ecommerce`
--
ALTER TABLE `ecommerce`
  ADD PRIMARY KEY (`customerID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
