SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


CREATE TABLE `data` (
  `id` int(11) NOT NULL,
  `race_date` varchar(45) DEFAULT NULL,
  `horse_id` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `track` varchar(45) DEFAULT NULL,
  `length` decimal(3,1) DEFAULT NULL,
  `condition` varchar(4) DEFAULT NULL,
  `distance` int(4) DEFAULT NULL,
  `original_distance` int(11) NOT NULL DEFAULT '0',
  `pos` varchar(45) DEFAULT NULL,
  `weight` decimal(3,1) DEFAULT NULL,
  `prize` varchar(45) DEFAULT NULL,
  `time` decimal(3,2) DEFAULT NULL,
  `sectional` varchar(45) DEFAULT NULL,
  `time2` decimal(3,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `horses` (
  `horse_id` int(11) NOT NULL,
  `race_id` int(11) NOT NULL,
  `horse_number` varchar(45) DEFAULT NULL,
  `horse_name` varchar(45) DEFAULT NULL,
  `horse_weight` varchar(45) DEFAULT NULL,
  `horse_fixed_odds` varchar(45) DEFAULT NULL,
  `horse_h2h` varchar(45) DEFAULT NULL,
  `horse_latest_results` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `meetings` (
  `meeting_id` int(11) NOT NULL,
  `meeting_date` varchar(45) DEFAULT NULL,
  `meeting_name` varchar(45) DEFAULT NULL,
  `meeting_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `races` (
  `race_id` int(11) NOT NULL,
  `meeting_id` int(11) DEFAULT NULL,
  `race_number` varchar(45) DEFAULT NULL,
  `race_schedule_time` varchar(45) DEFAULT NULL,
  `race_title` varchar(45) DEFAULT NULL,
  `race_distance` int(7) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


ALTER TABLE `data`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `racedate_horseid` (`race_date`,`horse_id`);

ALTER TABLE `horses`
  ADD PRIMARY KEY (`horse_id`);

ALTER TABLE `meetings`
  ADD PRIMARY KEY (`meeting_id`);

ALTER TABLE `races`
  ADD PRIMARY KEY (`race_id`);


ALTER TABLE `data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `horses`
  MODIFY `horse_id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `meetings`
  MODIFY `meeting_id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `races`
  MODIFY `race_id` int(11) NOT NULL AUTO_INCREMENT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;