-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 30 Jul 2021 pada 11.39
-- Versi server: 10.4.17-MariaDB
-- Versi PHP: 7.3.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sp_kulitwajah`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `aturan`
--

CREATE TABLE `aturan` (
  `id_aturan` int(11) NOT NULL,
  `id_penyakit` int(11) NOT NULL,
  `id_gejala` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `aturan`
--

INSERT INTO `aturan` (`id_aturan`, `id_penyakit`, `id_gejala`) VALUES
(40, 3, 4),
(41, 3, 5),
(42, 3, 19),
(43, 3, 20),
(44, 3, 21),
(45, 4, 4),
(46, 4, 6),
(47, 4, 22),
(48, 4, 23),
(49, 4, 24),
(50, 4, 25),
(51, 5, 4),
(52, 5, 6),
(53, 5, 27),
(54, 5, 28),
(55, 6, 4),
(56, 6, 7),
(57, 6, 12),
(58, 6, 17),
(59, 6, 18),
(60, 7, 4),
(61, 7, 7),
(62, 7, 17),
(63, 7, 18),
(64, 7, 29),
(65, 7, 30),
(66, 8, 4),
(67, 8, 17),
(68, 8, 31),
(69, 8, 33),
(70, 8, 34),
(71, 8, 35),
(72, 9, 4),
(73, 9, 18),
(74, 9, 35),
(75, 9, 37),
(76, 9, 38),
(77, 10, 4),
(78, 10, 6),
(79, 10, 39),
(80, 10, 44),
(81, 11, 4),
(82, 11, 6),
(83, 11, 40),
(84, 11, 41),
(85, 11, 42),
(86, 11, 45),
(87, 12, 4),
(88, 12, 6),
(89, 12, 39),
(90, 12, 40),
(91, 12, 43),
(92, 12, 44),
(93, 12, 45);

-- --------------------------------------------------------

--
-- Struktur dari tabel `gejala`
--

CREATE TABLE `gejala` (
  `id_gejala` int(11) NOT NULL,
  `kode_gejala` varchar(5) NOT NULL,
  `nama_gejala` text NOT NULL,
  `nilai_cf` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `gejala`
--

INSERT INTO `gejala` (`id_gejala`, `kode_gejala`, `nama_gejala`, `nilai_cf`) VALUES
(4, '01', 'Muncul bintik-bintik atau bercak', 0.8),
(5, '02', 'Terasa nyeri', 0.6),
(6, '03', 'Bintik atau bercak berwarna gelap', 0.8),
(7, '04', 'Bintik sewarna dengan kulit', 0.6),
(12, '05', 'Bentuknya semakin membesar saat berkeringat', 0.8),
(17, '06', 'Muncul dikedua sisi wajah', 0.8),
(18, '07', 'Muncul dibagian wajah sekitar mata', 0.8),
(19, '08', 'Muncul pori pori terbuka seperti komedo putih', 0.8),
(20, '09', 'Muncul pori-pori tertutup seperti komedo hitam', 0.8),
(21, '10', 'Muncul papul (bintik merah kecil)', 0.8),
(22, '11', 'mengalami peradangan pada area tersebut', 0.8),
(23, '12', 'mengalami hiperpigmentasi atau perbedaan warna kulit dari sebelumnya', 0.6),
(24, '13', 'sebelumnya pernah memakai obat-obatan kontrasepsi', 0.8),
(25, '14', 'bintik ataupun bercak berada di pipi kanan dan kiri', 0.8),
(26, '15', 'Muncul peradangan kering pada area tersebut', 0.6),
(27, '16', 'Bentuk bintik maupun bercak semakin membesar', 0.6),
(28, '17', 'berbentuk bulat dan tegas', 0.8),
(29, '18', 'muncul benjolan berbentuk bintik putih', 0.6),
(30, '19', 'mudah iritasi saat bergesekan', 0.8),
(31, '20', 'bintik atau bercak berwarna kemerahan', 0.6),
(32, '21', 'pelebaran pembuluh darah dibagian wajah', 0.8),
(33, '22', 'kulit wajah terasa kering dan kasar', 0.6),
(34, '23', 'kulit wajah berminyak dan sensitif', 0.6),
(35, '24', 'hangat ketika diraba', 0.8),
(36, '25', 'bintik atau bercak berwarna kekuningan', 0.6),
(37, '26', 'mempunyai riwayat kolesterol tinggi', 0.8),
(38, '27', 'terdapat plak warna kuning dibawah alis mata', 0.8),
(39, '28', 'bintik atau bercak berwarna coklat', 0.6),
(40, '29', 'bintik atau bercak berwarna coklat kehitaman', 0.8),
(41, '30', 'mudah berdarah', 0.6),
(42, '31', 'lesi luka tidak kunjung sembuh', 0.8),
(43, '32', 'membesar dan meluas seiring waktu', 0.6),
(44, '33', 'batas pada bagian tersebut tidak tegas dan permukaan tidak rata', 0.8),
(45, '34', 'Bentuk tepi tidak teratur', 0.8);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengguna`
--

CREATE TABLE `pengguna` (
  `id_pengguna` int(11) NOT NULL,
  `nama_lengkap` varchar(30) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `level` enum('Admin','User') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pengguna`
--

INSERT INTO `pengguna` (`id_pengguna`, `nama_lengkap`, `username`, `password`, `level`) VALUES
(1, 'Administrator', 'admin', 'admin', 'Admin'),
(5, 'zaky', 'zaky', 'zaky', 'User'),
(6, 'nando', 'nando', 'nando', 'User'),
(7, 'azmi', 'azmi', 'biji', 'User'),
(9, 'meisya', 'ica', 'ica', 'User'),
(10, 'naufal', 'naufal', 'naufal', 'User'),
(11, 'mubarak', 'mubarak', 'mubarak', 'User'),
(12, 'ujang', 'ujang', 'ujang', 'User'),
(13, 'wira', 'wira', '12', 'User'),
(14, 'zaki', 'zaki', 'zaki', 'User');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penyakit`
--

CREATE TABLE `penyakit` (
  `id_penyakit` int(11) NOT NULL,
  `kode_penyakit` varchar(5) NOT NULL,
  `nama_penyakit` varchar(50) NOT NULL,
  `deskripsi` text NOT NULL,
  `solusi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `penyakit`
--

INSERT INTO `penyakit` (`id_penyakit`, `kode_penyakit`, `nama_penyakit`, `deskripsi`, `solusi`) VALUES
(3, '01', 'Acne Vulgaris', 'adalah salah satu masalah kulit, yaitu ketika kondisi pori-pori kulit tersumbat minyak dan sel kulit mati', 'jangan menyingkirkan jerawat dengan memencetnya\n\nmenjaga area disekitarnya bebas dari bakteri dan sel kulit mati\n\nkurangi aktivitas begadang juga mengurangi konsumsi makanan junk food'),
(4, '02', 'Melasma', 'Jenis penyakit kulit yang ditandai dengan munculnya bercak-bercak hiperpigmentasi pada wajah.Terkadang,bercak ini juga terlihat pada daerah yang sering terpapar sinar matahari', 'Mengurangi atau berhenti pemakaian alat kontrasepsi serta pil KB. Namun jika bercak ini dialami selama bertahun-tahun harus segera melakukan pengobatan dan tindakan medis'),
(5, '03', 'Nevus Melanositik', 'merupakan bercak berwarna yang terdapat diatas permukaan kulit.', 'Jika flek ingin diangkat maka perlu dilakukan terapi eksisi sederhana nevus'),
(6, 'G04', 'Syringoma', 'Tumor jinak berupa benjolan-benjolan kecil padat pada permukaan kulit dibagian wajah sekitar mata', 'pengobatan dengan asam trikloroasetat, operasi laser dengan gelombang cahaya merah, cyrotheraphy, demabrasi dan bedah eksisi'),
(7, 'P05', 'Milia', 'penyakit kulit berupa benjolan kecil berwarna putih yang umumnya tumbuh dibagain wajah,seperti dihidung,pipi dan di bagian wajah sekitar bawah mata', 'rutin membersihkan wajah, mengurangi pemakaian make up berbahan berat, konsumsi secara teratur buah-buahan dan sayur-sayuran'),
(8, 'P06', 'Rosacea', 'gangguan kulit wajah yang ditandai dengan kulit kemerahan dan bintik menyerupai jerawat', 'membersihkan kulit wajah dengan hati-hati secara rutin, menggunakan tabir surya sebelum beraktivitas keluar rumah, mengkompres bagian penyakit tersebut dengan air dingin serta konsumsi makan makanan sehat seperti buah-buahan dan sayur-sayuran'),
(9, 'P07', 'Xanthelasma', 'suatu penyakit yang ditandai dengan adanya plak berwarna kekuningan, yang sering kali timbul di dekat sudut mata bagian tengah kelopak mata, plak tersebut terbentuk dari koleserol', 'melakukan tindakan medis berupa cyrosurgery, eksisi bedah , kauterisasi kimia, dan ablasi laser'),
(10, 'P08', 'Keratosis Seboroik', 'Pertumbuhan kulit non kanker yang biasanya muncul pada orang tua.Biasanya jaringan kulit yang tumbuh berwarna coklat hingga kehitaman', ' melakukan tindakan medis  diantaranya cryosurgery, bedah listrik, kuretase dan ablasi'),
(11, '9', 'Basalioma', 'atau karsinoma sel basal adalah salah satu jenis kanker kulit yag ditandai dengan adanya benjolan yang mudah berdarah dan dapat membesar  seiring waktu,', 'melakukan tindaka medis berupa elektrodikasi dan kuretase, pemotongan dengan pisau bedah, krioterapi, dan operasi mohs'),
(12, '10', 'melanoma', 'adalah jenis kanker kulit paling serius. Kondisi ini muncul karena danya gangguan sel yang memproduksi melanin (Pigmen pemberi warna kulit atau melanosit)', 'melakukan tindakan medis berupa operasi pengangkatan sel-sel melanoma. Tingkatan operasi juga tergantung dengan tingkat stadiumnya');

-- --------------------------------------------------------

--
-- Struktur dari tabel `profil`
--

CREATE TABLE `profil` (
  `Id` int(11) NOT NULL,
  `name` text DEFAULT NULL,
  `picture` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `riwayat`
--

CREATE TABLE `riwayat` (
  `id_riwayat` int(11) NOT NULL,
  `id_pengguna` int(11) DEFAULT NULL,
  `tanggal` date NOT NULL,
  `id_penyakit` int(11) DEFAULT NULL,
  `metode` enum('Forward Chaining','Certainty Factor') NOT NULL,
  `nilai` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `riwayat`
--

INSERT INTO `riwayat` (`id_riwayat`, `id_pengguna`, `tanggal`, `id_penyakit`, `metode`, `nilai`) VALUES
(17, 5, '2021-03-17', 3, 'Certainty Factor', 100),
(18, 5, '2021-03-22', 3, 'Certainty Factor', 86.94),
(19, 5, '2021-04-05', 3, 'Forward Chaining', NULL),
(20, 5, '2021-04-05', 3, 'Certainty Factor', 88.48),
(21, 5, '2021-04-12', 3, 'Forward Chaining', NULL),
(22, 5, '2021-04-12', 3, 'Certainty Factor', 88.48),
(23, 5, '2021-05-10', 3, 'Certainty Factor', 88.48),
(25, 9, '2021-06-04', 3, 'Forward Chaining', NULL),
(44, 10, '2021-07-09', 3, 'Certainty Factor', 97.41),
(45, 10, '2021-07-10', 3, 'Certainty Factor', 93.38),
(46, 10, '2021-07-10', 4, 'Certainty Factor', 95.5),
(47, 10, '2021-07-10', 5, 'Certainty Factor', 95.69),
(48, 10, '2021-07-10', 6, 'Certainty Factor', 97.37),
(49, 10, '2021-07-10', 7, 'Certainty Factor', 98.63),
(50, 10, '2021-07-10', 8, 'Certainty Factor', 97.93),
(51, 10, '2021-07-10', 9, 'Certainty Factor', 96.56),
(52, 10, '2021-07-10', 10, 'Certainty Factor', 93.77),
(53, 10, '2021-07-10', 11, 'Certainty Factor', 99.19),
(54, 10, '2021-07-10', 12, 'Certainty Factor', 98.04),
(55, 10, '2021-07-10', 3, 'Certainty Factor', 96.56),
(56, 10, '2021-07-10', 5, 'Certainty Factor', 94.94),
(57, 10, '2021-07-12', 4, 'Certainty Factor', 99.13),
(58, 10, '2021-07-13', 3, 'Certainty Factor', 98.16),
(59, 10, '2021-07-13', 3, 'Certainty Factor', 98.16),
(60, 10, '2021-07-14', 3, 'Certainty Factor', 98.16),
(61, 10, '2021-07-14', 3, 'Forward Chaining', NULL),
(62, 10, '2021-07-27', 3, 'Certainty Factor', 97.59);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `aturan`
--
ALTER TABLE `aturan`
  ADD PRIMARY KEY (`id_aturan`) USING BTREE,
  ADD KEY `id_penyakit` (`id_penyakit`),
  ADD KEY `id_gejala` (`id_gejala`);

--
-- Indeks untuk tabel `gejala`
--
ALTER TABLE `gejala`
  ADD PRIMARY KEY (`id_gejala`);

--
-- Indeks untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id_pengguna`) USING BTREE;

--
-- Indeks untuk tabel `penyakit`
--
ALTER TABLE `penyakit`
  ADD PRIMARY KEY (`id_penyakit`);

--
-- Indeks untuk tabel `profil`
--
ALTER TABLE `profil`
  ADD PRIMARY KEY (`Id`);

--
-- Indeks untuk tabel `riwayat`
--
ALTER TABLE `riwayat`
  ADD PRIMARY KEY (`id_riwayat`),
  ADD KEY `id_penyakit` (`id_penyakit`),
  ADD KEY `id_pengguna` (`id_pengguna`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `aturan`
--
ALTER TABLE `aturan`
  MODIFY `id_aturan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT untuk tabel `gejala`
--
ALTER TABLE `gejala`
  MODIFY `id_gejala` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id_pengguna` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `penyakit`
--
ALTER TABLE `penyakit`
  MODIFY `id_penyakit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `profil`
--
ALTER TABLE `profil`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `riwayat`
--
ALTER TABLE `riwayat`
  MODIFY `id_riwayat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `aturan`
--
ALTER TABLE `aturan`
  ADD CONSTRAINT `aturan_ibfk_1` FOREIGN KEY (`id_penyakit`) REFERENCES `penyakit` (`id_penyakit`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `aturan_ibfk_2` FOREIGN KEY (`id_gejala`) REFERENCES `gejala` (`id_gejala`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `riwayat`
--
ALTER TABLE `riwayat`
  ADD CONSTRAINT `riwayat_ibfk_1` FOREIGN KEY (`id_penyakit`) REFERENCES `penyakit` (`id_penyakit`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `riwayat_ibfk_2` FOREIGN KEY (`id_pengguna`) REFERENCES `pengguna` (`id_pengguna`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
