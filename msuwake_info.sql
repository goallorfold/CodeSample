-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 22, 2015 at 08:35 PM
-- Server version: 5.5.44-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `msuwake_info`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE IF NOT EXISTS `admin_users` (
  `personID` int(11) NOT NULL,
  PRIMARY KEY (`personID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `all_people`
--

CREATE TABLE IF NOT EXISTS `all_people` (
  `personID` int(11) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(50) DEFAULT NULL,
  `lastName` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phoneNumber` varchar(100) DEFAULT NULL,
  `skillLevel` varchar(50) DEFAULT NULL,
  `gradeLevel` varchar(50) DEFAULT NULL,
  `ownsBoat` int(11) DEFAULT NULL,
  `ipAddress` varchar(50) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`personID`),
  UNIQUE KEY `firstName` (`firstName`,`lastName`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=97 ;

--
-- Dumping data for table `all_people`
--

INSERT INTO `all_people` (`personID`, `firstName`, `lastName`, `email`, `phoneNumber`, `skillLevel`, `gradeLevel`, `ownsBoat`, `ipAddress`, `password`) VALUES
(1, 'David', 'Saksa', 'saksadav@msu.edu', '2488420026', '#1 WAKEBOARDER', 'junior', 0, '69.176.142.210', '$2y$10$5QKoHGSp73wGxQ6hPTadjuMCijPVM0Ea4UvoI1vNbAxjghYaP8bvO'),
(3, 'zack', 'dunphey', 'dunpheyz@msu.edu', '630-363-0654', 'beginner', 'freshman', 0, '35.20.86.27', '$2y$10$uVGwz7pTM.PKxS/xBGo6TON.WBjrnPZQgXIxYFYHwiRBNkV8wjf3i'),
(4, 'jake', 'brower', 'browerj3@msu.edu', '6169140692', 'advanced', 'sophomore', 0, '35.20.86.27', '$2y$10$uVGwz7pTM.PKxS/xBGo6TON.WBjrnPZQgXIxYFYHwiRBNkV8wjf3i'),
(5, 'Isabel', 'Brumleve', 'brumleve@msu.edu', '9062032544', 'beginner', 'freshman', 0, '35.20.86.27', '$2y$10$uVGwz7pTM.PKxS/xBGo6TON.WBjrnPZQgXIxYFYHwiRBNkV8wjf3i'),
(6, 'Eddie', 'Koneczny', 'koneczn1@msu.edu', '586-718-0042', 'beginner', 'sophomore', 0, '35.20.86.27', '$2y$10$uVGwz7pTM.PKxS/xBGo6TON.WBjrnPZQgXIxYFYHwiRBNkV8wjf3i'),
(7, 'Steve', 'Dorr', 'dorrstev@msu.edu', '8109643381', 'beginner', 'senior', 0, '35.20.86.27', '$2y$10$uVGwz7pTM.PKxS/xBGo6TON.WBjrnPZQgXIxYFYHwiRBNkV8wjf3i'),
(8, 'Josh', 'Borton', 'bortonj1@msu.edu', '734-649-5351', 'expert', 'junior', 1, '35.20.26.84', '$2y$10$uVGwz7pTM.PKxS/xBGo6TON.WBjrnPZQgXIxYFYHwiRBNkV8wjf3i'),
(9, 'David', 'Inman', 'inmandav@msu.edu', '6166483269', 'beginner', 'senior', 1, '35.20.86.27', '$2y$10$uVGwz7pTM.PKxS/xBGo6TON.WBjrnPZQgXIxYFYHwiRBNkV8wjf3i'),
(10, 'cory', 'hilton', 'hiltonc2@msu.edu', '586-839-2540', 'advanced', 'freshman', 0, '35.20.86.27', '$2y$10$uVGwz7pTM.PKxS/xBGo6TON.WBjrnPZQgXIxYFYHwiRBNkV8wjf3i'),
(11, 'enrique', 'vera', 'veraenri@msu.edu', '3238103162', 'beginner', 'freshman', 0, '35.20.26.84', '$2y$10$uVGwz7pTM.PKxS/xBGo6TON.WBjrnPZQgXIxYFYHwiRBNkV8wjf3i'),
(12, 'Katie', 'Blank', 'blankka1@msu.edu', '2695899955', 'beginner', 'junior', 0, '35.22.100.160', '$2y$10$uVGwz7pTM.PKxS/xBGo6TON.WBjrnPZQgXIxYFYHwiRBNkV8wjf3i'),
(13, 'Ben', '', 'bwhitelaw@sbcglobal.net', '248-752-0682', 'advanced', 'freshman', 0, '35.20.26.84', '$2y$10$uVGwz7pTM.PKxS/xBGo6TON.WBjrnPZQgXIxYFYHwiRBNkV8wjf3i'),
(14, 'Drew', 'Johnson', 'john40722@msu.edu', '925-382-5029', 'advanced', 'freshman', 0, '35.20.86.27', '$2y$10$uVGwz7pTM.PKxS/xBGo6TON.WBjrnPZQgXIxYFYHwiRBNkV8wjf3i'),
(15, 'Mason', 'Rohrback', 'rohrba12@msu.edu', '2316222438', 'advanced', 'freshman', 0, '35.22.100.160', '$2y$10$uVGwz7pTM.PKxS/xBGo6TON.WBjrnPZQgXIxYFYHwiRBNkV8wjf3i'),
(16, 'Cecilia', 'Dewys', 'dewyscec@msu.edu', '616-302-0942', 'beginner', 'junior', 1, '35.20.26.84', '$2y$10$uVGwz7pTM.PKxS/xBGo6TON.WBjrnPZQgXIxYFYHwiRBNkV8wjf3i'),
(17, 'Connor', 'Gartland', 'Gartla10@msu.edu', '9892745193', 'advanced', 'senior', 1, '35.20.86.27', '$2y$10$QOe6RRoDq3PzFx1idPvpnuzcMntd/H5NeT9qy3/itqR5mmlcRqbxC'),
(18, 'Jack', 'Bock', 'bockjohn@msu.edu', '3036385510', 'beginner', 'sophomore', 0, '35.22.100.160', '$2y$10$uVGwz7pTM.PKxS/xBGo6TON.WBjrnPZQgXIxYFYHwiRBNkV8wjf3i'),
(19, 'sam', 'amstutz', 'amstutz1@msu.edu', '2487390176', 'beginner', 'junior', 0, '35.20.86.27', '$2y$10$uVGwz7pTM.PKxS/xBGo6TON.WBjrnPZQgXIxYFYHwiRBNkV8wjf3i'),
(20, 'Sar', 'a', 'konkels1@msu.edu', '734-255-8807', 'beginner', 'senior', 0, '35.22.100.160', '$2y$10$uVGwz7pTM.PKxS/xBGo6TON.WBjrnPZQgXIxYFYHwiRBNkV8wjf3i'),
(21, 'Eric', 'Schmitt', 'schmi612@msu.edu', '(231) 357-1771', 'beginner', 'freshman', 0, '35.20.26.84', '$2y$10$uVGwz7pTM.PKxS/xBGo6TON.WBjrnPZQgXIxYFYHwiRBNkV8wjf3i'),
(22, 'Dennis', 'Spaulding', 'spauld49@msu.edu', '(734)-904-8103', 'beginner', 'freshman', 0, '35.20.86.27', '$2y$10$uVGwz7pTM.PKxS/xBGo6TON.WBjrnPZQgXIxYFYHwiRBNkV8wjf3i'),
(23, 'Gideon', 'Bush', 'bushgide@msu.edu', '2486604997', 'beginner', 'freshman', 0, '35.20.86.27', '$2y$10$uVGwz7pTM.PKxS/xBGo6TON.WBjrnPZQgXIxYFYHwiRBNkV8wjf3i'),
(24, 'Andrew', 'Maliszewski', 'malisze9@msu.edu', '8109234198', 'beginner', 'freshman', 0, '35.22.100.160', '$2y$10$uVGwz7pTM.PKxS/xBGo6TON.WBjrnPZQgXIxYFYHwiRBNkV8wjf3i'),
(25, 'Erin', 'Blackwell', 'blackw43@msu.edu', '248-404-0600', 'advanced', 'freshman', 0, '35.22.4.199', '$2y$10$uVGwz7pTM.PKxS/xBGo6TON.WBjrnPZQgXIxYFYHwiRBNkV8wjf3i'),
(26, 'Zach', 'Scheid', 'scheidza@msu.edu', '269-921-4472', 'advanced', 'freshman', 0, '35.20.26.84', '$2y$10$uVGwz7pTM.PKxS/xBGo6TON.WBjrnPZQgXIxYFYHwiRBNkV8wjf3i'),
(27, 'Omer', 'Atagul', 'atagulom@msu.edu', '5177750664', 'beginner', 'freshman', 0, '35.20.86.27', '$2y$10$uVGwz7pTM.PKxS/xBGo6TON.WBjrnPZQgXIxYFYHwiRBNkV8wjf3i'),
(28, 'Alexander', 'Siavrakas', 'siavraka@msu.edu', '2489789927', 'beginner', 'junior', 0, '35.22.100.160', '$2y$10$uVGwz7pTM.PKxS/xBGo6TON.WBjrnPZQgXIxYFYHwiRBNkV8wjf3i'),
(29, 'Jake', 'Jankoska', 'jankosk1@msu.edu', '9892935711', 'expert', 'freshman', 1, '35.20.26.84', '$2y$10$uVGwz7pTM.PKxS/xBGo6TON.WBjrnPZQgXIxYFYHwiRBNkV8wjf3i'),
(30, 'Sir', 'Nicklaus', 'pringlen@msu.edu', '517-282-9567', 'expert', 'senior', 1, '35.20.86.27', '$2y$10$uVGwz7pTM.PKxS/xBGo6TON.WBjrnPZQgXIxYFYHwiRBNkV8wjf3i'),
(31, 'Lexi', 'Peard', 'peardale@msu.edu', '6168218577', 'beginner', 'freshman', 0, '35.20.26.84', '$2y$10$uVGwz7pTM.PKxS/xBGo6TON.WBjrnPZQgXIxYFYHwiRBNkV8wjf3i'),
(32, 'Alivia', 'Larkin', 'larkinal@msu.edu', '517-290-7495', 'beginner', 'junior', 0, '35.20.86.27', '$2y$10$uVGwz7pTM.PKxS/xBGo6TON.WBjrnPZQgXIxYFYHwiRBNkV8wjf3i'),
(33, 'Courtnee', 'Sellers', 'csellers24@gmail.com', '248-925-7968', 'beginner', 'junior', 0, '35.20.26.84', '$2y$10$uVGwz7pTM.PKxS/xBGo6TON.WBjrnPZQgXIxYFYHwiRBNkV8wjf3i'),
(34, 'Dan', 'Jackson', 'jack1214@msu.edu', '2488816746', 'beginner', 'junior', 0, '35.20.26.84', '$2y$10$uVGwz7pTM.PKxS/xBGo6TON.WBjrnPZQgXIxYFYHwiRBNkV8wjf3i'),
(35, 'Pat', 'Lewis', 'lewisp10@msu.edu', '7348463969', 'advanced', 'junior', 1, '35.20.86.27', '$2y$10$uVGwz7pTM.PKxS/xBGo6TON.WBjrnPZQgXIxYFYHwiRBNkV8wjf3i'),
(36, 'Handy', 'Andy', 'fialkaan@msu.edu', '2488605525', 'expert', 'junior', 0, '35.22.4.199', '$2y$10$uVGwz7pTM.PKxS/xBGo6TON.WBjrnPZQgXIxYFYHwiRBNkV8wjf3i'),
(37, 'Mike', 'Suszan', 'suszanmi@msu.edu', '248-497-3032', 'advanced', 'senior', 0, '35.20.26.84', '$2y$10$uVGwz7pTM.PKxS/xBGo6TON.WBjrnPZQgXIxYFYHwiRBNkV8wjf3i'),
(38, 'Kelsey', 'McGorisk', 'mcgoris4@msu.edu', '2487365403', 'advanced', 'senior', 1, '35.22.100.160', '$2y$10$uVGwz7pTM.PKxS/xBGo6TON.WBjrnPZQgXIxYFYHwiRBNkV8wjf3i'),
(39, 'Kara', 'Bagby', 'k.bagby@aol.com', '8473225409', 'beginner', 'sophomore', 0, '35.20.86.27', '$2y$10$uVGwz7pTM.PKxS/xBGo6TON.WBjrnPZQgXIxYFYHwiRBNkV8wjf3i'),
(40, 'Rochelle', 'Rivera', 'rivera33@msu.edu', '9394759998', 'beginner', 'sophomore', 0, '35.20.86.27', '$2y$10$uVGwz7pTM.PKxS/xBGo6TON.WBjrnPZQgXIxYFYHwiRBNkV8wjf3i'),
(41, 'Grant', 'Gonzalez', 'gonza593@msu.edu', '6269935171', 'beginner', 'sophomore', 0, '35.20.86.27', '$2y$10$uVGwz7pTM.PKxS/xBGo6TON.WBjrnPZQgXIxYFYHwiRBNkV8wjf3i'),
(42, 'Ryan', 'Homik', 'homikrya@msu.edu', '6162834760', 'beginner', 'freshman', 0, '35.20.86.27', '$2y$10$uVGwz7pTM.PKxS/xBGo6TON.WBjrnPZQgXIxYFYHwiRBNkV8wjf3i'),
(44, 'Andrew', 'Brown', 'brown559@msu.edu', '6164303122', 'advanced', 'freshman', 0, '35.20.86.27', '$2y$10$uVGwz7pTM.PKxS/xBGo6TON.WBjrnPZQgXIxYFYHwiRBNkV8wjf3i'),
(45, 'Caleb', 'Engle', 'englecal@msu.edu', '2699089383', 'advanced', 'freshman', 1, '35.20.86.27', '$2y$10$uVGwz7pTM.PKxS/xBGo6TON.WBjrnPZQgXIxYFYHwiRBNkV8wjf3i'),
(46, 'Crissie', 'Zuchora', 'zuchorac@msu.edu', '2486353508', 'beginner', 'senior', 0, '35.20.86.27', '$2y$10$uVGwz7pTM.PKxS/xBGo6TON.WBjrnPZQgXIxYFYHwiRBNkV8wjf3i'),
(47, 'Lars', 'Thornton', 'thorn172@msu.edu', '231-360-8059', 'advanced', 'freshman', 0, '35.20.86.27', '$2y$10$uVGwz7pTM.PKxS/xBGo6TON.WBjrnPZQgXIxYFYHwiRBNkV8wjf3i'),
(48, 'Tyler', 'Fishback', 'tylerfishback@yahoo.com', '2488952001', 'advanced', 'freshman', 0, '35.20.86.27', '$2y$10$uVGwz7pTM.PKxS/xBGo6TON.WBjrnPZQgXIxYFYHwiRBNkV8wjf3i'),
(49, 'Aria', 'Holley', 'holleyar@msu.edu', '6165168604', 'beginner', 'junior', 0, '35.20.86.27', '$2y$10$uVGwz7pTM.PKxS/xBGo6TON.WBjrnPZQgXIxYFYHwiRBNkV8wjf3i'),
(50, 'George', 'Vlahos', 'vlahosge@msu.edu', '7085274684', 'advanced', 'junior', 0, '35.22.100.160', '$2y$10$uVGwz7pTM.PKxS/xBGo6TON.WBjrnPZQgXIxYFYHwiRBNkV8wjf3i'),
(51, 'Michael', 'Karana', 'karanami@msu.edu', '248-996-0245', 'beginner', 'junior', 0, '35.22.100.160', '$2y$10$uVGwz7pTM.PKxS/xBGo6TON.WBjrnPZQgXIxYFYHwiRBNkV8wjf3i'),
(52, 'Sam', 'McLean', 'mcleans5@msu.edu', '2489357237', 'advanced', 'junior', 1, '69.176.142.213', '$2y$10$pi.2IDVDZEvsdBYc7cIv0.NH2C4.ArQBknjObbICk7hSCWniup8qi'),
(53, 'Shaun', 'McKinney', 'mckin179@msu.edu', '517-898-7836', 'advanced', 'sophomore', 1, '35.20.2.254', '$2y$10$uVGwz7pTM.PKxS/xBGo6TON.WBjrnPZQgXIxYFYHwiRBNkV8wjf3i'),
(54, 'Adam', 'Ziemba', 'ziembaad@msu.edu', '7346343987', 'beginner', 'junior', 0, '35.22.4.199', '$2y$10$uVGwz7pTM.PKxS/xBGo6TON.WBjrnPZQgXIxYFYHwiRBNkV8wjf3i'),
(55, 'jordan', 'yost', 'yostjord@msu.edu', '2314200320', 'beginner', 'senior', 0, '35.20.107.250', '$2y$10$uVGwz7pTM.PKxS/xBGo6TON.WBjrnPZQgXIxYFYHwiRBNkV8wjf3i'),
(56, 'Eryn', 'Eustice', 'eusticee@msu.edu', '231-818-9451', 'advanced', 'senior', 0, '35.22.4.199', '$2y$10$uVGwz7pTM.PKxS/xBGo6TON.WBjrnPZQgXIxYFYHwiRBNkV8wjf3i'),
(57, 'Markus', 'Wolfram', 'wolframm@msu.edu', '7342726357', 'advanced', 'senior', 0, '35.20.2.254', '$2y$10$uVGwz7pTM.PKxS/xBGo6TON.WBjrnPZQgXIxYFYHwiRBNkV8wjf3i'),
(58, 'Brenna', 'Sleggs', 'sleggsbr@msu.edu', '7168299598', 'beginner', 'sophomore', 0, '35.20.107.250', '$2y$10$uVGwz7pTM.PKxS/xBGo6TON.WBjrnPZQgXIxYFYHwiRBNkV8wjf3i'),
(59, 'Thomas', 'Topping', 'topping5@msu.edu', '5862954357', 'beginner', 'junior', 1, '35.22.4.199', '$2y$10$uVGwz7pTM.PKxS/xBGo6TON.WBjrnPZQgXIxYFYHwiRBNkV8wjf3i'),
(60, 'Peter', 'Simala', 'simalape@msu.edu', '3015027617', 'beginner', 'sophomore', 0, '35.20.2.254', '$2y$10$uVGwz7pTM.PKxS/xBGo6TON.WBjrnPZQgXIxYFYHwiRBNkV8wjf3i'),
(61, 'Angela', 'Ludlow', 'ludlowan@msu.edu', '2486605743', 'beginner', 'sophomore', 1, '35.20.2.254', '$2y$10$uVGwz7pTM.PKxS/xBGo6TON.WBjrnPZQgXIxYFYHwiRBNkV8wjf3i'),
(62, 'Ryan', 'Sugnet', 'sugnetry@msu.edu', '989-430-9481', 'advanced', 'junior', 1, '35.20.107.250', '$2y$10$X4zXhkC/pQCfapPd4OcwtuLoBbE4N80ozMH9eBN1nJVRfOipQnL1q'),
(63, 'Mackenzie', 'Kreitz', 'mackenzie.kreitz@yahoo.com', '2485049977', 'beginner', 'junior', 0, '35.20.2.254', '$2y$10$uVGwz7pTM.PKxS/xBGo6TON.WBjrnPZQgXIxYFYHwiRBNkV8wjf3i'),
(64, 'christian', 'Skarli', 'skarlich@msu.edu', '6169010551', 'beginner', 'junior', 0, '35.20.107.250', '$2y$10$uVGwz7pTM.PKxS/xBGo6TON.WBjrnPZQgXIxYFYHwiRBNkV8wjf3i'),
(65, 'Rudy', 'Borland', 'borlandr@msu.edu', '2482105838', 'advanced', 'sophomore', 0, '35.22.4.199', '$2y$10$uVGwz7pTM.PKxS/xBGo6TON.WBjrnPZQgXIxYFYHwiRBNkV8wjf3i'),
(66, 'Alex', 'Tokarz', 'tokarzal@msu.edu', '2489826041', 'beginner', 'junior', 0, '35.20.107.250', '$2y$10$uVGwz7pTM.PKxS/xBGo6TON.WBjrnPZQgXIxYFYHwiRBNkV8wjf3i'),
(67, 'Paul', 'Sharoe', 'pwsharpe36@gmail.com', '9896008370', 'beginner', 'junior', 0, '35.20.2.254', '$2y$10$uVGwz7pTM.PKxS/xBGo6TON.WBjrnPZQgXIxYFYHwiRBNkV8wjf3i'),
(68, 'Jake', 'JaBaay', 'jabaayja@msu.edu', '6169142615', 'beginner', 'sophomore', 0, '35.22.4.199', '$2y$10$uVGwz7pTM.PKxS/xBGo6TON.WBjrnPZQgXIxYFYHwiRBNkV8wjf3i'),
(69, 'Treasure', 'Roberts', 'rober826@msu.edu', '313-733-7860', 'beginner', 'sophomore', 0, '35.22.4.199', '$2y$10$uVGwz7pTM.PKxS/xBGo6TON.WBjrnPZQgXIxYFYHwiRBNkV8wjf3i'),
(70, 'Madison', '', 'maddyp1996@gmail.com', '4127167655', 'beginner', 'sophomore', 0, '35.22.4.199', '$2y$10$uVGwz7pTM.PKxS/xBGo6TON.WBjrnPZQgXIxYFYHwiRBNkV8wjf3i'),
(71, 'Jake', 'Vieau', 'vieaujac@msu.edu', '9013568908', 'beginner', 'sophomore', 0, '35.20.2.254', '$2y$10$uVGwz7pTM.PKxS/xBGo6TON.WBjrnPZQgXIxYFYHwiRBNkV8wjf3i'),
(72, 'Bradley', 'Glasser', 'glasserb@msu.edu', '6165028046', 'expert', 'senior', 1, '35.20.107.250', '$2y$10$uVGwz7pTM.PKxS/xBGo6TON.WBjrnPZQgXIxYFYHwiRBNkV8wjf3i'),
(73, 'Tyler', 'May', 'maytyler@msu.edu', '248-807-9807', '', 'senior', 1, '35.20.2.254', '$2y$10$uVGwz7pTM.PKxS/xBGo6TON.WBjrnPZQgXIxYFYHwiRBNkV8wjf3i'),
(74, 'corey', 'beyer', 'beyercor@msu.edu', '616 610 0461', 'advanced', 'sophomore', 0, '35.20.107.250', '$2y$10$uVGwz7pTM.PKxS/xBGo6TON.WBjrnPZQgXIxYFYHwiRBNkV8wjf3i'),
(75, 'Andrese', 'D', 'Andresecockroft@gmail.com', '313-244-6031', 'beginner', 'sophomore', 0, '35.22.4.199', '$2y$10$uVGwz7pTM.PKxS/xBGo6TON.WBjrnPZQgXIxYFYHwiRBNkV8wjf3i'),
(76, 'Riley', 'Zemcik', 'zemcikri@msu.edu', '(989)277-8978', 'beginner', 'junior', 0, '35.20.2.254', '$2y$10$uVGwz7pTM.PKxS/xBGo6TON.WBjrnPZQgXIxYFYHwiRBNkV8wjf3i'),
(77, 'Brittany', 'Macintyre', 'macinty9@msu.edu', '734-620-1411', 'beginner', 'freshman', 0, '35.20.2.254', '$2y$10$uVGwz7pTM.PKxS/xBGo6TON.WBjrnPZQgXIxYFYHwiRBNkV8wjf3i'),
(78, 'Montaque', 'Bailey', 'Montaquebailey@gmail.com', '586-935-2972', 'beginner', 'sophomore', 0, '35.22.4.199', '$2y$10$uVGwz7pTM.PKxS/xBGo6TON.WBjrnPZQgXIxYFYHwiRBNkV8wjf3i'),
(79, 'Austin', 'Piwinski', 'piwinskiaustin@gmail.com', '586-808-1449', 'advanced', 'junior', 1, '35.20.107.250', '$2y$10$uVGwz7pTM.PKxS/xBGo6TON.WBjrnPZQgXIxYFYHwiRBNkV8wjf3i'),
(80, 'alyssa', 'forman', 'formanal@msu.edu', '2487663699', 'beginner', 'freshman', 0, '35.20.107.250', '$2y$10$uVGwz7pTM.PKxS/xBGo6TON.WBjrnPZQgXIxYFYHwiRBNkV8wjf3i'),
(81, 'Kai', 'Selwa', 'selwakai@msu.edu', '2486879671', 'beginner', 'freshman', 0, '35.20.2.254', '$2y$10$uVGwz7pTM.PKxS/xBGo6TON.WBjrnPZQgXIxYFYHwiRBNkV8wjf3i'),
(82, 'Tristan', 'Eggenberger', 'eggenbe3@msu.edu', '517-256-0656', 'advanced', 'junior', 0, '35.20.107.250', '$2y$10$uVGwz7pTM.PKxS/xBGo6TON.WBjrnPZQgXIxYFYHwiRBNkV8wjf3i'),
(83, 'Doug', 'Kubiak', 'kubiakdo@msu.edu', '6166488511', 'beginner', 'junior', 0, '35.20.2.254', '$2y$10$uVGwz7pTM.PKxS/xBGo6TON.WBjrnPZQgXIxYFYHwiRBNkV8wjf3i'),
(84, 'wyatt', 'satterelli', 'sattere1@msu.edu', '517-648-0580', 'advanced', 'freshman', 0, '35.20.107.250', '$2y$10$uVGwz7pTM.PKxS/xBGo6TON.WBjrnPZQgXIxYFYHwiRBNkV8wjf3i'),
(85, 'Andy', 'Radelet', 'radeleta@msu.edu', '8479770150', 'beginner', 'junior', 0, '35.22.4.199', '$2y$10$uVGwz7pTM.PKxS/xBGo6TON.WBjrnPZQgXIxYFYHwiRBNkV8wjf3i'),
(86, 'Kyle', 'Goodrich', 'kgoodrich14@jcu.edu', '585-478-0721', 'beginner', 'senior', 0, '35.22.4.199', '$2y$10$uVGwz7pTM.PKxS/xBGo6TON.WBjrnPZQgXIxYFYHwiRBNkV8wjf3i'),
(87, 'Matthew', 'Brazier', 'brazierm@msu.edu', '586-942-9386', 'advanced', 'freshman', 0, '35.20.2.254', '$2y$10$uVGwz7pTM.PKxS/xBGo6TON.WBjrnPZQgXIxYFYHwiRBNkV8wjf3i'),
(88, 'Bianca', 'Williams', 'will2715@msu.edu', '(734) 355-1001', 'beginner', 'junior', 0, '35.20.107.250', '$2y$10$uVGwz7pTM.PKxS/xBGo6TON.WBjrnPZQgXIxYFYHwiRBNkV8wjf3i'),
(89, 'Luke', 'Gaudette', 'gaudett4@msu.edu', '(616)466-9178', 'advanced', 'freshman', 0, '35.13.53.136', '$2y$10$uVGwz7pTM.PKxS/xBGo6TON.WBjrnPZQgXIxYFYHwiRBNkV8wjf3i'),
(90, 'Brooke', 'Bearden', 'bearden4@msu.edu', '2485686835', 'advanced', 'sophomore', 1, '35.14.113.64', '$2y$10$uVGwz7pTM.PKxS/xBGo6TON.WBjrnPZQgXIxYFYHwiRBNkV8wjf3i'),
(91, 'Jordon', 'Kosloski', 'koslos11@msu.edu', '5178987246', 'beginner', 'senior', 0, '70.210.67.19', '$2y$10$uVGwz7pTM.PKxS/xBGo6TON.WBjrnPZQgXIxYFYHwiRBNkV8wjf3i'),
(92, 'Craig', 'keinath', 'keinath4@msu.edu', '9892934965', 'beginner', 'senior', 0, '66.87.115.209', '$2y$10$uVGwz7pTM.PKxS/xBGo6TON.WBjrnPZQgXIxYFYHwiRBNkV8wjf3i'),
(93, 'April', 'Kudwa', 'kidwaapr@msu.edu', '9892778511', 'beginner', 'junior', 0, '66.87.114.99', '$2y$10$uVGwz7pTM.PKxS/xBGo6TON.WBjrnPZQgXIxYFYHwiRBNkV8wjf3i'),
(94, 'Josh', 'Edwards', 'edwar533@msu.edu', '2487657360', 'expert', 'sophomore', 1, '35.20.31.143', '$2y$10$uVGwz7pTM.PKxS/xBGo6TON.WBjrnPZQgXIxYFYHwiRBNkV8wjf3i');

-- --------------------------------------------------------

--
-- Table structure for table `day_id`
--

CREATE TABLE IF NOT EXISTS `day_id` (
  `dayID` int(11) NOT NULL AUTO_INCREMENT,
  `dateInfo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`dayID`),
  UNIQUE KEY `dateInfo` (`dateInfo`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=855 ;

--
-- Dumping data for table `day_id`
--

INSERT INTO `day_id` (`dayID`, `dateInfo`) VALUES
(123, '1/1/2016'),
(132, '1/10/2016'),
(133, '1/11/2016'),
(134, '1/12/2016'),
(135, '1/13/2016'),
(136, '1/14/2016'),
(137, '1/15/2016'),
(138, '1/16/2016'),
(139, '1/17/2016'),
(140, '1/18/2016'),
(141, '1/19/2016'),
(124, '1/2/2016'),
(142, '1/20/2016'),
(143, '1/21/2016'),
(144, '1/22/2016'),
(145, '1/23/2016'),
(146, '1/24/2016'),
(147, '1/25/2016'),
(148, '1/26/2016'),
(149, '1/27/2016'),
(150, '1/28/2016'),
(151, '1/29/2016'),
(125, '1/3/2016'),
(152, '1/30/2016'),
(153, '1/31/2016'),
(126, '1/4/2016'),
(127, '1/5/2016'),
(128, '1/6/2016'),
(129, '1/7/2016'),
(130, '1/8/2016'),
(131, '1/9/2016'),
(31, '10/1/2015'),
(397, '10/1/2016'),
(40, '10/10/2015'),
(406, '10/10/2016'),
(41, '10/11/2015'),
(407, '10/11/2016'),
(42, '10/12/2015'),
(408, '10/12/2016'),
(43, '10/13/2015'),
(409, '10/13/2016'),
(44, '10/14/2015'),
(410, '10/14/2016'),
(45, '10/15/2015'),
(411, '10/15/2016'),
(46, '10/16/2015'),
(412, '10/16/2016'),
(47, '10/17/2015'),
(413, '10/17/2016'),
(48, '10/18/2015'),
(414, '10/18/2016'),
(49, '10/19/2015'),
(415, '10/19/2016'),
(32, '10/2/2015'),
(398, '10/2/2016'),
(50, '10/20/2015'),
(416, '10/20/2016'),
(51, '10/21/2015'),
(417, '10/21/2016'),
(52, '10/22/2015'),
(418, '10/22/2016'),
(53, '10/23/2015'),
(419, '10/23/2016'),
(54, '10/24/2015'),
(420, '10/24/2016'),
(55, '10/25/2015'),
(421, '10/25/2016'),
(56, '10/26/2015'),
(422, '10/26/2016'),
(57, '10/27/2015'),
(423, '10/27/2016'),
(58, '10/28/2015'),
(424, '10/28/2016'),
(59, '10/29/2015'),
(425, '10/29/2016'),
(33, '10/3/2015'),
(399, '10/3/2016'),
(60, '10/30/2015'),
(426, '10/30/2016'),
(61, '10/31/2015'),
(427, '10/31/2016'),
(34, '10/4/2015'),
(400, '10/4/2016'),
(35, '10/5/2015'),
(401, '10/5/2016'),
(36, '10/6/2015'),
(402, '10/6/2016'),
(37, '10/7/2015'),
(403, '10/7/2016'),
(38, '10/8/2015'),
(404, '10/8/2016'),
(39, '10/9/2015'),
(405, '10/9/2016'),
(62, '11/1/2015'),
(428, '11/1/2016'),
(71, '11/10/2015'),
(437, '11/10/2016'),
(72, '11/11/2015'),
(438, '11/11/2016'),
(73, '11/12/2015'),
(439, '11/12/2016'),
(74, '11/13/2015'),
(440, '11/13/2016'),
(75, '11/14/2015'),
(441, '11/14/2016'),
(76, '11/15/2015'),
(442, '11/15/2016'),
(77, '11/16/2015'),
(443, '11/16/2016'),
(78, '11/17/2015'),
(444, '11/17/2016'),
(79, '11/18/2015'),
(445, '11/18/2016'),
(80, '11/19/2015'),
(446, '11/19/2016'),
(63, '11/2/2015'),
(429, '11/2/2016'),
(81, '11/20/2015'),
(447, '11/20/2016'),
(82, '11/21/2015'),
(448, '11/21/2016'),
(83, '11/22/2015'),
(449, '11/22/2016'),
(84, '11/23/2015'),
(450, '11/23/2016'),
(85, '11/24/2015'),
(451, '11/24/2016'),
(86, '11/25/2015'),
(452, '11/25/2016'),
(87, '11/26/2015'),
(453, '11/26/2016'),
(88, '11/27/2015'),
(454, '11/27/2016'),
(89, '11/28/2015'),
(455, '11/28/2016'),
(90, '11/29/2015'),
(456, '11/29/2016'),
(64, '11/3/2015'),
(430, '11/3/2016'),
(91, '11/30/2015'),
(457, '11/30/2016'),
(65, '11/4/2015'),
(431, '11/4/2016'),
(66, '11/5/2015'),
(432, '11/5/2016'),
(67, '11/6/2015'),
(433, '11/6/2016'),
(68, '11/7/2015'),
(434, '11/7/2016'),
(69, '11/8/2015'),
(435, '11/8/2016'),
(70, '11/9/2015'),
(436, '11/9/2016'),
(92, '12/1/2015'),
(458, '12/1/2016'),
(101, '12/10/2015'),
(467, '12/10/2016'),
(102, '12/11/2015'),
(468, '12/11/2016'),
(103, '12/12/2015'),
(469, '12/12/2016'),
(104, '12/13/2015'),
(470, '12/13/2016'),
(105, '12/14/2015'),
(471, '12/14/2016'),
(106, '12/15/2015'),
(472, '12/15/2016'),
(107, '12/16/2015'),
(473, '12/16/2016'),
(108, '12/17/2015'),
(474, '12/17/2016'),
(109, '12/18/2015'),
(475, '12/18/2016'),
(110, '12/19/2015'),
(476, '12/19/2016'),
(93, '12/2/2015'),
(459, '12/2/2016'),
(111, '12/20/2015'),
(477, '12/20/2016'),
(112, '12/21/2015'),
(478, '12/21/2016'),
(113, '12/22/2015'),
(479, '12/22/2016'),
(114, '12/23/2015'),
(480, '12/23/2016'),
(115, '12/24/2015'),
(481, '12/24/2016'),
(116, '12/25/2015'),
(482, '12/25/2016'),
(117, '12/26/2015'),
(483, '12/26/2016'),
(118, '12/27/2015'),
(484, '12/27/2016'),
(119, '12/28/2015'),
(485, '12/28/2016'),
(120, '12/29/2015'),
(486, '12/29/2016'),
(94, '12/3/2015'),
(460, '12/3/2016'),
(121, '12/30/2015'),
(487, '12/30/2016'),
(122, '12/31/2015'),
(488, '12/31/2016'),
(95, '12/4/2015'),
(461, '12/4/2016'),
(96, '12/5/2015'),
(462, '12/5/2016'),
(97, '12/6/2015'),
(463, '12/6/2016'),
(98, '12/7/2015'),
(464, '12/7/2016'),
(99, '12/8/2015'),
(465, '12/8/2016'),
(100, '12/9/2015'),
(466, '12/9/2016'),
(154, '2/1/2016'),
(163, '2/10/2016'),
(164, '2/11/2016'),
(165, '2/12/2016'),
(166, '2/13/2016'),
(167, '2/14/2016'),
(168, '2/15/2016'),
(169, '2/16/2016'),
(170, '2/17/2016'),
(171, '2/18/2016'),
(172, '2/19/2016'),
(155, '2/2/2016'),
(173, '2/20/2016'),
(174, '2/21/2016'),
(175, '2/22/2016'),
(176, '2/23/2016'),
(177, '2/24/2016'),
(178, '2/25/2016'),
(179, '2/26/2016'),
(180, '2/27/2016'),
(181, '2/28/2016'),
(182, '2/29/2016'),
(156, '2/3/2016'),
(157, '2/4/2016'),
(158, '2/5/2016'),
(159, '2/6/2016'),
(160, '2/7/2016'),
(161, '2/8/2016'),
(162, '2/9/2016'),
(183, '3/1/2016'),
(192, '3/10/2016'),
(193, '3/11/2016'),
(194, '3/12/2016'),
(195, '3/13/2016'),
(196, '3/14/2016'),
(197, '3/15/2016'),
(198, '3/16/2016'),
(199, '3/17/2016'),
(200, '3/18/2016'),
(201, '3/19/2016'),
(184, '3/2/2016'),
(202, '3/20/2016'),
(203, '3/21/2016'),
(204, '3/22/2016'),
(205, '3/23/2016'),
(206, '3/24/2016'),
(207, '3/25/2016'),
(208, '3/26/2016'),
(209, '3/27/2016'),
(210, '3/28/2016'),
(211, '3/29/2016'),
(185, '3/3/2016'),
(212, '3/30/2016'),
(213, '3/31/2016'),
(186, '3/4/2016'),
(187, '3/5/2016'),
(188, '3/6/2016'),
(189, '3/7/2016'),
(190, '3/8/2016'),
(191, '3/9/2016'),
(214, '4/1/2016'),
(223, '4/10/2016'),
(224, '4/11/2016'),
(225, '4/12/2016'),
(226, '4/13/2016'),
(227, '4/14/2016'),
(228, '4/15/2016'),
(229, '4/16/2016'),
(230, '4/17/2016'),
(231, '4/18/2016'),
(232, '4/19/2016'),
(215, '4/2/2016'),
(233, '4/20/2016'),
(234, '4/21/2016'),
(235, '4/22/2016'),
(236, '4/23/2016'),
(237, '4/24/2016'),
(238, '4/25/2016'),
(239, '4/26/2016'),
(240, '4/27/2016'),
(241, '4/28/2016'),
(242, '4/29/2016'),
(216, '4/3/2016'),
(243, '4/30/2016'),
(217, '4/4/2016'),
(218, '4/5/2016'),
(219, '4/6/2016'),
(220, '4/7/2016'),
(221, '4/8/2016'),
(222, '4/9/2016'),
(244, '5/1/2016'),
(253, '5/10/2016'),
(254, '5/11/2016'),
(255, '5/12/2016'),
(256, '5/13/2016'),
(257, '5/14/2016'),
(258, '5/15/2016'),
(259, '5/16/2016'),
(260, '5/17/2016'),
(261, '5/18/2016'),
(262, '5/19/2016'),
(245, '5/2/2016'),
(263, '5/20/2016'),
(264, '5/21/2016'),
(265, '5/22/2016'),
(266, '5/23/2016'),
(267, '5/24/2016'),
(268, '5/25/2016'),
(269, '5/26/2016'),
(270, '5/27/2016'),
(271, '5/28/2016'),
(272, '5/29/2016'),
(246, '5/3/2016'),
(273, '5/30/2016'),
(274, '5/31/2016'),
(247, '5/4/2016'),
(248, '5/5/2016'),
(249, '5/6/2016'),
(250, '5/7/2016'),
(251, '5/8/2016'),
(252, '5/9/2016'),
(275, '6/1/2016'),
(284, '6/10/2016'),
(285, '6/11/2016'),
(286, '6/12/2016'),
(287, '6/13/2016'),
(288, '6/14/2016'),
(289, '6/15/2016'),
(290, '6/16/2016'),
(291, '6/17/2016'),
(292, '6/18/2016'),
(293, '6/19/2016'),
(276, '6/2/2016'),
(294, '6/20/2016'),
(295, '6/21/2016'),
(296, '6/22/2016'),
(297, '6/23/2016'),
(298, '6/24/2016'),
(299, '6/25/2016'),
(300, '6/26/2016'),
(301, '6/27/2016'),
(302, '6/28/2016'),
(303, '6/29/2016'),
(277, '6/3/2016'),
(304, '6/30/2016'),
(278, '6/4/2016'),
(279, '6/5/2016'),
(280, '6/6/2016'),
(281, '6/7/2016'),
(282, '6/8/2016'),
(283, '6/9/2016'),
(305, '7/1/2016'),
(314, '7/10/2016'),
(315, '7/11/2016'),
(316, '7/12/2016'),
(317, '7/13/2016'),
(318, '7/14/2016'),
(319, '7/15/2016'),
(320, '7/16/2016'),
(321, '7/17/2016'),
(322, '7/18/2016'),
(323, '7/19/2016'),
(306, '7/2/2016'),
(324, '7/20/2016'),
(325, '7/21/2016'),
(326, '7/22/2016'),
(327, '7/23/2016'),
(328, '7/24/2016'),
(329, '7/25/2016'),
(330, '7/26/2016'),
(331, '7/27/2016'),
(332, '7/28/2016'),
(333, '7/29/2016'),
(307, '7/3/2016'),
(334, '7/30/2016'),
(335, '7/31/2016'),
(308, '7/4/2016'),
(309, '7/5/2016'),
(310, '7/6/2016'),
(311, '7/7/2016'),
(312, '7/8/2016'),
(313, '7/9/2016'),
(336, '8/1/2016'),
(345, '8/10/2016'),
(346, '8/11/2016'),
(347, '8/12/2016'),
(348, '8/13/2016'),
(349, '8/14/2016'),
(350, '8/15/2016'),
(351, '8/16/2016'),
(352, '8/17/2016'),
(353, '8/18/2016'),
(354, '8/19/2016'),
(337, '8/2/2016'),
(355, '8/20/2016'),
(356, '8/21/2016'),
(357, '8/22/2016'),
(358, '8/23/2016'),
(359, '8/24/2016'),
(360, '8/25/2016'),
(361, '8/26/2016'),
(362, '8/27/2016'),
(363, '8/28/2016'),
(364, '8/29/2016'),
(338, '8/3/2016'),
(365, '8/30/2016'),
(366, '8/31/2016'),
(339, '8/4/2016'),
(340, '8/5/2016'),
(341, '8/6/2016'),
(342, '8/7/2016'),
(343, '8/8/2016'),
(344, '8/9/2016'),
(1, '9/1/2015'),
(367, '9/1/2016'),
(10, '9/10/2015'),
(376, '9/10/2016'),
(11, '9/11/2015'),
(377, '9/11/2016'),
(12, '9/12/2015'),
(378, '9/12/2016'),
(13, '9/13/2015'),
(379, '9/13/2016'),
(14, '9/14/2015'),
(380, '9/14/2016'),
(15, '9/15/2015'),
(381, '9/15/2016'),
(16, '9/16/2015'),
(382, '9/16/2016'),
(17, '9/17/2015'),
(383, '9/17/2016'),
(18, '9/18/2015'),
(384, '9/18/2016'),
(19, '9/19/2015'),
(385, '9/19/2016'),
(2, '9/2/2015'),
(368, '9/2/2016'),
(20, '9/20/2015'),
(386, '9/20/2016'),
(21, '9/21/2015'),
(387, '9/21/2016'),
(22, '9/22/2015'),
(388, '9/22/2016'),
(23, '9/23/2015'),
(389, '9/23/2016'),
(24, '9/24/2015'),
(390, '9/24/2016'),
(25, '9/25/2015'),
(391, '9/25/2016'),
(26, '9/26/2015'),
(392, '9/26/2016'),
(27, '9/27/2015'),
(393, '9/27/2016'),
(28, '9/28/2015'),
(394, '9/28/2016'),
(29, '9/29/2015'),
(395, '9/29/2016'),
(3, '9/3/2015'),
(369, '9/3/2016'),
(30, '9/30/2015'),
(396, '9/30/2016'),
(4, '9/4/2015'),
(370, '9/4/2016'),
(5, '9/5/2015'),
(371, '9/5/2016'),
(6, '9/6/2015'),
(372, '9/6/2016'),
(7, '9/7/2015'),
(373, '9/7/2016'),
(8, '9/8/2015'),
(374, '9/8/2016'),
(9, '9/9/2015'),
(375, '9/9/2016');

-- --------------------------------------------------------

--
-- Table structure for table `heard`
--

CREATE TABLE IF NOT EXISTS `heard` (
  `personID` int(11) NOT NULL,
  `heardInfo` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`personID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `heard`
--

INSERT INTO `heard` (`personID`, `heardInfo`) VALUES
(1, 'sparticipation'),
(3, 'Club day'),
(4, 'My friend'),
(5, 'Sparticipation'),
(6, 'already a member'),
(7, 'Flyer'),
(8, 'dick to mouth'),
(9, 'started with sam'),
(10, 'sparticipation'),
(11, 'sparticipation'),
(12, 'Cabbage'),
(13, 'Sparticipation'),
(14, 'at club fair'),
(15, 'Stumbled into Andy''s'),
(16, 'Already a member'),
(17, 'Friend on the Ski Team'),
(18, 'Sparticipation'),
(19, 'andrew'),
(20, 'email'),
(21, 'Sparticipation'),
(22, 'Josh Borton'),
(23, 'Friends'),
(24, 'Sparticipation'),
(25, 'My friend'),
(26, 'Friends'),
(27, 'Sparticiparion'),
(28, 'sparticipation'),
(29, 'Sparticipation'),
(30, 'The wind'),
(31, 'sparticipation'),
(32, 'My super awesome/sexy boyfriend Sir Nicklaus Pringle III'),
(33, 'sparticipation'),
(34, 'not sure'),
(35, 'Accounting class'),
(36, 'sam is gay'),
(37, 'Kels, Inman, Katie Blank'),
(38, 'riff raff'),
(39, 'sparticipation'),
(40, 'Sparticipation '),
(41, 'Sparticipation'),
(42, 'Andrew Brown my roomate. I mainly want to be a photographer/videographer.'),
(44, 'friends'),
(45, 'Flacka'),
(46, 'Twitter'),
(47, 'friend'),
(48, 'Flacka'),
(49, 'Sparticipation'),
(50, 'friend'),
(51, 'Online'),
(52, 'Founder'),
(53, 'Instagram'),
(54, 'Waterski Team'),
(55, 'last year'),
(56, 'email'),
(57, 'Email'),
(58, 'Twitter'),
(59, 'Email'),
(60, 'A friend'),
(61, 'A booth at the Rock'),
(62, 'your mom'),
(63, 'APRIL WOO ;)'),
(64, 'bruh'),
(65, 'dinman'),
(66, 'inman '),
(67, 'Twitter'),
(68, 'Friends'),
(69, 'My classmate April'),
(70, 'Friend'),
(71, 'youtube'),
(72, 'Pornhub'),
(73, 'I fucked yo bitch, she told me'),
(74, 'spring meeting last year'),
(75, 'Maddy & terisher '),
(76, 'April Kudwa'),
(77, 'Friends'),
(78, 'Maddy & April '),
(79, 'Sam'),
(80, 'friend'),
(81, 'sparticipation'),
(82, 'Friends'),
(83, 'last year?'),
(84, 'Spartisipation'),
(85, 'Mackenzie Kreitz'),
(86, 'Kreitz'),
(87, 'Club List'),
(88, 'Sparticipation yo!'),
(89, 'Lexi Peard'),
(90, 'through a friend, **my boat isn''t here though'),
(91, 'Email '),
(92, 'Email'),
(93, 'Samwell'),
(94, 'Handy Andy and Uncle Sam hmu ');

-- --------------------------------------------------------

--
-- Table structure for table `mailing_list`
--

CREATE TABLE IF NOT EXISTS `mailing_list` (
  `personID` int(11) NOT NULL,
  PRIMARY KEY (`personID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mailing_list`
--

INSERT INTO `mailing_list` (`personID`) VALUES
(1),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12),
(13),
(14),
(15),
(16),
(17),
(18),
(19),
(20),
(21),
(22),
(23),
(24),
(25),
(26),
(27),
(28),
(29),
(30),
(31),
(32),
(33),
(34),
(35),
(36),
(37),
(38),
(39),
(40),
(41),
(42),
(44),
(45),
(46),
(47),
(48),
(49),
(50),
(51),
(52),
(53),
(54),
(55),
(56),
(57),
(58),
(59),
(60),
(61),
(62),
(63),
(64),
(65),
(66),
(67),
(68),
(69),
(70),
(71),
(72),
(73),
(74),
(75),
(76),
(77),
(78),
(79),
(80),
(81),
(82),
(83),
(84),
(85),
(86),
(87),
(88),
(89),
(90),
(91),
(92),
(93),
(94);

-- --------------------------------------------------------

--
-- Table structure for table `membership_dues`
--

CREATE TABLE IF NOT EXISTS `membership_dues` (
  `personID` int(11) DEFAULT NULL,
  `membershipStatus` varchar(50) DEFAULT NULL,
  KEY `personID` (`personID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `non_members`
--

CREATE TABLE IF NOT EXISTS `non_members` (
  `personID` int(11) DEFAULT NULL,
  KEY `personID` (`personID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `signin_sheet`
--

CREATE TABLE IF NOT EXISTS `signin_sheet` (
  `personID` int(11) NOT NULL DEFAULT '0',
  `dayID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`personID`,`dayID`),
  KEY `dayID` (`dayID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `signin_sheet`
--

INSERT INTO `signin_sheet` (`personID`, `dayID`) VALUES
(1, 18),
(6, 18),
(10, 18),
(11, 18),
(12, 18),
(13, 18),
(15, 18),
(17, 18),
(18, 18),
(25, 18),
(31, 18),
(36, 18),
(44, 18),
(46, 18),
(47, 18),
(52, 18),
(53, 18),
(54, 18),
(60, 18),
(62, 18),
(63, 18),
(64, 18),
(83, 18),
(89, 18),
(91, 18),
(92, 18),
(14, 21),
(15, 21),
(94, 21),
(1, 22),
(4, 22),
(15, 22),
(46, 22);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD CONSTRAINT `admin_users_ibfk_1` FOREIGN KEY (`personID`) REFERENCES `all_people` (`personID`);

--
-- Constraints for table `heard`
--
ALTER TABLE `heard`
  ADD CONSTRAINT `heard_ibfk_1` FOREIGN KEY (`personID`) REFERENCES `all_people` (`personID`);

--
-- Constraints for table `mailing_list`
--
ALTER TABLE `mailing_list`
  ADD CONSTRAINT `mailing_list_ibfk_1` FOREIGN KEY (`personID`) REFERENCES `all_people` (`personID`);

--
-- Constraints for table `membership_dues`
--
ALTER TABLE `membership_dues`
  ADD CONSTRAINT `membership_dues_ibfk_1` FOREIGN KEY (`personID`) REFERENCES `all_people` (`personID`);

--
-- Constraints for table `non_members`
--
ALTER TABLE `non_members`
  ADD CONSTRAINT `non_members_ibfk_1` FOREIGN KEY (`personID`) REFERENCES `all_people` (`personID`);

--
-- Constraints for table `signin_sheet`
--
ALTER TABLE `signin_sheet`
  ADD CONSTRAINT `signin_sheet_ibfk_1` FOREIGN KEY (`personID`) REFERENCES `all_people` (`personID`),
  ADD CONSTRAINT `signin_sheet_ibfk_2` FOREIGN KEY (`dayID`) REFERENCES `day_id` (`dayID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
