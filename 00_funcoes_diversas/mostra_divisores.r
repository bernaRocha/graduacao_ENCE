# Função que mostra os divisores de determinado número

mostra_divisores <- function(numero) {
  divisores <- which(numero %% 1: numero == 0)
  return(divisores)
}

print(mostra_divisores(128))
# [1]   1   2   4   8  16  32  64 128
