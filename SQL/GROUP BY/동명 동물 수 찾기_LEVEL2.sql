SELECT NAME, COUNT(1) AS COUNT
FROM ANIMAL_INS
WHERE NAME IS NOT NULL
GROUP BY NAME
HAVING COUNT(1) >= 2
ORDER BY NAME

#동물 보호소에 들어온 동물 이름 중 두 번 이상 쓰인 이름과 해당 이름이 쓰인 횟수를 조회
#---> 조건을 설명해주고있다.
#이때 결과는 이름이 없는 동물은 집계에서 제외하며, 
#---> 이름이 null값인건 빼라는 조건을 설명해주고있다.
#결과는 이름 순으로 조회해주세요.
#---> 정렬방법에대해 설명해주고있다.
