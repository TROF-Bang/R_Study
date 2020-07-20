# 문제 8
pplt <- c(51014,51245,51446,51635,51811,51973,52123,52261,52388,52504,52609,52704)
year <- c(2015:2026)
data <- data.frame(pplt, year)
plot(pplt~year,data)
res <- lm(pplt~year,data = data)
abline(res)

# 문제 9
year <- c("2014.4","2015.1","2015.2","2015.3","2015.4","2016.1","2016.2","2016.3","2016.4","2017.1","2017.2","2017.3")
m <- c(73.9,73.1,74.4,74.2,73.5,73,74.2,74.5,73.8,73.1,74.5,74.2)
w <- c(51.4,50.5,52.4,52.4,51.9,50.9,52.6,52.7,52.2,51.5,53.2,53.1)
plot(year, m, type='o', col="blue", ylim = range(m,w))
points(year, w, type='o', col="red", ylim = range(m,w))

# 문제 10
# (1) 나무의 지름(Girth)과 높이(Height)에 대해 산점도와 상관계수를 보이시오.
plot(trees$Girth,trees$Height,xlab = "지름", ylab = "높이",pch=20)
cor(trees$Girth,trees$Height)
# (2) trees 데이터셋에 존재하는 3개 변수 간의 산점도와 상관계수를 보이시오.
pairs(trees, pch=20)
cor(trees)

# 문제 11
Orange
color <- c("red","green","yellow","blue","pink")
plot(
  Orange$age,
  Orange$circumference,
  col = color[Orange$Tree],
  pch = 20
)

# 문제 12
# (1) 다음과 같이 Glass 데이터셋을 myds에 저장하시오.
library(mlbench)
data("Glass")
myds <- Glass
# (2) myds에서 Type을 제외한 변수들 간의 분포를 산점도를 통해 보이시오.
plot(myds[,-10])
# (3) myds에서 Type을 제외한 변수들 간의 분포를 상관계수를 통해 확인하시오.
cor(myds[,-10])
# (4) myds에서 Type을 제외한 변수들 간의 분포를 산점도를 통해 보이되 Type을
# 그룹으로 하여 그룹별로 점의 색을 달리하시오.
color <- c("red","green","yellow","blue","pink","black")
plot(
  myds[,-10],
  col = color[myds[,10]],
  pch = 20
)

# 문제 13
# (1) 다음과 같이 Ionosphere 데이터셋을 myds에 저장하시오.
library(mlbench)
data("Ionosphere")
myds <- Ionosphere[,3:12]
# (2) myds에서 선형 관계가 가장 강한 두 변수를 찾아서 각각 산점도와
# 상관계수를 보이시오
cor(myds)
plot(myds[,7], myds[,9])
cor(myds[,7], myds[,9])

