SELECT *, stok * harga_beli as asset FROM produk p WHERE stok * harga_beli > 20000000;

SELECT *, stok - min_stok as selisih_stok FROM produk p;

SELECT SUM(stok * harga_beli) as total_asset FROM produk p;

SELECT * FROM pelanggan p WHERE YEAR(tgl_lahir) BETWEEN 1980 AND 1990;

SELECT * FROM pelanggan p WHERE YEAR(tgl_lahir) = 1990;

SELECT * FROM pelanggan p WHERE MONTH(tgl_lahir) = 01;

SELECT nama , tmp_lahir , tgl_lahir , FLOOR((CURRENT_DATE() - tgl_lahir)/10000) as umur FROM pelanggan p; 

SELECT COUNT(*) FROM pelanggan p WHERE YEAR (tgl_lahir) = 1990;

SELECT COUNT(*) FROM pelanggan p WHERE jk = "P" AND tmp_lahir = "Jakarta";

SELECT SUM(stok) as total_stok  FROM produk p WHERE harga_jual < 10000; 

SELECT COUNT(*) FROM produk p WHERE kode LIKE "L%";

SELECT AVG(harga_jual) FROM produk p WHERE harga_jual > 1000000;

SELECT MAX(stok) as stok_terbesar FROM produk p;

SELECT COUNT(*) FROM produk WHERE stok < min_stok ;

SELECT SUM(stok * harga_beli) as total_asset FROM produk p;

SELECT id, nama, stok, IF(stok > min_stok, "stok aman", "segera belanja") as informasi FROM produk;

SELECT
	id,
	nama,
	FLOOR((CURRENT_DATE() - tgl_lahir)/10000) as umur,
	CASE 
		WHEN FLOOR((CURRENT_DATE() - tgl_lahir)/10000) < 17 THEN "Muda" 
		WHEN FLOOR((CURRENT_DATE() - tgl_lahir)/10000) < 55 THEN "DEWASA"
		ELSE "TUA"
	END as kehidupan 
FROM pelanggan p ;

SELECT 
	id, 
	kode, 
	nama, 
	CASE(kode) 
		WHEN "TV01" THEN "DVD PLAYER" 
		WHEN "K001" THEN "RICE COOKER" 
		ELSE "TIDAK ADA" 
	END 
FROM produk p ;

SELECT tmp_lahir, COUNT(*) as jumlah FROM pelanggan GROUP BY tmp_lahir;

SELECT p.jenis_produk_id, jp.nama as nama_produk, COUNT(*) as jumlah FROM produk p left join jenis_produk jp ON p.jenis_produk_id = jp.id GROUP BY p.jenis_produk_id ;

SELECT * FROM pelanggan p WHERE FLOOR((CURRENT_DATE() - tgl_lahir)/10000) < (SELECT AVG(FLOOR((CURRENT_DATE() - tgl_lahir)/10000)) FROM  pelanggan p2);

SELECT * FROM produk p WHERE harga_jual > (SELECT AVG(harga_jual) FROM produk p2 ) ;

SELECT * FROM pelanggan p WHERE kartu_id in (SELECT k.id FROM kartu k WHERE k.iuran > 90000);

SELECT * FROM produk p WHERE harga_jual < (SELECT AVG(harga_jual) FROM produk p2 ) ;

SELECT * FROM pelanggan p WHERE kartu_id in (SELECT k.id FROM kartu k WHERE k.diskon  > 0.03);

