# 데이터프레임 알아보기

city <- c("서울", "도쿄", "워싱턴") # 문자형벡터
rank <- c(1:3) # 숫자형 벡터

class(city)
class(rank)

# 벡터를 만들때 :을 이용하여 숫자형 벡터를 만들면 구조가 integer로 생성되며
# ,로 이용하면 numeric으로 생성된다.
a <- c(1:10) # 정수형벡터
b <- seq(0.0, 1.0, 0.1) # 실수형벡터
# class()라는 함수는 매개변수로 들어간 변수에 담긴 데이터의
# 자료구조를 알려준다.
class(a)
class(b)

# city라는 문자형 팩터와 rank라는 정수형 벡터 합쳐서 데이터 프레임
# 형태가 되었다.
cityinfo <- data.frame(city, rank)
class(cityinfo)
cityinfo

# 데이터프레임도 2차원 데이터 타입이니 얼마든지
# 인덱스로 접근가능하고 수정도 가능하다.
cityinfo[1,1]
cityinfo[1,]
cityinfo[,1]

class(cityinfo[,2])
class(cityinfo[,1])
class(cityinfo[1,])

class(iris)
# dim() 몇개의 행과 몇 개의 열로 구성되어있는지 확인할 때 사용할수 있다.
dim(iris)
dim(cityinfo)

# str()라는 함수는 데이터의 요약정보를 알려준다.
str(iris)

# iris는 R에서 제공해주는 내장 데이터셋
mean(iris[,"Sepal.Length"])
mean(iris[,1])
