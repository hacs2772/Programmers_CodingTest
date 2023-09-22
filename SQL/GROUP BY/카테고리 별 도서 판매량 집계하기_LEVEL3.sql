SELECT A.CATEGORY, SUM(SALES) AS TOTAL_SALES
FROM BOOK A JOIN BOOK_SALES B ON A.BOOK_ID = B.BOOK_ID
WHERE B.SALES_DATE LIKE "2022-01%"
GROUP BY CATEGORY
ORDER BY CATEGORY

#2022년 1월의 
#---> 조건을 알려주고있다

#카테고리 별 도서 판매량을 합산하고, 
#---> SELECT에서 데이터를 가공시키는 방법을 알려주고있다

#카테고리(CATEGORY), 총 판매량(TOTAL_SALES) 리스트를 출력
#---> SELECT문을 보여주고있다(가공시킨 데이터는 총 판매량 이다)

#결과는 카테고리명을 기준으로 오름차순 정렬해주세요.
#---> 정렬방법에대해 보여주고 있다.
