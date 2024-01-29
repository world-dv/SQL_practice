select year(o.SALES_DATE) as YEAR, month(o.SALES_DATE) as MONTH, count(distinct o.USER_ID) as PUCHASED_USERS, round(count(distinct i.USER_ID) / (
    select count(USER_ID)
        from USER_INFO
        where DATE_FORMAT(JOINED, '%Y') = '2021'
    ), 1) as PUCHASED_RATIO
    from ONLINE_SALE o
    inner join (
        select USER_ID
        from USER_INFO
        where DATE_FORMAT(JOINED, '%Y') = '2021'
    ) i on (o.USER_ID = i.USER_ID)
    group by YEAR, MONTH
    order by YEAR, MONTH
