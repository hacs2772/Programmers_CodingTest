SELECT ROUND(AVG(DAILY_FEE),0) AS AVERAGE_FEE
FROM CAR_RENTAL_COMPANY_CAR
WHERE CAR_TYPE = "SUV"


#CAR_RENTAL_COMPANY_CAR 테이블에서 
#---> FROM 테이블을 설명해주고있다
#자동차 종류가 'SUV'인 자동차들의 
#---> 조건문을 설명해주고있다.
#평균 일일 대여 요금을 출력
#---> SELECT문을 설명해 주고있다.
#이때 평균 일일 대여 요금은 소수 첫 번째 자리에서 반올림하고, 컬럼명은 AVERAGE_FEE 로 지정해주세요.
#---> SELECT문에서 자세한 상황을 설명해 주고있다.(데이터 변환)
