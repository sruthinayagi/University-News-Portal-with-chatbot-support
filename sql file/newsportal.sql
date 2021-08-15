

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `newsportal`
--

-- --------------------------------------------------------

--
-- Table structure for table `poll`
--

CREATE TABLE `poll` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `phone` text NOT NULL,
  `feedback` text NOT NULL,
  `suggestions` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `poll`
--

INSERT INTO `poll` (`id`, `name`, `email`, `phone`, `feedback`, `suggestions`) VALUES
(1, 'vit', 'vit@gmail.com', '', 'excellent', 'Excellent'),
(2, '', '', '', 'excellent', 'abcd');

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `id` int(11) NOT NULL,
  `AdminUserName` varchar(255) NOT NULL,
  `AdminPassword` varchar(255) NOT NULL,
  `AdminEmailId` varchar(255) NOT NULL,
  `Is_Active` int(11) NOT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`id`, `AdminUserName`, `AdminPassword`, `AdminEmailId`, `Is_Active`, `CreationDate`, `UpdationDate`) VALUES
(1, 'admin', '$2y$12$i4LMfeFPQpGSNPTaccIkKuwxAkJ4PhBr3JND7FpXwWFjRvchQn17C', 'sruthinayagi2001@gmail.com', 1, '2020-10-01 17:51:00', '2020-10-02 18:21:07');

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `id` int(11) NOT NULL,
  `CategoryName` varchar(200) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL,
  `Is_Active` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `CategoryName`, `Description`, `PostingDate`, `UpdationDate`, `Is_Active`) VALUES
(8, 'B.Tech', 'Bachelor Of Technology', '2020-10-27 17:25:23', NULL, 1),
(9, 'M.Tech', 'Master of Technology', '2020-10-27 17:25:49', NULL, 1),
(10, 'FDE', 'Fashion Design Engineering', '2020-10-27 17:26:46', NULL, 1),
(11, 'STUDENT CHAPTERS & CLUBS', 'TECHNICAL AND NON-TECHNICAL CLUBS', '2020-10-27 17:31:20', NULL, 1),
(12, 'PG', 'POST GRADUATE', '2020-10-28 06:11:59', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblcomments`
--

CREATE TABLE `tblcomments` (
  `id` int(11) NOT NULL,
  `postId` char(11) DEFAULT NULL,
  `name` varchar(120) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `comment` mediumtext DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcomments`
--

INSERT INTO `tblcomments` (`id`, `postId`, `name`, `email`, `comment`, `postingDate`, `status`) VALUES
(1, '12', 'Anuj', 'anuj@gmail.com', 'Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis.', '2018-11-21 11:06:22', 0),
(2, '12', 'Test user', 'test@gmail.com', 'This is sample text for testing.', '2018-11-21 11:25:56', 1),
(3, '7', 'ABC', 'abc@test.com', 'This is sample text for testing.', '2018-11-21 11:27:06', 1),
(4, '20', 'sruthi Nayagi', 'sruthinayagi2001@gmail.com', 'I like this initiative.', '2020-10-28 10:19:13', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblfaculty`
--

CREATE TABLE `tblfaculty` (
  `facultyid` int(11) NOT NULL,
  `facultyname` varchar(255) NOT NULL,
  `facultymailid` varchar(255) NOT NULL,
  `facultyschool` varchar(255) NOT NULL,
  `coursestaught` varchar(255) DEFAULT NULL,
  `Is_Active` int(11) NOT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblfaculty`
--

INSERT INTO `tblfaculty` (`facultyid`, `facultyname`, `facultymailid`, `facultyschool`, `coursestaught`, `Is_Active`, `CreationDate`, `UpdationDate`) VALUES
(12345678, 'Dr.Sindhia', 'sindhia@vitgmail.com', 'SCOPE', 'CSE2003,CSE3001', 1, '2020-10-26 04:58:09', '2020-10-26 13:11:07'),
(231456, 'Dr.Girija', 'girija@vitgmail.com', 'SCOPE', 'CSE3001', 1, '2020-10-26 04:58:09', '0000-00-00 00:00:00'),
(34567812, 'Dr.Geethanjali', 'geethanjali@vitgmail.com', 'SAS', 'MAT2002', 1, '2020-10-26 04:58:09', '2020-10-26 12:30:00'),
(56781234, 'Dr.Jeganathan', 'jeganathan@vitgmail.com', 'SCOPE', 'CSE2002', 1, '2020-10-26 04:58:09', '2020-10-26 13:11:01'),
(67812345, 'Dr.Sweetlin', 'sweetlin@vitgmail.com', 'SENSE', 'CSE2004', 1, '2020-10-26 04:58:09', '2020-10-26 13:11:01'),
(78123456, 'Dr.Edward Jero', 'edwardjero@vitgmail.com', 'SCOPE', 'CSE2003', 1, '2020-10-26 04:58:09', '2020-10-26 13:11:07');

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext DEFAULT NULL,
  `Description` longtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `PageTitle`, `Description`, `PostingDate`, `UpdationDate`) VALUES
(1, 'aboutus', 'About News Portal', '<font color=\"#7b8898\" face=\"Mercury SSm A, Mercury SSm B, Georgia, Times, Times New Roman, Microsoft YaHei New, Microsoft Yahei, å¾®è½¯é›…é»‘, å®‹ä½“, SimSun, STXihei, åŽæ–‡ç»†é»‘, serif\"><span style=\"font-size: 26px;\">This Portal was developed by Sruthi nayagi(19bai1037) and Padmaja(19bai1107)&nbsp; from VIT,chennai.</span></font>', '2018-06-30 18:01:03', '2020-10-26 07:04:29'),
(2, 'contactus', 'Contact Details', '<p><br></p><p><b>Address :&nbsp; Chennai,India</b></p><p><b>Phone Number : </b>+91 -1234567890</p><p><b>Email -id :&nbsp; </b>sruthinayagi2001@gmail.com</p>', '2018-06-30 18:01:36', '2020-10-22 14:38:30');

-- --------------------------------------------------------

--
-- Table structure for table `tblposts`
--

CREATE TABLE `tblposts` (
  `id` int(11) NOT NULL,
  `PostTitle` longtext DEFAULT NULL,
  `CategoryId` int(11) DEFAULT NULL,
  `SubCategoryId` int(11) DEFAULT NULL,
  `PostDetails` longtext CHARACTER SET utf8 DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `Is_Active` int(1) DEFAULT NULL,
  `PostUrl` mediumtext DEFAULT NULL,
  `PostImage` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblposts`
--

INSERT INTO `tblposts` (`id`, `PostTitle`, `CategoryId`, `SubCategoryId`, `PostDetails`, `PostingDate`, `UpdationDate`, `Is_Active`, `PostUrl`, `PostImage`) VALUES
(14, 'B.Tech CSE -COURSE DESCRIPTION', 8, 10, '<div><strong style=\"margin: 0px; padding: 0px; color: rgb(40, 40, 40); font-family: Georgia, sans-serif; font-size: 15px; background-color: rgb(242, 242, 242);\"><em style=\"margin: 0px; padding: 0px;\">“Computer Science &amp; Engineering</em>&nbsp;<em style=\"margin: 0px; padding: 0px;\">involves the design and understanding of computational process and programming languages.”</em></strong><b style=\"color: rgb(32, 33, 34); font-family: sans-serif;\"><br></b></div><div><b style=\"color: rgb(32, 33, 34); font-family: sans-serif;\"><br></b></div><div><b style=\"color: rgb(32, 33, 34); font-family: sans-serif;\">Computer Science &amp; Engineering</b><span style=\"color: rgb(32, 33, 34); font-family: sans-serif;\">&nbsp;(</span><b style=\"color: rgb(32, 33, 34); font-family: sans-serif;\">CSE</b><span style=\"color: rgb(32, 33, 34); font-family: sans-serif;\">) is an academic program at many&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/University\" title=\"University\" style=\"color: rgb(11, 0, 128); background: none rgb(255, 255, 255); font-family: sans-serif;\">universities</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif;\">&nbsp;which comprises scientific and engineering aspects of computing. CSE is also a term often used in Europe to translate discipline of&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Informatics\" title=\"Informatics\" style=\"color: rgb(11, 0, 128); background: none rgb(255, 255, 255); font-family: sans-serif;\">informatics</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif;\">.</span><br></div>', '2020-10-27 17:40:06', '2020-10-28 11:34:51', 1, 'B.Tech-CSE--COURSE-DESCRIPTION', '9637ef51c37687c7446a82114ee4d8bb.jpg'),
(15, 'B.Tech EEE -COURSE DESCRIPTION', 8, 11, '<p style=\"margin-top: 0.5em; margin-bottom: 0.5em; color: rgb(32, 33, 34); font-family: sans-serif;\"><b>Electrical engineering</b>&nbsp;is an&nbsp;<a href=\"https://en.wikipedia.org/wiki/Engineering\" title=\"Engineering\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">engineering</a>&nbsp;discipline concerned with the study, design, and application of equipment, devices, and systems that use&nbsp;<a href=\"https://en.wikipedia.org/wiki/Electricity\" title=\"Electricity\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">electricity</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Electronics\" title=\"Electronics\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">electronics</a>, and&nbsp;<a href=\"https://en.wikipedia.org/wiki/Electromagnetism\" title=\"Electromagnetism\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">electromagnetism</a>. It emerged as an identifiable occupation in the latter half of the 19th century after&nbsp;the&nbsp;<a href=\"https://en.wikipedia.org/wiki/Commercialization\" title=\"Commercialization\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">commercialization</a>&nbsp;of the&nbsp;<a href=\"https://en.wikipedia.org/wiki/Electric_telegraph\" class=\"mw-redirect\" title=\"Electric telegraph\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">electric telegraph</a>, the&nbsp;<a href=\"https://en.wikipedia.org/wiki/Telephone\" title=\"Telephone\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">telephone</a>, and&nbsp;<a href=\"https://en.wikipedia.org/wiki/Electrical_power\" class=\"mw-redirect\" title=\"Electrical power\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">electrical power</a>&nbsp;generation, distribution, and use.</p><p style=\"margin-top: 0.5em; margin-bottom: 0.5em; color: rgb(32, 33, 34); font-family: sans-serif;\">Electrical engineering is now divided into a wide range of fields, including&nbsp;<a href=\"https://en.wikipedia.org/wiki/Computer_engineering\" title=\"Computer engineering\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">computer engineering</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Systems_engineering\" title=\"Systems engineering\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">systems engineering</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Power_engineering\" title=\"Power engineering\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">power engineering</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Telecommunication\" title=\"Telecommunication\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">telecommunications</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Radio-frequency_engineering\" title=\"Radio-frequency engineering\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">radio-frequency engineering</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Signal_processing\" title=\"Signal processing\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">signal processing</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Instrumentation\" title=\"Instrumentation\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">instrumentation</a>, and&nbsp;<a href=\"https://en.wikipedia.org/wiki/Electronics\" title=\"Electronics\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">electronics</a>. Many of these disciplines overlap with other engineering branches, spanning a huge number of specializations including hardware engineering,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Power_electronics\" title=\"Power electronics\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">power electronics</a>, electromagnetics and waves,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Microwave_engineering\" title=\"Microwave engineering\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">microwave engineering</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Nanotechnology\" title=\"Nanotechnology\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">nanotechnology</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Electrochemistry\" title=\"Electrochemistry\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">electrochemistry</a>, renewable energies, mechatronics, and electrical materials science.</p>', '2020-10-27 17:46:44', NULL, 1, 'B.Tech-EEE--COURSE-DESCRIPTION', '39f197def90d1e88699959e96ea08ac8.jpg'),
(16, 'FABULOUS FASHION', 10, 15, '<p style=\"box-sizing: inherit; background-repeat: no-repeat; padding: 0px; margin-bottom: 16px; font-size: 15px; line-height: 1.6; text-rendering: optimizelegibility; color: rgba(0, 0, 0, 0.87); font-family: &quot;Open Sans&quot;, sans-serif; -webkit-tap-highlight-color: rgba(0, 0, 0, 0) !important;\"><span lang=\"EN-US\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: rgba(0, 0, 0, 0) !important; background-repeat: no-repeat; padding: 0px; margin: 0px;\">Fashion design is the art of designing clothing that is both functional and aesthetically pleasing. Fashion designers must study their craft well in order to be successful. A fashion design course can provide the introduction to further study in this high demand field.</span></p><p style=\"box-sizing: inherit; background-repeat: no-repeat; padding: 0px; margin-bottom: 16px; font-size: 15px; line-height: 1.6; text-rendering: optimizelegibility; color: rgba(0, 0, 0, 0.87); font-family: &quot;Open Sans&quot;, sans-serif; -webkit-tap-highlight-color: rgba(0, 0, 0, 0) !important;\"><span style=\"box-sizing: inherit; -webkit-tap-highlight-color: rgba(0, 0, 0, 0) !important; background-repeat: no-repeat; padding: 0px; margin: 0px; font-weight: bolder; line-height: inherit;\"><span lang=\"EN-US\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: rgba(0, 0, 0, 0) !important; background-repeat: no-repeat; padding: 0px; margin: 0px;\">What Is a Fashion Design Course?</span></span></p><p style=\"box-sizing: inherit; background-repeat: no-repeat; padding: 0px; margin-bottom: 16px; font-size: 15px; line-height: 1.6; text-rendering: optimizelegibility; color: rgba(0, 0, 0, 0.87); font-family: &quot;Open Sans&quot;, sans-serif; -webkit-tap-highlight-color: rgba(0, 0, 0, 0) !important;\"><span lang=\"EN-US\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: rgba(0, 0, 0, 0) !important; background-repeat: no-repeat; padding: 0px; margin: 0px;\">A fashion design course is a course that covers the art of designing beautiful clothing and fashion accessories. These courses look at the work of famous designers and the culture of the time to show students how great fashion designs come to be.</span></p><p style=\"box-sizing: inherit; background-repeat: no-repeat; padding: 0px; margin-bottom: 16px; font-size: 15px; line-height: 1.6; text-rendering: optimizelegibility; color: rgba(0, 0, 0, 0.87); font-family: &quot;Open Sans&quot;, sans-serif; -webkit-tap-highlight-color: rgba(0, 0, 0, 0) !important;\"><span style=\"box-sizing: inherit; -webkit-tap-highlight-color: rgba(0, 0, 0, 0) !important; background-repeat: no-repeat; padding: 0px; margin: 0px; font-weight: bolder; line-height: inherit;\"><span lang=\"EN-US\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: rgba(0, 0, 0, 0) !important; background-repeat: no-repeat; padding: 0px; margin: 0px;\">What Are the Benefits of Taking a Course in Fashion Design?</span></span></p><p style=\"box-sizing: inherit; background-repeat: no-repeat; padding: 0px; margin-bottom: 16px; font-size: 15px; line-height: 1.6; text-rendering: optimizelegibility; color: rgba(0, 0, 0, 0.87); font-family: &quot;Open Sans&quot;, sans-serif; -webkit-tap-highlight-color: rgba(0, 0, 0, 0) !important;\"><span lang=\"EN-US\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: rgba(0, 0, 0, 0) !important; background-repeat: no-repeat; padding: 0px; margin: 0px;\">A course in fashion design will teach you the basics of fashion designing. This can show a student whether or not a career in fashion design would be a good fit, or provide a foundation for future study in the field.</span></p><p style=\"box-sizing: inherit; background-repeat: no-repeat; padding: 0px; margin-bottom: 16px; font-size: 15px; line-height: 1.6; text-rendering: optimizelegibility; color: rgba(0, 0, 0, 0.87); font-family: &quot;Open Sans&quot;, sans-serif; -webkit-tap-highlight-color: rgba(0, 0, 0, 0) !important;\"><span style=\"box-sizing: inherit; -webkit-tap-highlight-color: rgba(0, 0, 0, 0) !important; background-repeat: no-repeat; padding: 0px; margin: 0px; font-weight: bolder; line-height: inherit;\"><span lang=\"EN-US\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: rgba(0, 0, 0, 0) !important; background-repeat: no-repeat; padding: 0px; margin: 0px;\">How Much Does It Cost to Take a Course in Fashion Design?</span></span></p><p style=\"box-sizing: inherit; background-repeat: no-repeat; padding: 0px; margin-bottom: 16px; font-size: 15px; line-height: 1.6; text-rendering: optimizelegibility; color: rgba(0, 0, 0, 0.87); font-family: &quot;Open Sans&quot;, sans-serif; -webkit-tap-highlight-color: rgba(0, 0, 0, 0) !important;\"><span lang=\"EN-US\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: rgba(0, 0, 0, 0) !important; background-repeat: no-repeat; padding: 0px; margin: 0px;\">Fashion design courses vary depending on the university you study in and the location where you study. The more prestigious fashion universities will cost more than the lesser known schools.</span></p><p style=\"box-sizing: inherit; background-repeat: no-repeat; padding: 0px; margin-bottom: 16px; font-size: 15px; line-height: 1.6; text-rendering: optimizelegibility; color: rgba(0, 0, 0, 0.87); font-family: &quot;Open Sans&quot;, sans-serif; -webkit-tap-highlight-color: rgba(0, 0, 0, 0) !important;\"><span style=\"box-sizing: inherit; -webkit-tap-highlight-color: rgba(0, 0, 0, 0) !important; background-repeat: no-repeat; padding: 0px; margin: 0px; font-weight: bolder; line-height: inherit;\"><span lang=\"EN-US\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: rgba(0, 0, 0, 0) !important; background-repeat: no-repeat; padding: 0px; margin: 0px;\">What Kind of Career Improvement Can You Expect with a Course in Fashion Design?</span></span></p><p style=\"box-sizing: inherit; background-repeat: no-repeat; padding: 0px; margin-bottom: 16px; font-size: 15px; line-height: 1.6; text-rendering: optimizelegibility; color: rgba(0, 0, 0, 0.87); font-family: &quot;Open Sans&quot;, sans-serif; -webkit-tap-highlight-color: rgba(0, 0, 0, 0) !important;\"><span lang=\"EN-US\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: rgba(0, 0, 0, 0) !important; background-repeat: no-repeat; padding: 0px; margin: 0px;\">A course in fashion design will show you if pursuing a career as a fashion designer is a good choice. It will introduce you to the world of fashion design and all that it entails.</span></p><p style=\"box-sizing: inherit; background-repeat: no-repeat; padding: 0px; margin-bottom: 16px; font-size: 15px; line-height: 1.6; text-rendering: optimizelegibility; color: rgba(0, 0, 0, 0.87); font-family: &quot;Open Sans&quot;, sans-serif; -webkit-tap-highlight-color: rgba(0, 0, 0, 0) !important;\"><span style=\"box-sizing: inherit; -webkit-tap-highlight-color: rgba(0, 0, 0, 0) !important; background-repeat: no-repeat; padding: 0px; margin: 0px; font-weight: bolder; line-height: inherit;\"><span lang=\"EN-US\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: rgba(0, 0, 0, 0) !important; background-repeat: no-repeat; padding: 0px; margin: 0px;\">Why Take an Online Course in Fashion Design?</span></span></p><p style=\"box-sizing: inherit; background-repeat: no-repeat; padding: 0px; margin-bottom: 16px; font-size: 15px; line-height: 1.6; text-rendering: optimizelegibility; color: rgba(0, 0, 0, 0.87); font-family: &quot;Open Sans&quot;, sans-serif; -webkit-tap-highlight-color: rgba(0, 0, 0, 0) !important;\"><span lang=\"EN-US\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: rgba(0, 0, 0, 0) !important; background-repeat: no-repeat; padding: 0px; margin: 0px;\">Fashion design courses can be taken online, and this will provide all of the benefits of studying this field with the convenience of studying at home.</span></p><p style=\"box-sizing: inherit; background-repeat: no-repeat; padding: 0px; margin-bottom: 16px; font-size: 15px; line-height: 1.6; text-rendering: optimizelegibility; color: rgba(0, 0, 0, 0.87); font-family: &quot;Open Sans&quot;, sans-serif; -webkit-tap-highlight-color: rgba(0, 0, 0, 0) !important;\"><span style=\"box-sizing: inherit; -webkit-tap-highlight-color: rgba(0, 0, 0, 0) !important; background-repeat: no-repeat; padding: 0px; margin: 0px; font-weight: bolder; line-height: inherit;\"><span lang=\"EN-US\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: rgba(0, 0, 0, 0) !important; background-repeat: no-repeat; padding: 0px; margin: 0px;\">Where to Take a Course in Fashion Design?</span></span></p><p style=\"box-sizing: inherit; background-repeat: no-repeat; padding: 0px; margin-bottom: 16px; font-size: 15px; line-height: 1.6; text-rendering: optimizelegibility; color: rgba(0, 0, 0, 0.87); font-family: &quot;Open Sans&quot;, sans-serif; -webkit-tap-highlight-color: rgba(0, 0, 0, 0) !important;\"><span lang=\"EN-US\" style=\"box-sizing: inherit; -webkit-tap-highlight-color: rgba(0, 0, 0, 0) !important; background-repeat: no-repeat; padding: 0px; margin: 0px;\">Any college or university that offers a fashion degree may offer a course in fashion design. Some of the most prestigious fashion schools are located in France and New York City.</span></p>', '2020-10-27 17:54:25', NULL, 1, 'FABULOUS-FASHION', '57c9599c5512356ba4c2169fc7ba1f4cjpeg'),
(17, 'PG MCA-COURSE DESCRIPTION', 12, 18, '<p dir=\"ltr\" style=\"margin-top: 10px; margin-right: 20px; margin-bottom: 10px; font-size: 16px; line-height: 26.7px; color: rgb(38, 38, 38); font-family: din; text-align: justify;\">MCA or Master of Computer Applications is a 2-year postgraduate degree course It deals in various aspects of computer applications, from software, networking and hardware studies.</p><p dir=\"ltr\" style=\"margin-top: 10px; margin-right: 20px; margin-bottom: 10px; font-size: 16px; line-height: 26.7px; color: rgb(38, 38, 38); font-family: din; text-align: justify;\">The eligibility criteria for this course is qualifying Bachelor’s degree in computer application (BCA) or in any related field with mathematics as a compulsory subject in Class 12.</p><p dir=\"ltr\" style=\"margin-top: 10px; margin-right: 20px; margin-bottom: 10px; font-size: 16px; line-height: 26.7px; color: rgb(38, 38, 38); font-family: din; text-align: justify;\">The admission process is done on the basis of MCA entrance exams such as MAH MCA CET and&nbsp;<a href=\"https://collegedunia.com/exams/nimcet\" target=\"_blank\" style=\"background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(79, 183, 221); position: relative; font-weight: 900;\">NIMCET</a>, among others, or marks of the last qualifying examination.</p><p dir=\"ltr\" style=\"margin-top: 10px; margin-right: 20px; margin-bottom: 10px; font-size: 16px; line-height: 26.7px; color: rgb(38, 38, 38); font-family: din; text-align: justify;\">Although students like to pursue this course full time, there are options of distance learning from universities like<a href=\"https://collegedunia.com/university/25451-indira-gandhi-national-open-university-ignou-new-delhi\" target=\"_blank\" style=\"background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(79, 183, 221); position: relative; font-weight: 900;\">&nbsp;IGNOU,</a><a href=\"https://collegedunia.com/university/25904-tamil-nadu-open-university-tnou-chennai\" target=\"_blank\" style=\"background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(79, 183, 221); position: relative; font-weight: 900;\">TNOU</a>, etc. MCA from distance can be pursued within a range of INR 40,000-1,50,000 and can be extended till 5 years for completion.</p>', '2020-10-28 06:16:08', '2020-10-28 06:18:46', 1, 'PG-MCA-COURSE-DESCRIPTION', '75657a6e0ff28e1a365996eef6c044d8.jpg'),
(18, 'ABCD-Any Body Can Dance', 11, 19, '<p><span style=\"color: rgb(102, 102, 102); font-family: Roboto, sans-serif; font-size: 16px; text-align: justify;\">Dance Club depicts the name of not only one of the most happening clubs of VITCC but also portrays the picture of a family brought together by their common passion for dancing. We dance with *D*iscipline and *A*ttitude to bring something *N*ew and innovative and perform with *C*onfidence to *E*xpress our thoughts. There may be different teams representing different genres, but we always have and always will represent our dance club as one. We dance for laughter, we dance for madness, we dance for hope, we dance for screams, we are the dancers and we create the dreams!</span><br></p>', '2020-10-28 06:28:57', '2020-10-28 07:08:20', 1, 'ABCD-Any-Body-Can-Dance', 'ea44193b4ef9531b4a2cba1b857690c4.jpg'),
(19, 'VITeach', 11, 20, '<p><span style=\"color: rgb(102, 102, 102); font-family: Roboto, sans-serif; font-size: 16px; text-align: justify;\">VITeach is a student-run social club at VIT University, Chennai campus. Students from different branches and batches come together to teach the children of Aadhi Dravida Nada Middle School, a government school in Melakottiyur. The children are taught spoken and written English through engaging, interactive and colorful mediums. The club members also organize ‘Sunday Kids’ sessions for the children of the workers on the campus. At these sessions, the children are encouraged to involve in games incorporating the ‘Play and Learn’ technique. Additionally, over the course of the academic year, events such as Kids Carnival, Wishtree, and plays are conducted for the children.</span><br></p>', '2020-10-28 06:43:21', NULL, 1, 'VITeach', '8b0c4dd2f1548fd4b394fa2da98bde35.jpg'),
(20, 'Code Y Gen - Inspiring a Young Gen of programmers', 11, 21, '<p><span style=\"color: rgb(102, 102, 102); font-family: Roboto, sans-serif; font-size: 16px; text-align: justify;\">Code Y Gen is one of the most prestigious clubs in VITCC with many active members where the students can accelerate their passion for technology and creation. It is a place where creative minds and ideas are harnessed into software products that are useful in real life. We aim to think up novel algorithms and turn them into innovative software in different fields.</span></p><p style=\"margin-bottom: 9px; color: rgb(102, 102, 102); font-family: Roboto, sans-serif; font-size: 16px; text-align: justify !important;\">Lot of Energy – Excitement – Innovation – Learning – Fun Guaranteed!<br style=\"margin-bottom: 0px;\">Let your passion find YOU.</p><p style=\"color: rgb(102, 102, 102); font-family: Roboto, sans-serif; font-size: 16px; text-align: justify !important;\">Our Slogan : Inspiring a Young Gen of programmers<br>Our email id : vitcodeygen@gmail.com<br>Our Facebook Page : Fb.me/vitcodeygen<br style=\"margin-bottom: 0px;\">Our Instagram Page : @vitcodeygen</p><p><br></p>', '2020-10-28 06:53:25', NULL, 1, 'Code-Y-Gen---Inspiring-a-Young-Gen-of-programmers', '49a4d04ff4504970f9443e90888a9df7.jpg'),
(21, 'IET- VIT On Campus –Chennai', 11, 22, '<p><span style=\"color: rgb(102, 102, 102); font-family: Roboto, sans-serif; font-size: 16px; text-align: justify;\">The Institute of Engineering and Technology, IET is one of the world’s largest engineering institutions with over many members from 150 countries. It is also the most multidisciplinary – to reflect the increasingly diverse nature of engineering to a better world by inspiring, informing, and influencing people from all over the world and all those who are touched by, or touch, the work of engineers. The IET –VIT On Campus, Chennai was established in September 2018. The main objective of this professional society is to create a vision for young engineers to work for a better world. The aim is also to inspire, inform, and influence the global engineering community, supporting technology innovation to meet the needs of society. This society is energetically involved in organizing many workshops, technical competitions, talks, seminars, and other activities.</span><br></p>', '2020-10-28 07:01:23', '2020-10-28 12:39:43', 0, 'IET--VIT-On-Campus-–Chennai', 'd52787595bee8b0dfa674c7ffb1beb83.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubcategory`
--

CREATE TABLE `tblsubcategory` (
  `SubCategoryId` int(11) NOT NULL,
  `CategoryId` int(11) DEFAULT NULL,
  `Subcategory` varchar(255) DEFAULT NULL,
  `SubCatDescription` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL,
  `Is_Active` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubcategory`
--

INSERT INTO `tblsubcategory` (`SubCategoryId`, `CategoryId`, `Subcategory`, `SubCatDescription`, `PostingDate`, `UpdationDate`, `Is_Active`) VALUES
(10, 8, 'CSE', 'COMPUTER SCIENCE ENGINEERING', '2020-10-27 17:27:19', NULL, 1),
(11, 8, 'EEE', 'ELECTRICAL AND ELECTRONIC ENGINEERING', '2020-10-27 17:27:57', NULL, 1),
(12, 8, 'MECH', 'MECHANICAL ENGINEERING', '2020-10-27 17:28:28', NULL, 1),
(13, 9, 'MCA ', 'MASTER OF COMPUTER APPLICATIONS', '2020-10-27 17:28:52', NULL, 0),
(14, 9, 'CSE', 'MASTERS IN COMPUTER SCIENCE ENGINEERING', '2020-10-27 17:29:27', NULL, 1),
(15, 10, 'FASHION DESIGN', 'FASHION DESIGNING AND ENGINEERING', '2020-10-27 17:30:09', NULL, 1),
(16, 11, 'HACK CLUB', 'HACK CLUB', '2020-10-27 17:32:16', NULL, 1),
(17, 11, 'DANCE CLUB', 'DANCE CLUB', '2020-10-27 17:33:06', NULL, 1),
(18, 12, 'MCA ', 'MASTER OF COMPUTER APPLICATION', '2020-10-28 06:12:22', NULL, 1),
(19, 11, 'Dance Club Vitcc', 'Dance Club Vitcc', '2020-10-28 06:22:53', NULL, 1),
(20, 11, 'VITeach', 'VITeach', '2020-10-28 06:38:19', NULL, 1),
(21, 11, 'Technical Clubs-Code Y Gen', 'Technical Clubs-Code Y Gen', '2020-10-28 06:52:02', NULL, 1),
(22, 11, 'IET - VIT', 'IET- VIT On-Campus –Chennai', '2020-10-28 06:57:01', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `reg_no` varchar(9) DEFAULT NULL,
  `fname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(300) DEFAULT NULL,
  `posting_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `reg_no`, `fname`, `email`, `password`, `posting_date`) VALUES
(15, '19bai1037', 'sruthi', 'sruthinayagi2001@gmail.com', 'sruthi', '2020-10-24 13:47:28'),
(16, '19bai1107', 'Padmaja', 'sruthinayagi2001@gmail.com', 'padmaja', '2020-10-24 13:53:07'),
(17, '19bai1112', 'sruthika', 'sruthikaa01@gmail.com', 'sruthika', '2020-10-24 14:02:44'),
(18, '19bps1121', 'aishwarya lakshmi', 'aishu.lakshmi147@gmail.com', 'aishu', '2020-10-24 14:09:21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `poll`
--
ALTER TABLE `poll`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcomments`
--
ALTER TABLE `tblcomments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblposts`
--
ALTER TABLE `tblposts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  ADD PRIMARY KEY (`SubCategoryId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `reg_no` (`reg_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `poll`
--
ALTER TABLE `poll`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tblcomments`
--
ALTER TABLE `tblcomments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblposts`
--
ALTER TABLE `tblposts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  MODIFY `SubCategoryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
