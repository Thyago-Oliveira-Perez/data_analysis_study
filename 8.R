# Construa uma tabela de frequências para a nova variável
install.packages("magrittr")
install.packages("dplyr")
install.packages("ggplot2")
library(magrittr)
library(dplyr)
library(ggplot2)

data <- read.csv("data/activity_data_heartrate.csv")

data$frequencia_c <- cut(data$Heart_rate, breaks = c(0, 60, 90, Inf),
                         labels = c("até 60 bpm", "de 61 a 90 bpm", "maior que 90 bpm"))

table(data$frequencia_c)