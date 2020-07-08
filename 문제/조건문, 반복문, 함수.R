# 문제 1
#(1) 1~100 사이의 정수 중 3의 배수들의 합과 개수를 구하시오. 
x <- c(1:100)
y <- subset(x, x%%3==0)
sum(y)
length(y)
#(2) 101~200 사이의 숫자 중 3과 4의 공배수를 출력하시오. 
x <- c(101:200)
subset(x, x%%12==0)
#(3) 24의 약수를 출력하시오. 
for (i in 1:24) {
  if(24%%i==0)
    print(i)
}
#(4) 10!을 출력하시오.(단, factorial() 함수를 이용하지 않는다.) 
mul <- 1
for (i in 1:10){
  mul <- mul*i
}
mul

# 문제 2
# for문을 이용하여 구구단 중 9단을 출력하는 R 코드를 작성하시오.
for (i in 1:9) {
  num <- 9 * i
  cat("9 *", i, "=", num, "\n")
}

# 문제 3
# while문을 이용하여 구구단 중 8단을 출력하는 R 코드를 작성하시오.
i <- 1
while (i < 10) {
  num <- 8 * i
  cat("8 *", i, "=", num, "\n")
  i <- i + 1
}

# 문제 4
# 1~100의 정수를 차례로 출력하되 3의 배수에서는 숫자 대신 ‘*’을 출력하는 R 코드를 작성하시오(출력은 가로방향으로 한다).
for (i in 1:100) {
  if(i%%3==0) {
    cat("*", " ")
    next
  }
  cat(i, " ")
}

# 문제 5
# 소수(prime number)는 1과 자기 자신 외에는 나누어 떨어지지 않는 수를 말한다. 
# 2~1000 사이의 소수를 출력하는 R 코드를 작성하시오
for (i in 2:1000) {
  if(i == 2 | i == 3) cat(i, " ")
  if(i%%2==0 | i%%3==0) next
  cat(i, " ")
}

# 문제 6
# 0, 1, 1, 2, 3, 5, 8, 13, 21...... 형태의 수열, 즉 첫 번째 항의 값은 0이고 두 번째 항의 값은 
# 1일 때 이후의 항들은 이전의 두 항을 더한 값으로 만들어지는 수열을 ‘피보나치 수열’이라고 한다. 
# 0에서부터 시작하여 40개의 피보나치 수열을 출력하는 R 코드를 작성하시오.
for (i in 0:40) {
  if(i == 0) {
    n1 <- i
    cat(i, " ")
    next
  } 
  else if(i == 1) {
    n2 <- i
    cat(i, " ")
    next
  }
  else {
    n3 <- n1 + n2
    cat(n3, " ")
    n1 <- n2
    n2 <- n3
  }
}

# 문제 7
# R의 apply() 함수를 이용하여 다음 문제를 해결하는 R 코드를 작성하시오.
# (1) iris 데이터셋의 행별 합계를 출력하시오.
apply(iris[,-5], 1, sum)
# (2) iris 데이터셋의 열별 최댓값을 출력하시오.
apply(iris[,-5], 2, max)

# 문제 8
# (1) mtcars 데이터셋의 열별 합계를 출력하시오.
apply(mtcars, 2, sum)
# (2) mtcars 데이터셋의 열별 최댓값을 출력하시오.
apply(mtcars, 2, max)
# (3) mtcars 데이터셋의 열별 표준편차를 출력하시오.
apply(mtcars, 2, sd)

# 문제 9
# 다음과 같이 두 정수를 입력하면 두 수의 최대공약수를 찾아서 반환(return)하는 R 함수 lgm()을 만들고 테스트하시오.
#> result <- lgm(10,8)
#> result
#[1] 2
#> result <- lgm(10,20)
#> result
#[1] 10
lgm <- function(x, y) {
  if(x > y)
    result <- x - y
  else
    result <- y - x
  return(result)
}
result <- lgm(10,8)
result
result <- lgm(10,20)
result

# 문제 10
# 다음과 같이 벡터를 입력하면 벡터의 최댓값과 최솟값을 반환(return)하는 R 함수 maxmin()을 
# 만들고 테스트하시오(반환 값이 list임).
#> v1 <- c(7,1,2,8,9) 
#> result <- maxmin(v1)
#> result$max ; result$min
#[1] 9
#[1] 1
#> result <- maxmin(iris[,1])
#> result$max ; result$min
#[1] 7.9
#[1] 4.3
maxmin <- function(x) {
  a <- max(x)
  b <- min(x)
  return(list(max = a, min = b))
}

v1 <- c(7,1,2,8,9) 
result <- maxmin(v1)
result$max ; result$min

result <- maxmin(iris[,1])
result$max ; result$min

# 문제 11
# 10명의 몸무게를 저장한 벡터가 다음과 같을 때 질문을 해결하기 위한 R 코드를 작성하시오.
weight <- c(69, 50, 55, 71, 89, 64, 59, 70, 71, 80)
#(1) 몸무게가 가장 큰 값은 몇 번째에 있나? 
which.max(weight)
#(2) 몸무게가 가장 작은 값은 몇 번째에 있나? 
which.min(weight)
#(3) 몸무게가 61에서 69 사이인 값들은 몇 번째에 있나? 
which(weight >= 61 & weight <= 69)
#(4) 몸무게가 60 이하인 값들만 추출하여 weight.2에 저장하고 내용을 보이시오. 
weight.2 <- subset(weight, weight <= 60)
weight.2

# 문제 12
# (1) iris 데이터셋에서 꽃잎의 길이(Petal.Length)가 가장 큰 관측값(행)의 내용을 보이시오. 
x <- which.max(iris[,"Petal.Length"])
iris[x,]
# (2) iris 데이터셋에서 꽃잎의 폭(Petal.Width)이 0.3~0.4 사이인 관측값(행)들의 내용을 보이시오. 
x <- which(iris[,"Petal.Width"] >= 0.3 & iris[,"Petal.Width"] <= 0.4)
iris[x,]
