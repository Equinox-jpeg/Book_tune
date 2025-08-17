-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 17, 2025 at 03:56 PM
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
-- Database: `book_tune`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `author` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `cover` varchar(500) DEFAULT NULL,
  `is_premium` tinyint(1) NOT NULL DEFAULT 0,
  `views` int(11) NOT NULL DEFAULT 0,
  `rating` decimal(2,1) DEFAULT 0.0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `author`, `description`, `category`, `cover`, `is_premium`, `views`, `rating`, `created_at`) VALUES
(1, 'Pride and Prejudice', 'Jane Austen', 'A witty romance that dissects class and manners in Regency England. This catalog entry presents a concise, professional overview with consistent metadata and clean formatting for modern readers.', 'Classic', 'placeholder.jpg', 0, 271, 3.6, '2025-08-16 14:56:53'),
(2, 'The Hobbit', 'J.R.R. Tolkien', 'Bilbo Baggins is swept into a quest for a dragon\'s hoard. This catalog entry presents a concise, professional overview with consistent metadata and clean formatting for modern readers.', 'Fantasy', 'placeholder.jpg', 0, 1920, 4.6, '2025-08-16 14:56:53'),
(3, 'Dune', 'Frank Herbert', 'A desert planet\'s spice fuels empire, prophecy, and revolt. This catalog entry presents a concise, professional overview with consistent metadata and clean formatting for modern readers.', 'Science Fiction', 'placeholder.jpg', 0, 1850, 4.0, '2025-08-16 14:56:53'),
(4, 'The Girl with the Dragon Tattoo', 'Stieg Larsson', 'A reporter and a hacker probe a family\'s dark secrets. This catalog entry presents a concise, professional overview with consistent metadata and clean formatting for modern readers.', 'Thriller', 'placeholder.jpg', 0, 1375, 3.6, '2025-08-16 14:56:53'),
(5, 'Educated', 'Tara Westover', 'A woman raised off-the-grid seeks education and selfhood. This catalog entry presents a concise, professional overview with consistent metadata and clean formatting for modern readers.', 'Memoir', 'placeholder.jpg', 0, 1820, 4.7, '2025-08-16 14:56:53'),
(6, 'Me Before You', 'Jojo Moyes', 'A caregiver and her client transform each other\'s lives. This catalog entry presents a concise, professional overview with consistent metadata and clean formatting for modern readers.', 'Romance', 'placeholder.jpg', 0, 1544, 3.7, '2025-08-16 14:56:53'),
(7, 'Sapiens', 'Yuval Noah Harari', 'A sweeping history of humankind\'s evolution and societies. This catalog entry presents a concise, professional overview with consistent metadata and clean formatting for modern readers.', 'Nonfiction', 'placeholder.jpg', 0, 1780, 3.7, '2025-08-16 14:56:53'),
(8, 'The Book Thief', 'Markus Zusak', 'A girl steals books in Nazi Germany, narrated by Death. This catalog entry presents a concise, professional overview with consistent metadata and clean formatting for modern readers.', 'Historical Fiction', 'placeholder.jpg', 0, 372, 4.7, '2025-08-16 14:56:53'),
(9, '1984', 'George Orwell', 'A totalitarian regime surveils and rewrites reality. This catalog entry presents a concise, professional overview with consistent metadata and clean formatting for modern readers.', 'Dystopian', 'placeholder.jpg', 1, 1518, 4.8, '2025-08-16 14:56:53'),
(10, 'Atomic Habits', 'James Clear', 'Tiny changes produce remarkable results. This catalog entry presents a concise, professional overview with consistent metadata and clean formatting for modern readers.', 'Self-Help', 'placeholder.jpg', 0, 853, 4.6, '2025-08-16 14:56:53'),
(11, 'The Da Vinci Code', 'Dan Brown', 'A symbologist races to decode a religious conspiracy. This catalog entry presents a concise, professional overview with consistent metadata and clean formatting for modern readers.', 'Thriller', 'placeholder.jpg', 0, 1670, 3.8, '2025-08-16 14:56:53'),
(12, 'The Name of the Wind', 'Patrick Rothfuss', 'A gifted boy becomes a legendary arcanist and musician. This catalog entry presents a concise, professional overview with consistent metadata and clean formatting for modern readers.', 'Fantasy', 'placeholder.jpg', 0, 1446, 3.7, '2025-08-16 14:56:53'),
(13, 'Neuromancer', 'William Gibson', 'A washed-up hacker is pulled into cyberspace intrigue. This catalog entry presents a concise, professional overview with consistent metadata and clean formatting for modern readers.', 'Science Fiction', 'placeholder.jpg', 0, 1768, 4.2, '2025-08-16 14:56:53'),
(14, 'The Kite Runner', 'Khaled Hosseini', 'Friendship and redemption across a changing Afghanistan. This catalog entry presents a concise, professional overview with consistent metadata and clean formatting for modern readers.', 'Historical Fiction', 'placeholder.jpg', 0, 1890, 4.1, '2025-08-16 14:56:54'),
(15, 'The Road', 'Cormac McCarthy', 'A father and son trek through a bleak post-apocalypse. This catalog entry presents a concise, professional overview with consistent metadata and clean formatting for modern readers.', 'Dystopian', 'placeholder.jpg', 0, 1638, 4.7, '2025-08-16 14:56:54'),
(16, 'The Night Circus', 'Erin Morgenstern', 'A magical competition entangles two young illusionists. This catalog entry presents a concise, professional overview with consistent metadata and clean formatting for modern readers.', 'Fantasy', 'placeholder.jpg', 0, 1361, 3.8, '2025-08-16 14:56:54'),
(17, 'Gone Girl', 'Gillian Flynn', 'A marriage unravels into deception and psychological warfare. This catalog entry presents a concise, professional overview with consistent metadata and clean formatting for modern readers.', 'Thriller', 'placeholder.jpg', 0, 1780, 3.6, '2025-08-16 14:56:54'),
(18, 'Born a Crime', 'Trevor Noah', 'A comedian\'s story of growing up under apartheid. This catalog entry presents a concise, professional overview with consistent metadata and clean formatting for modern readers.', 'Memoir', 'placeholder.jpg', 0, 729, 4.4, '2025-08-16 14:56:54'),
(19, 'Outlander', 'Diana Gabaldon', 'A WWII nurse time-travels into a Highland romance. This catalog entry presents a concise, professional overview with consistent metadata and clean formatting for modern readers.', 'Romance', 'placeholder.jpg', 0, 1737, 4.3, '2025-08-16 14:56:54'),
(20, 'Fahrenheit 451', 'Ray Bradbury', 'Firemen burn books in a society afraid of ideas. This catalog entry presents a concise, professional overview with consistent metadata and clean formatting for modern readers.', 'Dystopian', 'placeholder.jpg', 0, 246, 4.7, '2025-08-16 14:56:54'),
(21, 'The Martian', 'Andy Weir', 'An astronaut survives alone on Mars with ingenuity. This catalog entry presents a concise, professional overview with consistent metadata and clean formatting for modern readers.', 'Science Fiction', 'TheMartin.jpeg', 0, 1199, 4.8, '2025-08-16 14:56:54'),
(22, 'The Catcher in the Rye', 'J.D. Salinger', 'A teenager\'s disaffection in postwar America. This catalog entry presents a concise, professional overview with consistent metadata and clean formatting for modern readers.', 'Classic', 'placeholder.jpg', 0, 232, 4.3, '2025-08-16 14:56:54'),
(23, 'The Picture of Dorian Gray', 'Oscar Wilde', 'A man remains youthful while his portrait bears his sins. This catalog entry presents a concise, professional overview with consistent metadata and clean formatting for modern readers.', 'Classic', 'placeholder.jpg', 0, 1620, 3.9, '2025-08-16 14:56:54'),
(24, 'The Shining', 'Stephen King', 'Isolation and a haunted hotel push a father to madness. This catalog entry presents a concise, professional overview with consistent metadata and clean formatting for modern readers.', 'Horror', 'placeholder.jpg', 0, 1057, 3.7, '2025-08-16 14:56:54'),
(25, 'The Alchemist', 'Paulo Coelho', 'A shepherd follows his personal legend across the desert. This catalog entry presents a concise, professional overview with consistent metadata and clean formatting for modern readers.', 'Fiction', 'placeholder.jpg', 0, 399, 3.9, '2025-08-16 14:56:54'),
(26, 'The Help', 'Kathryn Stockett', 'Maids and a young writer expose 1960s Mississippi. This catalog entry presents a concise, professional overview with consistent metadata and clean formatting for modern readers.', 'Historical Fiction', 'placeholder.jpg', 0, 13, 4.2, '2025-08-16 14:56:54'),
(27, 'The Silence of the Lambs', 'Thomas Harris', 'An FBI trainee seeks help from a brilliant serial killer. This catalog entry presents a concise, professional overview with consistent metadata and clean formatting for modern readers.', 'Thriller', 'placeholder.jpg', 0, 1416, 4.5, '2025-08-16 14:56:54'),
(28, 'A Game of Thrones', 'George R.R. Martin', 'Noble houses vie for power amid looming winter. This catalog entry presents a concise, professional overview with consistent metadata and clean formatting for modern readers.', 'Fantasy', 'placeholder.jpg', 0, 1383, 3.8, '2025-08-16 14:56:54'),
(29, 'The Count of Monte Cristo', 'Alexandre Dumas', 'A wronged man seeks elaborate revenge and justice. This catalog entry presents a concise, professional overview with consistent metadata and clean formatting for modern readers.', 'Classic', 'placeholder.jpg', 0, 1953, 4.4, '2025-08-16 14:56:54'),
(30, 'The Odyssey', 'Homer', 'Epic poem of Odysseus\' long journey home. This catalog entry presents a concise, professional overview with consistent metadata and clean formatting for modern readers.', 'Classic', 'placeholder.jpg', 0, 652, 4.4, '2025-08-16 14:56:54'),
(31, 'The Brothers Karamazov', 'Fyodor Dostoevsky', 'A profound novel of faith, doubt, and patricide. This catalog entry presents a concise, professional overview with consistent metadata and clean formatting for modern readers.', 'Classic', 'placeholder.jpg', 0, 1853, 3.9, '2025-08-16 14:56:54'),
(32, 'The Divine Comedy', 'Dante Alighieri', 'An epic journey through Hell, Purgatory, and Heaven. This catalog entry presents a concise, professional overview with consistent metadata and clean formatting for modern readers.', 'Poetry', 'placeholder.jpg', 0, 846, 4.0, '2025-08-16 14:56:54'),
(33, 'The Grapes of Wrath', 'John Steinbeck', 'A family\'s struggle during the Great Depression. This catalog entry presents a concise, professional overview with consistent metadata and clean formatting for modern readers.', 'Historical Fiction', 'placeholder.jpg', 0, 1145, 3.7, '2025-08-16 14:56:54'),
(34, 'The Wind-Up Bird Chronicle', 'Haruki Murakami', 'A surreal odyssey through loss and memory. This catalog entry presents a concise, professional overview with consistent metadata and clean formatting for modern readers.', 'Fiction', 'placeholder.jpg', 0, 1935, 4.0, '2025-08-16 14:56:54'),
(35, 'The Girl on the Train', 'Paula Hawkins', 'A commuter becomes entangled in a missing-person case. This catalog entry presents a concise, professional overview with consistent metadata and clean formatting for modern readers.', 'Thriller', 'placeholder.jpg', 0, 366, 4.4, '2025-08-16 14:56:54'),
(36, 'The Time Traveler\'s Wife', 'Audrey Niffenegger', 'A love story complicated by involuntary time travel. This catalog entry presents a concise, professional overview with consistent metadata and clean formatting for modern readers.', 'Romance', 'placeholder.jpg', 0, 1132, 4.7, '2025-08-16 14:56:54'),
(37, 'The Subtle Art of Not Giving a F*ck', 'Mark Manson', 'A counterintuitive approach to living a good life. This catalog entry presents a concise, professional overview with consistent metadata and clean formatting for modern readers.', 'Self-Help', 'placeholder.jpg', 0, 440, 4.1, '2025-08-16 14:56:54'),
(38, 'The Fault in Our Stars', 'John Green', 'Teens with cancer find love and meaning. This catalog entry presents a concise, professional overview with consistent metadata and clean formatting for modern readers.', 'Young Adult', 'placeholder.jpg', 0, 1350, 4.0, '2025-08-16 14:56:54'),
(39, 'Beloved', 'Toni Morrison', 'A haunted mother confronts slavery\'s scars. This catalog entry presents a concise, professional overview with consistent metadata and clean formatting for modern readers.', 'Fiction', 'placeholder.jpg', 0, 1393, 3.8, '2025-08-16 14:56:54'),
(40, 'The Shadow of the Wind', 'Carlos Ruiz Zafón', 'A hidden book draws a boy into a literary mystery. This catalog entry presents a concise, professional overview with consistent metadata and clean formatting for modern readers.', 'Mystery', 'placeholder.jpg', 0, 1855, 4.8, '2025-08-16 14:56:55'),
(41, 'Cloud Atlas', 'David Mitchell', 'Interwoven stories echo across centuries. This catalog entry presents a concise, professional overview with consistent metadata and clean formatting for modern readers.', 'Fiction', 'placeholder.jpg', 0, 1359, 3.6, '2025-08-16 14:56:55'),
(42, 'The Handmaid\'s Tale', 'Margaret Atwood', 'Women are forced into reproductive servitude. This catalog entry presents a concise, professional overview with consistent metadata and clean formatting for modern readers.', 'Dystopian', 'placeholder.jpg', 0, 1306, 4.4, '2025-08-16 14:56:55'),
(43, 'Station Eleven', 'Emily St. John Mandel', 'A troupe preserves art after a pandemic collapse. This catalog entry presents a concise, professional overview with consistent metadata and clean formatting for modern readers.', 'Dystopian', 'station-eleven.jpeg', 1, 1959, 4.6, '2025-08-16 14:56:55'),
(44, 'The Goldfinch', 'Donna Tartt', 'A stolen painting haunts a boy into adulthood. This catalog entry presents a concise, professional overview with consistent metadata and clean formatting for modern readers.', 'Fiction', 'placeholder.jpg', 0, 470, 4.6, '2025-08-16 14:56:55'),
(45, 'The Secret History', 'Donna Tartt', 'A tight-knit group of students conceal a crime. This catalog entry presents a concise, professional overview with consistent metadata and clean formatting for modern readers.', 'Mystery', 'placeholder.jpg', 0, 104, 3.8, '2025-08-16 14:56:55'),
(46, 'The Pillars of the Earth', 'Ken Follett', 'Cathedral building amid intrigue in medieval England. This catalog entry presents a concise, professional overview with consistent metadata and clean formatting for modern readers.', 'Historical Fiction', 'placeholder.jpg', 0, 1750, 4.6, '2025-08-16 14:56:55'),
(47, 'Shōgun', 'James Clavell', 'An Englishman is drawn into samurai politics in Japan. This catalog entry presents a concise, professional overview with consistent metadata and clean formatting for modern readers.', 'Historical Fiction', 'placeholder.jpg', 0, 1824, 4.4, '2025-08-16 14:56:55'),
(48, 'The Power of Habit', 'Charles Duhigg', 'Why habits form and how to change them. This catalog entry presents a concise, professional overview with consistent metadata and clean formatting for modern readers.', 'Nonfiction', 'placeholder.jpg', 0, 1436, 4.0, '2025-08-16 14:56:55'),
(49, 'Man\'s Search for Meaning', 'Viktor E. Frankl', 'Finding purpose through suffering and choice. This catalog entry presents a concise, professional overview with consistent metadata and clean formatting for modern readers.', 'Nonfiction', 'placeholder.jpg', 0, 312, 4.4, '2025-08-16 14:56:55'),
(50, 'The Night Watchman', 'Louise Erdrich', 'A vivid tale of reservation life and activism. This catalog entry presents a concise, professional overview with consistent metadata and clean formatting for modern readers.', 'Historical Fiction', 'placeholder.jpg', 1, 1547, 4.7, '2025-08-16 14:56:55');

-- --------------------------------------------------------

--
-- Table structure for table `book_genres`
--

CREATE TABLE `book_genres` (
  `book_id` int(11) UNSIGNED NOT NULL,
  `genre_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `book_genres`
--

INSERT INTO `book_genres` (`book_id`, `genre_id`) VALUES
(1, 1),
(1, 16),
(1, 12),
(2, 2),
(2, 7),
(2, 12),
(3, 3),
(3, 10),
(3, 8),
(4, 4),
(4, 17),
(4, 15),
(5, 5),
(5, 14),
(5, 12),
(6, 6),
(6, 3),
(6, 10),
(7, 7),
(7, 16),
(7, 15),
(8, 8),
(8, 18),
(8, 3),
(9, 9),
(9, 5),
(9, 3),
(10, 10),
(10, 4),
(10, 19),
(11, 4),
(11, 2),
(11, 16),
(12, 2),
(12, 5),
(12, 19),
(13, 3),
(13, 15),
(13, 20),
(14, 8),
(14, 11),
(14, 1),
(15, 9),
(15, 10),
(15, 6),
(16, 2),
(16, 13),
(16, 20),
(17, 4),
(17, 12),
(17, 9),
(18, 5),
(18, 14),
(18, 9),
(19, 6),
(19, 17),
(19, 8),
(20, 9),
(20, 4),
(20, 18),
(21, 3),
(21, 9),
(21, 1),
(22, 1),
(22, 12),
(22, 5),
(23, 1),
(23, 19),
(23, 13),
(24, 13),
(24, 12),
(24, 5),
(25, 1),
(25, 6),
(25, 5),
(26, 8),
(26, 20),
(26, 13),
(27, 4),
(27, 15),
(27, 9),
(28, 2),
(28, 18),
(28, 12),
(29, 1),
(29, 19),
(29, 8),
(30, 1),
(30, 14),
(30, 5),
(31, 1),
(31, 4),
(31, 3),
(32, 16),
(32, 1),
(32, 20),
(33, 8),
(33, 7),
(33, 17),
(34, 1),
(34, 1),
(34, 17),
(35, 4),
(35, 12),
(35, 5),
(36, 6),
(36, 7),
(36, 16),
(37, 10),
(37, 12),
(37, 1),
(38, 12),
(38, 18),
(38, 2),
(39, 1),
(39, 14),
(39, 16),
(40, 11),
(40, 6),
(40, 14),
(41, 1),
(41, 15),
(41, 16),
(42, 9),
(42, 3),
(42, 18),
(43, 9),
(43, 16),
(43, 20),
(44, 1),
(44, 18),
(44, 3),
(45, 11),
(45, 16),
(45, 8),
(46, 8),
(46, 10),
(46, 1),
(47, 8),
(47, 2),
(47, 7),
(48, 7),
(48, 10),
(48, 4),
(49, 7),
(49, 1),
(49, 8),
(50, 8),
(50, 12),
(50, 10);

-- --------------------------------------------------------

--
-- Table structure for table `chapters`
--

CREATE TABLE `chapters` (
  `id` int(11) UNSIGNED NOT NULL,
  `book_id` int(11) UNSIGNED NOT NULL,
  `chapter_number` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `release_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `chapters`
--

INSERT INTO `chapters` (`id`, `book_id`, `chapter_number`, `title`, `release_date`) VALUES
(1, 1, 1, 'Chapter 1', '2024-11-06'),
(2, 1, 2, 'Chapter 2', '2024-08-10'),
(3, 1, 3, 'Chapter 3', '2025-04-10'),
(4, 2, 1, 'Chapter 1', '2025-07-27'),
(5, 2, 2, 'Chapter 2', '2024-12-13'),
(6, 2, 3, 'Chapter 3', '2025-06-27'),
(7, 3, 1, 'Chapter 1', '2024-10-15'),
(8, 3, 2, 'Chapter 2', '2024-12-29'),
(9, 3, 3, 'Chapter 3', '2024-10-16'),
(10, 4, 1, 'Chapter 1', '2025-02-20'),
(11, 4, 2, 'Chapter 2', '2025-05-10'),
(12, 4, 3, 'Chapter 3', '2024-09-23'),
(13, 5, 1, 'Chapter 1', '2024-12-25'),
(14, 5, 2, 'Chapter 2', '2024-10-08'),
(15, 5, 3, 'Chapter 3', '2025-01-12'),
(16, 6, 1, 'Chapter 1', '2025-05-11'),
(17, 6, 2, 'Chapter 2', '2025-06-27'),
(18, 6, 3, 'Chapter 3', '2024-11-17'),
(19, 7, 1, 'Chapter 1', '2024-11-07'),
(20, 7, 2, 'Chapter 2', '2024-11-17'),
(21, 7, 3, 'Chapter 3', '2025-04-28'),
(22, 8, 1, 'Chapter 1', '2025-02-08'),
(23, 8, 2, 'Chapter 2', '2025-02-07'),
(24, 8, 3, 'Chapter 3', '2024-07-29'),
(25, 9, 1, 'Chapter 1', '2024-09-09'),
(26, 9, 2, 'Chapter 2', '2025-05-22'),
(27, 9, 3, 'Chapter 3', '2025-04-07'),
(28, 10, 1, 'Chapter 1', '2025-05-07'),
(29, 10, 2, 'Chapter 2', '2024-09-18'),
(30, 10, 3, 'Chapter 3', '2024-11-26'),
(31, 11, 1, 'Chapter 1', '2025-07-02'),
(32, 11, 2, 'Chapter 2', '2024-12-08'),
(33, 11, 3, 'Chapter 3', '2024-12-22'),
(34, 12, 1, 'Chapter 1', '2025-03-18'),
(35, 12, 2, 'Chapter 2', '2024-10-07'),
(36, 12, 3, 'Chapter 3', '2025-07-08'),
(37, 13, 1, 'Chapter 1', '2024-12-17'),
(38, 13, 2, 'Chapter 2', '2025-07-17'),
(39, 13, 3, 'Chapter 3', '2025-07-07'),
(40, 14, 1, 'Chapter 1', '2024-10-12'),
(41, 14, 2, 'Chapter 2', '2024-10-26'),
(42, 14, 3, 'Chapter 3', '2024-07-23'),
(43, 15, 1, 'Chapter 1', '2024-12-18'),
(44, 15, 2, 'Chapter 2', '2024-10-17'),
(45, 15, 3, 'Chapter 3', '2024-09-06'),
(46, 16, 1, 'Chapter 1', '2025-02-11'),
(47, 16, 2, 'Chapter 2', '2024-08-05'),
(48, 16, 3, 'Chapter 3', '2025-06-23'),
(49, 17, 1, 'Chapter 1', '2024-08-08'),
(50, 17, 2, 'Chapter 2', '2024-12-24'),
(51, 17, 3, 'Chapter 3', '2024-12-24'),
(52, 18, 1, 'Chapter 1', '2025-03-14'),
(53, 18, 2, 'Chapter 2', '2025-01-19'),
(54, 18, 3, 'Chapter 3', '2025-01-08'),
(55, 19, 1, 'Chapter 1', '2024-08-23'),
(56, 19, 2, 'Chapter 2', '2024-10-03'),
(57, 19, 3, 'Chapter 3', '2025-07-10'),
(58, 20, 1, 'Chapter 1', '2024-09-08'),
(59, 20, 2, 'Chapter 2', '2025-02-15'),
(60, 20, 3, 'Chapter 3', '2025-07-03'),
(61, 21, 1, 'Chapter 1', '2025-06-25'),
(62, 21, 2, 'Chapter 2', '2024-10-11'),
(63, 21, 3, 'Chapter 3', '2024-08-31'),
(64, 22, 1, 'Chapter 1', '2025-02-28'),
(65, 22, 2, 'Chapter 2', '2024-10-23'),
(66, 22, 3, 'Chapter 3', '2025-01-25'),
(67, 23, 1, 'Chapter 1', '2025-02-18'),
(68, 23, 2, 'Chapter 2', '2025-06-01'),
(69, 23, 3, 'Chapter 3', '2024-08-27'),
(70, 24, 1, 'Chapter 1', '2024-07-23'),
(71, 24, 2, 'Chapter 2', '2024-08-20'),
(72, 24, 3, 'Chapter 3', '2024-11-09'),
(73, 25, 1, 'Chapter 1', '2025-05-05'),
(74, 25, 2, 'Chapter 2', '2025-04-18'),
(75, 25, 3, 'Chapter 3', '2025-02-12'),
(76, 26, 1, 'Chapter 1', '2024-11-30'),
(77, 26, 2, 'Chapter 2', '2025-04-29'),
(78, 26, 3, 'Chapter 3', '2025-04-12'),
(79, 27, 1, 'Chapter 1', '2025-05-18'),
(80, 27, 2, 'Chapter 2', '2025-06-27'),
(81, 27, 3, 'Chapter 3', '2025-03-07'),
(82, 28, 1, 'Chapter 1', '2025-06-15'),
(83, 28, 2, 'Chapter 2', '2024-11-19'),
(84, 28, 3, 'Chapter 3', '2024-11-02'),
(85, 29, 1, 'Chapter 1', '2024-11-09'),
(86, 29, 2, 'Chapter 2', '2025-07-17'),
(87, 29, 3, 'Chapter 3', '2024-09-01'),
(88, 30, 1, 'Chapter 1', '2025-05-14'),
(89, 30, 2, 'Chapter 2', '2025-05-05'),
(90, 30, 3, 'Chapter 3', '2024-08-16'),
(91, 31, 1, 'Chapter 1', '2025-05-13'),
(92, 31, 2, 'Chapter 2', '2024-08-01'),
(93, 31, 3, 'Chapter 3', '2024-12-24'),
(94, 32, 1, 'Chapter 1', '2025-04-08'),
(95, 32, 2, 'Chapter 2', '2024-11-05'),
(96, 32, 3, 'Chapter 3', '2025-04-05'),
(97, 33, 1, 'Chapter 1', '2025-03-14'),
(98, 33, 2, 'Chapter 2', '2025-01-22'),
(99, 33, 3, 'Chapter 3', '2024-11-21'),
(100, 34, 1, 'Chapter 1', '2025-03-30'),
(101, 34, 2, 'Chapter 2', '2025-07-10'),
(102, 34, 3, 'Chapter 3', '2024-09-11'),
(103, 35, 1, 'Chapter 1', '2024-07-11'),
(104, 35, 2, 'Chapter 2', '2025-05-15'),
(105, 35, 3, 'Chapter 3', '2025-03-19'),
(106, 36, 1, 'Chapter 1', '2025-04-14'),
(107, 36, 2, 'Chapter 2', '2024-12-18'),
(108, 36, 3, 'Chapter 3', '2025-02-08'),
(109, 37, 1, 'Chapter 1', '2025-01-05'),
(110, 37, 2, 'Chapter 2', '2025-07-09'),
(111, 37, 3, 'Chapter 3', '2025-01-15'),
(112, 38, 1, 'Chapter 1', '2025-01-26'),
(113, 38, 2, 'Chapter 2', '2025-04-13'),
(114, 38, 3, 'Chapter 3', '2025-07-22'),
(115, 39, 1, 'Chapter 1', '2025-05-27'),
(116, 39, 2, 'Chapter 2', '2025-07-17'),
(117, 39, 3, 'Chapter 3', '2025-03-12'),
(118, 40, 1, 'Chapter 1', '2024-12-07'),
(119, 40, 2, 'Chapter 2', '2024-08-14'),
(120, 40, 3, 'Chapter 3', '2025-05-26'),
(121, 41, 1, 'Chapter 1', '2024-12-08'),
(122, 41, 2, 'Chapter 2', '2024-12-19'),
(123, 41, 3, 'Chapter 3', '2024-09-24'),
(124, 42, 1, 'Chapter 1', '2025-04-17'),
(125, 42, 2, 'Chapter 2', '2025-05-21'),
(126, 42, 3, 'Chapter 3', '2024-10-29'),
(127, 43, 1, 'Chapter 1', '2024-09-28'),
(128, 43, 2, 'Chapter 2', '2024-11-08'),
(129, 43, 3, 'Chapter 3', '2025-01-01'),
(130, 44, 1, 'Chapter 1', '2025-04-05'),
(131, 44, 2, 'Chapter 2', '2025-01-03'),
(132, 44, 3, 'Chapter 3', '2024-09-12'),
(133, 45, 1, 'Chapter 1', '2024-12-14'),
(134, 45, 2, 'Chapter 2', '2025-07-04'),
(135, 45, 3, 'Chapter 3', '2025-06-10'),
(136, 46, 1, 'Chapter 1', '2024-11-23'),
(137, 46, 2, 'Chapter 2', '2024-10-04'),
(138, 46, 3, 'Chapter 3', '2024-11-04'),
(139, 47, 1, 'Chapter 1', '2024-12-29'),
(140, 47, 2, 'Chapter 2', '2025-08-05'),
(141, 47, 3, 'Chapter 3', '2024-09-25'),
(142, 48, 1, 'Chapter 1', '2024-11-09'),
(143, 48, 2, 'Chapter 2', '2024-10-31'),
(144, 48, 3, 'Chapter 3', '2024-11-19'),
(145, 49, 1, 'Chapter 1', '2024-11-19'),
(146, 49, 2, 'Chapter 2', '2024-10-26'),
(147, 49, 3, 'Chapter 3', '2025-07-26'),
(148, 50, 1, 'Chapter 1', '2024-07-19'),
(149, 50, 2, 'Chapter 2', '2025-07-28'),
(150, 50, 3, 'Chapter 3', '2025-02-04');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) UNSIGNED NOT NULL,
  `book_id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `comment` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `book_id`, `user_id`, `username`, `comment`, `created_at`) VALUES
(1, 1, 4, 'Reader123', 'A bit slow but worth it.', '2025-08-16 14:56:59'),
(2, 1, 4, 'Reader123', 'A bit slow but worth it.', '2025-08-16 14:56:59'),
(3, 3, 4, 'PageTurner', 'Loved this!', '2025-08-16 14:56:59'),
(4, 3, 4, 'LitLover', 'Loved this!', '2025-08-16 14:56:59'),
(5, 4, 4, 'Reader123', 'A bit slow but worth it.', '2025-08-16 14:56:59'),
(6, 4, 4, 'Reader123', 'Couldn’t put it down.', '2025-08-16 14:56:59'),
(7, 5, 4, 'PageTurner', 'Interesting characters.', '2025-08-16 14:56:59'),
(8, 5, 4, 'BookFan', 'Interesting characters.', '2025-08-16 14:56:59'),
(9, 9, 4, 'BookFan', 'Couldn’t put it down.', '2025-08-16 14:56:59'),
(10, 9, 4, 'BookFan', 'Loved this!', '2025-08-16 14:56:59'),
(11, 10, 4, 'PageTurner', 'Interesting characters.', '2025-08-16 14:56:59'),
(12, 10, 4, 'BookFan', 'A bit slow but worth it.', '2025-08-16 14:56:59'),
(13, 12, 4, 'PageTurner', 'A bit slow but worth it.', '2025-08-16 14:56:59'),
(14, 13, 4, 'Reader123', 'Loved this!', '2025-08-16 14:57:00'),
(15, 13, 4, 'LitLover', 'A bit slow but worth it.', '2025-08-16 14:57:00'),
(16, 15, 4, 'BookFan', 'Loved this!', '2025-08-16 14:57:00'),
(17, 15, 4, 'LitLover', 'Loved this!', '2025-08-16 14:57:00'),
(18, 16, 4, 'Reader123', 'Couldn’t put it down.', '2025-08-16 14:57:00'),
(19, 17, 4, 'PageTurner', 'Interesting characters.', '2025-08-16 14:57:00'),
(20, 20, 4, 'PageTurner', 'Interesting characters.', '2025-08-16 14:57:00'),
(21, 20, 4, 'BookFan', 'Interesting characters.', '2025-08-16 14:57:00'),
(22, 21, 4, 'PageTurner', 'A bit slow but worth it.', '2025-08-16 14:57:00'),
(23, 21, 4, 'BookFan', 'Loved this!', '2025-08-16 14:57:00'),
(24, 24, 4, 'PageTurner', 'Loved this!', '2025-08-16 14:57:00'),
(25, 24, 4, 'PageTurner', 'Interesting characters.', '2025-08-16 14:57:00'),
(26, 29, 4, 'LitLover', 'Couldn’t put it down.', '2025-08-16 14:57:01'),
(27, 31, 4, 'BookFan', 'A bit slow but worth it.', '2025-08-16 14:57:01'),
(28, 31, 4, 'PageTurner', 'A bit slow but worth it.', '2025-08-16 14:57:01'),
(29, 32, 4, 'BookFan', 'Interesting characters.', '2025-08-16 14:57:01'),
(30, 32, 4, 'LitLover', 'A bit slow but worth it.', '2025-08-16 14:57:01'),
(31, 33, 4, 'BookFan', 'Couldn’t put it down.', '2025-08-16 14:57:01'),
(32, 34, 4, 'Reader123', 'Loved this!', '2025-08-16 14:57:01'),
(33, 34, 4, 'PageTurner', 'Loved this!', '2025-08-16 14:57:01'),
(34, 35, 4, 'LitLover', 'Loved this!', '2025-08-16 14:57:01'),
(35, 37, 4, 'LitLover', 'Loved this!', '2025-08-16 14:57:01'),
(36, 38, 4, 'PageTurner', 'Couldn’t put it down.', '2025-08-16 14:57:01'),
(37, 41, 4, 'Reader123', 'Interesting characters.', '2025-08-16 14:57:01'),
(38, 43, 4, 'BookFan', 'Interesting characters.', '2025-08-16 14:57:01'),
(39, 43, 4, 'Reader123', 'Loved this!', '2025-08-16 14:57:01'),
(40, 46, 4, 'BookFan', 'Interesting characters.', '2025-08-16 14:57:01'),
(41, 47, 4, 'BookFan', 'Loved this!', '2025-08-16 14:57:01'),
(42, 47, 4, 'PageTurner', 'Loved this!', '2025-08-16 14:57:01'),
(43, 49, 4, 'Reader123', 'A bit slow but worth it.', '2025-08-16 14:57:01'),
(44, 49, 4, 'PageTurner', 'Interesting characters.', '2025-08-16 14:57:01'),
(45, 40, 5, NULL, 'why\r\n', '2025-08-17 07:25:55'),
(46, 40, 5, NULL, 'hello', '2025-08-17 07:26:00'),
(47, 41, 6, NULL, 'wdawda', '2025-08-17 09:27:41'),
(48, 41, 6, NULL, 'awdadawd', '2025-08-17 09:27:44'),
(49, 41, 6, NULL, 'awdadada', '2025-08-17 09:27:47'),
(50, 49, 7, NULL, 'awdad', '2025-08-17 10:04:18'),
(51, 40, 5, NULL, 'sefsfsfe', '2025-08-17 13:22:51');

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`id`, `name`) VALUES
(1, 'Classic'),
(2, 'Fantasy'),
(3, 'Science Fiction'),
(4, 'Thriller'),
(5, 'Memoir'),
(6, 'Romance'),
(7, 'Nonfiction'),
(8, 'Historical Fiction'),
(9, 'Dystopian'),
(10, 'Self-Help'),
(11, 'Mystery'),
(12, 'Young Adult'),
(13, 'Horror'),
(14, 'Adventure'),
(15, 'Philosophy'),
(16, 'Poetry'),
(17, 'Biography'),
(18, 'Children'),
(19, 'Crime'),
(20, 'Drama');

-- --------------------------------------------------------

--
-- Table structure for table `library`
--

CREATE TABLE `library` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `book_id` int(10) UNSIGNED NOT NULL,
  `status` enum('reading','plan_to_read','completed') DEFAULT 'plan_to_read',
  `added_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `library`
--

INSERT INTO `library` (`id`, `user_id`, `book_id`, `status`, `added_at`) VALUES
(7, 5, 9, 'plan_to_read', '2025-08-17 04:49:38'),
(9, 5, 36, 'plan_to_read', '2025-08-17 06:30:36'),
(10, 5, 26, 'completed', '2025-08-17 06:38:15'),
(13, 5, 40, 'plan_to_read', '2025-08-17 07:25:24'),
(14, 5, 23, 'plan_to_read', '2025-08-17 13:28:01'),
(16, 5, 5, 'reading', '2025-08-17 13:28:13'),
(17, 5, 18, 'reading', '2025-08-17 13:28:18'),
(18, 5, 33, 'plan_to_read', '2025-08-17 13:28:24');

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `book_id` int(11) UNSIGNED NOT NULL,
  `rating` tinyint(4) NOT NULL CHECK (`rating` between 1 and 5),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`id`, `user_id`, `book_id`, `rating`, `created_at`) VALUES
(1, 4, 44, 2, '2025-08-16 16:05:28'),
(6, 5, 50, 2, '2025-08-17 05:10:29'),
(12, 5, 44, 3, '2025-08-16 17:32:27'),
(20, 5, 41, 4, '2025-08-17 05:59:59'),
(23, 5, 36, 2, '2025-08-17 06:30:35');

-- --------------------------------------------------------

--
-- Table structure for table `read_history`
--

CREATE TABLE `read_history` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `book_id` int(11) UNSIGNED NOT NULL,
  `chapter_id` int(11) DEFAULT NULL,
  `last_read_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(255) NOT NULL,
  `bio` text DEFAULT NULL,
  `is_premium` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `avatar` varchar(255) DEFAULT 'assets/default-profile.png',
  `profile_pic` varchar(255) DEFAULT 'assets/default-profile.png'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `bio`, `is_premium`, `created_at`, `avatar`, `profile_pic`) VALUES
(1, 'admin', 'admin@example.com', 'admin123', NULL, 1, '2025-08-16 14:56:52', 'assets/default-profile.png', 'assets/default-profile.png'),
(2, 'user1', 'user1@example.com', 'user123', NULL, 1, '2025-08-16 14:56:52', 'assets/default-profile.png', 'assets/default-profile.png'),
(3, 'user2', 'user2@example.com', 'user123', NULL, 0, '2025-08-16 14:56:52', 'assets/default-profile.png', 'assets/default-profile.png'),
(4, 'Guest', '', '', '<br />\r\n<b>Warning</b>:  Undefined variable $user in <b>C:\\xampp\\htdocs\\book_tune_ready\\edit_profile.php</b> on line <b>2</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\xampp\\htdocs\\book_tune_ready\\edit_profile.php</b> on line <b>2</b><br />', 0, '2025-08-16 14:57:28', 'assets/default-profile.png', 'assets/default-profile.png'),
(5, 'uwais', '', '$2y$10$UlZ9puIJbdzSboZgXEmUre4YoNW9c9TSsYHJvb9vZPLOEeMypTqyu', '', 0, '2025-08-16 16:19:46', 'assets/default-profile.png', 'assets/default-profile.png'),
(6, 'nubahan', 'nubhan@gmail.com', '$2y$10$h1dpREXPCf0MvjlTw4EXoO.RhG4DTQWxPWeCUBJd0zta.y3xgT2mq', NULL, 0, '2025-08-17 09:17:45', 'assets/default-profile.png', 'assets/default-profile.png'),
(7, 'awdwad', 'myalienbp@gmail.com', '$2y$10$vvgAlaZzJhZzXuM6sqdw7engepo3lP/iub5e/AP49pH.TS6V/TSSy', NULL, 1, '2025-08-17 09:51:06', 'assets/default-profile.png', 'assets/default-profile.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book_genres`
--
ALTER TABLE `book_genres`
  ADD KEY `book_idx` (`book_id`),
  ADD KEY `genre_idx` (`genre_id`);

--
-- Indexes for table `chapters`
--
ALTER TABLE `chapters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book_id_idx` (`book_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comment_book_idx` (`book_id`),
  ADD KEY `fk_comments_user` (`user_id`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `library`
--
ALTER TABLE `library`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_user_book` (`user_id`,`book_id`),
  ADD KEY `fk_library_book` (`book_id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_user_book` (`user_id`,`book_id`),
  ADD KEY `ratings_book_fk` (`book_id`);

--
-- Indexes for table `read_history`
--
ALTER TABLE `read_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rh_user_idx` (`user_id`),
  ADD KEY `rh_book_idx` (`book_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `chapters`
--
ALTER TABLE `chapters`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `library`
--
ALTER TABLE `library`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `read_history`
--
ALTER TABLE `read_history`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `book_genres`
--
ALTER TABLE `book_genres`
  ADD CONSTRAINT `book_genres_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `book_genres_ibfk_2` FOREIGN KEY (`genre_id`) REFERENCES `genres` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `chapters`
--
ALTER TABLE `chapters`
  ADD CONSTRAINT `chapters_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_comments_book` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_comments_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `library`
--
ALTER TABLE `library`
  ADD CONSTRAINT `fk_library_book` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_library_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ratings`
--
ALTER TABLE `ratings`
  ADD CONSTRAINT `ratings_book_fk` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ratings_user_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
