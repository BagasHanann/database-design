SELECT P.Nama_Produk, SUM(PS.Jumlah_Produk) AS Jumlah_Pesanan
FROM Produk AS P
JOIN Pesanan AS PS ON P.ID_Produk = PS.ID_Produk
GROUP BY P.Nama_Produk
ORDER BY Jumlah_Pesanan DESC
LIMIT 3;
