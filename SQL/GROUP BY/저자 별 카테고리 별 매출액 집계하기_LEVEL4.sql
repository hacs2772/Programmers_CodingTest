SELECT A.AUTHOR_ID, A.AUTHOR_NAME, B.CATEGORY, SUM(B.PRICE * C.SALES) AS TOTAL_SALES
FROM AUTHOR A JOIN BOOK B ON A.AUTHOR_ID = B.AUTHOR_ID
    JOIN BOOK_SALES C ON B.BOOK_ID = C.BOOK_ID
WHERE C.SALES_DATE LIKE CONCAT("2022-01", "%")
GROUP BY A.AUTHOR_ID, B.CATEGORY
ORDER BY A.AUTHOR_ID, B.CATEGORY DESC


#2022년 1월의 도서 판매 데이터를 기준으로 
#---> WHERE 조건문을 설명해주고있다.

#저자 별, 카테고리 별 매출액(TOTAL_SALES = 판매량 * 판매가) 을 구하여, 
#---> 어떻게 그룹을 지어야할지 설명해주고 있고 
#---> SELECT에 나올 TOTAL_SALES를 구하는 방법도 알려주고있다.

#저자 ID(AUTHOR_ID), 저자명(AUTHOR_NAME), 카테고리(CATEGORY), 매출액(SALES) 리스트를 출력
#---> 출력해줘야할 SELECT문을 설명해주고 있다.

#결과는 저자 ID를 오름차순으로, 저자 ID가 같다면 카테고리를 내림차순 정렬해주세요.
#---> 정렬방법을 설명해주고있다.

위에 풀이처럼 한줄한줄 문제를 읽어가다보면 어떻게 해야할 지 눈에 보이게 된다
고로 딱히 까다로운건 없었던 문제였다 

추가로 더 설명하자면
그룹을 짓게 된다면 자연스럽게 다른 값들이 합쳐지게 된다.
여기서 추가 팁을 주자면 그룹을 짓게되면 숫자도 합쳐지게 되어 자연스럽게 SUM을 할 수 밖에 없다(같은 PRICE끼리 묶이지 않는한)
고로 문제에서 합을 구하라는 말이 없었지만 당연히 그룹을 짓게된다면 SUM을 한다고 생각할 수 밖에 없다.(합하지않고 묶는방법은 없다)
