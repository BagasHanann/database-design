SELECT P.ID_Pelanggan, P.Nama_Pelanggan, COUNT(DISTINCT PS.ID_Produk) AS Total
FROM Pelanggan AS P
JOIN Pesanan AS PS ON P.ID_Pelanggan = PS.ID_Pelanggan
GROUP BY P.ID_Pelanggan, P.Nama_Pelanggan
HAVING Total = 3;