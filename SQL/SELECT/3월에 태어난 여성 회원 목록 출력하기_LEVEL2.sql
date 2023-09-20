SELECT MEMBER_ID, MEMBER_NAME, GENDER, DATE_FORMAT(DATE_OF_BIRTH, "%Y-%m-%d") AS DATE_OF_BIRTH
FROM MEMBER_PROFILE
WHERE DATE_OF_BIRTH LIKE CONCAT("%","-03-","%") && GENDER = "W" && TLNO IS NOT NULL 
ORDER BY MEMBER_ID

#MEMBER_PROFILE 테이블에서 
#---> FROM문을 설명해주고있다.

#생일이 3월인 여성 회원의
#---> 첫번째 두번째 조건문을 설명해주고있다

#ID, 이름, 성별, 생년월일을 조회
#---> SELECT문을 설명해주고있다

#이때 전화번호가 NULL인 경우는 출력대상에서 제외시켜 주시고, 
#---> 세번째째 조건문을 설명해 주고있다.

#결과는 회원ID를 기준으로 오름차순 정렬해주세요.
#---> 정렬방법을 설명해주고있다.
