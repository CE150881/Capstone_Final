-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 09, 2022 at 02:21 PM
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
-- Table structure for table `account_code`
--

CREATE TABLE `account_code` (
  `codeID` int(11) NOT NULL,
  `code` varchar(6) NOT NULL,
  `expiryDate` datetime NOT NULL,
  `userID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `alphabet`
--

CREATE TABLE `alphabet` (
  `alphabetID` int(11) NOT NULL,
  `type` varchar(10) NOT NULL,
  `alphabet` varchar(255) NOT NULL,
  `pronounce` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `alphabet`
--

INSERT INTO `alphabet` (`alphabetID`, `type`, `alphabet`, `pronounce`) VALUES
(1, 'Hiragana', 'あ', 'a'),
(2, 'Hiragana', 'い', 'i'),
(3, 'Hiragana', 'う', 'u'),
(4, 'Hiragana', 'え', 'e'),
(5, 'Hiragana', 'お', 'o'),
(6, 'Hiragana', 'か', 'ka'),
(7, 'Hiragana', 'き', 'ki'),
(8, 'Hiragana', 'く', 'ku'),
(9, 'Hiragana', 'け', 'ke'),
(10, 'Hiragana', 'こ', 'ko'),
(11, 'Hiragana', 'さ', 'sa'),
(12, 'Hiragana', 'し', 'shi'),
(13, 'Katakana', 'ア', 'a'),
(14, 'Katakana', 'イ', 'i'),
(15, 'Katakana', 'ウ', 'u'),
(16, 'Katakana', 'エ', 'e'),
(17, 'Katakana', 'オ', 'o'),
(18, 'Katakana', 'カ', 'ka'),
(19, 'Katakana', 'キ', 'ki'),
(20, 'Katakana', 'ク', 'ku'),
(21, 'Katakana', 'ケ', 'ke'),
(22, 'Katakana', 'コ', 'ko'),
(23, 'Katakana', 'サ', 'sa'),
(24, 'Katakana', 'シ', 'shi');

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `AnswerID` int(11) NOT NULL,
  `QuestionID` int(11) NOT NULL,
  `Answer` varchar(255) NOT NULL,
  `isCorrect` bit(1) NOT NULL
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

--
-- Dumping data for table `examplegrammar`
--

INSERT INTO `examplegrammar` (`exampleID`, `grammarID`, `exJ`, `exV`) VALUES
(1, 1, '健康な体あっての人生です。', 'Cuộc sống phụ thuộc vào việc có một cơ thể khỏe mạnh.'),
(2, 1, 'お客様あっての仕事だから、言葉遣いに気を付けてください。', 'Hãy cẩn thận với ngôn ngữ bạn sử dụng với khách hàng bởi vì chăm sóc khách hàng là công việc của chúng ta.'),
(3, 2, '小説を書くことが楽しければこそ、40年も書き続けてきたのです。', 'Chính vì công việc viết tiểu thuyết là niềm vui nên tôi mới viết suốt 40 năm qua.'),
(4, 2, '親は子供のためを思えばこそ厳しく?るのだ。', 'Chính vì nghĩ cho con cái nên bố mẹ mới la mắng nghiêm khắc.'),
(5, 3, '先生であれ学生であれ、この規則には従わなければならない。', 'Cho dù bạn là giáo viên hay học sinh, bạn phải tuân thủ quy tắc này.'),
(6, 4, '年を取って、お金もなく、家族かぞくもいないとは心細こころぼそい限かぎりです。', 'Khi tôi già đi, không có tiền, không có gia đình, tôi cảm thấy cô đơn.'),
(7, 4, '従兄弟いとこの結婚式けっこんしきに出られないとは残念な限かぎりだ。', 'Tôi cảm thấy rất là tiếc nếu không thể xuất hiện trong đám cưới của anh họ.'),
(9, 5, '何度なんども手術しゅじゅつしたあげく、治なおらないと言われた。', 'Sau khi phẫu thuật nhiều lần thì được thông báo rằng bệnh không thể chữa khỏi.'),
(10, 5, '彼は酔よっ払ぱらって騒さわいだあげく、寝てしまった。', 'Sau một thời gian say rượu và làm ồn thì cuối cùng anh ấy cũng đã đi ngủ.'),
(11, 7, 'お金がないばかりに、今度こんどの旅行りょこうに行けなかった。', 'Tôi không thể đi du lịch lần tới vì tôi không có tiền.'),
(12, 7, '私が遅刻ちこくをしたばかりに皆みなに迷惑めいわくをかけてしまった。', 'Chỉ vì đến trễ,tôi đã làm phiền mọi người.'),
(13, 6, '緊張きんちょうのあまり、体が震ふるえた', 'Cơ thể run lên vì quá căng thẳng.'),
(14, 6, '心配しんぱいするあまり、母は寝込ねこんでしまった。', 'Vì quá lo lắng mà mẹ tôi đã ngủ thiếp đi.');

-- --------------------------------------------------------

--
-- Table structure for table `forum_comment`
--

CREATE TABLE `forum_comment` (
  `comment_id` int(9) NOT NULL,
  `post_id` int(9) NOT NULL,
  `comment_content` varchar(600) NOT NULL,
  `userID` int(11) NOT NULL,
  `comment_date` datetime NOT NULL,
  `comment_edit_date` datetime NOT NULL,
  `comment_status` varchar(10) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `forum_comment`
--

INSERT INTO `forum_comment` (`comment_id`, `post_id`, `comment_content`, `userID`, `comment_date`, `comment_edit_date`, `comment_status`) VALUES
(1, 8, 'nó còn phụ thuộc vào cách bạn làm món đó<br>nướng: まだ焼けてない<br>chiên: まだ揚げてない<br>còn gọi chung chung thì まだできてない<br>', 1, '2022-12-09 11:09:41', '2022-12-09 11:09:41', 'active'),
(2, 7, 'mình cũng mù viết, nhưng có thể chia sẻ cách học viết của mình như sau:<br>mình học bộ thủ + nghĩa<br>sau đó mình luyện viết theo các chữ hán giống nhau:<br>Ví dụ1:<br>義: con cừu bị ngã vì chính NGHĨA<br>儀 : người nhân nghĩa tuân thủ lễ NGHI<br>犠: con bò vì nghĩa mà HY sinh<br>議: nói lời có nghĩa trong hội NGHỊ<br>Ví dụ 2:<br>識: Nói: tri thức<br>織: Nối: tổ chức<br>職: Nghe: công việc<br>Rảnh là mình viết, có ngày mình viết dày đặc 4 5 trang giấy A4 mà vẫn hay quên :v<br>Bạn tham khảo<br>', 1, '2022-12-09 11:10:17', '2022-12-09 11:10:17', 'active'),
(3, 10, 'にえる<br>これはまだ煮えていない<br>', 2, '2022-12-09 11:11:10', '2022-12-09 11:11:10', 'active'),
(4, 9, 'Câu 心に傷みつけたい chẳng có nghĩa gì cả, chủ thớt viết sai chữ 傷. Câu đúng là 心に刻みつけたい。', 2, '2022-12-09 11:11:29', '2022-12-09 11:11:29', 'active'),
(5, 10, 'nó còn phụ thuộc vào cách bạn làm món đó<br>nướng: まだ焼けてない<br>chiên: まだ揚げてない<br>còn gọi chung chung thì まだできてない<br>', 3, '2022-12-09 11:13:55', '2022-12-09 11:13:55', 'active'),
(6, 9, 'Tại buổi diễn thuyết hòa bình ngày hôm nay, thị trưởng Hiroshima - ông Matsui Kazumi đã tuyên bố vũ khí hạt nhân là “Cái ác tuyệt đối’. Hi vọng Thủ tướng Abe và Đại sứ Mỹ tại Nhật ông Roos cũng khắc ghi điều này. Ở giai đoạn xuất phát trên danh nghĩa người tiếp nối, chúng tôi cũng sẽ khắc sâu điều này vào trong tim.<br>Bạn tham khảo ạ.<br>', 3, '2022-12-09 11:14:17', '2022-12-09 11:14:17', 'active'),
(7, 11, 'ai biết giúp đỡ mình với', 1, '2022-12-09 11:16:59', '2022-12-09 11:16:59', 'active'),
(8, 10, 'Mọi người giúp với', 1, '2022-12-09 11:28:00', '2022-12-09 11:28:00', 'disable'),
(9, 12, 'mệt gì đâu', 1, '2022-12-09 11:30:18', '2022-12-09 11:30:18', 'active'),
(10, 13, 'Tâm trạng này xuất hiện là do em Trai mới nhắn: \"chị sắm đồ chưa, em mới mua cho chị cái ao khoác nè.\"<br>Mấy Bác sắm đồ tết chưa?', 1, '2022-12-09 11:37:17', '2022-12-09 11:37:17', 'disable'),
(11, 14, '3. Cần bao nhiêu tiền khi về thì có thể ổn định cuộc sống ban đầu được', 1, '2022-12-09 12:19:04', '2022-12-09 12:19:04', 'disable'),
(12, 15, 'Ai giới thiệu cho em với', 1, '2022-12-09 13:41:48', '2022-12-09 13:41:48', 'active'),
(13, 14, 'Mọi người nghĩ sao', 1, '2022-12-09 13:42:38', '2022-12-09 13:42:38', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `forum_post`
--

CREATE TABLE `forum_post` (
  `post_id` int(9) NOT NULL,
  `topic_id` int(9) NOT NULL,
  `post_title` varchar(150) NOT NULL,
  `post_content` varchar(600) NOT NULL,
  `userID` int(11) NOT NULL,
  `post_date` datetime NOT NULL,
  `post_edit_date` datetime NOT NULL,
  `post_status` varchar(10) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `forum_post`
--

INSERT INTO `forum_post` (`post_id`, `topic_id`, `post_title`, `post_content`, `userID`, `post_date`, `post_edit_date`, `post_status`) VALUES
(1, 5, 'Nguyện vọng lúc phỏng vấn', 'Trong lúc phỏng vấn thì mình nói với cty là mình muốn sodan lương cao hơn, hay là sau khi có naitei thì mình mới sodan các bạn nhỉ,cảm ơn các bạn ạ.', 3, '2022-12-09 11:03:40', '2022-12-09 11:03:40', 'active'),
(2, 5, 'Mức sống ở tokyo', 'Nếu ở tokyo mà mức lương 27 man .tiền nhà 5 man(bao gồm nhà, điện, nước ,ga), vậy mỗi tháng để lại dc khoảng bao nhiêu tiền,mình đang ở vùng nông thôn thì ăn uống mỗi tháng hết khoảng 3 man.có bạn nào sống ở tokyo , nhờ tư vấn giúp mình ạ.mình xin cảm ơn ạ.', 3, '2022-12-09 11:04:16', '2022-12-09 11:04:16', 'active'),
(3, 4, 'Văn hóa NB nói riêng và văn hóa tư bản nói chung!', 'Thấy bác ở dưới bảo Vin làm kiểu vắt kiệt sức theo đúng nghĩa đen và thành quả nhận lại thì cũng tương xứng.<br>Không nói điêu nhưng giai đoạn phát triển thần tốc của mấy thằng tư bản nó làm khiếp thật, làm ngày làm đêm làm đến điên đến dại nên nó mới có ngày hôm nay ấy chứ các bác nhỉ? Em thấy mấy bác làm nhiều thì sợ hãi các thứ nhưng mà có làm như vậy thì nó mới phát triển được, genz giờ không biế', 3, '2022-12-09 11:04:46', '2022-12-09 11:04:46', 'active'),
(4, 4, '柚 (Trái Thanh Yên)', 'Có bé em nhắn tin hỏi mình trái 柚 có được xem là biểu tượng may mắn ở Nhật không?<br>mọi người có biết về trái này không ạ?<br>', 3, '2022-12-09 11:05:17', '2022-12-09 11:05:17', 'active'),
(5, 3, 'TRUNG TÂM ĐI NHẬT UY TÍN', 'Em đang muốn đi sang Nhật, mọi người cho em hỏi trước đó mọi người sang có thông qua trung tâm nào không ạ. <br>Review giúp em với ạ. Trung tâm nào uy tín ạ, chứ bạn em đi Hàn gặp trung tâm nó làm ăn hời hợt cả năm chưa bay được :((((<br>', 2, '2022-12-09 11:06:43', '2022-12-09 11:06:43', 'active'),
(6, 3, 'chuyển trường senmon', 'mình đang học năm nhất senmon , mà giờ muốn học hết năm nhất rồi chuyển qua trường khác học , thì có được k nhỉ', 2, '2022-12-09 11:07:03', '2022-12-09 11:07:03', 'active'),
(7, 2, 'Viết chữ', 'Mn có cách nào học viết nhanh ko ạ. Trc giờ e toàn nhìn mặt chữ r đọc chứ ít viết lắm. <br>Nên giờ muốn viết để sau thi kiếm ít cái chứng chỉ cho tiện mà giờ viết đi viết lại k hiệu quả cho lắm toàn thiếu nét<br>', 2, '2022-12-09 11:07:31', '2022-12-09 11:07:31', 'active'),
(8, 2, '月末 hay 上旬', 'Cuối tháng thì dùng 月末 hay 上旬. 2 từ này khác nhau như nào ạ mn', 2, '2022-12-09 11:07:51', '2022-12-09 11:07:51', 'active'),
(9, 1, 'Dịch viết', 'Đoạn này câu cuối nên dịch như thế nào đây ạ =(((<br><br>広島市の松井一美市長は今日の平和宣言で、核兵器は「絶対悪」と呼びかける。安倍首相もルース駐日米大使も肝に銘じてほしい。私たちも伝承者としての出発点に当たり、心に傷みつけたい。<br>', 1, '2022-12-09 11:08:37', '2022-12-09 11:08:37', 'active'),
(10, 1, 'Chín', 'Từ chín trong Nấu chín đồ ăn hoặc đồ ăn này chưa chín thì dùng từ nào vậy ah?', 1, '2022-12-09 11:09:05', '2022-12-09 11:09:05', 'active'),
(11, 1, 'onegaiiiiii', 'tài chính 5 man, cần mua iphone 12 tại cửa hàng mà nó viết 1 yên thì nội dung chi tiết như thế nào vậy các bác, các bác giải thích rõ với nak', 1, '2022-12-09 11:16:28', '2022-12-09 11:16:28', 'disable'),
(12, 1, 'Hết VJ, giờ đến Bamboo cũng đổi chuyến bay', 'Mới nhận được tin bên Bamboo cũng đổi giờ bay của mình từ Hà Nội về Nha Trang, chuyển lên sớm hơn :((<br><br>Nếu ko có chuyến khác hợp lý hơn thì khả năng phải cancel, haizz, nghe tin mà nẫu thật sự :((', 1, '2022-12-09 11:29:50', '2022-12-09 11:29:50', 'disable'),
(13, 1, 'Đồ Tết', 'Mọi người sắm Tết sao rồi?<br><br>Còn nhớ ngày nhỏ năm nào cũng đòi mẹ sắm đồ Tết cho, gần tết là đòi cho bằng được 3 bộ mặc 3 mùng, thấy bạn bè dc sắm hơn 3 bộ cũng về khóc lóc nhây nhưa đòi sắm thêm cho bằng bạn bằng bè.<br>Giao thừa tới là rộn ràng cập rập mặc đồ mới để đi giao thừa ở Chùa với Ba với Bà.<br>Từ ngày tự sắm đồ cho bản thân thì không còn quan tâm tới đồ tết nữa, có nhiều năm liền cũng ko đi', 1, '2022-12-09 11:37:02', '2022-12-09 11:37:02', 'active'),
(14, 1, 'Về VN sống', 'Khảo sát những ai có ý định về VN sống lâu dài chút nhé<br><br>1. Mọi người dự định về VN làm ở thành phố hay về ở gần bố mẹ<br>2. Ở VN mọi người có nhà hay đất chưa', 1, '2022-12-09 12:18:55', '2022-12-09 12:18:55', 'active'),
(15, 6, 'Hỏi về công việc CNTT', 'Có bác nào giới thiệu em công việc CNTT ở Nhật Bản với', 1, '2022-12-09 13:28:31', '2022-12-09 13:28:31', 'disable');

-- --------------------------------------------------------

--
-- Table structure for table `forum_report_comment`
--

CREATE TABLE `forum_report_comment` (
  `report_comment_id` int(9) NOT NULL,
  `user_report_id` int(11) NOT NULL,
  `report_comment_reason` varchar(600) NOT NULL,
  `comment_id` int(9) NOT NULL,
  `report_comment_date` datetime NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `forum_report_comment`
--

INSERT INTO `forum_report_comment` (`report_comment_id`, `user_report_id`, `report_comment_reason`, `comment_id`, `report_comment_date`, `status`) VALUES
(2, 3, 'Nội dung không phù hợp', 9, '2022-12-09 11:30:48', 'active'),
(3, 2, 'Nội dung không phù hợp với bài đăng', 13, '2022-12-09 13:43:01', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `forum_report_notification`
--

CREATE TABLE `forum_report_notification` (
  `report_notification_id` int(9) NOT NULL,
  `userID` int(11) NOT NULL,
  `report_notification_content` varchar(600) NOT NULL,
  `post_id` int(9) DEFAULT NULL,
  `comment_id` int(9) DEFAULT NULL,
  `report_notification_status` varchar(10) NOT NULL DEFAULT 'not read',
  `status` varchar(10) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `forum_report_notification`
--

INSERT INTO `forum_report_notification` (`report_notification_id`, `userID`, `report_notification_content`, `post_id`, `comment_id`, `report_notification_status`, `status`) VALUES
(1, 2, 'Có Bình Luận Mới', 8, NULL, 'not read', 'active'),
(2, 2, 'Có Bình Luận Mới', 7, NULL, 'not read', 'active'),
(3, 1, 'Có Bình Luận Mới', 10, NULL, 'not read', 'active'),
(4, 1, 'Có Bình Luận Mới', 9, NULL, 'not read', 'active'),
(5, 1, 'Có Bình Luận Mới', 10, NULL, 'not read', 'active'),
(6, 1, 'Có Bình Luận Mới', 10, NULL, 'not read', 'active'),
(7, 1, 'Có Bình Luận Mới', 9, NULL, 'not read', 'active'),
(8, 1, 'Lý Do Xoá: Nội dung không phù hợp với chủ đề nên chúng tôi xin phép xoá bài đăng của bạn', 11, NULL, 'not read', 'active'),
(9, 1, 'Lý Do Xoá: Nội dung không phù hợp với chủ đề nên chúng tôi xin phép xoá bài đăng của bạn', NULL, 7, 'not read', 'active'),
(10, 1, 'Lý Do Xoá: Nội dung không phù hợp', 12, NULL, 'not read', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `forum_report_post`
--

CREATE TABLE `forum_report_post` (
  `report_post_id` int(9) NOT NULL,
  `user_report_id` int(11) NOT NULL,
  `report_post_reason` varchar(600) NOT NULL,
  `post_id` int(9) NOT NULL,
  `report_post_date` datetime NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `forum_report_post`
--

INSERT INTO `forum_report_post` (`report_post_id`, `user_report_id`, `report_post_reason`, `post_id`, `report_post_date`, `status`) VALUES
(3, 2, 'Nội dung không phù hợp với chủ đề', 13, '2022-12-09 13:30:32', 'active'),
(4, 2, 'Nội dung không đúng chủ đề', 14, '2022-12-09 13:40:48', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `forum_topic`
--

CREATE TABLE `forum_topic` (
  `topic_id` int(9) NOT NULL,
  `topic_name` varchar(150) NOT NULL,
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
(5, 'Góc Chia Sẻ', 'active'),
(6, 'CNTT', 'disable'),
(7, 'Việc Làm Nhật Bản', 'disable');

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
(1, 1, 'N1 + あっての + N2', 'Bởi vì có …/Sự tồn tại…không thể thiếu…'),
(2, 1, 'Vば　+　こそ<br>Aい　ければ　+　こそ<br>N/na であれば　+　こそ', 'Chính vì…'),
(3, 1, 'N / na　+　であれ', 'Cho dù～cho dù…'),
(4, 1, 'Aい　+　限かぎりだ<br>na Adj な　+　限かぎりだ', 'Rất/cảm thấy rất…'),
(5, 2, 'Vた /N の　+　あげく<br>Vた /N の　+　あげくに<br>Vた /N の　+　あげく の N', 'Cuối cùng thì/Làm～nhưng cuối cùng…'),
(6, 2, 'Vる 　+　あまり<br>na Adj＋な　+　あまり<br>N＋の　 +　あまり', 'Quá'),
(7, 2, 'Aい/V(普)　+　ばかりに<br>na Adj+な　+　ばかりに<br>N + である　+　ばかりに', 'Chỉ vì…');

-- --------------------------------------------------------

--
-- Table structure for table `grammarhistory`
--

CREATE TABLE `grammarhistory` (
  `grammarID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `grammarHistoryStatus` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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

--
-- Dumping data for table `kanji`
--

INSERT INTO `kanji` (`kanjiID`, `levelID`, `kanji`, `meaning`, `picture`) VALUES
(5, 1, '阿', 'A', 'upload\\a.png'),
(6, 1, '織', 'CHỨC', 'upload\\chức.png'),
(7, 1, '功', 'CÔNG', 'upload\\CÔNG.png'),
(8, 1, '堅', 'KIÊN', 'upload\\kiên.png'),
(9, 1, '奈', 'NẠI', 'upload\\nại.png'),
(10, 1, '裁', 'TÀI', 'upload\\tài.png'),
(11, 1, '升', 'THĂNG', 'upload\\thang.png'),
(12, 1, '徐', 'TỪ', 'upload\\từ.png'),
(13, 1, '菖', 'XƯƠNG', 'upload\\xương.png'),
(14, 1, '炊', 'XUY', 'upload\\xuy.png'),
(15, 2, '極', 'CỰC', 'upload\\cực.png'),
(16, 2, '導', 'ĐẠO', 'upload\\đạo.png'),
(17, 2, '賢', 'HIỀN', 'upload\\hiền.png'),
(18, 2, '枯', 'KHÔ', 'upload\\khô.png'),
(19, 2, '柔', 'NHU', 'upload\\nhu.png'),
(20, 2, '沸', 'PHÍ', 'upload\\phí.png'),
(21, 2, '均', 'QUÂN', 'upload\\quân.png'),
(22, 2, '掃', 'TẢO', 'upload\\tảo.png'),
(23, 2, '装', 'TRANG', 'upload\\trang.png'),
(24, 2, '伺', 'TÝ', 'upload\\tý.png'),
(25, 3, '共', 'CỘNG', 'upload\\cộng.png'),
(26, 3, '居', 'CƯ', 'upload\\cư.png'),
(27, 3, '易', 'DỊCH', 'upload\\dịch.png'),
(28, 3, '都', 'ĐÔ', 'upload\\đô.png'),
(29, 3, '回', 'HỒI', 'upload\\hồi.png'),
(30, 3, '初', 'SƠ', 'upload\\sơ.png'),
(31, 3, '散', 'TÁN', 'upload\\tán.png'),
(32, 3, '位', 'VỊ', 'upload\\vị.png'),
(33, 3, '泳', 'VỊNH', 'upload\\vịnh.png'),
(34, 3, '望', 'VỌNG', 'upload\\vọng.png'),
(35, 4, '不', 'BẤT', 'upload\\bất.png'),
(36, 4, '別', 'BIỆT', 'upload\\biệt.png'),
(37, 4, '真', 'CHÂN', 'upload\\chân.png'),
(38, 4, '正', 'CHÁNH', 'upload\\chánh.png'),
(39, 4, '界', 'GIỚI', 'upload\\giới.png'),
(40, 4, '漢', 'HÁN', 'upload\\hán.png'),
(41, 4, '会', 'HỘI', 'upload\\hội.png'),
(42, 4, '力', 'LỰC', 'upload\\lực.png'),
(43, 4, '風', 'PHONG', 'upload\\phong.png'),
(44, 4, '員', 'VIÊN', 'upload\\viên.png'),
(45, 5, '百', 'BÁCH', 'upload\\bách.png'),
(46, 5, '大', 'ĐẠI', 'upload\\đại.png'),
(47, 5, '校', 'GIÁO', 'upload\\giáo.png'),
(48, 5, '行', 'HÀNH', 'upload\\hành.png'),
(49, 5, '学', 'HỌC', 'upload\\học.png'),
(50, 5, '今', 'KIM', 'upload\\kim.png'),
(51, 5, '父', 'PHỤ', 'upload\\phụ.png'),
(52, 5, '天', 'THIÊN', 'upload\\thiên.png'),
(53, 5, '子', 'TỬ', 'upload\\tử.png'),
(54, 5, '聞', 'VĂN', 'upload\\văn.png');

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
  `time` datetime NOT NULL,
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
  `time` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `userID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`notificationID`, `title`, `details`, `time`, `status`, `userID`) VALUES
(1, '[Hệ Thống] Thông báo mở website JPD', 'Website JPD chính thức được đưa vào hoạt động hôm nay! Người dùng bây giờ có thể truy cập vào hệ thống và sử dụng trang web của JPD.', '2022-12-09 13:45:41', 0, 3),
(2, '[Tính Năng] Thông báo mở tính năng Thi thử JLPT', 'Các đề thi thử của tất cả các cấp từ N5 đến N1 đã được cập nhật trên hệ thống của JPD. Người dùng đã có thể truy cập để sử dụng tính năng Thi thử ngay từ hôm nay.', '2022-12-09 13:47:06', 0, 3),
(3, '[Hệ Thống] Thông báo bảo trì hệ thống ngày 09/12/2022', 'Website JPD sẽ tạm thời ngưng hoạt động từ 7h ngày 09/12/2022 đến 12h ngày 09/12/2022. Người dùng xin hãy lưu ý và thoát khỏi hệ thống trước thời gian trên.', '2022-12-09 13:47:42', 0, 3),
(4, '[JLPT] Thông tin về kỳ thi JLPT Tháng 12 tại Việt Nam', '- Ngày thi: Chủ Nhật, ngày 04/12/2022\r\n\r\n- Thời gian vào phòng thi: Từ 8 giờ đến 8 giờ 30 phút\r\n\r\n- Cấp độ thi: N1 N2 N3 N4 N5\r\n\r\n- Phí mua hồ sơ: 30.000 đồng/bộ\r\n\r\n- Lệ  phí thi : N1-N2-N3: 550.000 đồng/thí sinh; N4-N5: 500.000 đồng/thí sinh\r\n\r\n- Hạn cuối mua và nộp hồ sơ đăng ký thi: Tùy vào từng khu vực thi mà có thể thay đổi nhah hay chậm mấy hôm\r\n\r\n- Địa điểm bán và nộp hồ sơ đăng ký thi: Hà Nội, Tp. HCM, Huế và Đà Nẵng.', '2022-12-09 13:49:19', 0, 3),
(5, '[JLPT] Thông tin về kỳ thi JLPT Tháng 12 tại Nhật Bản', '(Hiện tại đã đăng ký thi qua mạng trực tiếp được trên điện thoại không cần PC)\r\n\r\n- Ngày thi: Chủ Nhật, ngày 03/07/2022\r\n\r\n- Thời gian vào phòng thi: Từ 11h45 đến 12h30\r\n\r\n- Thời gian bắt đầu thi: 12 giờ 30 phút ( chú ý đến đúng giờ, nếu đến muộn bạn sẽ không được dự thi phần thi thứ 1, bạn vẫn có thể dự thi phần thi thứ 2 nhưng sẽ không được tính điểm nên bạn sẽ bị trượt)\r\n\r\n- Cấp độ thi: N1 N2 N3 N4 N5\r\n\r\n- Địa điểm thi: Được tổ chức ở tất cả 47 tỉnh thành của Nhật và ở nước ngoài . Điểm thi ở Nhật sẽ được ghi trên phiếu báo thi được gửi về địa chỉ nhà bạn sau khi đăng ký một thời gian.\r\n\r\n- Thời gian đăng ký thi: Đang cập nhật\r\n\r\n- Hình thức đăng ký thi: Đăng ký thi qua mạng (không đăng ký thi qua đường bưu điện)', '2022-12-09 13:54:54', 0, 3),
(6, '[Tính Năng] Thông báo mở tính năng Luyện Viết Hiragana', 'Tính năng Luyện Viết Hiragana đã có mặt trên hệ thống của JPD. Người dùng đã có thể truy cập để sử dụng tính năng Thi thử ngay từ hôm nay.', '2022-12-09 13:57:02', 0, 3),
(7, '[Hệ Thống] Thông báo bảo trì hệ thống ngày 19/12/2022', 'Website JPD sẽ tạm thời ngưng hoạt động từ 7h ngày 19/12/2022 đến 12h ngày 19/12/2022. Người dùng xin hãy lưu ý và thoát khỏi hệ thống trước thời gian trên.', '2022-12-09 13:57:33', 0, 3),
(8, '[Giải Trí] Học tiếng Nhật qua các câu nói truyền cảm hứng trong Doraemon', '「君が昼寝をしている間にも時間は流れ続ける。一秒待ってくれない。」\r\n\"Trong lúc cậu đang ngủ trưa, thời gian vẫn tiếp tục trôi. Một giây cũng không chờ cậu đâu.\" - Doraemon\r\n\r\n「一番いけないのは自分なんかだめだと思い込むことだよ。」\r\n\"Điều cấm kỵ nhất là việc nghĩ rằng bản thân sẽ không làm được.\" - Nobita\r\n\r\n「持々、理屈にあわないことするのが人間なのよ。」\r\n\"Thỉnh thoảng lại làm những điều vô lý mới đúng là con người.\" - Doraemon\r\n\r\n「人間の値打ちは中身だぞ。」\r\n\"Giá trị của con người nằm ở bên trong họ.\" - Doraemon', '2022-12-09 14:10:01', 0, 3),
(9, '[JLPT] Xem đáp án đề thi JLPT 12/2022 N1 N2 N3 N4 N5', 'https://camnangnhatban.com/ky-thi-jlpt/xem-dap-an-de-thi-jlpt-12-2022-n1-n2-n3-n4-n5-nhanh-chinh-xac-nhat.html', '2022-12-09 14:11:17', 0, 3),
(10, '[JLPT] Cách tính điểm thi năng lực tiếng Nhật JLPT N3', 'Tổng điểm 180\r\nĐiểm đỗ 95, điểm thành phần tối thiểu\r\n\r\nTừ vựng, chữ Hán, ngữ pháp: 19điểm\r\nĐọc hiểu: 19 điểm ( rất dễ liệt vì ý nào cũng na ná đúng )\r\nNghe hiểu: 19 điểm\r\nCó một chú ý là: Ngữ pháp gộp với đọc hiểu nhưng tính điểm lại cộng vào Moji, Goi, Bunpou ( gengo chishiki ), mà 1 câu ngữ pháp chỉ 1 điểm trong khi 1 câu đọc hiểu là 3 điểm với bài đọc ngắn và 4 điểm với các bài đọc trung, dài và tìm thông tin, vì vậy, làm đọc hiểu trước, hoặc chỉ bấm đúng 15 phút để làm ngữ pháp thôi nhé, nếu không sẽ không kịp giờ.', '2022-12-09 14:11:35', 0, 3),
(11, '[Hệ Thống] Thông báo bảo trì hệ thống ngày 27/12/2022', 'Website JPD sẽ tạm thời ngưng hoạt động từ 7h ngày 27/12/2022 đến 12h ngày 27/12/2022. Người dùng xin hãy lưu ý và thoát khỏi hệ thống trước thời gian trên.', '2022-12-09 14:12:47', 0, 3),
(12, '[Tính Năng] Thống báo mở tính năng Luyện nói tiếng Nhật', 'Thử độ chính xác của bạn khi phát âm tiếng Nhật với tính năng Luyện nói hoàn toàn mới trên JPD. Bạn có thể sử dụng tính năng này ngay từ hôm nay!', '2022-12-09 14:15:45', 0, 3),
(13, '[Giao Tiếp] 4 cách nói xin chào bằng tiếng Nhật', '1. Xin chào tiếng Nhật cơ bản.\r\n\"Konnichiwa\" - こんにちは  là câu chào tiếng Nhật phù hợp với đa số hoàn cảnh và mục đích giao tiếp. Có nghĩa là xin chào khi gặp nhau , cũng mang nghĩa là chào buổi chiều .Đây cũng là cách chào cơ bản nhất, thông dụng và dễ dùng nhất.\r\n\r\n2. Chào bằng tiếng Nhật qua điện thoại.\r\n\"Moshi Moshi\"  là cách chào tiêu chuẩn qua điện thoại. Bạn có thể sử dụng lời chào này cho dù bạn là người gọi hoặc người được gọi đến. Moshi Moshi sẽ thích hợp để sử dụng cho các cuộc trò chuyện điện thoại hơn là konnichiwa.\r\n\r\n3. Các câu chào tiếng Nhật tùy thời điểm.\r\n- おはようございます ohayogozaimasu : chào buổi sáng\r\nBạn cũng có thể rút ngắn lời chào buổi sáng của bạn  \"Ohayo\" khi nói chuyện với bạn bè và trong những hoàn cảnh giao tiếp thông thường. \r\n- こんばんは – konbanwa : chào buổi tối\r\nNhư một lời chúc buổi tối tốt lành, konbanwa là lời chào tiêu chuẩn để sử dụng trong suốt buổi tối. \r\n- さようなら-sayounara : chào tạm biệt\r\n-おやすみなさい-oyasuminasai : chúc ngủ ngon\r\nKhi nói chuyện với bạn bè thân thiết lâu năm , bạn cũng có thể nói \"Oyasumi\" \r\n\r\n4. Biến thể chào tiếng Nhật\r\n- \"ossu\" là một lời chào rất thân mật được sử dụng giữa những người bạn nam thân hoặc người thân gần gũi nam ở cùng độ tuổi. Cụm từ này thường không được sử dụng giữa những người bạn nữ hoặc giữa bạn bè khác giới tính.\r\n- Ở  Osaka, \"yaho\"cũng là một cách để nói xin chào với bạn bè. Nó thường được viết bằng katakana, một biến thể của biểu cảm. yahoo trong tiếng Anh. Yaho cũng được sử dụng như là một cách để nói chào thân thiện trong giới trẻ, đặc biệt là trẻ em gái.\r\n- \"saikin dō\" là một cách chào quen thuộc gix những người bạn, anh chị em thân thiết. Đây vừa là cách chào vừa là cách hỏi thăm nhẹ nhàng.\r\n- \"hisashiburi.\" là một cách chào hỏi khá thân thiện. Nó có nghĩa là \"lâu rồi không gặp\". Bạn thường sẽ sử dụng lời chào này khi gặp lại một người quen, bạn bè lâu năm không gặp.', '2022-12-09 14:17:54', 0, 3),
(14, '[Giao Tiếp] Các cách nói cảm ơn trong tiếng Nhật', '1. Arigatou あ り が と う\r\nĐây là hình thức cảm ơn tiếng Nhật phổ biến nhất. Nó có nghĩa thông thường là \"cảm ơn bạn\", một cách không quá tầm thường cũng không quá trang trọng. Bạn có thể sử dụng Arigatou cho một loạt các hoạt động xảy ra hằng ngày trong đời sống bình thường, nhưng bạn sẽ không sử dụng nó trong các trường hợp nhấn mạnh hay cần tỏ rõ đặc biệt về lòng biết ơn.\r\n\r\n2. Doumo ど う も\r\nMột từ cảm ơn tiếng Nhật hay được dùng khác, đó là Doumo. Nếu một người nào đó giữ cửa cho bạn hoặc giúp đỡ bạn cầm túi xách một cách thân thiện, bạn sẽ sử dụng Doumo (phát âm là \"Domo\"), điều đó có nghĩa đơn giản là \"Cảm ơn\". \r\n\r\n3. Doumo arigatou ど う も あ り が と う\r\nMột biến thể khác của từ Cảm ơn sử dụng cả hai từ arigatou và doumo. Doumo arigatou có nghĩa là \"Cảm ơn rất nhiều.\" Nó vẫn bình thường, nhưng cũng mạnh hơn Doumo trong việc bày tỏ lòng biết ơn. Bạn có thể sử dụng từ nàyví dụ trong trường hợp ai đó giúp bạn dọn giấy tờ trong phòng làm việc giúp bạn.\r\n\r\n4. Arigatou gozaimasu あ り が と う ご ざ い ま す\r\nNếu bạn đang ở trong một tình huống khá lịch sự (Ví dụ: bạn muốn cám ơn 1 người lớn tuổi hay bề trên, tiền bối), bạn nên sử dụng Arigatou gozaimasu hoặc Arigatou gozaimashita ( あ り が と う ご ざ い ま し た). Đây là một biến thể cao cấp hơn của Arigatou, mang tính lịch sự hơn và bày tỏ nhiều lòng biết ơn hơn.\r\n\r\n5.  Doumo arigatou gozaimasu ど う も あ り が と う ご ざ い ま す\r\nĐây là câu nói biểm hiện sự cảm ơn chân thành nhất và chính thức nhất. Bạn có thể thấy nó bao gồm cả 3 từ cơ bản: arigatou, doumo và gozaimasu. Từ cám ơn tiếng Nhật này mang ý nghĩa lịch sự và trang trọng nhất.', '2022-12-09 14:19:24', 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `QuestionID` int(11) NOT NULL,
  `Question` varchar(255) NOT NULL,
  `TestID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `LevelID` int(11) NOT NULL,
  `Status` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `type` varchar(10) NOT NULL
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
  `email` varchar(100) NOT NULL,
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
-- Indexes for table `account_code`
--
ALTER TABLE `account_code`
  ADD PRIMARY KEY (`codeID`),
  ADD KEY `userID` (`userID`);

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
  ADD PRIMARY KEY (`grammarID`,`UserID`),
  ADD KEY `UserID` (`UserID`);

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
  ADD KEY `test_ibfk_1` (`LevelID`),
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
  ADD PRIMARY KEY (`userID`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account_code`
--
ALTER TABLE `account_code`
  MODIFY `codeID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `alphabet`
--
ALTER TABLE `alphabet`
  MODIFY `alphabetID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `answer`
--
ALTER TABLE `answer`
  MODIFY `AnswerID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `examplegrammar`
--
ALTER TABLE `examplegrammar`
  MODIFY `exampleID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `forum_comment`
--
ALTER TABLE `forum_comment`
  MODIFY `comment_id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `forum_post`
--
ALTER TABLE `forum_post`
  MODIFY `post_id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `forum_report_comment`
--
ALTER TABLE `forum_report_comment`
  MODIFY `report_comment_id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `forum_report_notification`
--
ALTER TABLE `forum_report_notification`
  MODIFY `report_notification_id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `forum_report_post`
--
ALTER TABLE `forum_report_post`
  MODIFY `report_post_id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `forum_topic`
--
ALTER TABLE `forum_topic`
  MODIFY `topic_id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `grammar`
--
ALTER TABLE `grammar`
  MODIFY `grammarID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `kanji`
--
ALTER TABLE `kanji`
  MODIFY `kanjiID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `level`
--
ALTER TABLE `level`
  MODIFY `levelID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `messageID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `notificationID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `QuestionID` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `sessionID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tag`
--
ALTER TABLE `tag`
  MODIFY `TagID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
  MODIFY `TestID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `account_code`
--
ALTER TABLE `account_code`
  ADD CONSTRAINT `account_code_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`);

--
-- Constraints for table `alphabet`
--
ALTER TABLE `alphabet`
  ADD CONSTRAINT `alphabet_ibfk_1` FOREIGN KEY (`type`) REFERENCES `type` (`type`) ON DELETE CASCADE ON UPDATE CASCADE;

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
  ADD CONSTRAINT `grammar_ibfk_1` FOREIGN KEY (`levelID`) REFERENCES `level` (`levelID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `grammarhistory`
--
ALTER TABLE `grammarhistory`
  ADD CONSTRAINT `grammarhistory_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `user` (`userID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `grammarhistory_ibfk_2` FOREIGN KEY (`grammarID`) REFERENCES `grammar` (`grammarID`) ON DELETE CASCADE ON UPDATE CASCADE;

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
  ADD CONSTRAINT `question_ibfk_1` FOREIGN KEY (`TestID`) REFERENCES `test` (`TestID`) ON DELETE CASCADE ON UPDATE CASCADE;

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
  ADD CONSTRAINT `test_ibfk_1` FOREIGN KEY (`LevelID`) REFERENCES `level` (`levelID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `test_ibfk_2` FOREIGN KEY (`TagID`) REFERENCES `tag` (`TagID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
