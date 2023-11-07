SELECT ROUND(AVG(PS.Total_Harga)) AS Rata_rata_Transaksi
FROM Pesanan AS PS
WHERE PS.Tanggal_Pesanan >= DATE_SUB(NOW(), INTERVAL 1 MONTH);

