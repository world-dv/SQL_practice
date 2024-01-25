SELECT ao.ANIMAL_ID as ANIMAL_ID, ao.ANIMAL_TYPE as ANIMAL_TYPE, ao.NAME as NAME
    from ANIMAL_OUTS ao
    inner join ANIMAL_INS ai on (ao.ANIMAL_ID = ai.ANIMAL_ID)
    where ai.SEX_UPON_INTAKE like '%Intact%'
    and ai.SEX_UPON_INTAKE != ao.SEX_UPON_OUTCOME
    order by ANIMAL_ID
    
