CREATE TABLE item_bought (
    buyer TEXT NOT NULL,
    item text not null
);
INSERT INTO item_bought (buyer, item) VALUES
('A', 'Asus'),
('B', 'Lenovo'),
('C', 'Lenovo'),
('D', 'Acer'),
('E', 'Acer'),
('F', 'Acer');

--Menampilkan Tabel
select * from item_bought

--Fungsi Pencari item tengah
WITH item_counts AS 
(
  SELECT item, COUNT(*) AS nilai_terjual FROM item_bought GROUP BY item ), quartiles AS (
  SELECT item, nilai_terjual FROM item_counts WHERE nilai_terjual BETWEEN
         (SELECT percentile_cont(0.25) WITHIN GROUP (ORDER BY nilai_terjual) FROM item_counts) AND (SELECT percentile_cont(0.75) WITHIN GROUP (ORDER BY nilai_terjual) FROM item_counts)
)
SELECT item
FROM quartiles;




