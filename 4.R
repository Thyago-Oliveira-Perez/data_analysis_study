# Apresente o gráfico de dispersão dos atributos, TotalSteps e Calories; Faça a análise do gráfico;

install.packages("magrittr")
install.packages("dplyr")
install.packages("ggplot2")
library(magrittr)
library(dplyr)
library(ggplot2)

data <- read.csv("data/activity_data_heartrate.csv")

plot(data$TotalSteps, data$Calories,
     main = "Grafico de Dispersao entre TotalSteps e Calorias",
     xlab = "Total Steps",
     ylab = "Calorias",
     col = "black",
     pch = 2)