-- Procedure to create view --
USE mydb;
DROP PROCEDURE IF EXISTS create_views;
DELIMITER // 


CREATE PROCEDURE create_views() 
BEGIN
-- View created by joining songs and genres table --
   CREATE VIEW Songs_genre AS 
   SELECT
      songs.song_id,
      songs.song_name,
      genres.genre_name 
   FROM
      songs 
      JOIN
         albums 
         ON songs.albums_album_id1 = albums.album_id 
      JOIN
         genres 
         ON albums.genre_genre_id = genres.genre_id;

-- View created by joining repetitions and genres table --
CREATE VIEW repetitions_genres AS 
SELECT
   customer_customer_id,
   song_song_id,
   repetitions.count AS times_listened,
   genres.genre_name 
FROM
   mydb.repetitions 
   JOIN
      Songs 
      On repetitions.song_song_id = songs.song_id 
   JOIN
      albums 
      ON songs.albums_album_id1 = albums.album_id 
   JOIN
      genres 
      ON albums.genre_genre_id = genres.genre_id 
WHERE
   repetitions.count > 5 
GROUP BY
   customer_customer_id;
END// 
DELIMITER ;
CALL create_views()