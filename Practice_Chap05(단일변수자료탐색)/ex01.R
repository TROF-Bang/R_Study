# 단일변수 (범주형, 연속형)에 분석을 해보고 그래프로 데이터시각화를 한번
# 해보는 시간

favorite <- c("WINTER","SUMMER","SPRING","SUMMER", "SUMMER",
              "SPRING", "FALL", "FALL", "SUMMER","FALL")
favorite
class(favorite)
length(favorite)
table(favorite) # 범주형 데이터에서 빈도수를 출력
table(favorite)/length(favorite) # 비율 계삭

ds <- table(favorite)
class(ds)
str(ds)
ds
# 막대 그래프(색깔이 기본값)
barplot(ds, main = "선호하는 계절")
# 막대 그래프(색깔 추가)
c <- c("green", "red", "yellow", "black")
barplot(ds, main = "선호하는 계절", col = c)

# 원그래프(기본 색깔)
pie(ds, main = "선호하는 계절")
# 원그래프(색깔 추가)
pie(ds, main = "선호하는 계절", col = c)

favoriteColor <- c(2,3,1,1,1,3,1,1,1,2,1)
length(favoriteColor)
favoriteColor
ds <- table(favoriteColor)
class(ds)
ds

# col을 대입하니 black은 무시가 된다.
barplot(ds, main = "선호하는 계절", col = c)
c <- c("green", "red", "blue")
# names()이용을 하여 자료값 1,2,3을 green,red,blue로 변경
names(ds) <- c
ds

pie(ds, main = "선호하는 색상", col = c)

# 원그래프에 속성을 최대한 이용함
x <-  c(9,15,20,6)
label <- c("영업1팀","영업2팀","영업3팀","영업4팀")
pie(x, main = "부서별 영업실적", label)

pie(x, init.angle = 90, labels = label, main = "부서별 영업실적")
pct <- round(x/sum(x) * 100)
pct

label <- paste(label, pct)
label

label <- paste(label, '%')
label

pie(x, init.angle = 90, labels = label, main = "부서별 영업실적", col = rainbow(length(x)))