SELECT i.ANIMAL_ID, o.NAME
    from ANIMAL_INS i, ANIMAL_OUTS o
    where i.ANIMAL_ID = o.ANIMAL_ID
    order by DATEDIFF(o.DATETIME, i.DATETIME) + 1 desc
    limit 2
