SELECT f.FLAVOR as FLAVOR
    from FIRST_HALF f, ICECREAM_INFO i
    where f.TOTAL_ORDER >= 3000 and i.INGREDIENT_TYPE = 'fruit_based'
        and f.FLAVOR = i.FLAVOR
    order by f.TOTAL_ORDER desc
