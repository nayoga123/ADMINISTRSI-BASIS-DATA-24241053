CREATE TABLE `DOKTER` (
  `id_dokter` int PRIMARY KEY,
  `nama` varchar(255),
  `sp` varchar(255),
  `no_tlpn` varchar(255),
  `kode_poli` int
);

CREATE TABLE `Poliklinik` (
  `kode_poli` int PRIMARY KEY,
  `nama_poli` varchar(255)
);

CREATE TABLE `Pasien` (
  `NIK` int PRIMARY KEY,
  `nama` varchar(30),
  `alamat` varchar(50),
  `BOD` dateline
);

CREATE TABLE `DAFTAR` (
  `no_antrean` int PRIMARY KEY,
  `tgl_daftar` dateline,
  `NIK` int,
  `kode_poli` int
);

CREATE TABLE `REKAM_MEDIS` (
  `no_rm` int PRIMARY KEY,
  `NIK` int,
  `kode_obat` int
);

CREATE TABLE `OBAT` (
  `kode_obat` int PRIMARY KEY,
  `nama_obat` varchar(255),
  `harga_obat` int
);

ALTER TABLE `DOKTER` ADD FOREIGN KEY (`kode_poli`) REFERENCES `Poliklinik` (`kode_poli`);

ALTER TABLE `DAFTAR` ADD FOREIGN KEY (`kode_poli`) REFERENCES `Poliklinik` (`kode_poli`);

ALTER TABLE `DAFTAR` ADD FOREIGN KEY (`NIK`) REFERENCES `Pasien` (`NIK`);

ALTER TABLE `REKAM_MEDIS` ADD FOREIGN KEY (`kode_obat`) REFERENCES `OBAT` (`kode_obat`);

ALTER TABLE `REKAM_MEDIS` ADD FOREIGN KEY (`NIK`) REFERENCES `DAFTAR` (`NIK`);
