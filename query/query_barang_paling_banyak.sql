SELECT K.Nama_Kategori, COUNT(P.ID_Produk) AS Jumlah_Produk
FROM Kategori AS K
JOIN Produk AS P ON K.ID_Kategori = P.ID_Kategori
GROUP BY K.Nama_Kategori
ORDER BY Jumlah_Produk DESC
LIMIT 1;
