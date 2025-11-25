SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO"; 
SET AUTOCOMMIT = 0; 
START TRANSACTION; 
SET time_zone = "+00:00"; 
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */; 
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */; 
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */; 
/*!40101 SET NAMES utf8mb4 */; 

-- --------------------------------------------------------
-- Table structure for table admin
-- --------------------------------------------------------
DROP TABLE IF EXISTS admin; 
CREATE TABLE IF NOT EXISTS admin (
    aemail varchar(255) NOT NULL,
    apassword varchar(255) DEFAULT NULL,
    PRIMARY KEY (aemail)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO admin (aemail, apassword) VALUES 
('admin@nyx.com', '123');

-- --------------------------------------------------------
-- Table structure for table doctor
-- --------------------------------------------------------
DROP TABLE IF EXISTS doctor;
CREATE TABLE IF NOT EXISTS doctor (
    docid int(11) NOT NULL AUTO_INCREMENT,
    docemail varchar(255) DEFAULT NULL,
    docname varchar(255) DEFAULT NULL,
    docpassword varchar(255) DEFAULT NULL,
    docnic varchar(15) DEFAULT NULL,
    doctel varchar(15) DEFAULT NULL,
    specialties int(2) DEFAULT NULL,
    PRIMARY KEY (docid),
    KEY specialties (specialties)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO doctor (docid, docemail, docname, docpassword, docnic, doctel, specialties) VALUES
(1, 'doctor@nyx.com', 'Test Doctor', '123', '001345048139', '0987654321', 1),
(2, 'dr.john@nyx.com', 'Dr. John Peterson', '123', '001456789012', '0901112233', 5),
(3, 'dr.sophia@nyx.com', 'Dr. Sophia Nguyen', '123', '001567890123', '0902223344', 13),
(4, 'dr.michael@nyx.com', 'Dr. Michael Tran', '123', '001678901234', '0903334455', 32),
(5, 'dr.emma@nyx.com', 'Dr. Emma Le', '123', '001789012345', '0904445566', 16),
(6, 'dr.david@nyx.com', 'Dr. David Pham', '123', '001890123456', '0905556677', 29),
(7, 'dr.linda@nyx.com', 'Dr. Linda Vo', '123', '001901234567', '0906667788', 45),
(8, 'dr.james@nyx.com', 'Dr. James Ho', '123', '001012345678', '0907778899', 38),
(9, 'dr.oliver@nyx.com', 'Dr. Oliver Bui', '123', '001123456789', '0908889900', 19),
(10, 'dr.chloe@nyx.com', 'Dr. Chloe Dang', '123', '001234567890', '0909990011', 34),
(11, 'dr.noah@nyx.com', 'Dr. Noah Truong', '123', '001345678901', '0910001122', 27);

-- --------------------------------------------------------
-- Table structure for table patient
-- --------------------------------------------------------
DROP TABLE IF EXISTS patient; 
CREATE TABLE IF NOT EXISTS patient (
    pid int(11) NOT NULL AUTO_INCREMENT,
    pemail varchar(255) DEFAULT NULL,
    pname varchar(255) DEFAULT NULL,
    ppassword varchar(255) DEFAULT NULL,
    paddress varchar(255) DEFAULT NULL,
    pnic varchar(15) DEFAULT NULL,
    pdob date DEFAULT NULL,
    ptel varchar(15) DEFAULT NULL,
    PRIMARY KEY (pid)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO patient (pid, pemail, pname, ppassword, paddress, pnic, pdob, ptel) VALUES
(1, 'patient@nyx.com', 'Test Patient', '123', 'Ho Chi Minh', '001405769135', '2000-01-01', '0123456789'),
(2, 'mailinh161205@gmail.com', 'Mai Linh', '123', 'Ha Noi', '001305076145', '2005-12-16', '0372569276');

-- --------------------------------------------------------
-- Table structure for table schedule
-- --------------------------------------------------------
DROP TABLE IF EXISTS schedule; 
CREATE TABLE IF NOT EXISTS schedule (
    scheduleid int(11) NOT NULL AUTO_INCREMENT,
    docid varchar(255) DEFAULT NULL,
    title varchar(255) DEFAULT NULL,
    scheduledate date DEFAULT NULL,
    scheduletime time DEFAULT NULL,
    nop int(4) DEFAULT NULL,
    PRIMARY KEY (scheduleid),
    KEY docid (docid)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

INSERT INTO schedule (docid, title, scheduledate, scheduletime, nop) VALUES
('2', 'Cardiology Checkup', '2025-12-01', '09:00:00', 10),
('2', 'Heart Consultation', '2025-12-05', '14:00:00', 8),
('3', 'Skin Examination', '2025-12-03', '10:30:00', 12),
('3', 'Derm Consult', '2025-12-07', '15:00:00', 10),
('4', 'OB-GYN Appointment', '2025-12-02', '08:00:00', 15),
('4', 'Pregnancy Follow-up', '2025-12-10', '13:00:00', 10),
('5', 'Gastro Checkup', '2025-12-04', '09:45:00', 10),
('5', 'Stomach Consultation', '2025-12-07', '11:00:00', 10),
('6', 'Neurology Exam', '2025-12-06', '10:00:00', 12),
('6', 'Brain Scan Consult', '2025-12-09', '16:00:00', 10),
('7', 'Psychology Session', '2025-12-03', '14:30:00', 6),
('7', 'Mental Health Follow-up', '2025-12-08', '10:00:00', 6),
('8', 'Pediatrics Consultation', '2025-12-04', '09:00:00', 10),
('9', 'Surgery Checkup', '2025-12-05', '11:00:00', 8),
('10', 'Eye Examination', '2025-12-06', '15:00:00', 12),
('11', 'Kidney Function Test', '2025-12-07', '10:30:00', 10);

-- --------------------------------------------------------
-- Table structure for table specialties
-- --------------------------------------------------------
DROP TABLE IF EXISTS specialties; 
CREATE TABLE IF NOT EXISTS specialties (
    id int(2) NOT NULL,
    sname varchar(50) DEFAULT NULL,
    PRIMARY KEY (id)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO specialties (id, sname) VALUES
(1, 'Accident and emergency medicine'), 
(2, 'Allergology'), 
(3, 'Anaesthetics'), 
(4, 'Biological hematology'), 
(5, 'Cardiology'), 
(6, 'Child psychiatry'), 
(7, 'Clinical biology'), 
(8, 'Clinical chemistry'), 
(9, 'Clinical neurophysiology'), 
(10, 'Clinical radiology'), 
(11, 'Dental, oral and maxillo-facial surgery'), 
(12, 'Dermato-venerology'), 
(13, 'Dermatology'), 
(14, 'Endocrinology'), 
(15, 'Gastro-enterologic surgery'), 
(16, 'Gastroenterology'), 
(17, 'General hematology'), 
(18, 'General Practice'), 
(19, 'General surgery'), 
(20, 'Geriatrics'), 
(21, 'Immunology'), 
(22, 'Infectious diseases'), 
(23, 'Internal medicine'), 
(24, 'Laboratory medicine'), 
(25, 'Maxillo-facial surgery'), 
(26, 'Microbiology'), 
(27, 'Nephrology'), 
(28, 'Neuro-psychiatry'), 
(29, 'Neurology'), 
(30, 'Neurosurgery'), 
(31, 'Nuclear medicine'), 
(32, 'Obstetrics and gynecology'), 
(33, 'Occupational medicine'), 
(34, 'Ophthalmology'), 
(35, 'Orthopaedics'), 
(36, 'Otorhinolaryngology'), 
(37, 'Paediatric surgery'), 
(38, 'Paediatrics'), 
(39, 'Pathology'), 
(40, 'Pharmacology'), 
(41, 'Physical medicine and rehabilitation'), 
(42, 'Plastic surgery'), 
(43, 'Podiatric Medicine'), 
(44, 'Podiatric Surgery'), 
(45, 'Psychiatry'), 
(46, 'Public health and Preventive Medicine'), 
(47, 'Radiology'), 
(48, 'Radiotherapy'), 
(49, 'Respiratory medicine'), 
(50, 'Rheumatology'), 
(51, 'Stomatology'), 
(52, 'Thoracic surgery'), 
(53, 'Tropical medicine'), 
(54, 'Urology'), 
(55, 'Vascular surgery'), 
(56, 'Venereology');

-- --------------------------------------------------------
-- Table structure for table webuser
-- --------------------------------------------------------
DROP TABLE IF EXISTS webuser; 
CREATE TABLE IF NOT EXISTS webuser (
    email varchar(255) NOT NULL,
    usertype char(1) DEFAULT NULL,
    PRIMARY KEY (email)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO webuser (email, usertype) VALUES
('admin@nyx.com', 'a'),
('doctor@nyx.com', 'd'),
('patient@nyx.com', 'p'),
('mailinh161205@gmail.com', 'p'),
('dr.john@nyx.com', 'd'),
('dr.sophia@nyx.com', 'd'),
('dr.michael@nyx.com', 'd'),
('dr.emma@nyx.com', 'd'),
('dr.david@nyx.com', 'd'),
('dr.linda@nyx.com', 'd'),
('dr.james@nyx.com', 'd'),
('dr.oliver@nyx.com', 'd'),
('dr.chloe@nyx.com', 'd'),
('dr.noah@nyx.com', 'd');

-- --------------------------------------------------------
-- Table structure for table appointment
-- --------------------------------------------------------
DROP TABLE IF EXISTS appointment; 
CREATE TABLE IF NOT EXISTS appointment (
    appoid int(11) NOT NULL AUTO_INCREMENT,
    pid int(10) DEFAULT NULL,
    apponum int(3) DEFAULT NULL,
    scheduleid int(10) DEFAULT NULL,
    appodate date DEFAULT NULL,
    PRIMARY KEY (appoid),
    KEY pid (pid),
    KEY scheduleid (scheduleid)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

-- Thêm dữ liệu appointment
INSERT INTO appointment (pid, apponum, scheduleid, appodate) VALUES
-- Patient 1
(1, 1, 1, '2025-12-01'),
(1, 2, 3, '2025-12-03'),
(1, 3, 5, '2025-12-04'),
(1, 4, 7, '2025-12-03'),
(1, 5, 9, '2025-12-05'),
(1, 6, 11, '2025-12-07'),

-- Patient 2
(2, 1, 2, '2025-12-05'),
(2, 2, 4, '2025-12-07'),
(2, 3, 6, '2025-12-06'),
(2, 4, 8, '2025-12-04'),
(2, 5, 10, '2025-12-06'),
(2, 6, 12, '2025-12-08'),
(2, 7, 13, '2025-12-04'),
(2, 8, 14, '2025-12-05'),
(2, 9, 15, '2025-12-07');

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */; 
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */; 
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
