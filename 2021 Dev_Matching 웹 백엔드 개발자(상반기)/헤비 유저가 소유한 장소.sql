select a.ID as ID, a.NAME as NAME, a.HOST_ID as HOST_ID
    from PLACES a inner join (
        select HOST_ID
        from PLACES
        group by HOST_ID having count(ID) > 1
    ) b on (a.HOST_ID = b.HOST_ID)
    order by ID
