SELECT B.INGREDIENT_TYPE, SUM(A.TOTAL_ORDER) AS TOTAL_ORDER
FROM FIRST_HALF A JOIN ICECREAM_INFO B ON A.FLAVOR = B.FLAVOR
GROUP BY INGREDIENT_TYPE
ORDER BY TOTAL_ORDER


#각 아이스크림 성분 타입과 성분 타입에 대한 아이스크림의 총주문량을 
#---> 타입과 주문량 즉 SELECT문을 설명해주고있다

#총주문량이 작은 순서대로 조회하는 SQL 문을 작성
#---> 정렬방법에대해 설명해주고있다

#이때 총주문량을 나타내는 컬럼명은 TOTAL_ORDER로 지정해주세요.
#---> SELECT문의 총 주문량의 이름을 변경하라고 말해주고있다.
