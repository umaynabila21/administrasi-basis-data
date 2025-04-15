-- Nama : Sylvana Baiq Murtijanto
-- NIM : 23241075
-- Kelas : B

-- membuat database
CREATE DATABASE mandalika_mart;

-- menggunakan database 'mandalika_mart'
USE mandalika_mart;

-- membuat tabel dalam database 'mandalika_mart'
CREATE TABLE member (
	member_id varchar(10),
    username varchar(20),
    nama varchar(100),
    tanggal_lahir datetime,
    angka_favorit int);
    
CREATE TABLE produk (
	id_produk varchar(10),
    nama_produk varchar(25),
    kategori varchar(15),
    harga int,
    qty int);
    
CREATE TABLE transaksi_penjualan (
	tgl_jual datetime,
    id_produk varchar(10),
    member_id varchar(10),
    nama_produk varchar(25),
    harga int,
    qty int);

-- Mengupdate primary key tabel member, produk
ALTER TABLE member
ADD PRIMARY KEY (member_id);

ALTER TABLE produk
ADD PRIMARY KEY (id_produk);
    
-- mengupdate foreign key tabel transaksi_penjualan
ALTER TABLE transaksi_penjualan
ADD CONSTRAINT FK_memberTransaksi
FOREIGN KEY (member_id) REFERENCES member(member_id);

ALTER TABLE transaksi_penjualan
ADD CONSTRAINT FK_produkTransaksi
FOREIGN KEY (id_produk) REFERENCES produk(id_produk);