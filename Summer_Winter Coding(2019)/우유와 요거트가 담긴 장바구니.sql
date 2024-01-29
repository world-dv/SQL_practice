select a.CART_ID as CART_ID 
    from (   
        select distinct CART_ID from CART_PRODUCTS
            where NAME = 'Yogurt'
    ) a inner join (
        select distinct CART_ID from CART_PRODUCTS
            where NAME = 'Milk'
    ) b on (a.CART_ID = b.CART_ID)
    group by CART_ID 
    order by CART_ID
