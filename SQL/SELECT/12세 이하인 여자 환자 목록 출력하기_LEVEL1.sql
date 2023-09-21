SELECT PT_NAME,	PT_NO, GEND_CD, AGE, IF(TLNO IS NULL, "NONE", TLNO) AS TLNO
FROM PATIENT
WHERE AGE <= 12 && GEND_CD = "W"
ORDER BY AGE DESC, PT_NAME


#PATIENT 테이블에서 
#---> FROM테이블을 설명해주고있다
#12세 이하인 여자환자의 
#---> 12세이하랑 여자 라는 조건 2개를 말해주고있다
#환자이름, 환자번호, 성별코드, 나이, 전화번호를 조회
#---> SELECT문을 설명해주고있다
#이때 전화번호가 없는 경우, 'NONE'으로 출력
#---> SELECT에서 변환해야할 값을 설명해주고있다
#결과는 나이를 기준으로 내림차순 정렬하고, 나이 같다면 환자이름을 기준으로 오름차순 정렬해주세요.
#---> ORDER BY 정렬방법을 설명해주고있다.
