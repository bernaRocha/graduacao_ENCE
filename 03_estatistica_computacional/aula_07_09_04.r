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
