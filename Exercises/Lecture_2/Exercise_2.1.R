my_name <- "Rahel"
name_length <- nchar(my_name)
now_doing <- paste(my_name, "is programming!")
print(now_doing)
toupper(now_doing)

#Pick two of your favorite numbers (between 1 and 100) and assign them to variables fav_1 and fav_2
fav_1 <- 5
fav_2 <- 12

fav_1 <- 5/sqrt(201)
fav_2 <- 12/sqrt(201)

raw_sum <- sum(fav_1,fav_2)

round_sum <- round(raw_sum, 1)

round_1 <- round(fav_1, digits =1)
round_2 <- round(fav_2, digits =1)

sum_round <-round(round_sum, digits =1)

big_sum <- max(round_sum, sum_round)

add_three <- function(num1){
  result <- num1 +3
  return(result)
}
   
ten <- add_three(7)

imperial_to_metric <- function(feet, inches){
  total_inches <- feet * 12 + inches
  meters <- total_inches * 0.0254
  meters
  }

height_in_meters <- imperial_to_metric(5, 5)
print(height_in_meters)