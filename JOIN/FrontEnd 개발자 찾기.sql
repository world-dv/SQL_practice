select distinct d.ID, d.EMAIL, d.FIRST_NAME, d.LAST_NAME
    from DEVELOPERS d
    right join SKILLCODES s 
        on s.CODE & d.SKILL_CODE and s.CATEGORY = 'Front End'
    where d.ID is not null
    order by ID
