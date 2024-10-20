-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 19, 2024 lúc 02:36 PM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `user`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguoidung`
--

CREATE TABLE `nguoidung` (
  `id` int(9) NOT NULL,
  `tentaikhoan` varchar(30) NOT NULL,
  `tendangnhap` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `sodienthoai` int(11) NOT NULL,
  `diachi` varchar(30) NOT NULL,
  `matkhau` varchar(30) NOT NULL,
  `nhaplaimatkhau` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `nguoidung`
--

INSERT INTO `nguoidung` (`id`, `tentaikhoan`, `tendangnhap`, `email`, `sodienthoai`, `diachi`, `matkhau`, `nhaplaimatkhau`) VALUES
(1, 'tuantinhtu', 'anhtuan', 'tuan@gmail.com', 387872743, 'bacgiang', '123456789', '123456789');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phanhoi`
--

CREATE TABLE `phanhoi` (
  `MaPH` int(9) NOT NULL,
  `HoTen` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `SoDT` int(11) NOT NULL,
  `NoiDung` varchar(200) NOT NULL,
  `ThoiGian` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `trangsuc`
--

CREATE TABLE `trangsuc` (
  `MaTS` int(9) NOT NULL,
  `TenTS` varchar(50) NOT NULL,
  `Gia` varchar(20) NOT NULL,
  `HinhAnh` varchar(20) NOT NULL,
  `Loai` varchar(10) NOT NULL,
  `ThongTin` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `trangsuc`
--

INSERT INTO `trangsuc` (`MaTS`, `TenTS`, `Gia`, `HinhAnh`, `Loai`, `ThongTin`) VALUES
(1, 'Khuyên tai LV Spike', '58.000.000 VND', 'khuyentai1.jpeg', 'khuyentai', 'Khuyên tai sang trọng với thiết kế độc đáo'),
(2, 'Vòng tay LV Floragram', '21.500.000 VND', 'vongtay1.jpeg', 'vongtay', 'Vòng tay với họa tiết hoa Floragram đặc trưng'),
(3, 'Nhẫn Channel', '36.200.000 VND', 'nhan2.jpeg', 'nhan', 'Nhẫn với thiết kế đơn giản và thanh lịch'),
(4, 'Dây chuyền Eternal', '23.200.000 VND', 'daychuyen2.jpeg', 'daychuyen', 'Dây chuyền tinh tế cho vẻ đẹp trường tồn'),
(5, 'Đồng hồ Louis Vuitton', '111.200.000 VND', 'dongho1.jpeg', 'dongho', 'Đồng hồ thời trang cao cấp từ Louis Vuitton'),
(6, 'Nhẫn LV Corail', '21.200.000 VND', 'nhan1.jpeg', 'nhan', 'Nhẫn với thiết kế màu sắc nổi bật'),
(7, 'Dây chuyền Vivienne', '945.200.000 VND', 'daychuyen1.jpeg', 'daychuyen', 'Dây chuyền lấp lánh với đá quý cao cấp'),
(8, 'Vòng tay Coco', '70.000.000 VND', 'vongtay2.jpeg', 'vongtay', 'Vòng tay phong cách Coco với chất liệu tốt'),
(9, 'Khuyên tai kim cương Extrait', '213.200.000 VND', 'khuyentai2.jpeg', 'khuyentai', 'Khuyên tai kim cương sáng bóng và lấp lánh'),
(10, 'Đồng hồ MADEMOISELLER J12', '453.600.000 VND', 'dongho2.jpeg', 'dongho', 'Đồng hồ với thiết kế hiện đại và sang trọng'),
(11, 'Nhẫn Dior', '93.000.000 VND', 'nhan3.jpeg', 'nhan', 'Nhẫn Dior thanh lịch, phù hợp cho nhiều dịp'),
(12, 'Khuyên tai kim cương Dior', '150.000.000 VND', 'khuyentai3.jpeg', 'khuyentai', 'Khuyên tai kim cương từ Dior'),
(13, 'Nhẫn vàng hồng kim cương Pave', '300.000.000 VND', 'nhan4.jpeg', 'nhan', 'Nhẫn vàng hồng với kim cương Pave lấp lánh'),
(14, 'Vòng tay Dior vàng trắng', '260.000.000 VND', 'vongtay3.jpeg', 'vongtay', 'Vòng tay sang trọng, chất liệu vàng trắng'),
(15, 'Dây chuyền Étoile des Vents', '58.000.000 VND', 'daychuyen3.jpeg', 'daychuyen', 'Dây chuyền với thiết kế sao và gió'),
(16, 'Khuyên tai Paves', '400.000.000 VND', 'khuyentai4.jpeg', 'khuyentai', 'Khuyên tai Paves với thiết kế sáng tạo'),
(17, 'Vòng tay vàng hồng Pave Diamond', '650.000.000 VND', 'vongtay4.jpeg', 'vongtay', 'Vòng tay sang trọng, chất liệu vàng hồng và kim cương'),
(18, 'Đồng hồ Ralph Lauren', '380.000.000 VND', 'dongho3.jpeg', 'dongho', 'Đồng hồ từ Ralph Lauren với thiết kế thể thao'),
(19, 'Nhẫn RUBAN', '538.000.000 VND', 'nhan5.jpeg', 'nhan', 'Nhẫn RUBAN với chất liệu quý giá'),
(20, 'Dây chuyền Extrait DE N*5', '110.000.000 VND', 'daychuyen4.jpeg', 'daychuyen', 'Dây chuyền có thiết kế đẹp mắt và tinh tế'),
(21, 'Khuyên tai Étoile FILANTE', '290.150.000 VND', 'khuyentai5.jpeg', 'khuyentai', 'Khuyên tai với họa tiết sao chổi độc đáo'),
(22, 'Vòng tay Coco Crush', '140.650.000 VND', 'vongtay5.jpeg', 'vongtay', 'Vòng tay Coco Crush với thiết kế hiện đại'),
(23, 'Đồng hồ Premiere Ribbon', '285.500.000 VND', 'dongho4.jpeg', 'dongho', 'Đồng hồ với thiết kế dây ruy băng đẹp mắt'),
(24, 'Đồng hồ Code Coco Couture', '300.000.000 VND', 'dongho5.jpeg', 'dongho', 'Đồng hồ Code Coco với phong cách cao cấp'),
(25, 'Nhẫn Coco Crush', '45.000.000 VND', 'nhan6.jpeg', 'nhan', 'Nhẫn Coco Crush với thiết kế đơn giản nhưng ấn tượng'),
(26, 'Dây chuyền Coco', '155.555.000 VND', 'daychuyen5.jpeg', 'daychuyen', 'Dây chuyền với thiết kế sang trọng'),
(27, 'Khuyên tai Coco Crush', '115.800.000 VND', 'khuyentai6.jpeg', 'khuyentai', 'Khuyên tai Coco Crush với kiểu dáng trẻ trung'),
(28, 'Vòng tay Bouton De Camelia', '800.000.000 VND', 'vongtay6.jpeg', 'vongtay', 'Vòng tay với họa tiết Camelia đặc trưng'),
(29, 'Đồng hồ Dior Chiffre Red', '450.000.000 VND', 'dongho6.jpeg', 'dongho', 'Đồng hồ Dior với thiết kế độc quyền'),
(30, 'Dây chuyền Coco', '170.900.000 VND', 'daychuyen6.jpeg', 'daychuyen', 'Dây chuyền với thiết kế nổi bật và sang trọng');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `phanhoi`
--
ALTER TABLE `phanhoi`
  ADD PRIMARY KEY (`MaPH`);

--
-- Chỉ mục cho bảng `trangsuc`
--
ALTER TABLE `trangsuc`
  ADD PRIMARY KEY (`MaTS`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `phanhoi`
--
ALTER TABLE `phanhoi`
  MODIFY `MaPH` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `trangsuc`
--
ALTER TABLE `trangsuc`
  MODIFY `MaTS` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
