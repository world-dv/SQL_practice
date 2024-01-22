SELECT HISTORY_ID, round((c.DAILY_FEE * (1 - IFNULL(p.DISCOUNT_RATE, 0) / 100) * (DATEDIFF(h.END_DATE, h.START_DATE) + 1))) as FEE
    from CAR_RENTAL_COMPANY_CAR c
        inner join CAR_RENTAL_COMPANY_RENTAL_HISTORY h on c.CAR_ID = h.CAR_ID
        left join CAR_RENTAL_COMPANY_DISCOUNT_PLAN p on c.CAR_TYPE = p.CAR_TYPE 
            and p.DURATION_TYPE = (
            case when DATEDIFF(h.END_DATE, h.START_DATE) + 1 < 7 then NULL
                when DATEDIFF(h.END_DATE, h.START_DATE) + 1 < 30 then '7일 이상'	
                when DATEDIFF(h.END_DATE, h.START_DATE) + 1 < 90 then '30일 이상'
                else '90일 이상'
            end)
    where c.CAR_TYPE = '트럭'
    group by HISTORY_ID
    order by FEE desc, HISTORY_ID desc
