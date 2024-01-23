SELECT u.USER_ID as USER_ID, u.NICKNAME as NICKNAME, sum(g.PRICE) as TOTAL_SALES
    from USED_GOODS_BOARD g left join USED_GOODS_USER u on (g.WRITER_ID = u.USER_ID)
    where g.STATUS = 'DONE'
    group by u.USER_ID having sum(g.PRICE) >= 700000
    order by TOTAL_SALES asc
    
