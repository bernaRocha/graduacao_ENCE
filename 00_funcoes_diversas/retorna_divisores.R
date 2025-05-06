# Lista 1, questão 10 da lista de estatística computacional

retorna_divisores <- function(numero) {
  divisores <- which(numero %% 1: numero == 0)
  divisores
}

print(retorna_divisores(128))
#[1]   1   2   4   8  16  32  64 128
