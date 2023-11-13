SELECT USER_ID, 
    NICKNAME, 
    CONCAT(CITY," " ,STREET_ADDRESS1," " ,STREET_ADDRESS2) AS "전체주소",
    CONCAT(
        SUBSTRING(TLNO, 1, 3),
        '-',
        SUBSTRING(TLNO, 4, 4),
        '-',
        SUBSTRING(TLNO, 8)
    ) AS "전화번호"
FROM USED_GOODS_BOARD A JOIN USED_GOODS_USER B ON WRITER_ID = USER_ID
GROUP BY USER_ID
HAVING COUNT(*) >= 3
ORDER BY USER_ID DESC

#USED_GOODS_BOARD와 USED_GOODS_USER 테이블에서 
#---> FORM에 나올 2 테이블을 설명해주고있다.
#중고 거래 게시물을 3건 이상 등록한 
#---> 조건문을 설명해주고있다.
#사용자의 사용자 ID, 닉네임, 전체주소, 전화번호를 조회하는 SQL문을 작성해주세요. 
#---> SELECT에 표시해줄 컬럼들을 설명해주고있다.
#이때, 전체 주소는 시, 도로명 주소, 상세 주소가 함께 출력되도록 해주시고, 
#---> 출력방법에대해 설명해주고있다.
#전화번호의 경우 xxx-xxxx-xxxx 같은 형태로 하이픈 문자열(-)을 삽입하여 출력해주세요.
#---> SELECT에 표시해줄 FORMAT을 말해주고있다.
#결과는 회원 ID를 기준으로 내림차순 정렬해주세요.
#---> 정렬방법에대해 설명해주고있다.
