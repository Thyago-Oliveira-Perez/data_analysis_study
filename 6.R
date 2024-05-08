# Apresente o gráfico de dispersão dos atributos, TotalActiveMinutes e Calories; Faça a análise do gráfico;

install.packages("magrittr")
install.packages("dplyr")
install.packages("ggplot2")
library(magrittr)
library(dplyr)
library(ggplot2)

data <- read.csv("data/activity_data_heartrate.csv")

plot(data$TotalActiveMinutes, data$Calories,
     main = "Grafico de Dispersao entre TotalSteps e Calorias",
     xlab = "Total Active Minutes",
     ylab = "Calorias",
     col = "black",
     pch = 2)