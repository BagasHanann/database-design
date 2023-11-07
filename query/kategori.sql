CREATE TABLE Kategori (
    ID_Kategori INT AUTO_INCREMENT PRIMARY KEY,
    Nama_Kategori VARCHAR(255) NOT NULL,
    Deskripsi_Kategori TEXT
);

SHOW TABLES;

DESCRIBE Kategori;

INSERT INTO kategori (Nama_Kategori, Deskripsi_Kategori)
VALUES
('Elektronik', 'Elektronik Murah'),
('Pakaian', 'Pakaian Semua Jenis'),
('Alat Rumah Tangga', 'Gelegar Murahnya');

SELECT * FROM kategori;

DELETE FROM kategori WHERE ID_Kategori = 1

DROP TABLE kategori;