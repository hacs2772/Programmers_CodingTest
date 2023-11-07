SELECT DISTINCT CART_ID
FROM CART_PRODUCTS
WHERE CART_ID IN (
    SELECT CART_ID
    FROM CART_PRODUCTS
    WHERE NAME = 'MILK'
) AND CART_ID IN (
    SELECT CART_ID
    FROM CART_PRODUCTS
    WHERE NAME = 'Yogurt'
)

#데이터 분석 팀에서는 우유(Milk)와 요거트(Yogurt)를 동시에 구입한 장바구니가 있는지 알아보려 합니다. 
#---> 문제 목표를 설명하고있다.
#우유와 요거트를 동시에 구입한 장바구니의 
#---> 조건문을 설명해주고있다.
#아이디를 조회하는 SQL 문을 작성해주세요. 
#---> 출력부분을 설명해주고있다.
#이때 결과는 장바구니의 아이디 순으로 나와야 합니다.
#---> 정렬방법에대해 설명해주고있다.

#이 문제는 ID는 다르지만 CART_ID가 같은 경우 출력해줘야하기에 두가지 조건이 일치하는 CART_ID값을 호출하고 당연 호출한 값은 조건이 2개이기에 2개의 CART_ID로 나올테니 DISTINCT로 중복제거를 시켜준 모습이다.
