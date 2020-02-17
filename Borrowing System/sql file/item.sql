SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `Tbl_Admin` (
  `id` int(11) NOT NULL,
  `AdminName` varchar(100) DEFAULT NULL,
  `AdminEmail` varchar(120) DEFAULT NULL,
  `AdminId` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `Tbl_Admin` (`id`, `AdminName`, `AdminEmail`, `AdminId`, `Password`, `updationDate`) VALUES
(1, 'โอเปค', 'inugami0403@gmail.com', 'admin', 'admin', '2020-02-116 16:11:42');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooks`
--

CREATE TABLE `tbl_Item` (
  `ItemId` int(11) NOT NULL,
  `ItemName` varchar(255) DEFAULT NULL,
  `CatId` int(11) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbooks`
--

INSERT INTO `tbl_Item` (`ItemId`, `ItemName`, `CatId`, `RegDate`, `UpdationDate`) VALUES
(1, 'สาย HDMI', 5, '2020-02-16 20:04:55', '2020-02-17 00:54:41'),
(2, 'Rouer', 6, '2020-02-16 20:17:31', '2020-02-17 00:13:17');

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tbl_Category` (
  `CatagoryID` int(11) NOT NULL,
  `CategoryName` varchar(150) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tbl_Category` (`CatagoryID`, `CategoryName`, `Status`, `CreationDate`, `UpdationDate`) VALUES
(1, 'Romantic', 1, '2020-02-16 18:35:25', '2020-02-17 16:00:42'),
(2, 'Technology', 1, '2020-02-16 18:35:39', '2020-02-17 17:13:03'),
(3, 'Science', 1, '2020-02-16 18:35:55', '0000-00-00 00:00:00'),

-- --------------------------------------------------------

--
-- Table structure for table `tblissuedbookdetails`
--

CREATE TABLE `tbl_Issued` (
  `IssuedId` int(11) NOT NULL,
  `ItemId` int(11) DEFAULT NULL,
  `UserID` varchar(150) DEFAULT NULL,
  `IssuesDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `ReturnDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `RetrunStatus` int(1) DEFAULT NULL,
  `fine` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblissuedbookdetails`
--

INSERT INTO `tblissuedbookdetails` (`IssuedId`, `ItemId`, `StudentID`, `IssuesDate`, `ReturnDate`, `RetrunStatus`, `fine`) VALUES
(01, 1, 'SID002', '2020-02-15 06:09:47', '2020-02-15 11:15:20', 1, 0),
(02, 1, 'SID002', '2020-02-15 06:12:27', '2020-02-15 11:15:23', 1, 5),
(03, 2, 'SID002', '2020-02-15 06:13:40', NULL, 0, NULL),
(04, 2, 'SID002', '2020-02-15 06:23:23', '2020-02-15 11:22:29', 1, 2),
(05, 1, 'SID009', '2020-02-15 10:59:26', NULL, 0, NULL),
(06, 2, 'SID011', '2020-02-15 18:02:55', NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblstudents`
--

CREATE TABLE `Tbl_User` (
  `id` int(11) NOT NULL,
  `UserId` varchar(100) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `UserEmail` varchar(120) DEFAULT NULL,
  `PhoneNumber` char(11) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstudents`
--

INSERT INTO `tblstudents` (`id`, `UserId`, `UserName`, `UserEmail`, `PhoneNumber`, `Password`, `Status`, `RegDate`, `UpdationDate`) VALUES
(1, 'SID002', 'หมา', 'dog@gmail.com', '0867174413', 'dog01', 1, '2020-02-11 15:37:05', '2020-02-15 18:26:21'),
(4, 'SID005', 'แมว', 'cat@gmail.com', '0867174411', 'cat01', 0, '2020-02-11 15:41:27', '2020-02-15 17:43:03'),
(8, 'SID009', 'ไก่', 'chicken@gmail.com', '0867174410', 'chicken01', 1, '2020-02-11 15:58:28', '2020-02-15 13:42:44'),
(9, 'SID010', 'หมู', 'pig@gmail.com', '0867174414', 'pig01', 1, '2020-02-15 13:40:30', NULL),
(10, 'SID011', 'ช้าง', 'elephant@gmail.com', '0867174415', 'elephant01', 1, '2020-02-15 18:00:59', NULL);

--
-- Indexes for dumped tables
--



--
-- Indexes for table `admin`
--
ALTER TABLE `Tbl_Admin`
  ADD PRIMARY KEY (`id`);


--
-- Indexes for table `tblbooks`
--
ALTER TABLE `tb_Item`
  ADD PRIMARY KEY (`ItemId`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tbl_Category`
  ADD PRIMARY KEY (`CatagoryID`);

--
-- Indexes for table `tblissuedbookdetails`
--
ALTER TABLE `tbl_Issued`
  ADD PRIMARY KEY (`IssuedId`);

--
-- Indexes for table `tblstudents`
--
ALTER TABLE `tbl_User`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UserId` (`UserId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `tbl_Admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;


--
-- AUTO_INCREMENT for table `tblbooks`
--
ALTER TABLE `tbl_Item`
  MODIFY `ItemId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tbl_Category`
  MODIFY `CatagoryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblissuedbookdetails`
--
ALTER TABLE `tbl_Issued`
  MODIFY `IssuedId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblstudents`
--
ALTER TABLE `tbl_User`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
