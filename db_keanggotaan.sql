-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 19 Sep 2020 pada 11.57
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
-- Database: `db_keanggotaan`
--

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
-- Struktur dari tabel `r_calon`
--

CREATE TABLE `r_calon` (
  `rcalon_id` bigint(20) NOT NULL,
  `rstatkawin_kode` char(2) NOT NULL,
  `ruserakun_nama` varchar(15) NOT NULL,
  `rjk_kode` char(1) NOT NULL,
  `rkerja_id` int(11) NOT NULL,
  `rgoldarah_id` int(11) NOT NULL,
  `rkota_id` int(11) NOT NULL,
  `rwn_kode` char(3) NOT NULL,
  `ragama_kode` char(1) NOT NULL,
  `rcalon_nama` varchar(50) NOT NULL,
  `rcalon_panggilan` varchar(30) NOT NULL,
  `rcalon_tempatlahir` varchar(30) NOT NULL,
  `rcalon_tgllahir` date NOT NULL,
  `rcalon_alamat` varchar(100) NOT NULL,
  `rcalon_rt` varchar(3) NOT NULL,
  `rcalon_rw` varchar(3) NOT NULL,
  `rcalon_kel` varchar(50) NOT NULL,
  `rcalon_kec` varchar(50) NOT NULL,
  `rcalon_nohape` varchar(30) NOT NULL,
  `rcalon_email` varchar(50) NOT NULL,
  `rcalon_tglexpired` date NOT NULL,
  `rcalon_tglentri` date NOT NULL,
  `rcalon_tglverval` date NOT NULL,
  `rcalon_tglupdate` date NOT NULL
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
-- Struktur dari tabel `r_image`
--

CREATE TABLE `r_image` (
  `rimage_id` bigint(20) NOT NULL,
  `rtfile_id` bigint(20) NOT NULL,
  `rimage_caption` text NOT NULL,
  `rimage_desk` text NOT NULL,
  `rimage_tgldibuat` date NOT NULL,
  `rimage_tglupload` datetime NOT NULL,
  `rimage_nmfile` text NOT NULL,
  `rimage_folder` varchar(100) NOT NULL
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
-- Struktur dari tabel `r_personal`
--

CREATE TABLE `r_personal` (
  `rpersonal_id` bigint(20) NOT NULL,
  `rgoldarah_id` int(11) NOT NULL,
  `rjk_kode` char(1) NOT NULL,
  `rstatkawin_kode` char(2) NOT NULL,
  `rkerja_id` int(11) NOT NULL,
  `rwn_kode` char(3) NOT NULL,
  `rkota_id` int(11) NOT NULL,
  `ragama_kode` char(1) NOT NULL,
  `rpersonal_nama` varchar(50) NOT NULL,
  `rpersonal_panggilan` varchar(30) NOT NULL,
  `rpersonal_tempatlahir` varchar(30) NOT NULL,
  `rpersonal_tgllahir` date NOT NULL,
  `rpersonal_alamat` varchar(100) NOT NULL,
  `rpersonal_rt` varchar(3) NOT NULL,
  `rpersonal_rw` varchar(3) NOT NULL,
  `rpersonal_kel` varchar(50) NOT NULL,
  `rpersonal_kec` varchar(50) NOT NULL,
  `rpersonal_nohape` varchar(30) NOT NULL,
  `rpersonal_email` varchar(50) NOT NULL,
  `rpersonal_tglexpired` date NOT NULL,
  `rpersonal_tglverval` date NOT NULL,
  `rpersonal_tglentri` date NOT NULL,
  `rpersonal_tglupdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `r_role`
--

CREATE TABLE `r_role` (
  `rrole_kode` char(1) NOT NULL,
  `rrole_nama` varchar(50) NOT NULL,
  `rrole_desk` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `r_statakun`
--

CREATE TABLE `r_statakun` (
  `rstatakun_kode` char(1) NOT NULL,
  `rstatakun_nama` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `r_statimage`
--

CREATE TABLE `r_statimage` (
  `rstatimage_kode` char(2) NOT NULL,
  `rstatimage_desk` varchar(35) NOT NULL
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
-- Struktur dari tabel `r_tfile`
--

CREATE TABLE `r_tfile` (
  `rtfile_id` bigint(20) NOT NULL,
  `rtfile_ext` varchar(4) NOT NULL,
  `rtfile_desk` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `r_userakun`
--

CREATE TABLE `r_userakun` (
  `ruserakun_nama` varchar(15) NOT NULL,
  `rstatakun_kode` char(1) NOT NULL,
  `rpersonal_id` bigint(20) NOT NULL,
  `rrole_kode` char(1) NOT NULL,
  `ruserakun_passw` text NOT NULL,
  `ruserakun_tglcreate` date NOT NULL,
  `ruserakun_tglver` datetime NOT NULL,
  `ruserakun_tglexpired` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `r_wn`
--

CREATE TABLE `r_wn` (
  `rwn_kode` char(3) NOT NULL,
  `rwn_nama` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_calonimage`
--

CREATE TABLE `t_calonimage` (
  `rimage_id` bigint(20) NOT NULL,
  `rcalon_ide` bigint(20) NOT NULL,
  `tcalonimage_tglmap` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_persimage`
--

CREATE TABLE `t_persimage` (
  `rimage_id` bigint(20) NOT NULL,
  `rpersonal_id` bigint(20) NOT NULL,
  `rstatimage_kode` char(2) NOT NULL,
  `tpersimage_tglmap` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `r_agama`
--
ALTER TABLE `r_agama`
  ADD PRIMARY KEY (`ragama_kode`);

--
-- Indeks untuk tabel `r_calon`
--
ALTER TABLE `r_calon`
  ADD PRIMARY KEY (`rcalon_id`),
  ADD KEY `rstatkawin_kode` (`rstatkawin_kode`),
  ADD KEY `ruserakun_nama` (`ruserakun_nama`),
  ADD KEY `rjk_kode` (`rjk_kode`),
  ADD KEY `rkerja_id` (`rkerja_id`),
  ADD KEY `rgoldarah_id` (`rgoldarah_id`),
  ADD KEY `rkota_id` (`rkota_id`),
  ADD KEY `rwn_kode` (`rwn_kode`),
  ADD KEY `ragama_kode` (`ragama_kode`);

--
-- Indeks untuk tabel `r_goldarah`
--
ALTER TABLE `r_goldarah`
  ADD PRIMARY KEY (`rgoldarah_id`);

--
-- Indeks untuk tabel `r_image`
--
ALTER TABLE `r_image`
  ADD PRIMARY KEY (`rimage_id`),
  ADD KEY `rtfile_id` (`rtfile_id`);

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
-- Indeks untuk tabel `r_personal`
--
ALTER TABLE `r_personal`
  ADD PRIMARY KEY (`rpersonal_id`),
  ADD KEY `goldarah_id` (`rgoldarah_id`),
  ADD KEY `jk_kode` (`rjk_kode`),
  ADD KEY `kota_id` (`rkota_id`),
  ADD KEY `stkawin_kode` (`rstatkawin_kode`),
  ADD KEY `agama_kode` (`ragama_kode`),
  ADD KEY `wn_kode` (`rwn_kode`),
  ADD KEY `kerja_id` (`rkerja_id`),
  ADD KEY `personal_id` (`rpersonal_id`);

--
-- Indeks untuk tabel `r_role`
--
ALTER TABLE `r_role`
  ADD PRIMARY KEY (`rrole_kode`);

--
-- Indeks untuk tabel `r_statakun`
--
ALTER TABLE `r_statakun`
  ADD PRIMARY KEY (`rstatakun_kode`);

--
-- Indeks untuk tabel `r_statimage`
--
ALTER TABLE `r_statimage`
  ADD PRIMARY KEY (`rstatimage_kode`);

--
-- Indeks untuk tabel `r_statkawin`
--
ALTER TABLE `r_statkawin`
  ADD PRIMARY KEY (`rstatkawin_kode`);

--
-- Indeks untuk tabel `r_tfile`
--
ALTER TABLE `r_tfile`
  ADD PRIMARY KEY (`rtfile_id`);

--
-- Indeks untuk tabel `r_userakun`
--
ALTER TABLE `r_userakun`
  ADD PRIMARY KEY (`ruserakun_nama`),
  ADD KEY `rstatakun_kode` (`rstatakun_kode`),
  ADD KEY `rpersonal_id` (`rpersonal_id`),
  ADD KEY `rrole_kode` (`rrole_kode`);

--
-- Indeks untuk tabel `r_wn`
--
ALTER TABLE `r_wn`
  ADD PRIMARY KEY (`rwn_kode`);

--
-- Indeks untuk tabel `t_calonimage`
--
ALTER TABLE `t_calonimage`
  ADD PRIMARY KEY (`rimage_id`,`rcalon_ide`),
  ADD KEY `rimage_id` (`rimage_id`),
  ADD KEY `rcalon_ide` (`rcalon_ide`);

--
-- Indeks untuk tabel `t_persimage`
--
ALTER TABLE `t_persimage`
  ADD PRIMARY KEY (`rimage_id`),
  ADD KEY `rimage_id` (`rimage_id`),
  ADD KEY `rpersonal_id` (`rpersonal_id`),
  ADD KEY `rstatimage_kode` (`rstatimage_kode`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `r_kerja`
--
ALTER TABLE `r_kerja`
  MODIFY `rkerja_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `r_personal`
--
ALTER TABLE `r_personal`
  MODIFY `rpersonal_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `r_agama`
--
ALTER TABLE `r_agama`
  ADD CONSTRAINT `fk_ragama_calon` FOREIGN KEY (`ragama_kode`) REFERENCES `r_personal` (`ragama_kode`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_ragama_personal` FOREIGN KEY (`ragama_kode`) REFERENCES `r_personal` (`ragama_kode`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `r_goldarah`
--
ALTER TABLE `r_goldarah`
  ADD CONSTRAINT `fk_rgoldarah_calon` FOREIGN KEY (`rgoldarah_id`) REFERENCES `r_calon` (`rgoldarah_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_rgoldarah_personal` FOREIGN KEY (`rgoldarah_id`) REFERENCES `r_personal` (`rgoldarah_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `r_jk`
--
ALTER TABLE `r_jk`
  ADD CONSTRAINT `fk_rjk_personal` FOREIGN KEY (`rjk_kode`) REFERENCES `r_personal` (`rjk_kode`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fl_rjk_calon` FOREIGN KEY (`rjk_kode`) REFERENCES `r_calon` (`rjk_kode`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `r_kerja`
--
ALTER TABLE `r_kerja`
  ADD CONSTRAINT `fk_rkerja_calon` FOREIGN KEY (`rkerja_id`) REFERENCES `r_calon` (`rkerja_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_rkerja_personal` FOREIGN KEY (`rkerja_id`) REFERENCES `r_personal` (`rkerja_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `r_kota`
--
ALTER TABLE `r_kota`
  ADD CONSTRAINT `fk_rkota_calon` FOREIGN KEY (`rkota_id`) REFERENCES `r_calon` (`rkota_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_rkota_personal` FOREIGN KEY (`rkota_id`) REFERENCES `r_personal` (`rkota_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `r_personal`
--
ALTER TABLE `r_personal`
  ADD CONSTRAINT `r_personal_ibfk_1` FOREIGN KEY (`rgoldarah_id`) REFERENCES `r_goldarah` (`rgoldarah_id`);

--
-- Ketidakleluasaan untuk tabel `r_role`
--
ALTER TABLE `r_role`
  ADD CONSTRAINT `fk_rrole` FOREIGN KEY (`rrole_kode`) REFERENCES `r_userakun` (`rrole_kode`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `r_statakun`
--
ALTER TABLE `r_statakun`
  ADD CONSTRAINT `fk_rstatakun` FOREIGN KEY (`rstatakun_kode`) REFERENCES `r_userakun` (`rstatakun_kode`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `r_statkawin`
--
ALTER TABLE `r_statkawin`
  ADD CONSTRAINT `fk_rstatkawin_calon` FOREIGN KEY (`rstatkawin_kode`) REFERENCES `r_calon` (`rstatkawin_kode`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_rstatkawin_personal` FOREIGN KEY (`rstatkawin_kode`) REFERENCES `r_personal` (`rstatkawin_kode`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `r_tfile`
--
ALTER TABLE `r_tfile`
  ADD CONSTRAINT `fk_rtfileid_rimage` FOREIGN KEY (`rtfile_id`) REFERENCES `r_image` (`rtfile_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `r_userakun`
--
ALTER TABLE `r_userakun`
  ADD CONSTRAINT `fk_ruserakun_calon` FOREIGN KEY (`ruserakun_nama`) REFERENCES `r_calon` (`ruserakun_nama`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_ruserakun_personal` FOREIGN KEY (`rpersonal_id`) REFERENCES `r_personal` (`rpersonal_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `r_wn`
--
ALTER TABLE `r_wn`
  ADD CONSTRAINT `fk_rwn_calon` FOREIGN KEY (`rwn_kode`) REFERENCES `r_calon` (`rwn_kode`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_rwn_personal` FOREIGN KEY (`rwn_kode`) REFERENCES `r_personal` (`rwn_kode`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `t_calonimage`
--
ALTER TABLE `t_calonimage`
  ADD CONSTRAINT `fk_image_id_rimage` FOREIGN KEY (`rimage_id`) REFERENCES `r_image` (`rimage_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_rcalon_id_rcalon` FOREIGN KEY (`rcalon_ide`) REFERENCES `r_calon` (`rcalon_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `t_persimage`
--
ALTER TABLE `t_persimage`
  ADD CONSTRAINT `fk_rimageid_rimage` FOREIGN KEY (`rimage_id`) REFERENCES `r_image` (`rimage_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_rpersonalid_rpersonal` FOREIGN KEY (`rpersonal_id`) REFERENCES `r_personal` (`rpersonal_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_rstatimagekode_rstatimage` FOREIGN KEY (`rstatimage_kode`) REFERENCES `r_statimage` (`rstatimage_kode`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
