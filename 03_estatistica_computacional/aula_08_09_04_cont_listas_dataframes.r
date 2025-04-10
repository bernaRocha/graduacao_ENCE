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
