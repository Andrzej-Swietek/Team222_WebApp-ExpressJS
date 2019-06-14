-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 03 Kwi 2019, 07:02
-- Wersja serwera: 10.1.31-MariaDB
-- Wersja PHP: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `tigertrons`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `attendence`
--

CREATE TABLE `attendence` (
  `ID` int(11) NOT NULL,
  `name` text COLLATE utf8_polish_ci NOT NULL,
  `surname` text COLLATE utf8_polish_ci NOT NULL,
  `workedHours` int(11) NOT NULL,
  `Points` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `scores`
--

CREATE TABLE `scores` (
  `ID` int(11) NOT NULL,
  `teamName` text COLLATE utf8_polish_ci NOT NULL,
  `teamNumber` text COLLATE utf8_polish_ci NOT NULL,
  `hatches` int(11) NOT NULL,
  `cargo` int(11) NOT NULL,
  `overalPoints` int(11) NOT NULL,
  `rankingPoints` int(11) NOT NULL,
  `autonomus` int(11) NOT NULL,
  `habLevel` int(11) NOT NULL,
  `penalties` text COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `scores`
--

INSERT INTO `scores` (`ID`, `teamName`, `teamNumber`, `hatches`, `cargo`, `overalPoints`, `rankingPoints`, `autonomus`, `habLevel`, `penalties`) VALUES
(1, '4653', '4653', 0, 0, 0, 0, 0, 0, ''),
(2, '193', '193', 0, 0, 0, 0, 0, 0, ''),
(3, '6016', '6016', 0, 0, 0, 0, 0, 0, ''),
(4, '41', '41', 0, 0, 0, 0, 0, 0, ''),
(5, '223', '223', 0, 0, 0, 0, 0, 0, ''),
(6, '1279', '1279', 0, 0, 0, 0, 0, 0, ''),
(7, 'Tech Fire', '225', 0, 0, 0, 0, 0, 0, ''),
(8, 'Tigertrons', '222', 0, 0, 0, 99, 0, 0, ''),
(9, 'Panthera', '714', 0, 0, 0, 0, 0, 0, ''),
(10, 'Gearheads', '102', 0, 0, 0, 0, 0, 0, ''),
(11, '3504', '3504', 0, 0, 0, 0, 0, 0, ''),
(12, '25', '25', 0, 0, 0, 0, 0, 0, ''),
(13, 'MakeShift', '4039', 0, 0, 0, 0, 0, 0, ''),
(14, 'EastRioge Robotics', '3157', 0, 0, 0, 0, 0, 0, ''),
(15, 'Coguar Robotics', '1403', 0, 0, 0, 0, 0, 0, ''),
(16, 'RoboTigers', '5732', 0, 0, 0, 0, 0, 0, ''),
(17, 'RoboBirds', '1672', 0, 0, 0, 0, 0, 0, ''),
(18, 'Aperture', '3142', 0, 0, 0, 0, 0, 0, ''),
(19, 'Penfield NY', '6996', 0, 0, 0, 0, 0, 0, ''),
(20, '303', '303', 0, 0, 0, 0, 0, 0, ''),
(21, 'Nemesis', '2590', 0, 0, 0, 0, 0, 0, ''),
(22, 'Montrlair Robotics', '555', 0, 0, 0, 0, 0, 0, ''),
(23, '1126', '1126', 0, 0, 0, 0, 0, 0, ''),
(24, 'Eagles Apex', '5310', 0, 0, 0, 0, 0, 0, ''),
(31, 'Team Robo Raiders', '75', 0, 0, 0, 0, 0, 0, ''),
(32, 'Bishop Eustace Robotics Team', '4750', 0, 0, 0, 0, 0, 0, ''),
(33, 'Flight Crew', '747', 0, 0, 0, 0, 0, 0, ''),
(34, 'Pioniers', '1676', 0, 0, 0, 0, 0, 0, ''),
(35, 'SaBOTage Team', '1640', 0, 0, 0, 125, 0, 0, ''),
(36, 'R.O.B.B.E', '56', 0, 0, 0, 131, 0, 0, ''),
(37, 'Gearaffes', '5404', 0, 0, 0, 130, 0, 0, ''),
(38, 'Spartechs', '834', 0, 0, 0, 130, 0, 0, ''),
(39, 'Redbird Robotics', '1807', 0, 0, 0, 118, 0, 0, ''),
(40, 'Pingry Robotics', '2577', 0, 0, 0, 109, 0, 0, ''),
(41, 'Demon Robotics', '4342', 0, 0, 0, 105, 0, 0, ''),
(42, 'Fightin\' Robotics Owls', '5401', 0, 0, 0, 99, 0, 0, ''),
(43, 'IronMechs', '5684', 0, 0, 0, 95, 0, 0, ''),
(44, 'Firebirds', '433', 0, 0, 0, 95, 0, 0, ''),
(45, 'Artisan Rockets', '4454', 0, 0, 0, 92, 0, 0, ''),
(46, 'CyberCrusiders', '272', 0, 0, 0, 88, 0, 0, ''),
(47, 'Vulcan Robotics', '1218', 0, 0, 0, 87, 0, 0, ''),
(48, 'The Daleks', '3637', 0, 0, 0, 86, 0, 0, ''),
(49, 'Miracle', '365', 0, 0, 0, 84, 0, 0, ''),
(50, 'Pirets', '5992', 0, 0, 0, 82, 0, 0, ''),
(51, 'Midnight Inventors', '1923', 0, 0, 0, 80, 0, 0, ''),
(52, 'Cybersonics', '103', 0, 0, 0, 80, 0, 0, ''),
(53, 'Peddie Shool Robotics', '5895', 0, 0, 0, 78, 0, 0, ''),
(54, 'Paralell Universe', '1257', 0, 0, 0, 78, 0, 0, ''),
(55, 'Childern of Corn', '6945', 0, 0, 0, 77, 0, 0, ''),
(56, 'Dawgma', '1712', 0, 0, 0, 75, 0, 0, ''),
(57, 'Velocity', '5420', 0, 0, 0, 75, 0, 0, ''),
(58, 'Hatters Robotics', '708', 0, 0, 0, 74, 0, 0, ''),
(59, 'Storm Robotics Teams', '2729', 0, 0, 0, 73, 0, 0, ''),
(60, 'Explorer', '5181', 0, 0, 0, 72, 0, 0, ''),
(61, 'RoboVikings', '2607', 0, 0, 0, 72, 0, 0, ''),
(62, 'Mechanical Mustangs', '3314', 0, 0, 0, 72, 0, 0, ''),
(63, 'Wolfpack Robotics', '5407', 0, 0, 0, 71, 0, 0, ''),
(64, 'Blue Devils', '6226', 0, 0, 0, 71, 0, 0, ''),
(65, 'E=mCD', '3974', 0, 0, 0, 70, 0, 0, '');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `scouting`
--

CREATE TABLE `scouting` (
  `ID` int(11) NOT NULL,
  `teamName` text COLLATE utf8_polish_ci NOT NULL,
  `teamNumber` text COLLATE utf8_polish_ci NOT NULL,
  `year/event` text COLLATE utf8_polish_ci NOT NULL,
  `interlocutorPosition` text COLLATE utf8_polish_ci NOT NULL,
  `objectives` text COLLATE utf8_polish_ci NOT NULL,
  `wheels` text COLLATE utf8_polish_ci NOT NULL,
  `camera` tinyint(1) NOT NULL,
  `autonomus` tinyint(1) NOT NULL,
  `defence` tinyint(1) NOT NULL,
  `hatches` text COLLATE utf8_polish_ci NOT NULL,
  `pickUpHatch` tinyint(1) NOT NULL,
  `pickUpCargo` text COLLATE utf8_polish_ci NOT NULL,
  `whereCargo` text COLLATE utf8_polish_ci NOT NULL,
  `helpGettingTo3Hab` text COLLATE utf8_polish_ci NOT NULL,
  `teleop` text COLLATE utf8_polish_ci NOT NULL,
  `overalExperience` text COLLATE utf8_polish_ci NOT NULL,
  `notes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `name` text COLLATE utf8_polish_ci NOT NULL,
  `surname` text COLLATE utf8_polish_ci NOT NULL,
  `birth` date NOT NULL,
  `grade` int(11) NOT NULL,
  `role` text COLLATE utf8_polish_ci NOT NULL,
  `permition` text COLLATE utf8_polish_ci NOT NULL,
  `emergencyContact` text COLLATE utf8_polish_ci NOT NULL,
  `address` text COLLATE utf8_polish_ci NOT NULL,
  `contact` text COLLATE utf8_polish_ci NOT NULL,
  `login` text COLLATE utf8_polish_ci NOT NULL,
  `password` text COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`ID`, `name`, `surname`, `birth`, `grade`, `role`, `permition`, `emergencyContact`, `address`, `contact`, `login`, `password`) VALUES
(1, 'Andrzej', 'Świętek', '2001-02-11', 12, 'Programmer', 'Supreme-Admin', 'Father: +48 600 072 905\r\nHost family: (570) 445-0962', '40 Dogwood Street\r\nTunkhannock, PA\r\nUSA\r\n\r\nOkrężna 14 G\r\nNiepołomice\r\nPoland', 'Phone: +48 796 940 894\r\nUS Phone: (570) 956-9812\r\nemail: mr.andi321@gmail.com', 'andrzej.swietek', 'admin1'),
(2, 'Barbara', 'Sick', '0000-00-00', 0, 'Mentor', 'Admin', '', '', '', 'barbara.sick', '2bar0bara_1s9'),
(3, 'Robert', 'Hug', '0000-00-00', 0, 'Mentor', 'Mentor', '', '', '', 'robert.hug', '2rob0ert_1h9'),
(4, 'Albert', 'Dymond', '0000-00-00', 0, 'Mentor', 'Mentor', '', '', '', 'albert.dymond', '2al0bert_1d9'),
(5, 'Clifford', 'Mock', '0000-00-00', 0, 'Mentor', 'Mentor', '', '', '', 'clifford.mock', '2cliff0ord_1m9'),
(6, 'Carl', 'Budrecki', '0000-00-00', 0, 'Mentor', 'Mentor', '', '', '', 'card.budrecki', '2ca0rl_1b9'),
(7, 'Scott', 'Howell', '0000-00-00', 0, 'Mentor', 'Admin', '', '', '', 'scott.howell', '2sco0tt_1h9'),
(8, 'Vicky', 'Forda', '0000-00-00', 0, 'Parent', 'Parent', '', '', '', 'vicky.forba', '2vi0cky_1f9'),
(9, 'Mariah', 'Tague', '0000-00-00', 12, 'Co-Driver', 'Student', '', '', '', 'mariah.tague', '2mar0iah_1t9'),
(10, 'Ryan', 'Zalewski', '0000-00-00', 12, 'Driver', 'Student', '', '', '', 'ryan.zalweski', '2ry0an_1z9'),
(11, 'Macey', 'Hayward', '0000-00-00', 10, 'Technicion', 'Student', '', '', '', 'macey.hayward', '2ma0cey_1h9'),
(12, 'Josh', 'Falzone', '0000-00-00', 8, 'Mechanical', 'Student', '', '', '', 'josh.falzone', '2jo0sh_1f9'),
(13, 'David', 'Berry', '0000-00-00', 11, 'Programmer', 'Student', '', '', '', 'david.berry', '2dav0id_1b9'),
(14, 'Kyle', 'Stackhouse', '0000-00-00', 11, 'Mechnical', 'Student', '', '', '', 'kyle.stackhose', '2ky0le_1s9'),
(15, 'Max', 'Lawson', '0000-00-00', 12, 'Mechanical', 'Student', '', '', '', 'max.lawson', '2m0ax_1l9'),
(16, 'Kinsey', 'Petcavage', '0000-00-00', 11, 'Mechanical', 'Student', '', '', '', 'kinsey.petcavage', '2ki0nsey0_1p9'),
(17, 'Isaiah', 'Forba', '2001-09-12', 12, 'Programmer', 'Student', '', '', '', 'isaiah.forba', '2isa0iah_1f9'),
(18, 'Sean', 'Murach', '0000-00-00', 8, 'Mechanical', 'Student', '', '', '', 'sean.murach', '2se0an_1m9'),
(19, 'Collin', 'Bose', '0000-00-00', 11, 'Mechanical', 'Student', '', '', '', 'collin.bose', '2coll0in_1b9'),
(20, 'Brandon', 'Owens', '0000-00-00', 12, 'Safety Captain\r\nHuman Player', 'Student', '', '', '', 'brandon.owens', '2bran0don_1o9'),
(21, 'Padyn', 'Evans', '0000-00-00', 8, 'Graphics Team', 'Student', '', '', '', 'padyn.evans', '2pad0yn_1e9'),
(22, 'Nick', 'Kosty', '0000-00-00', 0, 'Mentor', 'Mentor', '', '', '', 'nick.kosty', '2ni0ck_1k9'),
(23, 'Miracle', 'Cahoon', '0000-00-00', 9, 'Graphics Team', 'Student', '', '', '', 'mriacle.cahoon', '2mir0acle_1c9'),
(24, 'Shawn', 'Zalewski', '0000-00-00', 0, 'Mentor', 'Mentor', '', '', '', 'shawn.zalewski', '2sha0wn_1z9'),
(25, 'Alexis', 'Vandermark', '0000-00-00', 9, 'Mechanical', 'Student', '', '', '', 'alexis.vandermark', '2ale0xis_1v9'),
(26, 'Brittani', 'Sackmann', '0000-00-00', 8, 'Mechanical', 'Student', '', '', '', 'brittani.sackmann', '2britt0ani_1s9');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `attendence`
--
ALTER TABLE `attendence`
  ADD PRIMARY KEY (`ID`);

--
-- Indeksy dla tabeli `scores`
--
ALTER TABLE `scores`
  ADD PRIMARY KEY (`ID`);

--
-- Indeksy dla tabeli `scouting`
--
ALTER TABLE `scouting`
  ADD PRIMARY KEY (`ID`);

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `attendence`
--
ALTER TABLE `attendence`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `scores`
--
ALTER TABLE `scores`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT dla tabeli `scouting`
--
ALTER TABLE `scouting`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

{
  "users": [
    {
      "ID": "1",
      "name": "Andrzej",
      "surname": "Świętek",
      "birth": "2001-02-11",
      "grade": "12",
      "role": "Programmer",
      "permition": "Supreme-Admin",
      "emergencyContact": "Father: +48 600 072 905\\r\\nHost family: (570) 445-0962",
      "address": "40 Dogwood Street\\r\\nTunkhannock, PA\\r\\nUSA\\r\\n\\r\\nOkrężna 14 G\\r\\nNiepołomice\\r\\nPoland",
      "contact": "Phone: +48 796 940 894\\r\\nUS Phone: (570) 956-9812\\r\\nemail: mr.andi321@gmail.com",
      "login": "andrzej.swietek",
      "password": "admin1"
    },
    {
      "ID": "2",
      "name": "Barbara",
      "surname": "Sick",
      "birth": "0000-00-00",
      "grade": "0",
      "role": "Mentor",
      "permition": "Admin",
      "emergencyContact": "",
      "address": "",
      "contact": "",
      "login": "barbara.sick",
      "password": "2bar0bara_1s9"
    },
    {
      "ID": "3",
      "name": "Robert",
      "surname": "Hug",
      "birth": "0000-00-00",
      "grade": "0",
      "role": "Mentor",
      "permition": "Mentor",
      "emergencyContact": "",
      "address": "",
      "contact": "",
      "login": "robert.hug",
      "password": "2rob0ert_1h9"
    },
    {
      "ID": "4",
      "name": "Albert",
      "surname": "Dymond",
      "birth": "0000-00-00",
      "grade": "0",
      "role": "Mentor",
      "permition": "Mentor",
      "emergencyContact": "",
      "address": "",
      "contact": "",
      "login": "albert.dymond",
      "password": "2al0bert_1d9"
    },
    {
      "ID": "5",
      "name": "Clifford",
      "surname": "Mock",
      "birth": "0000-00-00",
      "grade": "0",
      "role": "Mentor",
      "permition": "Mentor",
      "emergencyContact": "",
      "address": "",
      "contact": "",
      "login": "clifford.mock",
      "password": "2cliff0ord_1m9"
    },
    {
      "ID": "6",
      "name": "Carl",
      "surname": "Budrecki",
      "birth": "0000-00-00",
      "grade": "0",
      "role": "Mentor",
      "permition": "Mentor",
      "emergencyContact": "",
      "address": "",
      "contact": "",
      "login": "card.budrecki",
      "password": "2ca0rl_1b9"
    },
    {
      "ID": "7",
      "name": "Scott",
      "surname": "Howell",
      "birth": "0000-00-00",
      "grade": "0",
      "role": "Mentor",
      "permition": "Admin",
      "emergencyContact": "",
      "address": "",
      "contact": "",
      "login": "scott.howell",
      "password": "2sco0tt_1h9"
    },
    {
      "ID": "8",
      "name": "Vicky",
      "surname": "Forda",
      "birth": "0000-00-00",
      "grade": "0",
      "role": "Parent",
      "permition": "Parent",
      "emergencyContact": "",
      "address": "",
      "contact": "",
      "login": "vicky.forba",
      "password": "2vi0cky_1f9"
    },
    {
      "ID": "9",
      "name": "Mariah",
      "surname": "Tague",
      "birth": "0000-00-00",
      "grade": "12",
      "role": "Co-Driver",
      "permition": "Student",
      "emergencyContact": "",
      "address": "",
      "contact": "",
      "login": "mariah.tague",
      "password": "2mar0iah_1t9"
    },
    {
      "ID": "10",
      "name": "Ryan",
      "surname": "Zalewski",
      "birth": "0000-00-00",
      "grade": "12",
      "role": "Driver",
      "permition": "Student",
      "emergencyContact": "",
      "address": "",
      "contact": "",
      "login": "ryan.zalweski",
      "password": "2ry0an_1z9"
    },
    {
      "ID": "11",
      "name": "Macey",
      "surname": "Hayward",
      "birth": "0000-00-00",
      "grade": "10",
      "role": "Technicion",
      "permition": "Student",
      "emergencyContact": "",
      "address": "",
      "contact": "",
      "login": "macey.hayward",
      "password": "2ma0cey_1h9"
    },
    {
      "ID": "12",
      "name": "Josh",
      "surname": "Falzone",
      "birth": "0000-00-00",
      "grade": "8",
      "role": "Mechanical",
      "permition": "Student",
      "emergencyContact": "",
      "address": "",
      "contact": "",
      "login": "josh.falzone",
      "password": "2jo0sh_1f9"
    },
    {
      "ID": "13",
      "name": "David",
      "surname": "Berry",
      "birth": "0000-00-00",
      "grade": "11",
      "role": "Programmer",
      "permition": "Student",
      "emergencyContact": "",
      "address": "",
      "contact": "",
      "login": "david.berry",
      "password": "2dav0id_1b9"
    },
    {
      "ID": "14",
      "name": "Kyle",
      "surname": "Stackhouse",
      "birth": "0000-00-00",
      "grade": "11",
      "role": "Mechnical",
      "permition": "Student",
      "emergencyContact": "",
      "address": "",
      "contact": "",
      "login": "kyle.stackhose",
      "password": "2ky0le_1s9"
    },
    {
      "ID": "15",
      "name": "Max",
      "surname": "Lawson",
      "birth": "0000-00-00",
      "grade": "12",
      "role": "Mechanical",
      "permition": "Student",
      "emergencyContact": "",
      "address": "",
      "contact": "",
      "login": "max.lawson",
      "password": "2m0ax_1l9"
    },
    {
      "ID": "16",
      "name": "Kinsey",
      "surname": "Petcavage",
      "birth": "0000-00-00",
      "grade": "11",
      "role": "Mechanical",
      "permition": "Student",
      "emergencyContact": "",
      "address": "",
      "contact": "",
      "login": "kinsey.petcavage",
      "password": "2ki0nsey0_1p9"
    },
    {
      "ID": "17",
      "name": "Isaiah",
      "surname": "Forba",
      "birth": "2001-09-12",
      "grade": "12",
      "role": "Programmer",
      "permition": "Student",
      "emergencyContact": "",
      "address": "",
      "contact": "",
      "login": "isaiah.forba",
      "password": "2isa0iah_1f9"
    },
    {
      "ID": "18",
      "name": "Sean",
      "surname": "Murach",
      "birth": "0000-00-00",
      "grade": "8",
      "role": "Mechanical",
      "permition": "Student",
      "emergencyContact": "",
      "address": "",
      "contact": "",
      "login": "sean.murach",
      "password": "2se0an_1m9"
    },
    {
      "ID": "19",
      "name": "Collin",
      "surname": "Bose",
      "birth": "0000-00-00",
      "grade": "11",
      "role": "Mechanical",
      "permition": "Student",
      "emergencyContact": "",
      "address": "",
      "contact": "",
      "login": "collin.bose",
      "password": "2coll0in_1b9"
    },
    {
      "ID": "20",
      "name": "Brandon",
      "surname": "Owens",
      "birth": "0000-00-00",
      "grade": "12",
      "role": "Safety Captain\\r\\nHuman Player",
      "permition": "Student",
      "emergencyContact": "",
      "address": "",
      "contact": "",
      "login": "brandon.owens",
      "password": "2bran0don_1o9"
    },
    {
      "ID": "21",
      "name": "Padyn",
      "surname": "Evans",
      "birth": "0000-00-00",
      "grade": "8",
      "role": "Graphics Team",
      "permition": "Student",
      "emergencyContact": "",
      "address": "",
      "contact": "",
      "login": "padyn.evans",
      "password": "2pad0yn_1e9"
    },
    {
      "ID": "22",
      "name": "Nick",
      "surname": "Kosty",
      "birth": "0000-00-00",
      "grade": "0",
      "role": "Mentor",
      "permition": "Mentor",
      "emergencyContact": "",
      "address": "",
      "contact": "",
      "login": "nick.kosty",
      "password": "2ni0ck_1k9"
    },
    {
      "ID": "23",
      "name": "Miracle",
      "surname": "Cahoon",
      "birth": "0000-00-00",
      "grade": "9",
      "role": "Graphics Team",
      "permition": "Student",
      "emergencyContact": "",
      "address": "",
      "contact": "",
      "login": "mriacle.cahoon",
      "password": "2mir0acle_1c9"
    },
    {
      "ID": "24",
      "name": "Shawn",
      "surname": "Zalewski",
      "birth": "0000-00-00",
      "grade": "0",
      "role": "Mentor",
      "permition": "Mentor",
      "emergencyContact": "",
      "address": "",
      "contact": "",
      "login": "shawn.zalewski",
      "password": "2sha0wn_1z9"
    },
    {
      "ID": "25",
      "name": "Alexis",
      "surname": "Vandermark",
      "birth": "0000-00-00",
      "grade": "9",
      "role": "Mechanical",
      "permition": "Student",
      "emergencyContact": "",
      "address": "",
      "contact": "",
      "login": "alexis.vandermark",
      "password": "2ale0xis_1v9"
    },
    {
      "ID": "26",
      "name": "Brittani",
      "surname": "Sackmann",
      "birth": "0000-00-00",
      "grade": "8",
      "role": "Mechanical",
      "permition": "Student",
      "emergencyContact": "",
      "address": "",
      "contact": "",
      "login": "brittani.sackmann",
      "password": "2britt0ani_1s9"
    }
  ]
}