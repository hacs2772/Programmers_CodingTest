SELECT B.BOOK_ID, A.AUTHOR_NAME, DATE_FORMAT(B.PUBLISHED_DATE, "%Y-%m-%d") AS PUBLISHED_DATE
FROM AUTHOR A JOIN BOOK B ON A.AUTHOR_ID = B.AUTHOR_ID
WHERE CATEGORY = "경제"
ORDER BY PUBLISHED_DATE



#'경제' 카테고리에 속하는 도서들의 
#---> 조건문을 말해주고 있다

#도서 ID(BOOK_ID), 저자명(AUTHOR_NAME), 출판일(PUBLISHED_DATE) 리스트를 출력
#---> SELECT문을 말해주고있다

#결과는 출판일을 기준으로 오름차순 정렬해주세요.
#---> 정렬방법을 말해주고있다
