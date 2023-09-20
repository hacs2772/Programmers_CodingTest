SELECT DR_NAME, DR_ID, MCDP_CD, DATE_FORMAT(HIRE_YMD, '%Y-%m-%d') AS HIRE_YMD
FROM DOCTOR
WHERE MCDP_CD = "CS" || MCDP_CD = "GS"
ORDER BY HIRE_YMD DESC, DR_NAME

#DOCTOR 테이블에서 
#---> FROM에서 어떤걸 써야하는 보여주고 있다.

#진료과가 흉부외과(CS)이거나 일반외과(GS)인 
#---> 조건문을 알려주고있다.

#의사의 이름, 의사ID, 진료과, 고용일자를 조회
#---> SELECT문에서 어떤걸 써야하는지 보여주고 있다.

#이때 결과는 고용일자를 기준으로 내림차순 정렬하고, 고용일자가 같다면 이름을 기준으로 오름차순 정렬해주세요.
#---> 정렬방법을 설명해 주고있다.
