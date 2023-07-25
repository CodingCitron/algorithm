-- 코드를 입력하세요
SELECT MCDP_CD as '진료과코드', COUNT(MONTH(APNT_YMD)) as '5월예약건수'
FROM APPOINTMENT
WHERE MONTH(APNT_YMD) = 5 
GROUP BY MCDP_CD
ORDER BY COUNT(MONTH(APNT_YMD)) ASC, MCDP_CD ASC 