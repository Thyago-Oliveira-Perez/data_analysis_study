# Estime a estatística descritiva (
# média, mediana, amplitude, desvio padrão e coeficiente de variação) 
# dos atributos: TotalSteps, TotalDistance, TotalActiveMinutes, Heart_rate e Calories;

install.packages("magrittr")
install.packages("dplyr")
install.packages("ggplot2")
library(magrittr)
library(dplyr)
library(ggplot2)

data <- read.csv("data/activity_data_heartrate.csv")

data_ts <- data %>% arrange(desc(TotalSteps))
media_ts <- mean(data_ts$TotalSteps)
mediana_ts <- median(data_ts$TotalSteps)
amplitude_ts <- max(data_ts$TotalSteps) - min(data_ts$TotalSteps)
desvio_padrao_ts <- sd(data_ts$TotalSteps)
coeficiente_variacao_ts <- (desvio_padrao_ts/media_ts) * 100

data_td <- data %>% arrange(desc(TotalDistance))
media_td <- mean(data_td$TotalDistance)
mediana_td <- median(data_td$TotalDistance)
amplitude_td <- max(data_td$TotalDistance) - min(data_td$TotalDistance)
desvio_padrao_td <- sd(data_td$TotalDistance)
coeficiente_variacao_td <- (desvio_padrao_td/media_td) * 100

data_ta <- data %>% arrange(desc(TotalActiveMinutes))
media_ta <- mean(data_ta$TotalActiveMinutes)
mediana_ta <- median(data_ta$TotalActiveMinutes)
amplitude_ta <- max(data_ta$TotalActiveMinutes) - min(data_ta$TotalActiveMinutes)
desvio_padrao_ta <- sd(data_ta$TotalActiveMinutes)
coeficiente_variacao_ta <- (desvio_padrao_ta/media_ta) * 100

data_hr <- data %>% arrange(desc(Heart_rate))
media_hr <- mean(data_hr$Heart_rate)
mediana_hr <- median(data_hr$Heart_rate)
amplitude_hr <- max(data_hr$Heart_rate) - min(data_hr$Heart_rate)
desvio_padrao_hr <- sd(data_hr$Heart_rate)
coeficiente_variacao_hr <- (desvio_padrao_hr/media_hr) * 100

data_c <- data %>% arrange(desc(Calories))
media_c <- mean(data_c$Calories)
mediana_c <- median(data_c$Calories)
amplitude_c <- max(data_c$Calories) - min(data_c$Calories)
desvio_padrao_c <- sd(data_c$Calories)
coeficiente_variacao_c <- (desvio_padrao_c/media_c) * 100