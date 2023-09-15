SELECT COUNT(1) AS USERS
FROM USER_INFO
WHERE AGE IS NULL

#USER_INFO 테이블에서 
#---> FROM에 나올 테이블을 알려주고있다.

#나이 정보가 없는 회원이 
#---> 조건인 WHERE문 알려주고있다.

#몇 명인지 출력하는 
#---> 몇명인지 출력하는거니 SELECT문에서 COUNT를 사용해야하는 걸 알려주고 있다.

#이때 컬럼명은 USERS로 지정해주세요.
#---> 컬럼명을 USERS로 하라고 하니 SELECT에서 AS를 통해 임의로 지정해 주라고 알려주고있다.
