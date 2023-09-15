SELECT DATE_FORMAT(SALES_DATE, '%Y-%m-%d') AS SALES_DATE, PRODUCT_ID, USER_ID, SALES_AMOUNT
FROM (
   SELECT SALES_DATE, PRODUCT_ID, USER_ID, SALES_AMOUNT
   FROM ONLINE_SALE
       UNION ALL
   SELECT SALES_DATE, PRODUCT_ID, NULL AS USER_ID, SALES_AMOUNT
   FROM OFFLINE_SALE
   ) A
   WHERE SALES_DATE LIKE CONCAT("2022-03", "%") 
ORDER BY SALES_DATE, PRODUCT_ID, USER_ID


#ONLINE_SALE 테이블과 OFFLINE_SALE 테이블에서 
#---> FROM 테이블을 알려주고있다.
#2022년 3월의 
#---> WHERE 조건문을 알려주고있다.
#오프라인/온라인 상품 판매 데이터의 판매 날짜, 상품ID, 유저ID, 판매량을 출력
#--->SELECT문을 알려주고있다.
#OFFLINE_SALE 테이블의 판매 데이터의 USER_ID 값은 NULL 로 표시
#--->SELECT 조건문을 말해주고있다.
#판매일을 기준으로 오름차순 정렬해주시고 판매일이 같다면 상품 ID를 기준으로 오름차순, 상품ID까지 같다면 유저 ID를 기준으로 오름차순 정렬해주세요.
#--->정렬방법에대해 알려주고있다.
