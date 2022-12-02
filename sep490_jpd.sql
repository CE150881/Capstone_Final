-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 02, 2022 at 08:32 AM
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

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `AnswerID` int(11) NOT NULL,
  `QuestionID` int(11) NOT NULL,
  `Answer` varchar(255) NOT NULL,
  `isCorrect` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `examplegrammar`
--

CREATE TABLE `examplegrammar` (
  `exampleID` int(11) NOT NULL,
  `grammarID` int(11) NOT NULL,
  `exJ` varchar(255) NOT NULL,
  `exV` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(1, 1, 'Tại buổi diễn thuyết hòa bình ngày hôm nay, thị trưởng Hiroshima - ông Matsui Kazumi đã tuyên bố vũ khí hạt nhân là “Cái ác tuyệt đối’. Hi vọng Thủ tướng Abe và Đại sứ Mỹ tại Nhật ông Roos cũng khắc ghi điều này. Ở giai đoạn xuất phát trên danh nghĩa người tiếp nối, chúng tôi cũng sẽ khắc sâu điều này vào trong tim.<br>Bạn tham khảo ạ.<br>', 2, '2022-12-01 12:08:20', '2022-12-01 12:08:20', 'active'),
(2, 1, 'Câu 心に傷みつけたい chẳng có nghĩa gì cả, chủ thớt viết sai chữ 傷. Câu đúng là 心に刻みつけたい。', 3, '2022-12-01 12:09:53', '2022-12-01 12:09:53', 'active'),
(3, 2, 'にえる<br>これはまだ煮えていない<br>', 2, '2022-12-01 12:10:54', '2022-12-01 12:10:54', 'active'),
(4, 2, 'nó còn phụ thuộc vào cách bạn làm món đó<br>nướng: まだ焼けてない<br>chiên: まだ揚げてない<br>còn gọi chung chung thì まだできてない<br>', 3, '2022-12-01 12:11:10', '2022-12-01 12:11:10', 'active'),
(5, 3, 'chỉ còn cách viết nhiều thôi bác. E thì lười nên cũng chỉ học nhìn mặt chữ :v', 2, '2022-12-01 12:15:48', '2022-12-01 12:15:48', 'active'),
(6, 3, 'mình cũng mù viết, nhưng có thể chia sẻ cách học viết của mình như sau:<br>mình học bộ thủ + nghĩa<br>sau đó mình luyện viết theo các chữ hán giống nhau:<br>Ví dụ1:<br>義: con cừu bị ngã vì chính NGHĨA<br>儀 : người nhân nghĩa tuân thủ lễ NGHI<br>犠: con bò vì nghĩa mà HY sinh<br>議: nói lời có nghĩa trong hội NGHỊ<br>Ví dụ 2:<br>識: Nói: tri thức<br>織: Nối: tổ chức<br>職: Nghe: công việc<br>Rảnh là mình viết, có ngày mình viết dày đặc 4 5 trang giấy A4 mà vẫn hay quên :v<br>Bạn tham khảo<br>', 3, '2022-12-01 12:16:21', '2022-12-01 12:16:21', 'active'),
(7, 4, '月末　từ  ngày 25 (28, hoặc ngày cuối cùng trong tháng, người Nhật còn nhầm)  đổ về cuối<br>下旬　từ ngày 21 đổ về cuối<br>上旬　từ ngày 1 đến 10 <br>', 1, '2022-12-01 12:17:31', '2022-12-01 12:17:31', 'active'),
(8, 4, '上旬：１～１０<br>中旬：１１～２０<br>下旬：２１～３０<br>月末：cuối tháng (tùy cảm giác của mổi người) ２７，２８，２９，３０。。。<br>', 3, '2022-12-01 12:18:15', '2022-12-01 12:18:15', 'active'),
(9, 5, 'thế thì đi qua yoko nhé, mình là lứa đi t7 đây. Cái này là ss tiếng nhật ở một tt khác gợi ý cho mình, nên mình ko tìm chỗ khác. Nch là quá trình xin giấy tờ thì nó cũng nhanh, tt cũng hỗ trợ nhiệt tình. Lúc làm hđ là bắt buộc cọc hơn chục tr, tuy nhiên sau khi có quyết định nhập học thì sẽ dùng tiền này để mua vé máy bay hoặc b lấy lại để tự mua.', 1, '2022-12-01 12:20:21', '2022-12-01 12:20:21', 'active'),
(10, 5, 'xét về mức uy tín á, thì mình đánh giá Esuhai cũng nhất nhì, Esuhai thì chỉ ngoài việc bay lâu hơn xí so với mấy trung tâm khác và trừ mấy cái đào tạo ko liên quan tiếng Nhật xàm xàm ra, thì mọi thứ đều ổn. Còn việc đào tạo tiếng Nhật thì rất okela. <br>Mình cũng đi Kỹ sư thông qua Esuhai, nên cũng nắm sơ sơ quy trình của họ.<br>', 3, '2022-12-01 12:20:42', '2022-12-01 12:20:42', 'active'),
(11, 6, 'Về cơ bản thì không cấm nhưng cũng loằng ngoằng nhỉ.', 1, '2022-12-01 12:21:35', '2022-12-01 12:21:35', 'active'),
(12, 6, 'Được nha bác, chỉ cần trường mới của bác cấp cho 在学証明書 nộp cho cục là oki·', 2, '2022-12-01 12:21:46', '2022-12-01 12:21:46', 'active');

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
(1, 1, 'Đoạn này câu cuối nên dịch như thế nào đây ạ =(((', '広島市の松井一美市長は今日の平和宣言で、核兵器は「絶対悪」と呼びかける。安倍首相もルース駐日米大使も肝に銘じてほしい。私たちも伝承者としての出発点に当たり、心に傷みつけたい。', 1, '2022-12-01 12:05:23', '2022-12-01 12:05:23', 'active'),
(2, 1, 'Chín', 'Từ chín trong Nấu chín đồ ăn hoặc đồ ăn này chưa chín thì dùng từ nào vậy ah?', 1, '2022-12-01 12:10:28', '2022-12-01 12:10:28', 'active'),
(3, 2, 'Viết chữ', 'Mn có cách nào học viết nhanh ko ạ. Trc giờ e toàn nhìn mặt chữ r đọc chứ ít viết lắm. <br>Nên giờ muốn viết để sau thi kiếm ít cái chứng chỉ cho tiện mà giờ viết đi viết lại k hiệu quả cho lắm toàn thiếu nét<br>', 1, '2022-12-01 12:11:56', '2022-12-01 12:11:56', 'active'),
(4, 2, '月末 hay 上旬', 'Cuối tháng thì dùng 月末 hay 上旬. 2 từ này khác nhau như nào ạ mn', 2, '2022-12-01 12:17:05', '2022-12-01 12:17:05', 'active'),
(5, 3, 'TRUNG TÂM ĐI NHẬT UY TÍN', 'Em đang muốn đi sang Nhật, mọi người cho em hỏi trước đó mọi người sang có thông qua trung tâm nào không ạ. <br>Review giúp em với ạ. Trung tâm nào uy tín ạ, chứ bạn em đi Hàn gặp trung tâm nó làm ăn hời hợt cả năm chưa bay được :((((<br>', 2, '2022-12-01 12:19:54', '2022-12-01 12:19:54', 'active'),
(6, 3, 'chuyển trường senmon', 'mình đang học năm nhất senmon , mà giờ muốn học hết năm nhất rồi chuyển qua trường khác học , thì có được k nhỉ', 3, '2022-12-01 12:21:15', '2022-12-01 12:21:15', 'active'),
(7, 1, 'test', 'test', 1, '2022-12-02 07:06:32', '2022-12-02 07:06:32', 'active'),
(8, 2, 'test 2', 'test 2', 1, '2022-12-02 08:40:45', '2022-12-02 08:40:45', 'active');

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
(1, 1, 'Có Bình Luận Mới', 1, NULL, 'read'),
(2, 1, 'Có Bình Luận Mới', 1, NULL, 'read'),
(3, 1, 'Có Bình Luận Mới', 2, NULL, 'read'),
(4, 1, 'Có Bình Luận Mới', 2, NULL, 'read'),
(5, 1, 'Có Bình Luận Mới', 3, NULL, 'read'),
(6, 1, 'Có Bình Luận Mới', 3, NULL, 'read'),
(7, 2, 'Có Bình Luận Mới', 4, NULL, 'not read'),
(8, 2, 'Có Bình Luận Mới', 4, NULL, 'not read'),
(9, 2, 'Có Bình Luận Mới', 5, NULL, 'not read'),
(10, 2, 'Có Bình Luận Mới', 5, NULL, 'not read'),
(11, 3, 'Có Bình Luận Mới', 6, NULL, 'read'),
(12, 3, 'Có Bình Luận Mới', 6, NULL, 'read');

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
(1, 1, 'test', 6, '2022-12-02 10:56:56');

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
  `levelID` int(11) NOT NULL,
  `structure` varchar(255) NOT NULL,
  `use` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `grammar`
--

INSERT INTO `grammar` (`grammarID`, `levelID`, `structure`, `use`) VALUES
(1, 1, 'test 1', 'test 1'),
(2, 1, 'test 2', 'test 2');

-- --------------------------------------------------------

--
-- Table structure for table `grammarhistory`
--

CREATE TABLE `grammarhistory` (
  `userID` int(11) NOT NULL,
  `grammarID` int(11) NOT NULL,
  `grammarHistoryStatus` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `grammarhistory`
--

INSERT INTO `grammarhistory` (`userID`, `grammarID`, `grammarHistoryStatus`) VALUES
(1, 2, 'read');

-- --------------------------------------------------------

--
-- Table structure for table `kanji`
--

CREATE TABLE `kanji` (
  `kanjiID` int(11) NOT NULL,
  `levelID` int(11) NOT NULL,
  `kanji` varchar(255) NOT NULL,
  `meaning` varchar(255) NOT NULL,
  `picture` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `level`
--

CREATE TABLE `level` (
  `levelID` int(11) NOT NULL,
  `levelName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `level`
--

INSERT INTO `level` (`levelID`, `levelName`) VALUES
(1, 'N1'),
(2, 'N2'),
(3, 'N3'),
(4, 'N4'),
(5, 'N5');

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

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`messageID`, `userID`, `chatContent`, `time`, `sessionID`) VALUES
(1, 1, 'Hello admin\n', '2022-12-01 12:52:25', 1),
(2, 1, '1234\n', '2022-12-01 12:52:42', 1),
(3, 1, '4321\n', '2022-12-01 12:52:46', 1),
(4, 1, 'qwer\n', '2022-12-01 12:52:48', 1),
(5, 1, 'asdf\n', '2022-12-01 12:52:50', 1),
(6, 1, 'zxcv\n', '2022-12-01 12:52:51', 1),
(7, 1, 'dssf\n', '2022-12-01 12:53:02', 1),
(8, 1, 'sdfdsf\n', '2022-12-01 12:53:03', 1),
(9, 1, 'dsfsdfs\n', '2022-12-01 12:53:04', 1),
(10, 1, 'sdfsdfds\n', '2022-12-01 12:53:05', 1),
(11, 1, 'dsfsdfsd\n', '2022-12-01 12:53:06', 1),
(12, 1, 'dsfdsfds\n', '2022-12-01 12:53:07', 1),
(13, 1, 'dsfdsfsd\n', '2022-12-01 12:53:07', 1),
(14, 1, 'dsfsdfsdfdsfsdf\n', '2022-12-01 12:53:18', 1),
(15, 1, '\n', '2022-12-01 12:53:18', 1);

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

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `QuestionID` int(11) NOT NULL,
  `TagID` int(11) NOT NULL,
  `levelID` int(11) NOT NULL,
  `Question` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `QuizID` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT 'description about Quiz',
  `TestID` int(11) NOT NULL,
  `QuestionID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `QuestionID` int(11) NOT NULL,
  `Answer` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

CREATE TABLE `tag` (
  `TagID` int(11) NOT NULL,
  `Desc` varchar(255) NOT NULL DEFAULT 'description of tags'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tag`
--

INSERT INTO `tag` (`TagID`, `Desc`) VALUES
(1, 'Kanji'),
(2, 'Grammar');

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `TestID` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `TagID` int(11) NOT NULL,
  `levelID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`TestID`, `Name`, `TagID`, `levelID`) VALUES
(1, 'Bai 1 edit', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(1, 'user@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'Người Dùng', '', 'images\\user.png', 'Người dùng'),
(2, 'cm@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'Content Manager', '', 'images\\user.png', 'Quản lí nội dung'),
(3, 'admin@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'Admin', '', 'images\\user.png', 'Quản trị viên');

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
-- Indexes for table `examplegrammar`
--
ALTER TABLE `examplegrammar`
  ADD PRIMARY KEY (`exampleID`),
  ADD KEY `examplegrammar_ibfk_1` (`grammarID`);

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
  ADD KEY `levelID` (`levelID`);

--
-- Indexes for table `grammarhistory`
--
ALTER TABLE `grammarhistory`
  ADD PRIMARY KEY (`userID`,`grammarID`),
  ADD KEY `grammarID` (`grammarID`);

--
-- Indexes for table `kanji`
--
ALTER TABLE `kanji`
  ADD PRIMARY KEY (`kanjiID`),
  ADD KEY `levelID` (`levelID`);

--
-- Indexes for table `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`levelID`);

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
  ADD PRIMARY KEY (`notificationID`),
  ADD KEY `userID_FK_1` (`userID`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`QuestionID`),
  ADD KEY `levelID` (`levelID`),
  ADD KEY `TagID` (`TagID`);

--
-- Indexes for table `quiz`
--
ALTER TABLE `quiz`
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
  ADD KEY `ResultID` (`ResultID`),
  ADD KEY `QuestionID` (`QuestionID`);

--
-- Indexes for table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`sessionID`),
  ADD KEY `userID` (`userID`);

--
-- Indexes for table `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`TagID`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`TestID`),
  ADD KEY `test_ibfk_1` (`levelID`),
  ADD KEY `TagID` (`TagID`);

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
  MODIFY `alphabetID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `answer`
--
ALTER TABLE `answer`
  MODIFY `AnswerID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `examplegrammar`
--
ALTER TABLE `examplegrammar`
  MODIFY `exampleID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `forum_comment`
--
ALTER TABLE `forum_comment`
  MODIFY `comment_id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `forum_post`
--
ALTER TABLE `forum_post`
  MODIFY `post_id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `forum_report_comment`
--
ALTER TABLE `forum_report_comment`
  MODIFY `report_comment_id` int(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `forum_report_notification`
--
ALTER TABLE `forum_report_notification`
  MODIFY `report_notification_id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `forum_report_post`
--
ALTER TABLE `forum_report_post`
  MODIFY `report_post_id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
  MODIFY `kanjiID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `level`
--
ALTER TABLE `level`
  MODIFY `levelID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `messageID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `notificationID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `QuestionID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quiz`
--
ALTER TABLE `quiz`
  MODIFY `QuizID` int(11) NOT NULL AUTO_INCREMENT;

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
-- AUTO_INCREMENT for table `tag`
--
ALTER TABLE `tag`
  MODIFY `TagID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
  MODIFY `TestID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
  ADD CONSTRAINT `answer_ibfk_1` FOREIGN KEY (`QuestionID`) REFERENCES `question` (`QuestionID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `examplegrammar`
--
ALTER TABLE `examplegrammar`
  ADD CONSTRAINT `examplegrammar_ibfk_1` FOREIGN KEY (`grammarID`) REFERENCES `grammar` (`grammarID`) ON DELETE CASCADE ON UPDATE CASCADE;

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
  ADD CONSTRAINT `grammar_ibfk_1` FOREIGN KEY (`levelID`) REFERENCES `level` (`levelID`);

--
-- Constraints for table `grammarhistory`
--
ALTER TABLE `grammarhistory`
  ADD CONSTRAINT `grammarhistory_ibfk_1` FOREIGN KEY (`grammarID`) REFERENCES `grammar` (`grammarID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `grammarhistory_ibfk_2` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `kanji`
--
ALTER TABLE `kanji`
  ADD CONSTRAINT `kanji_ibfk_1` FOREIGN KEY (`levelID`) REFERENCES `level` (`levelID`);

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
-- Constraints for table `question`
--
ALTER TABLE `question`
  ADD CONSTRAINT `question_ibfk_1` FOREIGN KEY (`levelID`) REFERENCES `level` (`levelID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `question_ibfk_2` FOREIGN KEY (`TagID`) REFERENCES `tag` (`TagID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `quiz`
--
ALTER TABLE `quiz`
  ADD CONSTRAINT `quiz_ibfk_1` FOREIGN KEY (`QuestionID`) REFERENCES `question` (`QuestionID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `quiz_ibfk_2` FOREIGN KEY (`TestID`) REFERENCES `test` (`TestID`) ON DELETE CASCADE ON UPDATE CASCADE;

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
  ADD CONSTRAINT `resultdetail_ibfk_1` FOREIGN KEY (`ResultID`) REFERENCES `result` (`ResultID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `resultdetail_ibfk_2` FOREIGN KEY (`QuestionID`) REFERENCES `question` (`QuestionID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `session`
--
ALTER TABLE `session`
  ADD CONSTRAINT `session_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `test`
--
ALTER TABLE `test`
  ADD CONSTRAINT `test_ibfk_1` FOREIGN KEY (`levelID`) REFERENCES `level` (`levelID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `test_ibfk_2` FOREIGN KEY (`TagID`) REFERENCES `tag` (`TagID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
