SELECT A.PRODUCT_ID, A.PRODUCT_NAME, SUM(A.PRICE * B.AMOUNT) AS TOTAL_SALES
FROM FOOD_PRODUCT A JOIN FOOD_ORDER B ON A.PRODUCT_ID = B.PRODUCT_ID
WHERE B.PRODUCE_DATE LIKE CONCAT("2022-05","%")
GROUP BY PRODUCT_ID
ORDER BY TOTAL_SALES DESC, PRODUCT_ID

#FOOD_PRODUCT와 FOOD_ORDER 테이블에서 
#---> FROM테이블에서 조인할 두 테이블을 알려주고있다

#생산일자가 2022년 5월인 식품들의 
#---> 조건문을 알려주고있다

#식품 ID, 식품 이름, 총매출을 조회하는 SQL문
#---> SELECT문을 알려주고 있다

#이때 결과는 총매출을 기준으로 내림차순 정렬해주시고 총매출이 같다면 식품 ID를 기준으로 오름차순 정렬해주세요.
#---> 정렬방법을 설명해 주고있다.
