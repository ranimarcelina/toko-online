-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 09 Nov 2020 pada 02.02
-- Versi server: 10.4.13-MariaDB
-- Versi PHP: 7.2.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cv_db`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `user_id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `fullname` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`user_id`, `username`, `password`, `fullname`) VALUES
(3, 'hakko', 'hakko', 'hakko bio richard');

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `br_id` int(6) NOT NULL,
  `br_nm` varchar(50) NOT NULL,
  `br_item` int(4) NOT NULL,
  `br_hrg` int(10) NOT NULL,
  `br_stok` int(9) NOT NULL,
  `br_satuan` varchar(20) NOT NULL,
  `br_gbr` varchar(100) NOT NULL,
  `ket` varchar(250) NOT NULL,
  `br_sts` varchar(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`br_id`, `br_nm`, `br_item`, `br_hrg`, `br_stok`, `br_satuan`, `br_gbr`, `ket`, `br_sts`) VALUES
(1, 'Kaos Sudirman', 1, 60000, 12, 'Pcs', 'gambar/8.jpg', 'Bahan cvc bandung build up tanpa jahitan samping', 'Y'),
(2, 'Kaos Skaters', 1, 65000, 24, 'Pcs', 'gambar/9.jpg', 'Bahan Cotton Combed 24s built up', 'Y'),
(3, 'Kaos Emwe', 1, 80000, 30, 'Pcs', 'gambar/6.jpg', 'Bahan cvc bandung build up tanpa jahitan samping', 'Y'),
(4, 'Kaos Begin', 1, 80000, 20, 'Pcs', 'gambar/7.jpg', 'Bahan cvc bandung build up tanpa jahitan samping', 'Y'),
(5, 'Kaos Man City', 1, 60000, 30, 'Pcs', 'gambar/2.jpg', 'Bahan Cotton Combed 20s Jahitan samping', 'Y'),
(6, 'Kaos H & L', 1, 75000, 20, 'Pcs', 'gambar/5.jpg', 'Bahan Cotton Combed 24s built up', 'Y'),
(7, 'Kaos Cool Blue', 1, 70000, 20, 'Pcs', 'gambar/4.jpg', 'Bahan kardet jakarta', 'Y'),
(8, 'Kaos Feed Me', 1, 65000, 12, 'Pcs', 'gambar/3.jpg', 'Bahan Cotton Combed 24s built up', 'Y'),
(9, 'Kaos Art Hitam', 1, 55000, 20, 'Pcs', 'gambar/1.jpg', 'Bahan cvc bandung build up tanpa jahitan samping', 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `no_pem`
--

CREATE TABLE `no_pem` (
  `nopem` varchar(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `no_pem`
--

INSERT INTO `no_pem` (`nopem`) VALUES
('79');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembelian`
--

CREATE TABLE `pembelian` (
  `no_hdpem` varchar(10) NOT NULL,
  `tgl_hdpem` date NOT NULL,
  `usr_hdpem` int(11) NOT NULL,
  `crkir_hdpem` tinyint(4) NOT NULL,
  `crpem_hdpem` tinyint(4) NOT NULL,
  `penerima_hdpem` varchar(50) NOT NULL,
  `almt_pem` text NOT NULL,
  `kp_pem` varchar(6) NOT NULL,
  `kota_pem` varchar(30) NOT NULL,
  `tlp` varchar(16) NOT NULL,
  `rek_pem` varchar(50) NOT NULL,
  `nmrek_pem` varchar(20) NOT NULL,
  `bank_pem` varchar(25) NOT NULL,
  `ct_pem` text NOT NULL,
  `tot_hdpem` int(11) NOT NULL,
  `sts_pem` varchar(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pembelian`
--

INSERT INTO `pembelian` (`no_hdpem`, `tgl_hdpem`, `usr_hdpem`, `crkir_hdpem`, `crpem_hdpem`, `penerima_hdpem`, `almt_pem`, `kp_pem`, `kota_pem`, `tlp`, `rek_pem`, `nmrek_pem`, `bank_pem`, `ct_pem`, `tot_hdpem`, `sts_pem`) VALUES
('T10090078', '2010-09-29', 13, 0, 0, 'sandi ajah', ' Jl. Nangka Raya Blok I ', '17151', 'Bekasi', '021', '123123123', '', '', '', 12070000, 'Y'),
('T10090077', '2010-09-29', 26, 0, 0, 'isan sah', '  jl. lipo ', '18762', '02187967', 'Cikarang', '67542111', 'Ihsan sah, S.Kom', 'BCA', '', 190000, 'Y'),
('T10090074', '2010-09-28', 13, 0, 0, 'sandi ajah', ' Jl. Nangka Raya Blok I ', '17151', 'Bekasi', '021', '123123123', '', '', '', 2920000, 'Y'),
('T10090073', '2010-09-28', 26, 0, 0, 'isan sah', '  jl. lipo ', '18762', '02187967', 'Cikarang', '67542111', 'Ihsan sah, S.Kom', 'BCA', '', 60000, 'Y'),
('T10090076', '2010-09-29', 13, 0, 0, 'sandi ajah', ' Jl. Nangka Raya Blok I ', '17151', 'Bekasi', '021', '123123123', '', '', '', 190000, 'Y'),
('T10090075', '2010-09-29', 13, 0, 0, 'sandi ajah', ' Jl. Nangka Raya Blok I ', '17151', 'Bekasi', '021', '123123123', '', '', '', 70000, 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `hd_trpem` varchar(10) NOT NULL,
  `br_trpem` varchar(6) NOT NULL,
  `qty_trpem` int(11) NOT NULL,
  `hrg_trpem` int(11) NOT NULL,
  `sts_trpem` varchar(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`hd_trpem`, `br_trpem`, `qty_trpem`, `hrg_trpem`, `sts_trpem`) VALUES
('T10090078', 'mt01', 40, 100000, 'Y'),
('T10090078', 'mk01', 40, 200000, 'Y'),
('T10090078', 'gd01', 1, 70000, 'Y'),
('T10090077', 'me01', 40, 3000, 'Y'),
('T10090077', 'gd01', 1, 70000, 'Y'),
('T10090076', 'me01', 40, 3000, 'Y'),
('T10090076', 'gd01', 1, 70000, 'Y'),
('T10090075', 'gd01', 1, 70000, 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_usr` int(11) NOT NULL,
  `nm_usr` varchar(50) NOT NULL,
  `bank` varchar(30) NOT NULL,
  `total` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_usr`, `nm_usr`, `bank`, `total`) VALUES
(28, 'Hakko Bio Richard', 'BCA', ''),
(27, 'Hakko Bio Richard', 'Mandiri', ''),
(29, 'Hakko Bio Richard', 'Bank Jabar', ''),
(30, 'rarani', 'CIMB', ''),
(31, 'Rani Marcelina', 'Mandiri', ''),
(32, 'Rani Marcelina', 'Mandiri', ''),
(33, 'Rani Marcelina', 'Mandiri', ''),
(34, 'Rani Marcelina', 'Mandiri', ''),
(35, 'Rani Marcelina', 'Mandiri', ''),
(36, 'Rani Marcelina', 'Mandiri', 'Rp. 65000,-'),
(37, 'Rani Marcelina', 'Mandiri', 'Rp. 70000,-'),
(38, 'Rani Marcelina', 'Mandiri', 'Rp. 70000,-'),
(39, 'Rani Marcelina', 'Mandiri', 'Rp. 70000,-'),
(40, 'Rani Marcelina', 'BCA', 'Rp. 70000,-'),
(41, 'Rani Marcelina', 'BRI', 'Rp. 70000,-'),
(42, 'Rani Marcelina', 'BRI', 'Rp. 70000,-'),
(43, 'Rani Marcelina', 'Mandiri', 'Rp. 55000,-');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`user_id`);

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`br_id`);

--
-- Indeks untuk tabel `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`no_hdpem`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_usr`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `barang`
--
ALTER TABLE `barang`
  MODIFY `br_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_usr` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
