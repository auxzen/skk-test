-- Tabel pelanggan
CREATE TABLE pelanggan (
  kode         VARCHAR(11)   PRIMARY KEY,
  nama         VARCHAR(255)  NOT NULL,
  alamat       VARCHAR(255)
);

-- Tabel barang
CREATE TABLE barang (
  kode         	VARCHAR(255)   PRIMARY KEY,
  nama         	VARCHAR(255)   NOT NULL,
  harga_satuan	DOUBLE PRECISION NOT NULL
);

-- Tabel transaksi
CREATE TABLE transaksi (
  kode               VARCHAR(255)   PRIMARY KEY,
  tanggal            DATE           NOT NULL,
  kode_pelanggan     VARCHAR(11)    NOT NULL,
  kode_barang        VARCHAR(255)   NOT NULL,
  jumlah_barang      DOUBLE PRECISION NOT NULL,

  CONSTRAINT fk_trans_pelanggan
    FOREIGN KEY (kode_pelanggan) REFERENCES pelanggan(kode),

  CONSTRAINT fk_trans_barang
    FOREIGN KEY (kode_barang) REFERENCES barang(kode)
);

SELECT * FROM pelanggan;
SELECT * FROM barang;
SELECT * FROM transaksi;

INSERT INTO pelanggan (kode, nama, alamat) VALUES
('P1', 'Yogi',  'JAKARTA'),
('P2', 'Anggi', 'BANDUNG'),
('P3', 'Rahma', 'BANDUNG');

INSERT INTO barang (kode, nama, harga_satuan) VALUES
('B1', 'Baju',   12000),
('B2', 'Celana', 10000),
('B3', 'Sepatu', 30000);

-- Tabel pelanggan
CREATE TABLE pelanggan (
  kode         VARCHAR(11)   PRIMARY KEY,
  nama         VARCHAR(255)  NOT NULL,
  alamat       VARCHAR(255)
);

-- Tabel barang
CREATE TABLE barang (
  kode         	VARCHAR(255)   PRIMARY KEY,
  nama         	VARCHAR(255)   NOT NULL,
  harga_satuan	DOUBLE PRECISION NOT NULL
);

-- Tabel transaksi
CREATE TABLE transaksi (
  kode               VARCHAR(255)   PRIMARY KEY,
  tanggal            DATE           NOT NULL,
  kode_pelanggan     VARCHAR(11)    NOT NULL,
  kode_barang        VARCHAR(255)   NOT NULL,
  jumlah_barang      DOUBLE PRECISION NOT NULL,

  CONSTRAINT fk_trans_pelanggan
    FOREIGN KEY (kode_pelanggan) REFERENCES pelanggan(kode),

  CONSTRAINT fk_trans_barang
    FOREIGN KEY (kode_barang) REFERENCES barang(kode)
);

SELECT * FROM pelanggan;
SELECT * FROM barang;
SELECT * FROM transaksi;

INSERT INTO pelanggan (kode, nama, alamat) VALUES
('P1', 'Yogi',  'JAKARTA'),
('P2', 'Anggi', 'BANDUNG'),
('P3', 'Rahma', 'BANDUNG');

INSERT INTO transaksi (kode, tanggal, kode_pelanggan, kode_barang, jumlah_barang) VALUES
('TRX001', '2019-10-01', 'P1', 'B1', 3),
('TRX002', '2019-10-02', 'P2', 'B2', 2),
('TRX003', '2019-10-08', 'P2', 'B1', 5),
('TRX004', '2019-10-10', 'P1', 'B1', 1),
('TRX005', '2019-10-17', 'P3', 'B2', 2),
('TRX006', '2019-10-17', 'P2', 'B3', 1),
('TRX007', '2019-10-18', 'P3', 'B1', 4),
('TRX008', '2019-10-18', 'P2', 'B2', 2);



-- QUERY BAGIAN A: Mengurutkan data barang berdasarkan harga satuan 
SELECT * 
FROM barang 
ORDER BY harga_satuan ASC;

-- QUERY BAGIAN B: Menampilkan data pelanggan yang mengandung huruf g dengan alamat bandung
SELECT * 
FROM pelanggan 
WHERE alamat = 'BANDUNG' 
 AND LOWER(nama) 
 LIKE '%g%'; 

-- QUERY BAGIAN C: Menampilkan data seluruh pelanggan sesuai dengan tampilan yang diberikan soal:
SELECT
  t.kode              AS kode,
  t.tanggal           AS tanggal,
  p.nama              AS nama_pelanggan,
  b.nama              AS nama_barang,
  t.jumlah_barang     AS jumlah,
  b.harga_satuan             AS harga_satuan,
  (b.harga_satuan * t.jumlah_barang) AS total
FROM transaksi t
JOIN pelanggan p
  ON t.kode_pelanggan = p.kode
JOIN barang b
  ON t.kode_barang    = b.kode
ORDER BY p.nama, t.kode;



-- QUERY BAGIAN D: Menampilkan data rekap nama, jumlah, dan total harga pembelian sesuai dengan tampilan yang diberikan soal:
SELECT
  p.nama                              	AS nama_pelanggan,
  SUM(t.jumlah_barang)	                AS total_jumlah,
  SUM(b.harga_satuan * t.jumlah_barang)	AS total_harga
FROM transaksi t
JOIN pelanggan p
  ON t.kode_pelanggan = p.kode
JOIN barang b
  ON t.kode_barang    = b.kode
GROUP BY p.nama
ORDER BY total_harga DESC;
