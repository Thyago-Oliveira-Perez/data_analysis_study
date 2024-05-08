# Apresente o gráfico de dispersão dos atributos, TotalSteps e TotalDistance; Faça a análise do gráfico;

install.packages("magrittr")
install.packages("dplyr")
install.packages("ggplot2")
library(magrittr)
library(dplyr)
library(ggplot2)

data <- read.csv("data/activity_data_heartrate.csv")

plot(data$TotalSteps, data$TotalDistance,
     main = "Grafico de Dispersao entre TotalSteps e Distance",
     xlab = "Total Steps",
     ylab = "Distance",
     col = "black",
     pch = 2)