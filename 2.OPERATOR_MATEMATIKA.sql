-- ORDER BY dengan ASC dan desc
-- mengambil nama_produk,qty dari table penjualan urutkan dengan DESC qty
select nama_produk, qty 
from tr_penjualan_dqlab
order by qty DESC;

-- ambil nama_produk dari tabel penjualan urutkan qty DESC dan nama_produk ASC
select tgl_transaksi, qty 
from tr_penjualan_dqlab
order by qty DESC,nama_produk ASC;

-- latihan 2
-- menampilkan semua kolom pada table penjualan dengan mengurutkan tgl_transaksi secara DESC dan qty ASC 
select tgl_transaksi, qty 
from tr_penjualan_dqlab 
order by tgl_transaksi desc,qty asc;

-- menampilkan semua kolom table pelanggan dengan mengurutkan nama_pelanggan secara desc
select kode_pelanggan, no_urut, nama_pelanggan, alamat
from ms_pelanggan_dqlab 
order by nama_pelanggan DESC;

-- menampilkan semua kolom table pelanggan dengan mengurutkan alamat secara DESC 
select kode_pelanggan, no_urut, nama_pelanggan, alamat
from ms_pelanggan_dqlab
order by alamat desc;

-- ORDER BY dengan perhitungan
select nama_produk,qty,harga,qty*harga as total_beli
from tr_penjualan_dqlab
order by total_beli desc;

-- latihan 3
-- pengurutan dengan ekspresi total harga menggunakan rumusan jumlah barang dikali harga barang dikurangi diskon
select qty, harga, diskon_persen, qty*harga-diskon_persen as total_harga
from tr_penjualan_dqlab
order by total_harga asc;

-- ORDER BY dengan WHERE ambil nama produk, qty dari penjualan dengan nama_produk berawalan "f" urutkan berdasarkan qty terbanyak
select nama_produk, qty
from tr_penjualan_dqlab where nama_produk like 'F%' 
order by qty desc;

-- latihan 4
-- tampilkan nama_produk dari transaksi penjualan yang memiliki diskon diurutkan berdasarkan harga tertinggi
select nama_produk, diskon_persen from tr_penjualan_dqlab where diskon_persen > 0 order by diskon_persen;

-- menampilkan nama produk, qty dan harga dari transaksi penjualan yang memiliki harga minimal harga seratus ribu rupiahdan diurutkan berdasarkan harga tertinggi
select nama_produk, qty, harga from tr_penjualan_dqlab where harga >= 100000 order by harga desc;

-- menampilkan kolom nama_produk, qty dan harga dari transaksi penjualan yang dimiliki harga minimal seratus ribu atau nama produk berawalan karakter
select nama_produk, qty, harga, diskon_persen from tr_penjualan_dqlab where harga > 100000 or nama_produk like 'T' order by diskon_persen desc;
 