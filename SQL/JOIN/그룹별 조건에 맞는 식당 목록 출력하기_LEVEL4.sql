SELECT A.MEMBER_NAME, B.REVIEW_TEXT, DATE_FORMAT(B.REVIEW_DATE, "%Y-%m-%d") AS REVIEW_DATE
FROM MEMBER_PROFILE A
JOIN REST_REVIEW B ON A.MEMBER_ID = B.MEMBER_ID
WHERE A.MEMBER_NAME = (
  SELECT MEMBER_NAME
  FROM (
    SELECT A.MEMBER_NAME, SUM(B.REVIEW_SCORE) AS SUM_REVIEW_SCORE
    FROM MEMBER_PROFILE A
    JOIN REST_REVIEW B ON A.MEMBER_ID = B.MEMBER_ID
    GROUP BY A.MEMBER_NAME
    ORDER BY SUM_REVIEW_SCORE DESC
    LIMIT 1
  ) AS temp
)
ORDER BY REVIEW_DATE, REVIEW_TEXT

#MEMBER_PROFILE와 REST_REVIEW 테이블에서 
#---> FROM문에서 JOIN할 2 테이블을 보여주고 있다

#리뷰를 가장 많이 작성한 회원의 
#---> 조건문을 보여주고있다

#리뷰들을 조회하는 SQL문을 작성
#---> 위에 조건문을 만족하는 사람의 리뷰만 보여주라고 말해주고 있다(조건의 조건)

#회원 이름, 리뷰 텍스트, 리뷰 작성일이 출력되도록 작성해주시고, 
#---> SELECT문을 보여주고있다

#결과는 리뷰 작성일을 기준으로 오름차순, 리뷰 작성일이 같다면 리뷰 텍스트를 기준으로 오름차순 정렬해주세요.
#---> 정렬방법에대해 보여주고 있다
