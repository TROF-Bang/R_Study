# 특이값(outlier) : 정상적인 분포에서 범위 밖에 위치하는 값, 이상치라고도 한다.
state.x77
dim(state.x77)
st <- data.frame(state.x77)
dim(st)

# 특이값을 확인하기 위해서 박스상자를 이용
boxplot(st$Income)

# 특이값의 수치를 확인
boxplot.stats(st$Income)$out

outvalue <- boxplot.stats(st$Income)$out
class(outvalue)
outvalue

# 특이값을 NA로 대체하는 방법
# A %in% B : B의 값이 A의 값에 포함이 되었는지 확인
st$Income[st$Income %in% outvalue] <- NA
st$Income

# NA값을 제외하고 새로운 데이터셋을 만든다.
new <- st[complete.cases(st),]
dim(new)
boxplot(new$Income)

# st$Population의 특이값을 알아내어 NA로 대체 후 새로운 데이터셋 만들기.
boxplot(st$Population)
poutvalue <- boxplot.stats(st$Population)$out
poutvalue

st$Population[st$Population %in% poutvalue] <- NA
# income 열에 1개의 NA가 있고 Population 열에 5개가 존재하여 6개이다.
sum(is.na(st))

pnew <- st[complete.cases(st),]
View(pnew)

boxplot(pnew$Population)
boxplot.stats(pnew$Population)

# 한번 새로운 데이터셋을 만들었음에도 불구하고 또 특이값이 발견되어 전처리를 진행함.
ppoutValue <- boxplot.stats(pnew$Population)$out
ppoutValue
pnew$Population[pnew$Population %in% ppoutValue] <- NA
ppnew <- pnew[complete.cases(pnew),]
boxplot(ppnew$Population)

# 또 다시 새로운 데이터셋을 만들었음에도 불구하고 또 특이값이 발견되어 전처리를 진행함.
pppoutValue <- boxplot.stats(ppnew$Population)$out
pppoutValue
ppnew$Population[ppnew$Population %in% pppoutValue] <- NA
pppnew <- ppnew[complete.cases(ppnew),]
# 이제 비로소 특이치가 다 제거되었으므로 분석을 하면 될 것이다.
boxplot(pppnew$Population)

