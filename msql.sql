-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 30, 2018 at 02:13 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `msql`
--

-- --------------------------------------------------------

--
-- Table structure for table `bank`
--

CREATE TABLE `bank` (
  `Bank_id` int(11) NOT NULL,
  `Branch_id` int(11) NOT NULL,
  `Employee_Id` int(11) NOT NULL,
  `Bank_name` varchar(255) NOT NULL,
  `Address` varchar(45) NOT NULL,
  `Number_of_branch` int(11) NOT NULL,
  `Remark` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bank`
--

INSERT INTO `bank` (`Bank_id`, `Branch_id`, `Employee_Id`, `Bank_name`, `Address`, `Number_of_branch`, `Remark`) VALUES
(1, 1, 1, 'alqahera Bank', 'dfhd', 33, 'remark');

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `Bank_id` int(11) NOT NULL,
  `Branch_id` int(11) NOT NULL,
  `Employee_Id` int(11) NOT NULL,
  `Branch_name` varchar(45) NOT NULL,
  `Address` varchar(45) NOT NULL,
  `Remark` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`Bank_id`, `Branch_id`, `Employee_Id`, `Branch_name`, `Address`, `Remark`) VALUES
(1, 1, 1, 'lion', 'jerico', 'good service');

-- --------------------------------------------------------

--
-- Table structure for table `building`
--

CREATE TABLE `building` (
  `Project_id` int(11) NOT NULL,
  `Building_Id` int(11) NOT NULL,
  `Employee_Id` int(11) NOT NULL,
  `Name` varchar(45) NOT NULL,
  `Number_of_floors` int(11) NOT NULL,
  `Number_of_apartments` int(11) NOT NULL,
  `7od_id` int(11) NOT NULL,
  `Plot_id` int(11) NOT NULL,
  `Remark` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `building`
--

INSERT INTO `building` (`Project_id`, `Building_Id`, `Employee_Id`, `Name`, `Number_of_floors`, `Number_of_apartments`, `7od_id`, `Plot_id`, `Remark`) VALUES
(1, 1, 1, 'al7md', 5, 3, 13484, 87986, '');

-- --------------------------------------------------------

--
-- Table structure for table `checks`
--

CREATE TABLE `checks` (
  `Project_id` int(11) NOT NULL,
  `Stage_id` int(11) NOT NULL,
  `level_id` int(11) NOT NULL,
  `Participant_id` int(11) NOT NULL,
  `Seq_num` int(11) NOT NULL,
  `Bank_id` int(11) NOT NULL,
  `Branch_id` int(11) NOT NULL,
  `Emploee_id` int(11) NOT NULL,
  `Check_Num` int(11) NOT NULL,
  `Account_number` int(11) NOT NULL,
  `Routing_number` int(11) NOT NULL,
  `Start_Date` date NOT NULL,
  `Amount` float NOT NULL,
  `Actual_date` date NOT NULL,
  `bankName` varchar(255) NOT NULL,
  `Remark` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `checks`
--

INSERT INTO `checks` (`Project_id`, `Stage_id`, `level_id`, `Participant_id`, `Seq_num`, `Bank_id`, `Branch_id`, `Emploee_id`, `Check_Num`, `Account_number`, `Routing_number`, `Start_Date`, `Amount`, `Actual_date`, `bankName`, `Remark`) VALUES
(1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, '0000-00-00', 0, '0000-00-00', 'amman', '');

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `city_id` int(11) NOT NULL,
  `Employee_id` int(11) NOT NULL,
  `Name` varchar(45) NOT NULL,
  `Remark` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`city_id`, `Employee_id`, `Name`, `Remark`) VALUES
(1, 1, '7ayfa', '123'),
(124, 1, 'kufer malik', 'mawalka'),
(126, 1, '11111', '11111');

-- --------------------------------------------------------

--
-- Table structure for table `contract`
--

CREATE TABLE `contract` (
  `Project_id` int(11) NOT NULL,
  `Building_id` int(11) NOT NULL,
  `Apartment_id` int(11) NOT NULL,
  `Customer_id` int(11) NOT NULL,
  `Contract_id` int(11) NOT NULL,
  `contract_type` int(11) NOT NULL,
  `Emploee_id` int(11) NOT NULL,
  `Description` varchar(100) NOT NULL,
  `Date` date NOT NULL,
  `Value` float NOT NULL,
  `Per_year` float NOT NULL,
  `Balance` float NOT NULL,
  `Remark` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contract`
--

INSERT INTO `contract` (`Project_id`, `Building_id`, `Apartment_id`, `Customer_id`, `Contract_id`, `contract_type`, `Emploee_id`, `Description`, `Date`, `Value`, `Per_year`, `Balance`, `Remark`) VALUES
(1, 1, 1, 1, 1, 1, 1, 'hhh', '0000-00-00', 43543, 32, 654, '3333');

-- --------------------------------------------------------

--
-- Table structure for table `contract_check`
--

CREATE TABLE `contract_check` (
  `Project_Id` int(11) NOT NULL,
  `Building_id` int(11) NOT NULL,
  `Apartment_id` int(11) NOT NULL,
  `Customer_Id` int(11) NOT NULL,
  `Contract_id` int(11) NOT NULL,
  `Seq_Num` int(11) NOT NULL,
  `Bank_id` int(11) NOT NULL,
  `Branch_id` int(11) NOT NULL,
  `Emploee_id` int(11) NOT NULL,
  `Check_num` int(11) NOT NULL,
  `Account_number` int(11) NOT NULL,
  `Routing_number` int(11) NOT NULL,
  `Bank_name` int(11) NOT NULL,
  `Amount` int(11) NOT NULL,
  `Expiry_date` date NOT NULL,
  `Start_date` date NOT NULL,
  `Remark` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contract_check`
--

INSERT INTO `contract_check` (`Project_Id`, `Building_id`, `Apartment_id`, `Customer_Id`, `Contract_id`, `Seq_Num`, `Bank_id`, `Branch_id`, `Emploee_id`, `Check_num`, `Account_number`, `Routing_number`, `Bank_name`, `Amount`, `Expiry_date`, `Start_date`, `Remark`) VALUES
(1, 1, 1, 1, 1, 1, 1, 1, 1, 24, 6356, 58, 97, 435, '0000-00-00', '0000-00-00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `contract_finishing`
--

CREATE TABLE `contract_finishing` (
  `Project_ID` int(13) NOT NULL,
  `Building_id` int(13) NOT NULL,
  `Section_id` int(13) NOT NULL,
  `Contract_id` int(13) NOT NULL,
  `Seq` int(13) NOT NULL,
  `emploee_id` int(13) NOT NULL,
  `price` int(100) NOT NULL,
  `Unit` varchar(100) NOT NULL,
  `Area` float NOT NULL,
  `Remark` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contract_finishing`
--

INSERT INTO `contract_finishing` (`Project_ID`, `Building_id`, `Section_id`, `Contract_id`, `Seq`, `emploee_id`, `price`, `Unit`, `Area`, `Remark`) VALUES
(1, 1, 1, 1, 1, 1, 20, '100', 200, 'all appartments');

-- --------------------------------------------------------

--
-- Table structure for table `contract_points`
--

CREATE TABLE `contract_points` (
  `Project_Id` int(11) NOT NULL,
  `Building_id` int(11) NOT NULL,
  `Section_id` int(11) NOT NULL,
  `Customer_ID` int(11) NOT NULL,
  `Contract_id` int(11) NOT NULL,
  `Seq` int(11) NOT NULL,
  `Emploee_id` int(11) NOT NULL,
  `Detail` varchar(300) NOT NULL,
  `Remark` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contract_points`
--

INSERT INTO `contract_points` (`Project_Id`, `Building_id`, `Section_id`, `Customer_ID`, `Contract_id`, `Seq`, `Emploee_id`, `Detail`, `Remark`) VALUES
(1, 1, 1, 1, 1, 1, 1, 'pay on date', 'goods');

-- --------------------------------------------------------

--
-- Table structure for table `contract_type`
--

CREATE TABLE `contract_type` (
  `type_id` int(11) NOT NULL,
  `Emploee_id` int(11) NOT NULL,
  `TypeDetail` varchar(45) NOT NULL,
  `Remark` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contract_type`
--

INSERT INTO `contract_type` (`type_id`, `Emploee_id`, `TypeDetail`, `Remark`) VALUES
(1, 1, 'build', '45 buildings');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `Customer_id` int(11) NOT NULL,
  `Emploee_id` int(11) NOT NULL,
  `balance` int(11) NOT NULL,
  `Name` varchar(45) NOT NULL,
  `Address` varchar(45) NOT NULL,
  `Date` date NOT NULL,
  `Rate` varchar(45) NOT NULL,
  `Organization_name` varchar(45) NOT NULL,
  `State` varchar(45) NOT NULL,
  `City` varchar(45) NOT NULL,
  `Phone` varchar(45) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `Remark` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`Customer_id`, `Emploee_id`, `balance`, `Name`, `Address`, `Date`, `Rate`, `Organization_name`, `State`, `City`, `Phone`, `Email`, `Remark`) VALUES
(1, 1, 0, 'mario', 'alman', '2013-02-03', '3', 'ms', 'sing', 'c', 'd', 'fdf@a.com', 'sgsg');

-- --------------------------------------------------------

--
-- Table structure for table `customor_payments`
--

CREATE TABLE `customor_payments` (
  `Project_Id` int(11) NOT NULL,
  `Building_id` int(11) NOT NULL,
  `Apartment_id` int(11) NOT NULL,
  `Customer_id` int(11) NOT NULL,
  `Contract_id` int(11) NOT NULL,
  `Seq_num` int(11) NOT NULL,
  `Emploee_id` int(11) NOT NULL,
  `Date` date NOT NULL,
  `payments_amount` float NOT NULL,
  `Remark` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customor_payments`
--

INSERT INTO `customor_payments` (`Project_Id`, `Building_id`, `Apartment_id`, `Customer_id`, `Contract_id`, `Seq_num`, `Emploee_id`, `Date`, `payments_amount`, `Remark`) VALUES
(1, 1, 1, 1, 1, 1, 1, '0000-00-00', 59, '');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `Emploee_id` int(13) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Email` text NOT NULL,
  `City` varchar(255) NOT NULL,
  `Phone_Number` int(11) NOT NULL,
  `Salary` int(11) NOT NULL,
  `Marital_status` varchar(100) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `DOB` date NOT NULL,
  `Remark` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`Emploee_id`, `Name`, `Email`, `City`, `Phone_Number`, `Salary`, `Marital_status`, `Address`, `DOB`, `Remark`) VALUES
(1, 'ahmad', 'a@a.com', 'jerico', 581085, 1500, 'SINGLE', 'ein m9ba7', '2015-01-05', 'no effort');

-- --------------------------------------------------------

--
-- Table structure for table `finishing_table`
--

CREATE TABLE `finishing_table` (
  `Seq` int(11) NOT NULL,
  `Emploee_id` int(11) NOT NULL,
  `price` float NOT NULL,
  `Unit` varchar(100) NOT NULL,
  `Area` float NOT NULL,
  `Remark` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `finishing_table`
--

INSERT INTO `finishing_table` (`Seq`, `Emploee_id`, `price`, `Unit`, `Area`, `Remark`) VALUES
(1, 1, 50, '50', 50, '50');

-- --------------------------------------------------------

--
-- Table structure for table `general_point`
--

CREATE TABLE `general_point` (
  `Seq` int(11) NOT NULL,
  `Emploee_id` int(11) NOT NULL,
  `Details` varchar(200) NOT NULL,
  `Remark` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `general_point`
--

INSERT INTO `general_point` (`Seq`, `Emploee_id`, `Details`, `Remark`) VALUES
(1, 1, 'should be first payment', 'any thing');

-- --------------------------------------------------------

--
-- Table structure for table `levels`
--

CREATE TABLE `levels` (
  `stage_id` int(11) NOT NULL,
  `Levels_id` int(11) NOT NULL,
  `Emploee_id` int(11) NOT NULL,
  `Remark` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `levels`
--

INSERT INTO `levels` (`stage_id`, `Levels_id`, `Emploee_id`, `Remark`) VALUES
(1, 1, 1, 'momooo');

-- --------------------------------------------------------

--
-- Table structure for table `level_details`
--

CREATE TABLE `level_details` (
  `Project_id` int(11) NOT NULL,
  `Stage_id` int(11) NOT NULL,
  `level_id` int(11) NOT NULL,
  `Emploee_id` int(11) NOT NULL,
  `Start_date` date NOT NULL,
  `End_date` date NOT NULL,
  `Status` varchar(45) NOT NULL,
  `Details` varchar(100) NOT NULL,
  `Remark` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `level_details`
--

INSERT INTO `level_details` (`Project_id`, `Stage_id`, `level_id`, `Emploee_id`, `Start_date`, `End_date`, `Status`, `Details`, `Remark`) VALUES
(1, 1, 1, 1, '2015-12-12', '2019-12-12', 'active', 'lowyers', '');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(13) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `participants`
--

CREATE TABLE `participants` (
  `Project_id` int(11) NOT NULL,
  `Stages_id` int(11) NOT NULL,
  `levels_id` int(11) NOT NULL,
  `Participants_id` int(11) NOT NULL,
  `Emploee_id` int(11) NOT NULL,
  `Start_date` date NOT NULL,
  `End_date` date NOT NULL,
  `Price` int(11) NOT NULL,
  `Paid` int(11) NOT NULL,
  `Un_paid` int(11) NOT NULL,
  `Remark` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `participants`
--

INSERT INTO `participants` (`Project_id`, `Stages_id`, `levels_id`, `Participants_id`, `Emploee_id`, `Start_date`, `End_date`, `Price`, `Paid`, `Un_paid`, `Remark`) VALUES
(1, 1, 1, 1, 1, '2015-12-12', '2016-01-07', 50, 20, 30, 'fffffff');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `Project_id` int(11) NOT NULL,
  `Stages_id` int(11) NOT NULL,
  `levels_id` int(11) NOT NULL,
  `Participant_id` int(11) NOT NULL,
  `Emploee_id` int(11) NOT NULL,
  `Seq_number` int(11) NOT NULL,
  `Payment_date` date NOT NULL,
  `Amount` float NOT NULL,
  `Remark` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`Project_id`, `Stages_id`, `levels_id`, `Participant_id`, `Emploee_id`, `Seq_number`, `Payment_date`, `Amount`, `Remark`) VALUES
(1, 1, 1, 1, 1, 6, '2018-05-11', 5000, 'each payment should be more than 5000$');

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `Project_id` int(11) NOT NULL,
  `Employee_id` int(11) NOT NULL,
  `Project_name` varchar(48) NOT NULL,
  `Start_date` date NOT NULL,
  `Expected_finish` date NOT NULL,
  `Actual_finish` date NOT NULL,
  `City_id` int(11) NOT NULL,
  `quarter_id` int(11) NOT NULL,
  `coordination_x` float NOT NULL,
  `coordination_y` float NOT NULL,
  `Address` varchar(100) NOT NULL,
  `7od_id` int(11) NOT NULL,
  `PLot_id` int(11) NOT NULL,
  `Land_area` float NOT NULL,
  `Building_area` float NOT NULL,
  `Number_of_building` int(11) NOT NULL,
  `Contract_expected_value` float NOT NULL,
  `Total_balance` float NOT NULL,
  `income` float NOT NULL,
  `Expenses` float NOT NULL,
  `Remark` varchar(500) NOT NULL,
  `Active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`Project_id`, `Employee_id`, `Project_name`, `Start_date`, `Expected_finish`, `Actual_finish`, `City_id`, `quarter_id`, `coordination_x`, `coordination_y`, `Address`, `7od_id`, `PLot_id`, `Land_area`, `Building_area`, `Number_of_building`, `Contract_expected_value`, `Total_balance`, `income`, `Expenses`, `Remark`, `Active`) VALUES
(1, 1, 'ndaf', '0000-00-00', '0000-00-00', '0000-00-00', 324, 2352, 2131, 12431, '3123', 312, 3123, 12312, 3213, 21321, 3213, 213, 123, 123, 'vcxcv ', 0);

-- --------------------------------------------------------

--
-- Table structure for table `project_customer`
--

CREATE TABLE `project_customer` (
  `Project_id` int(11) NOT NULL,
  `Contract_id` int(11) NOT NULL,
  `Customer_id` int(11) NOT NULL,
  `Emploee_id` int(11) NOT NULL,
  `Percantage` float NOT NULL,
  `Remark` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `project_customer`
--

INSERT INTO `project_customer` (`Project_id`, `Contract_id`, `Customer_id`, `Emploee_id`, `Percantage`, `Remark`) VALUES
(1, 1, 1, 1, 40, '');

-- --------------------------------------------------------

--
-- Table structure for table `project_stakeholder`
--

CREATE TABLE `project_stakeholder` (
  `Project_id` int(11) NOT NULL,
  `Stackholder_id` int(11) NOT NULL,
  `Emploee_id` int(11) NOT NULL,
  `Percentage` float NOT NULL,
  `Balance` float NOT NULL,
  `Remark` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `project_stakeholder`
--

INSERT INTO `project_stakeholder` (`Project_id`, `Stackholder_id`, `Emploee_id`, `Percentage`, `Balance`, `Remark`) VALUES
(1, 1, 1, 341, 1000, 'cash');

-- --------------------------------------------------------

--
-- Table structure for table `quarter`
--

CREATE TABLE `quarter` (
  `City_id` int(11) NOT NULL,
  `Quarter_id` int(11) NOT NULL,
  `Emploee_id` int(11) NOT NULL,
  `Name` varchar(45) NOT NULL,
  `Remark` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quarter`
--

INSERT INTO `quarter` (`City_id`, `Quarter_id`, `Emploee_id`, `Name`, `Remark`) VALUES
(1, 1, 1, 'jerico', '');

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `Project_id` int(11) NOT NULL,
  `Building_id` int(11) NOT NULL,
  `Section_id` int(11) NOT NULL,
  `Type_id` int(11) NOT NULL,
  `Emploee_id` int(11) NOT NULL,
  `Directions` varchar(45) NOT NULL,
  `Floor_number` int(11) NOT NULL,
  `Apartment_area` float NOT NULL,
  `Number_of_rooms` int(11) NOT NULL,
  `Number_of_balcon` int(11) NOT NULL,
  `Has_stairs` tinyint(1) NOT NULL,
  `Has_barking` tinyint(1) NOT NULL,
  `Barking_number` int(11) NOT NULL,
  `Has_store` tinyint(1) NOT NULL,
  `Type` varchar(45) NOT NULL,
  `State` varchar(45) NOT NULL,
  `Remark` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`Project_id`, `Building_id`, `Section_id`, `Type_id`, `Emploee_id`, `Directions`, `Floor_number`, `Apartment_area`, `Number_of_rooms`, `Number_of_balcon`, `Has_stairs`, `Has_barking`, `Barking_number`, `Has_store`, `Type`, `State`, `Remark`) VALUES
(1, 1, 1, 1, 1, 'n', 4, 6, 3, 0, 0, 0, 0, 0, 'byvc', 'c', '');

-- --------------------------------------------------------

--
-- Table structure for table `section_type`
--

CREATE TABLE `section_type` (
  `Type_id` int(13) NOT NULL,
  `Emploee_id` int(13) NOT NULL,
  `TypeDetail` varchar(255) NOT NULL,
  `Remark` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `section_type`
--

INSERT INTO `section_type` (`Type_id`, `Emploee_id`, `TypeDetail`, `Remark`) VALUES
(1, 1, 'origin', 'high quaity');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `project_id` int(11) NOT NULL,
  `Building_id` int(11) NOT NULL,
  `Emploee_id` int(11) NOT NULL,
  `Has_elevator` tinyint(1) NOT NULL,
  `Has_garden` tinyint(1) NOT NULL,
  `Has_meating_room` tinyint(1) NOT NULL,
  `Supervisor_name` varchar(45) NOT NULL,
  `Remark` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`project_id`, `Building_id`, `Emploee_id`, `Has_elevator`, `Has_garden`, `Has_meating_room`, `Supervisor_name`, `Remark`) VALUES
(1, 1, 1, 1, 1, 1, 'mario', 'mmmmm');

-- --------------------------------------------------------

--
-- Table structure for table `stackholder_check`
--

CREATE TABLE `stackholder_check` (
  `Project_ID` int(11) NOT NULL,
  `Stakeholders_Id` int(11) NOT NULL,
  `Seq_Num` int(11) NOT NULL,
  `Bank_id` int(11) NOT NULL,
  `Branch_id` int(11) NOT NULL,
  `Emploee_id` int(11) NOT NULL,
  `Check_Num` int(11) NOT NULL,
  `account_Number` int(11) NOT NULL,
  `routing_number` int(11) NOT NULL,
  `Bank_name` varchar(45) NOT NULL,
  `Start_date` date NOT NULL,
  `Amount` float NOT NULL,
  `Expiry_Date` date NOT NULL,
  `Remark` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stackholder_check`
--

INSERT INTO `stackholder_check` (`Project_ID`, `Stakeholders_Id`, `Seq_Num`, `Bank_id`, `Branch_id`, `Emploee_id`, `Check_Num`, `account_Number`, `routing_number`, `Bank_name`, `Start_date`, `Amount`, `Expiry_Date`, `Remark`) VALUES
(1, 1, 1, 1, 1, 1, 1, 245, 24, '12312', '0000-00-00', 3123, '0000-00-00', '');

-- --------------------------------------------------------

--
-- Table structure for table `stages`
--

CREATE TABLE `stages` (
  `Stage_id` int(11) NOT NULL,
  `Employee_id` int(11) NOT NULL,
  `Stage_name` int(11) NOT NULL,
  `Amount` float NOT NULL,
  `Remark` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stages`
--

INSERT INTO `stages` (`Stage_id`, `Employee_id`, `Stage_name`, `Amount`, `Remark`) VALUES
(1, 1, 0, 50000, '');

-- --------------------------------------------------------

--
-- Table structure for table `stage_details`
--

CREATE TABLE `stage_details` (
  `Porject_id` int(11) NOT NULL,
  `Stage_id` int(11) NOT NULL,
  `Employee_id` int(11) NOT NULL,
  `State` varchar(45) NOT NULL,
  `Start_date` date NOT NULL,
  `End_date` date NOT NULL,
  `Remark` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `stakeholder`
--

CREATE TABLE `stakeholder` (
  `Stakeholders_Id` int(11) NOT NULL,
  `Emploee_id` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Phone_number` int(11) NOT NULL,
  `City` varchar(255) NOT NULL,
  `address` varchar(45) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `Remark` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `stakeholder`
--

INSERT INTO `stakeholder` (`Stakeholders_Id`, `Emploee_id`, `Name`, `Phone_number`, `City`, `address`, `Email`, `Remark`) VALUES
(1, 1, 'mario', 2147483647, 'nabvlux', '0', 'm@m.com', 'dows');

-- --------------------------------------------------------

--
-- Table structure for table `stakeholder_payement`
--

CREATE TABLE `stakeholder_payement` (
  `Project_id` int(11) NOT NULL,
  `Stakeholder_id` int(11) DEFAULT NULL,
  `Seq_Num` int(11) NOT NULL,
  `Emploee_id` int(11) NOT NULL,
  `Amount` float NOT NULL,
  `Date` date NOT NULL,
  `Remark` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stakeholder_payement`
--

INSERT INTO `stakeholder_payement` (`Project_id`, `Stakeholder_id`, `Seq_Num`, `Emploee_id`, `Amount`, `Date`, `Remark`) VALUES
(1, 1, 1, 1, 54, '2017-01-16', '');

-- --------------------------------------------------------

--
-- Table structure for table `userpages`
--

CREATE TABLE `userpages` (
  `employeeId` int(20) NOT NULL,
  `employeeName` varchar(50) NOT NULL,
  `numberOfPages` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bank`
--
ALTER TABLE `bank`
  ADD PRIMARY KEY (`Bank_id`),
  ADD KEY `Employee_Id` (`Employee_Id`);

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`Branch_id`),
  ADD KEY `Bank_id` (`Bank_id`),
  ADD KEY `branches_ibfk_2` (`Employee_Id`);

--
-- Indexes for table `building`
--
ALTER TABLE `building`
  ADD PRIMARY KEY (`Building_Id`),
  ADD KEY `Project_id` (`Project_id`),
  ADD KEY `Employee_Id` (`Employee_Id`);

--
-- Indexes for table `checks`
--
ALTER TABLE `checks`
  ADD PRIMARY KEY (`Seq_num`),
  ADD KEY `Bank_id` (`Bank_id`),
  ADD KEY `Branch_id` (`Branch_id`),
  ADD KEY `level_id` (`level_id`),
  ADD KEY `Participant_id` (`Participant_id`),
  ADD KEY `Project_id` (`Project_id`),
  ADD KEY `Stage_id` (`Stage_id`),
  ADD KEY `Emploee_id` (`Emploee_id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`city_id`),
  ADD KEY `Employee_id` (`Employee_id`);

--
-- Indexes for table `contract`
--
ALTER TABLE `contract`
  ADD PRIMARY KEY (`Contract_id`),
  ADD KEY `Apartment_id` (`Apartment_id`),
  ADD KEY `Building_id` (`Building_id`),
  ADD KEY `Customer_id` (`Customer_id`),
  ADD KEY `Project_id` (`Project_id`),
  ADD KEY `contract_type` (`contract_type`),
  ADD KEY `Emploee_id` (`Emploee_id`);

--
-- Indexes for table `contract_check`
--
ALTER TABLE `contract_check`
  ADD PRIMARY KEY (`Seq_Num`),
  ADD KEY `Apartment_id` (`Apartment_id`),
  ADD KEY `Bank_id` (`Bank_id`),
  ADD KEY `Branch_id` (`Branch_id`),
  ADD KEY `Building_id` (`Building_id`),
  ADD KEY `Contract_id` (`Contract_id`),
  ADD KEY `Customer_Id` (`Customer_Id`),
  ADD KEY `Emploee_id` (`Emploee_id`);

--
-- Indexes for table `contract_finishing`
--
ALTER TABLE `contract_finishing`
  ADD KEY `Building_id` (`Building_id`),
  ADD KEY `Contract_id` (`Contract_id`),
  ADD KEY `Project_ID` (`Project_ID`),
  ADD KEY `Section_id` (`Section_id`),
  ADD KEY `Seq` (`Seq`),
  ADD KEY `emploee_id` (`emploee_id`);

--
-- Indexes for table `contract_points`
--
ALTER TABLE `contract_points`
  ADD KEY `Building_id` (`Building_id`),
  ADD KEY `Contract_id` (`Contract_id`),
  ADD KEY `Customer_ID` (`Customer_ID`),
  ADD KEY `Project_Id` (`Project_Id`),
  ADD KEY `Section_id` (`Section_id`),
  ADD KEY `Seq` (`Seq`),
  ADD KEY `Emploee_id` (`Emploee_id`);

--
-- Indexes for table `contract_type`
--
ALTER TABLE `contract_type`
  ADD PRIMARY KEY (`type_id`),
  ADD KEY `Emploee_id` (`Emploee_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`Customer_id`),
  ADD KEY `Emploee_id` (`Emploee_id`);

--
-- Indexes for table `customor_payments`
--
ALTER TABLE `customor_payments`
  ADD PRIMARY KEY (`Seq_num`),
  ADD KEY `Apartment_id` (`Apartment_id`),
  ADD KEY `Building_id` (`Building_id`),
  ADD KEY `Contract_id` (`Contract_id`),
  ADD KEY `Customer_id` (`Customer_id`),
  ADD KEY `Project_Id` (`Project_Id`),
  ADD KEY `Emploee_id` (`Emploee_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`Emploee_id`);

--
-- Indexes for table `finishing_table`
--
ALTER TABLE `finishing_table`
  ADD PRIMARY KEY (`Seq`),
  ADD KEY `Emploee_id` (`Emploee_id`);

--
-- Indexes for table `general_point`
--
ALTER TABLE `general_point`
  ADD PRIMARY KEY (`Seq`),
  ADD KEY `Emploee_id` (`Emploee_id`);

--
-- Indexes for table `levels`
--
ALTER TABLE `levels`
  ADD PRIMARY KEY (`Levels_id`),
  ADD KEY `stage_id` (`stage_id`),
  ADD KEY `Emploee_id` (`Emploee_id`);

--
-- Indexes for table `level_details`
--
ALTER TABLE `level_details`
  ADD PRIMARY KEY (`level_id`),
  ADD KEY `Project_id` (`Project_id`),
  ADD KEY `Stage_id` (`Stage_id`),
  ADD KEY `Emploee_id` (`Emploee_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `participants`
--
ALTER TABLE `participants`
  ADD PRIMARY KEY (`Participants_id`),
  ADD KEY `levels_id` (`levels_id`),
  ADD KEY `Project_id` (`Project_id`),
  ADD KEY `Stages_id` (`Stages_id`),
  ADD KEY `Emploee_id` (`Emploee_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`Seq_number`),
  ADD KEY `levels_id` (`levels_id`),
  ADD KEY `Participant_id` (`Participant_id`),
  ADD KEY `Project_id` (`Project_id`),
  ADD KEY `Stages_id` (`Stages_id`),
  ADD KEY `Emploee_id` (`Emploee_id`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`Project_id`),
  ADD KEY `Employee_id` (`Employee_id`);

--
-- Indexes for table `project_customer`
--
ALTER TABLE `project_customer`
  ADD KEY `Project_id` (`Project_id`),
  ADD KEY `Contract_id` (`Contract_id`) USING BTREE,
  ADD KEY `Customer_id` (`Customer_id`),
  ADD KEY `Emploee_id` (`Emploee_id`);

--
-- Indexes for table `project_stakeholder`
--
ALTER TABLE `project_stakeholder`
  ADD KEY `Project_id` (`Project_id`),
  ADD KEY `Stackholder_id` (`Stackholder_id`),
  ADD KEY `Emploee_id` (`Emploee_id`);

--
-- Indexes for table `quarter`
--
ALTER TABLE `quarter`
  ADD PRIMARY KEY (`Quarter_id`),
  ADD KEY `City_id` (`City_id`),
  ADD KEY `Emploee_id` (`Emploee_id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`Section_id`),
  ADD KEY `Building_id` (`Building_id`),
  ADD KEY `Project_id` (`Project_id`),
  ADD KEY `Type_id` (`Type_id`),
  ADD KEY `Emploee_id` (`Emploee_id`);

--
-- Indexes for table `section_type`
--
ALTER TABLE `section_type`
  ADD PRIMARY KEY (`Type_id`),
  ADD KEY `Emploee_id` (`Emploee_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD KEY `Building_id` (`Building_id`),
  ADD KEY `project_id` (`project_id`),
  ADD KEY `Emploee_id` (`Emploee_id`);

--
-- Indexes for table `stackholder_check`
--
ALTER TABLE `stackholder_check`
  ADD PRIMARY KEY (`Seq_Num`),
  ADD KEY `Bank_id` (`Bank_id`),
  ADD KEY `Branch_id` (`Branch_id`),
  ADD KEY `Project_ID` (`Project_ID`),
  ADD KEY `Stakeholders_Id` (`Stakeholders_Id`),
  ADD KEY `Emploee_id` (`Emploee_id`);

--
-- Indexes for table `stages`
--
ALTER TABLE `stages`
  ADD PRIMARY KEY (`Stage_id`),
  ADD KEY `Employee_id` (`Employee_id`);

--
-- Indexes for table `stage_details`
--
ALTER TABLE `stage_details`
  ADD KEY `Porject_id` (`Porject_id`),
  ADD KEY `Stage_id` (`Stage_id`),
  ADD KEY `Employee_id` (`Employee_id`);

--
-- Indexes for table `stakeholder`
--
ALTER TABLE `stakeholder`
  ADD PRIMARY KEY (`Stakeholders_Id`),
  ADD KEY `Emploee_id` (`Emploee_id`);

--
-- Indexes for table `stakeholder_payement`
--
ALTER TABLE `stakeholder_payement`
  ADD PRIMARY KEY (`Seq_Num`),
  ADD KEY `F-stackholder-id` (`Stakeholder_id`),
  ADD KEY `stakeholder_payement_ibfk_1` (`Project_id`);

--
-- Indexes for table `userpages`
--
ALTER TABLE `userpages`
  ADD PRIMARY KEY (`employeeId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `building`
--
ALTER TABLE `building`
  MODIFY `Building_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `checks`
--
ALTER TABLE `checks`
  MODIFY `Seq_num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `city_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT for table `contract`
--
ALTER TABLE `contract`
  MODIFY `Contract_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contract_check`
--
ALTER TABLE `contract_check`
  MODIFY `Seq_Num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contract_type`
--
ALTER TABLE `contract_type`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `Customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customor_payments`
--
ALTER TABLE `customor_payments`
  MODIFY `Seq_num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `Emploee_id` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `finishing_table`
--
ALTER TABLE `finishing_table`
  MODIFY `Seq` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `general_point`
--
ALTER TABLE `general_point`
  MODIFY `Seq` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `levels`
--
ALTER TABLE `levels`
  MODIFY `Levels_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `level_details`
--
ALTER TABLE `level_details`
  MODIFY `level_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `participants`
--
ALTER TABLE `participants`
  MODIFY `Participants_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `Seq_number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `quarter`
--
ALTER TABLE `quarter`
  MODIFY `Quarter_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `Section_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `section_type`
--
ALTER TABLE `section_type`
  MODIFY `Type_id` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `stackholder_check`
--
ALTER TABLE `stackholder_check`
  MODIFY `Seq_Num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `stages`
--
ALTER TABLE `stages`
  MODIFY `Stage_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `stakeholder`
--
ALTER TABLE `stakeholder`
  MODIFY `Stakeholders_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `stakeholder_payement`
--
ALTER TABLE `stakeholder_payement`
  MODIFY `Seq_Num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bank`
--
ALTER TABLE `bank`
  ADD CONSTRAINT `bank_ibfk_1` FOREIGN KEY (`Employee_Id`) REFERENCES `employee` (`Emploee_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `branches`
--
ALTER TABLE `branches`
  ADD CONSTRAINT `branches_ibfk_1` FOREIGN KEY (`Bank_id`) REFERENCES `bank` (`Bank_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `branches_ibfk_2` FOREIGN KEY (`Employee_Id`) REFERENCES `employee` (`Emploee_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `building`
--
ALTER TABLE `building`
  ADD CONSTRAINT `building_ibfk_1` FOREIGN KEY (`Project_id`) REFERENCES `project` (`Project_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `building_ibfk_2` FOREIGN KEY (`Employee_Id`) REFERENCES `employee` (`Emploee_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `checks`
--
ALTER TABLE `checks`
  ADD CONSTRAINT `checks_ibfk_1` FOREIGN KEY (`Bank_id`) REFERENCES `bank` (`Bank_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `checks_ibfk_4` FOREIGN KEY (`Participant_id`) REFERENCES `participants` (`Participants_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `checks_ibfk_7` FOREIGN KEY (`Emploee_id`) REFERENCES `employee` (`Emploee_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `city`
--
ALTER TABLE `city`
  ADD CONSTRAINT `city_ibfk_1` FOREIGN KEY (`Employee_id`) REFERENCES `employee` (`Emploee_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `contract`
--
ALTER TABLE `contract`
  ADD CONSTRAINT `contract_ibfk_1` FOREIGN KEY (`Apartment_id`) REFERENCES `sections` (`Section_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `contract_ibfk_3` FOREIGN KEY (`Customer_id`) REFERENCES `customer` (`Customer_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `contract_ibfk_5` FOREIGN KEY (`contract_type`) REFERENCES `contract_type` (`type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `contract_ibfk_6` FOREIGN KEY (`Emploee_id`) REFERENCES `employee` (`Emploee_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `contract_check`
--
ALTER TABLE `contract_check`
  ADD CONSTRAINT `contract_check_ibfk_3` FOREIGN KEY (`Branch_id`) REFERENCES `branches` (`Branch_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `contract_check_ibfk_5` FOREIGN KEY (`Contract_id`) REFERENCES `contract` (`Contract_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `contract_check_ibfk_7` FOREIGN KEY (`Emploee_id`) REFERENCES `employee` (`Emploee_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `contract_finishing`
--
ALTER TABLE `contract_finishing`
  ADD CONSTRAINT `contract_finishing_ibfk_2` FOREIGN KEY (`Contract_id`) REFERENCES `contract` (`Contract_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `contract_finishing_ibfk_5` FOREIGN KEY (`Seq`) REFERENCES `finishing_table` (`Seq`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `contract_finishing_ibfk_6` FOREIGN KEY (`emploee_id`) REFERENCES `employee` (`Emploee_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `contract_points`
--
ALTER TABLE `contract_points`
  ADD CONSTRAINT `contract_points_ibfk_2` FOREIGN KEY (`Contract_id`) REFERENCES `contract` (`Contract_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `contract_points_ibfk_6` FOREIGN KEY (`Seq`) REFERENCES `general_point` (`Seq`),
  ADD CONSTRAINT `contract_points_ibfk_7` FOREIGN KEY (`Emploee_id`) REFERENCES `employee` (`Emploee_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `contract_type`
--
ALTER TABLE `contract_type`
  ADD CONSTRAINT `contract_type_ibfk_1` FOREIGN KEY (`Emploee_id`) REFERENCES `employee` (`Emploee_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`Emploee_id`) REFERENCES `employee` (`Emploee_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `customor_payments`
--
ALTER TABLE `customor_payments`
  ADD CONSTRAINT `customor_payments_ibfk_3` FOREIGN KEY (`Contract_id`) REFERENCES `contract` (`Contract_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `customor_payments_ibfk_4` FOREIGN KEY (`Customer_id`) REFERENCES `customer` (`Customer_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `customor_payments_ibfk_6` FOREIGN KEY (`Emploee_id`) REFERENCES `employee` (`Emploee_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `finishing_table`
--
ALTER TABLE `finishing_table`
  ADD CONSTRAINT `finishing_table_ibfk_1` FOREIGN KEY (`Emploee_id`) REFERENCES `employee` (`Emploee_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `general_point`
--
ALTER TABLE `general_point`
  ADD CONSTRAINT `general_point_ibfk_1` FOREIGN KEY (`Emploee_id`) REFERENCES `employee` (`Emploee_id`);

--
-- Constraints for table `levels`
--
ALTER TABLE `levels`
  ADD CONSTRAINT `levels_ibfk_1` FOREIGN KEY (`stage_id`) REFERENCES `stages` (`Stage_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `levels_ibfk_2` FOREIGN KEY (`Emploee_id`) REFERENCES `employee` (`Emploee_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `level_details`
--
ALTER TABLE `level_details`
  ADD CONSTRAINT `level_details_ibfk_1` FOREIGN KEY (`level_id`) REFERENCES `levels` (`Levels_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `level_details_ibfk_4` FOREIGN KEY (`Emploee_id`) REFERENCES `employee` (`Emploee_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `participants`
--
ALTER TABLE `participants`
  ADD CONSTRAINT `participants_ibfk_1` FOREIGN KEY (`levels_id`) REFERENCES `levels` (`Levels_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `participants_ibfk_4` FOREIGN KEY (`Emploee_id`) REFERENCES `employee` (`Emploee_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_3` FOREIGN KEY (`Project_id`) REFERENCES `project` (`Project_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `payment_ibfk_5` FOREIGN KEY (`Emploee_id`) REFERENCES `employee` (`Emploee_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `project`
--
ALTER TABLE `project`
  ADD CONSTRAINT `project_ibfk_1` FOREIGN KEY (`Employee_id`) REFERENCES `employee` (`Emploee_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `project_customer`
--
ALTER TABLE `project_customer`
  ADD CONSTRAINT `project_customer_ibfk_1` FOREIGN KEY (`Contract_id`) REFERENCES `contract` (`Contract_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `project_customer_ibfk_4` FOREIGN KEY (`Customer_id`) REFERENCES `customer` (`Customer_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `project_customer_ibfk_5` FOREIGN KEY (`Emploee_id`) REFERENCES `employee` (`Emploee_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `project_stakeholder`
--
ALTER TABLE `project_stakeholder`
  ADD CONSTRAINT `project_stakeholder_ibfk_1` FOREIGN KEY (`Project_id`) REFERENCES `project` (`Project_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `project_stakeholder_ibfk_2` FOREIGN KEY (`Stackholder_id`) REFERENCES `stakeholder` (`Stakeholders_Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `project_stakeholder_ibfk_3` FOREIGN KEY (`Emploee_id`) REFERENCES `employee` (`Emploee_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `quarter`
--
ALTER TABLE `quarter`
  ADD CONSTRAINT `quarter_ibfk_1` FOREIGN KEY (`City_id`) REFERENCES `city` (`city_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `quarter_ibfk_2` FOREIGN KEY (`Emploee_id`) REFERENCES `employee` (`Emploee_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `sections`
--
ALTER TABLE `sections`
  ADD CONSTRAINT `sections_ibfk_1` FOREIGN KEY (`Building_id`) REFERENCES `building` (`Building_Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sections_ibfk_3` FOREIGN KEY (`Type_id`) REFERENCES `section_type` (`Type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sections_ibfk_4` FOREIGN KEY (`Emploee_id`) REFERENCES `employee` (`Emploee_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `section_type`
--
ALTER TABLE `section_type`
  ADD CONSTRAINT `section_type_ibfk_1` FOREIGN KEY (`Emploee_id`) REFERENCES `employee` (`Emploee_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `services`
--
ALTER TABLE `services`
  ADD CONSTRAINT `services_ibfk_1` FOREIGN KEY (`Building_id`) REFERENCES `building` (`Building_Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `services_ibfk_3` FOREIGN KEY (`Emploee_id`) REFERENCES `employee` (`Emploee_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `stackholder_check`
--
ALTER TABLE `stackholder_check`
  ADD CONSTRAINT `stackholder_check_ibfk_1` FOREIGN KEY (`Bank_id`) REFERENCES `bank` (`Bank_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `stackholder_check_ibfk_3` FOREIGN KEY (`Project_ID`) REFERENCES `project` (`Project_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `stackholder_check_ibfk_4` FOREIGN KEY (`Stakeholders_Id`) REFERENCES `stakeholder` (`Stakeholders_Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `stackholder_check_ibfk_5` FOREIGN KEY (`Emploee_id`) REFERENCES `employee` (`Emploee_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `stages`
--
ALTER TABLE `stages`
  ADD CONSTRAINT `stages_ibfk_1` FOREIGN KEY (`Employee_id`) REFERENCES `employee` (`Emploee_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `stage_details`
--
ALTER TABLE `stage_details`
  ADD CONSTRAINT `stage_details_ibfk_1` FOREIGN KEY (`Porject_id`) REFERENCES `project` (`Project_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `stage_details_ibfk_2` FOREIGN KEY (`Stage_id`) REFERENCES `stages` (`Stage_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `stage_details_ibfk_3` FOREIGN KEY (`Employee_id`) REFERENCES `employee` (`Emploee_id`);

--
-- Constraints for table `stakeholder`
--
ALTER TABLE `stakeholder`
  ADD CONSTRAINT `stakeholder_ibfk_1` FOREIGN KEY (`Emploee_id`) REFERENCES `employee` (`Emploee_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `stakeholder_payement`
--
ALTER TABLE `stakeholder_payement`
  ADD CONSTRAINT `F-stackholder-id` FOREIGN KEY (`Stakeholder_id`) REFERENCES `stakeholder` (`Stakeholders_Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `stakeholder_payement_ibfk_1` FOREIGN KEY (`Project_id`) REFERENCES `project` (`Project_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `userpages`
--
ALTER TABLE `userpages`
  ADD CONSTRAINT `userpages_ibfk_1` FOREIGN KEY (`employeeId`) REFERENCES `employee` (`Emploee_id`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
