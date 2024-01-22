SELECT a.APNT_NO as APNT_NO, p.PT_NAME as PT_NAME, p.PT_NO as PT_NO, d.MCDP_CD as MCDP_CD, d.DR_NAME as DR_NAME, a.APNT_YMD as APNT_YMD
    from PATIENT p, DOCTOR d, APPOINTMENT a
    where (p.PT_NO = a.PT_NO and a.MDDR_ID = d.DR_ID)
        and (a.APNT_CNCL_YN = 'N' and a.APNT_CNCL_YMD is NULL)
        and DATE_FORMAT(a.APNT_YMD, '%Y-%m-%d') = '2022-04-13'
    order by APNT_YMD asc
    
