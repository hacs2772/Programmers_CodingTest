SELECT ORDER_ID, PRODUCT_ID, DATE_FORMAT(OUT_DATE, "%Y-%m-%d") AS OUT_DATE, 
    CASE
        WHEN OUT_DATE IS NULL THEN "출고미정"
        WHEN OUT_DATE < '2022-05-02' THEN "출고완료"
        ELSE "출고대기"
    END AS "출고여부"
FROM FOOD_ORDER
ORDER BY ORDER_ID

#FOOD_ORDER 테이블에서 
#---> FROM에 나올 테이블을 설명해주고있다.
#5월 1일을 기준으로 
#---> 조건을 설명해주고있다.
#주문 ID, 제품 ID, 출고일자, 출고여부를 조회하는 SQL문을 작성해주세요. 
#---> SELECT에 나와야할 컬럼들을 설명해주고있다.
#출고여부는 5월 1일까지 출고완료로 
#---> 위에 나왔던 조건의 자세한 부분이다.
#이 후 날짜는 출고 대기로 미정이면 출고미정으로 출력해주시고, 
#---> 출력해줄 조건문을 설명해주고있다. 
#결과는 주문 ID를 기준으로 오름차순 정렬해주세요.
#---> 정렬방법에대해 설명해주고있다.
