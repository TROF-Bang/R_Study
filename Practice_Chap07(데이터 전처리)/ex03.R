# 데이터 정렬
# 벡터의 정렬
v1 <- c(100,70,60,80,40,20,30)
v1

# order() : 주어진 값들의 정렬을 하는 인덱스로
# 작은 값을 기준으로 해서 인덱스로 출력한다.
order(v1)

# 내림차순을 기준으로 하여 인덱스를 출력한다.
order(v1, decreasing = T)

# 기본은 오름차순 정렬이다.
sort(v1)
sort(v1, decreasing = T)

# 데이터프레임의 정렬
order(iris$Sepal.Length)
order(iris$Sepal.Length, decreasing = T)

# 오름차순 정렬
iris[order(iris$Sepal.Length),]
# 내림차순 정렬
iris[order(iris$Sepal.Length, decreasing = T),]

# 정렬기준이 2개일 때...
View(iris[order(iris$Species, iris$Petal.Length),])