-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 08, 2023 at 10:46 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nasa_open_projects`
--

-- --------------------------------------------------------

--
-- Table structure for table `contributors`
--

CREATE TABLE `contributors` (
  `contributorId` int(11) NOT NULL,
  `projectId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `role` varchar(250) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contributors`
--

INSERT INTO `contributors` (`contributorId`, `projectId`, `userId`, `role`, `status`, `createdAt`, `updatedAt`) VALUES
(1, 2, 5, '', 1, '2023-10-08 15:32:10', '2023-10-08 17:10:33'),
(2, 10, 5, '', 1, '2023-10-08 17:12:54', NULL),
(3, 10, 5, '', 1, '2023-10-08 17:14:00', NULL),
(4, 12, 4, '', 1, '2023-10-08 17:58:33', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `projectId` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `title` varchar(250) DEFAULT NULL,
  `category` varchar(250) DEFAULT NULL,
  `visibility` varchar(250) DEFAULT NULL,
  `tags` varchar(250) DEFAULT NULL,
  `license` varchar(250) DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `link` varchar(250) DEFAULT NULL,
  `fundingType` varchar(250) DEFAULT NULL,
  `fundingSource` varchar(250) DEFAULT NULL,
  `fundingAmount` int(250) DEFAULT NULL,
  `fundingDescription` mediumtext DEFAULT NULL,
  `requirements` mediumtext DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`projectId`, `userId`, `title`, `category`, `visibility`, `tags`, `license`, `description`, `link`, `fundingType`, `fundingSource`, `fundingAmount`, `fundingDescription`, `requirements`, `status`, `createdAt`, `updatedAt`) VALUES
(1, 1, 'cONNECTx', 'Enviroment', 'Public', 'Science, Physics,AI, Computer', 'public', 'dsgfvfjdfhsdfsdfsdfs', 'https://abdulfortech.com', 'Crowdfunding', 'Crowdfunding', 800000, 'dgghdjbdvdnvb', 'fsbdsdfbsd', 1, '2023-10-07 10:44:23', '2023-10-07 12:33:57'),
(2, 1, 'First Project', 'Science', 'Public', 'Science, Physics,AI, Computer', 'public', 'dsgfvfjdfhsdfsdfsdfs', 'https://abdulfortech.com', 'Crowdfunding', 'Crowdfunding', 800000, 'dgghdjbdvdnvb', 'fsbdsdfbsd', 1, '2023-10-07 11:32:16', NULL),
(3, 1, 'Second Project', 'Science', 'Public', 'Science, Physics,AI, Computer', 'public', 'dsgfvfjdfhsdfsdfsdfs', 'https://abdulfortech.com', 'Crowdfunding', 'Crowdfunding', 800000, 'dgghdjbdvdnvb', 'fsbdsdfbsd', 1, '2023-10-07 11:33:02', NULL),
(4, 1, 'Third Project', 'Science', 'Public', 'Science, Physics,AI, Computer', 'public', 'dsgfvfjdfhsdfsdfsdfs', 'https://abdulfortech.com', 'Crowdfunding', 'Crowdfunding', 800000, 'dgghdjbdvdnvb', 'fsbdsdfbsd', 1, '2023-10-07 11:33:10', NULL),
(6, 4, 'bsd vygvherverfbeh', 'ebhvsbvsdvsdh', 'fbcsydgvsdufyg', 'Array', NULL, NULL, NULL, 'Grant', NULL, NULL, '90000', 'ewfgsfsdg', 0, '2023-10-08 10:55:12', NULL),
(7, 4, 'emwngdysfhsdvsdbnvsdfwefsdfb', 'emwngdysfhsdvsdbnvsdfwefsdfb', 'emwngdysfhsdvsdbnvsdfwefsdfb', 'Array', NULL, 'emwngdysfhsdvsdbnvsdfwefsdfb', NULL, 'None', NULL, NULL, '90000', 'emwngdysfhsdvsdbnvsdfwefsdfb', 0, '2023-10-08 10:55:37', NULL),
(8, 4, 'emwngdysfhsdvsdbnvsdfwefsdfb', 'emwngdysfhsdvsdbnvsdfwefsdfb', 'public', 'Array', NULL, 'emwngdysfhsdvsdbnvsdfwefsdfb', NULL, 'None', NULL, 90000, 'emwngdysfhsdvsdbnvsdfwefsdfb', 'emwngdysfhsdvsdbnvsdfwefsdfb', 1, '2023-10-08 10:56:03', NULL),
(10, 4, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Fugit, dicta.', 'Marine Biology', 'public', 'Geology', NULL, '                                            Lorem ipsum, dolor sit amet consectetur adipisicing elit. Fugit, dicta. In ducimus possimus iure error officiis ipsam, beatae explicabo autem quas quos placeat maxime inventore voluptatum adipisci repudiandae quibusdam dolor.                                        ', NULL, 'Grant', NULL, 90000, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Fugit, dicta. In ducimus possimus iure error officiis ipsam, beatae explicabo autem quas quos placeat maxime inventore voluptatum adipisci repudiandae quibusdam dolor.', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Fugit, dicta. In ducimus possimus iure error officiis ipsam, beatae explicabo autem quas quos placeat maxime inventore voluptatum adipisci repudiandae quibusdam dolor.', 1, '2023-10-08 10:58:13', '2023-10-08 11:58:03'),
(11, 4, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquid asperiores pariatur eveniet.', 'Quantum Physics', 'public', 'Geology', NULL, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquid asperiores pariatur eveniet, esse sapiente explicabo expedita tempore. Temporibus, nulla. Blanditiis dignissimos rerum in quam nesciunt vitae totam numquam alias quos.', NULL, 'Grant', NULL, 800000, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquid asperiores pariatur eveniet, esse sapiente explicabo expedita tempore. Temporibus, nulla. Blanditiis dignissimos rerum in quam nesciunt vitae totam numquam alias quos.', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquid asperiores pariatur eveniet, esse sapiente explicabo expedita tempore. Temporibus, nulla. Blanditiis dignissimos rerum in quam nesciunt vitae totam numquam alias quos.', 1, '2023-10-08 17:58:13', NULL),
(12, 4, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquid asperiores pariatur eveniet.', 'Quantum Physics', 'public', 'Geology', NULL, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquid asperiores pariatur eveniet, esse sapiente explicabo expedita tempore. Temporibus, nulla. Blanditiis dignissimos rerum in quam nesciunt vitae totam numquam alias quos.', NULL, 'Grant', NULL, 800000, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquid asperiores pariatur eveniet, esse sapiente explicabo expedita tempore. Temporibus, nulla. Blanditiis dignissimos rerum in quam nesciunt vitae totam numquam alias quos.', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquid asperiores pariatur eveniet, esse sapiente explicabo expedita tempore. Temporibus, nulla. Blanditiis dignissimos rerum in quam nesciunt vitae totam numquam alias quos.', 1, '2023-10-08 17:58:33', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

CREATE TABLE `requests` (
  `requestId` int(10) NOT NULL,
  `projectId` int(10) NOT NULL,
  `userId` int(10) NOT NULL,
  `title` varchar(250) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `status` int(10) NOT NULL,
  `createdAt` timestamp NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `requests`
--

INSERT INTO `requests` (`requestId`, `projectId`, `userId`, `title`, `description`, `status`, `createdAt`, `updatedAt`) VALUES
(1, 10, 5, 'Request to Join Lorem ipsum, dolor sit amet consectetur adipisicing elit. Fugit, dicta.', '                                        wfbsdfhsdf sdfsdugwf sdf sdfbbsdv sd sdfbsv dhghsdv  vdb d bdfbd df vd', 0, '2023-10-08 13:59:55', '2023-10-08 15:15:54'),
(2, 10, 5, 'Request to Join Lorem ipsum, dolor sit amet consectetur adipisicing elit. Fugit, dicta.', '                                        wfbsdfhsdf sdfsdugwf sdf sdfbbsdv sd sdfbsv dhghsdv  vdb d bdfbd df vd', 1, '2023-10-08 14:02:57', '2023-10-08 17:15:12'),
(3, 4, 4, 'Request to Join Third Project', 'fnsbfsdfsd ff sd sdbsdf vs vsd vsbvsd vsd vsd vsbdv s fnsbfsdfsd ff sd sdbsdf vs vsd vsbvsd vsd vsd vsbdv s fnsbfsdfsd ff sd sdbsdf vs vsd vsbvsd vsd vsd vsbdv s fnsbfsdfsd ff sd sdbsdf vs vsd vsbvsd vsd vsd vsbdv s fnsbfsdfsd ff sd sdbsdf vs vsd vsbvsd vsd vsd vsbdv s fnsbfsdfsd ff sd sdbsdf vs vsd vsbvsd vsd vsd vsbdv s fnsbfsdfsd ff sd sdbsdf vs vsd vsbvsd vsd vsd vsbdv s .', 1, '2023-10-08 18:03:50', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `skillId` int(20) NOT NULL,
  `title` varchar(250) NOT NULL,
  `status` int(10) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`skillId`, `title`, `status`, `createdAt`, `updatedAt`) VALUES
(1, 'Geology', 1, '2023-10-08 05:48:43', NULL),
(2, 'Biology', 1, '2023-10-08 05:49:02', '2023-10-08 20:30:25'),
(3, 'Quantum Physics', 1, '2023-10-08 20:33:26', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `taskId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `priority` varchar(250) DEFAULT NULL,
  `assignee` varchar(250) DEFAULT NULL,
  `description` varchar(5000) DEFAULT NULL,
  `startDate` varchar(250) DEFAULT NULL,
  `dueDate` varchar(250) DEFAULT NULL,
  `completedDate` varchar(250) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `userlogs`
--

CREATE TABLE `userlogs` (
  `userLogId` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `username` varchar(250) NOT NULL,
  `IPAddress` varchar(250) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userlogs`
--

INSERT INTO `userlogs` (`userLogId`, `userId`, `username`, `IPAddress`, `status`, `createdAt`, `updatedAt`) VALUES
(1, 1, 'ibnmudi@gmail.com', '::1', 0, '2023-10-04 17:26:07', NULL),
(2, 1, 'ibnmudi@gmail.com', '::1', 0, '2023-10-07 16:29:08', NULL),
(3, 4, 'abdull@gmail.com', '::1', 0, '2023-10-07 19:12:51', NULL),
(4, 4, 'abdull@gmail.com', '::1', 0, '2023-10-07 19:20:48', NULL),
(5, NULL, 'abdulll@gmail.com', '::1', 0, '2023-10-07 19:34:04', NULL),
(6, NULL, 'abdulll@gmail.com', '::1', 0, '2023-10-07 19:34:20', NULL),
(7, NULL, 'abdulll@gmail.com', '::1', 0, '2023-10-07 19:34:37', NULL),
(8, 4, 'abdull@gmail.com', '::1', 0, '2023-10-07 19:35:07', NULL),
(9, 4, 'abdull@gmail.com', '::1', 0, '2023-10-08 08:38:46', NULL),
(10, 5, 'abdul@abdulfortech.com', '::1', 0, '2023-10-08 13:09:19', NULL),
(11, 4, 'abdull@gmail.com', '::1', 0, '2023-10-08 14:15:06', NULL),
(12, 4, 'abdull@gmail.com', '::1', 0, '2023-10-08 19:11:11', NULL),
(13, 5, 'abdul@abdulfortech.com', '::1', 0, '2023-10-08 20:24:28', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userId` int(250) NOT NULL,
  `firstName` varchar(250) NOT NULL,
  `lastName` varchar(250) NOT NULL,
  `dob` varchar(250) NOT NULL,
  `gender` varchar(250) NOT NULL,
  `state` varchar(250) NOT NULL,
  `nationality` varchar(250) NOT NULL,
  `address` varchar(250) DEFAULT NULL,
  `email` varchar(250) NOT NULL,
  `phone` varchar(250) NOT NULL,
  `skills` varchar(250) DEFAULT NULL,
  `isVerified` int(250) DEFAULT NULL,
  `verificationCode` varchar(250) DEFAULT NULL,
  `password` varchar(250) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userId`, `firstName`, `lastName`, `dob`, `gender`, `state`, `nationality`, `address`, `email`, `phone`, `skills`, `isVerified`, `verificationCode`, `password`, `status`, `createdAt`, `updatedAt`) VALUES
(1, 'Abdullahi ', 'Aminu', '', '', '', '', NULL, 'ibnmudi@gmail.com', '08067456793', NULL, 0, 'e433445c601698e3d150', '$2y$10$n8FuXUQpPkwd.rNqiONW..sMJii/VAWbhJfIQoCibnFmGOCNI9JWi', 1, '2023-10-04 17:16:52', NULL),
(4, 'Abdullahi', 'Abdul', '2023-10-06', 'Male', 'Kano', 'Nigeria', 'NO1175 SALLRI BAKIN RUWA', 'abdull@gmail.com', '09000000000', 'Game Development', 0, 'a7739f10f01143cadcdb', '$2y$10$PIErvzxj0pvxHudPzwEkjOvap8YGS.F0mfOWRrI67tEaqJ5OIJeYy', 1, '2023-10-07 17:15:39', '2023-10-08 09:02:26'),
(5, 'Abdullahi', 'Aminu', '', '', '', '', NULL, 'abdul@abdulfortech.com', '08067456793', NULL, 0, 'b1caed5fd15ba8779147', '$2y$10$PpaqiTs0TYGhk8E44FnLcOIEAEolTEir3BiRwZtCmJZJdUSc75xsa', 1, '2023-10-08 13:08:57', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contributors`
--
ALTER TABLE `contributors`
  ADD PRIMARY KEY (`contributorId`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`projectId`);

--
-- Indexes for table `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`requestId`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`skillId`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`taskId`);

--
-- Indexes for table `userlogs`
--
ALTER TABLE `userlogs`
  ADD PRIMARY KEY (`userLogId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contributors`
--
ALTER TABLE `contributors`
  MODIFY `contributorId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `projectId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `requests`
--
ALTER TABLE `requests`
  MODIFY `requestId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `skillId` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `taskId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `userlogs`
--
ALTER TABLE `userlogs`
  MODIFY `userLogId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userId` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
