#리스트(벡터와 같은 1차원 데이터를 나타내는 것은 맞으나
#리스트는 다른 데이터형을 가질 수 있는 것이 바로 리스트다) -->C언어의 구조체 개념

ds <- c(10,15,70,85)
myinfo <- list(name="신은혁", age=13, status=TRUE, SCORE=ds)
myinfo

#리스트 요소를 접근이나 출력하는 두 가지 방법
#인덱스로 접근시 [], [[]] 둘다 허용한다.
myinfo[1]
myinfo$name #$이용하는 방법 권장드림.
myinfo$SCORE

#unlist() : 리스트를 벡터로 변경시켜주는 함수
vmyinfo <- unlist(myinfo)
vmyinfo

#as.integer() : 다른 데이터형을 숫자형으로 바꿔주는 함수
as.integer(vmyinfo[2])

#팩터(factor)
bt <- c("A", "B", "B", "O", "AB", "A")
bt

fbt <- factor(bt)
bt
fbt

bt[5]
fbt[5]

#levels()는 팩터에 저장된 데이터의 종류, 번주를 알려준다.
levels(fbt)

fbt[7] <- "B"
fbt

#Z라는 값은 fbt라는 팩터의 level에 그 값이 없다.
#하여, NA를 생성한다.
fbt[8] <- "Z"
fbt