SELECT ANIMAL_TYPE, IF(NAME IS NULL, "No name", NAME), SEX_UPON_INTAKE
FROM ANIMAL_INS
ORDER BY ANIMAL_ID


#입양 게시판에 동물 정보를 게시하려 합니다. 
#---> 그냥 문제 설명

#동물의 생물 종, 이름, 성별 및 중성화 여부를
#---> SELECT문을 설명해주고 있다.

#아이디 순으로 조회하는 SQL문을 작성해주세요. 
#---> 정렬 조건을 설명해주고 있다.

#이때 프로그래밍을 모르는 사람들은 NULL이라는 기호를 모르기 때문에, 
#--->어렵게 조건주려고 하는 밑밥 깔기작업(무시가능)

#이름이 없는 동물의 이름은 "No name"으로 표시해 주세요.
#---> 진짜 조건문 SELECT로 표시해야하니 IF를 써야할듯 하다
