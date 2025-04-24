-- membuat database 
CREATE DATABASE tiket_bioskop;
USE tiket_bioskop;
-- menggunakan database 'tiket_bioskop'
USE tiket_bioskop;

-- membuat tabel customer member
CREATE TABLE customer_member (
	member_id  varchar(25),
    nama varchar(100),
    email varchar(100),
    no_telepon varchar(15));
    
    DESCRIBE customer_member;
    
-- membuat tabel pelanggan
CREATE TABLE pelanggan (
	id_pelanggan  varchar(25),
    nama varchar(50),
    email varchar(75),
    no_telepon varchar(15));
    
    DESCRIBE pelanggan;
    
-- membuat tabel film
    CREATE TABLE film (
    id_film varchar(10),
    judul_film varchar(10),
    durasi time,
    kategori VARCHAR(10),
    tgl_tayang datetime);
    
-- membuat tabel transaksi
    CREATE TABLE transaksi (
    id_transaksi varchar(10),
    id_film varchar(10),
    member_id varchar(10),
    id_pelanggan varchar (10),
    nama varchar(100),
    no_telepon varchar(15),
    harga int,
    QTY int,
    total int);
    
-- Mengupdate primary key tabel
ALTER TABLE customer_member
ADD PRIMARY KEY (member_id);

ALTER TABLE pelanggan
ADD PRIMARY KEY (id_pelanggan);

ALTER TABLE penonton
ADD PRIMARY KEY (id_penonton);

ALTER TABLE film
ADD PRIMARY KEY (id_film);

ALTER TABLE tansaksi
ADD PRIMARY KEY (id_transaksi);


-- mengupdate foreign key tabel film
ALTER TABLE transaksi
ADD CONSTRAINT FK_TransaksiPelanggan
FOREIGN KEY (id_pelanggan) REFERENCES pelanggan(id_pelanggan);

ALTER TABLE transaksi
ADD CONSTRAINT FK_TransaksiMember
FOREIGN KEY (member_id) REFERENCES customer_member(member_id);

ALTER TABLE Transaksi
ADD CONSTRAINT FK_TransaksiFilm
FOREIGN KEY (id_film) REFERENCES film(id_film);

-- mengisi data pada tabel pelanggan
INSERT INTO pelanggan(id_pelanggan, nama, email, no_telepon)
VALUES	('0000000022', 'Customer 1', 'customer001@gmail.com', '082120654772'),
		('0000000011', 'Customer 2', 'customer102@gmail.com', '081000345098'),
		('0000000033', 'Customer 3', 'customer203@gmail.com', '083443675090'),
        ('0000000012', 'Customer 4', 'customer104@gmail.com', '081000345228'),
		('0000000034', 'Customer 5', 'customer205@gmail.com', '0834436752430');
SELECT *FROM pelanggan;

-- mengisi data pada tabel member
INSERT INTO customer_member(member_id, nama, email, no_telepon)
VALUES	('001', 'Member 1', 'Member001@gmail.com', '082120213772'),
		('002', 'Member 2', 'Member002@gmail.com', '081000344398'),
		('003', 'Member 3', 'Member003@gmail.com', '083443690990'),
        ('004', 'Member 4', 'Member004@gmail.com', '081000348728'),
		('005', 'Member 5', 'Member005@gmail.com', '083443423430');
SELECT *FROM customer_member;

-- mengisi data pada tabel film
INSERT INTO film(id_film,judul_film,durasi,kategori,tgl_tayang,harga)
VALUES	('F001','FILM01','01:40:00','Horor','2025-04-01','50000'),
		('F002','FILM02','02:40:00','Animasi','2025-04-04','60000'),
        ('F003','FILM03','02:10:00','Petalang','2025-02-04','45000'),
        ('F004','FILM04','01:30:00','Horor','2025-04-05','55000'),
        ('F005','FILM05','02:50:00','Lucu','2025-02-01','650000');
SELECT *FROM film;

-- mengisi data pada tabel transaksi
INSERT INTO transaksi(id_transaksi,id_film,member_id,nama,no_telepon,harga,QTY,total)
VALUES	('T001','F001','001','Member 1','082120213772','50000','1','50000'),
		('T002','F002','002','Member 2','081000344398','60000','2','120000'),
        ('T003','F003','003','Member 3','083443690990','45000','2','90000');
INSERT INTO transaksi(id_transaksi,id_film,id_pelanggan,nama,no_telepon,harga,QTY,total)
VALUES	('T004','F004','0000000012','Customer 1','082120213772','55000','2','110000'),
		('T005','F004','0000000011','Customer 1','081000345098','45000','3','135000');
SELECT *FROM transaksi;
        




    
    

