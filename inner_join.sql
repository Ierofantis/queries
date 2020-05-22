 SELECT whatever.whatever_id AS whatever_id,
        whatever.whatever_name AS whatever_name,
        whatever.whatever_max_num AS whatever_max,
        whatever_two.main_id AS main_id,
        whatever_two.is_true AS is_true,
        whatever_two.main AS main
 FROM whatever_two
 INNER JOIN whatever ON whatever.whatever_id = whatever_two.whatever_id
 AND whatever.type_id = whatever_two.platype_idtform_id
 WHERE whatever_two.type_id = 1
   AND (status = 'verified')
   AND month = 'month'
   AND whatever_two.action IS NULL


   