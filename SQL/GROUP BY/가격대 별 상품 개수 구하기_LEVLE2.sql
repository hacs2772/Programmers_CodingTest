SELECT TRUNCATE(PRICE, -4) AS PRICE_GROUP, COUNT(1) AS PRODUCTS
FROM PRODUCT
GROUP BY PRICE_GROUP
ORDER BY PRICE_GROUP


#PRODUCT 테이블에서 
#---> FROM에 올 테이블을 설명해주고있다.
#만원 단위의 가격대 별로 상품 개수를 출력
#---> 보여줄 데이터를 설명해주고있다.(만원단위)
#이때 컬럼명은 각각 컬럼명은 PRICE_GROUP, PRODUCTS로 지정해주시고 
#---> SELECT에서 보여줄 컬럼명을 설명해주고있다.
#가격대 정보는 각 구간의 최소금액(10,000원 이상 ~ 20,000 미만인 구간인 경우 10,000)으로 표시해주세요. 
#---> 보여줄 데이터를 설명해주고있다.
#결과는 가격대를 기준으로 오름차순 정렬해주세요.
#---> 정렬방법에대해 설명해주고있다.

# 기존에 사용했던 ROUND는 반올림을 한다면 TRUNCATE는 내림을 수행하는 함수이다.
# 물론 TRUNCATE말고도 다른 방법으로 문제를 풀 수 있다.
# 예를들면 소수점을 그냥 삭제시키는 함수인 FLOOR을 이용하여
# FLOOR(PRICE / 10000) * 10000 이렇게 풀이하면 내림이 된다 (대신 이번문제에선 이렇게 사용하면 쫌 지저분해보임)
# 이렇게 내림방법만 안다면 손쉽게 풀 수 있는 문제였다.
