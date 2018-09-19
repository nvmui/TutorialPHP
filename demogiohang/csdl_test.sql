-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 11, 2018 at 02:38 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `csdl_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `danhmucsp`
--

CREATE TABLE `danhmucsp` (
  `iddm` int(11) NOT NULL,
  `TenDM` varchar(100) CHARACTER SET utf8 NOT NULL,
  `idhang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `danhmucsp`
--

INSERT INTO `danhmucsp` (`iddm`, `TenDM`, `idhang`) VALUES
(1, 'Điện thoại', 0),
(2, 'Máy tính bảng', 1),
(3, 'Laptop', 1);

-- --------------------------------------------------------

--
-- Table structure for table `hangsx`
--

CREATE TABLE `hangsx` (
  `idhang` int(11) NOT NULL,
  `TenHang` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ThuTu` int(11) NOT NULL,
  `AnHien` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hangsx`
--

INSERT INTO `hangsx` (`idhang`, `TenHang`, `ThuTu`, `AnHien`) VALUES
(1, 'Dell', 9, 1),
(2, 'Sony', 1, 1),
(3, 'Apple', 2, 1),
(4, 'SamSung', 3, 1),
(5, 'Oppo', 4, 0),
(6, 'Panasonic', 5, 0),
(7, 'Sharp', 6, 1),
(8, 'Lenovo', 7, 1),
(9, 'Tất cả các hãng', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `id` int(11) NOT NULL,
  `TenSP` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Chitiet` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Hinhanh` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `GiaSP` double NOT NULL,
  `GhiChu` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `iddm` int(11) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `NgayNhap` date NOT NULL,
  `idhang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`id`, `TenSP`, `Chitiet`, `Hinhanh`, `GiaSP`, `GhiChu`, `iddm`, `SoLuong`, `NgayNhap`, `idhang`) VALUES
(1, 'IPhone 6S', 'Thiết kế trẻ trung, chạy hệ điều hành IOS 10', 'image/iphone.png', 17540000, 'Đang còn hàng', 0, 0, '0000-00-00', 3),
(18, 'SamSung S8', 'Không còn trở ngại khi đang sử dụng điện thoại. Galaxy S8 và S8+ được hỗ trợ bộ vi xử lý 10nm đầu tiên trên thế giới. Tải xuống, sạc và chuyển đổi từ ứng dụng này sang ứng dụng khác đều được thực hiện với tốc độ cực nhanh. Hoạt động nhanh chóng, hiệu', 'upload/samsungs8.jpg', 18990000, '', 1, 10, '0000-00-00', 4),
(19, 'SamSung S8', 'Được xem như một món trang trí đầy phong cách cho Galaxy S8 hoặc S8+, bộ sạc không dây này khiến cho việc sạc điện thoại của bạn trở nên vô cùng dễ dàng. Với chức năng sạc được ở cả dạng nằm và dạng đứng, giữ điện thoại theo chiều dọc hoặc theo chiều', 'upload/1.png', 18990000, '', 1, 10, '0000-00-00', 4),
(29, 'SamSung galaxy a5', '\r\nĐặc điểm nổi bật của Samsung Galaxy A5 (2017)\r\nTìm hiểu thêm\r\nTìm hiểu thêm\r\nTìm hiểu thêm\r\nTìm hiểu thêm\r\nTìm hiểu thêm\r\nTìm hiểu thêm\r\nTìm hiểu thêm\r\n\r\nBộ sản phẩm chuẩn: Sạc, Tai nghe, Cáp (USB Type-C), Cây lấy sim, Hộp, Sách hướng dẫn\r\nĐẳng cấp', 'upload/samsung-galaxy-a5-2017.png', 8990000, '', 1, 10, '0000-00-00', 4),
(30, 'SamSung galaxy j5 pime', '\r\nĐặc điểm nổi bật của Samsung Galaxy J5 Prime\r\nTìm hiểu thêm\r\nTìm hiểu thêm\r\nTìm hiểu thêm\r\nTìm hiểu thêm\r\n\r\nBộ sản phẩm chuẩn: Hộp, Sạc, Tai nghe, Sách hướng dẫn, Cáp, Cây lấy sim\r\nSamsung Galaxy J5 Prime là phiên bản rút gọn của J7 Prime với kích ', 'upload/samsung-galaxy-j5-prime.png', 4960000, '', 1, 10, '0000-00-00', 4),
(31, 'SamSung galaxy j7 pime', '\r\nĐặc điểm nổi bật của Samsung Galaxy J7 Prime\r\nTìm hiểu thêm\r\nTìm hiểu thêm\r\n\r\nBộ sản phẩm chuẩn: Hộp, Sạc, Tai nghe, Sách hướng dẫn, Cáp, Cây lấy sim\r\nGalaxy J7 Prime mang trên mình thiết kế nguyên khối kim loại sang trọng, hiệu năng tốt cùng camer', 'upload/samsung-galaxy-j7-prime.png', 6290000, '', 1, 10, '0000-00-00', 4),
(32, 'Sony Xperia XZs', '\r\nĐặc điểm nổi bật của Sony Xperia XZs\r\nTìm hiểu thêm\r\nTìm hiểu thêm\r\nTìm hiểu thêm\r\nTìm hiểu thêm\r\nSony Xperia XZs là smartphone được Sony đầu tư mạnh mẽ về camera với hàng loạt các trang bị cao cấp và sở hữu cho mình một mức giá bán hợp lý với ngườ', 'upload/sony-xperia-xzs-400x460.png', 14990000, '', 1, 12, '0000-00-00', 2),
(33, 'iPad Pro 9.7 inch Wifi 32GB', '\r\nĐặc điểm nổi bật của iPad Pro 9.7 inch Wifi 32GB\r\nTìm hiểu thêm\r\nTìm hiểu thêm\r\nTìm hiểu thêm\r\nTìm hiểu thêm\r\n\r\nBộ sản phẩm chuẩn: Adapter, Sách hướng dẫn, Cáp Lightning, Hộp máy\r\niPad Pro 9.7 inch – Máy tính bảng cao cấp, hiệu năng mượt mà\r\n\r\nSau ', 'upload/ipad-pro-97-inch-1-400x460.png', 14900000, '', 2, 10, '0000-00-00', 3),
(34, 'iPad Mini 4 Wifi Cellular 16GB', 'iPad Mini 4 Wifi Cellular 16GB cho bạn thêm sự lựa chọn với kết nối mạng 3G/4G cùng cấu hình mạnh mẽ.\r\nKết nối thế giới mọi lúc mọi nơi\r\n\r\nBên cạnh kết nối wifi chuẩn Wi-Fi 802.11 a/b/g/n/ac cho phép trải nghiệm web nhanh hơn, iPad Mini 4 ghi điểm vớ', 'upload/ipad-mini-4-cellular-16gb-400x460.png', 10490000, '', 2, 10, '0000-00-00', 3),
(35, 'iPad Mini 4 Wifi 32GB', 'Đặc điểm nổi bật của iPad Mini 4 Wifi 32GB\r\nTìm hiểu thêm\r\nBộ sản phẩm chuẩn: Adapter, Sách hướng dẫn, Cáp Lightning\r\niPad Mini 4 Wifi 32GB với thiết kế sang trọng cùng dung lượng pin lớn sẽ giúp bạn làm việc và giải trí mọi lúc mọi nơi.\r\nNhẹ hơn và ', 'upload/ipad-mini-4-wifi-32gb-400-400x460.png', 8490000, '', 2, 10, '0000-00-00', 3),
(36, 'Dell Inspiron 3462 N4200/4GB/500GB/Win10', 'Với chip Intel Pentium N4200 1.10 GHz, bộ nhớ Ram 4GB trong tầm giá thấp nhưng những trải nghiệm thực tế Dell Inspiron 3462 có kết quả khá ngạc nhiên về hiệu suất sử dụng.', 'upload/dell-inspiron-3462.png', 7690000, '', 3, 12, '0000-00-00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) CHARACTER SET utf8 NOT NULL,
  `password` varchar(50) CHARACTER SET utf8 NOT NULL,
  `tennsd` varchar(50) CHARACTER SET utf8 NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `tennsd`, `email`) VALUES
(1, 'admin', '123', 'Quản trị', 'quantri@gmail.com'),
(2, 'cadit', '123', 'Người quản trị', 'quantri@gmail.com'),
(3, 'muinv', 'mui123', 'Nguyễn Văn Mui', 'muicadit@yahoo.com'),
(4, 'muicep', 'cep123', 'Khoa Tin học - Ngoại ngữ', 'kthnn@gmail.com'),
(5, 'muicadit', 'mui123', 'Tổ tin học', 'totinhoc@gmail.com'),
(6, 'vanmanh', 'manh123', 'Nguyễn Văn Mạnh', 'vanmanh@gmail.com'),
(7, 'anhvui', 'vui123', 'Nguyễn Anh Vui', 'anhvui@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `danhmucsp`
--
ALTER TABLE `danhmucsp`
  ADD PRIMARY KEY (`iddm`);

--
-- Indexes for table `hangsx`
--
ALTER TABLE `hangsx`
  ADD PRIMARY KEY (`idhang`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `danhmucsp`
--
ALTER TABLE `danhmucsp`
  MODIFY `iddm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `hangsx`
--
ALTER TABLE `hangsx`
  MODIFY `idhang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
