# 데이터 집계와 병합
# 데이터 그룹에 대한 통상적인 집계
# 종에 따른 열의 평균값
agg <- aggregate(x = iris[,-5], by = list(iris$Species), FUN = mean)
agg

# 기준점 컴럼명 설정
agg <- aggregate(x = iris[,-5], by = list(종=iris$Species), FUN = mean)
agg

# 복수개를 사용하여 집계
head(mtcars)
dim(mtcars)
agg <- aggregate(mtcars, by = list(실린더=mtcars$cyl, VS=mtcars$vs), FUN = max)
agg