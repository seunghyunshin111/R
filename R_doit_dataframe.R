# 데이터프레임 변수명 바꾸기

# 1. 데이터프레임 생성
df_raw <- data.frame(var1 = c(1, 2, 1), var2 = c(2, 3, 2))
df_raw


# 2. dplyr 패키지 -> rename()
# install.packages("dplyr")
library(dplyr)


# 3. 복사본 생성(for 원본 보호)
df_new <- df_raw
df_new


# 4. rename()
?rename
df_new <- rename(df_new, v1 = var1, v2 = var2)
df_new


# 실습
# install.packages("ggplot2")
library(ggplot2)

mpg

mpg_new <- mpg
mpg_new

mpg_new <- rename(mpg_new, city = cty, highway = hwy)
mpg_new


# 파생변수

df <- data.frame(v1 = c(2, 3, 7), v2 = c(3, 7, 5))
df

df$sum <- df$v1 + df$v2
df

df$mean <- df$sum/2
df


#
