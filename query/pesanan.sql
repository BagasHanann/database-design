CREATE TABLE Pesanan (
    ID_Pesanan INT AUTO_INCREMENT PRIMARY KEY,
    Tanggal_Pesanan DATE NOT NULL,
    ID_Pelanggan INT,
    ID_Produk INT,
    Jumlah_Produk INT NOT NULL,
    Total_Harga INT NOT NULL,
    FOREIGN KEY (ID_Pelanggan) REFERENCES Pelanggan(ID_Pelanggan),
    FOREIGN KEY (ID_Produk) REFERENCES Produk(ID_Produk)
);

SHOW TABLES;

DESCRIBE Pesanan;

INSERT INTO Pesanan (Tanggal_Pesanan, ID_Pelanggan, ID_Produk, Jumlah_Produk, Total_Harga) VALUES
    ('2023-11-01', 1, 1, 2, 200000),
    ('2023-11-02', 2, 2, 1, 5000000),
    ('2023-11-03', 3, 3, 3, 12000),
    ('2023-11-04', 1, 4, 1, 5000),
    ('2023-11-05', 5, 5, 1, 9000000),
    ('2023-11-06', 6, 6, 4, 600000),
    ('2023-11-07', 7, 7, 2, 400000),
    ('2023-11-08', 1, 8, 5, 20000),
    ('2023-11-09', 9, 9, 1, 50000),
    ('2023-11-10', 10, 10, 1, 9000000);


SELECT * FROM pesanan;

UPDATE pesanan SET Tanggal_Pesanan = '2023-11-06' WHERE ID_Pesanan = 1;

SELECT * FROM pesanan;

DELETE FROM pesanan WHERE ID_Pesanan = 1;

DROP TABLE pesanan;