-- https://school.programmers.co.kr/learn/courses/30/lessons/144855

SELECT BOOK.CATEGORY, SUM(BOOK_SALES.SALES) AS TOTAL_SALES
FROM BOOK
INNER JOIN BOOK_SALES
ON BOOK.BOOK_ID = BOOK_SALES.BOOK_ID
WHERE YEAR(BOOK_SALES.SALES_DATE) = 2022 AND MONTH(BOOK_SALES.SALES_DATE) = 1
GROUP BY BOOK.CATEGORY
ORDER BY BOOK.CATEGORY ASC