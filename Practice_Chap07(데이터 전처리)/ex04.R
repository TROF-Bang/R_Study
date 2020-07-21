# 데이터 분리
# split() : 열의 값을 기준으로 데이터 셋을 분리하면서 list타입으로 리턴을 해준다.
sp <- split(x = iris, iris$Species)
View(sp)
class(sp)

# sp는 list면서 그 안에 3개의 데이터 프레임이 존재한다.
summary(sp)
# 아래와 같이 sp라는 list타입에서 setosa만 추출하여 데이터 프레임 형태로 분리할 수 가 있다.
setosa <- sp$setosa
setosa
# subset() : 조건에 맞는 행을 데이터프레임 형식으로 리턴해준다.
View(subset(x = iris, Species == "virginica"))
virginica <- subset(x = iris, Species == "virginica")
class(virginica)
summary(virginica)

subset(x = iris, Sepal.Length > 7.5)
subset(x = iris, Sepal.Length > 5.1 & Sepal.Width > 3.9)
# select매개변수 추출하고자 하는 열을 지정을 할 수도 있다.
subset(x = iris, Sepal.Length > 7.5, select = c(Petal.Length, Petal.Width))
