select fo.PRODUCT_ID as PRODUCT_ID, fi.PRODUCT_NAME as PRODUCT_NAME, fi.PRICE * sum(fo.AMOUNT) as TOTAL_SALES
        from FOOD_ORDER fo inner join (
            select PRODUCT_ID, PRODUCT_NAME, PRICE
                from FOOD_PRODUCT
        ) fi on (fo.PRODUCT_ID = fi.PRODUCT_ID)
        where DATE_FORMAT(fo.PRODUCE_DATE, '%Y-%m') = '2022-05'
        group by PRODUCT_ID
        order by TOTAL_SALES desc, PRODUCT_ID asc
