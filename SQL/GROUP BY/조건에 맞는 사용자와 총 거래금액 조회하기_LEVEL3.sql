SELECT *
FROM
(
    SELECT USER_ID, NICKNAME, SUM(PRICE) AS TOTAL_SALES
    FROM USED_GOODS_BOARD A
    JOIN USED_GOODS_USER B ON A.WRITER_ID = B.USER_ID
    WHERE STATUS = 'DONE'
    GROUP BY USER_ID, NICKNAME, STATUS
) AS XXX
WHERE TOTAL_SALES >= 700000
ORDER BY TOTAL_SALES



#USED_GOODS_BOARD와 USED_GOODS_USER 테이블에서 
#---> FROM 테이블을 보여주고있다.

#완료된 중고 거래의 총금액이 70만 원 이상인 사람의 
#---> 조건문을 보여주고있다.

#회원 ID, 닉네임, 총거래금액을 조회하는 SQL문을 작성
#---> SELECT 부분을 보여주고있다.

#결과는 총거래금액을 기준으로 오름차순 정렬해주세요.
#---> 정렬방법에대해 설명해주고있다.
