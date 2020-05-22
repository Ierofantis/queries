   SELECT whatever.whatever_id AS whatever_id,
        whatever.whatever_name AS whatever_name,
        whatever.whatever_max_num AS whatever_max,
        whatever_two.main_id AS main_id,
 FROM whatever_two
 INNER JOIN whatever ON whatever.whatever_id = whatever_two.whatever_id
 AND whatever.pa_id = whatever_two.pa_id
 WHERE whatever_two.pa_id = 1
   AND (status = 'verified')
   AND month = '022020'
   AND whatever_two.start IS NOT NULL
   AND whatever_two.end IS NOT NULL
   AND CAST(whatever_two.start AS int) <= 10 
   AND CAST(whatever_two.end AS int) >= 10
   AND whatever_two.deleted_at IS NULL
   GROUP BY whatever.whatever_id,main_id
 HAVING sum(whatever_two.price) > 0