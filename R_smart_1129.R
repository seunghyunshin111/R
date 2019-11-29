rootdif <- function(x, y){
  return(sqrt(x-y))
}

rootdif(20, 10)


round(rootdif(20, 10), 2)
round(rootdif(20, 10))
round(3.162278, 2)


# For loop

for(i in 1:10){
  if(i %% 3 == 1){
    next()
  }
  print(i)
}



for (i in 1:10){
  i = i + 1
  print(i)
  if (i>5){
    break
  }
}


# while loop

y = 0
while(y < 5){
  print(y = y + 1)
  }





# 실습 문제 풀이 복습
# 10월 21일_1

#문제 2

v1 <- 1:10
v1

v2 <- v1 * 2
v2

max_v <- max(v2)
max_v

min_v <- min(v2)
min_v

avg_v <- mean(v2)
avg_v

sum_v <- sum(v2)
sum_v

v3 <- v2[-5]
v3


# 문제 3

seq(1, 10, 2)
rep(1, 5)
rep((1:3), 3)
rep(1:4, each = 2)


# 문제 4

v3 <- seq(1, 10, 3)
v3
names(v3) <- c("A", "B", "C", "D")
v3


# 문제 5

count <- sample(1:100, 7)
count
week.korname <- c("일요일", "월요일", "화요일", "수요일", "목요일", "금요일", "토요일")
week.korname
names(count) <- week.korname
count  


########

# 값이 가장 큰 요일의 명칭을 출력한다.
# 값이 가장 작은 요일의 명칭을 출력한다.
# 50보다 큰 값에 해당하는 요일의 명칭을 출력한다.

names(count)[which.max(count)]
names(count)[which.min(count)]
names(count)[count > 50]


  
# 10월 22일_1

v1 <- seq(10, 38, 2)
v1  

m1 <- matrix(v1, 3, 5)
m1  

m_max_v <- max(m1)  
m_max_v

m_min_v <- min(m1)  
m_min_v

row_max <- apply(m1, 1, max)
row_max  

col_max <- apply(m1, 2, max)
col_max  


mm1 <- matrix(1:9, 3, 3)  
mm2 <- matrix(1:9, 3, 3, byrow = T)  
mm2  

colnames(mm2) <- c("col1", "col2", "col3")
mm2
rownames(mm2) <- c("row1", "row2", "row3")
mm2


###
# alpha에 ‘x’, ‘y’, ‘z’ 라는 행을 추가하여 alpha2 를 만들고 출력한다.
# alpha에 ‘s’, ‘p’ 라는 열을 추가하여 alpha3 를 만들고 출력한다.

alpha <- matrix(letters[1:6], 2, 3)
alpha2 <- rbind(alpha, letters[24:26]); alpha2
alpha3 <- cbind(alpha, c('s','p')); alpha3


# 10월 22일_2

data <- 1:24
data
a <- array(data, dim = c(2, 3, 4))
a

df1 <- data.frame(x = 1:5, y = seq(2, 10, 2))
df1

df2 <- data.frame(x = 1:5, y = letters[1:5], z = 6:10)
df2
colnames(df2) <- c("col1", "col2", "col3")
df2


#문제 4
제품명 <- c("사과", "딸기", "수박")
가격 <- c(1800, 1500, 3000)
판매량 <- c(24, 38, 13)

df3 <- data.frame(제품명, 가격, 판매량, stringsAsFactors=F)
df3


#문제 5

mean(df3$가격)
mean(df3$판매량)


#문제 6

name <- c("Potter", "Elsa", "Gates", "Wendy", "Ben")
gender <- factor(c("M", "F", "M", "F", "M"))
math <- c(85, 76, 99, 88, 40)

df4 <- data.frame(name, gender, math)
df4

str(name)
str(gender)
str(math)

df4$stat <- c(76, 73, 95, 82, 35)
df4$score <- df4$math + df4$stat

df4$grade <- ifelse(df4$score >= 150, "A",
                    ifelse(df4$score >= 100, "B",
                           ifelse(df4$score >= 70, "C", "D")))

#문제 7
library(readxl)

emp <- read.csv(file.choose(),
                stringsAsFactors = F)
str(emp)
head(emp)

emp[c(3, 4, 5), ,]
emp$ename
emp[c('ename', 'sal')] 
emp[emp$job=="SALESMAN", c('ename', 'sal', 'job')]
emp[emp$sal>=1000 & emp$sal<=3000, c('ename', 'sal', 'empno')]
emp[emp$job=="SALESMAN" | emp$job=="ANALYST", c('ename', 'job')]
emp[emp$job!="ANALYST", c('ename', 'job', 'sal')]
emp[is.na(emp$comm), c('ename', 'sal')]

# 문제16
emp[order(emp$sal, decreasing = F),]


#10월 23일_1

#10월 23일_2

#문제 1
grade <- sample(1:6, 1)
grade

if(grade <= 3){
  cat(grade, "학년은 저학년입니다.")
  
}else{
  cat(grade, "학년은 고학년입니다.")
}


#문제2

choice <- sample(1:5, 1)

if(choice == 1){
  300+50
}else if(choice == 2){
  300-50
}else if(choice == 3){
  300*50
}else if(choice == 4){
  300/50
}else{
  300%%50
}

## switch() 사용하기!
?switch
choice = sample(1:5, 1)
result = switch(choice, 300+50, 300-50, 300*50, 300/50, 300%%50)
cat("결과값 : ", result, sep="")


#문제 4 (switch())

score <- sample(0:100, 1)

if(score>=90){
  grade=1
}else if(score>=80){
  grade=2
}else if(score>=70){
  grade=3
}else if(score>=60){
  grade=4
}else{
  grade=5
}

result = switch(grade, "A등급", "B등급", "C등급", "D등급",
                "F등급")
cat(score, "점은", result, "입니다.")


#문제 5
alpha0 <- paste(LETTERS,letters, sep="")
alpha0


#10월 24일_1

#문제 1

exam1 <- function(){
  result <- paste(LETTERS, letters, sep="")
  
  return(result)
}

exam1()


#문제 2

exam2 = function(x){
  result <- sum(1:x)
  
  return(result)
}

exam2(10)


#문제 3

exam3 = function(x, y){
  result = if(x == y){
    return = 0
  }
}





