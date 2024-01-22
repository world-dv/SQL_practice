SELECT substr(PRODUCT_CODE, 1, 2) as 'CATEGORY', COUNT(PRODUCT_ID) as 'PRODUCTS'
    from PRODUCT
    group by substr(PRODUCT_CODE, 1, 2)
    order by CATEGORY
