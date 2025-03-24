### session > save workspace as | imagem, resultado dos comandos

# tipos de arquivos para salvar no R
  # Comandos com execuão
    # Rmd (notebook ou markdown)
    # R (script, bloco de notas)
  # Rhistory (salva os últimos comandos executado)
  # RData (salva os objetos)

# Aula 04 > matrizes e arrays
  ### o índice comea no 1 e não no 0 como no python
  ## Array - Pode ter 2 ou mais dimensões, consegue guardar mais informações
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

b <- matrix(x, nrow = 2)
b
#     [,1] [,2] [,3]
#[1,]    1   11   21
#[2,]    6   16   26

dim(b) # [1] 2 3
ncol(b) # 3
nrow(b) # 2

inflacao <- matrix(c(1.1, 0.95, 0.78, 1.25, 1.79, 1.89), ncol = 3, dimnames = list(c("ano_1", "ano_2"), c('Trim1','Trim2', 'Trim3')))
inflacao
#      Trim1 Trim2 Trim3
#ano_1  1.10  0.78  1.79
#ano_2  0.95  1.25  1.89
