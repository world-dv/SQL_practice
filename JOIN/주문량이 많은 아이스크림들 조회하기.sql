SELECT f.FLAVOR as FLAVOR
    from FIRST_HALF f inner join (
        select FLAVOR, sum(TOTAL_ORDER) total from JULY
            group by FLAVOR
    ) as j on (f.FLAVOR = j.FLAVOR)
    order by j.total + f.TOTAL_ORDER desc
    limit 3
