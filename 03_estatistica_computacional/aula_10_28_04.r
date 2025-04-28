##  dplyr #####  Aula_6_notebook.Rmd

library(dplyr)
library(summarytools)
dfSummary(mtcars %>% group_by(am))


############# Revisão para a prova

dados1_alunos = data.frame(ID = c('001', '002', '003', '004'), nota1 = c(4.5, 6.7, 8.9, 9.1), nota2 = c(2.3, 5.6, 8.7, NA))

dados2_alunos = data.frame(ID = c('001', '002', '003', '004'), periodo = c(2, 4, 5, 6), idade = c(21, 18, 29, 32), sexo = c('masc', 'fem', 'fem', 'masc'))

merge(dados1_alunos, dados2_alunos, by='ID', 'periodo'))
