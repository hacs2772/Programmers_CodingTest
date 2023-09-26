SELECT FOOD_TYPE, REST_ID, REST_NAME, FAVORITES
FROM REST_INFO 
WHERE (FOOD_TYPE,FAVORITES) IN (
    SELECT FOOD_TYPE, MAX(FAVORITES)
    FROM REST_INFO
    GROUP BY FOOD_TYPE
    )
ORDER BY FOOD_TYPE DESC


#REST_INFO 테이블에서 
#---> FROM테이블을 보여주고있다.

#음식종류별로 즐겨찾기수가 가장 많은 식당의 
#---> 조건문을 말해주고있다.

#음식 종류, ID, 식당 이름, 즐겨찾기수를 조회
#---> SELECT문을 말해주고있다.

#이때 결과는 음식 종류를 기준으로 내림차순 정렬해주세요.
#---> 정렬방법에대해 설명해주고있다.
