SELECT Produk.Nama_Produk, Produk.Harga, Kategori.Nama_Kategori
FROM Produk
INNER JOIN Kategori ON Produk.ID_Kategori = Kategori.ID_Kategori;