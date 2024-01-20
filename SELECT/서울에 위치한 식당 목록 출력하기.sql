SELECT i.REST_ID as REST_ID, i.REST_NAME as REST_NAME, i.FOOD_TYPE as FOOD_TYPE, i.FAVORITES as FAVORITES, i.ADDRESS as ADDRESS, round(avg(r.REVIEW_SCORE), 2) as SCORE
    from REST_INFO i inner join REST_REVIEW r on i.REST_ID = r.REST_ID
    where i.ADDRESS like ('서울%')
    group by REST_ID
    order by SCORE desc, FAVORITES desc
