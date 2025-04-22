-- membuat database 
CREATE DATABASE tiket_bioskop;
USE tiket_bioskop;
-- menggunakan database 'tiket_bioskop'
USE tiket_bioskop;

-- membuat tabel dalam database 'tiket_bioskop'
CREATE TABLE pelanggan (
	id_pelanggan  varchar(25),
    nama varchar(50),
    email varchar(75),
    no_telepon varchar(15));
    DESCRIBE pelanggan;
    
    CREATE TABLE penonton (
    id_penonton varchar(10),
    tangal DATETIME,
    jumlah_keseluruhan VARCHAR(10),
    kursi varchar(10));
    
    CREATE TABLE film (
    id_film varchar(10),
    judul_film varchar(10),
    durasi VARCHAR(25),
    kategori VARCHAR(10),
    tgl_tayang datetime);
	
-- Mengupdate primary key tabel
ALTER TABLE pelanggan
ADD PRIMARY KEY (id_pelanggan);

ALTER TABLE penonton
ADD PRIMARY KEY (id_penonton);

ALTER TABLE film
ADD PRIMARY KEY (id_film);

-- mengupdate foreign key tabel film
ALTER TABLE film
ADD CONSTRAINT FK_pelangganFilm
FOREIGN KEY (id_pelanggan) REFERENCES pelanggan(id_pelanggan);

ALTER TABLE film
ADD CONSTRAINT FK_penontonfilm
FOREIGN KEY (id_penonton) REFERENCES penonton(id_penonton);

-- mengisi data pada tabel pelanggan
INSERT INTO pelanggan(id_pelanggan, nama, email, no_telepon)
VALUES ('0000000022', 'Customer 1', 'customer001@gmail.com', '082120654772');

INSERT INTO pelanggan(id_pelanggan, nama, email, no_telepon)
VALUES ('0000000011', 'Customer 2', 'customer102@gmail.com', '081000345098');

INSERT INTO pelanggan(id_pelanggan, nama, email, no_telepon)
VALUES ('0000000033', 'Customer 3', 'customer203@gmail.com', '083443675090');


-- mengisi data pada tabel penonton
INSERT INTO penonton(id_penonton, kategori)
VALUES ('0099664300', 'Regular', '1500000');

INSERT INTO penonton(id_penonton, kategori)
VALUES ('0077889200', 'Platinum', '2750000');

INSERT INTO penonton(id_penonton, kategori)
VALUES ('0011457700', 'VIP', '3500000');

SELECT * FROM tiket;

-- membuat data pelanggan
INSERT INTO pelanggan(id_pelanggan, nama, email, no_telepon)
VALUES	('01', 'Jaya', 'jaya@gmail.com','08180578111'),
		('02', 'Jono', 'jono@gmail.com','08180578178'),
        ('03', 'Aji', 'aji@gmail.com','08417768866');
    
-- mengakses isi data pada tabel
SELECT * FROM customer;
        




    
    

