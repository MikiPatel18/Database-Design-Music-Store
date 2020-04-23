use mydb;

-- Query 1 How many customers does the store have? --

SELECT
   COUNT(*) AS Total_customers 
FROM
   customers;

-- Query 2 The total number of subscriptions Sale And Revenue of Online Music company  --

SELECT
   subscriptions.type AS Type,
   COUNT(subscriptions_subscription_id) AS Total_sale,
   SUM(subscriptions.cost) AS 'Revenue($)' 
FROM
   customers 
   JOIN
      subscriptions 
      ON customers.subscriptions_subscription_id = subscriptions.subscription_id 
GROUP BY
   subscriptions_subscription_id;


-- Query 3 The average price of products in the same category (for example, rock, pop, country, hip-hop). --

SELECT
   a.genre_genre_id,
   g.genre_name,
   AVG(price) AS Average_price
FROM
   albums a 
   JOIN
      genres g 
      ON a.genre_genre_id = g.genre_id 
GROUP BY
   genre_id;


-- Query 4 List customers by surname, email and then sort them. --

SELECT
   last_name AS Surname,
   first_name AS Name,
   email AS Email 
FROM
   customers 
ORDER BY
   last_name;


-- Query 5 The list of songs for each costumer playlist  --

SELECT
   playlist_id,
   playlist_name,
   songs.song_name 
FROM
   playlists 
   JOIN
      playlist_has_song 
      ON playlists.playlist_id = playlist_has_song.playlist_playlist_id 
   JOIN
      songs 
      ON playlist_has_song.song_song_id = songs.song_id;


-- Query 6 List how many distinct albums each singer has --

SELECT
   artist_name,
   COUNT(DISTINCT(album_id)) AS number_of_album 
FROM
   artists a 
   JOIN
      albums al 
      ON a.idartist = al.artist_idartist 
GROUP BY
   artist_name;

-- Query 7 List how many songs and albums are available of a particular singer. --

-- (** Note: we have same details in artists table but we will find it using joins and subquery)--

Select
   songs.artist_idartist,
   artists.artist_name,
   count(songs.artist_idartist) AS Total_Songs,
   (
      select
         count(albums.artist_idartist) 
      from
         albums 
      Where
         albums.artist_idartist = artists.idartist 
   )
   AS Total_albums 
from
   songs 
   Join
      albums 
      ON songs.albums_album_id1 = albums.album_id 
   Join
      artists 
      On albums.artist_idartist = artists.idartist 
Group by
   songs.artist_idartist;
