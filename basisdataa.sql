-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Sep 2020 pada 16.05
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `basisdata`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal`
--

CREATE TABLE `personal` (
  `personal_id` bigint(20) NOT NULL,
  `goldarah_id` int(11) NOT NULL,
  `jk_kode` char(1) NOT NULL,
  `stkawin_kode` char(2) NOT NULL,
  `kerja_id` int(11) NOT NULL,
  `wn_kode` char(3) NOT NULL,
  `kota_id` int(11) NOT NULL,
  `agama_kode` char(1) NOT NULL,
  `personal_nama` varchar(50) NOT NULL,
  `personal_panggilan` varchar(30) NOT NULL,
  `personal_tempatlahir` varchar(30) NOT NULL,
  `personal_tgllahir` date NOT NULL,
  `personal_alamat` varchar(100) NOT NULL,
  `personal_rt` varchar(3) NOT NULL,
  `personal_rw` varchar(3) NOT NULL,
  `personal_kel` varchar(50) NOT NULL,
  `personal_kec` varchar(50) NOT NULL,
  `personal_nohape` varchar(30) NOT NULL,
  `personal_email` varchar(50) NOT NULL,
  `personal_tglexpired` date NOT NULL,
  `personal_tglverval` date NOT NULL,
  `personal_tglentri` date NOT NULL,
  `personal_tglupdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `r_agama`
--

CREATE TABLE `r_agama` (
  `ragama_kode` char(1) NOT NULL,
  `ragama_nama` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `r_goldarah`
--

CREATE TABLE `r_goldarah` (
  `rgoldarah_id` int(11) NOT NULL,
  `rgoldarah_kode` char(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `r_jk`
--

CREATE TABLE `r_jk` (
  `rjk_kode` char(1) NOT NULL,
  `rjk_nama` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `r_kerja`
--

CREATE TABLE `r_kerja` (
  `rkerja_id` int(11) NOT NULL,
  `rkerja_nama` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `r_kota`
--

CREATE TABLE `r_kota` (
  `rkota_id` int(11) NOT NULL,
  `rkota_kode` char(3) NOT NULL,
  `rkota_nama` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `r_statkawin`
--

CREATE TABLE `r_statkawin` (
  `rstatkawin_kode` char(2) NOT NULL,
  `rstatkawin_nama` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `r_wn`
--

CREATE TABLE `r_wn` (
  `rwn_kode` char(3) NOT NULL,
  `rwn_nama` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `personal`
--
ALTER TABLE `personal`
  ADD PRIMARY KEY (`personal_id`),
  ADD KEY `goldarah_id` (`goldarah_id`),
  ADD KEY `jk_kode` (`jk_kode`),
  ADD KEY `kota_id` (`kota_id`),
  ADD KEY `stkawin_kode` (`stkawin_kode`),
  ADD KEY `agama_kode` (`agama_kode`),
  ADD KEY `wn_kode` (`wn_kode`),
  ADD KEY `kerja_id` (`kerja_id`);

--
-- Indeks untuk tabel `r_agama`
--
ALTER TABLE `r_agama`
  ADD PRIMARY KEY (`ragama_kode`);

--
-- Indeks untuk tabel `r_goldarah`
--
ALTER TABLE `r_goldarah`
  ADD PRIMARY KEY (`rgoldarah_id`);

--
-- Indeks untuk tabel `r_jk`
--
ALTER TABLE `r_jk`
  ADD PRIMARY KEY (`rjk_kode`);

--
-- Indeks untuk tabel `r_kerja`
--
ALTER TABLE `r_kerja`
  ADD PRIMARY KEY (`rkerja_id`);

--
-- Indeks untuk tabel `r_kota`
--
ALTER TABLE `r_kota`
  ADD PRIMARY KEY (`rkota_id`);

--
-- Indeks untuk tabel `r_statkawin`
--
ALTER TABLE `r_statkawin`
  ADD PRIMARY KEY (`rstatkawin_kode`);

--
-- Indeks untuk tabel `r_wn`
--
ALTER TABLE `r_wn`
  ADD PRIMARY KEY (`rwn_kode`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `personal`
--
ALTER TABLE `personal`
  MODIFY `personal_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `r_kerja`
--
ALTER TABLE `r_kerja`
  MODIFY `rkerja_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `personal`
--
ALTER TABLE `personal`
  ADD CONSTRAINT `personal_ibfk_1` FOREIGN KEY (`goldarah_id`) REFERENCES `r_goldarah` (`rgoldarah_id`);

--
-- Ketidakleluasaan untuk tabel `r_agama`
--
ALTER TABLE `r_agama`
  ADD CONSTRAINT `fk_ragama` FOREIGN KEY (`ragama_kode`) REFERENCES `personal` (`agama_kode`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `r_goldarah`
--
ALTER TABLE `r_goldarah`
  ADD CONSTRAINT `fk_rgoldarah` FOREIGN KEY (`rgoldarah_id`) REFERENCES `personal` (`goldarah_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `r_jk`
--
ALTER TABLE `r_jk`
  ADD CONSTRAINT `fk_jk` FOREIGN KEY (`rjk_kode`) REFERENCES `personal` (`jk_kode`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `r_kerja`
--
ALTER TABLE `r_kerja`
  ADD CONSTRAINT `fk_rkerja` FOREIGN KEY (`rkerja_id`) REFERENCES `personal` (`kerja_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `r_kota`
--
ALTER TABLE `r_kota`
  ADD CONSTRAINT `fk_rkota` FOREIGN KEY (`rkota_id`) REFERENCES `personal` (`kota_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `r_statkawin`
--
ALTER TABLE `r_statkawin`
  ADD CONSTRAINT `fk_rstatkawin` FOREIGN KEY (`rstatkawin_kode`) REFERENCES `personal` (`stkawin_kode`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `r_wn`
--
ALTER TABLE `r_wn`
  ADD CONSTRAINT `fk_rwn` FOREIGN KEY (`rwn_kode`) REFERENCES `personal` (`wn_kode`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
