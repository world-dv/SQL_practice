select mp.MEMBER_NAME as MEMBER_NAME, rr.REVIEW_TEXT as REVIEW_TEXT, DATE_FORMAT(rr.REVIEW_DATE, '%Y-%m-%d') as REVIEW_DATE
    from
        (select MEMBER_ID, count(*) as cnt
            from REST_REVIEW
            group by MEMBER_ID
            order by cnt desc
        ) r inner join 
            (
                select max(cnt) as cnt from
                (
                    select count(*) as cnt
                    from REST_REVIEW
                    group by MEMBER_ID
                    order by cnt desc
                ) m
            ) mi on (r.cnt = mi.cnt)
        inner join REST_REVIEW rr on (rr.MEMBER_ID = r.MEMBER_ID)
        left join MEMBER_PROFILE mp on (mp.MEMBER_ID = r.MEMBER_ID)
    order by rr.REVIEW_DATE asc, rr.REVIEW_TEXT asc
