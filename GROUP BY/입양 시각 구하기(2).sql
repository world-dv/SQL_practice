set @HOUR = -1;
select (@HOUR := @HOUR + 1) as HOUR, IFNULL((
        select COUNT(ANIMAL_ID)
        from ANIMAL_OUTS
        where @HOUR = HOUR(DATETIME)
        group by HOUR(DATETIME)
    ), 0) as COUNT
    from ANIMAL_OUTS 
    where @HOUR < 23;
    
