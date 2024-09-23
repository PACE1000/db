-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 24, 2024 at 01:40 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perum_jasa_tirta`
--

-- --------------------------------------------------------

--
-- Table structure for table `jenis_tagihan`
--

CREATE TABLE `jenis_tagihan` (
  `id_jenis_tagihan` int(11) NOT NULL,
  `jenis_tagihan` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jenis_tagihan`
--

INSERT INTO `jenis_tagihan` (`id_jenis_tagihan`, `jenis_tagihan`) VALUES
(1, 'Uang Muka'),
(2, 'Pengadaan');

-- --------------------------------------------------------

--
-- Table structure for table `jumlah_total_tagihan`
--

CREATE TABLE `jumlah_total_tagihan` (
  `id_jumlah` int(11) NOT NULL,
  `jumlah` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jumlah_total_tagihan`
--

INSERT INTO `jumlah_total_tagihan` (`id_jumlah`, `jumlah`) VALUES
(1, 'Lebih dari 250 Juta'),
(2, 'Kurang dari 250 Juta dan Lebih dari 100 Juta'),
(3, 'Kurang dari 100 Juta');

-- --------------------------------------------------------

--
-- Table structure for table `posisi_tagihan`
--

CREATE TABLE `posisi_tagihan` (
  `id_posisi` int(11) NOT NULL,
  `tagihan` varchar(17) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posisi_tagihan`
--

INSERT INTO `posisi_tagihan` (`id_posisi`, `tagihan`) VALUES
(1, 'Telah Diarsipkan'),
(2, 'Telah Dibayarkan');

-- --------------------------------------------------------

--
-- Table structure for table `riwayat`
--

CREATE TABLE `riwayat` (
  `id_riwayat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id_role` int(11) NOT NULL,
  `role` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id_role`, `role`) VALUES
(1, 'DJA I'),
(2, 'Anggaran'),
(3, 'Akman'),
(4, 'AKP'),
(5, 'Ka. DAK'),
(6, 'VP SDK'),
(7, 'DKPM'),
(8, 'Kasir');

-- --------------------------------------------------------

--
-- Table structure for table `status_k3`
--

CREATE TABLE `status_k3` (
  `id_status` int(11) NOT NULL,
  `status` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `status_k3`
--

INSERT INTO `status_k3` (`id_status`, `status`) VALUES
(1, 'Ya'),
(2, 'Tidak');

-- --------------------------------------------------------

--
-- Table structure for table `status_pembayaran`
--

CREATE TABLE `status_pembayaran` (
  `id_status` int(11) NOT NULL,
  `status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `status_pembayaran`
--

INSERT INTO `status_pembayaran` (`id_status`, `status`) VALUES
(1, 'Sudah Terbayar'),
(2, 'Belum Terbayar');

-- --------------------------------------------------------

--
-- Table structure for table `status_penyelesaian`
--

CREATE TABLE `status_penyelesaian` (
  `id_status` int(11) NOT NULL,
  `status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `status_penyelesaian`
--

INSERT INTO `status_penyelesaian` (`id_status`, `status`) VALUES
(1, 'Selesai'),
(2, 'Belum Selesai');

-- --------------------------------------------------------

--
-- Table structure for table `tagihan`
--

CREATE TABLE `tagihan` (
  `id_tagihan` int(11) NOT NULL,
  `no_voucher` int(11) DEFAULT NULL,
  `nama_vendor` varchar(255) NOT NULL,
  `nama_tagihan` text NOT NULL,
  `unit_kerja` int(11) DEFAULT NULL,
  `nominal` bigint(20) NOT NULL,
  `path_dokumen` varchar(255) DEFAULT NULL,
  `id_jenis_tagihan` int(11) DEFAULT NULL,
  `id_jumlah_total_tagihan` int(11) DEFAULT NULL,
  `id_status_k3` int(11) DEFAULT NULL,
  `tanggal_pembuatan_voucher` datetime DEFAULT NULL,
  `tanggal_persetujuan_voucher` datetime DEFAULT NULL,
  `id_verifikator` int(11) DEFAULT NULL,
  `tgl_keluar_verifikator` datetime DEFAULT NULL,
  `catatan_verifikator` text DEFAULT NULL,
  `tgl_review_manajemen` datetime DEFAULT NULL,
  `tgl_penyampaian_review` datetime DEFAULT NULL,
  `selesai_perbaikan` datetime DEFAULT NULL,
  `selesai_akhir` datetime DEFAULT NULL,
  `tgl_out_keu_perpajakan` datetime DEFAULT NULL,
  `tgl_out_ka_dak` datetime DEFAULT NULL,
  `tgl_out_vp_sdk` datetime DEFAULT NULL,
  `tgl_out_dir_kpm` datetime DEFAULT NULL,
  `tgl_kasir` datetime DEFAULT NULL,
  `tgl_input_bri` datetime DEFAULT NULL,
  `tgl_approve_bri_anggaran` datetime DEFAULT NULL,
  `tgl_approve_ka_dak` datetime DEFAULT NULL,
  `tgl_release` datetime DEFAULT NULL,
  `nomor_posting` varchar(255) DEFAULT NULL,
  `nomor_reference` varchar(255) DEFAULT NULL,
  `tgl_akp_arsip` datetime DEFAULT NULL,
  `durasi_pembayaran` int(11) DEFAULT NULL,
  `evaluasi_verifikasi` int(11) DEFAULT NULL,
  `id_tingkatan_wewenang` int(11) DEFAULT NULL,
  `id_status_pembayaran` int(11) DEFAULT NULL,
  `persentase_tahapan` float DEFAULT NULL,
  `id_posisi_tagihan` int(11) DEFAULT NULL,
  `id_status_penyelesaian` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tagihan`
--

INSERT INTO `tagihan` (`id_tagihan`, `no_voucher`, `nama_vendor`, `nama_tagihan`, `unit_kerja`, `nominal`, `path_dokumen`, `id_jenis_tagihan`, `id_jumlah_total_tagihan`, `id_status_k3`, `tanggal_pembuatan_voucher`, `tanggal_persetujuan_voucher`, `id_verifikator`, `tgl_keluar_verifikator`, `catatan_verifikator`, `tgl_review_manajemen`, `tgl_penyampaian_review`, `selesai_perbaikan`, `selesai_akhir`, `tgl_out_keu_perpajakan`, `tgl_out_ka_dak`, `tgl_out_vp_sdk`, `tgl_out_dir_kpm`, `tgl_kasir`, `tgl_input_bri`, `tgl_approve_bri_anggaran`, `tgl_approve_ka_dak`, `tgl_release`, `nomor_posting`, `nomor_reference`, `tgl_akp_arsip`, `durasi_pembayaran`, `evaluasi_verifikasi`, `id_tingkatan_wewenang`, `id_status_pembayaran`, `persentase_tahapan`, `id_posisi_tagihan`, `id_status_penyelesaian`) VALUES
(5, 213, 'asd', 'sad', NULL, 214, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 1, NULL, NULL, NULL),
(6, 21, 'a', 'asd', NULL, 21, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-09-23 10:39:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, NULL, NULL, NULL),
(7, 213, 'taiga', 'revisi', NULL, 5555, NULL, NULL, 3, NULL, '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 2, NULL, NULL, NULL),
(8, 11121, 'nigg7', 'wqe', NULL, 213, NULL, NULL, 2, 1, '2024-09-23 22:04:53', NULL, NULL, '2024-09-23 22:20:20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 2, NULL, NULL, NULL),
(9, 1111, 'asd', 'asd', NULL, 213, NULL, NULL, 2, 1, '2024-09-23 22:04:42', NULL, NULL, '2024-09-23 22:19:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 2, NULL, NULL, NULL),
(10, 1111, 'sad', 'asd', NULL, 21, NULL, NULL, 2, 1, '2024-09-23 22:01:46', NULL, NULL, '2024-09-23 22:19:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 2, NULL, NULL, NULL),
(11, 213, 'asd', 'asf', NULL, 21, NULL, NULL, 2, 1, '2024-09-23 22:00:03', NULL, NULL, '2024-09-23 22:17:32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 2, NULL, NULL, NULL),
(12, 213, 'nigg5', 'safas', NULL, 3241, NULL, NULL, 2, 1, '2024-09-23 21:51:59', NULL, NULL, '2024-09-23 21:58:08', 'SAD', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, NULL, NULL, NULL),
(13, 1245, 'asf', 'asf', NULL, 124, NULL, NULL, 2, 1, '2024-09-23 22:22:22', NULL, NULL, '2024-09-23 22:22:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 2, NULL, NULL, NULL),
(14, 5555, 'TAIGAAS', 'wq', NULL, 1241, NULL, NULL, 2, 1, '2024-09-23 22:23:51', NULL, NULL, '2024-09-23 22:57:55', 'revisi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2422', NULL, NULL, NULL, NULL, 4, 2, NULL, NULL, NULL);

--
-- Triggers `tagihan`
--
DELIMITER $$
CREATE TRIGGER `dari_akman` BEFORE UPDATE ON `tagihan` FOR EACH ROW BEGIN

IF NEW.catatan_verifikator IS NOT NULL THEN
	SET NEW.id_tingkatan_wewenang =1;



END IF;

END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `dari_akp` BEFORE UPDATE ON `tagihan` FOR EACH ROW BEGIN

IF NEW.nomor_reference is NOT NULL THEN
	SET NEW.id_tingkatan_wewenang = 5;
END IF;

END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `dari_kadak` BEFORE UPDATE ON `tagihan` FOR EACH ROW BEGIN
    IF NEW.id_tingkatan_wewenang = 6 THEN
        IF OLD.id_jumlah_total_tagihan = 1 THEN
            IF NEW.id_jenis_tagihan = 1 THEN
                SET NEW.id_tingkatan_wewenang = 6;
            ELSE
                SET NEW.id_tingkatan_wewenang = 7;
            END IF;
        ELSEIF OLD.id_jumlah_total_tagihan = 2 THEN
            SET NEW.id_tingkatan_wewenang = 6;
        ELSEIF OLD.id_jumlah_total_tagihan = 3 THEN
            SET NEW.id_tingkatan_wewenang = 2;
        END IF;
    END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `dari_vpsdk` BEFORE UPDATE ON `tagihan` FOR EACH ROW BEGIN

IF NEW.id_tingkatan_wewenang = 7 THEN
	IF OLD.id_jumlah_total_tagihan = 2 THEN
	SET NEW.id_tingkatan_wewenang = 2;
    END IF;
END IF;

END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `tingkatan_wewenang` BEFORE UPDATE ON `tagihan` FOR EACH ROW BEGIN
  -- Check if the new value of id_tingkatan_wewenang is NULL 
  IF NEW.id_tingkatan_wewenang IS NULL THEN 
    SET NEW.id_tingkatan_wewenang = 2; 
  END IF; 
  
  IF NEW.nomor_reference is NOT NULL THEN
	SET NEW.id_tingkatan_wewenang = 5;
END IF;

  -- Check if tgl_keluar_verifikator is NOT NULL and catatan_verifikator is NULL
  IF NEW.tgl_keluar_verifikator IS NOT NULL THEN
    SET NEW.id_tingkatan_wewenang = 4;
    ELSEIF OLD.tgl_keluar_verifikator IS NOT NULL AND OLD.catatan_verifikator IS NOT NULL THEN
    SET NEW.id_tingkatan_wewenang=3;
  ELSEIF NEW.tgl_keluar_verifikator IS NOT NULL AND
  NEW.catatan_verifikator IS NOT NULL THEN
  	SET NEW.id_tingkatan_wewenang=1; 
    
  ELSE 
    -- Check if the new value of id_jumlah_total_tagihan is 1 
    IF NEW.id_jumlah_total_tagihan = 1 THEN 
      SET NEW.id_tingkatan_wewenang = 3; 
    ELSE 
      SET NEW.id_tingkatan_wewenang = 5; 
    END IF; 

    -- Check status K3
    IF NEW.id_status_k3 = 1 THEN 
      SET NEW.id_tingkatan_wewenang = 3; 
    ELSEIF NEW.id_status_k3 = 2 THEN 
      SET NEW.id_tingkatan_wewenang = 1; 
    END IF; 
  END IF;


  -- Final fallback (if necessary)
  IF NEW.id_tingkatan_wewenang IS NULL THEN 
    SET NEW.id_tingkatan_wewenang = 2; 
  END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `password` varchar(32) NOT NULL,
  `role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama`, `password`, `role`) VALUES
(1, 'a', 'a', 1);

-- --------------------------------------------------------

--
-- Table structure for table `verifikator`
--

CREATE TABLE `verifikator` (
  `id_verifikator` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `inisial` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `verifikator`
--

INSERT INTO `verifikator` (`id_verifikator`, `nama`, `inisial`) VALUES
(1, 'Andri', 'AN'),
(2, 'Deka', 'DK'),
(3, 'Niko', 'NK'),
(4, 'Pita', 'PT'),
(5, 'Atik', 'AT');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jenis_tagihan`
--
ALTER TABLE `jenis_tagihan`
  ADD PRIMARY KEY (`id_jenis_tagihan`);

--
-- Indexes for table `jumlah_total_tagihan`
--
ALTER TABLE `jumlah_total_tagihan`
  ADD PRIMARY KEY (`id_jumlah`);

--
-- Indexes for table `posisi_tagihan`
--
ALTER TABLE `posisi_tagihan`
  ADD PRIMARY KEY (`id_posisi`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id_role`);

--
-- Indexes for table `status_k3`
--
ALTER TABLE `status_k3`
  ADD PRIMARY KEY (`id_status`);

--
-- Indexes for table `status_pembayaran`
--
ALTER TABLE `status_pembayaran`
  ADD PRIMARY KEY (`id_status`);

--
-- Indexes for table `status_penyelesaian`
--
ALTER TABLE `status_penyelesaian`
  ADD PRIMARY KEY (`id_status`);

--
-- Indexes for table `tagihan`
--
ALTER TABLE `tagihan`
  ADD PRIMARY KEY (`id_tagihan`),
  ADD KEY `id_jumlah_total_tagihan` (`id_jumlah_total_tagihan`),
  ADD KEY `id_verifikator` (`id_verifikator`),
  ADD KEY `id_tingkatan_wewenang` (`id_tingkatan_wewenang`),
  ADD KEY `id_status_pembayaran` (`id_status_pembayaran`),
  ADD KEY `id_posisi_tagihan` (`id_posisi_tagihan`),
  ADD KEY `id_status_penyelesaian` (`id_status_penyelesaian`),
  ADD KEY `id_jenis_tagihan` (`id_jenis_tagihan`),
  ADD KEY `id_status_k3` (`id_status_k3`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `role` (`role`);

--
-- Indexes for table `verifikator`
--
ALTER TABLE `verifikator`
  ADD PRIMARY KEY (`id_verifikator`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jenis_tagihan`
--
ALTER TABLE `jenis_tagihan`
  MODIFY `id_jenis_tagihan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `jumlah_total_tagihan`
--
ALTER TABLE `jumlah_total_tagihan`
  MODIFY `id_jumlah` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `posisi_tagihan`
--
ALTER TABLE `posisi_tagihan`
  MODIFY `id_posisi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id_role` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `status_k3`
--
ALTER TABLE `status_k3`
  MODIFY `id_status` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `status_pembayaran`
--
ALTER TABLE `status_pembayaran`
  MODIFY `id_status` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `status_penyelesaian`
--
ALTER TABLE `status_penyelesaian`
  MODIFY `id_status` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tagihan`
--
ALTER TABLE `tagihan`
  MODIFY `id_tagihan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `verifikator`
--
ALTER TABLE `verifikator`
  MODIFY `id_verifikator` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tagihan`
--
ALTER TABLE `tagihan`
  ADD CONSTRAINT `tagihan_ibfk_1` FOREIGN KEY (`id_status_pembayaran`) REFERENCES `status_pembayaran` (`id_status`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `tagihan_ibfk_2` FOREIGN KEY (`id_jenis_tagihan`) REFERENCES `jenis_tagihan` (`id_jenis_tagihan`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `tagihan_ibfk_3` FOREIGN KEY (`id_posisi_tagihan`) REFERENCES `posisi_tagihan` (`id_posisi`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `tagihan_ibfk_4` FOREIGN KEY (`id_verifikator`) REFERENCES `verifikator` (`id_verifikator`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `tagihan_ibfk_5` FOREIGN KEY (`id_status_penyelesaian`) REFERENCES `status_penyelesaian` (`id_status`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `tagihan_ibfk_6` FOREIGN KEY (`id_jumlah_total_tagihan`) REFERENCES `jumlah_total_tagihan` (`id_jumlah`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `tagihan_ibfk_7` FOREIGN KEY (`id_tingkatan_wewenang`) REFERENCES `role` (`id_role`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `tagihan_ibfk_8` FOREIGN KEY (`id_status_k3`) REFERENCES `status_k3` (`id_status`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`role`) REFERENCES `role` (`id_role`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
