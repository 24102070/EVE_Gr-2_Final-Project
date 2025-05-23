-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2025 at 09:11 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `event_planning`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `schedule_id` int(11) NOT NULL,
  `status` varchar(20) DEFAULT 'pending',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `package_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `user_id`, `company_id`, `schedule_id`, `status`, `created_at`, `package_id`) VALUES
(19, 16, 6, 23, 'accept', '2025-05-14 12:52:08', 9),
(21, 8, 6, 25, 'accept', '2025-05-15 03:26:36', 9),
(22, 16, 6, 25, 'accept', '2025-05-15 06:19:05', 9),
(23, 8, 8, 18, 'accept', '2025-05-15 08:49:57', 11),
(32, 8, 6, 26, 'accept', '2025-05-23 03:44:55', 9),
(33, 16, 6, 29, 'complete', '2025-05-23 03:46:07', 17),
(34, 16, 6, 29, 'accept', '2025-05-23 03:55:12', 17),
(35, 8, 8, 31, 'ongoing', '2025-05-23 04:47:30', 11),
(36, 16, 8, 33, 'reject', '2025-05-23 05:05:39', 10),
(37, 8, 8, 32, 'complete', '2025-05-23 05:06:03', 11),
(38, 16, 8, 34, 'rejected', '2025-05-23 05:42:12', 11),
(39, 8, 6, 30, 'cancelled', '2025-05-23 06:35:30', 17),
(42, 8, 6, 36, 'ongoing', '2025-05-23 07:06:59', 9);

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `cert_file` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `minimum_fee` decimal(10,2) NOT NULL,
  `status` enum('Available','Unavailable') NOT NULL DEFAULT 'Available',
  `approval` enum('Pending','Approved') NOT NULL DEFAULT 'Pending',
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `name`, `email`, `cert_file`, `description`, `minimum_fee`, `status`, `approval`, `password`) VALUES
(6, ' EverAfter Events & Planning', 'eventafter@gmail.com', 'C:\\xampp\\htdocs\\Event_Site_Draft\\auth/../uploads/Fundle - Brochure .pdf', 'EverAfter Events & Planning is a full-service event planning company that specializes in organizing, designing, and executing events tailored to your unique needs. We offer both partial and full event coordination services for weddings, birthdays, corporate functions, and more. With a keen eye for detail and a love for storytelling, we ensure that every event is as seamless as it is spectacular.', 13050.00, 'Available', 'Approved', '$2y$10$.yWfZsIWntZBH9NTIh9bn./IqhF434Afhv6z2PUTe18zMVIc76Zsq'),
(8, 'Elite Event Planners', 'contact@eliteeventplanners.com', 'C:\\xampp\\htdocs\\Event_Site_Draft\\auth/../uploads/ilovepdf_merged (3) (2).pdf', 'Elite Event Planners specializes in creating unforgettable experiences for every occasion. Whether it\'s a wedding, corporate event, or private party, our team provides full-service event planning, including venue selection, catering, entertainment, and custom decor. We are committed to delivering exceptional events that exceed client expectations with a personal touch.', 7000.00, 'Available', 'Approved', '$2y$10$V9huGsMRSWEo55.3.vURKu9iFJuYtYPkvfRwYzkxISNo9t4XJKLPu'),
(9, 'bilat', 'bilay@gmail.com', 'C:\\xampp\\htdocs\\Event_Site_Draft\\auth/../uploads/ilovepdf_merged (3) (2) (1).pdf', 'coochieemeowmeow dildo seller', 70000.00, 'Available', '', '$2y$10$IgAmLXPBex14c0iyt1FlYe2qbA7d5zg95W4WYMDdFAf4EWeWK63k.'),
(10, 'Skidaddle', 'skid123@gmail.com', 'C:\\xampp\\htdocs\\Event_Site_Draft\\auth/../uploads/try uwu.pdf', 'wawklsjdlsakjdajdlad', 350.00, 'Available', '', '$2y$10$QUQuiL4fkQC6tHAseJ0Cv.iWq2lwGlmgGoBJDjoWmgTov8zasHbji'),
(11, 'verabpoooo', 'veraorbello123@gmail.com', 'C:\\xampp\\htdocs\\Event_Site_Draft\\auth/../uploads/3.jpg', 'lskjlsajdlkajdlksadlas', 200.00, 'Available', 'Pending', '$2y$10$6F62aXk/GFRsQgVQyAjudO8mN0NnlYG.gtSq3U/hB61.j/WYcoh/y'),
(12, 'Elite Event Planners', 'skibidi@gmail.com', 'C:\\xampp\\htdocs\\Event_Site_Draft\\auth/../uploads/ERD FINALS.pdf', 'ilovetoeatapplesandbananas', 235.00, 'Available', '', '$2y$10$2EjT/9uzuHHm2xM4m.feEO36WvRsRsgECSw3xAhqq7UTONp2r63O.'),
(13, 'Elegant Events Planning', 'contact@elegantevents.com', 'C:\\xampp\\htdocs\\Event_Site_Draft\\auth/../uploads/dreamevents.jpg', 'Elegant Events Planning is dedicated to creating unforgettable experiences by delivering exceptional event planning services. With over 10 years of combined industry experience, we specialize in corporate events, weddings, and private parties, providing clients with personalized and meticulously planned events that exceed expectations.', 9000.00, 'Available', 'Approved', '$2y$10$7dx5Lb26JHiGRrdVsky5re7qNhZJeAjliUQWPR4wT5xUev1QlN0/O'),
(14, 'Ianism', 'ianism@gmail.com', 'C:\\xampp\\htdocs\\Event_Site_Draft\\auth/../uploads/ERD FINALS (3).pdf', 'iashdksajhdsahdja', 600.00, 'Available', 'Approved', '$2y$10$VGocjmZyn0lzhjt7I6ploOofxYHHcMukaEvS/8HTL8WH2hDKZ2Zs2');

-- --------------------------------------------------------

--
-- Table structure for table `company_posts`
--

CREATE TABLE `company_posts` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `caption` text NOT NULL,
  `media_path` varchar(255) DEFAULT NULL,
  `media_type` enum('image','video') DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `company_posts`
--

INSERT INTO `company_posts` (`id`, `company_id`, `caption`, `media_path`, `media_type`, `created_at`) VALUES
(5, 6, 'We’re beyond excited to share that Sophia & Elijah Reyes have trusted us to bring their dream wedding to life! 💍💐 Their vision is set, and we’re on our way to making every detail perfect for their special day. 🌟\r\n\r\nWith our The Dream Day package, we’re managing every little detail to ensure their wedding is flawless from start to finish. From selecting the perfect venue to coordinating with vendors, we\'re here to create a seamless and unforgettable celebration! 💖\r\n\r\n💍 Package Inclusions:\r\n\r\nFull wedding planning and coordination: PHP 50,000\r\n\r\nVenue selection and booking: PHP 30,000\r\n\r\nTheme and design consultation: PHP 20,000\r\n\r\nVendor management (catering, photography, florists, etc.): PHP 30,000\r\n\r\nOn-the-day coordination: PHP 20,000\r\n\r\n💰 Total Price: PHP 150,000\r\n\r\nWe can’t wait to make this couple’s big day absolutely magical! ✨💖\r\n\r\n#WhimsyWorksByLuna #DreamWedding #SophiaAndElijah #WeddingPlanning #FlawlessWedding #DreamDayPackage #MakingDreamsComeTrue #WeddingGoals', 'uploads/67fe74f17207b.jpg', 'image', '2025-04-15 15:00:15'),
(6, 8, '🌟 Make Your Event Unforgettable with Elite Event Planners! 🌟\r\n\r\nAt Elite Event Planners, we specialize in turning your vision into reality, no matter the occasion. Whether you\'re planning a luxurious wedding, a corporate gathering, or a private party, our team is here to make it extraordinary. ✨\r\n\r\nWhat we offer: ✅ Custom Event Design & Coordination\r\n✅ Venue Selection\r\n✅ Catering with Custom Menus\r\n✅ Entertainment Options (Live Bands, DJs & More!)\r\n✅ Event Photography & Videography\r\n✅ Tailored Decor to Match Your Theme\r\n\r\nOur mission is simple: to create stress-free, memorable events that exceed your expectations.\r\n\r\nLet us handle the details so you can enjoy your special day! 💍🎉\r\n\r\n💌 DM us or call [Your Contact Number] to book a free consultation.\r\n\r\n#EliteEventPlanners #EventPlanning #UnforgettableEvents #WeddingPlanning #CorporateEvents #PartyPlanning #EventSuccess\r\n\r\n', 'uploads/6804e3c719e64.jpg', 'image', '2025-04-20 12:08:39'),
(7, 8, '🎉 Another Successful Corporate Event by Elite Event Planners! 🎉\r\n\r\nWe are beyond thrilled to have been a part of this incredible corporate event! From seamless coordination to stunning decor and top-notch catering, everything came together perfectly. 👔✨\r\n\r\nIt was a pleasure working with [Client’s Company Name] to deliver a memorable experience that reflected their company’s values and vision. Here\'s a quick glimpse of what we helped create:\r\n\r\n✅ Flawless Event Setup & Branding\r\n✅ Interactive Team-Building Activities\r\n✅ Delicious Custom Catering\r\n✅ Professional Photography to Capture Every Moment\r\n✅ Smooth Logistics & Transportation\r\n\r\nA big thank you to our amazing team and clients for making this event a huge success! 🙌\r\n\r\nLooking to elevate your next corporate event? We’ve got you covered. Let’s create something unforgettable together! 💼🎤\r\n\r\n📩 DM us or contact [Your Contact Number] to start planning your event today.\r\n\r\n#CorporateEventSuccess #EliteEventPlanners #EventCoordination #TeamBuilding #CorporateEventPlanning #EventSuccess #ClientAppreciation', 'uploads/6804e443b2e8c.jpg', 'image', '2025-04-20 12:10:43'),
(8, 8, 'im joking i love my husband why would i', 'uploads/6821a810729c4.jpg', 'image', '2025-05-12 07:46:32'),
(9, 6, 'I love you', 'uploads/68255811a9b42.jpg', 'image', '2025-05-15 02:57:21');

-- --------------------------------------------------------

--
-- Table structure for table `company_profiles`
--

CREATE TABLE `company_profiles` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `profile_photo` varchar(255) DEFAULT 'default_profile.jpg',
  `cover_photo` varchar(255) DEFAULT 'default_cover.jpg',
  `about` text DEFAULT NULL,
  `contact` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `company_profiles`
--

INSERT INTO `company_profiles` (`id`, `company_id`, `profile_photo`, `cover_photo`, `about`, `contact`) VALUES
(4, 6, 'uploads/weddingadmin.jfif', 'uploads/villa-millagros-intimate-dusty-blue-wedding-008.1.jpg', 'EventAfter Planning is your trusted partner in crafting unforgettable experiences. We specialize in turning your visions into reality, offering expert event planning services for weddings, corporate functions, birthdays, and special occasions. With a passion for creativity and a keen eye for detail, our team ensures every event is uniquely tailored, flawlessly executed, and truly memorable.\r\n\r\nFrom concept to celebration, we manage every aspect of the planning process — so you can focus on making memories. Whether it\'s an intimate gathering or a grand affair, EventAfter Planning brings elegance, organization, and heart to every event we touch.\r\n\r\nLet’s plan your next moment to remember.', '0928645444; Skibidi, Cebu City'),
(5, 8, 'uploads/elite.jfif', 'uploads/elitecover.jpg', 'At Elite Event Planners, we believe that every event should be as unique and memorable as the people who attend it. With years of experience in the event planning industry, we specialize in crafting unforgettable experiences for every occasion. Whether it’s a wedding, corporate event, or intimate private party, our dedicated team is here to bring your vision to life.\r\n\r\nOur services include:\r\n\r\nVenue Selection: We help you find the perfect venue that matches your style and budget.\r\n\r\nCatering: Offering customized menus that cater to a variety of tastes and dietary preferences.\r\n\r\nEntertainment: From live bands to DJs and performers, we ensure your guests are entertained throughout the event.\r\n\r\nCustom Decor: Tailored decorations to match your theme, with a keen eye for detail to make every event truly special.\r\n\r\nWhat sets us apart is our commitment to delivering not just events, but experiences that exceed client expectations. Our personal touch ensures that every event is a true reflection of our client’s needs and desires.\r\n\r\nAt Elite Event Planners, your event is more than just another project; it’s our passion.', '0945 672 8993'),
(6, 13, 'uploads/dreamevents.jpg', 'uploads/festivecreations.jpg', 'At Elegant Events Planning, we believe that every event should be a reflection of the client’s unique personality and vision. Founded in 2013, we have dedicated ourselves to turning ordinary events into extraordinary experiences. With a passionate team of event specialists and over 10 years of combined industry expertise, we offer a full range of services, from intimate gatherings to grand corporate galas.\r\n\r\nOur commitment to excellence has earned us a reputation for creating flawless events that leave lasting memories. Whether you are planning a wedding, corporate seminar, or a private party, we offer personalized solutions tailored to your specific needs. Our meticulous attention to detail, creative approach, and strategic planning ensure that your event is not only successful but also unforgettable.', '09195177442');

-- --------------------------------------------------------

--
-- Table structure for table `company_reviews`
--

CREATE TABLE `company_reviews` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rating` int(1) NOT NULL,
  `review` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `company_reviews`
--

INSERT INTO `company_reviews` (`id`, `company_id`, `package_id`, `user_id`, `rating`, `review`, `created_at`) VALUES
(1, 6, 9, 8, 4, 'usto ko nang bumitaw', '2025-04-20 08:38:59'),
(2, 6, 9, 11, 5, 'I love it', '2025-04-20 09:05:15'),
(3, 6, 9, 10, 4, 'Superbb! Enjoyed lots', '2025-04-20 09:05:52'),
(4, 6, 9, 12, 5, 'The wedding was astonishing, would highly recommend! Its so skibidi', '2025-04-20 09:08:07'),
(5, 6, 9, 13, 2, 'This sucks!!!', '2025-04-21 03:54:32');

-- --------------------------------------------------------

--
-- Table structure for table `company_schedules`
--

CREATE TABLE `company_schedules` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `company_schedules`
--

INSERT INTO `company_schedules` (`id`, `company_id`, `date`, `start_time`, `end_time`) VALUES
(15, 8, '2025-05-31', '12:13:00', '13:19:00'),
(18, 8, '2025-05-24', '22:29:00', '12:40:00'),
(20, 13, '2025-05-17', '11:27:00', '13:27:00'),
(21, 13, '2025-05-18', '11:26:00', '13:26:00'),
(23, 6, '2025-05-19', '08:49:00', '10:49:00'),
(25, 6, '2025-05-22', '13:26:00', '14:26:00'),
(26, 6, '2025-05-28', '11:51:00', '13:53:00'),
(29, 6, '2025-06-04', '23:39:00', '13:38:00'),
(30, 6, '2025-06-07', '12:57:00', '14:59:00'),
(31, 8, '2025-06-03', '12:46:00', '13:46:00'),
(32, 8, '2025-05-30', '16:04:00', '18:04:00'),
(33, 8, '2025-05-31', '17:04:00', '20:04:00'),
(34, 8, '2025-06-07', '13:43:00', '15:41:00'),
(35, 6, '2025-05-31', '19:02:00', '17:02:00'),
(36, 6, '2025-06-11', '16:06:00', '18:06:00');

-- --------------------------------------------------------

--
-- Table structure for table `freelancers`
--

CREATE TABLE `freelancers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `resume_file` varchar(255) NOT NULL,
  `profession` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `minimum_fee` decimal(10,2) NOT NULL,
  `status` enum('Available','Unavailable') NOT NULL DEFAULT 'Available',
  `approval` enum('Pending','Approved') NOT NULL DEFAULT 'Pending',
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `freelancers`
--

INSERT INTO `freelancers` (`id`, `name`, `email`, `resume_file`, `profession`, `description`, `minimum_fee`, `status`, `approval`, `password`) VALUES
(8, 'Luna Rivera', 'lunamakes@gmail.com', 'C:\\xampp\\htdocs\\Event_Site_Draft\\auth/../uploads/Full (1).pdf', 'Photographer', 'Specializes in natural light event photography with a documentary style. From candid smiles to styled portraits, she captures every meaningful detail.', 8000.00, 'Available', 'Approved', '$2y$10$2fONsnysIU/IQ5r8/ysBBeF62/C8RcUXvT.neRWulfyFTxNAjF6qG'),
(9, 'Isabella Cruz', 'isabakes.designs@gmail.com', 'C:\\xampp\\htdocs\\Event_Site_Draft\\auth/../uploads/Quiz-on-VLSM.pdf', 'Cake Designer', 'I specialize in custom cake designs for weddings, birthdays, and special events. From elegant tiered cakes to fun and creative themed designs, each cake is handcrafted with attention to detail and flavor. I offer consultations to personalize each order to your theme, dietary preferences, and occasion needs. I also provide edible toppers, cupcakes, and dessert tables on request.', 1900.00, 'Available', 'Approved', '$2y$10$mzSwdWdnTb97IjPAWE6F2OeKSZ42GnfY2suOIGtYfwIvD3VAr8neG'),
(10, 'Ian Florentino', 'ian@gmail.com', 'C:\\xampp\\htdocs\\Event_Site_Draft\\auth/../uploads/CIS1202-Prefis-Batchlist.pdf', 'Designer', 'kjldjfslkdjkslajflasjfdjfa', 2000.00, 'Available', '', '$2y$10$ecoro2zgrVx5KD6t0y7zW.w15xfn7WBykkW12D6mGHhgvTqwQCx9e'),
(11, 'Vera Orbello', 'veraorbello@gmail.com', 'C:\\xampp\\htdocs\\Event_Site_Draft\\auth/../uploads/consent.pdf', 'Videographer/Photographer', 'Skibidi123aaaaaaaaaaaaaaaa', 3800.00, 'Available', '', '$2y$10$HCD4ywBoXD6w/oDfdLwUJ.FGm8k8C6zxCywjN/Xdze38gTaJRojDG'),
(12, 'Vera Orbello', 'veraorbello@gmail.com', 'C:\\xampp\\htdocs\\Event_Site_Draft\\auth/../uploads/CV- edm advocates part.pdf', 'Videographer/Photographer', 'Thats crazy bro', 3500.00, 'Available', '', '$2y$10$hjgtvZ5OdGWIY9c7xyEPOuDITRmh91cIToP2fNUf3ip9lgDFIl3kG'),
(13, 'Osbev Cabucos', 'osbevie@gmail.com', 'C:\\xampp\\htdocs\\Event_Site_Draft\\auth/../uploads/CV- edm advocates part.pdf', 'Videographer/Photographer', 'as,mdhksajhdhadjkad', 2300.00, 'Available', 'Pending', '$2y$10$daWqgH5m3IyAq9bSzhwhAOv1SEJ5GBXOIrVp05KJyNE.bHkDdu0gm'),
(14, 'Alphasigma', 'alphasigma@gmail.com', 'C:\\xampp\\htdocs\\Event_Site_Draft\\auth/../uploads/NACU - MY SERVICE BINGO CARD.pdf', 'Photographer', 'i am alpha', 200.00, 'Available', '', '$2y$10$x7CtoQBeeFMJNphm9ylIXue4cuWhrIFzeLAeWJvQI4lBxU8Q9N3mm'),
(15, 'John Doe', 'johndoe@gmail.com', 'C:\\xampp\\htdocs\\Event_Site_Draft\\auth/../uploads/John_Doe_Resume_v3.pdf', 'Event Planner', 'Creative and detail-oriented Event Planner with 5+ years of experience organizing and executing corporate events, weddings, and private parties. Skilled in vendor coordination, budgeting, and designing personalized events that leave a lasting impression.\r\n\r\n', 6000.00, 'Available', 'Approved', '$2y$10$n6T6MS8TIGO2qD7Z5MpzSeCUkfyv/XaJL.0h1vuKNs7fpbgf0cxF.'),
(16, 'Leira Bengil', 'leirabengil@gmail.com', 'C:\\xampp\\htdocs\\Event_Site_Draft\\auth/../uploads/John_Doe_Resume_v3.pdf', 'Make-up Artist', 'Styling makeup is my thang', 500.00, 'Available', 'Pending', '$2y$10$yyMn0Z9TpqC0Cmg9my2HIeLeCTqV5CgBRHdWRgK1DozQWqH9U4fQO');

-- --------------------------------------------------------

--
-- Table structure for table `freelancers_review_ratings`
--

CREATE TABLE `freelancers_review_ratings` (
  `id` int(11) NOT NULL,
  `freelancer_id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rating` int(1) NOT NULL,
  `review` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `freelancers_review_ratings`
--

INSERT INTO `freelancers_review_ratings` (`id`, `freelancer_id`, `package_id`, `user_id`, `rating`, `review`, `created_at`) VALUES
(1, 8, 5, 8, 4, 'Would Highly Recommend!', '2025-04-18 14:44:47'),
(2, 8, 5, 11, 5, 'i love it!\r\n', '2025-04-18 15:03:18'),
(3, 8, 5, 12, 5, 'am lovin it like an alpha sigmaa skibidi toilet', '2025-04-20 09:17:38'),
(4, 8, 5, 10, 3, 'Mid\r\n', '2025-04-20 09:57:38');

-- --------------------------------------------------------

--
-- Table structure for table `freelancer_bookings`
--

CREATE TABLE `freelancer_bookings` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `freelancer_id` int(11) NOT NULL,
  `schedule_id` int(11) NOT NULL,
  `status` varchar(20) DEFAULT 'pending',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `package_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `freelancer_bookings`
--

INSERT INTO `freelancer_bookings` (`id`, `user_id`, `freelancer_id`, `schedule_id`, `status`, `created_at`, `package_id`) VALUES
(1, 10, 8, 6, 'reject', '2025-04-18 12:55:33', 5),
(2, 8, 8, 6, 'done', '2025-04-18 13:13:04', 5),
(3, 13, 8, 4, 'reject', '2025-04-21 03:56:27', 5),
(4, 8, 8, 7, 'accept', '2025-05-15 06:55:11', 5),
(5, 8, 8, 8, 'pending', '2025-05-23 06:12:16', 5),
(6, 16, 8, 8, 'pending', '2025-05-23 06:12:52', 10),
(7, 8, 8, 9, 'accept', '2025-05-23 06:20:52', 10),
(8, 16, 8, 10, 'pending', '2025-05-23 06:24:52', 5),
(9, 16, 8, 9, 'cancelled', '2025-05-23 06:25:29', 5);

-- --------------------------------------------------------

--
-- Table structure for table `freelancer_posts`
--

CREATE TABLE `freelancer_posts` (
  `id` int(11) NOT NULL,
  `freelancer_id` int(11) NOT NULL,
  `caption` text NOT NULL,
  `media_path` varchar(255) DEFAULT NULL,
  `media_type` enum('image','video') DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `freelancer_posts`
--

INSERT INTO `freelancer_posts` (`id`, `freelancer_id`, `caption`, `media_path`, `media_type`, `created_at`) VALUES
(1, 8, '🎉 A Day to Remember — Through My Lens 📸\r\n\r\nYesterday\'s birthday celebration was nothing short of magical — full of laughter, tight hugs, and sweet, candid moments that made my job feel like a privilege. Being there to witness and capture all the love shared between family and friends reminded me why I do what I do.\r\n\r\nEvery giggle, every surprise, every joyful tear — frozen in time for them to look back on and smile.\r\n\r\nThis session was part of my Capture It package, designed for events just like this — where memories deserve to be held onto forever.\r\n\r\n📷 Captured by Luna Rivera\r\n#CaptureItByLuna #FreelancePhotographer #BirthdayMoments #ThroughMyLens #EventPhotography', 'uploads/68025a71afc88.jpg', 'image', '2025-04-18 13:58:09'),
(5, 15, 'i am sad', 'uploads/6822b7ce512f0.jpg', 'image', '2025-05-13 03:09:02');

-- --------------------------------------------------------

--
-- Table structure for table `freelancer_profiles`
--

CREATE TABLE `freelancer_profiles` (
  `id` int(11) NOT NULL,
  `freelancer_id` int(11) NOT NULL,
  `profile_photo` varchar(255) DEFAULT 'default_profile.jpg',
  `cover_photo` varchar(255) DEFAULT 'default_cover.jpg',
  `about` text DEFAULT NULL,
  `contact` varchar(255) NOT NULL,
  `minimum_fee` decimal(10,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `freelancer_profiles`
--

INSERT INTO `freelancer_profiles` (`id`, `freelancer_id`, `profile_photo`, `cover_photo`, `about`, `contact`, `minimum_fee`) VALUES
(3, 8, 'uploads/images.jfif', 'uploads/photo-1501281668745-f7f57925c3b4.jfif', 'Hi, I’m Luna — the hands, heart, and hustle behind Whimsy Photography! I’m an independent creative who helps bring your event dreams to life, one detail at a time. Whether it’s capturing real moments through my lens, baking sweet centerpieces that steal the show, or styling setups that pop on Instagram, I do it all with love and flair.\r\n\r\nWith years of experience in both intimate and big events, I make sure every project I touch adds that little spark of magic your occasion deserves.\r\n\r\n', '09195604326; Consolacion Cebu City', 0.00),
(4, 15, 'uploads/corp.jpg', 'uploads/festivecreations.jpg', 'im an aloha sogma', '09195177442', 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `freelancer_schedules`
--

CREATE TABLE `freelancer_schedules` (
  `id` int(11) NOT NULL,
  `freelancer_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `freelancer_schedules`
--

INSERT INTO `freelancer_schedules` (`id`, `freelancer_id`, `date`, `start_time`, `end_time`) VALUES
(4, 8, '2025-05-17', '23:45:00', '12:45:00'),
(6, 8, '2025-04-30', '13:58:00', '14:58:00'),
(7, 8, '2025-05-18', '19:29:00', '20:29:00'),
(8, 8, '2025-06-27', '14:10:00', '15:07:00'),
(9, 8, '2025-05-29', '14:10:00', '16:08:00'),
(10, 8, '2025-05-29', '19:08:00', '20:08:00');

-- --------------------------------------------------------

--
-- Table structure for table `messaging`
--

CREATE TABLE `messaging` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_type` enum('user','freelancer','company') NOT NULL,
  `recipient_id` int(11) NOT NULL,
  `recipient_type` enum('user','freelancer','company') NOT NULL,
  `text_input` text DEFAULT NULL,
  `sent_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messaging`
--

INSERT INTO `messaging` (`id`, `user_id`, `user_type`, `recipient_id`, `recipient_type`, `text_input`, `sent_at`) VALUES
(1, 8, 'user', 8, 'freelancer', 'luna rivera', '2025-05-12 12:52:47'),
(2, 8, 'user', 8, 'freelancer', 'hai', '2025-05-12 12:52:52'),
(3, 8, 'freelancer', 8, 'freelancer', 'hai', '2025-05-12 12:54:07'),
(4, 8, 'user', 8, 'user', 'wow', '2025-05-12 13:22:43'),
(5, 8, 'user', 8, 'freelancer', 'omcm', '2025-05-12 13:23:06'),
(6, 8, 'freelancer', 8, 'user', 'hai', '2025-05-12 13:23:45'),
(7, 8, 'user', 6, 'company', 'Hello!', '2025-05-12 13:42:26'),
(8, 6, 'company', 8, 'user', 'Hi!', '2025-05-12 13:54:04'),
(9, 8, 'company', 8, 'freelancer', 'We are looking for professional photographers with at least 5 years of experience', '2025-05-12 14:03:44'),
(10, 13, 'company', 15, 'freelancer', 'hi John Doe!', '2025-05-12 14:31:22'),
(11, 8, 'user', 8, 'freelancer', 'i would like to change my schedule', '2025-05-13 02:22:57'),
(12, 16, 'user', 6, 'company', 'Hello. Where will we meet?', '2025-05-14 13:21:26'),
(13, 8, 'user', 8, 'freelancer', 'i love you', '2025-05-15 02:52:09'),
(14, 8, 'user', 8, 'freelancer', 'sjkdhaskhdjhdk', '2025-05-15 02:52:36'),
(15, 6, 'company', 8, 'freelancer', 'haiiiiiii', '2025-05-15 02:58:06');

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` int(11) NOT NULL,
  `company_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `details` text DEFAULT NULL,
  `inclusions` text DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `image` varchar(255) DEFAULT NULL,
  `freelancer_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `company_id`, `name`, `details`, `inclusions`, `price`, `created_at`, `image`, `freelancer_id`) VALUES
(9, 6, 'The Dream Day (Wedding)', 'The Dream Day package is designed for couples who want to experience a flawless wedding from start to finish. With full coordination, we will manage every detail to bring your dream wedding to life—from choosing the perfect venue to handling vendors and ensuring everything runs smoothly on your special day.', 'Full wedding planning and coordination: PHP 50,000\r\n\r\nVenue selection and booking: PHP 30,000\r\n\r\nTheme and design consultation: PHP 20,000\r\n\r\nVendor management (catering, photography, florists, etc.): PHP 30,000\r\n\r\nOn-the-day coordination: PHP 20,000', 150000.00, '2025-04-15 13:42:57', 'uploads/67fe626167dee.jpg', NULL),
(10, 8, 'Premium Wedding Package', 'Our Premium Wedding Package is designed for couples who want a luxurious and stress-free wedding experience. We offer a full range of services from venue selection to personalized decor, ensuring that every detail of your big day is perfectly executed.', 'Venue Selection: Assistance in finding and securing the ideal venue for your wedding.\r\nPrice: PHP 40,000\r\n\r\nCatering: Customized menu with appetizers, main courses, and dessert options, including dietary accommodations.\r\nPrice: PHP 60,000\r\n\r\nEntertainment: A live band or DJ for music throughout the event, with a personalized playlist.\r\nPrice: PHP 20,000\r\n\r\nCustom Decor: Tailored decorations to match the theme, including centerpieces, floral arrangements, and lighting.\r\nPrice: PHP 30,000\r\n\r\nEvent Coordination: On-site coordinator to ensure everything runs smoothly on the day of the wedding.\r\nPrice: PHP 15,000\r\n\r\nPhotography & Videography: A professional photographer and videographer to capture every moment.\r\nPrice: PHP 25,000\r\n\r\nBridal Suite Access: Complimentary access to a bridal suite for relaxation before the ceremony.\r\nPrice: PHP 5,000\r\n\r\nTransportation: Luxury car service for the bride and groom, with options for guests.\r\nPrice: PHP 10,000', 150000.00, '2025-04-20 12:04:16', 'uploads/image-2c40b17f-e118-4c04-b488-4d0a53c04d6e.jpg', NULL),
(11, 8, 'Corporate Event Excellence Package', 'Our Corporate Event Excellence Package is designed to provide a seamless and professional event experience for businesses looking to host conferences, seminars, or team-building events. From elegant venue arrangements to top-notch catering, we ensure your event reflects your company\'s values and goals.', 'Venue Selection: Assistance in finding and securing a venue that suits your event size and corporate branding.\r\nPrice: PHP 25,000\r\n\r\nCatering: Buffet or plated meals with a selection of appetizers, main courses, and beverages, including options for vegetarian and dietary needs.\r\nPrice: PHP 40,000\r\n\r\nEvent Setup & Branding: Custom signage, branded decorations, and stage setup to reflect your company’s identity.\r\nPrice: PHP 20,000\r\n\r\nAudio-Visual Equipment: Rental of microphones, projectors, screens, and sound systems for presentations or performances.\r\nPrice: PHP 15,000\r\n\r\nEvent Coordination: A dedicated event manager to ensure the smooth flow of the event, from registration to conclusion.\r\nPrice: PHP 18,000\r\n\r\nEntertainment/Activities: Team-building activities or entertainment options like live music, games, or interactive sessions.\r\nPrice: PHP 25,000\r\n\r\nPhotography: Professional photographer to capture key moments and create lasting memories of your corporate event.\r\nPrice: PHP 10,000\r\n\r\nTransportation: Shuttle services for guests to and from the venue, ensuring a hassle-free experience.\r\nPrice: PHP 7,000', 160000.00, '2025-04-20 12:07:35', 'uploads/6804e387b0c10.jpg', NULL),
(13, 13, 'Ultimate Wedding Experience', 'The Ultimate Wedding Experience package is designed for couples who want to have a dream wedding without the stress. From start to finish, we take care of every detail, ensuring that your big day is flawless. This all-inclusive package covers venue selection, decoration, catering, photography, entertainment, and more, so you can focus on celebrating your love.\r\n\r\n', 'Venue selection, Wedding Planner, Floral arrangements, Custom décor, Catering (Buffet or plated), Wedding Cake, Photography & Videography, Entertainment (Live band or DJ), Bridal Party Attire Coordination, Transportation for the couple, On-the-day event coordination', 170000.00, '2025-05-12 14:29:05', 'uploads/682205b12d744.jpg', NULL),
(14, 13, 'Corporate Gala Extravaganza', 'This package is designed for corporate clients looking to host an unforgettable gala, conference, or company celebration. We handle everything from venue sourcing to event promotion and onsite coordination, ensuring that your corporate event leaves a lasting impression on all attendees.', 'Venue selection, Event Branding & Design, Audio-Visual Setup, Catering (Buffet or Plated), Professional Host/MC, Stage & Lighting Setup, Entertainment (Live Performers or DJ), Event Photography & Videography, Social Media Promotion, On-the-day coordination', 130000.00, '2025-05-12 14:30:41', 'uploads/68220611d90be.jpg', NULL),
(17, 6, 'DAWKJNJDSKAJSD', 'DWLIJWIEIEJDEJHDAHJKAAD', 'WQLKJWIWJDEJKEHAE', 59949.00, '2025-05-15 10:07:21', 'uploads/6825bcd9d657e.jpg', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `packages_freelancers`
--

CREATE TABLE `packages_freelancers` (
  `id` int(11) NOT NULL,
  `freelancer_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `details` text NOT NULL,
  `inclusions` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `packages_freelancers`
--

INSERT INTO `packages_freelancers` (`id`, `freelancer_id`, `name`, `details`, `inclusions`, `price`, `image`, `created_at`, `updated_at`) VALUES
(5, 8, 'Capture It – Photography Package', 'The \"Capture It\" photography package is perfect for those looking to preserve memories in a creative and personal way. This package includes everything you need for beautiful event coverage and stunning photos.', 'Inclusions:\r\n\r\n2 hours of event coverage: Capture all the key moments of your event, whether it\'s a wedding, birthday, or special celebration.\r\n\r\n50+ edited photos: A collection of high-quality, professionally edited photos to cherish for years to come.\r\n\r\nOnline gallery delivery: Your photos will be delivered in a secure online gallery, easy to view and share with family and friends.\r\n\r\nAdd-ons:\r\n\r\nExtra hours: Add more coverage for PHP 2,000 per hour.\r\n\r\nPrinted photo book: A beautiful, professionally printed photo book to showcase your memories for PHP 4,500.\r\n\r\nPre-event shoot: Capture the excitement before your event with a pre-event photoshoot for PHP 6,000.', 20500.00, 'uploads/67fe64bad4448.jpg', '2025-04-15 13:52:58', '2025-04-15 13:52:58'),
(9, 15, 'i loveee', 'awdasddad', 'sdksadjhjskadhsadkjhadh', 4789.00, 'uploads/6822b79f2e7c9.jpg', '2025-05-13 03:08:15', '2025-05-13 03:08:15'),
(10, 8, 'Multo', 'sdlkjasldsajdad', 'sdkljasdskldsadjdlas', 6000.00, 'uploads/6825b978c88cc.jpg', '2025-05-15 09:52:56', '2025-05-15 09:52:56');

-- --------------------------------------------------------

--
-- Table structure for table `providers`
--

CREATE TABLE `providers` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `business_info` text NOT NULL,
  `contact_info` varchar(100) DEFAULT NULL,
  `status` enum('Pending','Approved','Rejected') DEFAULT 'Pending',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `NAME` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `role` enum('user','company','freelancer','admin') NOT NULL DEFAULT 'user',
  `contact_number` varchar(15) NOT NULL,
  `valid_id_file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `NAME`, `email`, `password`, `created_at`, `role`, `contact_number`, `valid_id_file`) VALUES
(8, 'Drixyl', 'drixyl.nacu@gmail.com', '$2y$10$OKlhM5VCbo5mZG3cQ8Go9OvIqpzIR9KVOu0fI7lIRLcngY.vXYquy', '2025-04-15 12:51:41', 'user', '', ''),
(9, 'Nathan Alinsug', 'nathanalinsug@gmail.com', '$2y$10$huntlKzYu5zi.BErKmCdr.0O/kYwt5FQfBrB7Tl3ak7GdUGv0.iO2', '2025-04-15 12:52:23', 'admin', '', ''),
(10, 'Diesel Nacu', 'dieselnacu@gmail.com', '$2y$10$/YJIeJPzjmWc0cdoV3nTVevyfvPceGSiWsCFYA2Vlv3ygwWTvetPC', '2025-04-17 08:55:12', 'user', '09283307744', 'C:\\xampp\\htdocs\\Event_Site_Draft\\auth/../uploads/Screenshot 2025-03-27 160417.png'),
(11, 'Ian Florentino', 'ianmiguel@gmail.com', '$2y$10$dtnivaHWdVKlCFqiCI.jY...hhBMSiGFPaVm3gRdnB2coq2vs70ey', '2025-04-17 09:02:38', 'user', '09286607766', 'C:\\xampp\\htdocs\\Event_Site_Draft\\auth/../uploads/Frame.png'),
(12, 'RJ Nacu', 'rjnacu@gmail.com', '$2y$10$e2w/6yctLH/QwRIJen5ocOqY5l2AbVP99b21OpxpG5mJ005zPFqAK', '2025-04-20 09:07:05', 'user', '0928842567', 'C:\\xampp\\htdocs\\Event_Site_Draft\\auth/../uploads/ilovepdf_merged (3) (1).pdf'),
(13, 'Osbev Cabucos', 'osbevcabucos@gmail.com', '$2y$10$ZbC6HxjZahOoVlWJlJoXuujekgCr7eAOFKHO6EnVs0VaCau2YlgeO', '2025-04-21 03:53:39', 'user', '09181436969', 'C:\\xampp\\htdocs\\Event_Site_Draft\\auth/../uploads/Colorful Abstract Dancing Image Dance Studio Logo.png'),
(15, 'Carlos Gabi', 'carlosgabi@gmail.com', '$2y$10$u/9vcSzgZPm98u8..IK7CuhVoKHnYze5X86ZnGI0BZS0Dw63s3Yv.', '2025-05-06 03:03:04', 'user', '0928842567', 'C:\\xampp\\htdocs\\Event_Site_Draft\\auth/../uploads/6.jpg'),
(16, 'Khit', 'khit@gmail.com', '$2y$10$7sdB41tK9SKoMnbCxRVAR.3i.5Xm6v52HXV5bIAjnaCsUToY19Pz.', '2025-05-13 02:57:02', 'user', '0978734345', 'C:\\xampp\\htdocs\\Event_Site_Draft\\auth/../uploads/1.jpg'),
(17, 'Vera Orbello', 'veraorbello123@gmail.com', '$2y$10$.YORB5xbin.m9S7iQP90FeOGtNgWT/2ZP.FE9U8JiWm5A0jnapoTK', '2025-05-15 04:21:28', 'user', '0928842567', 'C:\\xampp\\htdocs\\Event_Site_Draft\\auth/../uploads/corp.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `schedule_id` (`schedule_id`),
  ADD KEY `bookings_ibfk_2` (`company_id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_posts`
--
ALTER TABLE `company_posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `company_id` (`company_id`);

--
-- Indexes for table `company_profiles`
--
ALTER TABLE `company_profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `company_id` (`company_id`);

--
-- Indexes for table `company_reviews`
--
ALTER TABLE `company_reviews`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_review` (`company_id`,`package_id`,`user_id`);

--
-- Indexes for table `company_schedules`
--
ALTER TABLE `company_schedules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `company_id` (`company_id`);

--
-- Indexes for table `freelancers`
--
ALTER TABLE `freelancers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `freelancers_review_ratings`
--
ALTER TABLE `freelancers_review_ratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `freelancer_id` (`freelancer_id`),
  ADD KEY `package_id` (`package_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `freelancer_bookings`
--
ALTER TABLE `freelancer_bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `freelancer_id` (`freelancer_id`),
  ADD KEY `schedule_id` (`schedule_id`),
  ADD KEY `package_id` (`package_id`);

--
-- Indexes for table `freelancer_posts`
--
ALTER TABLE `freelancer_posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `freelancer_id` (`freelancer_id`);

--
-- Indexes for table `freelancer_profiles`
--
ALTER TABLE `freelancer_profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `freelancer_id` (`freelancer_id`);

--
-- Indexes for table `freelancer_schedules`
--
ALTER TABLE `freelancer_schedules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `freelancer_id` (`freelancer_id`);

--
-- Indexes for table `messaging`
--
ALTER TABLE `messaging`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `company_id` (`company_id`);

--
-- Indexes for table `packages_freelancers`
--
ALTER TABLE `packages_freelancers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `freelancer_id` (`freelancer_id`);

--
-- Indexes for table `providers`
--
ALTER TABLE `providers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `company_posts`
--
ALTER TABLE `company_posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `company_profiles`
--
ALTER TABLE `company_profiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `company_reviews`
--
ALTER TABLE `company_reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `company_schedules`
--
ALTER TABLE `company_schedules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `freelancers`
--
ALTER TABLE `freelancers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `freelancers_review_ratings`
--
ALTER TABLE `freelancers_review_ratings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `freelancer_bookings`
--
ALTER TABLE `freelancer_bookings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `freelancer_posts`
--
ALTER TABLE `freelancer_posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `freelancer_profiles`
--
ALTER TABLE `freelancer_profiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `freelancer_schedules`
--
ALTER TABLE `freelancer_schedules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `messaging`
--
ALTER TABLE `messaging`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `packages_freelancers`
--
ALTER TABLE `packages_freelancers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `providers`
--
ALTER TABLE `providers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `bookings_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `bookings_ibfk_2` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`),
  ADD CONSTRAINT `bookings_ibfk_3` FOREIGN KEY (`schedule_id`) REFERENCES `company_schedules` (`id`);

--
-- Constraints for table `company_posts`
--
ALTER TABLE `company_posts`
  ADD CONSTRAINT `company_posts_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `company_profiles`
--
ALTER TABLE `company_profiles`
  ADD CONSTRAINT `company_profiles_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `company_schedules`
--
ALTER TABLE `company_schedules`
  ADD CONSTRAINT `company_schedules_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`);

--
-- Constraints for table `freelancers_review_ratings`
--
ALTER TABLE `freelancers_review_ratings`
  ADD CONSTRAINT `freelancers_review_ratings_ibfk_1` FOREIGN KEY (`freelancer_id`) REFERENCES `freelancers` (`id`),
  ADD CONSTRAINT `freelancers_review_ratings_ibfk_2` FOREIGN KEY (`package_id`) REFERENCES `packages_freelancers` (`id`),
  ADD CONSTRAINT `freelancers_review_ratings_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `freelancer_bookings`
--
ALTER TABLE `freelancer_bookings`
  ADD CONSTRAINT `freelancer_bookings_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `freelancer_bookings_ibfk_2` FOREIGN KEY (`freelancer_id`) REFERENCES `freelancers` (`id`),
  ADD CONSTRAINT `freelancer_bookings_ibfk_3` FOREIGN KEY (`schedule_id`) REFERENCES `freelancer_schedules` (`id`),
  ADD CONSTRAINT `freelancer_bookings_ibfk_4` FOREIGN KEY (`package_id`) REFERENCES `packages_freelancers` (`id`);

--
-- Constraints for table `freelancer_profiles`
--
ALTER TABLE `freelancer_profiles`
  ADD CONSTRAINT `fk_freelancer_id` FOREIGN KEY (`freelancer_id`) REFERENCES `freelancers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_freelancer_profile` FOREIGN KEY (`freelancer_id`) REFERENCES `freelancers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `packages`
--
ALTER TABLE `packages`
  ADD CONSTRAINT `packages_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`);

--
-- Constraints for table `packages_freelancers`
--
ALTER TABLE `packages_freelancers`
  ADD CONSTRAINT `packages_freelancers_ibfk_1` FOREIGN KEY (`freelancer_id`) REFERENCES `freelancers` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
