# 문제 4
# (1) 위 데이터를 score 벡터에 저장하시오(과목명은 데이터 이름으로 저장).
score <- c(90,85,73,80,85,65,78,50,68,96)
names(score) <- c("KOR","ENG","ATH","HIST","SOC","MUSIC","BIO","EARTH","PHY","ART")
score
class(score)
# (2) score 벡터의 내용을 출력하시오.
score
# (3) 전체 성적의 평균과 중앙값을 각각 구하시오.
mean(score)
median(score)
# (4) 전체 성적의 표준편차를 출력하시오.
sd(score)
# (5) 가장 성적이 높은 과목의 이름을 출력하시오.
names(score[which.max(score)])
# (6) 성적에 대한 상자그림을 작성하고, 이상치에 해당하는 과목이 있으면 출력하시오.
boxplot(score) # 이상치 없음
# (7) 다음 조건을 만족하는 위 성적에 대한 히스토그램을 작성하시오.
# (그래프 제목: 학생 성적, 막대의 색: 보라색)
hist(
  score, 
  col = "purple",
  xlab = "점수",
  ylab = "분포",
  las = 1,
  main = "학생 성적"
)

# 문제 5
#(1) 중량(wt)의 평균값, 중앙값, 절사평균값(절사범위: 15%), 표준편차를 각각 구하시오.
mean(mtcars$wt)
median(mtcars$wt)
mean(mtcars$wt, trim=0.15)
sd(mtcars$wt)
#(2) 중량(wt)에 대해 summary( ) 함수의 적용 결과를 출력하시오.
summary(mtcars$wt)
#(3) 실린더수(cyl)에 대해 도수분포표를 출력하시오.
cyl <- table(mtcars$cyl)
#(4) 앞에서 구한 도수분포표를 막대그래프로 출력하시오.
barplot(cyl)
#(5) 중량(wt)의 히스토그램을 출력하시오.
hist(mtcars$wt)
#(6) 중량(wt)에 대해 상자그림을 출력하시오.
#(단, 상자그림으로부터 관찰할 수 있는 정보를 함께 출력하시오.)
boxplot(mtcars$wt)
#(7) 배기량(disp)에 대한 상자그림을 출력하시오.
#(단, 상자그림으로부터 관찰할 수 있는 정보를 함께 출력하시오.)
boxplot(mtcars$disp)
#(8) 기어수(gear)를 그룹 정보로 하여 연비(mpg) 자료에 대해 상자그림을 작성하고, 
#각 그룹의 상자그림을 비교하여 관찰할 수 있는 것이 무엇인지 나타내시오.
boxplot(mpg~gear,data=mtcars)

# 문제 6
# (1) trees 데이터셋의 앞쪽 일부 데이터만 출력하시오.
head(trees)
# (2) 나무 지름(Girth)의 평균값, 중앙값, 절사평균값(절사범위: 15%), 표준편차를 각각 구하시오.
mean(trees$Girth)
median(trees$Girth)
mean(trees$Girth, trim=0.15)
sd(trees$Girth)
# (3) 나무 지름(Girth)에 대해 히스토그램을 작성하시오.
hist(trees$Girth)
# (4) 나무 지름(Girth)에 대해 상자그림을 작성하시오.
boxplot(trees$Girth)
# (5) 나무 높이(Height)의 평균값, 중앙값, 절사평균값(절사범위: 15%), 표준편차를 각각 구하시오.
mean(trees$Height)
median(trees$Height)
mean(trees$Height, trim = 0.15)
sd(trees$Height)
# (6) 나무 높이(Height)에 대해 히스토그램을 작성하시오.
hist(trees$Height)
# (7) 나무 높이(Height)에 대해 상자그림을 작성하시오.
boxplot(trees$Height)

# 문제 7
# (1) Orange 데이터셋의 앞쪽 일부 데이터만 출력하시오.
head(Orange)
# (2) 나무 연령(age)의 평균값, 중앙값, 절사평균값(절사범위: 15%), 표준편차를 각각 구하시오.
mean(Orange$age)
median(Orange$age)
mean(Orange$age, trim = 0.15)
sd(Orange$age)
# (3) 나무 연령(age)에 대해 히스토그램을 작성하시오.
hist(Orange$age)
# (4) 나무 연령(age)에 대해 상자그림을 작성하되 그룹(Tree)을 구분하여 작성하시오.
boxplot(age~Tree,data=Orange)
# (5) 나무 둘레(circumference)의 평균값, 중앙값, 절사평균값(절사범위: 15%), 표준편차를 각각 구하시오.(단, 그룹(Tree) 번호 2는 제외하시오.)
circ<- subset(Orange, Orange$Tree != 2)
mean(circ$circumference)
median(circ$circumference)
mean(circ$circumference, trim = 0.15)
sd(circ$circumference)
# (6) 나무 둘레(circumference)에 대해 히스토그램을 작성하시오.(단, 그룹(Tree) 번호 2는 제외하시오.)
hist(circ$circumference)
# (7) 나무 둘레(circumference)에 대해 상자그림을 작성하되 그룹(Tree)을 구분하여 작성하시오.
boxplot(circumference~Tree,data=Orange)
