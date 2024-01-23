SELECT YEAR(os.SALES_DATE) as YEAR, MONTH(os.SALES_DATE) as MONTH, u.GENDER as GENDER, COUNT(distinct u.USER_ID) as USERS
    from ONLINE_SALE os join USER_INFO u on (os.USER_ID = u.USER_ID)
    where u.GENDER is not null
    group by YEAR(os.SALES_DATE), MONTH(os.SALES_DATE), u.GENDER
    order by YEAR, MONTH, GENDER
