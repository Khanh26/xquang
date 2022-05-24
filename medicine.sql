-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 24, 2022 lúc 07:07 AM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `medicine`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `anhsieuam`
--

CREATE TABLE `anhsieuam` (
  `ANHGOC_ID` int(11) NOT NULL,
  `NGAYGIONHAP` datetime NOT NULL,
  `PATH_ANHGOC` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bacsi`
--

CREATE TABLE `bacsi` (
  `BS_ID` int(11) NOT NULL,
  `CK_ID` int(11) NOT NULL,
  `NLV_ID` int(11) NOT NULL,
  `QUYEN_ID` int(11) NOT NULL,
  `BS_HOTEN` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `BS_GIOITINH` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `BS_NGAYSINH` date NOT NULL,
  `BS_DIACHI` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `BS_SDT` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `BS_MK` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bangcap`
--

CREATE TABLE `bangcap` (
  `BANGCAP_ID` int(11) NOT NULL,
  `NCB_ID` int(11) NOT NULL,
  `BS_ID` int(11) NOT NULL,
  `CN_ID` int(11) NOT NULL,
  `SOHIEU` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `NGAYCAP` date NOT NULL,
  `PATH` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `benh`
--

CREATE TABLE `benh` (
  `BENH_ID` int(11) NOT NULL,
  `BENH_TEN` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `benhnhan`
--

CREATE TABLE `benhnhan` (
  `BN_ID` int(11) NOT NULL,
  `PX_ID` int(11) NOT NULL,
  `BN_HOTEN` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `BN_GIOITINH` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `BN_NGAYSINH` date NOT NULL,
  `BN_SDT` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `BN_DIACHI` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chuyenkhoa`
--

CREATE TABLE `chuyenkhoa` (
  `CK_ID` int(11) NOT NULL,
  `CK_TEN` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chuyennganh`
--

CREATE TABLE `chuyennganh` (
  `CN_ID` int(11) NOT NULL,
  `CN_TEN` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dodo`
--

CREATE TABLE `dodo` (
  `DODO_ID` int(11) NOT NULL,
  `LOAIMH_ID` int(11) NOT NULL,
  `MH_ID` int(11) NOT NULL,
  `ANHGOC_ID` int(11) NOT NULL,
  `DODO_TEN` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giatrisieuthamso`
--

CREATE TABLE `giatrisieuthamso` (
  `MH_ID` int(11) NOT NULL,
  `LOAIMH_ID` int(11) NOT NULL,
  `CT_GIATRI` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `kqcd_bs`
--

CREATE TABLE `kqcd_bs` (
  `ANHGOC_ID` int(11) NOT NULL,
  `BS_ID` int(11) NOT NULL,
  `KETQUA_CD` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `NGAYGIO_CD` datetime NOT NULL,
  `GHICHU_CD` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `kqcd_mh`
--

CREATE TABLE `kqcd_mh` (
  `MH_ID` int(11) NOT NULL,
  `ANHGOC_ID` int(11) NOT NULL,
  `SEGMENTED_IMG_PATH` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL,
  `GROUND_TRUTH_IMG` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TG_CHAY` float NOT NULL,
  `IoU` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaimohinh`
--

CREATE TABLE `loaimohinh` (
  `LOAIMH_ID` int(11) NOT NULL,
  `LOAIMH_TEN` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loaimohinh`
--

INSERT INTO `loaimohinh` (`LOAIMH_ID`, `LOAIMH_TEN`) VALUES
(0, 'Phân lớp'),
(1, 'Phân vùng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mohinh`
--

CREATE TABLE `mohinh` (
  `MH_ID` int(11) NOT NULL,
  `LOAIMH_ID` int(11) NOT NULL,
  `MH_TEN` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `MH_PATH` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SAMPLES_TRAIN` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SAMPLES_TEST` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `RESULT_TRAIN` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `RESULT_TEST` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mohinh_benh`
--

CREATE TABLE `mohinh_benh` (
  `MH_ID` int(11) NOT NULL,
  `BENH_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `noicapbang`
--

CREATE TABLE `noicapbang` (
  `NCB_ID` int(11) NOT NULL,
  `PX_ID` int(11) NOT NULL,
  `NCB_TEN` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `NCB_DIACHI` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `NCB_EMAIL` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `NCB_SDT` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `noilamviec`
--

CREATE TABLE `noilamviec` (
  `NLV_ID` int(11) NOT NULL,
  `NLV_TEN` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `NLV_DIACHI` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phienchandoan`
--

CREATE TABLE `phienchandoan` (
  `BN_ID` int(11) NOT NULL,
  `ANHGOC_ID` int(11) NOT NULL,
  `PCD_SO` int(11) NOT NULL,
  `PCD_NGAYGIO` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phuongxa`
--

CREATE TABLE `phuongxa` (
  `PX_ID` int(11) NOT NULL,
  `QH_ID` int(11) NOT NULL,
  `PX_TEN` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quanhuyen`
--

CREATE TABLE `quanhuyen` (
  `QH_ID` int(11) NOT NULL,
  `TINHTP_ID` int(11) NOT NULL,
  `QH_TEN` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quyen`
--

CREATE TABLE `quyen` (
  `QUYEN_ID` int(11) NOT NULL,
  `QUYEN_TEN` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sieuthamso`
--

CREATE TABLE `sieuthamso` (
  `SIEUTHAMSO_ID` int(11) NOT NULL,
  `SIEUTHAMSO_TEN` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SIEUTHAMSO_GHICHU` varchar(1024) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tinhtp`
--

CREATE TABLE `tinhtp` (
  `TINHTP_ID` int(11) NOT NULL,
  `TINHTP_TEN` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `anhsieuam`
--
ALTER TABLE `anhsieuam`
  ADD PRIMARY KEY (`ANHGOC_ID`);

--
-- Chỉ mục cho bảng `bacsi`
--
ALTER TABLE `bacsi`
  ADD PRIMARY KEY (`BS_ID`),
  ADD KEY `CK_ID` (`CK_ID`),
  ADD KEY `NLV_ID` (`NLV_ID`),
  ADD KEY `QUYEN_ID` (`QUYEN_ID`);

--
-- Chỉ mục cho bảng `bangcap`
--
ALTER TABLE `bangcap`
  ADD PRIMARY KEY (`BANGCAP_ID`),
  ADD KEY `CN_ID` (`CN_ID`),
  ADD KEY `NCB_ID` (`NCB_ID`),
  ADD KEY `BS_ID` (`BS_ID`);

--
-- Chỉ mục cho bảng `benh`
--
ALTER TABLE `benh`
  ADD PRIMARY KEY (`BENH_ID`);

--
-- Chỉ mục cho bảng `benhnhan`
--
ALTER TABLE `benhnhan`
  ADD PRIMARY KEY (`BN_ID`),
  ADD KEY `PX_ID` (`PX_ID`);

--
-- Chỉ mục cho bảng `chuyenkhoa`
--
ALTER TABLE `chuyenkhoa`
  ADD PRIMARY KEY (`CK_ID`);

--
-- Chỉ mục cho bảng `chuyennganh`
--
ALTER TABLE `chuyennganh`
  ADD PRIMARY KEY (`CN_ID`);

--
-- Chỉ mục cho bảng `dodo`
--
ALTER TABLE `dodo`
  ADD PRIMARY KEY (`DODO_ID`),
  ADD KEY `ANHGOC_ID` (`ANHGOC_ID`),
  ADD KEY `LOAIMH_ID` (`LOAIMH_ID`),
  ADD KEY `MH_ID` (`MH_ID`);

--
-- Chỉ mục cho bảng `giatrisieuthamso`
--
ALTER TABLE `giatrisieuthamso`
  ADD PRIMARY KEY (`MH_ID`,`LOAIMH_ID`),
  ADD KEY `LOAIMH_ID` (`LOAIMH_ID`);

--
-- Chỉ mục cho bảng `kqcd_bs`
--
ALTER TABLE `kqcd_bs`
  ADD PRIMARY KEY (`ANHGOC_ID`,`BS_ID`),
  ADD KEY `BS_ID` (`BS_ID`);

--
-- Chỉ mục cho bảng `kqcd_mh`
--
ALTER TABLE `kqcd_mh`
  ADD PRIMARY KEY (`MH_ID`,`ANHGOC_ID`),
  ADD KEY `ANHGOC_ID` (`ANHGOC_ID`);

--
-- Chỉ mục cho bảng `loaimohinh`
--
ALTER TABLE `loaimohinh`
  ADD PRIMARY KEY (`LOAIMH_ID`);

--
-- Chỉ mục cho bảng `mohinh`
--
ALTER TABLE `mohinh`
  ADD PRIMARY KEY (`MH_ID`),
  ADD KEY `mohinh_ibfk_1` (`LOAIMH_ID`);

--
-- Chỉ mục cho bảng `mohinh_benh`
--
ALTER TABLE `mohinh_benh`
  ADD PRIMARY KEY (`MH_ID`,`BENH_ID`),
  ADD KEY `BENH_ID` (`BENH_ID`);

--
-- Chỉ mục cho bảng `noicapbang`
--
ALTER TABLE `noicapbang`
  ADD PRIMARY KEY (`NCB_ID`),
  ADD KEY `PX_ID` (`PX_ID`);

--
-- Chỉ mục cho bảng `noilamviec`
--
ALTER TABLE `noilamviec`
  ADD PRIMARY KEY (`NLV_ID`);

--
-- Chỉ mục cho bảng `phienchandoan`
--
ALTER TABLE `phienchandoan`
  ADD PRIMARY KEY (`PCD_SO`,`BN_ID`,`ANHGOC_ID`),
  ADD KEY `ANHGOC_ID` (`ANHGOC_ID`),
  ADD KEY `BN_ID` (`BN_ID`);

--
-- Chỉ mục cho bảng `phuongxa`
--
ALTER TABLE `phuongxa`
  ADD PRIMARY KEY (`PX_ID`),
  ADD KEY `QH_ID` (`QH_ID`);

--
-- Chỉ mục cho bảng `quanhuyen`
--
ALTER TABLE `quanhuyen`
  ADD PRIMARY KEY (`QH_ID`),
  ADD KEY `TINHTP_ID` (`TINHTP_ID`);

--
-- Chỉ mục cho bảng `quyen`
--
ALTER TABLE `quyen`
  ADD PRIMARY KEY (`QUYEN_ID`);

--
-- Chỉ mục cho bảng `sieuthamso`
--
ALTER TABLE `sieuthamso`
  ADD PRIMARY KEY (`SIEUTHAMSO_ID`);

--
-- Chỉ mục cho bảng `tinhtp`
--
ALTER TABLE `tinhtp`
  ADD PRIMARY KEY (`TINHTP_ID`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `anhsieuam`
--
ALTER TABLE `anhsieuam`
  MODIFY `ANHGOC_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `bacsi`
--
ALTER TABLE `bacsi`
  MODIFY `BS_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `benh`
--
ALTER TABLE `benh`
  MODIFY `BENH_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `benhnhan`
--
ALTER TABLE `benhnhan`
  MODIFY `BN_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `chuyenkhoa`
--
ALTER TABLE `chuyenkhoa`
  MODIFY `CK_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `chuyennganh`
--
ALTER TABLE `chuyennganh`
  MODIFY `CN_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `dodo`
--
ALTER TABLE `dodo`
  MODIFY `DODO_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `loaimohinh`
--
ALTER TABLE `loaimohinh`
  MODIFY `LOAIMH_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `mohinh`
--
ALTER TABLE `mohinh`
  MODIFY `MH_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `noicapbang`
--
ALTER TABLE `noicapbang`
  MODIFY `NCB_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `noilamviec`
--
ALTER TABLE `noilamviec`
  MODIFY `NLV_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `phienchandoan`
--
ALTER TABLE `phienchandoan`
  MODIFY `PCD_SO` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `phuongxa`
--
ALTER TABLE `phuongxa`
  MODIFY `PX_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `quanhuyen`
--
ALTER TABLE `quanhuyen`
  MODIFY `QH_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `quyen`
--
ALTER TABLE `quyen`
  MODIFY `QUYEN_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `sieuthamso`
--
ALTER TABLE `sieuthamso`
  MODIFY `SIEUTHAMSO_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tinhtp`
--
ALTER TABLE `tinhtp`
  MODIFY `TINHTP_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `bacsi`
--
ALTER TABLE `bacsi`
  ADD CONSTRAINT `bacsi_ibfk_1` FOREIGN KEY (`CK_ID`) REFERENCES `chuyenkhoa` (`CK_ID`),
  ADD CONSTRAINT `bacsi_ibfk_2` FOREIGN KEY (`NLV_ID`) REFERENCES `noilamviec` (`NLV_ID`),
  ADD CONSTRAINT `bacsi_ibfk_3` FOREIGN KEY (`QUYEN_ID`) REFERENCES `quyen` (`QUYEN_ID`);

--
-- Các ràng buộc cho bảng `bangcap`
--
ALTER TABLE `bangcap`
  ADD CONSTRAINT `bangcap_ibfk_1` FOREIGN KEY (`CN_ID`) REFERENCES `chuyennganh` (`CN_ID`),
  ADD CONSTRAINT `bangcap_ibfk_2` FOREIGN KEY (`NCB_ID`) REFERENCES `noicapbang` (`NCB_ID`),
  ADD CONSTRAINT `bangcap_ibfk_3` FOREIGN KEY (`BS_ID`) REFERENCES `bacsi` (`BS_ID`);

--
-- Các ràng buộc cho bảng `benhnhan`
--
ALTER TABLE `benhnhan`
  ADD CONSTRAINT `benhnhan_ibfk_1` FOREIGN KEY (`PX_ID`) REFERENCES `phuongxa` (`PX_ID`);

--
-- Các ràng buộc cho bảng `dodo`
--
ALTER TABLE `dodo`
  ADD CONSTRAINT `dodo_ibfk_1` FOREIGN KEY (`ANHGOC_ID`) REFERENCES `anhsieuam` (`ANHGOC_ID`),
  ADD CONSTRAINT `dodo_ibfk_2` FOREIGN KEY (`LOAIMH_ID`) REFERENCES `loaimohinh` (`LOAIMH_ID`),
  ADD CONSTRAINT `dodo_ibfk_3` FOREIGN KEY (`MH_ID`) REFERENCES `mohinh` (`MH_ID`);

--
-- Các ràng buộc cho bảng `giatrisieuthamso`
--
ALTER TABLE `giatrisieuthamso`
  ADD CONSTRAINT `giatrisieuthamso_ibfk_1` FOREIGN KEY (`MH_ID`) REFERENCES `mohinh` (`MH_ID`),
  ADD CONSTRAINT `giatrisieuthamso_ibfk_2` FOREIGN KEY (`LOAIMH_ID`) REFERENCES `loaimohinh` (`LOAIMH_ID`);

--
-- Các ràng buộc cho bảng `kqcd_bs`
--
ALTER TABLE `kqcd_bs`
  ADD CONSTRAINT `kqcd_bs_ibfk_1` FOREIGN KEY (`ANHGOC_ID`) REFERENCES `anhsieuam` (`ANHGOC_ID`),
  ADD CONSTRAINT `kqcd_bs_ibfk_2` FOREIGN KEY (`BS_ID`) REFERENCES `bacsi` (`BS_ID`);

--
-- Các ràng buộc cho bảng `kqcd_mh`
--
ALTER TABLE `kqcd_mh`
  ADD CONSTRAINT `kqcd_mh_ibfk_1` FOREIGN KEY (`ANHGOC_ID`) REFERENCES `anhsieuam` (`ANHGOC_ID`),
  ADD CONSTRAINT `kqcd_mh_ibfk_2` FOREIGN KEY (`MH_ID`) REFERENCES `mohinh` (`MH_ID`);

--
-- Các ràng buộc cho bảng `mohinh`
--
ALTER TABLE `mohinh`
  ADD CONSTRAINT `mohinh_ibfk_1` FOREIGN KEY (`LOAIMH_ID`) REFERENCES `loaimohinh` (`LOAIMH_ID`);

--
-- Các ràng buộc cho bảng `mohinh_benh`
--
ALTER TABLE `mohinh_benh`
  ADD CONSTRAINT `mohinh_benh_ibfk_1` FOREIGN KEY (`BENH_ID`) REFERENCES `benh` (`BENH_ID`),
  ADD CONSTRAINT `mohinh_benh_ibfk_2` FOREIGN KEY (`MH_ID`) REFERENCES `mohinh` (`MH_ID`);

--
-- Các ràng buộc cho bảng `noicapbang`
--
ALTER TABLE `noicapbang`
  ADD CONSTRAINT `noicapbang_ibfk_1` FOREIGN KEY (`PX_ID`) REFERENCES `phuongxa` (`PX_ID`);

--
-- Các ràng buộc cho bảng `phienchandoan`
--
ALTER TABLE `phienchandoan`
  ADD CONSTRAINT `phienchandoan_ibfk_1` FOREIGN KEY (`ANHGOC_ID`) REFERENCES `anhsieuam` (`ANHGOC_ID`),
  ADD CONSTRAINT `phienchandoan_ibfk_2` FOREIGN KEY (`BN_ID`) REFERENCES `benhnhan` (`BN_ID`);

--
-- Các ràng buộc cho bảng `phuongxa`
--
ALTER TABLE `phuongxa`
  ADD CONSTRAINT `phuongxa_ibfk_1` FOREIGN KEY (`QH_ID`) REFERENCES `quanhuyen` (`QH_ID`);

--
-- Các ràng buộc cho bảng `quanhuyen`
--
ALTER TABLE `quanhuyen`
  ADD CONSTRAINT `quanhuyen_ibfk_1` FOREIGN KEY (`TINHTP_ID`) REFERENCES `tinhtp` (`TINHTP_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
