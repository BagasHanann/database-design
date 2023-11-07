CREATE TABLE Pelanggan (
    ID_Pelanggan INT AUTO_INCREMENT PRIMARY KEY,
    Nama_Pelanggan VARCHAR(255) NOT NULL,
    Alamat VARCHAR(255) NOT NULL,
    Email VARCHAR(255) NOT NULL
);

SHOW TABLES;

DESCRIBE Pesanan;

INSERT INTO Pelanggan (Nama_Pelanggan, Alamat, Email) VALUES
    ('John Doe', 'Jl. Contoh No. 123', 'john.doe@example.com'),
    ('Alice Smith', 'Jl. Utama No. 456', 'alice.smith@example.com'),
    ('Bob Johnson', 'Jl. Raya No. 789', 'bob.johnson@example.com'),
    ('Eva Davis', 'Jl. Maju No. 101', 'eva.davis@example.com'),
    ('Michael Wilson', 'Jl. Baru No. 202', 'michael.wilson@example.com'),
    ('Lisa Brown', 'Jl. Sederhana No. 303', 'lisa.brown@example.com'),
    ('David Lee', 'Jl. Lama No. 404', 'david.lee@example.com'),
    ('Sarah Clark', 'Jl. Depan No. 505', 'sarah.clark@example.com'),
    ('Daniel Turner', 'Jl. Belakang No. 606', 'daniel.turner@example.com'),
    ('Olivia Taylor', 'Jl. Terdepan No. 707', 'olivia.taylor@example.com');

SELECT * FROM Pelanggan;