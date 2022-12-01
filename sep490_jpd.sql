-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 01, 2022 lúc 04:46 AM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `sep490_jpd`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `alphabet`
--

CREATE TABLE `alphabet` (
  `alphabetID` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `alphabet` varchar(255) NOT NULL,
  `pronounce` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `answer`
--

CREATE TABLE `answer` (
  `AnswerID` int(11) NOT NULL,
  `QuestionID` int(11) NOT NULL,
  `Answer` varchar(255) NOT NULL,
  `isCorrect` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `examplegrammar`
--

CREATE TABLE `examplegrammar` (
  `exampleID` int(11) NOT NULL,
  `grammarID` int(11) NOT NULL,
  `exJ` varchar(255) NOT NULL,
  `exV` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `forum_comment`
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

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `forum_post`
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

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `forum_report_comment`
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
-- Cấu trúc bảng cho bảng `forum_report_notification`
--

CREATE TABLE `forum_report_notification` (
  `report_notification_id` int(9) NOT NULL,
  `userID` int(11) NOT NULL,
  `report_notification_content` varchar(500) NOT NULL,
  `post_id` int(9) DEFAULT NULL,
  `comment_id` int(9) DEFAULT NULL,
  `report_notification_status` varchar(10) NOT NULL DEFAULT 'not read'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `forum_report_post`
--

CREATE TABLE `forum_report_post` (
  `report_post_id` int(9) NOT NULL,
  `user_report_id` int(11) NOT NULL,
  `report_post_reason` varchar(500) NOT NULL,
  `post_id` int(9) NOT NULL,
  `report_post_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `forum_topic`
--

CREATE TABLE `forum_topic` (
  `topic_id` int(9) NOT NULL,
  `topic_name` varchar(100) NOT NULL,
  `topic_status` varchar(10) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `grammar`
--

CREATE TABLE `grammar` (
  `grammarID` int(11) NOT NULL,
  `levelID` int(11) NOT NULL,
  `structure` varchar(255) NOT NULL,
  `use` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `kanji`
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
-- Cấu trúc bảng cho bảng `level`
--

CREATE TABLE `level` (
  `levelID` int(11) NOT NULL,
  `levelName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `level`
--

INSERT INTO `level` (`levelID`, `levelName`) VALUES
(1, 'N1'),
(2, 'N2'),
(3, 'N3'),
(4, 'N4'),
(5, 'N5');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `message`
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
-- Cấu trúc bảng cho bảng `notification`
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
-- Cấu trúc bảng cho bảng `question`
--

CREATE TABLE `question` (
  `QuestionID` int(11) NOT NULL,
  `TagID` int(11) NOT NULL,
  `levelID` int(11) NOT NULL,
  `Question` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quiz`
--

CREATE TABLE `quiz` (
  `QuizID` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT 'description about Quiz',
  `TestID` int(11) NOT NULL,
  `QuestionID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `result`
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
-- Cấu trúc bảng cho bảng `resultdetail`
--

CREATE TABLE `resultdetail` (
  `ResultDetailID` int(11) NOT NULL,
  `ResultID` int(11) NOT NULL,
  `QuestionID` int(11) NOT NULL,
  `Answer` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `session`
--

CREATE TABLE `session` (
  `sessionID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tag`
--

CREATE TABLE `tag` (
  `TagID` int(11) NOT NULL,
  `Desc` varchar(255) NOT NULL DEFAULT 'description of tags'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `test`
--

CREATE TABLE `test` (
  `TestID` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `TagID` int(11) NOT NULL,
  `levelID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `type`
--

CREATE TABLE `type` (
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
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
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`userID`, `email`, `password`, `username`, `phone`, `avatar`, `role`) VALUES
(1, 'user@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'Người Dùng', '', 'images\\user.png', 'Người dùng'),
(2, 'cm@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'Content Manager', '', 'images\\user.png', 'Quản lí nội dung'),
(3, 'admin@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'Admin', '', 'images\\user.png', 'Quản trị viên');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `alphabet`
--
ALTER TABLE `alphabet`
  ADD PRIMARY KEY (`alphabetID`),
  ADD KEY `type` (`type`);

--
-- Chỉ mục cho bảng `answer`
--
ALTER TABLE `answer`
  ADD PRIMARY KEY (`AnswerID`),
  ADD KEY `QuestionID` (`QuestionID`);

--
-- Chỉ mục cho bảng `examplegrammar`
--
ALTER TABLE `examplegrammar`
  ADD PRIMARY KEY (`exampleID`),
  ADD KEY `examplegrammar_ibfk_1` (`grammarID`);

--
-- Chỉ mục cho bảng `forum_comment`
--
ALTER TABLE `forum_comment`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `forum_comment_ibfk_1` (`userID`),
  ADD KEY `forum_comment_ibfk_2` (`post_id`);

--
-- Chỉ mục cho bảng `forum_post`
--
ALTER TABLE `forum_post`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `fk_topic_id` (`topic_id`),
  ADD KEY `fk_userID` (`userID`);

--
-- Chỉ mục cho bảng `forum_report_comment`
--
ALTER TABLE `forum_report_comment`
  ADD PRIMARY KEY (`report_comment_id`),
  ADD KEY `forum_report_comment_ibfk_1` (`comment_id`),
  ADD KEY `forum_report_comment_ibfk_2` (`user_report_id`);

--
-- Chỉ mục cho bảng `forum_report_notification`
--
ALTER TABLE `forum_report_notification`
  ADD PRIMARY KEY (`report_notification_id`),
  ADD KEY `userID` (`userID`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `comment_id` (`comment_id`);

--
-- Chỉ mục cho bảng `forum_report_post`
--
ALTER TABLE `forum_report_post`
  ADD PRIMARY KEY (`report_post_id`),
  ADD KEY `forum_report_post_ibfk_1` (`post_id`),
  ADD KEY `forum_report_post_ibfk_2` (`user_report_id`);

--
-- Chỉ mục cho bảng `forum_topic`
--
ALTER TABLE `forum_topic`
  ADD PRIMARY KEY (`topic_id`);

--
-- Chỉ mục cho bảng `grammar`
--
ALTER TABLE `grammar`
  ADD PRIMARY KEY (`grammarID`),
  ADD KEY `levelID` (`levelID`);

--
-- Chỉ mục cho bảng `kanji`
--
ALTER TABLE `kanji`
  ADD PRIMARY KEY (`kanjiID`),
  ADD KEY `levelID` (`levelID`);

--
-- Chỉ mục cho bảng `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`levelID`);

--
-- Chỉ mục cho bảng `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`messageID`),
  ADD KEY `sessionID_FK_1` (`sessionID`),
  ADD KEY `usernameMessage_FK_1` (`userID`);

--
-- Chỉ mục cho bảng `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`notificationID`),
  ADD KEY `userID_FK_1` (`userID`);

--
-- Chỉ mục cho bảng `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`QuestionID`),
  ADD KEY `levelID` (`levelID`),
  ADD KEY `TagID` (`TagID`);

--
-- Chỉ mục cho bảng `quiz`
--
ALTER TABLE `quiz`
  ADD PRIMARY KEY (`QuizID`),
  ADD KEY `QuestionID` (`QuestionID`),
  ADD KEY `TestID` (`TestID`);

--
-- Chỉ mục cho bảng `result`
--
ALTER TABLE `result`
  ADD PRIMARY KEY (`ResultID`),
  ADD KEY `TestID` (`TestID`),
  ADD KEY `UserID` (`UserID`);

--
-- Chỉ mục cho bảng `resultdetail`
--
ALTER TABLE `resultdetail`
  ADD PRIMARY KEY (`ResultDetailID`),
  ADD KEY `ResultID` (`ResultID`),
  ADD KEY `QuestionID` (`QuestionID`);

--
-- Chỉ mục cho bảng `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`sessionID`),
  ADD KEY `userID` (`userID`);

--
-- Chỉ mục cho bảng `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`TagID`);

--
-- Chỉ mục cho bảng `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`TestID`),
  ADD KEY `test_ibfk_1` (`levelID`),
  ADD KEY `TagID` (`TagID`);

--
-- Chỉ mục cho bảng `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`type`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userID`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `alphabet`
--
ALTER TABLE `alphabet`
  MODIFY `alphabetID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `answer`
--
ALTER TABLE `answer`
  MODIFY `AnswerID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `examplegrammar`
--
ALTER TABLE `examplegrammar`
  MODIFY `exampleID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `forum_comment`
--
ALTER TABLE `forum_comment`
  MODIFY `comment_id` int(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `forum_post`
--
ALTER TABLE `forum_post`
  MODIFY `post_id` int(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `forum_report_comment`
--
ALTER TABLE `forum_report_comment`
  MODIFY `report_comment_id` int(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `forum_report_notification`
--
ALTER TABLE `forum_report_notification`
  MODIFY `report_notification_id` int(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `forum_report_post`
--
ALTER TABLE `forum_report_post`
  MODIFY `report_post_id` int(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `forum_topic`
--
ALTER TABLE `forum_topic`
  MODIFY `topic_id` int(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `grammar`
--
ALTER TABLE `grammar`
  MODIFY `grammarID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `kanji`
--
ALTER TABLE `kanji`
  MODIFY `kanjiID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `level`
--
ALTER TABLE `level`
  MODIFY `levelID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `message`
--
ALTER TABLE `message`
  MODIFY `messageID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `notification`
--
ALTER TABLE `notification`
  MODIFY `notificationID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `question`
--
ALTER TABLE `question`
  MODIFY `QuestionID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `quiz`
--
ALTER TABLE `quiz`
  MODIFY `QuizID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `result`
--
ALTER TABLE `result`
  MODIFY `ResultID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `resultdetail`
--
ALTER TABLE `resultdetail`
  MODIFY `ResultDetailID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `session`
--
ALTER TABLE `session`
  MODIFY `sessionID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tag`
--
ALTER TABLE `tag`
  MODIFY `TagID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `test`
--
ALTER TABLE `test`
  MODIFY `TestID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `alphabet`
--
ALTER TABLE `alphabet`
  ADD CONSTRAINT `alphabet_ibfk_1` FOREIGN KEY (`type`) REFERENCES `type` (`type`);

--
-- Các ràng buộc cho bảng `answer`
--
ALTER TABLE `answer`
  ADD CONSTRAINT `answer_ibfk_1` FOREIGN KEY (`QuestionID`) REFERENCES `question` (`QuestionID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `examplegrammar`
--
ALTER TABLE `examplegrammar`
  ADD CONSTRAINT `examplegrammar_ibfk_1` FOREIGN KEY (`grammarID`) REFERENCES `grammar` (`grammarID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `forum_comment`
--
ALTER TABLE `forum_comment`
  ADD CONSTRAINT `forum_comment_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `forum_comment_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `forum_post` (`post_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `forum_post`
--
ALTER TABLE `forum_post`
  ADD CONSTRAINT `fk_topic_id` FOREIGN KEY (`topic_id`) REFERENCES `forum_topic` (`topic_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_userID` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `forum_report_comment`
--
ALTER TABLE `forum_report_comment`
  ADD CONSTRAINT `forum_report_comment_ibfk_1` FOREIGN KEY (`comment_id`) REFERENCES `forum_comment` (`comment_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `forum_report_comment_ibfk_2` FOREIGN KEY (`user_report_id`) REFERENCES `user` (`userID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `forum_report_notification`
--
ALTER TABLE `forum_report_notification`
  ADD CONSTRAINT `forum_report_notification_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `forum_report_notification_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `forum_post` (`post_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `forum_report_notification_ibfk_3` FOREIGN KEY (`comment_id`) REFERENCES `forum_comment` (`comment_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `forum_report_post`
--
ALTER TABLE `forum_report_post`
  ADD CONSTRAINT `forum_report_post_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `forum_post` (`post_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `forum_report_post_ibfk_2` FOREIGN KEY (`user_report_id`) REFERENCES `user` (`userID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `grammar`
--
ALTER TABLE `grammar`
  ADD CONSTRAINT `grammar_ibfk_1` FOREIGN KEY (`levelID`) REFERENCES `level` (`levelID`);

--
-- Các ràng buộc cho bảng `kanji`
--
ALTER TABLE `kanji`
  ADD CONSTRAINT `kanji_ibfk_1` FOREIGN KEY (`levelID`) REFERENCES `level` (`levelID`);

--
-- Các ràng buộc cho bảng `message`
--
ALTER TABLE `message`
  ADD CONSTRAINT `sessionID_FK_1` FOREIGN KEY (`sessionID`) REFERENCES `session` (`sessionID`),
  ADD CONSTRAINT `usernameMessage_FK_1` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`);

--
-- Các ràng buộc cho bảng `notification`
--
ALTER TABLE `notification`
  ADD CONSTRAINT `userID_FK_1` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`);

--
-- Các ràng buộc cho bảng `question`
--
ALTER TABLE `question`
  ADD CONSTRAINT `question_ibfk_1` FOREIGN KEY (`levelID`) REFERENCES `level` (`levelID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `question_ibfk_2` FOREIGN KEY (`TagID`) REFERENCES `tag` (`TagID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `quiz`
--
ALTER TABLE `quiz`
  ADD CONSTRAINT `quiz_ibfk_1` FOREIGN KEY (`QuestionID`) REFERENCES `question` (`QuestionID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `quiz_ibfk_2` FOREIGN KEY (`TestID`) REFERENCES `test` (`TestID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `result`
--
ALTER TABLE `result`
  ADD CONSTRAINT `result_ibfk_1` FOREIGN KEY (`TestID`) REFERENCES `test` (`TestID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `result_ibfk_2` FOREIGN KEY (`UserID`) REFERENCES `user` (`userID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `resultdetail`
--
ALTER TABLE `resultdetail`
  ADD CONSTRAINT `resultdetail_ibfk_1` FOREIGN KEY (`ResultID`) REFERENCES `result` (`ResultID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `resultdetail_ibfk_2` FOREIGN KEY (`QuestionID`) REFERENCES `question` (`QuestionID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `session`
--
ALTER TABLE `session`
  ADD CONSTRAINT `session_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `test`
--
ALTER TABLE `test`
  ADD CONSTRAINT `test_ibfk_1` FOREIGN KEY (`levelID`) REFERENCES `level` (`levelID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `test_ibfk_2` FOREIGN KEY (`TagID`) REFERENCES `tag` (`TagID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
