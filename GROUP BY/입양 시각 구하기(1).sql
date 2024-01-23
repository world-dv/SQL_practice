SELECT HOUR(DATETIME) as HOUR, count(ANIMAL_ID) as COUNT 
    from ANIMAL_OUTS
    where HOUR(DATETIME) between 9 and 19  
    group by HOUR(DATETIME)
    order by HOUR
