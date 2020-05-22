
SELECT 
        whatever.whatever_name AS whatever_name,
        whatever.whatever_proposed_price AS proposed,
        whatever_two.main_id AS shop_id,
        sum(whatever.whatever_proposed_price) AS price,
        whatever_two.booked_price AS booked_price,
        whatever_two.month AS month,
        whatever_two.start AS start,
        whatever_two.end AS end
 FROM  whatever_two
 INNER JOIN whatever ON whatever.whatever_id = whatever_two.whatever_id
 AND whatever.pa_id = whatever_two.pa_id
 WHERE whatever_two.pa_id = 1
   AND (status = 'action')
    AND CAST(whatever_two.start AS int) <= 09 
    AND CAST(whatever_two.end AS int) >=11
   AND month = 'month'
   GROUP BY type_id, whatever_name, whatever.whatever_proposed_price, booked_price,month,whatever_two.start,whatever_two.end
   HAVING sum(whatever_two.booked_price) > 0