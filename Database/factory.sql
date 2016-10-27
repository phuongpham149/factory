-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 27, 2016 at 12:35 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `factory`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `changeIdMachineForProduction` (IN `p_production_id` VARCHAR(255), IN `p_machine` INT)  BEGIN
UPDATE `production` SET `idMachine`=p_machine WHERE id = p_production_id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `changeStatusFixErrorByProduction` (IN `p_machine_id` INT)  BEGIN
UPDATE `fixerrormanager` SET `status`=0 WHERE idMachine = p_machine_id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `countMachineErrorForLine` ()  BEGIN
SELECT COUNT(fixerrormanager.idProduction) as sumMachineError, production.line FROM fixerrormanager INNER JOIN production ON fixerrormanager.idProduction = production.id GROUP BY production.line;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteMachineErrorByProduction` (IN `p_idFixErrorManager` INT(11))  BEGIN
DELETE FROM `fixerrormanager` WHERE id = p_idFixErrorManager;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `getAllLine` ()  BEGIN
SELECT DISTINCT line FROM production;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `getDetailFixErrorByLine` (IN `p_line` VARCHAR(255))  BEGIN
SELECT fixerrormanager.id,fixerrormanager.idProduction,fixerrormanager.dateCreate,fixerrormanager.idMachine,fixerrormanager.timeCreate,fixerrormanager.timeFinish,fixerrormanager.idFixError,fixerror.name FROM fixerrormanager INNER JOIN fixerror ON fixerrormanager.idFixError = fixerror.id INNER JOIN production ON production.id = fixerrormanager.idProduction WHERE production.line = p_line and fixerrormanager.status = 1;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `getDetailForLine` (IN `p_line` INT(11))  BEGIN
SELECT `id`, `idMachine` FROM `production` WHERE line = p_line;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `getListAllMachineError` ()  BEGIN
SELECT fixerrormanager.id,fixerrormanager.idProduction,fixerrormanager.dateCreate,fixerrormanager.idMachine,fixerrormanager.timeCreate,fixerrormanager.timeFinish,fixerrormanager.idFixError,fixerror.name,production.line FROM fixerrormanager INNER JOIN fixerror ON fixerrormanager.idFixError = fixerror.id INNER JOIN production ON production.id = fixerrormanager.idProduction WHERE fixerrormanager.status = 1;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `getProductionByUsernamePassword` (IN `p_id` VARCHAR(255), IN `p_password` VARCHAR(255))  BEGIN
SELECT `id`, `name`, `line`, `part`, `password`, `idMachine` FROM `production` WHERE id=p_id AND password=p_password;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `getUserByUsernamePassword` (IN `p_id` VARCHAR(255), IN `p_password` VARCHAR(255))  BEGIN
SELECT `id`, `name`, `idPosition`, `role`, `password` FROM `user` WHERE id=p_id and password= p_password;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insertMachineErrorByProduction` (IN `p_production_id` VARCHAR(255), IN `p_dateCreate` DATE, IN `p_machine_id` INT(11), IN `p_timeCreate` DATETIME, IN `idFixError` INT(11), IN `p_status` INT(11))  BEGIN
INSERT INTO `fixerrormanager`( `idProduction`, `dateCreate`, `idMachine`, `timeCreate`, `idFixError`, `status`) VALUES (p_production_id,p_dateCreate,p_machine_id,p_timeCreate,idFixError,p_status);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `statisticalByFixError` ()  BEGIN
SELECT COUNT(fixerrormanager.idFixError) as sumTypeError, fixerror.name,fixerrormanager.idFixError FROM fixerrormanager INNER JOIN fixerror ON fixerrormanager.idFixError = fixerror.id GROUP BY fixerrormanager.idFixError;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `statisticalByTime` ()  BEGIN
SELECT `id`, `idProduction`,`timeCreate`, `timeFinish` FROM `fixerrormanager`;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `updateChangeMachineBySmest` (IN `p_oldmachine_id` INT(11), IN `p_newmachine_id` INT(11), IN `p_datechange` DATE, IN `p_production_id` VARCHAR(255))  BEGIN
INSERT INTO `changemachinemanager`(`idOldMachine`, `idNewMachine`, `timeChange`, `idProduction`) VALUES (p_oldmachine_id,p_newmachine_id,p_datechange,p_production_id);
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `changemachinemanager`
--

CREATE TABLE `changemachinemanager` (
  `id` int(11) NOT NULL,
  `idOldMachine` int(11) NOT NULL,
  `idNewMachine` int(11) NOT NULL,
  `timeChange` datetime NOT NULL,
  `idProduction` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fixerror`
--

CREATE TABLE `fixerror` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `fixerror`
--

INSERT INTO `fixerror` (`id`, `name`) VALUES
(1, 'abc'),
(2, 'dcv');

-- --------------------------------------------------------

--
-- Table structure for table `fixerrormanager`
--

CREATE TABLE `fixerrormanager` (
  `id` int(11) NOT NULL,
  `idProduction` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreate` date NOT NULL,
  `idMachine` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `timeCreate` datetime NOT NULL,
  `timeFinish` datetime NOT NULL,
  `idFixError` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `fixerrormanager`
--

INSERT INTO `fixerrormanager` (`id`, `idProduction`, `dateCreate`, `idMachine`, `timeCreate`, `timeFinish`, `idFixError`, `status`) VALUES
(1, '1', '2016-10-04', '1', '2016-10-04 05:20:00', '0000-00-00 00:00:00', 1, 1),
(2, '2', '2016-10-05', '2', '2016-10-05 08:31:00', '0000-00-00 00:00:00', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `machine`
--

CREATE TABLE `machine` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `idTypeMachine` int(11) NOT NULL,
  `manufactory` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `position`
--

CREATE TABLE `position` (
  `id` int(11) NOT NULL,
  `name` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `production`
--

CREATE TABLE `production` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `line` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `part` int(11) NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `idMachine` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `production`
--

INSERT INTO `production` (`id`, `name`, `line`, `part`, `password`, `idMachine`) VALUES
('1', 'phương', '01R', 1, '123456', 1),
('2', 'phú', '02R', 1, '123456', 2),
('3', 'phi', '01R', 1, '123456', 1),
('4', 'nhung', '01R', 1, '123456', 1);

-- --------------------------------------------------------

--
-- Table structure for table `typemachine`
--

CREATE TABLE `typemachine` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `idPosition` int(11) NOT NULL,
  `role` int(11) NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `changemachinemanager`
--
ALTER TABLE `changemachinemanager`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fixerror`
--
ALTER TABLE `fixerror`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fixerrormanager`
--
ALTER TABLE `fixerrormanager`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `machine`
--
ALTER TABLE `machine`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `position`
--
ALTER TABLE `position`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `production`
--
ALTER TABLE `production`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `typemachine`
--
ALTER TABLE `typemachine`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `changemachinemanager`
--
ALTER TABLE `changemachinemanager`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `fixerror`
--
ALTER TABLE `fixerror`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `fixerrormanager`
--
ALTER TABLE `fixerrormanager`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `machine`
--
ALTER TABLE `machine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `position`
--
ALTER TABLE `position`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `typemachine`
--
ALTER TABLE `typemachine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
