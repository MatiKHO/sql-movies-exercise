SELECT genres, COUNT(*) FROM movies_metadata GROUP BY genres;

SELECT title, revenue FROM movies_metadata WHERE revenue IS NOT NULL ORDER BY revenue DESC LIMIT 1;

SELECT adult, COUNT(*) FROM movies_metadata GROUP BY adult;

SELECT AVG(runtime) FROM movies_metadata;

SELECT title, vote_average FROM movies_metadata WHERE vote_average >= 7 ORDER BY vote_average DESC;

SELECT original_language, COUNT(*) FROM movies_metadata GROUP BY original_language ORDER BY count(*) DESC;

SELECT title, release_date FROM movies_metadata WHERE release_date BETWEEN '2000-01-01' AND '2024-11-20' ORDER BY release_date ASC;

SELECT COUNT(*) FROM movies_metadata WHERE STATUS != 'Released';

SELECT original_title, belongs_to_collection FROM movies_metadata WHERE belongs_to_collection != '' AND belongs_to_collection IS NOT NULL ORDER BY belongs_to_collection ASC;


SELECT original_title, budget, revenue, (revenue - budget) AS ROI FROM movies_metadata WHERE revenue != 0 ORDER BY ROI DESC;