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

# 데이터 샘플링
# 샘플링 : 주어진 값들에서 임의의 개수의 값을 추출하는 작업
x <- c(1:100)

# replace는 FALSE로 주면 비복원 추출
sample(x, size = 10, replace = FALSE)

# replace는 TRUE로 주면 복원 추출
sample(x, size = 10, replace = TRUE)

# iris데이터셋에 행의 값들이 비복원추출
idx <- sample(x = c(1:nrow(iris)), size = 50, replace = FALSE)
idx
iris50 <- iris[idx,]
class(iris50)
dim(iris50)
head(iris50)

sample(x = c(1:20), size = 5)
sample(x = c(1:20), size = 5)
sample(x = c(1:20), size = 5)
sample(x = c(1:20), size = 5)

# set.seed()함수는 종자값을 설정을 하여 같은 값이면 계속
# sample()실행해도 같은 값이 추출이 된다.
set.seed(100)
sample(x = c(1:20), size = 5)
set.seed(100)
sample(x = c(1:20), size = 5)
set.seed(100)
sample(x = c(1:20), size = 5)
set.seed(100)
sample(x = c(1:20), size = 5)

# 데이터 조합(Combination)
# 주어진 데이터 값들 중에서 몇 개씩 짝을 지어 추출하는 작업
com <- combn(x = c(1:5), m = 4)
class(com)
com

color <- c("red", "green", "blue", "black", "white")
com <- combn(x = color, m = 2)
class(com)
com

for (i in 1:ncol(com)) {
  cat(com[,i],"\n")
}