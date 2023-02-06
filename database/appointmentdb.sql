-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 31, 2022 at 10:04 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `appointmentdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `addhospital`
--

CREATE TABLE `addhospital` (
  `HospitalName` varchar(20) NOT NULL,
  `DirectorName` text NOT NULL,
  `Address` varchar(25) NOT NULL,
  `Country` text NOT NULL,
  `City` text NOT NULL,
  `State` text NOT NULL,
  `PostalCode` int(7) NOT NULL,
  `Email` varchar(25) NOT NULL,
  `PhoneNo` int(10) NOT NULL,
  `MobileNo` int(10) NOT NULL,
  `Fax` int(10) NOT NULL,
  `URL` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `addpatient`
--

CREATE TABLE `addpatient` (
  `id` int(6) UNSIGNED ZEROFILL NOT NULL,
  `atype` text NOT NULL,
  `Age` varchar(100) NOT NULL,
  `Patient_name` varchar(255) DEFAULT NULL,
  `PatientId` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `dob` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `Height` varchar(255) DEFAULT NULL,
  `Weight` varchar(255) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `postalcode` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `Reason` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `status` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `adduser`
--

CREATE TABLE `adduser` (
  `id` int(11) NOT NULL,
  `Occupation` varchar(255) NOT NULL,
  `ProfileID` varchar(200) NOT NULL,
  `EmployeeID` varchar(200) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `dob` varchar(255) NOT NULL,
  `Age` int(10) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `alt_email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) NOT NULL,
  `Join_date` varchar(200) NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `appclone`
--

CREATE TABLE `appclone` (
  `id` int(10) NOT NULL,
  `atype` varchar(200) NOT NULL,
  `PatientId` varchar(255) NOT NULL,
  `AppointmentId` varchar(200) NOT NULL,
  `Patient_name` varchar(255) NOT NULL,
  `Age` int(5) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `dob` varchar(200) NOT NULL,
  `gender` varchar(200) NOT NULL,
  `Height` int(20) NOT NULL,
  `Weight` int(20) NOT NULL,
  `Address` varchar(200) NOT NULL,
  `Doctor_name` varchar(255) NOT NULL,
  `Reason` varchar(255) NOT NULL,
  `date` varchar(200) NOT NULL,
  `time` varchar(200) NOT NULL,
  `note` text NOT NULL,
  `status` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(10) NOT NULL,
  `atype` varchar(200) NOT NULL,
  `PatientId` varchar(255) NOT NULL,
  `AppointmentId` varchar(200) NOT NULL,
  `Patient_name` varchar(255) NOT NULL,
  `Age` int(5) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `dob` varchar(200) NOT NULL,
  `gender` varchar(200) NOT NULL,
  `Height` int(20) NOT NULL,
  `Weight` int(20) NOT NULL,
  `Address` varchar(200) NOT NULL,
  `country` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `postalcode` varchar(100) NOT NULL,
  `Doctor_name` varchar(255) NOT NULL,
  `Reason` varchar(255) NOT NULL,
  `date` varchar(200) NOT NULL,
  `time` varchar(200) NOT NULL,
  `note` text NOT NULL,
  `status` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `book_appmt`
--

CREATE TABLE `book_appmt` (
  `id` int(9) NOT NULL,
  `PatientId` varchar(100) NOT NULL,
  `AppointmentId` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `Date` date NOT NULL,
  `time` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cevent`
--

CREATE TABLE `cevent` (
  `id` int(11) NOT NULL,
  `event_name` varchar(200) DEFAULT NULL,
  `date` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `phone` bigint(20) NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `doctor_table`
--

CREATE TABLE `doctor_table` (
  `id` int(11) NOT NULL,
  `Doctor_img` longblob DEFAULT NULL,
  `First_name` varchar(15) NOT NULL,
  `Last_name` varchar(15) NOT NULL,
  `Birth_date` varchar(20) NOT NULL,
  `Gender` text NOT NULL,
  `Address` varchar(15) DEFAULT NULL,
  `Email` varchar(20) NOT NULL,
  `Country` text NOT NULL,
  `State` text NOT NULL,
  `Pincode` int(7) NOT NULL,
  `Contact_no` int(10) NOT NULL,
  `Education_institution` varchar(20) NOT NULL,
  `Subject` varchar(20) NOT NULL,
  `Start_date` varchar(20) NOT NULL,
  `Complete_date` varchar(20) NOT NULL,
  `Degree` varchar(20) NOT NULL,
  `Grade` varchar(5) NOT NULL,
  `Company_name` varchar(30) NOT NULL,
  `Location` varchar(30) NOT NULL,
  `Job_position` varchar(30) NOT NULL,
  `Period_from` varchar(20) NOT NULL,
  `Period_to` varchar(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dschedule`
--

CREATE TABLE `dschedule` (
  `id` int(9) NOT NULL,
  `From_date` varchar(200) NOT NULL,
  `To_date` varchar(200) NOT NULL,
  `Doctor_name` text NOT NULL,
  `Days` varchar(200) NOT NULL,
  `Start_time` varchar(200) NOT NULL,
  `End_time` varchar(200) NOT NULL,
  `Note` varchar(200) NOT NULL,
  `status` text NOT NULL,
  `Department` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `id` int(9) NOT NULL,
  `Invoice_Id` varchar(100) NOT NULL,
  `Patient_name` varchar(200) NOT NULL,
  `PatientId` varchar(20) NOT NULL,
  `AppointmentId` varchar(100) NOT NULL,
  `Department` text NOT NULL,
  `Email` varchar(25) NOT NULL,
  `Tax` text NOT NULL,
  `Patient_address` varchar(25) NOT NULL,
  `Billing_address` varchar(20) NOT NULL,
  `Invoice_date` varchar(100) NOT NULL,
  `Due_date` varchar(100) NOT NULL,
  `Item` varchar(25) DEFAULT NULL,
  `Description` text DEFAULT NULL,
  `Unit_cost` int(4) DEFAULT NULL,
  `Qty` int(4) DEFAULT NULL,
  `Amount` int(6) DEFAULT NULL,
  `Tax_amount` int(4) DEFAULT NULL,
  `Discount` int(4) DEFAULT NULL,
  `Grand_total` int(4) DEFAULT NULL,
  `Other_info` int(30) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `testing`
--

CREATE TABLE `testing` (
  `ID` varchar(5) DEFAULT NULL,
  `NAME` varchar(15) DEFAULT NULL,
  `DESCP` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user2s`
--

CREATE TABLE `user2s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user2s`
--

INSERT INTO `user2s` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(0, 'Receptionist', 'receptionist@receptionist.com', '2022-05-30 23:45:47', '$2y$10$0EPLXFA.Ch76JFqCRvmjyu8sIbDO7IffFrXULjDsWEDuUlbPJUMrK', '6mQ7jo6RCA', '2022-05-30 23:45:47', '2022-05-30 23:45:47');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'MD.Admin', 'admin@admin.com', '2022-05-30 23:45:47', '$2y$10$gHoIx2jwVNMhIO/m.n3BNu6jdDy4BNURzr9nbIaB9EkramCH7gRhy', 'al88JvbBT0', '2022-05-30 23:45:47', '2022-05-30 23:45:47');

-- --------------------------------------------------------

--
-- Table structure for table `users_appmt`
--

CREATE TABLE `users_appmt` (
  `id` int(9) NOT NULL,
  `name` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  `sex` text NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` text NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addpatient`
--
ALTER TABLE `addpatient`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adduser`
--
ALTER TABLE `adduser`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book_appmt`
--
ALTER TABLE `book_appmt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cevent`
--
ALTER TABLE `cevent`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctor_table`
--
ALTER TABLE `doctor_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dschedule`
--
ALTER TABLE `dschedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user2s`
--
ALTER TABLE `user2s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_appmt`
--
ALTER TABLE `users_appmt`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addpatient`
--
ALTER TABLE `addpatient`
  MODIFY `id` int(6) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `adduser`
--
ALTER TABLE `adduser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `book_appmt`
--
ALTER TABLE `book_appmt`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cevent`
--
ALTER TABLE `cevent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `doctor_table`
--
ALTER TABLE `doctor_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dschedule`
--
ALTER TABLE `dschedule`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users_appmt`
--
ALTER TABLE `users_appmt`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
