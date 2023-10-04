SELECT YEAR(B.SALES_DATE) AS YEAR, MONTH(B.SALES_DATE) AS MONTH, GENDER, COUNT(DISTINCT B.USER_ID) AS USERS
FROM USER_INFO A INNER JOIN ONLINE_SALE B ON A.USER_ID = B.USER_ID	
GROUP BY YEAR, MONTH, GENDER
HAVING A.GENDER IS NOT NULL
ORDER BY YEAR, MONTH, GENDER 

#USER_INFO 테이블과 ONLINE_SALE 테이블에서 
#---> FROM에 나올 테이블을 설명해주고있다.
#년, 월, 성별 별로 상품을 구매한 회원수를 집계하는 SQL문을 작성
#---> SELECT문에 나올 것들을 설명해 주고있다.
#결과는 년, 월, 성별을 기준으로 오름차순 정렬해주세요. 
#---> 정렬방법에대해 설명해 주고있다.
#이때, 성별 정보가 없는 경우 결과에서 제외해주세요.
#---> 조건문을 설명해 주고있다.
