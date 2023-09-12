SELECT WAREHOUSE_ID, WAREHOUSE_NAME, ADDRESS, IF(FREEZER_YN IS NULL,  "N", FREEZER_YN) AS FREEZER_YN
FROM FOOD_WAREHOUSE
WHERE ADDRESS LIKE CONCAT("경기도", "%")
ORDER BY WAREHOUSE_NAME


#FOOD_WAREHOUSE 테이블에서 경기도에 위치한 창고의
#---> 경기도에 위치한거라니까 첫번째 조건이다.

#ID, 이름, 주소, 냉동시설 여부를 조회하는 SQL문을 작성 
#---> 어떤것을 표시해 줘야하는지 SELECT 부분을 알려주고있다.

#이때 냉동시설 여부가 NULL인 경우, 'N'으로 출력
#---> IF조건문을 말해주고있다.

#결과는 창고 ID를 기준으로 오름차순 정렬해주세요.
#---> ORDER BY 를 알려주고있다.
