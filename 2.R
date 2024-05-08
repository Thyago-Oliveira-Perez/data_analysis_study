#Construa o gráfico boxplot do atributo Heart_rate. Faça a análise do gráfico;

install.packages("magrittr")
install.packages("dplyr")
install.packages("ggplot2")
library(magrittr)
library(dplyr)
library(ggplot2)

data <- read.csv("data/activity_data_heartrate.csv")

boxplot(data$Heart_rate)