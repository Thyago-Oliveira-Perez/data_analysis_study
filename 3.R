# Construa o gráfico histograma do atributo TotalSteps. Faça a análise do gráfico;

install.packages("magrittr")
install.packages("dplyr")
install.packages("ggplot2")
library(magrittr)
library(dplyr)
library(ggplot2)

data <- read.csv("data/activity_data_heartrate.csv")

hist(data$TotalSteps)