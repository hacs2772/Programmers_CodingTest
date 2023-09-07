SELECT NAME, DATETIME
FROM ANIMAL_INS
WHERE ANIMAL_ID NOT IN (SELECT ANIMAL_ID FROM ANIMAL_OUTS)
ORDER BY DATETIME ASC
LIMIT 3



#아직 입양을 못 간 동물 중, 
#--->전에 업로드 했었던 없어진 기록찾기 문제와 매우 비슷한 상황이다.
#WHY? ---> 입양을 못간거니 IN은 됐는데 OUT은 안된 상황이니 없어진 기록찾기(OUT은 됐는데 IN이 안된)에 반대격이기 때문이다.

#가장 오래 보호소에 있었던 동물 3마리의 이름과 보호 시작일을 조회
#---> 계속 언급해 왔었던 ORDER BT + LIMIT 상황이다. 가장 오래된 순이니 내림차순(ASC)으로 정렬하여야하고 3마리만 보여달라했으니 LIMIT 3를 걸면된다.

#이때 보호 시작일 순으로 조회
#---> 정렬을 보여주지만 이미 위에서 정렬을 했으니 패스
