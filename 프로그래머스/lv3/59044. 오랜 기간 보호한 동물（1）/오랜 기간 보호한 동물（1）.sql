-- 코드를 입력하세요
SELECT AB.NAME, AB.DATETIME FROM ANIMAL_INS AB
WHERE AB.ANIMAL_ID NOT IN (SELECT A.ANIMAL_ID
FROM ANIMAL_OUTS A
JOIN ANIMAL_INS B ON A.ANIMAL_ID = B.ANIMAL_ID) 
ORDER BY DATETIME ASC
LIMIT 3