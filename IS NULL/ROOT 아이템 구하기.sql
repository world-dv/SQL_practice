select t.ITEM_ID as ITEM_ID, f.ITEM_NAME as ITEM_NAME
    from ITEM_TREE t
    inner join ITEM_INFO f on (t.ITEM_ID = f.ITEM_ID)
    where t.PARENT_ITEM_ID is NULL
    order by ITEM_ID
