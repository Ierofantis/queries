SELECT
    "column1",
    "column2",
    "column3",
    ROW_NUMBER() OVER (PARTITION BY "column1","column2","column3" ORDER BY "created_at",
        "id") AS rownum
FROM
    "table"
ORDER BY
    "id",
    "created_at",
    "column1"
