SELECT b.CATEGORY as CATEGORY, sum(bs.SALES) as TOTAL_SALES
    from BOOK_SALES bs left join BOOK b on (bs.BOOK_ID = b.BOOK_ID)
    where DATE_FORMAT(SALES_DATE, '%Y-%m') = '2022-01'
    group by b.CATEGORY
    order by CATEGORY
