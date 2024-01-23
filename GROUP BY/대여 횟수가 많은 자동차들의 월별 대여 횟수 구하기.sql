select MONTH(c.START_DATE) as MONTH, c.CAR_ID as CAR_ID, count(*) as RECORDS 
    from CAR_RENTAL_COMPANY_RENTAL_HISTORY c
        join (
            select CAR_ID, count(*) as count from CAR_RENTAL_COMPANY_RENTAL_HISTORY
                where DATE_FORMAT(START_DATE, '%Y-%m') between '2022-08' and '2022-10'
                group by CAR_ID
        ) as b on (c.CAR_ID = b.CAR_ID)
    where DATE_FORMAT(c.START_DATE, '%Y-%m') between '2022-08' and '2022-10'
        and b.count >= 5
    group by c.CAR_ID, MONTH(c.START_DATE)
    order by MONTH, CAR_ID desc
