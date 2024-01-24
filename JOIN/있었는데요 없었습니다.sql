SELECT ai.ANIMAL_ID as ANIMAL_ID, ao.NAME as NAME
    from ANIMAL_INS ai 
    inner join ANIMAL_OUTS ao on (ai.ANIMAL_ID = ao.ANIMAL_ID)
    where ao.DATETIME < ai.DATETIME
    order by ai.DATETIME asc
