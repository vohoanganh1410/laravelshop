-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th3 12, 2021 lúc 04:00 PM
-- Phiên bản máy phục vụ: 10.4.8-MariaDB
-- Phiên bản PHP: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `project_lar`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2021_03_09_024501_vp_user', 1),
(4, '2021_03_09_085056_vp_categories', 2),
(5, '2021_03_09_141103_vp_products', 3),
(6, '2021_03_10_083136_vp_comment', 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vp_categories`
--

CREATE TABLE `vp_categories` (
  `cate_id` int(10) UNSIGNED NOT NULL,
  `cate_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cate_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vp_categories`
--

INSERT INTO `vp_categories` (`cate_id`, `cate_name`, `cate_slug`, `created_at`, `updated_at`) VALUES
(1, 'iPhone', 'iphone', NULL, NULL),
(2, 'Samsung', 'samsung', NULL, NULL),
(3, 'HTC', 'htc', '2021-03-09 02:26:57', '2021-03-12 07:17:06'),
(8, 'Lisa', 'lisa', '2021-03-12 07:13:21', '2021-03-12 07:13:21'),
(9, 'Oppo', 'oppo', '2021-03-12 07:22:46', '2021-03-12 07:22:46');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vp_comment`
--

CREATE TABLE `vp_comment` (
  `com_id` int(10) UNSIGNED NOT NULL,
  `com_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `com_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `com_content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `com_product` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vp_comment`
--

INSERT INTO `vp_comment` (`com_id`, `com_email`, `com_name`, `com_content`, `com_product`, `created_at`, `updated_at`) VALUES
(3, 'vohoanganh1410@gmail.com', 'Lisa', 'hihi', 13, '2021-03-12 07:30:42', '2021-03-12 07:30:42'),
(4, 'vohoanganh1410@gmail.com', 'ss433434', 'đẹp', 22, '2021-03-12 07:55:28', '2021-03-12 07:55:28');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vp_products`
--

CREATE TABLE `vp_products` (
  `prod_id` int(10) UNSIGNED NOT NULL,
  `prod_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_price` int(11) NOT NULL,
  `prod_img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_warranty` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_accessories` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_condition` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_promotion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_status` tinyint(4) NOT NULL,
  `prod_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_featured` tinyint(4) NOT NULL,
  `prod_cate` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vp_products`
--

INSERT INTO `vp_products` (`prod_id`, `prod_name`, `prod_slug`, `prod_price`, `prod_img`, `prod_warranty`, `prod_accessories`, `prod_condition`, `prod_promotion`, `prod_status`, `prod_description`, `prod_featured`, `prod_cate`, `created_at`, `updated_at`) VALUES
(12, 'Iphone 6S', 'iphone-6s', 3000000, 'product.jpg', '1 năm', 'Cường lực, tai nghe, ốp điên thoại', '99%', '5% khi thanh toán bằng hình thức chuyển khoản', 1, '<p>M&agrave;n h&igrave;nh: 4.7&nbsp;inch, LED IPS LCD</p>\r\n\r\n<p>CPU: Apple A9&nbsp;2 nh&acirc;n, Power VR GT7600</p>\r\n\r\n<p>Hệ điều h&agrave;nh: IOS 12</p>\r\n\r\n<p>Ram: 2&nbsp;GB</p>\r\n\r\n<p>Rom: 16GB; 32&nbsp;GB; 64GB</p>\r\n\r\n<p>Camera: trước 5 Mp&nbsp;/ sau 12&nbsp;Mp</p>\r\n\r\n<p>Pin: 1715&nbsp;mAh</p>\r\n\r\n<p>Trọng lượng: 143 g<br />\r\nSim : Bản 1 sim.</p>', 0, 1, '2021-03-12 07:16:35', '2021-03-12 07:37:29'),
(13, 'HTC One M7', 'htc-one-m7', 4200000, 'product-3.png', '1 năm', 'Tai nghe, ốp điện thoại', 'New', 'không', 1, '<p>SẢN PHẨM: Điện Thoại HTC</p>\r\n\r\n<p>THIẾT KẾ Nguy&ecirc;n Khối &ndash; Thiết kế nh&ocirc;m nguy&ecirc;n khối cho chiếc điện thoại c&oacute; v&oacute;c d&aacute;ng sang trọng hơn, kh&ocirc;ng c&oacute; bất cứ một ốc v&iacute;t . -HTC One M7 &nbsp;l&agrave; một chiếc m&aacute;y ho&agrave;n thiện v&agrave; kh&aacute;c biệt rất nhiều do&nbsp;thiết kế mới, đẹp, độc lạ mang lại. &ndash; Mặt trước được chia l&agrave;m 3 phần với hai dải loa , từng chi tiết nhỏ như những lỗ đục ở dải loa đều được l&agrave;m tỉ mỉ, cẩn thận II :M&Agrave;N H&Igrave;NH ĐẸP &ndash; M&agrave;n h&igrave;nh&nbsp;4.7 inch, Full HD 1080p, 468 ppi, mật độ điểm ảnh cao, mặc d&ugrave; ra trước những m&aacute;y c.m&agrave;n h&igrave;nh hiển thị rất đẹp, m&agrave;u sắc tự nhi&ecirc;n kh&ocirc;ng bị qu&aacute; sặc sỡ&nbsp;</p>\r\n\r\n<p>CẤU H&Igrave;NH V&Agrave; PIN</p>\r\n\r\n<p>&ndash; M&aacute;y sử dụng chip l&otilde;i tứ,ram 2Gb.đi k&egrave;m vớ bộ nhớ trong 16gb .Khả năng xử l&yacute; thao t&aacute;c trơn tru, phản hồi&nbsp;nhanh,&nbsp;kh&ocirc;ng hề tỏ ra lag giật g&igrave; kể cả khi chơi những game 3D nặng như Asphalt 8, sử dụng l&acirc;u kh&ocirc;ng bị n&oacute;ng m&aacute;y.&nbsp; &ndash; Pin 2400 mAh, d&ugrave;ng đc 1 ng&agrave;y hoặc 1 ng&agrave;y rưỡi với c&aacute;c thao t&aacute;c cơ bản.</p>\r\n\r\n<p>&nbsp;Đ&Aacute;NH GI&Aacute; CAMERA - LOA Đ&Ocirc;I 1: CAMERA HTC One M7&nbsp;sở hữu camera ch&iacute;nh 4MP, Camera phụ l&agrave; 2.1MP. Với c&aacute;c th&ocirc;ng số tr&ecirc;n, sẽ cho bạn những bức ảnh tuyệt vời nhất, mọi khoảng khắc tuyệt vời đều sẽ được lưu trữ tr&ecirc;n chiếc&nbsp;HTC One M7 2: LOA Đ&Ocirc;I CỰC ĐỈNH &nbsp;mang lại cho bạn những ph&uacute;t gi&acirc;y giải tr&iacute; cực đỉnh của những bộ phim Boom tấn hay những bản nhạc cực chất&nbsp;với c&ocirc;ng nghệ loa Boomsound sống động</p>', 0, 3, '2021-03-12 07:19:28', '2021-03-12 07:19:28'),
(16, 'Samsung A21', 'samsung-a21', 4700000, 'product-2.png', '3 năm', 'Cường lực, tai nghe, ốp điên thoại', 'xịn', '0', 1, '<table style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<th colspan=\"2\">TH&Ocirc;NG TIN CHUNG</th>\r\n		</tr>\r\n		<tr>\r\n			<td>H&atilde;ng sản xuất</td>\r\n			<td>Samsung</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Xuất xứ</td>\r\n			<td>H&agrave;n Quốc</td>\r\n		</tr>\r\n		<tr>\r\n			<td><a href=\"javascript:CallHelp(1,1)\">Hệ điều h&agrave;nh</a></td>\r\n			<td>ColorOS 6.0.1, nền tảng Android 9.0</td>\r\n		</tr>\r\n		<tr>\r\n			<td><a href=\"javascript:CallHelp(1,2)\">Ng&ocirc;n ngữ</a></td>\r\n			<td>Đa ng&ocirc;n ngữ</td>\r\n		</tr>\r\n		<tr>\r\n			<th colspan=\"2\">M&Agrave;N H&Igrave;NH</th>\r\n		</tr>\r\n		<tr>\r\n			<td><a href=\"javascript:CallHelp(1,3)\">Loại m&agrave;n h&igrave;nh</a></td>\r\n			<td>TFT LCD</td>\r\n		</tr>\r\n		<tr>\r\n			<td><a href=\"javascript:CallHelp(1,4)\">M&agrave;u m&agrave;n h&igrave;nh</a></td>\r\n			<td>16 Triệu</td>\r\n		</tr>\r\n		<tr>\r\n			<td><a href=\"javascript:CallHelp(1,6)\">Độ ph&acirc;n giải</a></td>\r\n			<td>(720 x 1600 (HD+)</td>\r\n		</tr>\r\n		<tr>\r\n			<td><a href=\"javascript:CallHelp(1,7)\">M&agrave;n h&igrave;nh rộng</a></td>\r\n			<td>6.5 inch</td>\r\n		</tr>\r\n		<tr>\r\n			<th colspan=\"2\">CHỤP H&Igrave;NH &amp; QUAY PHIM</th>\r\n		</tr>\r\n		<tr>\r\n			<td><a href=\"javascript:CallHelp(1,9)\">Camera sau</a></td>\r\n			<td>48 MP + 8 MP + 2 MP + 2 MP, 4 camera</td>\r\n		</tr>\r\n		<tr>\r\n			<td><a href=\"javascript:CallHelp(1,10)\">Camera trước</a></td>\r\n			<td>16.0 MP</td>\r\n		</tr>\r\n		<tr>\r\n			<td><a href=\"javascript:CallHelp(1,11)\">Đ&egrave;n Flash</a></td>\r\n			<td>C&oacute;</td>\r\n		</tr>\r\n		<tr>\r\n			<td><a href=\"javascript:CallHelp(1,12)\">T&iacute;nh năng camera</a></td>\r\n			<td>Hiệu ứng AR Stickers, A.I Camera, Chế độ chụp ban đ&ecirc;m (&aacute;nh s&aacute;ng yếu), Chế độ Time-Lapse, Chế độ Slow Motion, Chụp ảnh x&oacute;a ph&ocirc;ng, Chụp bằng cử chỉ, Chế độ l&agrave;m đẹp, Google Lens, Chụp h&igrave;nh g&oacute;c si&ecirc;u rộng,</td>\r\n		</tr>\r\n		<tr>\r\n			<td><a href=\"javascript:CallHelp(1,13)\">Quay phim</a></td>\r\n			<td>Quay phim HD 720p@30fps, Quay phim FullHD 1080p@30fps, Quay phim 4K 2160p@30fps</td>\r\n		</tr>\r\n		<tr>\r\n			<td><a href=\"javascript:CallHelp(1,14)\">Videocall</a></td>\r\n			<td>C&oacute;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 1, 2, '2021-03-12 07:33:33', '2021-03-12 07:33:33'),
(17, 'Lisa', 'lisa', 1200000, 'product-4.png', '1 năm', 'Cường lực, tai nghe, ốp điên thoại', '2neww', '0', 0, '<p>điện thoại cổ cho ae</p>', 0, 8, '2021-03-12 07:36:53', '2021-03-12 07:36:53'),
(18, 'Oppo A9', 'oppo-a9', 4500000, 'big_340013_dd.jpg', '2 năm', 'Cường lực, tai nghe, ốp điên thoại', '2neww', '0', 1, '<table style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<th colspan=\"2\">TH&Ocirc;NG TIN CHUNG</th>\r\n		</tr>\r\n		<tr>\r\n			<td>H&atilde;ng sản xuất</td>\r\n			<td>Oppo</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Xuất xứ</td>\r\n			<td>Trung Quốc</td>\r\n		</tr>\r\n		<tr>\r\n			<td><a href=\"javascript:CallHelp(1,1)\">Hệ điều h&agrave;nh</a></td>\r\n			<td>ColorOS 6.0.1, nền tảng Android 9.0</td>\r\n		</tr>\r\n		<tr>\r\n			<td><a href=\"javascript:CallHelp(1,2)\">Ng&ocirc;n ngữ</a></td>\r\n			<td>Đa ng&ocirc;n ngữ</td>\r\n		</tr>\r\n		<tr>\r\n			<th colspan=\"2\">M&Agrave;N H&Igrave;NH</th>\r\n		</tr>\r\n		<tr>\r\n			<td><a href=\"javascript:CallHelp(1,3)\">Loại m&agrave;n h&igrave;nh</a></td>\r\n			<td>TFT LCD</td>\r\n		</tr>\r\n		<tr>\r\n			<td><a href=\"javascript:CallHelp(1,4)\">M&agrave;u m&agrave;n h&igrave;nh</a></td>\r\n			<td>16 Triệu</td>\r\n		</tr>\r\n		<tr>\r\n			<td><a href=\"javascript:CallHelp(1,6)\">Độ ph&acirc;n giải</a></td>\r\n			<td>(720 x 1600 (HD+)</td>\r\n		</tr>\r\n		<tr>\r\n			<td><a href=\"javascript:CallHelp(1,7)\">M&agrave;n h&igrave;nh rộng</a></td>\r\n			<td>6.5 inch</td>\r\n		</tr>\r\n		<tr>\r\n			<th colspan=\"2\">CHỤP H&Igrave;NH &amp; QUAY PHIM</th>\r\n		</tr>\r\n		<tr>\r\n			<td><a href=\"javascript:CallHelp(1,9)\">Camera sau</a></td>\r\n			<td>48 MP + 8 MP + 2 MP + 2 MP, 4 camera</td>\r\n		</tr>\r\n		<tr>\r\n			<td><a href=\"javascript:CallHelp(1,10)\">Camera trước</a></td>\r\n			<td>16.0 MP</td>\r\n		</tr>\r\n		<tr>\r\n			<td><a href=\"javascript:CallHelp(1,11)\">Đ&egrave;n Flash</a></td>\r\n			<td>C&oacute;</td>\r\n		</tr>\r\n		<tr>\r\n			<td><a href=\"javascript:CallHelp(1,12)\">T&iacute;nh năng camera</a></td>\r\n			<td>Hiệu ứng AR Stickers, A.I Camera, Chế độ chụp ban đ&ecirc;m (&aacute;nh s&aacute;ng yếu), Chế độ Time-Lapse, Chế độ Slow Motion, Chụp ảnh x&oacute;a ph&ocirc;ng, Chụp bằng cử chỉ, Chế độ l&agrave;m đẹp, Google Lens, Chụp h&igrave;nh g&oacute;c si&ecirc;u rộng,</td>\r\n		</tr>\r\n		<tr>\r\n			<td><a href=\"javascript:CallHelp(1,13)\">Quay phim</a></td>\r\n			<td>Quay phim HD 720p@30fps, Quay phim FullHD 1080p@30fps, Quay phim 4K 2160p@30fps</td>\r\n		</tr>\r\n		<tr>\r\n			<td><a href=\"javascript:CallHelp(1,14)\">Videocall</a></td>\r\n			<td>C&oacute;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 1, 9, '2021-03-12 07:42:00', '2021-03-12 07:42:00'),
(19, 'iPhone 11 Pro Max 256GB', 'iphone-11-pro-max-256gb', 12000000, 'a-68.png', '3 năm', 'Cường lực, tai nghe, ốp điên thoại', 'xịn', '4%', 1, '<p>Nh&atilde;n hiệu: Umbala Việt Nam - Kinh doanh kh&ocirc;ng cần vốn</p>\r\n\r\n<p>Ch&iacute;nh h&atilde;ng, Mới 100%, Nguy&ecirc;n seal M&agrave;n h&igrave;nh: 6.5&quot; Camera sau: 3x 12MP Camera trước: 12MP CPU: A13 Bionic Bộ nhớ: 256GB RAM: 4GB Hệ điều h&agrave;nh: iOS 13</p>', 1, 1, '2021-03-12 07:48:01', '2021-03-12 07:48:35'),
(20, 'iPhone X 256GB cũ', 'iphone-x-256gb-cu', 9000000, 'x-gray_9_1553662580_1553662580.jpg', '12', 'Cường lực, tai nghe, ốp điên thoại', 'xịn', '0', 1, '<table border=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>M&agrave;n h&igrave;nh:</td>\r\n			<td>OLED, 5.8&quot;, Super Retina</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Hệ điều h&agrave;nh:</td>\r\n			<td>iOS 11</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Camera sau:</td>\r\n			<td>2 camera 12 MP</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Camera trước:</td>\r\n			<td>7 MP</td>\r\n		</tr>\r\n		<tr>\r\n			<td>CPU</td>\r\n			<td>Apple A10 Fusion 4 nh&acirc;n 64-bit</td>\r\n		</tr>\r\n		<tr>\r\n			<td>RAM:</td>\r\n			<td>3 GB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bộ nhớ trong:</td>\r\n			<td>256 GB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Thẻ sim:</td>\r\n			<td>1 Nano SIM, Hỗ trợ 4G</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Dung lượng pin:</td>\r\n			<td>2716 mAh, C&oacute; sạc nhanh</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 0, 1, '2021-03-12 07:50:19', '2021-03-12 07:50:19'),
(21, 'IPHONE 8 PLUS 64GB 99%', 'iphone-8-plus-64gb-99', 5000000, 'iphone-8-plus-trang_63a9c9c405ef4b02a11c17ac2e72d56d_grande.png', '1 năm', 'Cường lực, tai nghe, ốp điên thoại', 'xịn', '0', 1, '<table border=\"1\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Bộ nhớ trong</td>\r\n			<td>64 GB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Camera ch&iacute;nh</td>\r\n			<td>Dual 12 MP</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ ph&acirc;n giải m&agrave;n h&igrave;nh</td>\r\n			<td>1920 x 1080 pixel (~401 ppi)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Dung lượng pin</td>\r\n			<td>Li-Ion 2691mAh</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Cảm biến</td>\r\n			<td>Fingerprint (front-mounted), accelerometer, gyro, proximity, compass, barometer</td>\r\n		</tr>\r\n		<tr>\r\n			<td>K&iacute;ch thước m&agrave;n h&igrave;nh</td>\r\n			<td>6.5 inch</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Thẻ sim</td>\r\n			<td>1 nano SIM</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Camera phụ</td>\r\n			<td>7 MP</td>\r\n		</tr>\r\n		<tr>\r\n			<td>CPU</td>\r\n			<td>Apple A11 Bionic</td>\r\n		</tr>\r\n		<tr>\r\n			<td>RAM</td>\r\n			<td>3GB</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 0, 1, '2021-03-12 07:53:27', '2021-03-12 07:53:27'),
(22, 'Điện thoại iPhone 12 64GB', 'dien-thoai-iphone-12-64gb', 1800000, 'iphone-12-xanh-duong-new-600x600-200x200.jpg', '2 năm', 'Cường lực, tai nghe, ốp điên thoại', 'xịn', '0', 1, '<h2>Th&ocirc;ng số kỹ thuật</h2>\r\n\r\n<ul>\r\n	<li>M&agrave;n h&igrave;nh:<a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/cac-cong-nghe-noi-bat-tren-man-hinh-iphone-x-1021469#oled\" target=\"_blank\">OLED</a>, 6.1&quot;,&nbsp;<a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/tim-hieu-cong-nghe-man-hinh-super-retina-xdr-1214864\" target=\"_blank\">Super Retina XDR</a></li>\r\n	<li>Hệ điều h&agrave;nh:iOS 14</li>\r\n	<li>Camera sau:2 camera 12 MP</li>\r\n	<li>Camera trước:12 MP</li>\r\n	<li>CPU:<a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/tim-hieu-chip-xu-ly-apple-a14-bionic-hieu-nang-ma-1302179\" target=\"_blank\">Apple A14 Bionic 6 nh&acirc;n</a></li>\r\n	<li><a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/ram-la-gi-co-y-nghia-gi-trong-cac-thiet-bi-dien-tu-596492\" target=\"_blank\">RAM:</a>4 GB</li>\r\n	<li>Bộ nhớ trong:64 GB</li>\r\n	<li>Thẻ SIM:<a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/cac-loai-sim-dien-thoai-pho-bien-nhat-hien-nay-1112627#esim\" target=\"_blank\">1 Nano SIM &amp; 1 eSIM</a>,&nbsp;<a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/mang-5g-la-gi-co-nhung-uu-diem-gi-so-voi-4g-1135758\" target=\"_blank\">Hỗ trợ 5G</a></li>\r\n	<li>Dung lượng pin:2815 mAh, c&oacute; sạc nhanh</li>\r\n</ul>', 1, 1, '2021-03-12 07:54:41', '2021-03-12 07:54:41');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vp_users`
--

CREATE TABLE `vp_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` tinyint(4) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vp_users`
--

INSERT INTO `vp_users` (`id`, `email`, `password`, `level`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'vohoanganh1410@gmail.com', '$2y$10$zjrYe.BlABsRCMhUCiAGje6pVa/3WaGGKYjHoWAZKa6FWxLbJU9vu', 1, 'ZB75ApO9RhlIX9aJ72DMpjMACOu1NJRLjLhycmF2Q2a3VHFiHdo60J59TcdN', NULL, NULL),
(2, 'admin@gmail.com', '$2y$10$hJGr.5kugEJ6jjXLQG0B4OZ.8b/7.p5Kjy2ujRi2oJPojkHB9yjmu', 1, 'j7nCSBOBX8yTEBNvjLwYkdygMwAda2MH9ffv520Ys6QAOEGCClbUV4R0eMEy', NULL, NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Chỉ mục cho bảng `vp_categories`
--
ALTER TABLE `vp_categories`
  ADD PRIMARY KEY (`cate_id`);

--
-- Chỉ mục cho bảng `vp_comment`
--
ALTER TABLE `vp_comment`
  ADD PRIMARY KEY (`com_id`),
  ADD KEY `vp_comment_com_product_foreign` (`com_product`);

--
-- Chỉ mục cho bảng `vp_products`
--
ALTER TABLE `vp_products`
  ADD PRIMARY KEY (`prod_id`),
  ADD KEY `vp_products_prod_cate_foreign` (`prod_cate`);

--
-- Chỉ mục cho bảng `vp_users`
--
ALTER TABLE `vp_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `vp_categories`
--
ALTER TABLE `vp_categories`
  MODIFY `cate_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `vp_comment`
--
ALTER TABLE `vp_comment`
  MODIFY `com_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `vp_products`
--
ALTER TABLE `vp_products`
  MODIFY `prod_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `vp_users`
--
ALTER TABLE `vp_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `vp_comment`
--
ALTER TABLE `vp_comment`
  ADD CONSTRAINT `vp_comment_com_product_foreign` FOREIGN KEY (`com_product`) REFERENCES `vp_products` (`prod_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `vp_products`
--
ALTER TABLE `vp_products`
  ADD CONSTRAINT `vp_products_prod_cate_foreign` FOREIGN KEY (`prod_cate`) REFERENCES `vp_categories` (`cate_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
