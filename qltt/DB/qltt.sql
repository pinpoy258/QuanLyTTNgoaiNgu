-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 04, 2022 at 09:28 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `qltt`
--

-- --------------------------------------------------------

--
-- Table structure for table `baikiemtra`
--

CREATE TABLE `baikiemtra` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `day` date NOT NULL,
  `chitiet` text NOT NULL,
  `class_id` int(11) NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  `teacher_id` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `course_id` int(11) NOT NULL,
  `created_at` date NOT NULL,
  `ended_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`id`, `name`, `course_id`, `created_at`, `ended_at`) VALUES
(34, 'Toiec 1', 1, '2022-05-04', '2022-06-01'),
(35, 'Ielts 2', 2, '2022-05-06', '2022-05-30'),
(36, 'ABC', 3, '0000-00-00', '0000-00-00'),
(37, 'Tiếng Anh Lập Trình', 4, '0000-00-00', '0000-00-00'),
(38, 'Anh Ngữ Nhi Đồng', 6, '0000-00-00', '0000-00-00'),
(40, 'Sơ Cấp 2', 8, '2022-05-04', '2022-06-01');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `image` varchar(225) NOT NULL,
  `tomtat` text NOT NULL,
  `soTiet` int(11) NOT NULL,
  `hocphi` int(11) NOT NULL,
  `des` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `name`, `image`, `tomtat`, `soTiet`, `hocphi`, `des`) VALUES
(1, 'Toiec', 'img/625d316081adc.png', '      Học tiếng Hàn đi xuất khẩu lao động Hàn Quốc theo chương trình EPS Topik tại Hà Nội, giúp bạn hoàn thành tốt kỳ thi và đạt kết quả cao.1', 11, 50000000, '<p>\r\n\r\n</p><h1></h1>\r\n\r\n<p></p>\r\n\r\n<p>Toidicode.com là một blog cá nhân chuyên viết về lập trình và những thứ linh tinh nhất trên đời. Được thành lập từ 25-12-2016 bởi thanhtaivtt, cho đến nay thì website vẫn đang trong quá trình <strong>beta</strong>&nbsp;chạy thử nghiệm.</p><h3><br></h3>'),
(2, 'IELTS', 'img/625d32241f913.jpg', 'Học tiếng Hàn đi xuất khẩu lao động Hàn Quốc theo chương trình EPS Topik tại Hà Nội, giúp bạn hoàn thành tốt kỳ thi và đạt kết quả cao.', 10, 40000000, '<p>\r\n\r\n</p><p>Toidicode.com là một blog cá nhân chuyên viết về lập trình và những thứ linh tinh nhất trên đời. Được thành lập từ 25-12-2016 bởi thanhtaivtt, cho đến nay thì website vẫn đang trong quá trình <strong>beta</strong>&nbsp;chạy thử nghiệm.</p><h3>Mục Tiêu</h3><p>Toidicode.com hoạt động với vai trò là blog chia sẻ kiến thức lập trình cũng như những kinh nghiệm làm việc của tác giả.</p><p>Trong tương lai thì blog sẽ có nhiều bài viết hơn, sẽ đa dạng hơn về các ngôn ngữ nhằm đáp ứng nhu cầu cho các bạn sinh viên có nhu cầu tự học lập trình và các bạn đang đi làm muốn nâng cao trình độ của bản thân.</p><p>Ngoài viết về chủ đề lập trình thì trong năm nay toidicode.com sẽ update thêm các bài viết liên quan đến chủ đề SEO, Digital,... mời các bạn đón đọc.</p><h3>Doanh Thu</h3><p>Ngoài chạy quảng cáo adsence để có kinh phí duy trì trang web thì tôi sẽ không chấp nhận các dạng quảng cáo như giới thiệu trung tâm học lập trình uy tín,... Nếu như quảng cáo có che mất nội dung của trang web rất mong mọi người <a target=\"_blank\" rel=\"nofollow\" href=\"http://toidicode.com/lien-he.html\">feedback</a>&nbsp;cho tôi, để tôi khắc phục sớm nhất có thể.</p>\r\n\r\n<p></p>'),
(3, 'Giao tiếp cơ bản', 'img/625d3179e045d.jpg', 'Học tiếng Hàn đi xuất khẩu lao động Hàn Quốc theo chương trình EPS Topik tại Hà Nội, giúp bạn hoàn thành tốt kỳ thi và đạt kết quả cao.', 10, 40000000, '<p>qưeqweq1</p>'),
(4, 'Tiếng anh chuyên', 'img/625d31878ad81.png', 'Ready to challenge yourself? Well, you’re in luck! Don’t you worry, we’ve got the best mind teasers, trivia, ', 10, 40000000, '<p>\r\n\r\n</p><p>Ready to challenge yourself? Well, you’re in luck! Don’t you worry, we’ve got the best mind teasers, trivia, and general knowledge questions to test how smart you really are when it comes to all things knowledge, education, and more! If you consider yourself a wiz when it comes to riddles, or if you just need a break from the hectic world around you - give this quiz a try!</p><p>Do you know the biggest planet in our solar system? What about the full lyrics to Michael Jackson’s “Beat It”? Can you quote every line from “Pretty Woman”, or figure out how many mittens two iguanas and three kittens would need to stay warm in the winter? If you said yes to any of these questions, then this is the place for you! From quizzes about your hometown to quizzes about your favorite songs, women.com has it all!</p><p>Looking for a math test? A grammar test? A movie test? Or maybe even a nursery rhyme test? Whatever your heart desires, we can quiz you on it! Visit women.com/quizzes to check out some of our other viral content, and as always, don’t forget to share with your friends! Our goal at women.com is to make people feel good about who they are - and take a relaxing break from the world outside to do something that they enjoy.</p><p>So take a breath, stop whatever you’re doing, and get ready to have a little fun. This three-minute escape is exactly what you need!</p>\r\n\r\n<br><p></p>'),
(6, 'Tiếng Anh Cho Bé', 'img/625d31d417224.jpg', 'Tiếng Anh cho bé phát triển tương lai', 10, 5000000, '<p>Reading, Writing, Listenning, Speaking</p>'),
(8, 'N5', 'img/6271ba71ea0e4.jpg', 'awe', 11, 100000, '<p>qaz</p>'),
(10, 'Tiếng Pháp', 'img/6272267f4d7f7.png', 'dvdvf', 10, 50000000, '<p>vđvdv</p>');

-- --------------------------------------------------------

--
-- Table structure for table `dangky`
--

CREATE TABLE `dangky` (
  `id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `course_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dangky`
--

INSERT INTO `dangky` (`id`, `student_id`, `course_id`, `class_id`, `created_at`) VALUES
(267, 160, 1, 34, '2022-05-04'),
(268, 161, 2, 35, '2022-05-04'),
(269, 162, 3, 36, '2022-05-04'),
(270, 163, 4, 37, '2022-05-04'),
(271, 164, 6, 38, '2022-05-04'),
(272, 165, 2, 35, '2022-05-04'),
(273, 166, 4, 37, '2022-05-04'),
(275, 168, 2, 35, '2022-05-04'),
(276, 169, 8, 40, '2022-05-04');

-- --------------------------------------------------------

--
-- Table structure for table `lesson`
--

CREATE TABLE `lesson` (
  `id` int(11) NOT NULL,
  `name` varchar(225) NOT NULL,
  `chitiet` text NOT NULL,
  `course_id` int(11) NOT NULL,
  `created_at` date NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lesson`
--

INSERT INTO `lesson` (`id`, `name`, `chitiet`, `course_id`, `created_at`, `created_by`) VALUES
(7, 'Tiếng Anh 1', 'img/LapTringWeb.pdf', 1, '2022-04-28', 1);

-- --------------------------------------------------------

--
-- Table structure for table `lopkhoahoc`
--

CREATE TABLE `lopkhoahoc` (
  `id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `course_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lopkhoahoc`
--

INSERT INTO `lopkhoahoc` (`id`, `class_id`, `course_id`) VALUES
(45, 34, 1),
(46, 35, 2),
(47, 36, 3);

-- --------------------------------------------------------

--
-- Table structure for table `page`
--

CREATE TABLE `page` (
  `id` int(11) NOT NULL,
  `content` text NOT NULL,
  `video` text NOT NULL,
  `tomtat` text NOT NULL,
  `image` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `page`
--

INSERT INTO `page` (`id`, `content`, `video`, `tomtat`, `image`) VALUES
(1, '<p>\r\n\r\n</p><h1></h1>\r\n\r\n<p></p>\r\n\r\n<p>Toidicode.com là một blog cá nhân chuyên viết về lập trình và những thứ linh tinh nhất trên đời. Được thành lập từ 25-12-2016 bởi thanhtaivtt, cho đến nay thì website vẫn đang trong quá trình <strong>beta</strong>&nbsp;chạy thử nghiệm.</p><h3>Mục Tiêu</h3><p>Toidicode.com hoạt động với vai trò là blog chia sẻ kiến thức lập trình cũng như những kinh nghiệm làm việc của tác giả.</p><p>Trong tương lai thì blog sẽ có nhiều bài viết hơn, sẽ đa dạng hơn về các ngôn ngữ nhằm đáp ứng nhu cầu cho các bạn sinh viên có nhu cầu tự học lập trình và các bạn đang đi làm muốn nâng cao trình độ của bản thân.</p><p>Ngoài viết về chủ đề lập trình thì trong năm nay toidicode.com sẽ update thêm các bài viết liên quan đến chủ đề SEO, Digital,... mời các bạn đón đọc.</p><h3>Doanh Thu</h3><p>Ngoài chạy quảng cáo adsence để có kinh phí duy trì trang web thì tôi sẽ không chấp nhận các dạng quảng cáo như giới thiệu trung tâm học lập trình uy tín,... Nếu như quảng cáo có che mất nội dung của trang web rất mong mọi người <a target=\"_blank\" rel=\"nofollow\" href=\"http://toidicode.com/lien-he.html\">feedback</a>&nbsp;cho tôi, để tôi khắc phục sớm nhất có thể.</p><h3>Vấn đề riêng tư</h3><p>Vấn đề riêng tư của khách truy cập là rất quan trọng đối với tôi, nên tôi <strong>cam kết</strong>&nbsp;sẽ không lưu trữ các thông tin riêng tư, nhạy cảm của người truy cập.</p><h3>Bình Luận</h3><p>Về vấn đề bình luận thì tạm thời tôi vẫn đang cho phép người dùng bình luận trên facebook, nhưng nếu như các bạn có những bình luận thô tục, vô văn hóa,... thì tôi sẽ block bạn (trên trang của tôi) để tạo ra một cộng đồng trong sạch hơn.</p><h3>Cộng đồng</h3><p>- Hiện tại tôi đang hoạt động trên các mạng xã hội:</p><ul><li><a target=\"_blank\" rel=\"nofollow\" href=\"https://www.facebook.com/toidicode/\">Facebook Fanpage</a></li><li><a target=\"_blank\" rel=\"nofollow\" href=\"https://plus.google.com/+ThanhT%C3%A0ithanhtaivtt?hl=vi\">Google+</a></li><li><a target=\"_blank\" rel=\"nofollow\" href=\"https://www.facebook.com/groups/toidicodegroup/\">Facebooke Group</a></li></ul>\r\n\r\n<p></p>\r\n\r\n<p></p><p><br></p>', '<div class=\"embed-responsive embed-responsive-16by9\">\r\n                                        <iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/dfpAnFVKcLs\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>\r\n                                      </div>', 'Chị Nguyễn Hồng Hạnh (Hà Nội) Tôi rất tin tưởng vào chất lượng dạy và học tại AMES ENGLISH. Các thầy cô có phương pháp giảng dạy tốt, đồ dùng dạy học rất phong phú. Hai cháu nhà tôi đã học tại đây 4 năm rồi, cứ đến thứ Bảy, Chủ Nhật là các cháu lại háo hức đến trung tâm để học với các thầy cô giáo nước ngoài. chị Nguyễn Hồng Hạnh (Hà Nội)  Tôi rất tin tưởng vào chất lượng dạy và học tại AMES ENGLISH. Các thầy cô có phương pháp giảng dạy tốt, đồ dùng dạy học rất phong phú. Hai cháu nhà tôi đã học tại đây 4 năm rồi, cứ đến thứ Bảy, Chủ Nhật là các cháu lại háo hức đến trung tâm để học với các thầy cô giáo nước ngoài.', 'img/song-hye-kyo-2_43.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(225) NOT NULL,
  `icons` varchar(225) NOT NULL,
  `link` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `user_id`, `name`, `icons`, `link`) VALUES
(3, 0, 'Thời khóa biểu', 'fa fa-table', 'thoikhoabieu'),
(4, 0, 'Bài tập', 'fa fa-file-text', 'baitap'),
(5, 1, 'Lớp học', 'fa fa-university', 'lop'),
(7, 1, 'Thời khóa biểu', 'fa fa-table', 'thoikhoabieu'),
(8, 1, 'Bài tập', 'fa fa-file-text', 'baitap'),
(9, 500, 'Quản Lý Khóa học', 'fa fa-book', 'khoahoc'),
(10, 500, 'Quản Lý Lớp học', 'fa fa-university', 'lop'),
(11, 500, 'Quản Lý Lớp khóa học', 'fa fa-university', 'lopkhoahoc'),
(12, 500, 'Quản Lý Giáo viên', 'fa fa-users', 'giaovien'),
(13, 500, 'Quản Lý Đăng Ký', 'fa fa-user-circle-o', 'khachhang'),
(14, 500, 'Quản Lý Nhân viên', 'fa fa-users', 'nhanvien'),
(15, 500, 'Thời khóa biểu', 'fa fa-table', 'thoikhoabieu'),
(16, 500, 'Bài tập', 'fa fa-file-text', 'baitap'),
(17, 500, 'Quản Lý Học viên', 'fa fa-user-plus', 'hocvien'),
(18, 500, 'Slideshow', 'fa fa-file-image-o', 'anh'),
(19, 500, 'Cấu hình', 'fa fa-cog', 'cau-hinh'),
(20, 500, 'Quản Lý Phòng Học', 'fa fa-home', 'phong');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `des` varchar(200) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `name`, `des`, `status`) VALUES
(1, 'P01', '', 1),
(2, 'P02', '', 1),
(4, 'P03', '', 1),
(5, 'P04', '', 1),
(6, 'P05', '', 1),
(7, 'P06', '', 1),
(8, 'P07', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE `session` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `time` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `session`
--

INSERT INTO `session` (`id`, `name`, `time`) VALUES
(1, 'Ca 1', '7h15p-9h15p'),
(2, 'Ca 2', '9h20p-11h20p'),
(3, 'Ca 3', '12h-2h'),
(4, 'Ca 4', '2h10p-4h10p'),
(5, 'Ca 5', '4h20p-6h20p');

-- --------------------------------------------------------

--
-- Table structure for table `slideshows`
--

CREATE TABLE `slideshows` (
  `id` int(11) NOT NULL,
  `image` varchar(225) NOT NULL,
  `des` varchar(225) DEFAULT NULL,
  `url` varchar(225) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `order_number` int(11) NOT NULL,
  `created_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `slideshows`
--

INSERT INTO `slideshows` (`id`, `image`, `des`, `url`, `status`, `order_number`, `created_by`) VALUES
(1, 'img/ielts.jpg', '', 'https://www.youtube.com/watch?v=ooGDTbaFK34&t=274s', 1, 1, 0),
(2, 'img/ITSkill_Advance.png', NULL, 'http://localhost/qltt/admin/anh/edit.php?id=2', 1, 2, NULL),
(3, 'img/IELTS-Coaching-Center.jpg', NULL, 'http://localhost/qltt/admin/anh/edit.php?id=2', 1, 3, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `fullname` varchar(200) NOT NULL,
  `avatar` varchar(200) DEFAULT 'img/29541772703_6ed8b50c47_b.jpg',
  `gender` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `phone` varchar(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `role` int(225) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `email`, `password`, `fullname`, `avatar`, `gender`, `date`, `address`, `phone`, `status`, `role`) VALUES
(153, 'lehiep4325@gmail.com', '$2y$10$a7v2A3opCnwKzSwf35ViDu3NlXa/CdOTH3CB/.9VZQvY.UcZwHGzS', 'Lê Văn Hiệp', 'img/29541772703_6ed8b50c47_b.jpg', NULL, NULL, NULL, '0123456789', 1, 0),
(154, 'hiep@gmail.com', '$2y$10$tHu6EMJyPS7TIzs/GyOQTuEJ2V8./AWtYgwo/QzegDx8NLj3biFeW', 'Lê Văn Hiệp1', 'img/29541772703_6ed8b50c47_b.jpg', NULL, NULL, NULL, '0123456789', 1, 0),
(155, 'admin@gmail.com', '$2y$10$E.Er3T3tire2bghJJSagNuW4rMdbhvnLN4.IsKjahEu/fIEhwbOMi', 'Lê Văn Hiệp2', 'img/29541772703_6ed8b50c47_b.jpg', NULL, NULL, NULL, '0123456789', 1, 0),
(156, 'lehiep4325@gmail.com', '$2y$10$uPYP03cqulfKcx.p.r9iU.zpTK0gvzOL2g96GdzMpUxudEm/dCO2K', 'Lê Văn Hiệp2', 'img/29541772703_6ed8b50c47_b.jpg', NULL, NULL, NULL, '0123456789', 1, 0),
(157, 'admin@gmail.com', '$2y$10$cbR/VF3yRGzksoJdao9wkOJoyNsXsBJ2NCrSpISyxb51/x.zYL0d.', 'Lê Văn Hiệp2', 'img/29541772703_6ed8b50c47_b.jpg', NULL, NULL, NULL, '0123456789', 1, 0),
(158, 'hiep@gmail.com', '$2y$10$gGmBeyWorQpkUz.E8fHb3uTu04GEU0lZIiweS8DyhMsFYY7dt3ytW', 'Lê Văn Hiệp', 'img/29541772703_6ed8b50c47_b.jpg', NULL, NULL, NULL, '0123456789', 1, 0),
(159, 'hiep@gmail.com', '$2y$10$uj3eUtJIosqFwM792MGoTenhDTHB85QFufDJUcck3BJV1X1NNIXMO', 'Lê Văn Hiệp1', 'img/29541772703_6ed8b50c47_b.jpg', NULL, NULL, NULL, '0123456789', 1, 0),
(160, 'lehiep4325@gmail.com', '$2y$10$qiARd5Ri31tBIh2kp2CtTujODV.O120UJ6Ec9GX4wSf769s/Zrqxm', 'Lê Văn Hiệp', 'img/29541772703_6ed8b50c47_b.jpg', NULL, NULL, NULL, '0123456789', 1, 0),
(161, 'lehiep4325@gmail.com', '$2y$10$EzH2AwaaUqvYL8Dx9UqQ1eSrEjCsxIV8iZ8G2CWB5ZbuINvwJ2uUy', 'Lê Văn Hiệp1', 'img/29541772703_6ed8b50c47_b.jpg', NULL, NULL, NULL, '0123456789', 1, 0),
(162, 'lehiep4325@gmail.com', '$2y$10$BXXgCiFgZJcr4g8gCY1XNOB2e.FMHQSPD5Nyd2nPnUBPrtFIRZeS.', 'Lê Văn Hiệp', 'img/29541772703_6ed8b50c47_b.jpg', NULL, NULL, NULL, '0123456789', 1, 0),
(163, 'levanhie@gmail.com', '$2y$10$TSKcptKFrZk/wcvjt.cr8u579mEKCzSIMpJ3wRvPMPYFq7MGWf.k6', 'Lê Văn Hiệp', 'img/29541772703_6ed8b50c47_b.jpg', NULL, NULL, NULL, '0123456789', 1, 0),
(164, 'admin123@gmail.com', '$2y$10$.c7oyHWjNgV0SqYZnVaXU.Mtu5Pn0i6D15yFgwFUXP30yPS6fs9BS', 'Lê Văn Hiệp1', 'img/29541772703_6ed8b50c47_b.jpg', NULL, NULL, NULL, '0123456789', 1, 0),
(165, 'hiep@gmail.com', '$2y$10$ZWUsqqboXJLc5IACuOM9auk/xFGpM0AVA6OUhFzxjbqqxZSmJsIZe', 'lehiep4325@gmail.com', 'img/29541772703_6ed8b50c47_b.jpg', NULL, NULL, NULL, '0123456789', 1, 0),
(166, 'lehiep4325@gmail.com', '$2y$10$OcfOkKXhVnBBGNoukoxJFOYowW8jBfkIelMYHFTFHn6Z1Luuq8uQC', 'Lê Văn Hiệp', 'img/29541772703_6ed8b50c47_b.jpg', NULL, NULL, NULL, '0123456789', 1, 0),
(167, 'lehiep4325@gmail.com', '$2y$10$LwQt3zLCEk1G4bNnq9Fc9eryUcMNq0Ok0CfgNvioRiZtczxwGIdVS', 'Lê Văn Hiệp', 'img/29541772703_6ed8b50c47_b.jpg', NULL, NULL, NULL, '0123456789', 1, 0),
(168, 'lehiep4325@gmail.com', '$2y$10$.Alpqw5SZQStnykZnGoad.pf760eedSwf9R3riIR5cWoYZPlF5FpK', 'Lê Văn Hiệp', 'img/29541772703_6ed8b50c47_b.jpg', NULL, NULL, NULL, '0123456789', 1, 0),
(169, 'lehiep4325@gmail.com', '$2y$10$oMwSRzZwvB3hTy9QdYcOyOFoM7ueBWXGcxx4JintmQChXGRxIC30.', 'Lê Văn Hiệp', 'img/29541772703_6ed8b50c47_b.jpg', NULL, NULL, NULL, '0123456789', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` int(11) NOT NULL,
  `email` varchar(200) DEFAULT NULL,
  `password` varchar(200) NOT NULL,
  `fullname` varchar(200) NOT NULL,
  `avatar` varchar(200) DEFAULT 'img/29541772703_6ed8b50c47_b.jpg',
  `phone` varchar(11) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `gender` int(11) NOT NULL,
  `status` int(11) DEFAULT 1,
  `role` int(225) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `email`, `password`, `fullname`, `avatar`, `phone`, `address`, `gender`, `status`, `role`) VALUES
(6, 'lehiep4325@gmail.com', '$2y$10$.yJTfzrG5L/3lJrPBTRCme3RX1QJp7K4A4qYb3JORfVqjuNq4Byom', 'Lê Văn Hiệp', 'img/top.webp', '0123654789', 'Nguyễn Khoái, Q4', 1, 1, 1),
(7, 'lehiep4325@gmail.com', '$2y$10$t9AHTS0b6oKW3SOsnOozpuLU5Z395eRR4vNDfNadg1u0PPb7pJlsO', 'Lê Văn Hiệp2', 'img/29541772703_6ed8b50c47_b.jpg', '0123456789', 'Nguyễn Khoái, Q4', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `timetable`
--

CREATE TABLE `timetable` (
  `id` int(11) NOT NULL,
  `day` date NOT NULL,
  `course_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `timetable`
--

INSERT INTO `timetable` (`id`, `day`, `course_id`, `class_id`, `room_id`, `teacher_id`, `session_id`) VALUES
(1046, '2022-05-09', 1, 34, 2, 6, 5),
(1047, '2022-05-11', 1, 34, 2, 6, 5),
(1048, '2022-05-13', 1, 34, 2, 6, 5),
(1049, '2022-05-16', 1, 34, 2, 6, 5),
(1050, '2022-05-18', 1, 34, 2, 6, 5),
(1051, '2022-05-20', 1, 34, 2, 6, 5),
(1052, '2022-05-23', 1, 34, 2, 6, 5),
(1053, '2022-05-25', 1, 34, 2, 6, 5),
(1054, '2022-05-27', 1, 34, 2, 6, 5),
(1055, '2022-05-30', 1, 34, 2, 6, 5),
(1056, '2022-06-01', 1, 34, 2, 6, 5),
(1057, '2022-05-09', 2, 35, 1, 6, 1),
(1058, '2022-05-11', 2, 35, 1, 6, 1),
(1059, '2022-05-13', 2, 35, 1, 6, 1),
(1060, '2022-05-16', 2, 35, 1, 6, 1),
(1061, '2022-05-18', 2, 35, 1, 6, 1),
(1062, '2022-05-20', 2, 35, 1, 6, 1),
(1063, '2022-05-23', 2, 35, 1, 6, 1),
(1064, '2022-05-25', 2, 35, 1, 6, 1),
(1065, '2022-05-27', 2, 35, 1, 6, 1),
(1066, '2022-05-30', 2, 35, 1, 6, 1),
(1067, '2022-05-09', 8, 40, 4, 6, 1),
(1068, '2022-05-11', 8, 40, 4, 6, 1),
(1069, '2022-05-13', 8, 40, 4, 6, 1),
(1070, '2022-05-16', 8, 40, 4, 6, 1),
(1071, '2022-05-18', 8, 40, 4, 6, 1),
(1072, '2022-05-20', 8, 40, 4, 6, 1),
(1073, '2022-05-23', 8, 40, 4, 6, 1),
(1074, '2022-05-25', 8, 40, 4, 6, 1),
(1075, '2022-05-27', 8, 40, 4, 6, 1),
(1076, '2022-05-30', 8, 40, 4, 6, 1),
(1077, '2022-06-01', 8, 40, 4, 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL DEFAULT 'img/29541772703_6ed8b50c47_b.jpg',
  `gender` int(11) NOT NULL,
  `phone_number` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `fullname`, `password`, `role`, `address`, `avatar`, `gender`, `phone_number`) VALUES
(3, 'lehiep4325@gmail.com', 'Lê Văn Hiệp', '$2y$10$akUyNNWkjipG1ApML.WAxeI5kq2Evu7sGT45OGpVXbbf2Bgz.5/hK', 500, 'Cao Lỗ Q8', 'img/625e9fdb44b0f.jpg', 1, '0123654789'),
(5, 'admin@gmail.com', 'admin', '$2y$10$Z2e5KCRa.LZ1H70LxC5DmOvVsoS6rhuJQdjo9NCNduHVCVlzYmejG', 500, 'Cao Lỗ Q8', 'img/6271e103baab9.jpg', 1, '0123456789');

-- --------------------------------------------------------

--
-- Table structure for table `web_settings`
--

CREATE TABLE `web_settings` (
  `id` int(11) NOT NULL,
  `logo` varchar(225) NOT NULL,
  `map` text NOT NULL,
  `email` varchar(225) NOT NULL,
  `fb` text NOT NULL,
  `hl` varchar(11) NOT NULL,
  `timework` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_settings`
--

INSERT INTO `web_settings` (`id`, `logo`, `map`, `email`, `fb`, `hl`, `timework`) VALUES
(1, 'img/e_center.png', 'Nguyễn Khoái P2, Q4', 'lehiep4325@gmail.com', '', '0123456789', '8h - 18h');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `baikiemtra`
--
ALTER TABLE `baikiemtra`
  ADD PRIMARY KEY (`id`),
  ADD KEY `11` (`class_id`),
  ADD KEY `12` (`course_id`);

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Test` (`course_id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dangky`
--
ALTER TABLE `dangky`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Test1` (`student_id`),
  ADD KEY `Test2` (`course_id`),
  ADD KEY `Test3` (`class_id`);

--
-- Indexes for table `lesson`
--
ALTER TABLE `lesson`
  ADD PRIMARY KEY (`id`),
  ADD KEY `6` (`course_id`);

--
-- Indexes for table `lopkhoahoc`
--
ALTER TABLE `lopkhoahoc`
  ADD PRIMARY KEY (`id`),
  ADD KEY `20` (`class_id`),
  ADD KEY `21` (`course_id`);

--
-- Indexes for table `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slideshows`
--
ALTER TABLE `slideshows`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `timetable`
--
ALTER TABLE `timetable`
  ADD PRIMARY KEY (`id`),
  ADD KEY `1` (`class_id`),
  ADD KEY `2` (`course_id`),
  ADD KEY `3` (`room_id`),
  ADD KEY `4` (`teacher_id`),
  ADD KEY `5` (`session_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_settings`
--
ALTER TABLE `web_settings`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `baikiemtra`
--
ALTER TABLE `baikiemtra`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `dangky`
--
ALTER TABLE `dangky`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=277;

--
-- AUTO_INCREMENT for table `lesson`
--
ALTER TABLE `lesson`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `lopkhoahoc`
--
ALTER TABLE `lopkhoahoc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `page`
--
ALTER TABLE `page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `session`
--
ALTER TABLE `session`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `slideshows`
--
ALTER TABLE `slideshows`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `timetable`
--
ALTER TABLE `timetable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1078;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `web_settings`
--
ALTER TABLE `web_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `baikiemtra`
--
ALTER TABLE `baikiemtra`
  ADD CONSTRAINT `11` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`),
  ADD CONSTRAINT `12` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`);

--
-- Constraints for table `classes`
--
ALTER TABLE `classes`
  ADD CONSTRAINT `Test` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`);

--
-- Constraints for table `dangky`
--
ALTER TABLE `dangky`
  ADD CONSTRAINT `Test1` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`),
  ADD CONSTRAINT `Test2` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`),
  ADD CONSTRAINT `Test3` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`);

--
-- Constraints for table `lesson`
--
ALTER TABLE `lesson`
  ADD CONSTRAINT `6` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`);

--
-- Constraints for table `lopkhoahoc`
--
ALTER TABLE `lopkhoahoc`
  ADD CONSTRAINT `20` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`),
  ADD CONSTRAINT `21` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`);

--
-- Constraints for table `timetable`
--
ALTER TABLE `timetable`
  ADD CONSTRAINT `1` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`),
  ADD CONSTRAINT `2` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`),
  ADD CONSTRAINT `3` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`),
  ADD CONSTRAINT `4` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`id`),
  ADD CONSTRAINT `5` FOREIGN KEY (`session_id`) REFERENCES `session` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
