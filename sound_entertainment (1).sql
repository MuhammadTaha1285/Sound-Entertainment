-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 14, 2026 at 08:04 AM
-- Server version: 10.11.16-MariaDB
-- PHP Version: 8.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sound_entertainment`
--

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE `albums` (
  `id` int(11) NOT NULL,
  `album_name` varchar(150) NOT NULL,
  `release_year` year(4) DEFAULT NULL,
  `cover_image` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`id`, `album_name`, `release_year`, `cover_image`, `description`, `created_at`) VALUES
(1, 'English Songs', '2026', 'uploads/albums/d7557ba10c90ca65.jpg', '\"2026 English Vibes – The Ultimate Collection\"\r\nStep into the sound of 2026 with a fresh mix of chart-topping English hits, soulful melodies, and modern beats. Perfect for late-night drives, chill sessions, and non-stop energy. Press play and feel the rhythm.', '2026-11-13 07:44:17'),
(2, 'Qawali', '2026', 'uploads/albums/403ed141ad6ec276.jpg', 'Shahenshah-e-Qawwali Ustad Nusrat Fateh Ali Khan ki rooh ko chu lene wali aur lazawal qawalliyon ka ek khaas majmua. Ishq-e-Haqiqi, ishq-e-majazi aur sufiyaana kalam ka woh jaadu jo aaj bhi dilon par raaj karta hai. Aankhein band karein aur suron ke is samandar mein kho jayein.', '2026-11-13 07:50:40');

-- --------------------------------------------------------

--
-- Table structure for table `artists`
--

CREATE TABLE `artists` (
  `id` int(11) NOT NULL,
  `artist_name` varchar(150) NOT NULL,
  `biography` text DEFAULT NULL,
  `artist_image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `artists`
--

INSERT INTO `artists` (`id`, `artist_name`, `biography`, `artist_image`, `created_at`) VALUES
(1, 'Anuv Jain', 'Anuv Jain is a popular Indian independent singer, songwriter, and composer known for his heartfelt, acoustic driven music that focuses on themes of love, longing, and heartbreak.', 'uploads/artists/4e8a9c2e4162d491.jpg', '2026-11-11 06:59:17'),
(2, 'Ed Sheeran', 'Ed Sheeran (born Edward Christopher Sheeran on February 17, 1991) is a renowned English singer songwriter. Known for his genre crossing style blending pop, folk, rock, and hip hop, he is one of the best selling music artists of all time.', 'uploads/artists/d20f1ce72d81f49a.jpg', '2026-11-11 07:58:03'),
(3, 'Ali Sethi', 'Ali Sethi (born July 2, 1984) is a Pakistani-American singer, songwriter, composer, and author based in New York', 'uploads/artists/43396925ee2b54d0.jpg', '2026-11-11 08:18:43'),
(4, 'Arijit Singh', 'Arijit Singh is an acclaimed Indian playback singer, composer, and music producer born on April 25, 1987, in Jiaganj, Murshidabad, West Bengal, India.', 'uploads/artists/2f5ca6e88b9fa8b0.jpg', '2026-11-11 08:19:45'),
(5, 'Kaifi Khalil', 'Kaifi Khalil is a Pakistani singer songwriter and composer born on September 2, 1996, in Karachi, Pakistan.', 'uploads/artists/6fad667293db5baa.jpg', '2026-11-11 08:20:35'),
(6, 'Akhil Sachdeva', 'Akhil Sachdeva is an Indian singer, lyricist, and music composer known for his work in Bollywood films and independent music.', 'uploads/artists/d66a70f196e6bd97.jpg', '2026-11-11 08:21:13'),
(7, 'Jasleen Royal', 'Jasleen Royal (born Jasleen Kaur Royal on July 8, 1991) is an Indian singer, songwriter, and composer.', 'uploads/artists/3ebbc27992c900de.jpg', '2026-11-11 08:21:54'),
(8, 'Aur', 'Usama Ali, Ahad Khan, and Raffey Anwar are the three members of AUR, a chart-topping Pakistani R&B and hip-hop trio from Karachi', 'uploads/artists/6d211df77585753d.jpg', '2026-11-11 08:23:31'),
(9, 'Hasan Raheem', 'Hasan Raheem is a Pakistani singer, songwriter, rapper, and medical doctor.', 'uploads/artists/75c23909a6bea8a7.jpg', '2026-11-11 08:28:01'),
(10, 'Nusrat Fateh Ali Khan', 'Ustad Nusrat Fateh Ali Khan (October 13, 1948 – August 16, 1997) was a world-renowned Pakistani vocalist, musician, and composer widely celebrated as the \"Shahanshah-e-Qawwali\" (the King of Kings of Qawwali).', 'uploads/artists/64aabfab5001b31e.png', '2026-11-11 08:36:09');

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `id` int(11) NOT NULL,
  `genre_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`id`, `genre_name`) VALUES
(3, 'Classical'),
(8, 'Electronic'),
(7, 'Folk'),
(4, 'Hip Hop'),
(5, 'Jazz'),
(1, 'Pop'),
(9, 'Qawali'),
(2, 'Rock'),
(6, 'Romantic');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(11) NOT NULL,
  `language_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `language_name`) VALUES
(5, 'Arabic'),
(1, 'English'),
(3, 'Hindi'),
(6, 'Pashto'),
(4, 'Punjabi'),
(2, 'Urdu');

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `media_type` enum('music','video') NOT NULL,
  `album_id` int(11) DEFAULT NULL,
  `genre_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `release_year` year(4) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `file_path` varchar(255) NOT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `duration` varchar(20) DEFAULT NULL,
  `is_new` tinyint(1) DEFAULT 0,
  `status` enum('active','inactive') DEFAULT 'active',
  `views` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `title`, `media_type`, `album_id`, `genre_id`, `language_id`, `release_year`, `description`, `file_path`, `thumbnail`, `duration`, `is_new`, `status`, `views`, `created_at`) VALUES
(1, 'Sapphire (Official Music Video)', 'video', NULL, 4, 1, '2025', 'Sapphire is a cross cultural Punjabi pop song by English singer songwriter Ed Sheeran, released on June 5, 2025, as the third single from his eighth studio album, Play.', 'uploads/videos/2e27fd5457ad4cbc.mp4', 'uploads/thumbnails/4f927ba73e8eeb27.jpg', '3:04', 1, 'active', 3, '2026-11-11 08:00:23'),
(2, 'Heeriye', 'video', NULL, 6, 4, '2024', 'Heeriye is a beautiful romantic song filled with love and emotions. It features soothing vocals and a melodious musical arrangement. The song creates a dreamy and peaceful atmosphere. Its beautiful composition makes every moment special. Perfect for listeners who enjoy romantic and soulful music.', 'uploads/videos/a963af81f8ffe93c.mp4', 'uploads/thumbnails/89a6b2a89c87f85a.jpg', '3:15', 1, 'active', 0, '2026-11-11 08:43:42'),
(3, 'Pasoori', 'video', NULL, 7, 4, '2022', 'Pasoori is a unique musical masterpiece blending traditional and modern sounds. It features captivating vocals and energetic musical rhythms. The song brings a fresh and distinctive listening experience. Its catchy melody makes it memorable. Perfect for fans of fusion and contemporary music.', 'uploads/videos/0a64365abb887cd1.mp4', 'uploads/thumbnails/fa8eb2f7a5e49521.jpg', '3:44', 1, 'active', 1, '2026-11-11 08:45:51'),
(4, 'Apna Bana Le', 'video', NULL, 6, 3, '2022', 'Apna Bana Le is a soulful romantic song that beautifully expresses love. Its melodious vocals create a warm and emotional atmosphere. The music feels soft, peaceful, and relaxing. Every note adds charm to this beautiful composition. Perfect for romantic music lovers.', 'uploads/videos/054cc53c9d2d91ee.mp4', 'uploads/thumbnails/79d8b4f5ff09928c.jpg', '4:21', 1, 'active', 0, '2026-11-11 08:47:51'),
(5, 'Kesariya', 'video', NULL, 6, 3, '2022', 'Kesariya is a beautiful Bollywood romantic melody filled with magical emotions. It features mesmerizing vocals and a soothing musical arrangement. The song celebrates the feeling of love and togetherness. Its melody creates a dreamy atmosphere. A wonderful choice for romantic playlists.', 'uploads/videos/a4e2773bb8416cac.mp4', 'uploads/thumbnails/70bfaeb21e5555c3.jpg', '4:28', 1, 'active', 0, '2026-11-11 08:49:49'),
(6, 'Chaleya', 'video', NULL, 1, 2, '2023', 'Chaleya is an energetic and romantic Bollywood song. It combines smooth vocals with catchy musical beats. The melody creates a cheerful and refreshing atmosphere. Its rhythm makes it enjoyable to listen to anytime. Perfect for fans of modern romantic music.', 'uploads/videos/b0a4e793a4334d7d.mp4', 'uploads/thumbnails/cfdc9951e5aff8d3.jpg', '3:08', 1, 'active', 0, '2026-11-11 08:52:07'),
(7, 'Sajni', 'video', NULL, 1, 3, '2024', 'Sajni is a deeply emotional song with a beautiful melody. Its heartfelt vocals create a peaceful listening experience. The music expresses feelings of love and longing. Every moment of the song feels meaningful. Perfect for listeners who enjoy soulful music.', 'uploads/videos/4d3382e234bdf048.mp4', 'uploads/thumbnails/798bdb165a76a9b6.jpg', '2:26', 1, 'active', 0, '2026-11-11 08:55:16'),
(8, 'Husn', 'video', NULL, 1, 2, '2023', 'Husn is a beautiful indie song with a soft and emotional sound. It features soothing vocals and gentle acoustic melodies. The song creates a calm and dreamy atmosphere. Its composition connects deeply with listeners. Perfect for peaceful and relaxing moments.', 'uploads/videos/4fff7bce102cbfcb.mp4', 'uploads/thumbnails/693b043cc88e4fe7.jpg', '3:38', 1, 'active', 0, '2026-11-11 08:57:02'),
(9, 'O Maahi', 'video', NULL, 6, 3, '2023', 'O Maahi is a soulful romantic melody with beautiful vocals. Its musical arrangement creates a magical atmosphere. The song expresses deep feelings of love and connection. Every melody adds warmth to the listening experience. A perfect choice for romantic music lovers.', 'uploads/videos/3ea2c184614aa4bb.mp4', 'uploads/thumbnails/b0064cd76688cc15.jpg', '4:16', 1, 'active', 0, '2026-11-11 09:01:13'),
(10, 'Kahani Suno 2.0', 'video', NULL, 6, 2, '2021', 'Kahani Suno 2.0 is an emotional musical masterpiece. It features expressive vocals and beautiful acoustic sounds. The melody creates a deep connection with listeners. Its unique composition makes the song unforgettable. Perfect for fans of emotional and soulful music.', 'uploads/videos/88ccf2e2ad47ddea.mp4', 'uploads/thumbnails/4b1616d63091eb63.jpg', '2:54', 1, 'active', 2, '2026-11-11 09:14:41'),
(11, 'Tera Ban Jaunga', 'video', NULL, 6, 3, '2019', 'Tera Ban Jaunga is a beautiful romantic song about love and commitment. It features melodious vocals and soothing background music. The song creates a warm and emotional feeling. Its lyrics and melody make it truly memorable. Perfect for romantic playlists.', 'uploads/videos/f276f1c9f9d9fb47.mp4', 'uploads/thumbnails/769a29e539253d24.jpg', '3:57', 1, 'active', 0, '2026-11-11 09:18:41'),
(12, 'Ranjha', 'video', NULL, 6, 4, '2021', 'Ranjha is a touching romantic song filled with powerful emotions. It features heartfelt vocals and beautiful musical arrangements. The melody creates a cinematic listening experience. Its emotional atmosphere makes it special. Perfect for listeners who love meaningful music.', 'uploads/videos/c02cddb9ec65db24.mp4', 'uploads/thumbnails/144eb70d6e8725f0.jpg', '3:48', 1, 'active', 1, '2026-11-11 09:21:54'),
(13, 'Tujhe Kitna Chahne Lage', 'video', NULL, 6, 3, '2019', 'This song beautifully captures the feeling of deep love and affection. It features soulful vocals and a memorable melody. The music creates a romantic and emotional atmosphere. Its beautiful composition touches the heart. A perfect addition to any love song playlist.', 'uploads/videos/a2e731591a9412d2.mp4', 'uploads/thumbnails/35a9eb39ad2460c2.jpg', '4:45', 1, 'active', 1, '2026-11-11 09:23:44'),
(14, 'Khairiyat', 'video', NULL, 6, 2, '2019', 'Khairiyat is a heart-touching song filled with beautiful emotions. It features soothing vocals and a peaceful melody. The music expresses care, love, and longing. Its gentle composition creates a memorable experience. Perfect for fans of emotional Bollywood music.', 'uploads/videos/9b8855e99db09bdb.mp4', 'uploads/thumbnails/c253574393d55b98.jpg', '4:54', 1, 'active', 0, '2026-11-11 09:25:17'),
(15, 'Baarishein', 'video', NULL, 6, 3, '2019', 'Baarishein is a soothing indie song with a beautiful acoustic sound. Its gentle vocals create a peaceful atmosphere. The melody feels especially beautiful on rainy days. Its relaxing composition makes it enjoyable anytime. Perfect for listeners who love soft music.', 'uploads/videos/955161373956ffe0.mp4', 'uploads/thumbnails/529212ddb9d2a17c.jpg', '3:27', 1, 'active', 0, '2026-11-11 09:26:40'),
(16, 'Tu Hai Kahan', 'video', NULL, 4, 2, '2023', 'Tu Hai Kahan is a soulful song filled with nostalgia and emotions. It features captivating vocals and beautiful melodies. The music creates a deep and memorable atmosphere. Its unique sound connects with listeners. Perfect for fans of modern and emotional music.', 'uploads/videos/12c2425cd3f97813.mp4', 'uploads/thumbnails/b9a7055aa960b5d1.jpg', '4:24', 1, 'active', 0, '2026-11-11 09:28:04'),
(17, 'Bad Habits', 'video', NULL, 1, 1, '2022', 'Lacy sings about \"biting his tongue\" and lacking the confidence to speak up or make a move when he liked someone who was also interested in him right place, wrong time.', 'uploads/videos/9b9af41417b233d1.mp4', 'uploads/thumbnails/3c3f42deb5cbc22b.png', '3:44', 1, 'active', 2, '2026-11-11 16:24:27'),
(18, 'Photograph', 'video', NULL, 1, 1, '2014', '\"Photograph\" by Ed Sheeran is an acoustic ballad that explores long-distance love, cherished memories, and how photographs help preserve moments through physical separation.', 'uploads/videos/0694c776dfe1c658.mp4', 'uploads/thumbnails/be3f73e24b27f4c6.png', '4:28', 1, 'active', 1, '2026-11-11 16:28:53'),
(19, 'Thinking Out Loud', 'video', NULL, 2, 1, '2014', 'Thinking Out Loud” is a romantic blue-eyed soul and soft-rock ballad by English singer-songwriter Ed Sheeran, released on September 24, 2014, as part of his second studio album.', 'uploads/videos/0b3ffefe92f9ba08.mp4', 'uploads/thumbnails/341f2637f5b951c5.jpg', '4:44', 1, 'active', 2, '2026-11-11 16:31:40'),
(21, 'Perfect', 'video', NULL, 6, 1, '2017', '\"Perfect\" by Ed Sheeran is a romantic acoustic pop ballad from his 2017 album ÷ (Divide), written about his wife, Cherry Seaborn. The song celebrates lifelong love and commitment, becoming a modern wedding staple.', 'uploads/videos/221d6129fd9083d0.mp4', 'uploads/thumbnails/7b908b788593972a.jpg', '4:23', 1, 'active', 4, '2026-11-11 16:37:13'),
(22, 'Beautiful People', 'video', NULL, 1, 1, '2025', '\"Beautiful People\" most commonly refers to the hit 2019 song by Ed Sheeran featuring Khalid, though the title is also shared by prominent songs from Marilyn Manson and David Guetta & Sia.', 'uploads/videos/242ddacf7d80b27c.mp4', 'uploads/thumbnails/bc3907edf37e7b94.jpg', '3:44', 1, 'active', 5, '2026-11-11 16:42:56'),
(23, 'Castle on the Hill', 'video', NULL, 2, 1, '2017', 'The name Castle Hill refers to several notable historic landmarks, archaeological sites, and natural areas around the world.', 'uploads/videos/cd330b83cc07ee28.mp4', 'uploads/thumbnails/3a99e8ade1d7fcb7.jpg', '4:42', 1, 'active', 0, '2026-11-12 05:45:07'),
(24, 'All of the Starts', 'video', NULL, 1, 1, '2014', '\"All the Stars\" is a hit single by American rapper Kendrick Lamar and R&B singer SZA, released on January 4, 2018, as the lead single for the Marvel Studios film Black Panther.', 'uploads/videos/02a01ef27bfa846f.mp4', 'uploads/thumbnails/9490d8382dd69aef.jpg', '4:09', 1, 'active', 0, '2026-11-12 05:52:55'),
(25, 'Mansoob', 'video', NULL, 1, 2, '2023', 'Mansoob (مَنْصُوب) is a soulful Urdu heartbreak ballad released on June 7, 2023, written, composed, and performed by Pakistani singer-songwriter Kaifi Khalil.', 'uploads/videos/b3d003339fb8e3d7.mp4', 'uploads/thumbnails/2b3a1b8f76e8a24d.jpg', '2:42', 1, 'active', 0, '2026-11-12 05:58:15'),
(26, 'Jurmana', 'video', NULL, 1, 2, '2024', '\"Jurmana\" by Kaifi Khalil is an Urdu heartbreak ballad exploring grief, loneliness, and the emotional toll of love, with the title translating to \"penalty\" or \"fine\".', 'uploads/videos/5b596e0ab10e533d.mp4', 'uploads/thumbnails/ed5bd6fcee559381.jpg', '2:46', 1, 'active', 0, '2026-11-12 06:01:33'),
(27, 'Muntazir', 'video', NULL, 1, 2, '2026', 'The Urdu word \"Muntazir\" (منتظر) translates to \"waiting\" or \"one who waits.\" Each of the four songs uses this central theme to explore different emotions around love, longing, and separation.', 'uploads/videos/ff2c0fcc2fb70a24.mp4', 'uploads/thumbnails/427d30001f7e5693.jpg', '2:55', 1, 'active', 0, '2026-11-12 06:05:50'),
(28, 'Daaman', 'video', NULL, 1, 2, '2025', '\"Daaman\" is an emotional heartbreak single by Pakistani singer-songwriter Kaifi Khalil, released on June 7, 2025.', 'uploads/videos/587c9fd96a053c13.mp4', 'uploads/thumbnails/12be43b9befaf7a9.jpg', '2:41', 1, 'active', 0, '2026-11-12 06:12:36'),
(29, 'KHAIR', 'video', NULL, 1, 2, '2025', 'A soulful, emotionally resonant track by Pakistani singer-songwriter Kaifi Khalil. The song deals with deep longing, pain, sacrifice, and the emotional weight of being away from or losing a beloved in a foreign or distant place (\"in this foreign land away from home\"). It emphasizes emotional richness and staying true to one\'s heart despite hardships.', 'uploads/videos/c4ec5a5867176a3a.mp4', 'uploads/thumbnails/a07225e0972286f7.jpg', '3:18', 1, 'active', 0, '2026-11-12 06:25:26'),
(30, 'Zolfe Nooda\'n', 'video', NULL, 1, 2, '2022', 'Zolfe Nooda\'n is a Balochi song by Pakistani singer-songwriter Kaifi Khalil, released on August 15, 2022.', 'uploads/videos/c7744a3ab6c7bb4e.mp4', 'uploads/thumbnails/8b21b35db0548007.jpg', '3:27', 1, 'active', 1, '2026-11-12 06:32:44'),
(31, 'Kana Yaari', 'video', NULL, 1, 2, '2022', '\"Kana Yaari\" is a popular Balochi , Urdu-language pop and dancehall-blend single released on January 19, 2022.', 'uploads/videos/d12593e4035d8508.mp4', 'uploads/thumbnails/837897b1511d96c6.jpg', '3:52', 1, 'active', 0, '2026-11-12 06:45:29'),
(32, 'Radha', 'video', NULL, 1, 2, '2024', '\"Radha\" is a collaborative single by Pakistani R&B and indie-pop artist Hasan Raheem and music producer Umair.', 'uploads/videos/515e7a0089369cf2.mp4', 'uploads/thumbnails/f26a49d2aa27c257.jpg', '3:35', 1, 'active', 0, '2026-11-12 06:58:38'),
(33, 'ROOP', 'video', NULL, 1, 4, '2024', '\"ROOP\" is a popular bilingual love song released on December 13, 2024, by Pakistani artists NAYEL and Hasan Raheem.', 'uploads/videos/1c0d6d9ba07cac4f.mp4', 'uploads/thumbnails/5f523959380c8d09.jpg', '2:51', 1, 'active', 0, '2026-11-12 07:03:10'),
(34, 'MEMORIES', 'video', NULL, 1, 2, '2019', '\"Memories\" is a hit 2019 pop-rock song by Maroon 5, released on September 20, 2019, and later featured on their seventh studio album Jordi (2021).', 'uploads/videos/3f0df2a02281418b.mp4', 'uploads/thumbnails/8926e2781dcfdf2d.jpg', '2:49', 1, 'active', 0, '2026-11-12 07:08:14'),
(35, 'Rangeen', 'video', NULL, 4, 2, '2026', '\"Rangeen\" is a hit R&B, pop, and hip-hop fusion track by Pakistani singer-songwriter Hasan Raheem and featured artist Izz Chughtai, with music produced by Umair, released as part of Coke Studio Nu.WAV in September 2026.', 'uploads/videos/d852b9d2e6bf74ad.mp4', 'uploads/thumbnails/fe413b6d3af05b4b.jpg', NULL, 1, 'active', 0, '2026-11-12 07:12:27'),
(36, 'Joona', 'video', NULL, 1, 2, '2021', '\"Joona\" is a popular upbeat romantic pop single by Pakistani artist Hasan Raheem, featuring producer Abdullah Kasumbi, released in January 2021.', 'uploads/videos/5fa7a9e4e50b403e.mp4', 'uploads/thumbnails/82078f4499cceb53.jpg', '3:15', 1, 'active', 0, '2026-11-12 07:24:51'),
(37, 'Faltu Pyar', 'video', NULL, 1, 2, '2022', '\"Faltu Pyar\" is a collaborative Pakistani pop and reggaeton-inspired single by Hasan Raheem, Natasha Noorani, and Talal Qureshi, released on June 12, 2022. ', 'uploads/videos/81d453d97821f5b7.mp4', 'uploads/thumbnails/0ea06c2b6fee2ec9.jpg', '4:18', 1, 'active', 0, '2026-11-12 07:26:41'),
(38, 'Bewajah', 'video', NULL, 1, 2, '2026', '\"Bewajah\" is a melancholic alternative/pop single by Pakistani artist Hasan Raheem, produced in collaboration with Umair (Umair Tahir).', 'uploads/videos/a8fc4b0b43575a2f.mp4', 'uploads/thumbnails/a2e812bf71c1351d.jpg', '3:39', 1, 'active', 0, '2026-11-12 07:33:30'),
(39, 'Saada', 'video', NULL, 1, 2, '2020', '\"Saada\" is a breakthrough R&B and indie-soul single by Pakistani artist Hasan Raheem, featuring producer Abdullah Kasumbi, released in July 2020.', 'uploads/videos/2011499b7c6f7822.mp4', 'uploads/thumbnails/e11ef2ad150b7b40.jpg', '4:09', 1, 'active', 0, '2026-11-12 07:37:12'),
(40, 'Din Shagna Da', 'video', NULL, 1, 4, '2017', '\"Din Shagna Da\" is an iconic, soulful Punjabi wedding song that celebrates the auspicious arrival of the wedding day, the beauty of the bride, and her emotional transition as she leaves her parental home to start a new chapter with her partner.', 'uploads/videos/b0597f07236dca21.mp4', 'uploads/thumbnails/1f87c6198a8f6f87.jpg', '3:35', 1, 'active', 1, '2026-11-12 07:47:00'),
(41, 'Sahiba', 'video', NULL, 6, 3, '2023', '\"Sahiba\" is a popular, soft-romantic Hindi indie song by singer-songwriter Aditya Rikhari.', 'uploads/videos/4a706264c8b7c20c.mp4', 'uploads/thumbnails/02f4dd839a324d63.jpg', '4:15', 1, 'active', 0, '2026-11-12 07:49:33'),
(42, 'Sang Rahiyo', 'video', NULL, 6, 3, '2020', '\"Sang Rahiyo\" is a soulful Hindi romantic track released on September 10, 2020, by singer-songwriter Jasleen Royal.', 'uploads/videos/3fff6de24ea8a5ce.mp4', 'uploads/thumbnails/aabb0805e6030b43.jpg', '3:25', 1, 'active', 0, '2026-11-12 07:51:40'),
(43, 'Heeriye', 'video', NULL, 6, 3, '2023', '\"Heeriye\" is a popular romantic pop song released in 2023 by music composer and singer Jasleen Royal, featuring vocals by Arijit Singh.', 'uploads/videos/5c6135615e300134.mp4', 'uploads/thumbnails/431045c9da7ac654.jpg', '3:14', 1, 'active', 1, '2026-11-12 07:53:36'),
(44, 'Kaise Yeh Pyaar', 'video', 2, 6, 2, '1997', '\"Kaisa Yeh Pyar Hai\" (often remembered as \"Koi Jaane Koi Na Jaane\" or with the refrain \"Kaisa Yeh Pyar Hai, Allah Allah\") is a iconic Sufi-infused romantic song from the 1997 Bollywood film Aur Pyaar Ho Gaya.', 'uploads/videos/e1f1f8e992a7c0ec.mp4', 'uploads/thumbnails/d45aa9207e99448d.jpg', '7:18', 1, 'active', 0, '2026-11-13 06:58:20'),
(45, 'Sochta Houn', 'video', 2, 6, 3, '2018', 'Sochta hoon ke woh kitne masoom the\" is a famous lyric from the song \"Dekhte Dekhte\", featured in the 2018 Bollywood film Batti Gul Meter Chalu.', 'uploads/videos/a9f09479d3e31e31.mp4', 'uploads/thumbnails/756ffd8659d76e74.jpg', '4:34', 1, 'active', 1, '2026-11-13 07:02:33'),
(46, 'Mera Rashke Qamar', 'video', 2, 9, 2, '2017', 'Mere Rashke Qamar\" (میرے رشکِ قمر) translates literally to \"O, the envy of the moon\"—describing a beloved whose beauty and radiance are so breathtaking that even the moon feels jealous.', 'uploads/videos/500255b99e02ded2.mp4', 'uploads/thumbnails/c2b780e5a4f44400.jpg', '2:30', 1, 'active', 1, '2026-11-13 07:04:15'),
(47, 'Treat You Better', 'music', 1, 1, 1, '2016', 'A romantic pop song about care, affection, and relationships.', 'uploads/music/009cd382946c2601.mp3', 'uploads/thumbnails/12e56a2bc056b483.jpg', '3:07', 1, 'active', 0, '2026-11-13 07:12:52'),
(48, 'Memories', 'music', 1, 1, 1, '2019', 'A heartfelt song about remembering special people and moments.', 'uploads/music/18565230a7eeea76.mp3', 'uploads/thumbnails/68fbc462b8e7e571.jpg', '3:09', 1, 'active', 0, '2026-11-13 07:22:02'),
(49, 'Let Her Go', 'music', NULL, 2, 1, '2012', 'An emotional song about love, memories, and losing someone special.', 'uploads/music/720586a1ecd10279.mp3', 'uploads/thumbnails/64190fdbece67444.jpg', '4:12', 1, 'active', 0, '2026-11-13 07:24:42'),
(50, 'Hymn For The Weekend', 'music', 1, 2, 1, '2016', 'An uplifting song with vibrant sounds and positive energy.', 'uploads/music/c969ba929919b4b1.mp3', 'uploads/thumbnails/74ed39695c29ada6.jpg', '4:18', 1, 'active', 0, '2026-11-13 07:27:35'),
(51, 'Faded', 'music', 1, 7, 1, '2015', 'An emotional electronic music track with beautiful melodies.', 'uploads/music/5013449e98e68c65.mp3', 'uploads/thumbnails/c9d56b74e5153d20.jpg', '3:32', 1, 'active', 1, '2026-11-13 07:31:46'),
(52, 'Counting Stars', 'music', 1, 8, 1, '2013', 'An inspirational song about dreams, ambitions, and life.', 'uploads/music/14471b56f22ecffb.mp3', 'uploads/thumbnails/984641d698b5afbf.jpg', '4:17', 1, 'active', 1, '2026-11-13 07:34:16'),
(53, 'Closer', 'music', 1, 8, 1, '2016', 'An upbeat electronic pop song about memories and relationships۔', 'uploads/music/1aeb674838f2001d.mp3', 'uploads/thumbnails/2bb2f56de7243db1.jpg', '4:15', 1, 'active', 1, '2026-11-13 07:37:08'),
(54, 'Blinding Lights', 'music', 1, 4, 1, '2019', 'A popular upbeat song with energetic music and a retro-inspired sound.', 'uploads/music/bf465aff6d4aa328.mp3', 'uploads/thumbnails/668ffd9907c17b93.jpg', '3:22', 1, 'active', 1, '2026-11-13 07:39:48');

-- --------------------------------------------------------

--
-- Table structure for table `media_artists`
--

CREATE TABLE `media_artists` (
  `media_id` int(11) NOT NULL,
  `artist_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_artists`
--

INSERT INTO `media_artists` (`media_id`, `artist_id`) VALUES
(1, 2),
(2, 4),
(3, 3),
(4, 4),
(5, 4),
(6, 4),
(7, 4),
(8, 1),
(9, 4),
(10, 5),
(11, 6),
(12, 7),
(13, 4),
(14, 4),
(15, 1),
(16, 8),
(17, 2),
(18, 2),
(19, 2),
(21, 2),
(22, 2),
(23, 2),
(24, 2),
(25, 5),
(26, 5),
(27, 5),
(28, 5),
(29, 5),
(30, 5),
(31, 5),
(32, 9),
(33, 9),
(34, 9),
(35, 9),
(36, 9),
(37, 9),
(38, 9),
(39, 9),
(40, 7),
(41, 7),
(42, 7),
(43, 7),
(44, 10),
(45, 10),
(46, 10),
(47, 2),
(48, 1),
(49, 2),
(50, 1),
(51, 5),
(52, 6),
(53, 7),
(54, 4);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `media_id` int(11) NOT NULL,
  `review` text DEFAULT NULL,
  `rating` tinyint(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `user_id`, `media_id`, `review`, `rating`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'I really Like this website. This website is totally free.', 5, '2026-11-11 08:03:10', '2026-11-11 08:03:10'),
(2, 2, 1, 'I like this song and website.', 3, '2026-11-11 08:06:38', '2026-11-11 08:06:38'),
(3, 3, 30, 'I like this song Thanks.', 3, '2026-11-12 06:49:00', '2026-11-12 06:49:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(150) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','user') DEFAULT 'user',
  `status` enum('active','blocked') DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `address`, `phone`, `email`, `username`, `password`, `role`, `status`, `created_at`) VALUES
(1, 'Administrator', 'Admin Office', '0000000000', 'admin@example.com', 'admin', '$2y$12$y1Q8Lt0.exRHLZWT/osqxOLeV.tsE6dFZyGnkfpC0Nnki0x3fDfwK', 'admin', 'active', '2026-11-11 06:51:48'),
(2, 'Muhammad Taha', 'Ghulshan e Iqbal', '03092114567', 'm63676451@gmail.com', 'taha128579', '$2y$10$Dntyz4k8FMKtzZm6CQYoiuNLeFyeeVvaUftv6fSe08OYKBIIC64Ry', 'user', 'active', '2026-11-11 08:05:48'),
(3, 'Muhummad Taha', 'Rehan Memorial Society', '03092119409', 'm63676458@gmail.com', 'taha', '$2y$12$hi2gx81rcgzsFUrxBxcVQ.MQqDUrdenHNipgvvjmJQpuubJRINKJe', 'user', 'active', '2026-11-11 16:01:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `artists`
--
ALTER TABLE `artists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `genre_name` (`genre_name`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `language_name` (`language_name`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `album_id` (`album_id`),
  ADD KEY `genre_id` (`genre_id`),
  ADD KEY `language_id` (`language_id`),
  ADD KEY `idx_media_type` (`media_type`),
  ADD KEY `idx_media_year` (`release_year`),
  ADD KEY `idx_media_status` (`status`),
  ADD KEY `idx_media_created` (`created_at`);

--
-- Indexes for table `media_artists`
--
ALTER TABLE `media_artists`
  ADD PRIMARY KEY (`media_id`,`artist_id`),
  ADD KEY `artist_id` (`artist_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_user_media` (`user_id`,`media_id`),
  ADD KEY `media_id` (`media_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `albums`
--
ALTER TABLE `albums`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `artists`
--
ALTER TABLE `artists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `media`
--
ALTER TABLE `media`
  ADD CONSTRAINT `media_ibfk_1` FOREIGN KEY (`album_id`) REFERENCES `albums` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `media_ibfk_2` FOREIGN KEY (`genre_id`) REFERENCES `genres` (`id`),
  ADD CONSTRAINT `media_ibfk_3` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`);

--
-- Constraints for table `media_artists`
--
ALTER TABLE `media_artists`
  ADD CONSTRAINT `media_artists_ibfk_1` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `media_artists_ibfk_2` FOREIGN KEY (`artist_id`) REFERENCES `artists` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
