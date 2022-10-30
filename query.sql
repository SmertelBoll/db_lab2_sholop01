SELECT TRIM(artist_name), artist_points 
FROM artist
ORDER BY artist_points DESC

SELECT TRIM(artist_country), COUNT(artist_country) 
FROM artist
GROUP BY artist_country
ORDER BY COUNT(artist_country) DESC

SELECT TRIM(artist_country), SUM(artist_points)
FROM artist
GROUP BY artist_country
ORDER BY SUM(artist_points) DESC