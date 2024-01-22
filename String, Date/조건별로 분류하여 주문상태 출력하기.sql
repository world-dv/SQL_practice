SELECT ORDER_ID, PRODUCT_ID, DATE_FORMAT(OUT_DATE, '%Y-%m-%d') as 'OUT_DATE', (
    case when DATEDIFF(DATE_FORMAT(OUT_DATE, '%Y-%m-%d'), '2022-05-01') > 0 then '출고대기'
        when DATEDIFF(DATE_FORMAT(OUT_DATE, '%Y-%m-%d'), '2022-05-01') <= 0 then '출고완료'
        when OUT_DATE is null then '출고미정'
    end
    ) as '출고여부'
    from FOOD_ORDER 
    order by ORDER_ID asc
