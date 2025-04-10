####### Continuação de listas e data frames

# https://aulasence.ibge.gov.br/Bacharelado/Daniela%20Polessa%20Paula/Estat%C3%ADstica%20Computacional%20I/Computacional_2022/Aula%205R.pdf
### Pág 16

notas_calculo <- sample(10, 5)
notas_algebra <- sample(10, 5)
nota <- list(notas_calculo, notas_algebra)
nota
#[[1]]
#[1]  6 10  3  9  4

#[[2]]
#[1] 9 5 8 3 6

medias <- lapply(nota, mean)
medias
#[[1]]
#[1] 6.4

#[[2]]
#[1] 6.2

maior_nota <- lapply(nota, max)
maior_nota
#[[1]]
#[1] 10

#[[2]]
#[1] 9

lista <- list(matrix(sample(10, 4), 2), 1:10)
lista
#[[1]]
#     [,1] [,2]
#[1,]    8    5
#[2,]    2    4

#[[2]]
# [1]  1  2  3  4  5  6  7  8  9 10

lapply(lista, max)
#[[1]]
#[1] 8

#[[2]]
#[1] 10

####### Em algumas situações a lista retornada por lapply pode ser transformada em um vetor ou em uma matriz mediante a utilização da função sapply
medias <- sapply(nota, mean)
medias
#[1] 6.4 6.2

################ Pulei para a página 24

idade <- sample(18:30, 10, replace = TRUE)
idade
# [1] 23 23 22 26 22 30 30 22 26 21

periodo <- sample(1:8, 10, replace = TRUE)
periodo
# [1] 6 3 5 3 5 6 5 5 2 8

raca <- sample(c("branca", "negra", "indigena", "parda", "amarela"), 10, replace = TRUE)
raca
# [1] "negra"    "branca"   "amarela"  "amarela"  "branca"   "parda"    "indigena" "indigena"
# [9] "negra"    "amarela"

cracumulado <- sample(50:100, 10, replace = TRUE) / 10
cracumulado
# [1] 7.1 6.8 6.4 5.2 6.7 9.9 9.1 8.7 6.7 8.2

dados <- data.frame(idade, periodo, raca, cracumulado) # Cria o dataframe

names(dados)
#[1] "idade"       "periodo"     "raca"        "cracumulado"

is.data.frame(dados) # Verifica se a variável é um dataframe
# [1] TRUE
