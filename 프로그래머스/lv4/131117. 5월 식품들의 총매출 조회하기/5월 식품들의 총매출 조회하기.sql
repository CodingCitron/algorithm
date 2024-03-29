-- 코드를 입력하세요
SELECT FP.PRODUCT_ID, FP.PRODUCT_NAME, (FP.PRICE * SUM(FO.AMOUNT)) as TOTAL_SALES
FROM FOOD_PRODUCT FP
JOIN FOOD_ORDER FO ON FP.PRODUCT_ID = FO.PRODUCT_ID
WHERE YEAR(FO.PRODUCE_DATE) = 2022 AND MONTH(FO.PRODUCE_DATE) = 5
GROUP BY FP.PRODUCT_ID
ORDER BY  (FP.PRICE * SUM(FO.AMOUNT)) DESC, FP.PRODUCT_ID ASC
