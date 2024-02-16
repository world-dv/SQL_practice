select i.ITEM_ID as ITEM_ID, i.ITEM_NAME as ITEM_NAME, i.RARITY as RARITY
    from ITEM_INFO i
    inner join (
        select t.ITEM_ID as ITEM_ID
            from ITEM_TREE t
            inner join (
                select ITEM_ID from ITEM_INFO where RARITY = 'RARE'
            ) item on (t.PARENT_ITEM_ID = item.ITEM_ID)
            where t.PARENT_ITEM_ID is not NULL 
    ) s on (s.ITEM_ID = i.ITEM_ID)
    order by ITEM_ID desc
