SELECT distinct c.CAR_ID
    from CAR_RENTAL_COMPANY_CAR c inner join CAR_RENTAL_COMPANY_RENTAL_HISTORY ch on (c.CAR_ID = ch.CAR_ID)
    where c.CAR_TYPE = '세단' and month(ch.START_DATE) = 10
    order by CAR_ID desc
