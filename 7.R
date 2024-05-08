# Assumindo que a frequencia cardíaca média seja de 60 bpm. 
# Crie um novo atributo categórico que separe em níveis: até 60 bpm, de 61 a 90 bpm e maior que 90 bpm. Calcule a média de passos por grupo e apresente na forma de gráfico de barras;

install.packages("magrittr")
install.packages("dplyr")
install.packages("ggplot2")
library(magrittr)
library(dplyr)
library(ggplot2)

data <- read.csv("data/activity_data_heartrate.csv")

data$frequencia_c <- cut(data$Heart_rate, breaks = c(0, 60, 90, Inf),
                      labels = c("até 60 bpm", "de 61 a 90 bpm", "maior que 90 bpm"))

media_passos <- tapply(data$TotalSteps, data$frequencia_c, mean)

barplot(media_passos, 
        main = "Média de Passos por Grupo de Frequência Cardíaca",
        xlab = "Grupo de Frequência Cardíaca", 
        ylab = "Média de Passos",
        col = "grey", 
        ylim = c(0, max(media_passos) * 1.2))