# 단일변수의 연속형 자료에 대한 분석
# 1. 평균과 중앙값

weight <- c(60,62,64,65,68,69)
weight.heavy <- c(weight, 120)
weight
weight.heavy

# 평균값 비교
# 평균값은 하나의 값이 특이값이 들어오게 되면 평균이 확 올라가거나
# 내려간다.
mean(weight)
mean(weight.heavy)
mean(weight) - mean(weight.heavy)

# 중앙값 비교
# 중앙값은 데이터를 일렬로 나열할 때, 가운데 있는 값이기 때문에
# 영향을 덜 받는다.
# 이런 중아값이라면 분석에 있어서 별 의미가 ㅇ벗는 값이 된다.
median(weight)
median(weight.heavy)

# 절사평균
# trim이라는 속성은 상하위 20%제외 나머지값을 가지고 평균을 구한다.
mean(weight, 0.2)
mean(weight.heavy, 0.2)

# 사분위수에 대한 이해하기

data <- c(weight.heavy)
data
# 사분위수를 구하는 함수
quantile(data) # 25%단위로 끊어서 출력을 한다.
quantile(data, probs = (0:10)/10) # 10%단위로 끊어서 출력함.

# summary()함수를 이용해서 출력하면 6개의 값이 산출이 된다.
# 이게 바로 기초적인 분석이다.
# 최소값, 1사분위수, 중앙값(2사분위수와 동일), 평균, 3사분위수
# 최대값이 출력이 된다. 가독성면에서도 summary()휠씬 효율적이다.
summary(object = data)
boxplot(data)

# 산포도 :  평균값을 기준으로 하여 관측값이 얼마나 퍼져있느냐
# 정도를 나타내는 척도
# 분산과 표준편차를 이용할 수가 있다.
mydata <- c(1:10)
mean(mydata)
# 표준편차가 작다. 작다는 것은 바로 평균과 가까이 모여있다.
var(mydata)
sd(mydata)

mydata2 <- c(60,100,64,101,150,115,120)
mean(mydata2)
# 표준편차가 크다. 크다는 것은 바로 평균과 멀리 떨어져 있다.
# 즉, 다시말해서 표준편차와 평균과의 거리는 비례관계이다.
var(mydata2)
sd(mydata2)

range(mydata2)
# diff()통해서 나온 값이 크면 클수록 평균과 많이 관측값들이
# 떨어져 있다라고 해석을 하면 된다.
diff(range(mydata2))