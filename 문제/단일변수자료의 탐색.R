# 문제 1
# (1) infert 데이터셋의 education 열(column)에는 각 사람이 교육받은 기간이 범주형 자료 형태로 저장되어 있다. 
# infert 데이터셋의 education 열의 값을 잘라내어 edu에 저장한 후, edu의 값을 출력하시오. 
head(infert)
edu <- infert[,"education"]
edu
# (2) edu에 있는 값들의 중복을 제거하고 출력하시오. 
unique(edu)
# (3) edu에 있는 값들에 대해 도수분포표를 작성하여 출력하시오. 
table(edu)
# (4) edu에 있는 값들에 대해 막대그래프를 작성하여 출력하시오. 
x <- table(edu)
barplot(x)

# 문제 2
# (1) 위의 자료를 gender 벡터에 저장하시오.
gender <- c('F', 'F', 'F', 'M', 'M', 'F','F', 'F', 'M', 'M')
# (2) gender에 있는 값들에 대해 도수분포표를 작성하여 출력하시오.
table(gender)
# (3) gender에 있는 값들에 대해 막대그래프를 작성하여 출력하시오.
x <- table(gender)
barplot(x)
# (4) gender에 있는 값들에 대해 원그래프를 작성하여 출력하시오.
pie(x)

# 문제 3
# (1) 위의 자료를 season 벡터에 저장하시오.
season <- c("여름", "겨울", "봄", "가을", "여름", "가을", "겨울", "여름", "여름", "가을")
# (2) season에 있는 값들에 대해 도수분포표를 작성하여 출력하시오.
table(season)
# (3) season에 있는 값들에 대해 막대그래프를 작성하여 출력하시오.
x <- table(season)
barplot(x)
# (4) season에 있는 값들에 대해 원그래프를 작성하여 출력하시오.
pie(x)