SELECT 
	p.id ,
	p.tanggal ,
	p.total ,
	p2.kode ,
	p2.nama ,
	k.nama AS nama_kartu ,
	k.diskon 
FROM  pesanan p 
JOIN pelanggan p2
	ON p.pelanggan_id = p2.id
JOIN kartu k 
	ON p2.kartu_id  = k.id 
	
SELECT 
	p.id ,
	p.tanggal ,
	p.nomor ,
	p.jumlah ,
	p.harga ,
	p2.nama AS nama_produk ,
	v.nama AS nama_vendor ,
	v.kontak
FROM pembelian p 
JOIN produk p2 
	ON p.produk_id = p2.id 
JOIN vendor v 
	ON p.vendor_id = v.id 
	
SELECT 
	p.id ,
	p.tanggal ,
	p.total ,
	p2.nama AS nama_pelanggan ,
	p3.kode ,
	p3.nama AS nama_barang ,
	jp.nama AS jenis_produk ,
	pi2.qty ,
	pi2.harga 
FROM pesanan p 
JOIN pelanggan p2 
	ON p.pelanggan_id = p2.id 
JOIN pesanan_items pi2  
	ON pi2.pesanan_id = p.id 
JOIN produk p3 
	ON pi2.produk_id = p3.id 
JOIN jenis_produk jp 
	ON p3.jenis_produk_id = jp.id
	
CREATE OR REPLACE VIEW vw_pesanan AS
SELECT 
	p.id ,
	p.tanggal ,
	p.total ,
	p2.kode ,
	p2.nama ,
	k.nama AS nama_kartu ,
	k.diskon 
FROM  pesanan p 
JOIN pelanggan p2
	ON p.pelanggan_id = p2.id
JOIN kartu k 
	ON p2.kartu_id  = k.id 

SELECT * FROM vw_pesanan

CREATE OR REPLACE VIEW vw_pembelian AS
SELECT 
	p.id ,
	p.tanggal ,
	p.nomor ,
	p.jumlah ,
	p.harga ,
	p2.nama AS nama_produk ,
	v.nama AS nama_vendor ,
	v.kontak
FROM pembelian p 
JOIN produk p2 
	ON p.produk_id = p2.id 
JOIN vendor v 
	ON p.vendor_id = v.id 

SELECT * FROM vw_pembelian

CREATE OR REPLACE VIEW vw_detail_pesanan AS
SELECT 
	p.id ,
	p.tanggal ,
	p.total ,
	p2.nama AS nama_pelanggan ,
	p3.kode ,
	p3.nama AS nama_barang ,
	jp.nama AS jenis_produk ,
	pi2.qty ,
	pi2.harga 
FROM pesanan p 
JOIN pelanggan p2 
	ON p.pelanggan_id = p2.id 
JOIN pesanan_items pi2  
	ON pi2.pesanan_id = p.id 
JOIN produk p3 
	ON pi2.produk_id = p3.id 
JOIN jenis_produk jp 
	ON p3.jenis_produk_id = jp.id

SELECT * FROM vw_detail_pesanan

