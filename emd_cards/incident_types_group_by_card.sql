-- phpMyAdmin SQL Dump
-- version 2.10.3deb1ubuntu0.2
-- http://www.phpmyadmin.net
-- 
-- Host: localhost
-- Generation Time: Mar 20, 2008 at 02:02 AM
-- Server version: 5.0.45
-- PHP Version: 5.2.3-1ubuntu6.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- Database: `tickets`
-- 

-- --------------------------------------------------------

-- 
-- Table structure for table `in_types`
-- 

DROP TABLE IF EXISTS `in_types`;
CREATE TABLE IF NOT EXISTS `in_types` (
  `id` bigint(4) NOT NULL auto_increment,
  `type` varchar(20) NOT NULL,
  `description` varchar(60) default NULL,
  `group` varchar(20) default NULL,
  `sort` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `ID` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='Incident types' AUTO_INCREMENT=318 ;

-- 
-- Dumping data for table `in_types`
-- 

INSERT INTO `in_types` (`id`, `type`, `description`, `group`, `sort`) VALUES 
(1, 'C01-R-01', 'CPR in Progress', 'Cardiac/Resp Arrest', 100),
(2, 'C01-R-02', 'Respiratory Arrest', 'Cardiac/Resp Arrest', 101),
(3, 'C01-R-03', 'Possible DOA', 'Cardiac/Resp Arrest', 102),
(4, 'C01-Y-01', 'Confirmed Hospice Death', 'Cardiac/Resp Arrest', 103),
(5, 'C02-R-01', 'Now Unconscious', 'Choking', 104),
(6, 'C02-R-02', 'Not Breathing Normally', 'Choking', 105),
(7, 'C02-R-03', 'Unable to Talk/Cry', 'Choking', 106),
(8, 'C02-R-04', 'Turning Blue/Changing Color', 'Choking', 107),
(9, 'C02-Y-01', 'Able to Speak/Cry', 'Choking', 108),
(10, 'C02-Y-02', 'No Breathing Difficulties', 'Choking', 109),
(11, 'C02-Y-03', 'Assist Patient, Airway Clear', 'Choking', 110),
(12, 'C03-R-01', 'Now Unconscious', 'Drowning', 111),
(13, 'C03-R-02', 'Not Breathing Normally', 'Drowning', 112),
(14, 'C03-R-03', 'Scuba Diving Accident', 'Drowning', 113),
(15, 'C03-R-04', 'Diving Accident (Possible C-spine Injury)', 'Drowning', 114),
(16, 'C03-R-04', 'Person Still Submerged', 'Drowning', 115),
(17, 'C03-Y-01', 'Not Submerged with No Critical Symptoms', 'Drowning', 116),
(18, 'C03-Y-02', 'Person Coughing', 'Drowning', 117),
(19, 'C03-Y-03', 'Other Injury with No Critical Symptoms', 'Drowning', 118),
(20, 'C03-Y-04', 'Minor Injuries', 'Drowning', 119),
(21, 'C04-R-01', 'Unconscious', 'Electrocution', 120),
(22, 'C04-R-02', 'Not Breathing Normally', 'Electrocution', 121),
(23, 'C04-R-03', 'Decreased Level of Consciousness', 'Electrocution', 122),
(24, 'C04-R-04', 'Burns to Airway, Mouth or Nose', 'Electrocution', 123),
(25, 'C04-R-05', 'Burns > 20% of Body Surface Area', 'Electrocution', 124),
(26, 'C04-R-06', 'Burns from Contact with 220-volt Source or >', 'Electrocution', 125),
(27, 'C04-R-07', 'Reported DOA', 'Electrocution', 126),
(28, 'C04-R-08', 'Multiple Patients', 'Electrocution', 127),
(29, 'C04-Y-01', 'Household Shock with No Critical Symptoms', 'Electrocution', 128),
(30, 'C05-R-01', 'Unconscious', 'Pregnancy', 129),
(31, 'C05-R-02', 'Not Breathing Normally', 'Pregnancy', 130),
(32, 'C05-R-03', 'Decreased Level of Consciousness', 'Pregnancy', 131),
(33, 'C05-R-04', 'Imminent Delivery', 'Pregnancy', 132),
(34, 'C05-R-05', 'Syncopal Episode', 'Pregnancy', 133),
(35, 'C05-R-06', 'History of Complicated Delivery', 'Pregnancy', 134),
(36, 'C05-R-07', 'Vaginal Bleeding and >20 Weeks Pregnant', 'Pregnancy', 135),
(37, 'C05-R-08', 'Premature Labor >4 Weeks Premature', 'Pregnancy', 136),
(38, 'C05-R-09', 'Abdominal Injury >20 Weeks Pregnant', 'Pregnancy', 137),
(39, 'C05-R-10', 'Seizure', 'Pregnancy', 138),
(40, 'C05-R-11', 'Multiple Births', 'Pregnancy', 139),
(41, 'C05-Y-01', 'Delivery Not Imminent', 'Pregnancy', 140),
(42, 'C05-Y-02', 'Vaginal Bleeding, No Fainting <20 Weeks Pregnant', 'Pregnancy', 141),
(43, 'C05-Y-03', 'Abdominal Injury <20 Weeks Pregnant', 'Pregnancy', 142),
(44, 'C05-Y-04', 'Water Broke', 'Pregnancy', 143),
(45, 'C05-Y-05', '<20 Weeks Pregnant with Menstrual Cramp, Spotting, Pelvic Pa', 'Pregnancy', 144),
(46, 'C06-R-01', 'Unconscious', 'Unconscious', 145),
(47, 'C06-R-02', 'Not Breathing Normally', 'Unconscious', 146),
(48, 'C06-R-03', 'Decreased Level of Conscious', 'Unconscious', 147),
(49, 'C06-R-04', 'Drug/Alcohol Overdose', 'Unconscious', 148),
(50, 'C06-R-05', 'Fainting with Associated Symptoms', 'Unconscious', 149),
(51, 'C06-R-06', 'Single Fainting >50 years old', 'Unconscious', 150),
(52, 'C06-R-07', 'Alcohol Intox Still Unconscious', 'Unconscious', 151),
(53, 'C06-Y-01', 'Now Conscious with No Critical Symptoms', 'Unconscious', 152),
(54, 'C06-Y-02', 'Slumped Over Wheel - Unconfirmed', 'Unconscious', 153),
(55, 'C06-Y-03', 'Now Conscious with Minor Injuries', 'Unconscious', 154),
(56, 'C06-Y-04', 'Alcohol Intox But Can Be Arroused', 'Unconscious', 155),
(57, 'C06-Y-05', 'Near Syncope with No Critical Symptoms', 'Unconscious', 156),
(58, 'H01-R-01', 'Emergency Call from Airborne Aircraft', 'Aircraft/Terrorism', 200),
(59, 'H01-R-02', 'Suspicious Airborne Object or Aircraft', 'Aircraft/Terrorism', 201),
(60, 'H01-R-03', 'Aircraft Theft in Progress/Just Occured', 'Aircraft/Terrorism', 202),
(61, 'H01-Y-01', 'Complaint of Sonic Booms', 'Aircraft/Terrorism', 203),
(62, 'H01-Y-02', 'Noise Complaint in Vicinity of Airport', 'Aircraft/Terrorism', 204),
(63, 'H01-Y-03', 'Crop Duster Spraying a Farm Field', 'Aircraft/Terrorism', 205),
(64, 'H01-Y-04', 'Military Aircraft in Operations Area', 'Aircraft/Terrorism', 206),
(65, 'H02-R-01', 'Unconscious', 'CO/HazMat', 207),
(66, 'H02-R-02', 'Not Breathing Normally', 'CO/HazMat', 208),
(67, 'H02-R-03', 'Decreased Level of Consciousness', 'CO/HazMat', 209),
(68, 'H02-R-04', 'Difficulty Swallowing', 'CO/HazMat', 210),
(69, 'H02-R-05', 'Ingestion of Chemicals', 'CO/HazMat', 211),
(70, 'H02-R-06', 'Multiple Causality Incident', 'CO/HazMat', 212),
(71, 'H02-Y-01', 'Chemicals on Skin/No Critical Symptoms', 'CO/HazMat', 213),
(72, 'H02-Y-02', '3rd Party Caller Not With Person', 'CO/HazMat', 214),
(73, 'H03-R-01', 'Refer to Appropriate Injury Card', 'HazMat Guidelines', 215),
(74, 'H03-Y-01', 'Notify All Appropriate Agencies', 'HazMat Guidelines', 216),
(75, 'H05-R-01', 'Unconscious', 'Industrial Accident', 217),
(76, 'H05-R-02', 'Not Breathing Normally', 'Industrial Accident', 218),
(77, 'H05-R-03', 'Decreased Level of Consciousness', 'Industrial Accident', 219),
(78, 'H05-R-04', 'Crushing Injury Central Body', 'Industrial Accident', 220),
(79, 'H05-R-05', 'Person Trapped', 'Industrial Accident', 221),
(80, 'H05-R-06', 'Amputation Above Fingers/Toes', 'Industrial Accident', 222),
(81, 'H05-R-07', 'Person Paralyzed', 'Industrial Accident', 223),
(82, 'H05-R-08', 'Uncontrolled Bleeding', 'Industrial Accident', 224),
(83, 'H05-R-09', 'Multiple Fractures', 'Industrial Accident', 225),
(84, 'H05-R-10', 'Femur (thigh) Fracture', 'Industrial Accident', 226),
(85, 'H05-Y-01', 'Amputation of Fingers/Toes', 'Industrial Accident', 227),
(86, 'H05-Y-02', 'Neck/Back Pain, No Critical Symptoms', 'Industrial Accident', 228),
(87, 'H05-Y-03', 'Bleeding that has Been Controlled', 'Industrial Accident', 229),
(88, 'H05-Y-04', 'Cuts, Bumps or Bruises', 'Industrial Accident', 230),
(89, 'H05-Y-05', 'Assist Person', 'Industrial Accident', 231),
(90, 'H05-Y-06', 'Involved with No Critical Symptoms', 'Industrial Accident', 232),
(91, 'M01-R-01', 'Unconscious', 'Abdominal Pain', 300),
(92, 'M01-R-02', 'Not Breathing Normally', 'Abdominal Pain', 301),
(93, 'M01-R-03', 'Decreased Level of Consciousness', 'Abdominal Pain', 302),
(94, 'M01-R-04', 'Vomiting Blood', 'Abdominal Pain', 303),
(95, 'M01-R-05', 'Black Tarry Stools', 'Abdominal Pain', 304),
(96, 'M01-R-06', 'Lower Abdominal Pain, Female Age 12-50', 'Abdominal Pain', 305),
(97, 'M01-R-07', 'History of Cardiac Problems', 'Abdominal Pain', 306),
(98, 'M01-R-08', 'Fainting/Near Fainting, >50 years old', 'Abdominal Pain', 307),
(99, 'M01-R-09', 'Fainting/Near Fainting while Sitting', 'Abdominal Pain', 308),
(100, 'M01-Y-01', 'Pain with Vomiting', 'Abdominal Pain', 309),
(101, 'M01-Y-02', 'Flank Pain (Kidney Stone)', 'Abdominal Pain', 310),
(102, 'M01-Y-03', 'Non-traumatic', 'Abdominal Pain', 311),
(103, 'M01-Y-04', 'Unspecified Pain', 'Abdominal Pain', 312),
(104, 'M02-R-01', 'Unconscious', 'Allergies/Stings', 313),
(105, 'M02-R-02', 'Not Breathing Normally', 'Allergies/Stings', 314),
(106, 'M02-R-03', 'Decreased Level of Consciousness', 'Allergies/Stings', 315),
(107, 'M02-R-04', 'Difficulty Breathing', 'Allergies/Stings', 316),
(108, 'M02-R-05', 'Difficulty Swallowing', 'Allergies/Stings', 317),
(109, 'M02-R-06', 'Swelling to Throat and/or Face', 'Allergies/Stings', 318),
(110, 'M02-R-07', 'Fainting', 'Allergies/Stings', 319),
(111, 'M02-R-08', 'History of Severe Reactions', 'Allergies/Stings', 320),
(112, 'M02-R-09', 'Itching/Hives in Multiple Areas', 'Allergies/Stings', 321),
(113, 'M02-Y-01', 'Concern for Reaction but No History', 'Allergies/Stings', 322),
(114, 'M02-Y-02', 'Reaction >1 Hour/No Breathing Difficulty', 'Allergies/Stings', 323),
(115, 'M02-Y-03', 'Itching/Hives 1 Area/No Difficulty Breath', 'Allergies/Stings', 324),
(116, 'M03-R-01', 'Unconscious', 'Back Pain', 325),
(117, 'M03-R-02', 'Not Breathing Normally', 'Back Pain', 326),
(118, 'M03-R-03', 'Decreased Level of Conscious', 'Back Pain', 327),
(119, 'M03-R-04', 'Non-traumatic/History of Cardiac Problems', 'Back Pain', 328),
(120, 'M03-R-05', 'Fainting/Near Fainting >50 Years of Age', 'Back Pain', 329),
(121, 'M03-Y-01', 'Flank Pain (Possible Kidney Stone)', 'Back Pain', 330),
(122, 'M03-Y-02', 'Non-traumatic', 'Back Pain', 331),
(123, 'M03-Y-03', 'Unspecified Back Pain', 'Back Pain', 332),
(124, 'M03-Y-04', 'Chronic', 'Back Pain', 333),
(125, 'M04-R-01', 'Unconscious', 'Breathing Problems', 334),
(126, 'M04-R-02', 'Decreased Level of Conscious', 'Breathing Problems', 335),
(127, 'M04-R-03', 'Associated Critical Symptoms', 'Breathing Problems', 336),
(128, 'M04-R-04', 'Tingling/Numbness Age>35', 'Breathing Problems', 337),
(129, 'M04-Y-01', 'Cold Symptoms', 'Breathing Problems', 338),
(130, 'M04-Y-02', 'Stuffed Nose', 'Breathing Problems', 339),
(131, 'M04-Y-03', 'Oxygen Bottle Empty', 'Breathing Problems', 340),
(132, 'M04-Y-04', 'Assist Patient - No Critical Symptoms', 'Breathing Problems', 341),
(133, 'M04-Y-05', 'Chronic - No Change', 'Breathing Problems', 342),
(134, 'M05-R-01', 'Now Unconscious', 'Chest Pain', 343),
(135, 'M05-R-02', 'Decreased Level of Consciousness', 'Chest Pain', 344),
(136, 'M05-R-03', 'Not Breathing Normally', 'Chest Pain', 345),
(137, 'M05-R-04', 'With Critical Signs/Symptoms', 'Chest Pain', 346),
(138, 'M05-Y-01', 'Age <35 with No Critical Signs/Symptoms', 'Chest Pain', 347),
(139, 'M06-R-01', 'Unconscious', 'Diabetic', 348),
(140, 'M06-R-02', 'Decreased Level of Consciousness', 'Diabetic', 349),
(141, 'M06-R-03', 'Not Breathing Normally', 'Diabetic', 350),
(142, 'M06-R-04', 'Unusual Behavior/Acting Strange', 'Diabetic', 351),
(143, 'M06-R-05', 'Profuse Sweating', 'Diabetic', 352),
(144, 'M06-R-06', 'Seizing', 'Diabetic', 353),
(145, 'M06-Y-01', 'Alert and Awake', 'Diabetic', 354),
(146, 'M06-Y-02', 'Not Feeling Well', 'Diabetic', 355),
(147, 'M07-R-01', 'Now Unconscious', 'Headache', 356),
(148, 'M07-R-02', 'Not Breathing Normally', 'Headache', 357),
(149, 'M07-R-03', 'With Critical Signs/Symptoms', 'Headache', 358),
(150, 'M07-Y-01', 'Awake and Alert', 'Headache', 359),
(151, 'M07-Y-02', 'No Critical Signs/Symptoms', 'Headache', 360),
(152, 'M08-R-01', 'Patient with Critical Signs/Symptoms', 'Provider Request', 361),
(153, 'M08-R-02', 'Off-Duty Medic Request ALS', 'Provider Request', 362),
(154, 'M08-R-03', 'Medical Device in Use', 'Provider Request', 363),
(155, 'M08-Y-01', 'No Critical Signs/Symptoms', 'Provider Request', 364),
(156, 'M09-R-01', 'Patient has Critical Signs/Symptoms', 'Home Equipment', 365),
(157, 'M09-R-02', 'Ventilator Failure', 'Home Equipment', 366),
(158, 'M09-R-03', 'Apnea Monitor Alarm', 'Home Equipment', 367),
(159, 'M09-R-04', 'Implanted Defibrillator Firing', 'Home Equipment', 368),
(160, 'M09-Y-01', 'No Critical Signs/Symptoms', 'Home Equipment', 369),
(161, 'M09-Y-02', 'Problem with Home Oxygen', 'Home Equipment', 370),
(162, 'M10-Y-01', 'Body is Stiff and Cold', 'Obvious Death', 371),
(163, 'M10-Y-02', 'Body is Decomposing', 'Obvious Death', 372),
(164, 'M10-Y-03', 'Injuries Incompatible with Life', 'Obvious Death', 373),
(165, 'M10-Y-04', 'Non-recent Expected Death', 'Obvious Death', 374),
(166, 'M10-Y-05', 'Hospice/DNR', 'Obvious Death', 375),
(167, 'M11-R-01', 'Presenting with Critical Signs/Symptoms', 'Overdose/Poisoning', 376),
(168, 'M11-Y-01', 'Drug Use/No Critical Signs or Symptoms', 'Overdose/Poisoning', 377),
(169, 'M11-Y-02', 'Not with Patient/3rd Party Caller', 'Overdose/Poisoning', 378),
(170, 'M11-Y-03', 'Reported OD/Patient Denies Taking Anything', 'Overdose/Poisoning', 379),
(171, 'M11-Y-04', 'Alcohol Intox - Can Be Arroused', 'Overdose/Poisoning', 380),
(172, 'M12-Y-01', 'No Critical Signs or Symptoms', 'Patient Assistance', 381),
(173, 'M13-R-01', 'Now Unconscious', 'Psychiatric', 382),
(174, 'M13-R-02', 'Not Breathing Normally', 'Psychiatric', 383),
(175, 'M13-R-03', 'Decreased Level of Consciousness', 'Psychiatric', 384),
(176, 'M13-Y-01', 'Lacerated Wrist/Bleeding Controlled', 'Psychiatric', 385),
(177, 'M13-Y-02', 'With Psychiatric History - Non-violent', 'Psychiatric', 386),
(178, 'M13-Y-03', 'Alcohol Intox, Can Be Arroused', 'Psychiatric', 387),
(179, 'M13-Y-04', 'Threathening Self or Others', 'Psychiatric', 388),
(180, 'M13-Y-05', 'Out of Medication', 'Psychiatric', 389),
(181, 'M13-Y-06', 'Police Request for Stand-by', 'Psychiatric', 390),
(182, 'M14-R-01', 'Unconscious', 'Seizures', 391),
(183, 'M14-R-02', 'Not Breathing Normally', 'Seizures', 392),
(184, 'M14-R-03', 'Decreased Level of Consciousness', 'Seizures', 393),
(185, 'M14-R-04', 'Still Seizing/Multiple Seizures', 'Seizures', 394),
(186, 'M14-R-05', 'First Time Seizure/Unknown History', 'Seizures', 395),
(187, 'M14-R-06', 'Diabetic', 'Seizures', 396),
(188, 'M14-R-07', 'Patient is Pregnant', 'Seizures', 397),
(189, 'M14-R-08', 'Secondary to OD or Head Injury', 'Seizures', 398),
(190, 'M14-R-09', 'Different than Normal', 'Seizures', 399),
(191, 'M14-Y-01', 'Single Seizure with History of Seizures', 'Seizures', 400),
(192, 'M15-R-01', 'Now Unconscious', 'Sick', 401),
(193, 'M15-R-02', 'Not Breathing Normally', 'Sick', 402),
(194, 'M15-R-03', 'Decreased Level of Consciousness', 'Sick', 403),
(195, 'M15-Y-01', 'Generalized Weakness', 'Sick', 404),
(196, 'M15-Y-02', 'Medic Alert from Alarm Company', 'Sick', 405),
(197, 'M15-Y-03', 'Flu-like Symptoms', 'Sick', 406),
(198, 'M15-Y-04', 'High Temperature with No Critical Symptoms', 'Sick', 407),
(199, 'M15-Y-05', 'Assist Patient - No Critical Symptoms', 'Sick', 408),
(200, 'M15-Y-06', 'Police Request/Stand-by', 'Sick', 409),
(201, 'M16-R-01', 'Now Unconscious', 'Stroke', 410),
(202, 'M16-R-02', 'Not Breathing Normally', 'Stroke', 411),
(203, 'M16-R-03', 'Decreased Level of Consciousness', 'Stroke', 412),
(204, 'M16-R-04', 'New Onset One-sided Weakness, Slurred Speech', 'Stroke', 413),
(205, 'M16-Y-01', 'Past History of Stroke with No New Changes', 'Stroke', 414),
(206, 'M17-R-01', 'Unconscious', 'Unknown', 415),
(207, 'M17-R-02', 'Not Breathing Normally', 'Unknown', 416),
(208, 'M17-R-03', 'Decreased Level of Consciousness', 'Unknown', 417),
(209, 'M17-R-04', 'Multiple People Down (Possible HazMat)', 'Unknown', 418),
(210, 'M17-Y-01', 'Person is Talking, Moving Sitting or Standing', 'Unknown', 419),
(211, 'M17-Y-02', '3rd Party Caller - No Indication of Unconsciousnes', 'Unknown', 420),
(212, 'T01-R-01', 'Now Unconscious', 'Animal Bite', 500),
(213, 'T01-R-02', 'Not Breathing Normally', 'Animal Bite', 501),
(214, 'T01-R-03', 'Unable to Control Bleeding', 'Animal Bite', 502),
(215, 'T01-R-04', 'Serious Animal Bites to Face/Neck', 'Animal Bite', 503),
(216, 'T01-R-05', 'Bite from Known Poisonous Animal', 'Animal Bite', 504),
(217, 'T01-Y-01', 'Bleeding is Controlled', 'Animal Bite', 505),
(218, 'T01-Y-02', 'Swelling at the Bite Site', 'Animal Bite', 506),
(219, 'T01-Y-03', 'Below the Neck/Non-poisonous', 'Animal Bite', 507),
(220, 'T02-R-01', 'Now Unconscious', 'Assault', 508),
(221, 'T02-R-02', 'Not Breathing Normally', 'Assault', 509),
(222, 'T02-R-03', 'Decreased Level of Consciousness', 'Assault', 510),
(223, 'T02-R-04', 'Crushing Injury (Except to Hands or Feet)', 'Assault', 511),
(224, 'T02-R-05', 'Puncture Injury (Head, Neck, Torso, Thigh)', 'Assault', 512),
(225, 'T02-R-06', 'Multiple Extremity Fractures', 'Assault', 513),
(226, 'T02-R-07', 'Femur Fracture', 'Assault', 514),
(227, 'T02-R-08', 'Uncontrolled Bleeding', 'Assault', 515),
(228, 'T02-Y-01', 'Penetrating/Crush Injury to Hands or Feet', 'Assault', 516),
(229, 'T02-Y-02', 'Isolated Extremity Fracture', 'Assault', 517),
(230, 'T02-Y-03', 'Minor Injuries', 'Assault', 518),
(231, 'T02-Y-04', 'Unknown Injuries', 'Assault', 519),
(232, 'T02-Y-05', 'Concerned Caller/No Apparent Injuries', 'Assault', 520),
(233, 'T03-R-01', 'Now Unconscious', 'Bleeding', 522),
(234, 'T03-R-02', 'Not Breathing Normally', 'Bleeding', 523),
(235, 'T03-R-03', 'Arterial Bleeding', 'Bleeding', 524),
(236, 'T03-R-04', 'Hemophilia', 'Bleeding', 525),
(237, 'T03-R-05', 'Rectal Bleeding with Significant Blood Loss', 'Bleeding', 526),
(238, 'T03-R-06', 'Vomiting Blood/Coffee Ground Materials', 'Bleeding', 527),
(239, 'T03-R-07', 'From Mouth with Breathing Difficulty', 'Bleeding', 528),
(240, 'T03-R-08', 'From Neck, Groin, Armpit with Significant Blood Loss', 'Bleeding', 529),
(241, 'T03-R-09', 'Vaginal Bleeding >20 Weeks Pregnant', 'Bleeding', 530),
(242, 'T03-R-10', 'Vaginal Bleeding with Lower Abdominal Pain/Fainting', 'Bleeding', 531),
(243, 'T03-Y-01', 'Minor Bleeding', 'Bleeding', 532),
(244, 'T04-R-01', 'Now Unconscious', 'Burns', 533),
(245, 'T04-R-02', 'Not Breathing Normally', 'Burns', 534),
(246, 'T04-R-03', 'Decreased Level of Consciousness', 'Burns', 535),
(247, 'T04-R-04', 'Burns to the Airway, Nose or Mouth', 'Burns', 536),
(248, 'T04-R-05', 'Hoarseness, Difficulty Breathing or Swallowing', 'Burns', 537),
(249, 'T04-R-06', '>20% of Body Surface Burns', 'Burns', 538),
(250, 'T04-R-07', 'Electrical Burns from 220-Volt or Greater', 'Burns', 539),
(251, 'T04-R-08', '2nd/3rd Degree Burns to Hands, Feet or Groin', 'Burns', 540),
(252, 'T04-Y-01', '<20% Body Surface Area Burns', 'Burns', 541),
(253, 'T04-Y-02', 'Spilled Hot Liquid Burns', 'Burns', 542),
(254, 'T04-Y-03', 'Chemical Burns to Eyes', 'Burns', 543),
(255, 'T04-Y-04', 'Small Burns from Match or Cigarette', 'Burns', 544),
(256, 'T04-Y-05', 'Household Electrical Shock', 'Burns', 545),
(257, 'T04-Y-06', 'Battery Explosion', 'Burns', 546),
(258, 'T04-Y-07', 'Freezer Burns', 'Burns', 547),
(259, 'T05-R-01', 'Now Unconscious', 'Eye Injury', 548),
(260, 'T05-R-02', 'Not Breathing Normally', 'Eye Injury', 549),
(261, 'T05-R-03', 'Decreased Level of Consciousness', 'Eye Injury', 550),
(262, 'T05-Y-01', 'Any Eye Injury With No Critical Symptoms', 'Eye Injury', 551),
(263, 'T06-R-01', 'Now Unconscious', 'Falls', 552),
(264, 'T06-R-02', 'Not Breathing Normally', 'Falls', 553),
(265, 'T06-R-03', 'Decreased Level of Consciousness', 'Falls', 554),
(266, 'T06-R-04', 'Greater than 10 Feet', 'Falls', 555),
(267, 'T06-R-05', 'Associated with Chest Pain, Dizzy, Headache, Diabetes', 'Falls', 556),
(268, 'T06-R-06', 'Patient is Paralyzed', 'Falls', 557),
(269, 'T06-R-07', 'Uncontrolled Bleeding', 'Falls', 558),
(270, 'T06-R-08', 'Multiple Extremity Fractures', 'Falls', 559),
(271, 'T06-R-09', 'Femur Fracture', 'Falls', 560),
(272, 'T06-Y-01', 'Less Than 10-feet', 'Falls', 560),
(273, 'T06-Y-02', 'Neck or Back Pain with No Critical Symptoms', 'Falls', 561),
(274, 'T06-Y-03', 'Bleeding Controlled', 'Falls', 562),
(275, 'T06-Y-04', 'Cuts, Bumps or Bruises', 'Falls', 563),
(276, 'T06-Y-05', 'Assist Person/No Critical Symptoms', 'Falls', 564),
(277, 'T06-Y-06', 'Involved in Accident/No Complaints', 'Falls', 565),
(278, 'T06-Y-07', 'Isolated Extremity Fracture', 'Falls', 566),
(279, 'T07-R-01', 'Now Unconscious', 'Exposure', 567),
(280, 'T07-R-02', 'Not Breathing Normally', 'Exposure', 568),
(281, 'T07-R-03', 'Decreased Level of Consciousness', 'Exposure', 569),
(282, 'T07-R-04', 'Confused or Disoriented', 'Exposure', 570),
(283, 'T07-R-05', 'Fainting/Syncope', 'Exposure', 571),
(284, 'T07-R-06', 'Cold Water Immersion', 'Exposure', 572),
(285, 'T07-Y-01', 'Uncontrolled Shivering', 'Exposure', 573),
(286, 'T07-Y-02', 'Heat Exhaustion with No Critical Symptoms', 'Exposure', 574),
(287, 'T07-Y-03', 'Unknown Symptoms', 'Exposure', 575),
(288, 'T08-R-01', 'Now Unconscious', 'Stabbing/Shooting', 576),
(289, 'T08-R-02', 'Not Breathing Normally', 'Stabbing/Shooting', 577),
(290, 'T08-R-03', 'Decreased Level of Consciousness', 'Stabbing/Shooting', 578),
(291, 'T08-R-04', 'Uncontrolled Bleeding', 'Stabbing/Shooting', 579),
(292, 'T08-R-05', 'Injury Above Knee or Elbow', 'Stabbing/Shooting', 580),
(293, 'T08-R-06', 'Injury to Head, Neck, Torso, Thigh', 'Stabbing/Shooting', 581),
(294, 'T08-R-07', 'Multiple Casualty Incident', 'Stabbing/Shooting', 582),
(295, 'T08-Y-01', 'Injury Below Knee or Elbow', 'Stabbing/Shooting', 583),
(296, 'T09-R-01', 'Now Unconscious', 'Injured', 584),
(297, 'T09-R-02', 'Not Breathing Normally', 'Injured', 585),
(298, 'T09-R-03', 'Decreased Level of Consciousness', 'Injured', 586),
(299, 'T09-R-04', 'Penetrating/Crush Inj to Head, Neck, Torso, Thigh', 'Injured', 587),
(300, 'T09-R-05', 'Uncontrolled Bleeding', 'Injured', 588),
(301, 'T09-R-06', 'Injured Leg Above the Knee', 'Injured', 589),
(302, 'T09-R-07', 'Multiple Extremity Fracture', 'Injured', 590),
(303, 'T09-Y-01', 'Penetrating/Crush Injury to Hands/Feet', 'Injured', 591),
(304, 'T09-Y-02', 'Unknown Injuries', 'Injured', 592),
(305, 'T09-Y-03', 'Minor Injuries', 'Injured', 593),
(306, 'T09-Y-04', 'Concerned Caller/No Apparent Injuries', 'Injured', 594),
(307, 'T09-Y-05', 'Isolated Extremity Fracture', 'Injured', 595),
(308, 'T09-Y-06', 'Police Request Stand-by/Check for Injuries', 'Injured', 596),
(309, 'T10-R-01', 'Unconscious Person', 'MVC', 597),
(310, 'T10-R-02', 'Not Breathing Normally', 'MVC', 598),
(311, 'T10-R-03', 'Decreased Level of Consciousness', 'MVC', 599),
(312, 'T10-R-04', 'Chest Pain Prior to Collision', 'MVC', 600),
(313, 'T10-R-05', 'Injuries to Head, Neck, Torso, Thigh', 'MVC', 601),
(314, 'T10-R-06', 'Multiple Causality Incident', 'MVC', 602),
(315, 'T10-R-07', 'Trapped/Overturned Vehicle', 'MVC', 603),
(316, 'T10-Y-01', 'No Critical Injury Criteria', 'MVC', 604),
(317, 'T10-Y-02', 'Police Request Stand-by/Check for Injuries', 'MVC', 605);
