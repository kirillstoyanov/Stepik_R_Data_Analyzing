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

