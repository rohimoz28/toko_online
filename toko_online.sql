-- phpMyAdmin SQL Dump
-- version 5.0.4deb2~bpo10+1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 02, 2021 at 02:40 PM
-- Server version: 10.3.29-MariaDB-0+deb10u1
-- PHP Version: 7.3.27-1~deb10u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko_online`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_barang`
--

CREATE TABLE `tb_barang` (
  `id_brg` int(11) NOT NULL,
  `nama_brg` varchar(128) NOT NULL,
  `keterangan` varchar(256) NOT NULL,
  `kategori` varchar(64) NOT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(4) NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_barang`
--

INSERT INTO `tb_barang` (`id_brg`, `nama_brg`, `keterangan`, `kategori`, `harga`, `stok`, `gambar`) VALUES
(1, 'Sepatu All Star', 'Sepatu unisex size 38-46', 'Fashion', 300000, 2, 'sepatu.jpeg'),
(5, 'Raket Tenis', 'Raket Tenis Merk Li-Ning 403', 'Olahraga', 300000, 3, 'raket1.jpeg'),
(9, 'Sepatu Futsal', 'Sepatu futsal merk nike pria', 'Olahraga', 450000, 2, 'sepatu-futsal1.jpeg'),
(12, 'Kaos Uniqlo', 'Kaos pria size S/M/L', 'Fashion', 75000, 2, 'kaos-uniqlo1.jpeg'),
(13, 'Kemeja Pria', 'Kemeja pria size M/L', 'Fashion', 350000, 1, 'kemeja-uniqlo1.jpeg'),
(14, 'Seni Bersikap Bodo Amat', 'Sebuah seni untuk bersikap bodo amat', 'Buku', 76000, 4, 'buku-01.jpeg'),
(15, 'Mac Desktop', 'Mac PC Desktop 2019', 'Komputer', 27000000, 2, 'mac-01.jpeg'),
(16, 'Lenovo Desktop', 'Lenovo PC Desktop 2017', 'Komputer', 7400000, 1, 'lenovo-01.jpeg'),
(17, 'Macbook 2019', 'Macbook Air 2019 18 inch', 'Komputer', 15000000, 2, 'macbook-01.jpeg'),
(18, 'Filosofi Teras', 'Filosofi Teras Cetakan 12', 'Buku', 87000, 3, 'buku-02.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_invoice`
--

CREATE TABLE `tb_invoice` (
  `id` int(11) NOT NULL,
  `nama` varchar(64) NOT NULL,
  `alamat` varchar(256) NOT NULL,
  `tgl_pesan` datetime NOT NULL,
  `batas_bayar` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_invoice`
--

INSERT INTO `tb_invoice` (`id`, `nama`, `alamat`, `tgl_pesan`, `batas_bayar`) VALUES
(1, 'Rohim Muhamad', 'Dasana Indah', '2021-06-20 22:02:19', '2021-06-21 22:02:19'),
(3, 'Rohim', 'Dasana Indah', '2021-06-20 22:06:50', '2021-06-21 22:06:50'),
(5, 'Yantina', 'Dasana Indah', '2021-06-22 21:55:54', '2021-06-23 21:55:54'),
(6, 'Meliodas', 'Mendrisio', '2021-06-24 12:37:02', '2021-06-25 12:37:02'),
(7, 'Lauren', 'Jakarta', '2021-06-27 11:12:33', '2021-06-28 11:12:33'),
(8, 'User', 'Tangerang', '2021-07-01 16:50:25', '2021-07-02 16:50:25'),
(9, 'user', 'tenggara', '2021-07-01 19:23:52', '2021-07-02 19:23:52');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pesanan`
--

CREATE TABLE `tb_pesanan` (
  `id` int(11) NOT NULL,
  `id_invoice` int(11) NOT NULL,
  `id_brg` int(11) NOT NULL,
  `nama_brg` varchar(64) NOT NULL,
  `jumlah` int(3) NOT NULL,
  `harga` int(10) NOT NULL,
  `pilihan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_pesanan`
--

INSERT INTO `tb_pesanan` (`id`, `id_invoice`, `id_brg`, `nama_brg`, `jumlah`, `harga`, `pilihan`) VALUES
(1, 1, 2, 'Baju Bayi Uniqlo', 1, 20000, ''),
(2, 2, 1, 'Sepatu All Star', 1, 300000, ''),
(3, 3, 2, 'Baju Bayi Uniqlo', 1, 20000, ''),
(4, 4, 3, 'iphone 8', 1, 8000000, ''),
(5, 4, 4, 'Jam Tangan', 1, 500000, ''),
(6, 5, 3, 'iphone 8', 1, 8000000, ''),
(7, 5, 1, 'Sepatu All Star', 1, 300000, ''),
(8, 6, 1, 'Sepatu All Star', 1, 300000, ''),
(9, 7, 1, 'Sepatu All Star', 1, 300000, ''),
(10, 8, 13, 'Kemeja Pria', 1, 350000, ''),
(11, 9, 13, 'Kemeja Pria', 1, 350000, '');

--
-- Triggers `tb_pesanan`
--
DELIMITER $$
CREATE TRIGGER `stok_pesanan` AFTER INSERT ON `tb_pesanan` FOR EACH ROW BEGIN
UPDATE tb_barang SET stok = stok -new.jumlah
WHERE id_brg = NEW.id_brg;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `nama` varchar(64) NOT NULL,
  `username` varchar(64) NOT NULL,
  `password` varchar(64) NOT NULL,
  `role_id` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id`, `nama`, `username`, `password`, `role_id`) VALUES
(1, 'Rohim Muhamad', 'sinofsloth93@gmail.com', '1234', 0),
(2, 'user', 'user', '1234', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_barang`
--
ALTER TABLE `tb_barang`
  ADD PRIMARY KEY (`id_brg`);

--
-- Indexes for table `tb_invoice`
--
ALTER TABLE `tb_invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_pesanan`
--
ALTER TABLE `tb_pesanan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_barang`
--
ALTER TABLE `tb_barang`
  MODIFY `id_brg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tb_invoice`
--
ALTER TABLE `tb_invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tb_pesanan`
--
ALTER TABLE `tb_pesanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
