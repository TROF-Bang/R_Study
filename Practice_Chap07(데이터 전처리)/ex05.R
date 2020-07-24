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

# 병합(merge)
x <- data.frame(name=c("a","b","c"), math=c(90, 80, 40))
y <- data.frame(name=c("a","b","c"), korean=c(70,60,90))
x
y

# x,y 2개의 데이터 프레임의 값을 병합하는데 그 기준은 바로 name열이다.
# 교집합과 같은 내용을 출력해준다.
z <- merge(x = x,y = y,by = c("name"))
z

# 기준열이 x
merge(x, y, all.x = T)
# 기준열이 y
merge(x, y, all.y = T)
# 합집합
merge(x, y, all = T)

x <- data.frame(name=c("a","b","c"), math=c(90, 80, 40))
y <- data.frame(name=c("a","b","c"), korean=c(70,60,90))
x
y

merge(x = x, y = y, by.x = c("name"), by.y = c("sname"))