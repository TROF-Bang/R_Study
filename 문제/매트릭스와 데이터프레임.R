# 문제 1
#(1) 위와 같은 내용의 매트릭스 score를 생성하시오. 
score <- matrix(c(10,40,60,20,21,60,70,30), 4, 2)
score
#(2) score의 열 이름을 각각 male, female로 바꾸시오. 
colnames(score) <- c("male", "female")
score
#(3) 2행에 있는 모든 값을 출력하시오. 
score[2,]
#(4) female의 모든 값을 출력하시오. 
score[,2]
#(5) 3행 2열의 값을 출력하시오. 
score[3,2]

# 문제 2
#(1) state.x77을 변환하여 st에 데이터프레임으로 저장하시오. 
#(st <- data.frame(state.x77))
st <- data.frame(state.x77)
st
#(2) st의 내용을 출력하시오. 
st
#(3) st의 열 이름을 출력하시오. 
colnames(st)
#(4) st의 행 이름을 출력하시오. 
rownames(st)
#(5) st의 행의 개수와 열의 개수를 출력하시오. 
nrow(st)
ncol(st)
#(6) st의 요약 정보를 출력하시오. 
str(st)
#(7) st의 행별 합계와 평균을 출력하시오. 
rowSums(st)
rowMeans(st)
#(8) st의 열별 합계와 평균을 출력하시오. 
colSums(st)
colMeans(st)
#(9) Florida 주의 모든 정보를 출력하시오. 
st["Florida",]
#(10) 50개 주의 수입(Income) 정보만 출력하시오. 
st[,"Income"]
#(11) Texas 주의 면적(Area)을 출력하시오. 시오.
st["Texas", "Area"]
#(12) Ohio 주의 인구(Population)와 수입(Income)을 출력하시오. 
st["Ohio", 1:2]
#(13) 인구가 5,000 이상인 주의 데이터만 출력하시오. 
subset(st, Population >= 5000)
#(14) 수입이 4,500 이상인 주의 인구, 수입, 면적을 출력하시오. 
subset(st[,c("Population","Income","Area")], Income >= 4500)
#(15) 수입이 4,500 이상인 주는 몇 개인지 출력하시오.
nrow(subset(st, Income >= 4500))
#(16) 전체 면적(Area)이 100,000 이상이고, 결빙일수(Frost)가 120 이상인 주의 정보를 출력 하시오. 
subset(st, Area >= 100000 & Frost >= 120)
#(17) 인구(Population)가 2,000 미만이고, 범죄율(Murder)이 12 미만인 주의 정보를 출력하 시오. 
subset(st, Population < 2000 & Murder < 12)
#(18) 문맹률(Illiteracy)이 2.0 이상인 주의 평균 수입은 얼마인지 출력하시오. 
x <- subset(st, Illiteracy < 2.0)
mean(x[,"Income"])
#(19) 문맹률(Illiteracy)이 2.0 미만인 주와 2.0 이상인 주의 평균 수입의 차이를 출력하시오. 
x <- subset(st, Illiteracy < 2.0)
y <- subset(st, Illiteracy >= 2.0)
x <- mean(x[,"Income"])
y <- mean(y[,"Income"])
x - y
#(20) 기대수명(Life Exp)이 가장 높은 주는 어디인지 출력하시오. 
subset(st, Life.Exp == max(st[,"Life.Exp"]))
#(21) Pennsylvania 주보다 수입(Income)이 높은 주들을 출력하시오. 
subset(st, Income > st["Pennsylvania", "Income"])

# 문제 3
#(1) 이 데이터셋의 자료구조를 보이시오.
class(mtcars)
#(2) 이 데이터셋의 행의 개수와 열의 개수를 보이시오. 
dim(mtcars)
#(3) 이 데이터셋 열들의 자료형을 보이시오.
str(mtcars)
#(4) R 스튜디오의 도움말 기능을 이용하여 각 열이 어떤 데이터를 저장하고 있는지 설명하시오(예: mpg(mile per gallon), 자동차의 연비). 
#[, 1]	mpg	Miles/(US) gallon
#[, 2]	cyl	Number of cylinders
#[, 3]	disp	Displacement (cu.in.)
#[, 4]	hp	Gross horsepower
#[, 5]	drat	Rear axle ratio
#[, 6]	wt	Weight (1000 lbs)
#[, 7]	qsec	1/4 mile time
#[, 8]	vs	Engine (0 = V-shaped, 1 = straight)
#[, 9]	am	Transmission (0 = automatic, 1 = manual)
#[,10]	gear	Number of forward gears
#[,11]	carb	Number of carburetors
#(5) 연비(mpg)가 가장 좋은 자동차 모델을 보이시오. 
subset(mtcars, mpg == max(mtcars[,"mpg"]))
#(6) gear가 4인 자동차 모델 중 연비가 가장 낮은 모델을 보이시오. 
x <- subset(mtcars, gear == 4)
subset(x, mpg == min(x[,"mpg"]))
#(7) Honda Civic의 연비(mpg)와 gear 수를 보이시오.
mtcars["Honda Civic", c("mpg", "gear")]
#(8) Pontiac Firebird 보다 연비가 좋은 자동차 모델을 모두 보이시오. 
subset(mtcars, mpg > max(mtcars["Pontiac Firebird", "mpg"]))
#(9) 자동차 모델들의 평균 연비를 보이시오.
mean(mtcars[,"mpg"])
#(10) gear의 수 종류를 보이시오.
unique(mtcars[,"gear"])

# 문제 4
#(1) 이 데이터셋의 자료구조를 보이시오. 
class(airquality)
#(2) 이 데이터셋의 앞쪽 일부분의 내용만 보이시오. 
head(airquality)
#(3) 기온(Temp)이 가장 높은 날은 언제인지 월(Month)과 일(Day)을 보이시오. 
x <- subset(airquality, Temp == max(airquality[,"Temp"]))
x[,c("Month", "Day")]
#(4) 6월달에 발생한 가장 강한 바람(Wind)의 세기를 보이시오.
x <- subset(airquality, Month == 6)
subset(airquality, Wind == max(x[,"Wind"]))
#(5) 7월 달의 평균 기온(Temp)을 보이시오.
x <- subset(airquality, Month == 7)
mean(x[,"Temp"])
#(6) NA값을 제외한 5월의 평균 오존(Ozone) 농도를 보이시오. 
colMeans(subset(airquality, Month==5 & !is.na(airquality$Ozone), select = Ozone))
#(7) 오존(Ozone) 농도가 100을 넘는 날은 며칠이나 되는지 보이시오. 
nrow(subset(airquality, Ozone > 100))

# 문제 5
#(1) 데이터셋의 요약 정보를 보이시오. 
str(swiss)
#(2) 남성의 농업인 비율(Agriculture)이 가장 높은 주를 보이시오. 
head(swiss)
rownames(subset(swiss, Agriculture == max(swiss[,"Agriculture"])))
#(3) 남성의 농업인 비율(Agriculture)을 내림차순으로 정렬하여 주의 이름과 함께 보이시오. 
swiss[order(swiss$Agriculture),]
#(4) 카톨릭 신자의 비율(Catholic)이 80% 이상인 주들의 남성의 농업인 비율(Agriculture) 을 보이시오. 
subset(swiss, Catholic >= 80, select = Agriculture)
#(5) 징집대상자 중 입대시험에서 높은 평가를 받은 사람들의 비율(Examination)이 20% 미만이고 
#남성의 농업인 비율(Agriculture)이 50% 미만인 주의 이름과 Examination, Agriculture 컬럼의 값을 보이시오.
subset(swiss, Examination < 20 & Agriculture < 50, select = c("Examination", "Agriculture"))

# 문제 6
#(1) R에서 제공하는 state.x77 데이터셋에서 수입(Income)이 5,000 이상인 주의 데이터에서 
#수입(Income), 인구(Population), 면적(Area) 열의 값들만 추출하여 rich_state.csv 에 저장하시오. 
setwd("C:/Users/Administrator/Google 드라이브/R/Practice_Chap03(매트릭스와 데이터프레임)")
x <- data.frame(state.x77)
rich_state <- subset(x, Income >= 5000, select = c("Income", "Population", "Area"))
rich_state
write.csv(rich_state, "rich_state.csv", F)
#(2) (1)에서 만든 rich_state.csv 파일을 읽어서 ds 변수에 저장한 후 ds의 내용을 출력하시오. 
ds <- read.csv("rich_state.csv", T)
ds