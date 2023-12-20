

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";




CREATE TABLE `course` (
  `CourseID` int(11) NOT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `TitleInShort` varchar(50) DEFAULT NULL,
  `Description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



INSERT INTO `course` (`CourseID`, `Title`, `TitleInShort`, `Description`) VALUES
(1001, 'HNDA', 'HNDA', 'Higher National Diploma in Accounts'),
(1002, 'HNDIT', ' Higher National Diploma in Information Technology', 'The Higher National Diploma in Information Technology (HNDIT) programe at the Sri Lanka Institute of Advanced Technological Education (SLIATE) was developed and commenced in the year 2000 to produce the middle level IT professionals required for the new millennium.'),
(1003, 'HNDE', 'Higher National Diploma in English', '\"Welcome to Hndenglish. The Online Resource Center for Higher National Diploma in English, the diploma offered by SLIATE. In this website, You can get Syllabus, Notes & Past Papers of all the semesters in HND English. & These learning materials also can be useful other English diploma students. So Have a visit now ! Thank you.\"');


CREATE TABLE `lecturer` (
  `LecID` int(11) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Designation` varchar(50) DEFAULT NULL,
  `CourseID` int(11) DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `Password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



INSERT INTO `lecturer` (`LecID`, `Name`, `Email`, `Designation`, `CourseID`, `Gender`, `Password`) VALUES
(10, 'Kathija', 'Katheejafaiq@gmail.com', 'senior lecturor', 1001, 'feMale', '$2y$10$As9mq5xAR9sLtd6tc2eEN.Sy2Y0gUQdavabMgQcLyZjXHN6GMlQKS');



ALTER TABLE `course`
  ADD PRIMARY KEY (`CourseID`);



ALTER TABLE `lecturer`
  ADD PRIMARY KEY (`LecID`),
  ADD UNIQUE KEY `Email` (`Email`),
  ADD KEY `CourseID` (`CourseID`);




ALTER TABLE `lecturer`
  MODIFY `LecID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;


ALTER TABLE `lecturer`
  ADD CONSTRAINT `lecturer_ibfk_1` FOREIGN KEY (`CourseID`) REFERENCES `course` (`CourseID`);
COMMIT;

