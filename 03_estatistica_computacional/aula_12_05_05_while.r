#####

x <- 2
while(x<10) {x<-x+1; print(x)}


divida <- 1000
taxa <- 1.15
mes <- 0

while(divida < 10000 {
  divida <- divida * taxa
  mes <- mes + 1
  }

mes


#Exemplo: funão com argumentos: nome de alunom matriz de faltas mensais e médias. Funão retorna
#o número total de faltas dos alunos, o aluno que teve maior número de faltas e um vetor de média final que é
#a própria média se o aluno teve mais de 10 faltas, caso tenha tido menos ou até 10 é a média + 0.5

x <- c('Fulano', 'Beltrano', 'Ciclano', 'Hermano')
y <- matrix(sample(0:8, 16, replace = TRUE), 4, 4)
z <- c(5.6, 72, 8.1, 6.7)

row.names(y) <- x

total_faltas <- apply(y, 1,sum)
max_faltas <- apply(y, 1,sum)

posicao_max_faltas <- which(apply(y, 1, max) == max(apply(y, 1, max)))

aluno_max_faltas <- names(max_faltas)[posicao_max_faltas]

media_final <- ifelse(total_faltas < 10, z + 0.5, z)

alunos_media <- function(x, y, z) {
  x <- c('Fulano', 'Beltrano', 'Ciclano', 'Hermano')
  y <- matrix(sample(0:8, 16, replace = TRUE), 4, 4)
  z <- c(5.6, 72, 8.1, 6.7)

  row.names(y) <- x

  total_faltas <- apply(y, 1,sum)
  max_faltas <- apply(y, 1,sum)

  posicao_max_faltas <- which(apply(y, 1, max) == max(apply(y, 1, max)))

  aluno_max_faltas <- names(max_faltas)[posicao_max_faltas]

  media_final <- ifelse(total_faltas < 10, z + 0.5, z)
  
}

