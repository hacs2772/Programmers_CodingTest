SELECT CAR_ID, 
       CASE
           WHEN START_DATE <= '2022-10-16' AND END_DATE >= '2022-10-16' THEN '대여중'
           ELSE '대여 가능'
       END AS AVAILABILITY
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
WHERE START_DATE <= '2022-10-16' AND END_DATE >= '2022-10-16'
UNION
SELECT DISTINCT CAR_ID, '대여 가능' AS AVAILABILITY
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
WHERE CAR_ID NOT IN (
    SELECT CAR_ID
    FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
    WHERE START_DATE <= '2022-10-16' AND END_DATE >= '2022-10-16'
)
ORDER BY CAR_ID DESC

#CAR_RENTAL_COMPANY_RENTAL_HISTORY 테이블에서 
#---> FROM 테이블을 보여주고있다.
#2022년 10월 16일에 대여 중인 자동차인 경우 '대여중' 이라고 표시하고, 
#---> 조건문을 표시해주고있다.
#대여 중이지 않은 자동차인 경우 '대여 가능'을 표시하는 컬럼(컬럼명: AVAILABILITY)을 추가하여 
#---> 조건문2를 표시해주고있다.
#자동차 ID와 AVAILABILITY 리스트를 출력하는 SQL문을 작성해주세요. 
#---> SELECT문을 표시해주고있다.
#이때 반납 날짜가 2022년 10월 16일인 경우에도 '대여중'으로 표시해주시고 
#---> 출력을 변환해주는걸 표시해주고 있다.
#결과는 자동차 ID를 기준으로 내림차순 정렬해주세요.
#---> 정렬방법에대해 설명해주고있다.
