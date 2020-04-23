 -- SCENARIO --
 -- Procedure for finding playlist according to taste of customer --
USE mydb;
DROP PROCEDURE IF EXISTS test;
DELIMITER // 
-- This select statement take reference from Views to find taste of customer and create playlist suggesting songs of similar genre --
CREATE PROCEDURE test() 
BEGIN
   DECLARE var_customerid INT ;
SET
   var_customerid = 1; -- Select customer --
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
   Songs_genre.genre_name = 
   (
      SELECT
         genre_name 
      FROM
         repetitions_genres 
      WHERE
         customer_customer_id = var_customerid 
   )
;
END// 
DELIMITER ;

CALL test();