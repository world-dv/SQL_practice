SELECT r.FOOD_TYPE as FOOD_TYPE, r.REST_ID as REST_ID, r.REST_NAME as REST_NAME, r.FAVORITES as FAVORITES
    from REST_INFO r inner join (
        select FOOD_TYPE, max(FAVORITES) as FAVORITES from REST_INFO
        group by FOOD_TYPE
    ) as f on (r.FOOD_TYPE = f.FOOD_TYPE)
    where f.FAVORITES = r.FAVORITES
    group by r.FOOD_TYPE
    order by FOOD_TYPE desc
