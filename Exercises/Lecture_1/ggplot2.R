# Excerise 1.1 Task 2
# 04.03.2024
library(ggplot2)
mpg_plot <- ggplot(mpg, aes(x = displ, y = hwy)) +
  geo_point(aes(colour = class))

mpg_plot

