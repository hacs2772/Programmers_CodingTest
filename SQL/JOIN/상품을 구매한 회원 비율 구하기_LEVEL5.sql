SELECT  DATE_FORMAT(A.JOINED, "%Y") AS YEAR, 
        DATE_FORMAT(A.JOINED, "%c") AS MONTH, 
        SUM(B.SALES_AMOUNT) AS PUCHASED_USERS,
        FORMAT(AVG(B.SALES_AMOUNT),2) AS PUCHASED_RATIO
        
FROM    USER_INFO A JOIN ONLINE_SALE B ON A.USER_ID = B.USER_ID

WHERE   DATE_FORMAT(A.JOINED, "%Y") = "2021"

    GROUP BY    DATE_FORMAT(A.JOINED, "%c")

    ORDER BY    YEAR,
                MONTH
                
# USER_INFO 테이블과 ONLINE_SALE 테이블에서
# 2021년에 가입한 전체 회원들 중 상품을 구매한 회원수와
# 상품을 구매한 회원의 비율(=2021년에 가입한 회원 중 상품을 구매한 회원수 / 2021년에 가입한 전체 회원 수)을 

# 년, 월 별로 출력하는 SQL문을 작성해주세요. 

# 상품을 구매한 회원의 비율은 소수점 두번째자리에서 반올림하고, 

# 년을 기준으로 오름차순, 월을 기준으로 오름차순
