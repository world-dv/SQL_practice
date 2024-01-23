SELECT floor(PRICE / 10000) * 10000 as PRICE_GROUP, count(PRODUCT_ID) as PRODUCTS
    from PRODUCT
    group by floor(PRICE / 10000)
    order by PRICE_GROUP asc
