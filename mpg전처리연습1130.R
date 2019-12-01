library(dplyr)
data = as.data.frame(mpg)
sum = data$hwy + data$cty
sum

data %>% mutate(sum_mpg = mpg$hwy + mpg$cty) %>% head

data %>% mutate(sum_val = hwy + cty,
                mean_val = sum_val / 2) %>% 
  select(mean_val) %>% 
  head


data %>% mutate(temp = (hwy + cty) / 2) %>% 
  select(temp) %>% 
  head(3)


data %>% group_by(class) %>% summarise(mean_cty = mean(cty))

data %>% group_by(class) %>%
  summarise(mean_cty = mean(cty)) %>% arrange(desc(mean_cty)) 


data %>% group_by(manufacturer) %>%
  summarise(mean_hwy = mean(hwy)) %>%
  arrange(desc(mean_hwy)) %>% head(1)
  