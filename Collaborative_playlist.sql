
 -- Procedure for creating collaborative playlist for two customers --
USE mydb;
DROP PROCEDURE IF EXISTS test;
DELIMITER // 

CREATE PROCEDURE test() 
BEGIN
   DECLARE var_Customer_1 INT ;
   DECLARE var_Customer_2 INT ;
SET-- Enter customer id's --
   var_Customer_1 = 2;
SET
   var_Customer_2 = 1;
SELECT
   repetitions_genres.customer_customer_id,
   song_id,
   song_name,
   Songs_genre.genre_name 
FROM
   Songs_genre 
   JOIN
      repetitions_genres 
      ON Songs_genre.genre_name = repetitions_genres.genre_name 
WHERE
   Songs_genre.genre_name IN 
   (
      SELECT
         genre_name 
      FROM
         repetitions_genres 
      WHERE
         customer_customer_id IN (var_Customer_1 ,var_Customer_2 ) 
   )
;
END// 
DELIMITER ;

CALL test();