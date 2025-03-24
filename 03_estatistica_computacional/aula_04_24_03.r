### session > save workspace as | imagem, resultado dos comandos

# tipos de arquivos para salvar no R
  # Comandos com execuão
    # Rmd (notebook ou markdown)
    # R (script, bloco de notas)
  # Rhistory (salva os últimos comandos executado)
  # RData (salva os objetos)

# Aula 04 > matrizes e arrays
  ### o índice comea no 1 e não no 0 como no python
  # Para acessar A = [linha, coluna]

A <- matrix(c(3,5,8, 10), nrow = 2, ncol=2)
A
# > A
#     [,1] [,2]
#[1,]    3    8
#[2,]    5   10

x <- seq(1,30, 5)
B <- matrix(x, nrow = 2, byrow = TRUE)
B
# > B
#     [,1] [,2] [,3]
#[1,]    1    6   11
#[2,]   16   21   26
