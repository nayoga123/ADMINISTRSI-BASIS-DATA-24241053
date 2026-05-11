-- Nama : Nayoga Fatih Arfiansyah
-- Nim : 24241053
-- Kelas : B 
-- Modul : 2   

-- gunakan databae 
USE db_mart; 

-- cek deskripsi tabel
describe pelanggan; 

-- statement SELECT 
-- mengambil satu kolom dalam tabel 
SELECT nama_produk FROM produk;

-- mengambil data lebih dari satu kolom 
-- ambil data nama produk dan harga 
SELECT nama_produk, harga FROM produk;

-- mengambil semua kolom pada tabel 
SELECT * FROM produk; 

-- PREFIX dan ALIAS 
-- prefix, bagian dari objek database yang hirarki lbh tinggi 
-- nama_produk = column,
-- produk = tabel,
-- db_mart = datebase
-- kolom ke tabel
SELECT produk.nama_produk FROM produk;  
-- kolom ke tabel ke database 
SELECT db_mart.produk.nama_produk FROM produk;

-- Alias, nama sementara dari objek database 
-- menggunakan kata kunci 'as'
-- Alias pada objek kolom (column)  
SELECT nama_produk as np FROM produk; 

-- alias pada objek tabel 
SELECT nama_produk FROM produk as pr;

-- pengguna prefix dan alias dalam satu query
SELECT pr.nama_produk FROM produk as pr;

-- latihan mandiri 

-- case 1
SELECT pl.nama_pelanggan, pl.alamat FROM pelanggan AS pl;

-- case 2
SELECT pr.nama_produk, pr.harga FROM produk AS pr;
