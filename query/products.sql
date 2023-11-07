CREATE TABLE Produk (
    ID_Produk INT AUTO_INCREMENT PRIMARY KEY,
    Nama_Produk VARCHAR(255) NOT NULL,
    Harga INT NOT NULL,
    Stok INT NOT NULL,
    ID_Kategori INT,
    FOREIGN KEY (ID_Kategori) REFERENCES Kategori(ID_Kategori)
);

SHOW TABLES;

DESCRIBE produk;

INSERT INTO produk (Nama_Produk, Harga, Stok, ID_Kategori)
VALUES
("Baju Distro", 100000, 10, 2),
("Laptop", 2000000, 5, 1),
("Sapu", 4000, 20, 3),
("Pel", 5000, 30, 3),
("Mesin Cuci", 9000000, 15, 1),
("Celana", 100000, 10, 2),
("Celana Chino", 200000, 5, 2),
("Kulot", 4000, 20, 2),
("Vacum", 50000, 30, 3),
("Tv", 9000000, 15, 1);

SELECT * FROM produk;

UPDATE produk
SET Harga = 5000000
WHERE ID_Produk = 2;

DELETE FROM produk WHERE ID_Produk = 5;

DROP TABLE produk;