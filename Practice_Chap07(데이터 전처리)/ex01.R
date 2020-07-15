# 데이터의 전처리
# 1. 결측값(NA)- Not Available약자

# 결측값을 포함하고 있는 벡터
z <- c(1,2,3,NA,5,NA,8)
z

# 정상 계산이 안됨.(NA를 포함 하고 있기 때문)
sum(z)
mean(z)
# 벡터의 값이 NA일 경우 TRUE, NA가 아니면 FALSE
is.na(z)
sum(is.na(z)) # NA의 총 계수

# 결측치를 제외하고 합계(매개변수 na.rm은 대부분의 계산 함수 존재
# 하므로 적절히 결측치를 제외하고자 할 때 이용하면 된다.)
sum(z, na.rm = TRUE)
mean(z, na.rm = TRUE)

# 결측치 대체
z1 <- c(1,2,3,NA,5,NA,8)
z2 <- c(5,8,1,NA,3,NA,7)

z1[is.na(z1)] <- 0
z1
x <- is.na(z1)
class(x)
sum(x)

# 결측치 제거 후 새로운 벡터로 저장
z3 <- as.vector(na.omit(z2))
z3

# 데이터프레임의 결측괎을 처리
x <- iris
dim(x)

# 한 줄에 여러 개의 명령을 실행하고자 한다면 ;으로 구분을
# 지어주어야 한다.
x[1,2] <- NA; x[1,3] <- NA
x[2,3] <- NA; x[3,4] <- NA
head(x)

thisna <- c()
# for문 이용하여 결측값 확인(열)
for (i in 1:ncol(x)) {
  thisna <- is.na(x[,i])
  cat(colnames(x)[i], "\t", sum(thisna), "\n")
}

# apply함수 이용하여 결측값 확인(열)
# 사용자 정의함수
col_na <- function(y) {
  return(sum(is.na(y)))
}

na_count <- apply(x, 2, FUN = col_na)
na_count

# 행별 결측값 확인
rowSums(is.na(x))

# 데이터셋 전체에서 NA개수
sum(is.na(x))

# 결측값만 제거 후 표기
x[complete.cases(x),]
# 결측값만 표기
x[!complete.cases(x),]