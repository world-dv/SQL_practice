SELECT p.PRODUCT_CODE as PRODUCT_CODE, sum(p.PRICE * o.SALES_AMOUNT) as SALES
    from OFFLINE_SALE o left join PRODUCT p on (o.PRODUCT_ID = p.PRODUCT_ID)
    group by p.PRODUCT_CODE
    order by SALES desc, PRODUCT_CODE asc
