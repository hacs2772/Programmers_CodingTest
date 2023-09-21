SELECT USER_ID, PRODUCT_ID
FROM ONLINE_SALE
GROUP BY USER_ID, PRODUCT_ID
HAVING COUNT(*) > 1
ORDER BY USER_ID, PRODUCT_ID DESC


#ONLINE_SALE 테이블에서 
#---> FROM테이블을 보여주고있다

#동일한 회원이 동일한 상품을 재구매한 데이터를 구하여, 
#---> 조건문을 설명해주고있다.

#재구매한 회원 ID와 재구매한 상품 ID를 출력
#---> SELECT문을 설명해주고있다

#결과는 회원 ID를 기준으로 오름차순 정렬해주시고 회원 ID가 같다면 상품 ID를 기준으로 내림차순 정렬해주세요.
#---> 정렬방법을 설명해주고있다.
