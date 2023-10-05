SELECT HOUR(DATETIME) HOUR, COUNT(1) AS COUNT
FROM ANIMAL_OUTS
GROUP BY HOUR
HAVING HOUR >= 9 AND HOUR <= 19
ORDER BY HOUR


#보호소에서는 몇 시에 입양이 가장 활발하게 일어나는지 알아보려 합니다. 
#---> 그냥 문제 서론 
#09:00부터 19:59까지, 각 시간대별로 입양이 몇 건이나 발생했는지 조회하는 SQL문을 작성
#---> 조건문을 설명해주고있다.
#이때 결과는 시간대 순으로 정렬해야 합니다.
#---> 정렬방법에대해 설명해주고 있다.
