-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 18, 2022 at 08:46 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sep490_jpd`
--

-- --------------------------------------------------------

--
-- Table structure for table `alphabet`
--

CREATE TABLE `alphabet` (
  `alphabetID` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `alphabet` varchar(255) NOT NULL,
  `pronounce` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `alphabet`
--

INSERT INTO `alphabet` (`alphabetID`, `type`, `alphabet`, `pronounce`) VALUES
(1, 'Hiragana', 'あ2', 'a2'),
(2, 'Katakana', 'ア', 'a');

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `AnswerID` int(11) NOT NULL,
  `QuestionID` int(11) NOT NULL,
  `Answer1` varchar(255) NOT NULL,
  `Answer2` varchar(255) NOT NULL,
  `Answer3` varchar(255) NOT NULL,
  `Answer4` varchar(255) NOT NULL,
  `isCorrect` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`AnswerID`, `QuestionID`, `Answer1`, `Answer2`, `Answer3`, `Answer4`, `isCorrect`) VALUES
(1, 1, 'Porsche', 'Bugatti', 'Koenigsegg', 'Lamborghini', 1),
(2, 2, 'Samsung', 'Apple', 'Xiaomi', 'Huawei', 3),
(3, 3, '3', '6', '5', '4', 3),
(4, 4, 'Uranus (sao Thiên Vương)', 'Jupiter (sao Mộc)', 'Saturn (sao Thổ)', 'Neptune (sao Hải Vương)', 2),
(5, 5, 'Australia', 'England', 'France', 'Italy', 1),
(6, 6, 'Hula', 'Cha cha cha', 'SamBa', 'Tango', 1),
(7, 7, 'がくこう', 'がっこう', 'かくこう', 'かっこう', 2),
(8, 8, 'けさ', 'いまばん', 'ゆうべ', 'こんばん', 4),
(9, 9, 'しんぶん', 'じんぶん', 'しんふん', 'じんふん', 1),
(10, 10, 'ごぜん', 'ごご', 'ごあと', 'ごこ', 2),
(11, 11, 'こえ', 'はな', 'かみ', 'みせ', 4),
(12, 12, 'ひとりで', 'いちひとで', 'いちにんで', 'いちじんで', 1),
(13, 13, 'のみます', 'たべます', 'すいます', 'みます', 4),
(14, 14, 'か', 'みず', 'こおり', 'うみ', 2),
(15, 15, 'たんじょうび', 'たんしょうにち', 'たんじょうひ', 'たんじょうにち', 1),
(16, 16, 'ごご', 'ごまえ', 'ごぜん', 'しょうまえ', 3),
(17, 17, 'おかさん', 'おかあさん', 'おばさん', 'おばあさん', 2),
(21, 1, 'a', 'c', 'f', 'd', 1),
(22, 2, 'dfd', 'bszdfgb', 'fsdfs', 'fdgs', 2),
(23, 4, 'hanh tinh 1', 'hanh tinh 4', 'hanh tinh 6', 'hanh tinh 12', 3),
(24, 2, 'dfd', 'bszdfgb', 'fsdfs', 'fdgs', 2),
(25, 2, 'dfd', 'bszdfgb', 'fsdfs', 'fdgs', 2),
(26, 2, 'dfd', 'bszdfgb', 'fsdfs', 'fdgs', 2);

-- --------------------------------------------------------

--
-- Table structure for table `forum_comment`
--

CREATE TABLE `forum_comment` (
  `comment_id` int(9) NOT NULL,
  `post_id` int(9) NOT NULL,
  `comment_content` varchar(500) NOT NULL,
  `userID` int(11) NOT NULL,
  `comment_date` datetime NOT NULL,
  `comment_edit_date` datetime NOT NULL,
  `comment_status` varchar(10) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `forum_comment`
--

INSERT INTO `forum_comment` (`comment_id`, `post_id`, `comment_content`, `userID`, `comment_date`, `comment_edit_date`, `comment_status`) VALUES
(3, 2, '1234', 4, '2022-11-10 09:10:46', '2022-11-15 20:14:10', 'active'),
(4, 2, 'hung', 1, '2022-11-10 09:15:23', '2022-11-15 20:14:10', 'disable'),
(5, 2, 'spam', 2, '2022-11-10 23:20:11', '2022-11-15 20:14:10', 'active'),
(7, 5, '1234', 4, '2022-11-15 06:51:47', '2022-11-15 20:14:10', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `forum_post`
--

CREATE TABLE `forum_post` (
  `post_id` int(9) NOT NULL,
  `topic_id` int(9) NOT NULL,
  `post_title` varchar(100) NOT NULL,
  `post_content` varchar(500) NOT NULL,
  `userID` int(11) NOT NULL,
  `post_date` datetime NOT NULL,
  `post_edit_date` datetime NOT NULL,
  `post_status` varchar(10) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `forum_post`
--

INSERT INTO `forum_post` (`post_id`, `topic_id`, `post_title`, `post_content`, `userID`, `post_date`, `post_edit_date`, `post_status`) VALUES
(2, 1, 'test', 'test', 1, '2022-11-10 09:10:13', '2022-11-15 20:13:06', 'active'),
(3, 2, '123', '123', 2, '2022-11-10 09:22:36', '2022-11-15 20:13:06', 'disable'),
(5, 2, '15 11', 'comment 15 11', 4, '2022-11-15 06:50:11', '2022-11-15 20:13:06', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `forum_report_comment`
--

CREATE TABLE `forum_report_comment` (
  `report_comment_id` int(9) NOT NULL,
  `user_report_id` int(11) NOT NULL,
  `report_comment_reason` varchar(500) NOT NULL,
  `comment_id` int(9) NOT NULL,
  `report_comment_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `forum_report_comment`
--

INSERT INTO `forum_report_comment` (`report_comment_id`, `user_report_id`, `report_comment_reason`, `comment_id`, `report_comment_date`) VALUES
(6, 1, '1234', 7, '2022-11-15 20:45:17');

-- --------------------------------------------------------

--
-- Table structure for table `forum_report_notification`
--

CREATE TABLE `forum_report_notification` (
  `report_notification_id` int(9) NOT NULL,
  `userID` int(11) NOT NULL,
  `report_notification_content` varchar(500) NOT NULL,
  `post_id` int(9) DEFAULT NULL,
  `comment_id` int(9) DEFAULT NULL,
  `report_notification_status` varchar(10) NOT NULL DEFAULT 'not read'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `forum_report_notification`
--

INSERT INTO `forum_report_notification` (`report_notification_id`, `userID`, `report_notification_content`, `post_id`, `comment_id`, `report_notification_status`) VALUES
(2, 2, 'spam', 3, NULL, 'read'),
(3, 2, 'spam', NULL, 5, 'read'),
(4, 2, 'spam', NULL, 5, 'read');

-- --------------------------------------------------------

--
-- Table structure for table `forum_report_post`
--

CREATE TABLE `forum_report_post` (
  `report_post_id` int(9) NOT NULL,
  `user_report_id` int(11) NOT NULL,
  `report_post_reason` varchar(500) NOT NULL,
  `post_id` int(9) NOT NULL,
  `report_post_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `forum_report_post`
--

INSERT INTO `forum_report_post` (`report_post_id`, `user_report_id`, `report_post_reason`, `post_id`, `report_post_date`) VALUES
(11, 1, '1234', 5, '2022-11-15 20:45:11');

-- --------------------------------------------------------

--
-- Table structure for table `forum_topic`
--

CREATE TABLE `forum_topic` (
  `topic_id` int(9) NOT NULL,
  `topic_name` varchar(100) NOT NULL,
  `topic_status` varchar(10) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `forum_topic`
--

INSERT INTO `forum_topic` (`topic_id`, `topic_name`, `topic_status`) VALUES
(1, 'Dịch', 'active'),
(2, 'Học Tiếng Nhật', 'active'),
(3, 'Du Học Nhật Bản', 'active'),
(4, 'Văn Hoá Nhật Bản', 'active'),
(5, 'Góc Chia Sẻ', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `grammar`
--

CREATE TABLE `grammar` (
  `grammarID` int(11) NOT NULL,
  `level` varchar(255) NOT NULL,
  `structure` varchar(255) NOT NULL,
  `use` varchar(255) NOT NULL,
  `example1` varchar(255) NOT NULL,
  `exampleM1` varchar(255) NOT NULL,
  `example2` varchar(255) NOT NULL,
  `exampleM2` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `grammar`
--

INSERT INTO `grammar` (`grammarID`, `level`, `structure`, `use`, `example1`, `exampleM1`, `example2`, `exampleM2`) VALUES
(2, 'N1', 'N1 + あっての + N2', 'Bởi vì có …/Sự tồn tại…không thể thiếu…', '健康な体あっての人生です。', '123', '私の幸せは家族あってのものだ', '123');

-- --------------------------------------------------------

--
-- Table structure for table `kanji`
--

CREATE TABLE `kanji` (
  `kanjiID` int(11) NOT NULL,
  `level` varchar(255) NOT NULL,
  `kanji` varchar(255) NOT NULL,
  `meaning` varchar(255) NOT NULL,
  `picture` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kanji`
--

INSERT INTO `kanji` (`kanjiID`, `level`, `kanji`, `meaning`, `picture`) VALUES
(2, 'N1', '前', 'tien', 'images\\avatar.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `level`
--

CREATE TABLE `level` (
  `level` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `level`
--

INSERT INTO `level` (`level`) VALUES
('N1'),
('N2'),
('N3'),
('N4'),
('N5');

-- --------------------------------------------------------

--
-- Table structure for table `levels`
--

CREATE TABLE `levels` (
  `LevelID` int(11) NOT NULL,
  `DESC` varchar(255) NOT NULL DEFAULT 'description of level'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `levels`
--

INSERT INTO `levels` (`LevelID`, `DESC`) VALUES
(1, 'N1'),
(2, 'N2'),
(3, 'N3'),
(4, 'N4'),
(5, 'N5'),
(6, 'test2'),
(7, 'test1');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `messageID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `chatContent` text NOT NULL,
  `time` datetime NOT NULL DEFAULT current_timestamp(),
  `sessionID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `notificationID` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `details` varchar(6000) NOT NULL,
  `time` datetime NOT NULL DEFAULT current_timestamp(),
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `userID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`notificationID`, `title`, `details`, `time`, `status`, `userID`) VALUES
(1, 'Thông báo mở website JPD', 'Website JPD chính thức được đưa vào hoạt động hôm nay! Người dùng bây giờ có thể truy cập vào hệ thống và sử dụng trang web của JPD.\r\nThân ái, JPD Team.', '2022-11-07 03:03:00', 0, 1),
(2, '10 11', '10 11', '2022-11-10 09:02:00', 0, 1),
(3, '1', '1', '2022-11-10 09:02:00', 0, 1),
(4, '2', '2', '2022-11-10 09:02:00', 0, 1),
(5, '3', '3', '2022-11-10 09:02:00', 0, 1),
(6, '4', '4', '2022-11-10 09:02:00', 0, 1),
(7, '5', '5', '2022-11-10 09:02:00', 0, 1),
(8, '66', '66', '2022-11-10 09:03:00', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `QuestionID` int(11) NOT NULL,
  `TagID` int(11) NOT NULL,
  `LevelID` int(11) NOT NULL,
  `Question` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`QuestionID`, `TagID`, `LevelID`, `Question`) VALUES
(1, 4, 5, 'Hãng xe bạn yêu thích nhất?'),
(2, 4, 5, 'Hãng điện thoại có danh số top đầu năm 2021?'),
(3, 3, 5, 'Bạn hãy cho biết có bao nhiêu loài chim trong bài hát \"Chim vành khuyên\"?'),
(4, 3, 5, 'Hành tinh nào lớn nhất trong hệ Mặt trời?'),
(5, 4, 4, 'Quốc gia nào sau đây có hơn 10.000 bãi biển?'),
(6, 3, 4, 'Vũ điệu truyền thống của đảo Hawaii là ?'),
(7, 4, 3, '先週の金曜日学校のとしょかんでレポートを書きました。'),
(8, 1, 5, '今晩いっしょにビールを飲みませんか。'),
(9, 1, 5, '新聞を読みます。それから、CDを聞きます。'),
(10, 1, 5, '学校は午後一時五十分からです。'),
(11, 1, 5, 'あの店で辞書を買いました。'),
(12, 1, 5, '来月一人で京都へ行きますか。'),
(13, 1, 5, 'よる時々ビデオを見ます。'),
(14, 1, 5, 'ちょっと休みませんか。水を飲みましょう。'),
(15, 1, 5, '誕生日は何月何日ですか。'),
(16, 1, 5, 'ロサンゼルスは今午前十一時です。'),
(17, 1, 5, 'いつお母さんに電話をかけますか。'),
(18, 3, 4, 'test question'),
(19, 1, 5, 'question demo');

-- --------------------------------------------------------

--
-- Table structure for table `quizs`
--

CREATE TABLE `quizs` (
  `QuizID` int(11) NOT NULL,
  `DESC` varchar(255) NOT NULL DEFAULT 'description about Quiz',
  `TestID` int(11) NOT NULL,
  `QuestionID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quizs`
--

INSERT INTO `quizs` (`QuizID`, `DESC`, `TestID`, `QuestionID`) VALUES
(1, 'demo', 1, 1),
(2, 'demo', 1, 2),
(3, 'demo1', 2, 1),
(4, 'demo1', 2, 2),
(5, 'demo1', 2, 3),
(6, 'demo', 1, 4),
(7, 'demo2', 3, 5),
(8, 'demo2', 3, 6),
(9, 'demo2', 3, 4),
(10, 'demo3', 4, 1),
(11, 'demo3', 4, 2),
(12, 'demo3', 4, 3),
(13, 'demo3', 4, 4),
(14, 'demo3', 4, 5),
(15, 'demo3', 4, 6),
(16, 'demo', 1, 7),
(17, 'demo2', 3, 7),
(18, 'demo4', 5, 8),
(19, 'demo4', 5, 9),
(20, 'demo4', 5, 10),
(21, 'demo4', 5, 11),
(22, 'demo4', 5, 12),
(23, 'demo4', 5, 13),
(24, 'demo4', 5, 14),
(25, 'demo4', 5, 15),
(26, 'demo4', 5, 16),
(27, 'demo4', 5, 17),
(28, 'demo5', 6, 18),
(29, 'demo6', 7, 17),
(33, 'demo7', 6, 18),
(35, 'demo8', 6, 19);

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE `result` (
  `ResultID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `TestID` int(11) NOT NULL,
  `timeBigin` datetime NOT NULL,
  `timeExpire` datetime NOT NULL,
  `Score` int(11) NOT NULL,
  `trueQuestion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `resultdetail`
--

CREATE TABLE `resultdetail` (
  `ResultDetailID` int(11) NOT NULL,
  `ResultID` int(11) NOT NULL,
  `Answer1` int(11) NOT NULL,
  `Answer2` int(11) NOT NULL,
  `Answer3` int(11) NOT NULL,
  `Answer4` int(11) NOT NULL,
  `Answer5` int(11) NOT NULL,
  `Answer6` int(11) NOT NULL,
  `Answer7` int(11) NOT NULL,
  `Answer8` int(11) NOT NULL,
  `Answer9` int(11) NOT NULL,
  `Answer10` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE `session` (
  `sessionID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `session`
--

INSERT INTO `session` (`sessionID`, `userID`, `status`) VALUES
(1, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `TagID` int(11) NOT NULL,
  `DESC` varchar(255) NOT NULL DEFAULT 'description of tags'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`TagID`, `DESC`) VALUES
(1, 'Kanji'),
(2, 'Grammar'),
(3, 'Listening'),
(4, 'Reading'),
(5, 'demo2'),
(6, 'demo7'),
(7, 'demo50');

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `TestID` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `TagID` int(11) NOT NULL,
  `LevelID` int(11) NOT NULL,
  `Duration` int(11) NOT NULL,
  `numberQuestion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`TestID`, `Name`, `TagID`, `LevelID`, `Duration`, `numberQuestion`) VALUES
(0, 'aszefga', 1, 2, 15, 10),
(1, 'Test01', 4, 5, 15, 10),
(2, 'Test02', 3, 5, 15, 10),
(3, 'Test03', 2, 5, 15, 10),
(4, 'Test04', 4, 4, 20, 10),
(5, 'Test01', 1, 5, 20, 10),
(6, '05112022', 1, 5, 15, 5),
(7, 'sdfaZsdf', 2, 3, 15, 10),
(8, 'aszefga', 1, 2, 15, 10),
(9, 'ngnxzrd', 1, 2, 15, 10),
(10, 'gfjhaszth5235', 3, 3, 15, 10),
(11, 'ngnxzrd', 1, 2, 15, 10);

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`type`) VALUES
('Hiragana'),
('Katakana');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userID` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userID`, `email`, `password`, `username`, `phone`, `avatar`, `role`) VALUES
(1, 'hung@gmail.com', '1234', 'Nguyen Quoc Hung', '0832643399', 'images\\avatar.jpg', 'Quản trị viên'),
(2, 'tam@gmail.com', '1234', 'Nguyen Thanh Tam', '1234', 'images\\practice.png', 'Quản lí nội dung'),
(3, 'tan@gmail.com', '1234', 'Nguyen Manh Tan', '1234', '', 'Người dùng'),
(4, 'sang@gmail.com', '1234', 'Nguyen Lam Sang 2', '12345', 'images\\avatar.jpg', 'Người dùng'),
(5, 'lan@gmail.com', '1234', 'Le Thi Thu Lan', '1234', '', 'Người dùng'),
(6, 'test@gmail.com', '1234', 'test', '1234', 'images\\testHandwrittenJapanese.jpg', 'Người dùng'),
(7, 'contentmanager@gmail.com', '1234', 'contentmanager', '', 'images\\user.png', 'Quản lí nội dung');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alphabet`
--
ALTER TABLE `alphabet`
  ADD PRIMARY KEY (`alphabetID`),
  ADD KEY `type` (`type`);

--
-- Indexes for table `answer`
--
ALTER TABLE `answer`
  ADD PRIMARY KEY (`AnswerID`),
  ADD KEY `QuestionID` (`QuestionID`);

--
-- Indexes for table `forum_comment`
--
ALTER TABLE `forum_comment`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `forum_comment_ibfk_1` (`userID`),
  ADD KEY `forum_comment_ibfk_2` (`post_id`);

--
-- Indexes for table `forum_post`
--
ALTER TABLE `forum_post`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `fk_topic_id` (`topic_id`),
  ADD KEY `fk_userID` (`userID`);

--
-- Indexes for table `forum_report_comment`
--
ALTER TABLE `forum_report_comment`
  ADD PRIMARY KEY (`report_comment_id`),
  ADD KEY `forum_report_comment_ibfk_1` (`comment_id`),
  ADD KEY `forum_report_comment_ibfk_2` (`user_report_id`);

--
-- Indexes for table `forum_report_notification`
--
ALTER TABLE `forum_report_notification`
  ADD PRIMARY KEY (`report_notification_id`),
  ADD KEY `userID` (`userID`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `comment_id` (`comment_id`);

--
-- Indexes for table `forum_report_post`
--
ALTER TABLE `forum_report_post`
  ADD PRIMARY KEY (`report_post_id`),
  ADD KEY `forum_report_post_ibfk_1` (`post_id`),
  ADD KEY `forum_report_post_ibfk_2` (`user_report_id`);

--
-- Indexes for table `forum_topic`
--
ALTER TABLE `forum_topic`
  ADD PRIMARY KEY (`topic_id`);

--
-- Indexes for table `grammar`
--
ALTER TABLE `grammar`
  ADD PRIMARY KEY (`grammarID`),
  ADD KEY `level` (`level`);

--
-- Indexes for table `kanji`
--
ALTER TABLE `kanji`
  ADD PRIMARY KEY (`kanjiID`),
  ADD KEY `level` (`level`);

--
-- Indexes for table `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`level`);

--
-- Indexes for table `levels`
--
ALTER TABLE `levels`
  ADD PRIMARY KEY (`LevelID`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`messageID`),
  ADD KEY `sessionID_FK_1` (`sessionID`),
  ADD KEY `usernameMessage_FK_1` (`userID`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`notificationID`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`QuestionID`),
  ADD KEY `LevelID` (`LevelID`),
  ADD KEY `TagID` (`TagID`);

--
-- Indexes for table `quizs`
--
ALTER TABLE `quizs`
  ADD PRIMARY KEY (`QuizID`),
  ADD KEY `QuestionID` (`QuestionID`),
  ADD KEY `TestID` (`TestID`);

--
-- Indexes for table `result`
--
ALTER TABLE `result`
  ADD PRIMARY KEY (`ResultID`),
  ADD KEY `TestID` (`TestID`),
  ADD KEY `UserID` (`UserID`);

--
-- Indexes for table `resultdetail`
--
ALTER TABLE `resultdetail`
  ADD PRIMARY KEY (`ResultDetailID`),
  ADD KEY `ResultID` (`ResultID`);

--
-- Indexes for table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`sessionID`),
  ADD KEY `userID` (`userID`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`TagID`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`TestID`),
  ADD KEY `TagID` (`TagID`),
  ADD KEY `LevelID` (`LevelID`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`type`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alphabet`
--
ALTER TABLE `alphabet`
  MODIFY `alphabetID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `answer`
--
ALTER TABLE `answer`
  MODIFY `AnswerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `forum_comment`
--
ALTER TABLE `forum_comment`
  MODIFY `comment_id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `forum_post`
--
ALTER TABLE `forum_post`
  MODIFY `post_id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `forum_report_comment`
--
ALTER TABLE `forum_report_comment`
  MODIFY `report_comment_id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `forum_report_notification`
--
ALTER TABLE `forum_report_notification`
  MODIFY `report_notification_id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `forum_report_post`
--
ALTER TABLE `forum_report_post`
  MODIFY `report_post_id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `forum_topic`
--
ALTER TABLE `forum_topic`
  MODIFY `topic_id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `grammar`
--
ALTER TABLE `grammar`
  MODIFY `grammarID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `kanji`
--
ALTER TABLE `kanji`
  MODIFY `kanjiID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `levels`
--
ALTER TABLE `levels`
  MODIFY `LevelID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `messageID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `notificationID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `QuestionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `quizs`
--
ALTER TABLE `quizs`
  MODIFY `QuizID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `result`
--
ALTER TABLE `result`
  MODIFY `ResultID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `resultdetail`
--
ALTER TABLE `resultdetail`
  MODIFY `ResultDetailID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `session`
--
ALTER TABLE `session`
  MODIFY `sessionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `TagID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
  MODIFY `TestID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `alphabet`
--
ALTER TABLE `alphabet`
  ADD CONSTRAINT `alphabet_ibfk_1` FOREIGN KEY (`type`) REFERENCES `type` (`type`);

--
-- Constraints for table `answer`
--
ALTER TABLE `answer`
  ADD CONSTRAINT `answer_ibfk_1` FOREIGN KEY (`QuestionID`) REFERENCES `questions` (`QuestionID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `forum_comment`
--
ALTER TABLE `forum_comment`
  ADD CONSTRAINT `forum_comment_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `forum_comment_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `forum_post` (`post_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `forum_post`
--
ALTER TABLE `forum_post`
  ADD CONSTRAINT `fk_topic_id` FOREIGN KEY (`topic_id`) REFERENCES `forum_topic` (`topic_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_userID` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `forum_report_comment`
--
ALTER TABLE `forum_report_comment`
  ADD CONSTRAINT `forum_report_comment_ibfk_1` FOREIGN KEY (`comment_id`) REFERENCES `forum_comment` (`comment_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `forum_report_comment_ibfk_2` FOREIGN KEY (`user_report_id`) REFERENCES `user` (`userID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `forum_report_notification`
--
ALTER TABLE `forum_report_notification`
  ADD CONSTRAINT `forum_report_notification_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `forum_report_notification_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `forum_post` (`post_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `forum_report_notification_ibfk_3` FOREIGN KEY (`comment_id`) REFERENCES `forum_comment` (`comment_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `forum_report_post`
--
ALTER TABLE `forum_report_post`
  ADD CONSTRAINT `forum_report_post_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `forum_post` (`post_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `forum_report_post_ibfk_2` FOREIGN KEY (`user_report_id`) REFERENCES `user` (`userID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `grammar`
--
ALTER TABLE `grammar`
  ADD CONSTRAINT `grammar_ibfk_1` FOREIGN KEY (`level`) REFERENCES `level` (`level`);

--
-- Constraints for table `kanji`
--
ALTER TABLE `kanji`
  ADD CONSTRAINT `kanji_ibfk_1` FOREIGN KEY (`level`) REFERENCES `level` (`level`);

--
-- Constraints for table `message`
--
ALTER TABLE `message`
  ADD CONSTRAINT `sessionID_FK_1` FOREIGN KEY (`sessionID`) REFERENCES `session` (`sessionID`),
  ADD CONSTRAINT `usernameMessage_FK_1` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`);

--
-- Constraints for table `notification`
--
ALTER TABLE `notification`
  ADD CONSTRAINT `userID_FK_1` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`);

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_ibfk_1` FOREIGN KEY (`LevelID`) REFERENCES `levels` (`LevelID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `questions_ibfk_2` FOREIGN KEY (`TagID`) REFERENCES `tags` (`TagID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `quizs`
--
ALTER TABLE `quizs`
  ADD CONSTRAINT `quizs_ibfk_1` FOREIGN KEY (`QuestionID`) REFERENCES `questions` (`QuestionID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `quizs_ibfk_2` FOREIGN KEY (`TestID`) REFERENCES `test` (`TestID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `result`
--
ALTER TABLE `result`
  ADD CONSTRAINT `result_ibfk_1` FOREIGN KEY (`TestID`) REFERENCES `test` (`TestID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `result_ibfk_2` FOREIGN KEY (`UserID`) REFERENCES `user` (`userID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `resultdetail`
--
ALTER TABLE `resultdetail`
  ADD CONSTRAINT `resultdetail_ibfk_1` FOREIGN KEY (`ResultID`) REFERENCES `result` (`ResultID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `session`
--
ALTER TABLE `session`
  ADD CONSTRAINT `session_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `test`
--
ALTER TABLE `test`
  ADD CONSTRAINT `test_ibfk_1` FOREIGN KEY (`TagID`) REFERENCES `tags` (`TagID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `test_ibfk_2` FOREIGN KEY (`LevelID`) REFERENCES `levels` (`LevelID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
