######## w3schools

nome <- "Bernardo"
idade <- 37
curso_faculdade <- "estatística"
paste("Meu nome é", nome, "e eu tenho", idade, "anos", ", eu estudo", curso_faculdade)

ceiling(1.4) # arredonda para cima
floor(1.4) # arredonda para baixo

qwe <- "mais de uma
linha, assim vem com o \n na hora de imprimir"
qwe

outra_string <- "para não ter o \n 
tem que imprimir com a função cat()"
cat(outra_string)

cat("qualquer coisa") # qualquer coisa

################

combn(4,2) # de 1 até 4 e de dois em dois
#     [,1] [,2] [,3] [,4] [,5] [,6]
#[1,]    1    1    1    2    2    3
#[2,]    2    3    4    3    4    4

combn(c(1,5,6,8),2) # usando os números dentro de c, de dois em dois
#     [,1] [,2] [,3] [,4] [,5] [,6]
#[1,]    1    1    1    5    5    6
#[2,]    5    6    8    6    8    8

install.packages("partitions")
library(partitions)

perms(3)
#[1,] 1 1 2 2 3 3
#[2,] 2 3 1 3 1 2
#[3,] 3 2 3 1 2 1
