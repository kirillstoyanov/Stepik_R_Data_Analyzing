# 1.2 1

my_number <- 42
my_logical_var <- my_number == my_number

# 1.2 2

var_2 <- var_1 * 10

# 1.2 3

result <- number_1 + number_2 > number_3

# 1.2 4

the_best_vector <- c(1:5000, 7000:10000)

# 1.2 5

my_numbers_2 <- my_numbers[c( 2, 5, 7, 9, 12, 16 , 20)]

# 1.2 6

my_sum <- sum(my_vector[my_vector > 10])

# 1.2 7

x <- sd(my_vector)
y <- mean(my_vector)

my_vector_2 <- my_vector[my_vector < y+x & my_vector > y-x]

# 1.3 1

mtcars$even_gear <- 1 - mtcars$gear %% 2

# 1.3 2

mpg_4 <- subset(mtcars$mpg, mtcars$cyl == 4, mpg)


# 1.3 3


mini_mtcars <-  mtcars[c(3,7,10,12,nrow(mtcars)), ] 


# 1.4 1 1 variant
mtcars$new_var = 0

for (i in 1:nrow(mtcars)){
  if (mtcars$carb[i] >= 4 | mtcars$cyl[i] > 6){
    mtcars$new_var[i] <-  1
  } else mtcars$new_var[i] <- 0
}
# 1.4 1 2 variant

mtcars$new_var <- ifelse((mtcars$carb >= 4 | mtcars$cyl > 6) , 1, 0)


# 1.4 2
if (mean(my_vector) > 20) {
  result <- 'My mean is great'
} else {
  result <- 'My mean is not so great'
}

#1.4 3


data <- as.vector (AirPassengers)

good_month <- c()

for (i in  3:143){
  if(data[i] > data[i-1]){
    good_month <- c(good_month, data[i])
  }
}


#1.4 4

moving_average <- c()
data <- as.vector(AirPassengers)
for (i in 1:135){moving_average <- c(moving_average, sum(data[i:(i+9)])/10)}













