-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 07, 2023 lúc 06:42 PM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `nhncomputer`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `address`
--

CREATE TABLE `address` (
  `id` int(11) NOT NULL,
  `customer_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `address`
--

INSERT INTO `address` (`id`, `customer_id`, `address`, `active`) VALUES
(9, 'WO@fye@wyY', 'Ấp 2, Xã Tân Trung, Huyện Mỏ Cày Nam, Bến Tre', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `administrator`
--

CREATE TABLE `administrator` (
  `administrator_id` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `family_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `given_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `administrator`
--

INSERT INTO `administrator` (`administrator_id`, `email`, `password`, `family_name`, `given_name`) VALUES
('ADMIN01', 'H2Tcomputer@gmail.com', '202cb962ac59075b964b07152d234b70', 'Thu', 'Trang');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brand`
--

CREATE TABLE `brand` (
  `id` int(11) NOT NULL,
  `name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `brand`
--

INSERT INTO `brand` (`id`, `name`, `slug`, `alias`) VALUES
(1, 'Acer', 'acer', 'AC'),
(2, 'MSI', 'msi', 'MSI'),
(3, 'Lenovo', 'lenovo', 'LE'),
(4, 'HP', 'hp', 'HP'),
(5, 'Dell', 'dell', 'DE'),
(6, 'Intel', 'intel', 'INTEL'),
(7, 'AMD', 'amd', 'AMD');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `cart_id` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `customer_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fullName` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `phoneNumber` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `createdAt` datetime NOT NULL,
  `total` int(11) NOT NULL,
  `payMethod` tinyint(4) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cart`
--

INSERT INTO `cart` (`cart_id`, `customer_id`, `fullName`, `phoneNumber`, `email`, `address`, `createdAt`, `total`, `payMethod`, `status`) VALUES
('!1jqsKfp%x', '', '2w2', '0347461848', 'a@gmail.com', '23, Xã Định Trung, Thành phố Vĩnh Yên, Vĩnh Phúc', '2023-07-29 16:22:40', 8790000, 2, 0),
('@Dwhn9IozY', '', '', '', '', ', Thị trấn An Phú, Huyện An Phú, An Giang', '2023-07-29 16:38:14', 8790000, 2, 0),
('@yC8b@R5Z1', '', '', '', '', ', Thị trấn An Phú, Huyện An Phú, An Giang', '2023-07-29 16:44:17', 8790000, 2, 1),
('#26fcCATZA', '', 'Trần Tâm', '3023912', 'trtam@gmail.com', 'Ấp 7, Xã An Hiệp, Huyện Châu Thành, Bến Tre', '2022-03-14 18:49:27', 38470000, 2, 3),
('%WYnrTtUgc', '', 'Phạm Huy', '083928392', 'phamhuy@gmail.com', 'KP 2, Phường 1, Thành phố Cao Lãnh, Đồng Tháp', '2022-03-08 18:50:01', 49999000, 2, 0),
('0vwByoB6n#', 'WO@fye@wyY', 'Ngô Nhân', '0434920423', '19520800@gm.uit.edu.vn', 'Ấp 2, Xã Tân Trung, Huyện Mỏ Cày Nam, Bến Tre', '2022-03-08 19:20:29', 29930000, 2, 3),
('1nyT0N4Tj$', '', 'Đức Huy', '0408432423', 'huy@gmail.com', 'KP 6, Phường 1, Quận Phú Nhuận, Hồ Chí Minh', '2022-03-10 15:39:50', 15020000, 2, 3),
('Ab2@ziKNfq', '', '', '', '', ', Thị trấn An Phú, Huyện An Phú, An Giang', '2023-07-29 16:34:26', 20650000, 2, 0),
('c%9Kzh%C3Z', 'WO@fye@wyY', 'Ngô Hữu Nhân', '084934938', '19520800@gm.uit.edu.vn', 'Ấp 2, Xã Tân Trung, Huyện Mỏ Cày Nam, Bến Tre', '2022-03-12 14:23:13', 83540000, 2, 0),
('DhZVnlmSNa', '', '', '', '', ', Thị trấn An Phú, Huyện An Phú, An Giang', '2023-07-29 11:27:56', 21120000, 2, 0),
('eVR&PRKNXQ', '', '', '', '', ', Thị trấn An Phú, Huyện An Phú, An Giang', '2023-07-29 16:37:26', 14060000, 2, 1),
('fgpo7nt@a&', '', 'trang', '0347461548', 'a@gmail.com', '123, Xã Tân Lập, Huyện Sông Lô, Vĩnh Phúc', '2023-07-29 16:28:24', 8790000, 2, 0),
('nF&a3ZcllH', '', 'Lê Thị A', '04923402', 'thidsk2@gmail.com', 'KP 2, Phường Ba Láng, Quận Cái Răng, Cần Thơ', '2022-03-12 18:51:37', 15020000, 2, 1),
('nwP@WpD1xd', '', 'ư2e', 'e3e2', '32e', ', Thị trấn An Phú, Huyện An Phú, An Giang', '2023-07-29 16:32:26', 8790000, 2, 0),
('p1fXC%P21d', '', 'Trần B', '09430434', 'nhan293@gmail.com', 'KP 6, Phường Linh Trung, Quận Thủ Đức, Hồ Chí Minh', '2022-03-14 22:13:50', 27370000, 2, 3),
('U4FGJY8tZW', '', 'Nguyễn A', '3942394023', 'nguyena@gmail.com', 'Ấp 6, Thị trấn An Phú, Huyện An Phú, An Giang', '2022-03-14 18:48:42', 48470000, 2, 0),
('Ue0yPdOuvE', '', 'trang', '123456', 'a@gmail.com', ', Thị trấn An Phú, Huyện An Phú, An Giang', '2023-07-29 16:29:46', 21140000, 2, 0),
('wW**&1WfwB', 'WO@fye@wyY', 'Ngo Nhan', '5345345', '19520800@gm.uit.edu.vn', 'Ấp 2, Xã Tân Trung, Huyện Mỏ Cày Nam, Bến Tre', '2022-03-18 21:22:39', 6599000, 2, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart_detail`
--

CREATE TABLE `cart_detail` (
  `cart_id` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `product_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `total` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cart_detail`
--

INSERT INTO `cart_detail` (`cart_id`, `product_id`, `quantity`, `total`) VALUES
('!1jqsKfp%x', 'LTLE0001', 1, 8790000),
('@Dwhn9IozY', 'LTLE0001', 1, 8790000),
('@yC8b@R5Z1', 'LTLE0001', 1, 8790000),
('#26fcCATZA', 'LTHP0001', 1, 17350000),
('#26fcCATZA', 'LTMSI0002', 1, 21120000),
('%WYnrTtUgc', 'LTAC0003', 1, 49999000),
('0vwByoB6n#', 'LTAC0002', 1, 12350000),
('0vwByoB6n#', 'LTLE0001', 2, 17580000),
('1nyT0N4Tj$', 'LTDE0001', 1, 15020000),
('Ab2@ziKNfq', 'LTMSI0001', 1, 20650000),
('c%9Kzh%C3Z', 'LTMSI0001', 2, 41300000),
('c%9Kzh%C3Z', 'LTMSI0002', 2, 42240000),
('DhZVnlmSNa', 'LTMSI0002', 1, 21120000),
('eVR&PRKNXQ', 'LTLE0002', 1, 14060000),
('fgpo7nt@a&', 'LTLE0001', 1, 8790000),
('nF&a3ZcllH', 'LTDE0001', 1, 15020000),
('nwP@WpD1xd', 'LTLE0001', 1, 8790000),
('p1fXC%P21d', 'LTAC0002', 1, 12350000),
('p1fXC%P21d', 'LTDE0001', 1, 15020000),
('U4FGJY8tZW', 'LTDE0001', 1, 15020000),
('U4FGJY8tZW', 'LTHP0002', 1, 12800000),
('U4FGJY8tZW', 'LTMSI0001', 1, 20650000),
('Ue0yPdOuvE', 'LTAC0002', 1, 12350000),
('Ue0yPdOuvE', 'LTLE0001', 1, 8790000),
('wW**&1WfwB', 'CPUAMD20312', 1, 6599000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `name`, `slug`, `type`, `parent_id`) VALUES
(1, 'Laptop', 'laptop', 1, 0),
(2, 'CPU - Bộ vi xử lý', 'cpu-bo-vi-xu-ly', 2, 0),
(3, 'Màn hình ', 'man-hinh', 3, 0),
(4, 'Laptop Gaming', 'laptop-gaming', 1, 12),
(5, 'Laptop Văn Phòng', 'laptop-van-phong', 1, 12),
(7, 'Ổ cứng SSD', 'o-cung-ssd', 4, 16),
(8, 'CPU Intel', 'intel', 2, 15),
(9, 'CPU AMD', 'amd', 2, 15),
(10, '120GB', '120gb', 4, 7),
(11, '256GB', '256gb', 4, 7),
(12, 'Laptop theo nhu cầu', 'laptop', 1, 1),
(15, 'CPU theo hãng', 'brand', 2, 2),
(16, 'Ổ cứng', 'o-cung', 4, 0),
(17, 'Ổ cứng HDD', 'o-cung-hdd', 4, 16),
(18, '1TB', '1tb', 4, 17),
(19, 'Laptop theo hãng', 'laptop-by-brand', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer`
--

CREATE TABLE `customer` (
  `customer_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `given_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `family_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `avatar` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `customer`
--

INSERT INTO `customer` (`customer_id`, `email`, `password`, `given_name`, `family_name`, `avatar`) VALUES
('8OSFNNVmK5', 'a@gmail.com', 'bdfd7d86e14b63752e4c7e02abae4989', NULL, NULL, NULL),
('cuMrbrMRG&', 'nguyentrang10122001@gmail.com', '0ff18da58c0ac0705217a2f38fcbb4cf', 'Trang', 'Nguyen', NULL),
('gOLy@VBoNc', 'trang10122001@gmail.com', '72c2f88eee1161eeb3726acbec15d628', 'Trang', 'Nguyen', NULL),
('iK0nTai*65', '123@gmail.com', 'd81d14ebb1255136b48e04cae01bbb7c', 'Trang', 'Trang', NULL),
('M$YZD1jZku', 'a@hotmail.com', '6d34de7aa9165fda31a82b9b0badd107', 'Hung', 'Hung', NULL),
('WO@fye@wyY', '19520800@gm.uit.edu.vn', 'bb4e31f2d20f8e7f88e2b8459263657f', 'Nhan', 'Ngo', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `laptop_specification`
--

CREATE TABLE `laptop_specification` (
  `id` int(11) NOT NULL,
  `product_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `cpu` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cpu_detail` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ram` int(11) DEFAULT NULL,
  `hard_drive_size` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hard_drive_desc` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `graphics` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `screen` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `weight` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `laptop_specification`
--

INSERT INTO `laptop_specification` (`id`, `product_id`, `cpu`, `cpu_detail`, `ram`, `hard_drive_size`, `hard_drive_desc`, `graphics`, `screen`, `weight`) VALUES
(1, 'LTAC0001', 'AMD Ryzen 5', '5500U (6 nhân 12 luồng)', 8, '512GB SSD', 'PCIe® NVMe™ M.2', 'NVIDIA GeForce GTX 1650 4GB GDDR6', '15.6 inch FHD (1920 x 1080) 144Hz', 2.1),
(2, 'LTLE0001', 'Intel Pentium', 'N5030', 4, '256GB SSD', '', 'Intel UHD Graphics', '11.6 inch HD (1366 x 768) TN', 1.2),
(3, 'LTAC0002', 'Intel Core i5', '1035G1 1.0GHz up to 3.6GHz 6MB', 4, '256GB SSD', 'M.2 PCIE, 1x slot SATA3 2.5', 'Intel UHD Graphics', '15.6 inch FHD (1920 x 1080), IPS, Acer ComfyView LCD, ', 1.7),
(4, 'LTDE0001', 'AMD Ryzen 3', '3250U (2.6Ghz/4MB cache)', 8, '256GB SSD', 'M.2 PCIe NVMe', 'AMD Radeon Graphics', '15.6-inch FHD (1920 x 1080) Anti-glare LED Backlig', 1.83),
(5, 'LTDE0002', 'Intel Core i3', 'Tiger Lake 1.70 GHz', 8, '256GB SSD', 'NVMe PCIe', 'Intel UHD Graphics', '14 inch Full HD (1920 x 1080)', 1.64),
(6, 'LTHP0001', 'Intel Core i5', '1135G7', 4, '256GB SSD', 'PCIe (M.2 2280)', 'Intel UHD Graphics', '14 inch ( 1366 x 768 ) FHD', 1.4),
(7, 'LTHP0002', 'Intel Core i3', '10110U, up to 4.1GHz', 4, '256GB SSD', 'PCIe® NVMe™ M.2', 'Intel UHD Graphics', '15.6 inch HD (1366x768)', 1.78),
(8, 'LTMSI0001', 'Intel Core i5', '10500H 2.50GHz upto 4.50GHz (6 nhân 12 luồng)', 8, '512GB SSD', 'M.2 PCIE', 'NVIDIA GeForce GTX 1650 4GB GDDR6', '15.6 inch FHD (1920 x 1080) IPS', 1.86),
(9, 'LTMSI0002', 'AMD Ryzen 5', '5600H 3.30GHz upto 4.20GHz (6 nhân 12 luồng)', 8, '512GB SSD', 'NVMe PCIe Gen3x4', 'Radeon RX5500M 4GB', '15.6 inch FHD (1920*1080) 60Hz', 2.35),
(10, 'LTLE0002', 'Intel Core i3', '1115G4', 8, '256GB SSD', 'M.2 PCIe', 'Intel UHD Graphics', '15.6 inch FHD (1920 x 1080) TN', 1.65),
(11, 'LTDE0003', 'Intel Core i5', '11300H', 8, '512GB SSD', 'PCIe NVMe', 'Intel UHD Graphics', '15.6 inch FHD (1920 x 1080)', 1.63),
(12, 'LTAC0003', 'Intel Core i7', '11800H (2.3Ghz upto 4.6Ghz, 24MB cache)', 16, '512GB SSD', 'PCIe NVMe SED', 'NVIDIA GeForce RTX 3070 8G-GDDR6', '15.6 inch QHD 165Hz', 2),
(14, 'LTAC20221', 'AMD Ryzen 5', '5500U (2.1GHz, 8MB cache)', 16, '512GB SSD', 'PCIe NVMe SSD', 'AMD Radeon Graphics', '14.0 inch FHD Acer ComfyView', 1.19),
(15, 'LTLE20221', 'Intel Core i5', '1135G7', 8, '256GB SSD', 'M.2 2242 PCIe 3.0x4 NVMe', 'Intel Iris® Xe Graphics', '13.3 inch WQXGA', 1.26);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `product_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `product_type` int(11) DEFAULT NULL COMMENT '1: Laptop, 2: CPU, 3: Màn hình',
  `category_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `brand` int(11) NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `keywords` varchar(400) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1: còn hàng',
  `createdAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`product_id`, `product_type`, `category_id`, `name`, `slug`, `brand`, `thumbnail`, `keywords`, `price`, `discount`, `status`, `createdAt`) VALUES
('CPUAMD20312', 2, 9, 'AMD Ryzen 5 5600G', 'amd-ryzen-5-5600g', 7, 'https://hanoicomputercdn.com/media/product/60387_cpu_amd_ryzen_5_5600g_65w_1.png', 'AMD Ryzen 5 5600G, AMD Ryzen 5', 6599000, 0, 1, '2022-03-18 21:20:50'),
('CPUINTEL2001', 2, 8, 'Intel Core i3-10105', 'intel-core-i3-10105', 6, 'https://hanoicomputercdn.com/media/product/58736_cpu_intel_core_i3_10105.jpg', 'Intel Core i3-10105, Intel Core i3', 3099000, 4, 1, '2022-03-18 13:30:04'),
('CPUINTEL20121', 2, 2, 'Intel Core i3-10100F', 'intel-core-i3-10100f', 6, 'https://hanoicomputercdn.com/media/product/55894_cpu_intel_core_i3_10100f_01.jpg', 'Intel Core i3 10100F, Intel Core i3, Core i3', 2099000, 0, 1, '2022-03-18 20:00:31'),
('LTAC0001', 1, 4, 'Acer Aspire 7 A715 42G R05G', 'acer-aspire-7-a715-42g-r05g', 1, 'https://res.cloudinary.com/dbynglvwk/image/upload/v1641128621/Project-NHN-Computer-PHP/Laptop/61622_laptop_acer_gaming_aspire_7_a715_42g_18_ok9na4.jpg', 'Acer Aspire 7 A715 42G R05G, Acer Aspire 7, Acer Aspire, Acer Aspire 7 A715 42G R05G, Acer', 21699000, 4, 0, NULL),
('LTAC0002', 1, 5, 'Acer Aspire 3 A315-56-37DV', 'acer-aspire-3-a315-56-37dv', 1, 'https://res.cloudinary.com/dbynglvwk/image/upload/v1641128689/Project-NHN-Computer-PHP/Laptop/58716_laptop_acer_aspire_3_a315_56_17_qruzug.jpg', 'Acer Aspire 3 A315-56-37DV, Acer Aspire 3, Acer Aspire, Acer', 12599000, 2, 1, NULL),
('LTAC0003', 1, 4, 'Acer Gaming Predator Triton 300', 'acer-gaming-predator-triton-300', 1, 'https://res.cloudinary.com/dbynglvwk/image/upload/v1641386760/Project-NHN-Computer-PHP/Laptop/60632_laptop_acer_gaming_predator_triton_300_pt315_53_11_zyccno.jpg', 'Acer Gaming Predator Triton 300, Acer Gaming Predator, Predator Triton 300, Acer Predator Triton 300', 49999000, 0, 1, NULL),
('LTAC20221', 1, 4, 'Acer Swift 3 SF314-43-R4X3', 'acer-swift-3-sf314-43-r4x3', 1, 'https://hanoicomputercdn.com/media/product/61624_laptop_acer_swift_3_sf314_43_5.png', 'Acer Swift 3 SF314-43-R4X3, Swift 3 SF314-43-R4X3, Acer, Acer Swift 3', 20399000, 3, 1, '2022-03-05 14:48:25'),
('LTDE0001', 1, 5, 'Dell Inspiron 3505 Y1N1T3', 'dell-inspiron-3505-y1n1t3', 5, 'https://res.cloudinary.com/dbynglvwk/image/upload/v1641128717/Project-NHN-Computer-PHP/Laptop/60971_inspiron3505_4_obt2qf.png', 'Dell Inspiron 3505 Y1N1T3, Dell Inspiron 3505, Dell Inspiron, Inspiron 3505 Y1N1T3, Dell', 15489000, 3, 1, NULL),
('LTDE0002', 1, 5, 'Dell Vostro 3400 70235020', 'dell-vostro-3400-70235020', 5, 'https://res.cloudinary.com/dbynglvwk/image/upload/v1641128786/Project-NHN-Computer-PHP/Laptop/57844_vostro3400__3__feeuxo.png', 'Dell Vostro 3400 70235020, Dell Vostro 3400, Dell Vostro, Vostro 3400 70235020, Dell', 15589000, 0, 0, NULL),
('LTDE0003', 1, 5, 'Dell Vostro 5510', 'dell-vostro-5510', 5, 'https://res.cloudinary.com/dbynglvwk/image/upload/v1641386157/Project-NHN-Computer-PHP/Laptop/60797_laptop_dell_vostro_5510_70253901_xam_2021_5_vsykie.jpg', 'Dell Vostro 5510, Dell Vostro, Vostro 5510, Dell', 22499000, 2, 1, NULL),
('LTHP0001', 1, 5, 'HP 240 G8 518V6PA', 'hp-240-g8-518v6pa', 4, 'https://res.cloudinary.com/dbynglvwk/image/upload/v1641128822/Project-NHN-Computer-PHP/Laptop/63289_laptop_hp_240_g8_6_gcgdix.jpg', 'HP 240 G8 518V6PA, HP 240 G8, 240 G8 518V6PA, HP', 17699000, 2, 1, NULL),
('LTHP0002', 1, 5, 'HP 15s du1105TU 2Z6L3PA', 'hp-15s-du1105tu-2z6l3pa', 4, 'https://res.cloudinary.com/dbynglvwk/image/upload/v1641128848/Project-NHN-Computer-PHP/Laptop/63290_laptop_hp_15s_15_vnddh0.jpg', 'HP 15s du1105TU 2Z6L3PA, 15s du1105TU 2Z6L3PA, HP', 13199000, 3, 1, NULL),
('LTLE0001', 1, 5, 'Lenovo IP1 11IGL05 81VT006FVN', 'lenovo-ip1-11igl05-81vt006fvn', 3, 'https://res.cloudinary.com/dbynglvwk/image/upload/v1641129167/Project-NHN-Computer-PHP/Laptop/11igl05_-77_m0hr95.png', 'Lenovo IP1 11IGL05 81VT006FVN, Lenovo IP1 11IGL05, IP1 11IGL05 81VT006FVN, Lenovo', 8790000, 0, 1, NULL),
('LTLE0002', 1, 5, 'Lenovo IdeaPad 3 15ITL6 82H800M4VN', 'lenovo-ideapad-3-15itl6-82h800m4vn', 3, 'https://res.cloudinary.com/dbynglvwk/image/upload/v1641129041/Project-NHN-Computer-PHP/Laptop/61009_laptop_lenovo_ideapad_3_3_e2acbs.jpg', 'Lenovo IdeaPad 3 15ITL6 82H800M4VN, Lenovo IdeaPad 3, IdeaPad 3 15ITL6 82H800M4VN, Lenovo', 14499000, 3, 1, NULL),
('LTLE20221', 1, 5, 'Lenovo ThinkBook 13s Gen2-ITL', 'lenovo-thinkbook-13s-gen2-itl', 3, 'https://hanoicomputercdn.com/media/product/62116_laptop_lenovo_thinkbook_13s_gen2_12.png', 'Lenovo ThinkBook 13s Gen2-ITL, Lenovo ThinkBook, ThinkBook 13s, Lenovo', 20999000, 4, 1, '2022-03-05 15:12:56'),
('LTMSI0001', 1, 4, 'MSI GF63 Thin 10SC 468VN', 'msi-gf63-thin-10sc-468vn', 2, 'https://res.cloudinary.com/dbynglvwk/image/upload/v1641129109/Project-NHN-Computer-PHP/Laptop/60212_laptop_msi_gaming_gf63_thin_10sc_468vn_den_2021_12_fmbzk3.jpg', 'MSI GF63 Thin 10SC 468VN, GF63 Thin 10SC 468VN, MSI GF63, MSI', 21289000, 3, 1, NULL),
('LTMSI0002', 1, 4, 'MSI Bravo 15 B5DD 276VN', 'msi-bravo-15-b5dd-276vn', 2, 'https://res.cloudinary.com/dbynglvwk/image/upload/v1641129136/Project-NHN-Computer-PHP/Laptop/61782_laptop_msi_gaming_bravo_15_9_zpxw2l.jpg', 'MSI Bravo 15 B5DD 276VN, Bravo 15 B5DD 276VN, MSI Bravo 15 B5DD, MSI', 21999000, 4, 1, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_other_specification`
--

CREATE TABLE `product_other_specification` (
  `product_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `socket` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gen` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `core` int(11) DEFAULT NULL,
  `thread` int(11) DEFAULT NULL,
  `clock_speed` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_other_specification`
--

INSERT INTO `product_other_specification` (`product_id`, `socket`, `gen`, `core`, `thread`, `clock_speed`) VALUES
('CPUAMD20312', 'AM4', '', 6, 12, '3.9 - 4.4 GHz'),
('CPUINTEL2001', 'LGA 1200', 'Comet Lake', 4, 8, '3.7 - 4.4 Ghz'),
('CPUINTEL20121', 'LGA1200', 'Comet Lake', 4, 8, '3.6 - 4.3 GHz');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_review`
--

CREATE TABLE `product_review` (
  `product_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_review`
--

INSERT INTO `product_review` (`product_id`, `content`) VALUES
('LTAC0002', '<h1><strong>Đánh giá Laptop Acer Aspire 3 A315-56-37DV Mỏng Nhẹ</strong></h1><p>&nbsp;</p><p>Với sức mạnh của bộ vi xử lý Intel Core i thế hệ thứ 10 cực mạnh, Laptop Acer Aspire 5 là chiếc laptop lý tưởng để bạn làm việc, nhất là khi máy còn rất gọn nhẹ di động, dù sở hữu màn hình lớn 15,6 inch.</p><h2><br><strong>Sức mạnh từ bộ vi xử lý Intel Core i thế hệ 10</strong></h2><p>&nbsp;</p><p><a href=\"https://www.hanoicomputer.vn/laptop-acer-aspire-a315-56-59xy-nx-hs5sv-003-i5-1035g1-4gb-ram-256gb-ssd-15-6-inch-fhd-win-10-den/p52086.html\">Acer Aspire A315</a> được trang bị bộ vi xử lý Intel Core i3 thế hệ 11 sản xuất trên tiến trình 10nm, với 4 lõi 8 luồng, không chỉ rất mạnh mẽ mà còn tiết kiệm điện năng. Đi cùng là 4GB RAM DDR4 và đặc biệt là ổ cứng SSD. Việc sử dụng ổ cứng SSD cao cấp thay vì <a href=\"https://www.hanoicomputer.vn/o-cung-hdd-desktop/c33.html\">ổ HDD</a> cũ là một bước tiến tuyệt vời của Acer Aspire A315. <a href=\"https://www.hanoicomputer.vn/o-cung-ssd/c164.html\">Ổ SSD</a> mang đến rất nhiều lợi ích khi giúp laptop khởi động, vào ứng dụng và sao chép dữ liệu cực nhanh. Chưa hết, độ bền tuổi thọ SSD còn lâu hơn rất nhiều so với HDD truyền thống, đồng thời hoạt động hết sức êm ái. Aspire A315 đảm bảo hiệu năng mượt mà cho công việc và giải trí của bạn.</p><p>&nbsp;</p><h2><strong>Chiếc laptop 15,6 inch vô cùng gọn nhẹ</strong></h2><p>&nbsp;</p><p>Nếu như thiết kế của dòng Aspire 3 trước đây không có gì ấn tượng thì Acer Aspire A315 đã thay đổi một cách đột phá. Bạn sẽ có một thiết kế hoàn toàn mới theo phong cách đơn giản, hiện đại đúng xu thế, vượt ra khỏi tầm của <a href=\"https://www.hanoicomputer.vn/laptop-may-tinh-xach-tay/c159.html?filter=%2C3928%2C\">laptop giá rẻ</a>. Viền màn hình được làm mỏng đáng kể, cho trải nghiệm xem tốt hơn đồng thời giúp laptop gọn gàng hơn. Những đường vát tinh tế tạo nên chiếc&nbsp;<a href=\"https://www.hanoicomputer.vn/laptop-may-tinh-xach-tay/c159.html\">laptop</a> thời trang, phong cách và vô cùng mỏng nhẹ. Với trọng lượng chỉ 1,7 kg cho một chiếc laptop 15,6 inch, Aspire A315 mới rất dễ để di chuyển, tiện lợi cho công việc của bạn.<br>&nbsp;</p>'),
('LTLE20221', '<h1><strong>Đánh giá Laptop Lenovo ThinkBook 13s Gen2-ITL</strong></h1><p>&nbsp;</p><h2><strong>Thiết kế</strong></h2><p>&nbsp;</p><p><a href=\"http://nhncomputer.epizy.com/san-pham.php?slug=lenovo-thinkbook-13s-gen2-itl\"><i>Lenovo ThinkBook 13s</i></a> sở hữu thiết kế tinh tế, trang nhã cùng kiểu dáng đơn giản, sang trọng gây ấn tượng với bạn ngay cái nhìn đầu tiên. Chiếc <a href=\"https://www.hanoicomputer.vn/laptop-lenovo\">Laptop Lenovo </a>này có màu xám bạc cùng chất liệu hợp kim nhôm – magie trên toàn thân máy. Các cạnh của laptop được gia công công nghệ cao, vừa mang lại vẻ bóng bẩy, vừa giúp cảm giác cầm nắm trở nên mượt mà hơn. Thiết kế mỏng nhẹ với trọng lượng khoảng 1.32kg giúp người dùng có thể dễ dàng mang theo laptop đến bất kì đâu mà không cảm thấy mệt mỏi.</p><p>&nbsp;</p><h2><strong>Cấu hình</strong></h2><p>&nbsp;</p><p><strong>Lenovo ThinkBook 13s </strong>được tích hợp bộ vi xử lí Core i thế hệ 11&nbsp;cùng <a href=\"https://www.hanoicomputer.vn/laptop-may-tinh-xach-tay?ram-laptop=8gb-1-1-1-1\">RAM 4/8/16GB</a> mang tới hiệu năng mạnh mẽ trong hầu hết các tác vụ người dùng sử dụng như duyệt Web, ứng dụng văn phòng,... Card đồ họa Intel® UHD Graphics và ổ cứng 512GB SSD giúp máy có thể chạy mượt mà các ứng dụng văn phòng cũng như xử lý khá tốt các ứng dụng đồ họa cơ bản và chơi các game online với đồ họa vừa phải.<br>&nbsp;</p>');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_type`
--

CREATE TABLE `product_type` (
  `id` int(11) NOT NULL,
  `alias` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(40) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_type`
--

INSERT INTO `product_type` (`id`, `alias`, `name`) VALUES
(1, 'LT', 'Laptop'),
(2, 'CPU', 'CPU'),
(3, 'MO', 'Màn hình'),
(4, 'HD', 'Ổ cứng'),
(5, 'LK', 'Linh kiện');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `test`
--

CREATE TABLE `test` (
  `createdAt` datetime NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `test`
--

INSERT INTO `test` (`createdAt`, `id`) VALUES
('2022-03-13 19:18:06', 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`,`customer_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Chỉ mục cho bảng `administrator`
--
ALTER TABLE `administrator`
  ADD PRIMARY KEY (`email`);

--
-- Chỉ mục cho bảng `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Chỉ mục cho bảng `cart_detail`
--
ALTER TABLE `cart_detail`
  ADD PRIMARY KEY (`cart_id`,`product_id`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type` (`type`);

--
-- Chỉ mục cho bảng `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Chỉ mục cho bảng `laptop_specification`
--
ALTER TABLE `laptop_specification`
  ADD PRIMARY KEY (`id`,`product_id`),
  ADD KEY `FK_LAP_SPEC_PRO` (`product_id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `FK_PRODUCT_BRAND` (`brand`),
  ADD KEY `FK_PRODUCT_TYPE` (`product_type`),
  ADD KEY `FK_PRODUCT_CATE` (`category_id`);

--
-- Chỉ mục cho bảng `product_other_specification`
--
ALTER TABLE `product_other_specification`
  ADD PRIMARY KEY (`product_id`);

--
-- Chỉ mục cho bảng `product_review`
--
ALTER TABLE `product_review`
  ADD PRIMARY KEY (`product_id`);

--
-- Chỉ mục cho bảng `product_type`
--
ALTER TABLE `product_type`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `address`
--
ALTER TABLE `address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `brand`
--
ALTER TABLE `brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `laptop_specification`
--
ALTER TABLE `laptop_specification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `product_type`
--
ALTER TABLE `product_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `test`
--
ALTER TABLE `test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `address_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`);

--
-- Các ràng buộc cho bảng `category`
--
ALTER TABLE `category`
  ADD CONSTRAINT `category_ibfk_1` FOREIGN KEY (`type`) REFERENCES `product_type` (`id`);

--
-- Các ràng buộc cho bảng `laptop_specification`
--
ALTER TABLE `laptop_specification`
  ADD CONSTRAINT `FK_LAP_SPEC_PRO` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);

--
-- Các ràng buộc cho bảng `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `FK_PRODUCT_BRAND` FOREIGN KEY (`brand`) REFERENCES `brand` (`id`),
  ADD CONSTRAINT `FK_PRODUCT_CATE` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  ADD CONSTRAINT `FK_PRODUCT_TYPE` FOREIGN KEY (`product_type`) REFERENCES `product_type` (`id`);

--
-- Các ràng buộc cho bảng `product_other_specification`
--
ALTER TABLE `product_other_specification`
  ADD CONSTRAINT `product_other_specification_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);

--
-- Các ràng buộc cho bảng `product_review`
--
ALTER TABLE `product_review`
  ADD CONSTRAINT `product_review_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
