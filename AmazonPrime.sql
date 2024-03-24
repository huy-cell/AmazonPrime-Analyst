-- Câu 1: Top 15 Ratings
SELECT rating, COUNT(*) AS so_luong_phim
FROM amazonprime_tb
WHERE rating IS NOT NULL
GROUP BY rating
ORDER BY so_luong_phim DESC
LIMIT 15;

-- Câu 2: Số lượng phim theo loại
SELECT type, COUNT(*) AS so_luong_phim
FROM amazonprime_tb
GROUP BY type;

-- Câu 3: Số lượng phim theo năm phát hành và loại
SELECT release_year, type, COUNT(*) AS so_luong_phim
FROM amazonprime_tb
GROUP BY release_year, type;

-- Câu 4: Top 10 Thể loại phim
SELECT listed_in AS the_loai, COUNT(*) AS so_luong_phim
FROM amazonprime_tb
GROUP BY the_loai
ORDER BY so_luong_phim DESC
LIMIT 10;

-- Câu 5: Tổng số phim theo quốc gia
SELECT country AS quoc_gia, COUNT(*) AS so_luong_phim
FROM amazonprime_tb
WHERE country IS NOT NULL
GROUP BY quoc_gia;
