-- 코드를 입력하세요
SELECT a.APNT_NO, (SELECT PT_NAME FROM PATIENT WHERE PT_NO = a.PT_NO) as PT_NAME, a.PT_NO, a.MCDP_CD, d.DR_NAME, a.APNT_YMD
FROM DOCTOR d
INNER JOIN APPOINTMENT a ON d.DR_ID = a.MDDR_ID 
WHERE YEAR(a.APNT_YMD) = '2022' AND MONTH(a.APNT_YMD) = '4' AND DAY(a.APNT_YMD) = '13' AND a.APNT_CNCL_YN = 'N' AND a.MCDP_CD = 'CS'
ORDER BY APNT_YMD ASC