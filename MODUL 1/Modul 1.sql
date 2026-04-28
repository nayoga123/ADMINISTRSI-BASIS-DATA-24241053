-- Nama : Nayoga FATIH
-- NIM : 24241053
-- Kelas : B

CREATE DATABASE db_mart;
USE db_mart;

CREATE TABLE pelanggan (
	kode_pelanggan VARCHAR(30) PRIMARY KEY,
    no_urut INT,
    nama_pelanggan VARCHAR(30),
    alamat varchar(100)
    );
    
INSERT INTO pelanggan (kode_pelanggan, no_urut, nama_pelanggan, alamat) VALUES
('cust00', 0, 'Pelanggan Non Member', NULL),
('cust01', 1, 'Eva Novianti, S.H.', 'Vila Sempilan, No. 67 - Kota B'),
('cust02', 2, 'Heidi Goh', 'Vila Sempilan, No. 11 - Kota B'),
('cust03', 3, 'Unang Handoko', 'Vila Sempilan, No. 1 - Kota B'),
('cust04', 4, 'Jokolono Sukarman', 'Vila Permata Intan Berkilau, Blok C5-7'),
('cust05', 5, 'Tommy Sinaga', 'Vila Permata Intan Berkilau, Blok A1/2'),
('cust06', 6, 'Irwan Setianto', 'Vila Gunung Seribu, Blok O1 - No. 1 - Kota C'),
('cust07', 7, 'Agus Cahyono', 'Vila Gunung Seribu, Blok F4 - No. 8'),
('cust08', 8, 'Maria Sirait', 'Vila Bukit Sagitarius, Gang. Sawit No. 3'),
('cust09', 9, 'Ir. Ita Nugraha', 'Vila Bukit Sagitarius, Gang Kelapa No. 6'),
('cust10', 10, 'Djoko Wardoyo, Drs.', 'Vila Bukit Sagitarius, Blok A1 No. 1');

CREATE TABLE produk (
	kode_produk VARCHAR(30) PRIMARY KEY,
    no_urut INT,
    kategori_produk VARCHAR(100),
    nama_produk VARCHAR(100),
    harga INT
    );
    
INSERT INTO produk (kode_produk, no_urut, kategori_produk, nama_produk, harga) VALUES
('prod-01',1,'Alat Tulis Kantor','Kotak Pensil DQLab',62500),
('prod-02',2,'Aksesoris Komputer','Flashdisk DQLab 64 GB',55000),
('prod-03',3,'Gift & Voucher','Gift Voucher DQLab 100rb',100000),
('prod-04',4,'Aksesoris Komputer','Flashdisk DQLab 32 GB',40000),
('prod-05',5,'Gift & Voucher','Gift Voucher DQLab 250rb',250000),
('prod-06',6,'Alat Tulis Kantor','Pulpen Multifunction + Laser DQLab',92500),
('prod-07',7,'Gift & Voucher','Tas Travel Organizer DigiSkills.id',48000),
('prod-08',8,'Gift & Voucher','Gantungan Kunci DQLab',15800),
('prod-09',9,'Alat Tulis Kantor','Buku Planner Agenda DQLab',92000),
('prod-10',10,'Alat Tulis Kantor','Sticky Notes DQLab 500 sheets',55000);


CREATE TABLE penjualan (
    kode_urut_transaksi INT PRIMARY KEY,
    kode_transaksi VARCHAR(30),
    kode_pelanggan VARCHAR(100),
    tgl_transaksi DATE,
    no_urut INT,
    kode_produk VARCHAR(30),
    nama_produk VARCHAR(200),
    qty INT,
    harga INT,
    diskon_persen DECIMAL(12,5)
);

INSERT INTO penjualan 
(kode_urut_transaksi, kode_transaksi, kode_pelanggan, tgl_transaksi, no_urut, kode_produk, nama_produk, qty, harga, diskon_persen)
VALUES
(1,'tr-001','dqlabcust07','2020-05-01',1,'prod-01','Kotak Pensil DQLab',5,62500,0),
(2,'tr-001','dqlabcust07','2020-05-01',2,'prod-03','Flash disk DQLab 32 GB',1,100000,25),
(3,'tr-001','dqlabcust07','2020-05-01',3,'prod-09','Buku Planner Agenda DQSQuad',3,92000,0),
(4,'tr-001','dqlabcust07','2020-05-01',4,'prod-04','Flashdisk DQLab 32 GB',3,40000,0),
(5,'tr-002','dqlabcust00','2020-05-01',1,'prod-03','Gift Voucher DQLab 100rb',2,100000,0),
(6,'tr-002','dqlabcust00','2020-05-01',2,'prod-10','Sticky Notes DQLab 500 sheets',4,55000,0),
(7,'tr-002','dqlabcust00','2020-05-01',3,'prod-07','Tas Travel Organizer DQLab',1,48000,0),
(8,'tr-003','dqlabcust03','2020-05-03',1,'prod-02','Flashdisk DQLab 64 GB',2,55000,12.5),
(9,'tr-004','dqlabcust03','2020-05-03',1,'prod-10','Sticky Notes DQLab 500 sheets',5,55000,0),
(10,'tr-004','dqlabcust03','2020-05-03',2,'prod-04','Flashdisk DQLab 32 GB',4,40000,0),
(11,'tr-005','dqlabcust00','2020-06-12',1,'prod-09','Buku Planner Agenda DQSQuad',3,92000,0),
(12,'tr-005','dqlabcust00','2020-06-12',2,'prod-01','Kotak Pensil DQLab',1,62500,5),
(13,'tr-005','dqlabcust00','2020-06-12',3,'prod-04','Flashdisk DQLab 32 GB',2,40000,0),
(14,'tr-006','dqlabcust02','2020-06-19',1,'prod-05','Gift Voucher DQLab 250rb',4,250000,0),
(15,'tr-006','dqlabcust02','2020-06-19',2,'prod-08','Gantungan Kunci DQLab',2,15800,0);

    

    

    
    