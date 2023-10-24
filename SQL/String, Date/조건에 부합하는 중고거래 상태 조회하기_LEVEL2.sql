SELECT BOARD_ID, WRITER_ID, TITLE, PRICE, 
    CASE
        WHEN STATUS = "SALE" THEN "판매중"
        WHEN STATUS = "RESERVED" THEN "예약중"
        WHEN STATUS = "DONE" THEN "거래완료"
    END AS STATUS
FROM USED_GOODS_BOARD
WHERE DATE(CREATED_DATE) = '2022-10-05'
ORDER BY BOARD_ID DESC

# USED_GOODS_BOARD 테이블에서 
#---> FROM 에 들어갈 테이블을 설명해주고있다.
# 2022년 10월 5일에 등록된 중고거래 게시물의 
#---> 조건문을 설명해주고있다.
#게시글 ID, 작성자 ID, 게시글 제목, 가격, 거래상태를 조회하는 SQL문을 작성
#---> SELECT에 들어갈 컬럼들을 설명해주고있다.
# 거래상태가 SALE 이면 판매중, RESERVED이면 예약중, DONE이면 거래완료 분류하여 출력해주시고, 
#---> 데이터 표시형식을 설명해주고있다.
# 결과는 게시글 ID를 기준으로 내림차순 정렬해주세요.
#---> 정렬방법에대해 설명해주고있다.
