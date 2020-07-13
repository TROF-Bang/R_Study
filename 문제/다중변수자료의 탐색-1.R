# 문제 5
inc <- c(121,99,41,35,40,29,35,24,50,60)
tp <- c(19,20,16,16,18,12,14,12,16,17)
data <- data.frame(inc, tp)
plot(inc~tp, data = data)
res <- lm(inc~tp, data = data)
abline(res)
cor(inc, tp)
# 수입과 교육기간은 비례 관계이다.

# 문제 6
gr <- c(77.5,60,50,95,55,85,72.5,80,92.5,87.5)
wa <- c(14,10,20,7,25,9,15,13,4,21)
data <- data.frame(gr, wa)
plot(gr~wa, data = data)
res <- lm(gr~wa, data = data)
abline(res)
cor(gr, wa)
# 성적과 티비시청의 관계는 반비례 관계이다.

# 문제 7
mtcars
plot(mtcars[,1:11])
cor(mtcars[,1:11])
# 연비와 가장 상관관계가 높은 변수는 중량이며 반비례 관계이다.