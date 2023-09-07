SELECT  ANIMAL_ID, NAME
FROM    ANIMAL_OUTS
WHERE   ANIMAL_ID NOT IN (SELECT ANIMAL_ID 
                            FROM ANIMAL_INS)
    GROUP BY ANIMAL_ID
    ORDER BY ANIMAL_ID


#천재지변으로 인해 일부 데이터가 유실되었습니다. 
#-->그냥 스토리

#입양을 간 기록은 있는데, 보호소에 들어온 기록이 없는
#---> 조건문

#ID와 이름을 ID 순으로 조회
#---> 정렬 방법

#이문제를 자세히 생각해보면 OUT은 했는데 IN은 안한 즉 몰래 들어왔다가 슥 입양 가버린 얌생이 동물을 잡는 쿼리이다.
#고로 잘 생각해보자면 IN테이블에서 필요한건 ID뿐이다. 
#IN에서 가져온 ID를 가지고 OUT테이블에 있는 ID와 일치하지 않는다면 고로 그 값이 여기서 원하는 정답인 것이다.
#고로 OUT테이블에서만 거의 놀기때문에 JOIN문제지만 JOIN이 굳이 필요없는 상황인것이다.
#고로 NOT IN 이라는 즉 영문그대로 여기에는 있지 않은 값을 조건을 걸어 보여주기만하면 된다.
