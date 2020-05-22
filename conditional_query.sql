 SELECT
     whatever_two.main_id AS shop_id,
     sum(whatever.whatever_proposed_price) AS price,
     sum(whatever_two.booked_price) AS booked_price,
     CASE
       WHEN whatever_two.is_true = true THEN 'true'
       WHEN whatever_two.main != '' THEN 'main'
       ELSE 'case'
     END as type
   FROM whatever_two
   INNER JOIN whatever ON whatever.whatever_id = whatever_two.whatever_id AND whatever.pa_id = whatever_two.pa_id
   WHERE whatever_two.status IN ('status one', 'status two')
     AND whatever_two.month =  'month'
     AND whatever_two.pa_id = 1
   GROUP BY type1, type2
   HAVING sum(whatever_two.price) > 0