# 문제 1
# R에서 제공하는 cars 데이터셋을 이용하여 속도(speed)와 제동거리(dist)에 대한 산점도를 
# 작성하고, 두 변수 간의 상관관계를 설명하시오(x축: speed, y축: dist).
plot(
  cars$speed,
  cars$dist,
  xlab = "속도",
  ylab = "제동거리"
)
# 두 변수는 어느 정도 비례관계를 갖고 있다.

# 문제 2
# R에서 제공하는 pressure 데이터셋을 이용하여 온도(temperature)와 기압(pressure)에 대한 
# 산점도를 작성하고, 두 변수 간의 상관관계를 설명하시오(x축: temperature, y축: pressure).
plot(
  pressure$temperature,
  pressure$pressure,
  xlab = "온도",
  ylab = "기압"
)
# 온도가 200도 이전에는 기압이 일정 하지만 
# 200도 이후 부터는 급격하게 변하는 기압의 변화를 볼수 있다.

# 문제 3
# R에서 제공하는 state.x77 데이터셋에서 인구수(Population), 소득(Income),문맹률(Illiteracy),
# 면적(Area) 변수 간 산점도를 작성하고, 상관 관계를 관찰하시오(pairs() 함수 이용).
val <- c("Population", "Income", "Illiteracy", "Area")
data <- state.x77[,val]
pairs(data)
# 인구수의 대부분 한곳에 밀집되는 경향이 보인다.
# 소득이 높을 수록 한곳에 밀집되는 경향이 보인다.
# 소득이 높을 수록 문맹률이 낮다.

# 문제 4
# R에서 제공하는 iris 데이터셋에서 Species 정보에 따른 꽃받침 길이(Sepal.Length)와 
# 꽃받침 폭(Sepal.Width)의 분포에 대해 산점도를 통해 알아보시오.
iris.sepal.data <- iris[,c("Sepal.Length","Sepal.Width")]
iris.species.data <- as.numeric(iris$Species)
plot(
  iris.sepal.data$Sepal.Length,
  iris.sepal.data$Sepal.Width,
  pch = iris.species.data,
  col = color[iris.species.data]
)
# setosa가 다른 2종에 비해 너비가 길지만 길이는 짧다.
# versicolor 길이는 중간 정도 이며 setosa에 비해 너비가 짧다.
# virginica 다른 2종에 비해 길이가 길며 setosa에 비해 너비가 짧다.