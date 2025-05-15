# Aulas 8 notebook

library(readxl) # para a lib que carrega arquivo excel

View(Dados1)
Dados1$Sexo = as.factor(Dados1$Sexo)
Dados1$IMC <- Dados1$Peso / ((Dados1$Altura) ^ 2)
Dados1$IMC <- round(Dados1$IMC, 2)

library(ggplot2)
