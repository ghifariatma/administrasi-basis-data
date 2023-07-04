-- nama : ahmad ghifari atma pamungkas
-- nim  : 21241071
-- ADMINISTRASI BASIS DATA

use db_pratikum;

-- soal 1
-- ambil kode_pelanggan, nama_produk, kuantitynya, harga dan total harga yang pernah ditransaksikan
select kode_pelanggan, nama_produk, qty, harga as total_harga
from tr_penjualan_dqlab where harga >= 200000 order by total_harga desc;

-- soal 2
select tp.kode_transaksi, tp.kode_pelanggan, mp.nama_pelanggan, tp.kode_produk, tp.nama_produk, harga, tp.qty
from tr_penjualan_dqlab as tp
join ms_pelanggan_dqlab as mp
on tp.kode_pelanggan = mp.kode_pelanggan;

-- soal 3
select nama_produk, tgl_transaksi, bulan, tahun
