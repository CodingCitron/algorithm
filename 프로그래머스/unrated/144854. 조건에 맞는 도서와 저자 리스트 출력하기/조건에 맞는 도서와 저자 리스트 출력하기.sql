-- 코드를 입력하세요
SELECT B.BOOK_ID, A.AUTHOR_NAME, DATE_FORMAT(B.PUBLISHED_DATE, '%Y-%m-%d')
FROM AUTHOR A
JOIN BOOK B ON A.AUTHOR_ID = B.AUTHOR_ID
WHERE B.CATEGORY LIKE '경제'
ORDER BY B.PUBLISHED_DATE ASC