SELECT A.PRODUCT_CODE, SUM(A.PRICE * B.SALES_AMOUNT) AS SALES
FROM PRODUCT A JOIN OFFLINE_SALE B ON A.PRODUCT_ID = B.PRODUCT_ID
GROUP BY A.PRODUCT_CODE
ORDER BY SALES DESC, PRODUCT_CODE ASC


#PRODUCT 테이블과 OFFLINE_SALE 테이블에서 
#--->FROM 절을 나타내 준다.

#상품코드 별 매출액(판매가 * 판매량) 합계를 출력
#--->출력이니 당연 SELECT문에서 나타내 줘야한다. 합계니 SUM을 이용한다. 그러나 서로다른 테이블에 있는 값을 곱하고 그 곱한 값들이 맞는 ID값에 따라 합을 구하는 것이니 무작정 SUM만하면 안되고 GROUP BY를 사용하여 CODE가 같은 값끼리 묶어서 SUM을 해줘야한다. 고로 조건은 맞는데 WHERE절을 사용하는 것이 아니다.


#결과는 매출액을 기준으로 내림차순 정렬, 매출액이 같다면 상품코드를 기준으로 오름차순 정렬
#---> 대표적으로 정렬을 표현해 준다 본문에 ASC는 그냥 심심해서 넣었다. 생략해도 된다.
