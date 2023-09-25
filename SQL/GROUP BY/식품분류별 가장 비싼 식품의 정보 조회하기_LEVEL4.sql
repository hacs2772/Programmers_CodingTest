SELECT CATEGORY, PRICE AS MAX_PRICE, PRODUCT_NAME
FROM FOOD_PRODUCT
WHERE PRICE IN (SELECT MAX(PRICE) FROM FOOD_PRODUCT GROUP BY CATEGORY)
                AND CATEGORY IN ('과자', '국', '김치','식용유')
GROUP BY CATEGORY
ORDER BY PRICE DESC

#FOOD_PRODUCT 테이블에서 
#---> FROM 테이블을 설명해주고있다.

#식품분류별로 가격이 제일 비싼 식품의 
#---> 조건문을 설명해주고있다.

#분류, 가격, 이름을 조회하는 SQL문을 작성
#---> SELECT문을 설명해주고있다.

#이때 식품분류가 '과자', '국', '김치', '식용유'인 경우만 출력
#---> 조건문을 설명해주고있다.

#결과는 식품 가격을 기준으로 내림차순 정렬해주세요.
#---> 정렬방법에대해 설명해주고있다.

#서브쿼리로 조건을 설정해 줘야지 조건에 맞는 행이 나오게 된다
