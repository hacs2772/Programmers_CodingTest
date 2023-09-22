SELECT A.CAR_ID, A.CAR_TYPE, ROUND(A.DAILY_FEE * 30 * (100-B.DISCOUNT_RATE)/100,0) AS FEE
FROM CAR_RENTAL_COMPANY_CAR A
    JOIN (SELECT * 
          FROM CAR_RENTAL_COMPANY_DISCOUNT_PLAN 
          WHERE DURATION_TYPE = '30일 이상') B ON A.CAR_TYPE = B.CAR_TYPE
WHERE A.CAR_TYPE IN ("세단","SUV")
    AND A.CAR_ID NOT IN (SELECT CAR_ID 
                        FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY 
                        WHERE END_DATE >= '2022-11-01' AND START_DATE < '2022-12-01')
GROUP BY A.CAR_ID
HAVING FEE BETWEEN 500000 AND 2000000
ORDER BY FEE DESC, CAR_TYPE ASC, CAR_ID DESC


#CAR_RENTAL_COMPANY_CAR 테이블과 CAR_RENTAL_COMPANY_RENTAL_HISTORY 테이블과 CAR_RENTAL_COMPANY_DISCOUNT_PLAN 테이블에서 
#---> FROM에 나올 3개의 테이블을 설명해주고있다

#자동차 종류가 '세단' 또는 'SUV' 인 자동차 중 
#---> 1번째 조건을 설명해주고있다

#2022년 11월 1일부터 2022년 11월 30일까지 대여 가능하고 
#---> 2번째 조건을 설명해주고있다

#30일간의 대여 금액이 50만원 이상 200만원 미만인 자동차에 대해서 
#---> 3번째 조건을 설명해주고있다

#자동차 ID, 자동차 종류, 대여 금액(컬럼명: FEE) 리스트를 출력
#---> SELECT문을 설명해주고있다

#결과는 대여 금액을 기준으로 내림차순 정렬하고, 대여 금액이 같은 경우 자동차 종류를 기준으로 오름차순 정렬, 자동차 종류까지 같은 경우 자동차 ID를 기준으로 내림차순 정렬해주세요.
#---> 정렬방법을 설명해주고있다
