SELECT MCDP_CD AS "진료과 코드", COUNT(1) AS "5월예약건수"
FROM APPOINTMENT
WHERE APNT_YMD LIKE CONCAT("2022-05","%")
GROUP BY MCDP_CD
ORDER BY COUNT(1), MCDP_CD

#APPOINTMENT 테이블에서 
#---> FROM에 들어갈 테이블을 설명해주고있다.

#2022년 5월에 예약한 
#---> 조건문을 설명해주고있다

#환자 수를 진료과코드 별로 조회하는 SQL문을 작성
#---> SELECT에 들어갈 컬럼을 설명해주고있다.

#이때, 컬럼명은 '진료과 코드', '5월예약건수'로 지정해주시고 
#---> AS로 나타낼 것들을 설명해주고있다.

#결과는 진료과별 예약한 환자 수를 기준으로 오름차순 정렬하고, 예약한 환자 수가 같다면 진료과 코드를 기준으로 오름차순 정렬
#---> 정렬방법에대해 설명해주고있다.
