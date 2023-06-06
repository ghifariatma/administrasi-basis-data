-- fungsi agregasi
 -- ambil hasil perhitungan dari nilai qty dari seluruhrow pada tabel transaksi
 select sum(qty) from tr_penjualan_dqlab;
 
 -- menghitung jumlah seluruh row pada tabel transaksi
 select count(*) from tr_pemjualan_dqlab;
 select count(*) from ms_pelanggan_dqlab;
 select count(*) from ms_produk_dqlab;
 
 -- menghitung penjumlah qty dan menghitung seluruh row 
 select sum(qty), count(*)
 from tr_penjualan_dqlab;
 
 -- menghitung rata rata qty, nilai tertinggi dari qty dan nilai terendah qty
 select avg(qty), min(qty), max(qty)
 from tr_penjualan_dqlab;
 
 -- menghitung nilai unik dari nama_produk ddi tabel tr_penjualan_dqlab
 select count(distinct nama_produk), count(nama_produk)
 from tr_penjualan_dqlab;
 
 -- menarik field nama_produk dan fungsi agregasi untuk nilai qty pada tabel tr_penjualan
 select nama_produk, max(qty)
 from tr_penjualan_dqlab;
 
 -- GROUP BY
 -- mengambil grouping nilai dari kolom nama_produk
 select nama_produk from tr_penjualan_dqlab
 group by nama_produk;

-- ambil grouping nilai dari kolom nama_produk dan qty
select nama_produk, qty
from tr_penjualan_dqlab
group by nama_produk, qty;

-- ambil jumlah qty dari grouping nama_produk terhadap seluruh row pada tabel transaksi
select nama_produk, sum(qty)
from tr_penjualan_dqlab
group by nama_produk;

-- ambil jumlah qty dari hasil grouping nama_produk terhadap seluruh row tabel_penjualan urutkan qty terbesar
select nama_produk, sum(qty)
from tr_penjualan_dqlab
group by nama_produk
order by sum(qty) desc;

-- ambil jumlah qty >2 dari hasil grouping nama_produk terhadap seluruh row pada tabel transaksi
select nama_produk, sum(qty)
from tr_penjualan_dqlab
group by nama_produk
having sum(qty) > 2
order by sum(qty) desc;

-- latihan 1
-- melihat daftar nama produk yang total jumlah produk terjual perkelompok  nama produk adalah diatas 4
select nama_produk, sum(qty) from tr_penjualan_dqlab having sum(qty) >= 4 order by sum(qty);

-- melihat daftar nama produk yang total jumlah terjual perkelompok nama produk sama dengan 9
select nama_produk, sum(qty) from tr_penjualan_dqlab group by qty having sum(qty) = 9 order by nama_produk;

-- melihat daftar kelompok nama produk dan total nilai penjualan (harga dikali jumlah)
select nama_produk, sum(qty) from tr_penjualan_dqlab group by nama_produk order by harga*qty desc;