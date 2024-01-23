SELECT f.CATEGORY as CATEGORY, f.PRICE as MAX_PRICE, f.PRODUCT_NAME
    from FOOD_PRODUCT f left join (
        select CATEGORY, max(PRICE) as PRICE from FOOD_PRODUCT 
        where CATEGORY in ('과자', '국', '김치', '식용유')
        group by CATEGORY
    ) as fp on (f.CATEGORY = fp.CATEGORY)
    where f.PRICE = fp.PRICE
    order by MAX_PRICE desc
