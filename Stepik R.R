# 1.2 
# STEP 5/16

my_number <- 42
my_logical_var <- my_number == my_number

# 1.2 
# STEP 6/16

var_2 <- var_1 * 10

# 1.2 
# STEP 7/16

result <- number_1 + number_2 > number_3

# 1.2  
# STEP 10/16

the_best_vector <- c(1:5000, 7000:10000)

# 1.2  
# STEP 11/16

my_numbers_2 <- my_numbers[c( 2, 5, 7, 9, 12, 16 , 20)]

# 1.2  
# STEP 14/16

my_sum <- sum(my_vector[my_vector > 10])

# 1.2  
# STEP 16/16

x <- sd(my_vector)
y <- mean(my_vector)

my_vector_2 <- my_vector[my_vector < y+x & my_vector > y-x]

# 1.3  
# STEP 7/11

mtcars$even_gear <- 1 - mtcars$gear %% 2

# 1.3  
# STEP 8/11

mpg_4 <- subset(mtcars$mpg, mtcars$cyl == 4, mpg)


# 1.3  
# STEP 9/11


mini_mtcars <-  mtcars[c(3,7,10,12,nrow(mtcars)), ] 


# 1.4  
# STEP 4/8, 1 variant
mtcars$new_var = 0

for (i in 1:nrow(mtcars)){
  if (mtcars$carb[i] >= 4 | mtcars$cyl[i] > 6){
    mtcars$new_var[i] <-  1
  } else mtcars$new_var[i] <- 0
}
# 1.4  
# STEP 4/8, 2 variant

mtcars$new_var <- ifelse((mtcars$carb >= 4 | mtcars$cyl > 6) , 1, 0)


# 1.4  
# STEP 5/8
if (mean(my_vector) > 20) {
  result <- 'My mean is great'
} else {
  result <- 'My mean is not so great'
}

#1.4  
# STEP 6/8


data <- as.vector (AirPassengers)

good_month <- c()

for (i in  3:143){
  if(data[i] > data[i-1]){
    good_month <- c(good_month, data[i])
  }
}


# 1.4  
# STEP 7/8

moving_average <- c()
data <- as.vector(AirPassengers)
for (i in 1:135){moving_average <- c(moving_average, sum(data[i:(i+9)])/10)}

# 1.5  
# STEP 5/15

result <- mean(df$qsec[df$cyl != 3 & df$mpg > 20])

# 1.5  
# STEP 7/15

descriptions_stat <- aggregate(cbind(hp,disp) ~ am,mtcars,sd)


# 1.5  
# STEP 11/15

df <- subset(airquality, airquality$Month%in%c(7,8,9))
result <- aggregate(df$Ozone ~ df$Month ,df,FUN = length)


# 1.5
# STEP 12/15

x <-  describeBy(airquality, group = airquality$Month, mat = T, digits = 1, fast = F)

# 1.5
#STEP  14/15

x <- subset(x = iris, iris$Species=="virginica")
describe(x)

# 1.5
# STEP 15/15

fixed_vector <- replace(my_vector, is.na(my_vector), mean(my_vector, na.rm = T))

# 1.6
# STEP 5/8, 1 variant

ggplot(airquality, aes(x = Month,y = Ozone, group = Month))+geom_boxplot()

# 1.6
# STEP 5/8, 2 variant
boxplot(Ozone ~ Month, data)

# 1.6 
# STEP 6/8

plot1 <- ggplot(mtcars, aes(x = mpg, y = disp, col = hp))+
  geom_point()

# 2.1
# STEP 5/16

red_men <- prop.table(HairEyeColor[,,'Male'],2 )[3,2]

# 2.1
# STEP 6/16

sum(HairEyeColor[,,'Female'][,4])

# 2.1
# STEP 7/16

mydata <- as.data.frame(HairEyeColor)
obj <- ggplot(data = subset(mydata, mydata$Sex=='Female'), aes(x = Hair, y = Freq,)) + 
  geom_bar(aes(fill = Eye),stat="identity", position = position_dodge()) + 
  scale_fill_manual(values=c("Brown", "Blue", "Darkgrey", "Darkgreen"))

# 2.1
# STEP 13/16

main_stat <- chisq.test(diamonds$cut, diamonds$color)$statistic


# 2.1
# STEP 14/16

factor_price <-  ifelse(diamonds$price >= mean(diamonds$price),1,0)
factor_carat <-  ifelse(diamonds$carat >= mean(diamonds$carat),1,0)
main_stat <-  chisq.test(factor_price,factor_carat)$statistic

# 2.1
# STEP 15/16

fisher_test <- fisher.test(mtcars$am, mtcars$vs)$p.value

# 2.2
# STEP 10/16

t_stat <-  t.test(x = subset(ToothGrowth, ToothGrowth$supp == 'OJ'& ToothGrowth$dose==0.5)['len'], 
                  y = subset(ToothGrowth, ToothGrowth$supp == 'VC'& ToothGrowth$dose==2)['len'])$statistic

# 2.2
# STEP 11/16

ff <- read.csv('D:/RStudio/Projects/lekarstva.csv')
t.test(ff$Pressure_before,ff$Pressure_after, paired = T)$statistic

# 2.2
# STEP 15/16

data <- read.table("D:/RStudio/Projects/dataset_11504_15.txt")

bartlett.test(data$V1 ~ data$V2, data)$p.value
t.test(data$V1 ~ data$V2)$p.value
wilcox.test(data$V1 ~ data$V2)$p.value


# 2.3
# STEP 8/15

ans <- aov(yield ~ N*P, data = npk)
summary(ans)[[1]][3,5]

# 2.3
# STEP 9/15

ans2 <- aov(yield ~ N+P+K, data = npk)
summary(ans2)[[1]][1:3,5]

# 2.3
# STEP 13/15

fill3 <-  aov(temperature ~ pill + Error(patient/pill), data = data2)
summary(fill3)

# 2.3
# STEP 14/15

fill4 <- aov(temperature ~ doctor*pill + Error(patient/doctor*pill), data = data2)
summary(fill4)

# 2.3
# STEP 15/15

obj <- ggplot(ToothGrowth, aes(x = as.factor(dose), y = len, col = supp, group = supp))+
  stat_summary(fun.data = mean_cl_boot, geom = 'errorbar', width = 0.1, position = position_dodge(0.2))+
  stat_summary(fun.data = mean_cl_boot, geom = 'point', size = 3, position = position_dodge(0.2))+
  stat_summary(fun.data = mean_cl_boot, geom = 'line', position = position_dodge(0.2))

# 2.4
# STEP 7/11

NA.position <- function(x){
  app <- c()
  for( i in 1:length(x)){
    if(is.na(x[i])){
      app <- c(app, i)
    }
  }
  return(app)
}

# 2.4
# STEP 8/11

NA.counter <- function(x){
  sum(is.na(x))
}

# 2.4
# STEP 10/11

filtered.sum <- function(x){
  sum(x[!is.na(x) & x > 0])
}

# 2.4
# STEP 11/11

outliers.rm <- function(x){
  x1 <-  quantile(x, probs = c(0.25, 0.75))[1]
  x2 <-  quantile(x, probs = c(0.25, 0.75))[2]
  x <- x[!(x<as.vector(x1)-(IQR(x)*1.5) | x > as.vector(x2)+(IQR(x)*1.5))]
}

