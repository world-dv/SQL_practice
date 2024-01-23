SELECT c.CAR_ID as CAR_ID, IF(sum(
    case when '2022-10-16' between c.START_DATE and c.END_DATE then 1
        else 0 end
    ) > 0, '대여중', '대여 가능') as AVAILABILITY
    from CAR_RENTAL_COMPANY_RENTAL_HISTORY c 
    group by CAR_ID
    order by CAR_ID desc
