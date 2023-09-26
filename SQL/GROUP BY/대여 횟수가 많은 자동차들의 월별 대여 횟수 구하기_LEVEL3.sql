SELECT MONTH(START_DATE) AS MONTH, CAR_ID, COUNT(*) AS RECORDS
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
WHERE DATE_FORMAT(START_DATE, "%Y-%m") BETWEEN "2022-08" AND "2022-10"
        AND CAR_ID IN (
            SELECT CAR_ID
            FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
            WHERE DATE_FORMAT(START_DATE, "%Y-%m") BETWEEN "2022-08" AND "2022-10"
            GROUP BY CAR_ID
            HAVING COUNT(*) >= 5
        )
GROUP BY CAR_ID, MONTH(START_DATE)
HAVING COUNT(*) != 0
ORDER BY MONTH, CAR_ID DESC


#CAR_RENTAL_COMPANY_RENTAL_HISTORY 테이블에서 
#---> FROM 테이블에대해 설명해주고있다.

#대여 시작일을 기준으로 2022년 8월부터 2022년 10월까지 총 대여 횟수가 5회 이상인 자동차들에 대해서 
#---> 첫번째 조건문을 설명해주고있다

#해당 기간 동안의 월별 자동차 ID 별 총 대여 횟수(컬럼명: RECORDS) 리스트를 출력하는 SQL문을 작성
#---> 그룹문이랑 출력해줘야하는 SELECT 부분을 설명해주고있다.

#결과는 월을 기준으로 오름차순 정렬하고, 월이 같다면 자동차 ID를 기준으로 내림차순 정렬해주세요. 
#---> 정렬 방법에 대하여 설명해주고있다

#특정 월의 총 대여 횟수가 0인 경우에는 결과에서 제외해주세요.
#---> 두번째 조건문을 설명해주고있다.

# 생각보다 구조짜는데에 쉽지가 않다 
# 서브쿼리도 생각해야하고 어떻게 그룹으로 묶을까 라는 생각도 들기도 했다
# 나도 작성하다 JOIN도 써보고 했지만 역시 이런 복잡한 문제는 안쪽부터 즉 서브쿼리부터 작성하는게 좀더 수월하다
# 일단 위에 문제 설명처럼 조건문은 WHERE이 될수도 있고 ON이 될수도 있고 HAVING이 될 수도 있으니 적절하게 삽입해야한다.

# 나는 먼저 첫번재 조건문에 해당하는 서브쿼리를 작성해서 구조를 잡아 갔다.
# 대여 시작일을 기준으로 2022년 8월부터 2022년 10월까지 총 대여 횟수가 5회 이상인 자동차 이부분을
# SELECT CAR_ID
# FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
# WHERE DATE_FORMAT(START_DATE, "%Y-%m") BETWEEN "2022-08" AND "2022-10"
# GROUP BY CAR_ID
# HAVING COUNT(*) >= 5
# 이렇게 말이다.

# 그리고 여기서 나온 CAR_ID에 해당하는 것을 IN으로 묶어 
# 두번째 조건문을 작성해 주었다.

#이렇게 서브쿼리부터 만들어가면 쉽게 작성할 수 있다. (BUT 자신에 안맞을 수도 있으니 자신에 맞는방법을 찾자)
