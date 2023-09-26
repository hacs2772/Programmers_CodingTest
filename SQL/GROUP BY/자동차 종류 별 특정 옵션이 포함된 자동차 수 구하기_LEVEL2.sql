SELECT CAR_TYPE, COUNT(*) AS CARS
FROM CAR_RENTAL_COMPANY_CAR
WHERE OPTIONS REGEXP '통풍시트|열선시트|가죽시트'
GROUP BY CAR_TYPE
ORDER BY CAR_TYPE

#CAR_RENTAL_COMPANY_CAR 테이블에서 
#---> FROM 테이블을 보여주고있다.

#'통풍시트', '열선시트', '가죽시트' 중 하나 이상의 옵션이 포함된 자동차가 
#---> 조건문을 설명해주고있다.

#자동차 종류 별로 몇 대인지 출력하는 SQL문을 작성
#---> 출력쪽인 SELECT를 설명해주고있다.

#이때 자동차 수에 대한 컬럼명은 CARS로 지정하고, 
#---> SELECT에서 컬러명을 변경하라고 설명하고있다.

#결과는 자동차 종류를 기준으로 오름차순 정렬해주세요.
#---> 정렬방법에대해 설명해주고 있다.
