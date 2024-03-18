-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 22, 2024 at 03:08 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lu-aid`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `subject`, `message`, `created_at`) VALUES
(1, 'Rashed', 'cse_123@lus.ac.bd', 'xyz', 'abcde', '2024-02-21 17:30:31');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `department_id` int(11) NOT NULL,
  `department_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `head_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `head_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `head_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `head_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `head_photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`department_id`, `department_name`, `head_name`, `head_email`, `head_phone`, `head_description`, `head_photo`, `date`) VALUES
(6, 'Computer Science & Engineering', 'Rumel M. S. Rahman Pir', 'rumelpir@lus.ac.bd', '+88-01758228736', '<div>Biography</div><div>PhD. (Ongoing) 2020- Present</div><div>Shahjalal University of Science and Technology (SUST)</div><div>Digital Privacy and Security of Children in Global South</div><div><br></div><div>M.Sc in Satellite Communications and Space Sy', 'Rumel.jpg', '2023-03-09 00:00:00'),
(7, 'Business Administration', 'Md. Jahangir Alam', 'jalam160@lus.ac.bd', '+8801711009899', '<div class=\"author-paragraph\" style=\"color: rgba(51, 51, 51, 0.7); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\"><h2 style=\"font-family: Roboto, sans-serif; line-height: 19.8', 'BA.jpg', '2023-03-09 00:00:00'),
(8, 'English', 'Rumpa Sharmin', 'rumpasharmin@lus.ac.bd', '01711147833', '<div class=\"author-paragraph\" style=\"color: rgba(51, 51, 51, 0.7); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\"><h2 style=\"font-family: Roboto, sans-serif; line-height: 19.8', 'Rumpa.jpg', '2023-03-09 00:00:00'),
(9, 'Electrical & Electronic Engineering', 'Rafiqul Islam', 'rafiqulzyl@lus.ac.bd', '01716 446071', '<h2 style=\"font-family: Roboto, sans-serif; line-height: 19.8px; color: rgb(69, 90, 100); margin: 20px 0px 10px; font-size: 18px; background-color: rgb(255, 255, 255);\">Area of Study</h2><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; ', 'EEE.jpg', '2023-03-09 00:00:00'),
(10, 'Civil Engineering', 'Syeda Zehan Farzana', 'zehan_farzana@lus.ac.bd', '01911017626', '<div class=\"author-paragraph\" style=\"color: rgba(51, 51, 51, 0.7); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\"><h2 style=\"font-family: Roboto, sans-serif; line-height: 19.8', 'Civil.jpg', '2023-03-09 00:00:00'),
(12, 'Law', 'Md. Abdul Musabbir Chowdhury', 'head_law@lus.ac.bd', '+88 01717568792', '<div class=\"author-paragraph\" style=\"color: rgba(51, 51, 51, 0.7); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\"><h2 style=\"font-family: Roboto, sans-serif; line-height: 19.8', 'Law.jpg', '2023-03-09 00:00:00'),
(13, 'Islamic Studies', 'Fazly Ealahi Mamun', 'head_ist@lus.ac.bd', '01712153905/01612153905', '<div class=\"author-paragraph\" style=\"color: rgba(51, 51, 51, 0.7); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\"><h2 style=\"font-family: Roboto, sans-serif; line-height: 19.8', 'Islamic.jpg', '2023-03-09 00:00:00'),
(14, 'Public Health', 'Musa. Halima Begum', 'musa.halimabegum@yahoo.com', '01913946475', '<p>Empty</p>', 'Musa.-Halima-Begum.jpg', '2023-03-09 00:00:00'),
(15, 'Tourism and Hospitality Management', 'Md. Mahbubur Rahaman', 'mahbub9305@gmail.com', '01717019305', '<p>Empty</p>', 'T.jpg', '2023-03-09 00:00:00'),
(16, 'Bangla', 'Dr. Mohammad Mostak Ahmed', 'head_bangla@lus.ac.bd', '01715003049', '<p>Empty</p>', '81b0eed1515ae2ac95deeaeda3d19a93.png', '2023-03-09 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `feature`
--

CREATE TABLE `feature` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `student_fees`
--

CREATE TABLE `student_fees` (
  `id` int(11) NOT NULL,
  `student_id` varchar(255) NOT NULL,
  `student_semester` varchar(255) NOT NULL,
  `course_credit` int(11) NOT NULL,
  `course_fee` int(11) NOT NULL,
  `received_fee` int(11) NOT NULL,
  `due_fee` int(11) NOT NULL,
  `receiver_name` varchar(255) NOT NULL,
  `add_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_fees`
--

INSERT INTO `student_fees` (`id`, `student_id`, `student_semester`, `course_credit`, `course_fee`, `received_fee`, `due_fee`, `receiver_name`, `add_date`, `update_date`) VALUES
(7, '2012020123', '2_semester', 23, 45000, 45000, 0, 'kamal', '2023-08-08 11:03:21', '2023-08-08 11:03:21'),
(8, '2012020123', '3_semester', 22, 56000, 51000, 0, 'kamal', '2023-08-08 11:03:48', '2023-08-08 11:03:48'),
(9, '2012020155', '1_semester', 21, 45000, 34000, 0, 'kamal', '2023-08-08 18:33:20', '2023-08-08 18:33:20'),
(10, '2012020155', '2_semester', 18, 34000, 29000, 0, 'kamal', '2023-08-08 18:33:45', '2023-08-08 18:33:45'),
(11, '2012020122', '4_semester', 17, 32000, 38000, 0, 'kamal', '2023-08-08 18:34:10', '2023-08-08 18:34:10'),
(12, '2012020122', '8_semester', 14, 28000, 28000, 0, 'kamal', '2023-08-08 18:34:33', '2023-08-08 18:34:33'),
(13, '2012020199', '4_semester', 17, 34500, 23000, 0, 'kamal', '2023-08-09 04:15:26', '2023-08-09 04:15:26'),
(15, '2012020123', '6_semester', 25, 38000, 25000, 0, 'kamal', '2023-08-27 18:14:00', '2023-08-27 18:14:00'),
(16, '2012020122', '7_semester', 20, 60000, 25000, 0, 'kamal', '2023-09-12 05:49:51', '2023-09-12 05:49:51'),
(18, '2012020123', '5_semester', 20000, 10000, 5000, 5000, 'kamal', '2023-10-12 05:05:30', '2023-10-12 05:05:30'),
(19, '2012020122', '3_semester', 25, 45000, 12000, 33000, 'kamal', '2024-01-10 14:47:57', '2024-01-10 14:47:57'),
(20, '2012020122', '5_semester', 22, 22000, 15000, 7000, 'kamal', '2024-01-10 14:49:05', '2024-01-10 14:49:05');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` int(11) NOT NULL,
  `st_id` int(11) NOT NULL,
  `department` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` date NOT NULL,
  `blood_group` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `verification_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_verify` int(11) NOT NULL DEFAULT 0,
  `user_role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'student',
  `create_date` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `st_id`, `department`, `dob`, `blood_group`, `password`, `profile`, `verification_code`, `is_verify`, `user_role`, `create_date`) VALUES
(3, 'Jahan', 'cse_2020228287@lus.ac.bd', 1898987899, 2020228287, '16', '1993-02-05', 'O+', '123', 'favicon.png', '72f0aeb4f3a551d1c116c4145dbfeb69', 111, 'super_admin', '2023-08-08 15:01:40.069171'),
(14, 'rashed ahmod', 'rashed123@lus.ac.bd', 1792544644, 303389, '6', '2000-04-21', 'O+', '12345', 'WhatsApp Image 2023-08-08 at 10.45.00 PM.jpeg', 'ad36a557f8c6b04fbbbc06210943556e', 0, 'super_admin', '2023-08-08 15:49:40.503654'),
(15, 'Nusrat Jahan', 'jahan123@lus.ac.bd', 1792544699, 20120, '6', '1999-04-04', 'A+', '12345', 'Nusrat Jahan.JPG', '26667b11f2c941e79cdc2e6e089c161f', 0, 'super_admin', '2023-08-08 15:51:46.071195'),
(16, 'Sumon', 'sumon123@lus.ac.bd', 1792544677, 1222, '6', '2002-06-11', 'A-', '12345', 'MD.Atikul Islam Sumon.jpg', '646f31139549f223fce88422087b1be4', 1, 'super_admin', '2024-02-22 14:05:33.140023'),
(17, 'Sabiha', 'sabiha123@lus.ac.bd', 1792544600, 2146, '6', '2000-09-11', 'AB+', '12345', 'Fatimah Tanjeem Sabiha.JPG', 'ba840dc9c4c4d8bee14cf4d36f0439ad', 1, 'super_admin', '2024-02-22 14:05:30.510351'),
(18, 'rashed ahmod', 'cse_2012020123@lus.ac.bd', 1792544234, 2012020123, '6', '2003-05-13', 'B-', '12345', 'download (1).jfif', '3c9cd36e2ca6c0d115c38ed98f2363f7', 1, 'student', '2024-02-22 14:05:25.607029'),
(19, 'Nusrat jahan', 'eee_2012020155@lus.ac.bd', 1792544633, 2012020155, '9', '2000-09-19', 'A-', '12345', 'download (2).jfif', 'c5a24c6d282d3f6e0737de94f8ca140f', 1, 'student', '2024-02-22 14:05:35.916843'),
(20, 'Sumon Ahmed', 'bua_201202122@lus.ac.bd', 1792544690, 2012020122, '7', '2003-05-08', 'A-', '12345', 'download.jfif', '3ca0e82613fd3eb91ed162f603c09cbf', 1, 'student', '2024-02-22 14:05:38.820541'),
(21, 'Ebrahim Hossain', 'ebrahim.hossain@lus.ac.bd', 1737853720, 1234, '6', '2000-01-04', 'A-', '12345', 'WhatsApp Image 2023-08-08 at 11.09.33 PM.jpeg', 'b05ec54e3141d7c54997988b85539d11', 1, 'super_admin', '2024-02-21 17:22:48.704235'),
(22, 'Jahedul Islam Mony', 'mony_123@lus.ac.bd', 1792544675, 1416, '6', '1995-05-25', 'O-', '12345', 'WhatsApp Image 2023-08-09 at 12.37.29 AM.jpeg', 'da0348872343456cd5d48c0496a0a085', 1, 'teacher', '2024-02-22 13:56:45.529477'),
(23, 'Jamaner Rahman', 'jaman23@lus.ac.bd', 1838764520, 1213, '9', '2001-01-08', 'A-', '12345', 'WhatsApp Image 2023-08-09 at 12.37.27 AM.jpeg', '5e0b12bbc7746a141ee751460108b300', 0, 'teacher', '2023-08-08 18:41:05.022368'),
(24, 'Kamal', 'kamal@lus.ac.bd', 2147483647, 1122, '16', '2023-04-01', 'B-', '12345', '1000_F_174002634_j3ntTvQ7wWQdy1AG87uHK15ASjnpWou5.jpg', '81fecdcab32663a5f963c40c395412d9', 1, 'accountant', '2024-02-22 14:06:21.681898'),
(25, 'Sabiha', 'cse_2012020146@lus.ac.bd', 1792544670, 2012020146, '8', '1986-10-09', 'AB-', '12345', 'png-transparent-businessperson-cartoon-woman-business-woman-microphone-hand.png', 'df07c9c538f0c36729a4a799caf78c33', 0, 'student', '2023-08-08 18:46:11.485836'),
(26, 'Musa', 'musa123_kk@lus.ac.bd', 2147483647, 2012020199, '6', '1998-10-18', 'B+', '12345', 'images (1).png', '707dbfb59f9412b1222b3760865741f1', 0, 'student', '2023-08-09 03:23:29.358499'),
(27, 'adil ahmed', 'cse_2012020170@lus.ac.bd', 2147483647, 2012020170, '6', '2023-08-09', 'B+', '123456', 'images (1).png', 'ebb89fed6a05efb510c24cc6625199c0', 0, 'student', '2023-08-09 05:42:29.963285'),
(28, 'Rashed islam', 'cse_2012020192@lus.ac.bd', 2147483647, 2012020145, '6', '2010-01-09', 'A-', '123456', 'download (1).jfif', 'e7cc0cf078f08fadd7ae7193e527e5ae', 0, 'student', '2023-08-09 06:30:47.889537'),
(29, 'naeem', 'cse_2012020110@lus.ac.bd', 1792544609, 2012020110, '10', '2024-01-17', 'B-', '12345', 'pngtree-cartoon-man-avatar-vector-ilustration-png-image_6111064.png', '6a363ed1555dd1502c54ac1b8b24e6a8', 0, 'student', '2024-01-20 14:25:17.064055');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`department_id`);

--
-- Indexes for table `feature`
--
ALTER TABLE `feature`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_fees`
--
ALTER TABLE `student_fees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `department_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `feature`
--
ALTER TABLE `feature`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_fees`
--
ALTER TABLE `student_fees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
