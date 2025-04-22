--  Nama   = Umay Nabila
--  NIM    = 23241056
--  kelas  = pti b
-- Modul   = 2 (SELECT)


-- membuat database
 CREATE DATABASE  pti_mart;
 
-- menggunakan database
USE pti_mart;
-- cek kolom dalam setiap tabel
DESCRIBE ms_pelanggan;
DESCRIBE ms_produk;
DESCRIBE tr_penjualan;

-- SELECT
-- menggunakan SELECT untuk 1 Tabel
-- mengambil kolom nama produk dari tabel produk
SELECT nama_produk FROM ms_produk;

-- ,engambil lebih dari satu kolom dari sebuah tabel
SELECT nama_produk,harga FROM ms_produk;

-- mengambil sebuah kolom dari sebuah tabel
SELECT * FROM ms_produk;

-- LATIHAN
-- menggambil kode produk dan nama produk dari tabel produk
SELECT kode_produk, nama_produk FROM ms_produk;

-- mengambil seluruh kolom dari tabel penjualan
SELECT *FROM tr_penjualan;

-- PREFIX dan ALIAS
-- PREFIX, bagian objek databse yang hirearki nya lebih tinggi
-- menggunakan PREFIX nama tabel untuk kolom nama_produk dari tabel produk
SELECT ms_produk, nama_produk FROM ms_produk;

-- menggunakan nama database dan tabel sebagai prefix 
SELECT pti_mart.ms_produk.nama_produk FROM ms_produk;

-- ALIAS, nama sementara untuk objek database 
-- mengambil sementara kolom nama_produk dengan ALIAS
SELECT nama_produk AS np  FROM ms_produk;
SELECT nama_produk np FROM ms_produk;

-- mengganti sementara table dengan ALIAS
SELECT nama_produk FROM  ms_produk AS msp;

-- Kombinasikan PREFIX dan ALIAS


-- CASE 1
SELECT nama_pelanggan,alamat FROM ms_pelanggan;

-- CASE 2
SELECT nama_produk,harga FROM ms_produk;

