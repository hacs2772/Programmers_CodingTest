SELECT COUNT(1) AS USERS
FROM USER_INFO
WHERE JOINED LIKE CONCAT("2021","%") && AGE BETWEEN 20 AND 29

#USER_INFO 테이블에서 
#---> FROM문을 보여주고있다
#2021년에 가입한 회원 중 
#---> 조건 1을 보여주고있다
#나이가 20세 이상 29세 이하인 회원이 
#---> 조건 2를 보여주고 있다
#몇 명인지 출력
#---> SELECT문을 보여주고있다. 몇명인지 구하는 거니 COUNT를 사용해야한다
