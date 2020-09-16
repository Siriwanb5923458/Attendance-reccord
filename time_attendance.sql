-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 15, 2020 at 02:28 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `time_attendance`
--

-- --------------------------------------------------------

--
-- Table structure for table `reccord_in`
--

CREATE TABLE `reccord_in` (
  `rec_id` int(11) NOT NULL,
  `id` varchar(11) NOT NULL,
  `name` varchar(70) NOT NULL,
  `department` varchar(70) NOT NULL,
  `time` varchar(20) NOT NULL,
  `date` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `reccord_out`
--

CREATE TABLE `reccord_out` (
  `rec_id` int(11) NOT NULL,
  `id` varchar(11) NOT NULL,
  `name` varchar(70) NOT NULL,
  `department` varchar(70) NOT NULL,
  `time` varchar(20) NOT NULL,
  `date` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `trainees`
--

CREATE TABLE `trainees` (
  `std_id` varchar(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `department` varchar(70) NOT NULL,
  `rfid` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `trainees`
--

INSERT INTO `trainees` (`std_id`, `name`, `department`, `rfid`) VALUES
('RSHCB20_254', 'Nutthanon Naraprasertkul', 'AME', '0001456214'),
('RSHCB20_268', 'Sida Sareesing', 'AME', '0001464912'),
('RSHCB20_289', 'Suphamas Pachanee', 'AME', '0001464805'),
('RSHCB20_340', 'Worathum Henchobdee', 'AME', '0001464565'),
('RSHCB20_346', 'Siriwan Tesintachot', 'AME', '0001464414'),
('RSHCB20_347', 'Pantarak Permpiboon', 'AME', '0001464412'),
('RSHCB20_350', 'Artitiya Sriwicha', 'QRTE Factory Support', '0001464415'),
('RSHCB20_351', 'Chatuporn Matroeng', 'AME', '0001464411'),
('RSHCB20_352', 'Orawan Luevimon', 'THO Head MSL', '0001464567'),
('RSHCB20_353', 'Atittan Ruangrit', 'AME', '0001464410'),
('RSHCB20_354', 'Nattawut Nakkhunthod', 'AME', '0001464409'),
('RSHCB20_364', 'Pornchai Pattamadilok', 'AME', '0001464534'),
('RSHCB20_367', 'Kanitnun Aunsri', 'AME', '0001464401'),
('RSHCB20_369', 'Buddha Shahi', 'AME', '0001464514'),
('RSHID20_257', 'Kathawut Kunsuwan', 'Malaysia/BPI HVM Eng', '0001464575'),
('RSHID20_258', 'Daychawat Pongpipat', 'HDD Operations (G&A)', '0001456255'),
('RSHID20_259', 'Papawin Thongkam', 'HDD Operations (G&A)', '0001456253'),
('RSHID20_260', 'Supakorn Phiwrat', 'HDD Operations (G&A)', '0001457422'),
('RSHID20_261', 'Tanatat Chatkasamchi', 'Malaysia/BPI HVM Eng', '0001457426'),
('RSHID20_262', 'Passavit Meesameram', 'Malaysia/BPI HVM Eng', '0001456254'),
('RSHID20_263', 'Waranya Raksanit', 'HVM Engineering HSA', '0001456286'),
('RSHID20_264', 'Thinnakorn Buakham', 'HVM Engineering HSA', '0001456287'),
('RSHID20_265', 'Natthaphon Rungadison', 'HVM Engineering HSA', '0001464574'),
('RSHID20_266', 'Jidayud Chalotorn', 'HVM Engineering HSA', '0001464576'),
('RSHID20_276', 'Patchareeya Prasasommool', 'AME', '0001464580'),
('RSHID20_277', 'Rujikorn Boonson', 'AME', '0001464579'),
('RSHID20_278', 'Nisan Nutaphong', 'AME', '0001464597'),
('RSHID20_279', 'Apiwat Khotchompoo', 'AME', '0001464582'),
('RSHID20_281', 'Nopphadon Hongsakam', 'REO - Security', '0001464573'),
('RSHID20_282', 'Kantarakorn Peumsri', 'HVM Engineering HSA', '0001464457'),
('RSHID20_283', 'Haruethai Kaewpeng', 'HVM Engineering HSA', '0001464458'),
('RSHID20_284', 'Pitchakorn Nupattaya', 'Malaysia/BPI HVM Eng', '0001464456'),
('RSHID20_285', 'Saharat On-ta', 'Malaysia/BPI HVM Eng', '#N/A'),
('RSHID20_291', 'Nitikorn Pengboon', 'REO - Maint & Operations', '0001464581'),
('RSHID20_292', 'Thitiwut  Bunjong', 'REO - Maint & Operations', '0001464578'),
('RSHID20_296', 'Waraphon Saengswang', 'AME', '0001464915'),
('RSHID20_297', 'Sutasinee Sariyang', 'AME', '0001464916'),
('RSHID20_298', 'Chatnida Lekdecha', 'AME', '0001464917'),
('RSHID20_321', 'Hiran Phongam', 'Test Equipment Engineering (BPI)', '0001464484'),
('RSHID20_322', 'Thana Phaumphang', 'Test Equipment Engineering (BPI)', '0001464483'),
('RSHID20_330', 'Puchong Janyadee', 'AME', '0001464481'),
('RSHID20_355', 'Chitsanuphong Dokngam', 'HVM Engineering HSA', '0001457428'),
('RSHID20_356', 'Phanthap Noggata', 'HVM Engineering HSA', '0001464569'),
('RSHID20_357', 'Chinnawat Srikumpa', 'HVM Engineering HSA', '0001464479'),
('RSHID20_358', 'Saengsuriya Suman', 'Validation', '0001464478'),
('RSHID20_359', 'Kongthap Phonphaengchan', 'Validation', '0001464477'),
('RSHOB19_121', 'Lwazi Sphamandla Mthembu', 'AME', '0001456103'),
('RSHOB20_288', 'Paolong Lim', 'AME', '0001464804'),
('RSHOB20_341', 'Dong Gyu Lee', 'QRTE Factory Support', '0001456372'),
('RSHOB20_370', 'Saw Praise Taw', 'AME', '0001464513'),
('RSMCB20_323', 'Tanapon Inprasit', 'SF Mass Production Manufacturing Engineering', '0001464420'),
('RSMCB20_324', 'Sitta Thongsawate', 'SF Mass Production Manufacturing Engineering', '0001464421'),
('RSMCB20_325', 'Chinnatun Kaoudom', 'Engineering System Management', '0001464940'),
('RSMCB20_332', 'Suttinun Dechma', 'WDT Head Cleaning Manufacturing Engineering', '0001464806'),
('RSMCB20_333', 'Nonthanut Petchpichai', 'FA DM IDM SPI', '0001464803'),
('RSMCB20_337', 'Kitsada Puttivanit', 'BPI - Machining Process Dev', '0001464535'),
('RSMCB20_338', 'Nessaraphong Kwansanei', 'BPI - Machining Process Dev', '0001464566'),
('RSMCB20_345', 'Jiranee Suasompong', 'BPI - Machining Process Dev', '0001464417'),
('RSMCB20_349', 'Puttatida Tipsing', 'SF Mass Production Manufacturing Engineering', '0001464416'),
('RSMCM18_034', 'Kittimeth Wattananaphakasam', 'BPI - Automation Dev', '0006287835'),
('RSMCM19_132', 'Anupak Poomon', 'BPI - Automation Dev', '0001462267'),
('RSMCP19_082', 'Narttakarn Khunjun', 'BPI - Automation Dev', '6110130028'),
('RSMID20_252', 'Supansa Netrot', 'Engineering System Management', '0001464570'),
('RSMID20_253', 'Sirilak Plerukkachat', 'Engineering System Management', '0001464571'),
('RSMID20_293', 'Thanaporn Kengsarikit', 'REO - Security', '0001456288'),
('RSMID20_294', 'Prawrung Lomee', 'HDD Operations (G&A)', '0001464572'),
('RSMID20_295', 'Chatsakul Nuttakian', 'HDD Operations (G&A)', '0001464577'),
('RSMID20_316', 'Sorawit Sonprakhon', 'Test Maintenance Manufacturing Engineering', '0001456285'),
('RSMID20_317', 'Atsdawut Phatthana', 'HDD Operations (G&A)', '0001464489'),
('RSMID20_318', 'Cheeraphat Sanidpot', 'HDD Operations (G&A)', '0001464488'),
('RSMID20_319', 'Sirachat Kamma', 'HDD Operations (G&A)', '0001464486'),
('RSMID20_320', 'Sainatee Sriuthai', 'HDD Operations (G&A)', '0001464485'),
('RSMID20_326', 'Peerapong Lekmekhin', 'HGA Mass Production Manufacturing Engineering', '0001464459'),
('RSMID20_331', 'Peerapol Suksamran', 'Test Maintenance Manufacturing Engineering', '0001464482'),
('RSMID20_348', 'Sirawit Thammasoot', 'HGA Mass Production Manufacturing Engineering', '0001464480');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `reccord_in`
--
ALTER TABLE `reccord_in`
  ADD PRIMARY KEY (`rec_id`);

--
-- Indexes for table `reccord_out`
--
ALTER TABLE `reccord_out`
  ADD PRIMARY KEY (`rec_id`);

--
-- Indexes for table `trainees`
--
ALTER TABLE `trainees`
  ADD PRIMARY KEY (`std_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `reccord_in`
--
ALTER TABLE `reccord_in`
  MODIFY `rec_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `reccord_out`
--
ALTER TABLE `reccord_out`
  MODIFY `rec_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
