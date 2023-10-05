SET @HACS = -1;
SELECT (@HACS := @HACS +1) AS HOUR, (
        SELECT COUNT(HOUR(DATETIME))
        FROM ANIMAL_OUTS 
        WHERE HOUR(DATETIME)=@HACS
    ) AS COUNT 
FROM ANIMAL_OUTS
WHERE @HACS < 23

# 문제를 잘 보면 예시와 같이 0시,1시,2시 등등 없던 시간을 먼저 삽입해야한다.
# 그러기 위해선 SET을 사용해야하고 
# SET을 사용하기 위해선 변수 선언을 하는 방법을 알아야한다.
# 그럼 위에 코드와 같이 SET @변수명 = 원하는값; 이렇게 선언을 해야한다.(당연 반드시 세미콜론도 삽입해야함)
# MySQL에서 변수를 사용할 때, 일반적으로 변수를 선언하고 초기화하는 구문이 없으면 오류가 발생할 수 있다.
# 고로 @HACS와 같이 "@" 기호를 사용하여 변수를 사용하기 전에 먼저 선언하고 초기화해야 한다.

# 여기서 잠깐! 참고로 @ 이것은 MYSQL에서만 사용한다 
# PostgreSQL과 Oracle은 '@'대신 DECLARE과 BEGIN을 사용하여 변수 선언 및 초기화를 하고 추가로 PostgreSQL은 '$'기호를 추가로 더 사용한다. 
# DBMS마다 SQL구문 사용방법이 다르니 본인이 사용하는 환경에 따라 어떻게 사용하는지 학습하고 가길 바란다. 이거말고도 다른점이 매우 많기 때문이다!(LIMIT나 DATE나 REGEXP.. 등등)
# (이러한 DBMS마다 차이는 생각보다 많기에 나중에 데이터를 모아 TIPS로 다룰 예정이다.)


# 그리고 ":=" 연산자는 SQL에서 변수를 할당하고 그 값을 반환하는 데 사용되는 기호이다.(자바로 치면 =이다)
