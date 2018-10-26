-- phpMyAdmin SQL Dump
-- version 4.7.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 24, 2018 at 04:07 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.0.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `foman01`
--

-- --------------------------------------------------------

--
-- Table structure for table `AgeCategory`
--

CREATE TABLE `AgeCategory` (
  `CategoryID` int(11) NOT NULL,
  `LowerLimit` int(11) NOT NULL,
  `UpperLimit` int(11) NOT NULL,
  `Category` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `AgeCategory`
--

INSERT INTO `AgeCategory` (`CategoryID`, `LowerLimit`, `UpperLimit`, `Category`) VALUES
(1, 0, 2, 'Infant'),
(2, 3, 15, 'Child'),
(3, 16, 130, 'Adult');

-- --------------------------------------------------------

--
-- Table structure for table `Aircraft`
--

CREATE TABLE `Aircraft` (
  `AircraftID` int(11) NOT NULL,
  `AircraftModel` varchar(255) NOT NULL,
  `SeatCapacity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Aircraft`
--

INSERT INTO `Aircraft` (`AircraftID`, `AircraftModel`, `SeatCapacity`) VALUES
(1, 'Airbus A319', 156),
(2, 'Airbus A320 V1', 180),
(3, 'Airbus A320 V2', 186);

-- --------------------------------------------------------

--
-- Table structure for table `Airport`
--

CREATE TABLE `Airport` (
  `AirportID` int(11) NOT NULL,
  `AirportCode` varchar(255) NOT NULL,
  `AirportName` varchar(255) NOT NULL,
  `CityID` int(11) NOT NULL,
  `CountryID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Airport`
--

INSERT INTO `Airport` (`AirportID`, `AirportCode`, `AirportName`, `CityID`, `CountryID`) VALUES
(1, 'DUB', 'Dublin International', 6, 1),
(2, 'CRK', 'Cork International', 1, 1),
(3, 'JFK', 'JFK New York', 4, 4),
(4, 'LIV', 'Liverpool International', 5, 2);

-- --------------------------------------------------------

--
-- Table structure for table `AirportCity`
--

CREATE TABLE `AirportCity` (
  `CityID` int(11) NOT NULL,
  `CityName` varchar(255) NOT NULL,
  `CountryID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `AirportCity`
--

INSERT INTO `AirportCity` (`CityID`, `CityName`, `CountryID`) VALUES
(1, 'Cork', 1),
(2, 'Madrid', 3),
(3, 'Boston', 4),
(4, 'New York', 4),
(5, 'Liverpool', 2),
(6, 'Dublin', 1);

-- --------------------------------------------------------

--
-- Table structure for table `AirportCountry`
--

CREATE TABLE `AirportCountry` (
  `CountryID` int(11) NOT NULL,
  `CountryName` varchar(255) NOT NULL,
  `CountryCode` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `AirportCountry`
--

INSERT INTO `AirportCountry` (`CountryID`, `CountryName`, `CountryCode`) VALUES
(1, 'Ireland', 'IRE'),
(2, 'United Kingdom', 'UK'),
(3, 'Spain', 'ESP'),
(4, 'United States of America', 'USA');

-- --------------------------------------------------------

--
-- Table structure for table `Booking`
--

CREATE TABLE `Booking` (
  `BookingID` int(11) NOT NULL,
  `CustomerID` int(11) NOT NULL,
  `BookingNumber` varchar(255) NOT NULL,
  `AdultsNum` int(11) NOT NULL,
  `ChildrenNum` int(11) NOT NULL,
  `InfantsNum` int(11) NOT NULL,
  `DepartureFlightID` int(11) NOT NULL,
  `ReturnFlightID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Booking`
--

INSERT INTO `Booking` (`BookingID`, `CustomerID`, `BookingNumber`, `AdultsNum`, `ChildrenNum`, `InfantsNum`, `DepartureFlightID`, `ReturnFlightID`) VALUES
(1, 1, 'FX4556', 2, 0, 0, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `Country`
--

CREATE TABLE `Country` (
  `CountryID` int(10) NOT NULL,
  `Country` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Country`
--

INSERT INTO `Country` (`CountryID`, `Country`) VALUES
(1, 'Ireland'),
(4, 'Spain'),
(2, 'United Kingdom'),
(3, 'United States of America');

-- --------------------------------------------------------

--
-- Table structure for table `Customer`
--

CREATE TABLE `Customer` (
  `CustomerID` int(11) NOT NULL,
  `EmailAddress` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Title` varchar(255) NOT NULL,
  `FirstName` varchar(255) NOT NULL,
  `LastName` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `AddressCont` varchar(255) NOT NULL,
  `City` varchar(255) NOT NULL,
  `Country` varchar(255) NOT NULL,
  `Postcode` varchar(255) NOT NULL,
  `MobileNumber` int(11) NOT NULL,
  `PreferredAirportOrigin` varchar(255) NOT NULL,
  `Language` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Customer`
--

INSERT INTO `Customer` (`CustomerID`, `EmailAddress`, `Password`, `Title`, `FirstName`, `LastName`, `Address`, `AddressCont`, `City`, `Country`, `Postcode`, `MobileNumber`, `PreferredAirportOrigin`, `Language`) VALUES
(1, 'fearghusoman@gmail.com', 'mypassword07', 'Mr', 'Fearghus', 'Oman', 'Groyne', '', 'Killorglin', 'Ireland', '0000', 876305115, 'Dublin International', 'English'),
(2, 'kategilbert26@gmail.com', 'bridonagrey04', 'Miss', 'Kate', 'Gilbert', 'Bridona Downs', 'Kilcoole', 'Greystones', 'Ireland', '23847', 873457865, 'Cork International', 'English'),
(3, 'tommymcg@yahoo.co.uk', 'blahblahblah', 'Mr', 'Tommy', 'McGovern', 'The Backarse', 'Of Nowhere', 'Dundalk', 'Ireland', 'THS8787', 876549870, 'Liverpool International', 'English');

-- --------------------------------------------------------

--
-- Table structure for table `Flights`
--

CREATE TABLE `Flights` (
  `FlightID` int(11) NOT NULL,
  `RouteID` int(11) NOT NULL,
  `DepartureDate` date NOT NULL,
  `DepartureTime` time NOT NULL,
  `ArrivalDate` date NOT NULL,
  `ArrivalTime` time NOT NULL,
  `AircraftID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Flights`
--

INSERT INTO `Flights` (`FlightID`, `RouteID`, `DepartureDate`, `DepartureTime`, `ArrivalDate`, `ArrivalTime`, `AircraftID`) VALUES
(1, 1, '2018-12-12', '13:30:00', '2018-12-12', '14:30:00', 1),
(2, 5, '2018-12-19', '08:00:00', '2018-12-19', '09:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `Passenger`
--

CREATE TABLE `Passenger` (
  `PassengerID` int(11) NOT NULL,
  `CustomerID` int(11) NOT NULL,
  `BookingID` int(11) NOT NULL,
  `Title` varchar(255) NOT NULL,
  `FirstName` varchar(255) NOT NULL,
  `LastName` varchar(255) NOT NULL,
  `AgeAtTimeOfTravel` int(11) NOT NULL,
  `AgeCategory` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Passenger`
--

INSERT INTO `Passenger` (`PassengerID`, `CustomerID`, `BookingID`, `Title`, `FirstName`, `LastName`, `AgeAtTimeOfTravel`, `AgeCategory`) VALUES
(9, 1, 1, 'Mr', 'Fearghus', 'Oman', 24, 3),
(10, 1, 1, 'Mr', 'John', 'Oman', 53, 3);

-- --------------------------------------------------------

--
-- Table structure for table `Routes`
--

CREATE TABLE `Routes` (
  `RouteID` int(11) NOT NULL,
  `DepartureAirportID` int(11) NOT NULL,
  `ArrivalAirportID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Routes`
--

INSERT INTO `Routes` (`RouteID`, `DepartureAirportID`, `ArrivalAirportID`) VALUES
(1, 1, 2),
(2, 3, 1),
(3, 3, 2),
(4, 2, 3),
(5, 2, 1),
(6, 4, 3);

-- --------------------------------------------------------

--
-- Table structure for table `Titles`
--

CREATE TABLE `Titles` (
  `TitleID` int(11) NOT NULL,
  `Title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Titles`
--

INSERT INTO `Titles` (`TitleID`, `Title`) VALUES
(2, 'Miss'),
(1, 'Mr'),
(3, 'Mrs'),
(4, 'Ms');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `AgeCategory`
--
ALTER TABLE `AgeCategory`
  ADD PRIMARY KEY (`CategoryID`);

--
-- Indexes for table `Aircraft`
--
ALTER TABLE `Aircraft`
  ADD PRIMARY KEY (`AircraftID`);

--
-- Indexes for table `Airport`
--
ALTER TABLE `Airport`
  ADD PRIMARY KEY (`AirportID`),
  ADD UNIQUE KEY `AirportCode` (`AirportCode`),
  ADD UNIQUE KEY `AirportName` (`AirportName`);

--
-- Indexes for table `AirportCity`
--
ALTER TABLE `AirportCity`
  ADD PRIMARY KEY (`CityID`),
  ADD KEY `FK_CountryID` (`CountryID`);

--
-- Indexes for table `AirportCountry`
--
ALTER TABLE `AirportCountry`
  ADD PRIMARY KEY (`CountryID`);

--
-- Indexes for table `Booking`
--
ALTER TABLE `Booking`
  ADD PRIMARY KEY (`BookingID`),
  ADD KEY `FK_CustomerID` (`CustomerID`),
  ADD KEY `FK_DepFlight` (`DepartureFlightID`),
  ADD KEY `FK_RetFlight` (`ReturnFlightID`);

--
-- Indexes for table `Country`
--
ALTER TABLE `Country`
  ADD PRIMARY KEY (`CountryID`),
  ADD UNIQUE KEY `Country` (`Country`);

--
-- Indexes for table `Customer`
--
ALTER TABLE `Customer`
  ADD PRIMARY KEY (`CustomerID`),
  ADD KEY `FK_Country` (`Country`),
  ADD KEY `FK_Title` (`Title`),
  ADD KEY `FK_Airport` (`PreferredAirportOrigin`);

--
-- Indexes for table `Flights`
--
ALTER TABLE `Flights`
  ADD PRIMARY KEY (`FlightID`),
  ADD KEY `FK_Route` (`RouteID`),
  ADD KEY `FK_Aircraft` (`AircraftID`);

--
-- Indexes for table `Passenger`
--
ALTER TABLE `Passenger`
  ADD PRIMARY KEY (`PassengerID`),
  ADD KEY `FK_Customer` (`CustomerID`),
  ADD KEY `FK_Booking` (`BookingID`),
  ADD KEY `FK_Age_Cat` (`AgeCategory`);

--
-- Indexes for table `Routes`
--
ALTER TABLE `Routes`
  ADD PRIMARY KEY (`RouteID`),
  ADD KEY `FK-Departure` (`DepartureAirportID`),
  ADD KEY `FK_Arrival` (`ArrivalAirportID`);

--
-- Indexes for table `Titles`
--
ALTER TABLE `Titles`
  ADD PRIMARY KEY (`TitleID`),
  ADD UNIQUE KEY `Title` (`Title`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `AgeCategory`
--
ALTER TABLE `AgeCategory`
  MODIFY `CategoryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `Aircraft`
--
ALTER TABLE `Aircraft`
  MODIFY `AircraftID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `Airport`
--
ALTER TABLE `Airport`
  MODIFY `AirportID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `AirportCity`
--
ALTER TABLE `AirportCity`
  MODIFY `CityID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `AirportCountry`
--
ALTER TABLE `AirportCountry`
  MODIFY `CountryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `Booking`
--
ALTER TABLE `Booking`
  MODIFY `BookingID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `Country`
--
ALTER TABLE `Country`
  MODIFY `CountryID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `Customer`
--
ALTER TABLE `Customer`
  MODIFY `CustomerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `Flights`
--
ALTER TABLE `Flights`
  MODIFY `FlightID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `Passenger`
--
ALTER TABLE `Passenger`
  MODIFY `PassengerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `Routes`
--
ALTER TABLE `Routes`
  MODIFY `RouteID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `Titles`
--
ALTER TABLE `Titles`
  MODIFY `TitleID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `AirportCity`
--
ALTER TABLE `AirportCity`
  ADD CONSTRAINT `FK_CountryID` FOREIGN KEY (`CountryID`) REFERENCES `AirportCountry` (`CountryID`);

--
-- Constraints for table `Booking`
--
ALTER TABLE `Booking`
  ADD CONSTRAINT `FK_CustomerID` FOREIGN KEY (`CustomerID`) REFERENCES `Customer` (`CustomerID`),
  ADD CONSTRAINT `FK_DepFlight` FOREIGN KEY (`DepartureFlightID`) REFERENCES `Flights` (`FlightID`),
  ADD CONSTRAINT `FK_RetFlight` FOREIGN KEY (`ReturnFlightID`) REFERENCES `Flights` (`FlightID`);

--
-- Constraints for table `Customer`
--
ALTER TABLE `Customer`
  ADD CONSTRAINT `FK_Airport` FOREIGN KEY (`PreferredAirportOrigin`) REFERENCES `Airport` (`AirportName`),
  ADD CONSTRAINT `FK_Country` FOREIGN KEY (`Country`) REFERENCES `Country` (`Country`),
  ADD CONSTRAINT `FK_Title` FOREIGN KEY (`Title`) REFERENCES `Titles` (`Title`);

--
-- Constraints for table `Flights`
--
ALTER TABLE `Flights`
  ADD CONSTRAINT `FK_Aircraft` FOREIGN KEY (`AircraftID`) REFERENCES `Aircraft` (`AircraftID`),
  ADD CONSTRAINT `FK_Route` FOREIGN KEY (`RouteID`) REFERENCES `Routes` (`RouteID`);

--
-- Constraints for table `Passenger`
--
ALTER TABLE `Passenger`
  ADD CONSTRAINT `FK_Age_Cat` FOREIGN KEY (`AgeCategory`) REFERENCES `AgeCategory` (`CategoryID`),
  ADD CONSTRAINT `FK_Booking` FOREIGN KEY (`BookingID`) REFERENCES `Booking` (`BookingID`),
  ADD CONSTRAINT `FK_Customer` FOREIGN KEY (`CustomerID`) REFERENCES `Customer` (`CustomerID`);

--
-- Constraints for table `Routes`
--
ALTER TABLE `Routes`
  ADD CONSTRAINT `FK-Departure` FOREIGN KEY (`DepartureAirportID`) REFERENCES `Airport` (`AirportID`),
  ADD CONSTRAINT `FK_Arrival` FOREIGN KEY (`ArrivalAirportID`) REFERENCES `Airport` (`AirportID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
