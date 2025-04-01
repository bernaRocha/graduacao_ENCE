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

A <- matrix(c(3, 5, 8, 10), nrow = 2, ncol = 2)
A
# > A
#     [,1] [,2]
#[1,]    3    8
#[2,]    5   10

x <- seq(1, 30, 5)
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

C <- matrix(sample(100, 10), nrow = 5)
C    ##### amostra aleatória, ao rodar de novo dá outro resltado em C
#     [,1] [,2]
#[1,]   37   57
#[2,]   19   75
#[3,]   38   65
#[4,]   46   52
#[5,]   35    9

dim(C)  # [1] 5 2 - linhas e colunas de C

inflacao <- matrix(c(1.1, 0.95, 0.78, 1.25, 1.79, 1.89), ncol = 3, dimnames = list(c("ano_1", "ano_2"), c('Trim1','Trim2', 'Trim3')))
inflacao
#      Trim1 Trim2 Trim3
#ano_1  1.10  0.78  1.79
#ano_2  0.95  1.25  1.89


A[1][1]   # [1] 3 - Acesso a uma entrada

A[,2] # Acesso a COLUNA dois

A[1,] # [1] 3 8 - Acesso a LINHA UM 


matrix4 <- matrix(1:16, 4, 4)
matrix4
#     [,1] [,2] [,3] [,4]
#[1,]    1    5    9   13
#[2,]    2    6   10   14
#[3,]    3    7   11   15
#[4,]    4    8   12   16

matrix4[1:2,] #linhas 1 e 2 | registros
#     [,1] [,2] [,3] [,4]
#[1,]    1    5    9   13
#[2,]    2    6   10   14

matrix4[, 2] # Acessando a coluna| variável 2
# [1] 5 6 7 8

matrix4[c(1, 3), 2] # linhas| registros 1 e 3 e coluna| variável 2
# [1] 5 7


################## OPERAÇÕES MATRICIAIS

a <- matrix(seq(1, 9), nrow = 3)
b <- matrix(c(1:9)^ 2, nrow = 3)
a
#     [,1] [,2] [,3]
#[1,]    1    4    7
#[2,]    2    5    8
#[3,]    3    6    9
b
#     [,1] [,2] [,3]
#[1,]    1   16   49
#[2,]    4   25   64
#[3,]    9   36   81

a - b   # valor por valor
#     [,1] [,2] [,3]
#[1,]    0  -12  -42
#[2,]   -2  -20  -56
#[3,]   -6  -30  -72

b ^ 3   # b ao cubo
#     [,1]  [,2]   [,3]
#[1,]    1  4096 117649
#[2,]   64 15625 262144
#[3,]  729 46656 531441

sqrt(b)
#     [,1] [,2] [,3]
#[1,]    1    4    7
#[2,]    2    5    8
#[3,]    3    6    9

a == sqrt(b)
#     [,1] [,2] [,3]
#[1,] TRUE TRUE TRUE
#[2,] TRUE TRUE TRUE
#[3,] TRUE TRUE TRUE

length(a == sqrt(b)) # [1] 9

a%%2 # resto da divisão por 2 para cada entrada 
######### pode ser usado para fazer uma média d cada valor ou outra medida 
#     [,1] [,2] [,3]
#[1,]    1    0    1
#[2,]    0    1    0
#[3,]    1    0    1

b%/%2
#     [,1] [,2] [,3]
#[1,]    0    8   24
#[2,]    2   12   32
#[3,]    4   18   40

q <- matrix(c(1:4), nrow = 2)
q
#     [,1] [,2]
#[1,]    1    3
#[2,]    2    4

u <- matrix(sample(10,4), nrow = 2)
u
#     [,1] [,2]
#[1,]   10    2
#[2,]    8    7

q * u # produto simples entre as entradas
#     [,1] [,2]
#[1,]   10    6
#[2,]   16   28

q %*% u # produto matricial, ÁLGEBRA LINEAR
#     [,1] [,2]
#[1,]   34   23
#[2,]   52   32


t <- matrix(sample(10,4), nrow = 2)
t
#     [,1] [,2]
#[1,]    3   10
#[2,]    1    2

t_inversa = solve(t)
t_inversa
#      [,1]  [,2]
#[1,] -0.50  2.50
#[2,]  0.25 -0.75

det(t) # [1] -4 - determinante da matrix

t[lower.tri(t)] #[1] 1 - elementos da diagonal inferior

t[upper.tri(t)] #[1] 10 - elementos da diagonal superior


qwe <- matrix(c(1:9), nrow = 3)
qwe
#     [,1] [,2] [,3]
#[1,]    1    4    7
#[2,]    2    5    8
#[3,]    3    6    9
qwe[lower.tri(qwe)]
#[1] 2 3 6

qwe[upper.tri(qwe)]
#[1] 4 7 8

eigen(qwe) # Calcula os autovalores e autovetores

#$values
#[1]  1.611684e+01 -1.116844e+00 -5.700691e-16

#$vectors
#           [,1]       [,2]       [,3]        
#[1,] -0.4645473 -0.8829060  0.4082483        
#[2,] -0.5707955 -0.2395204 -0.8164966
#[3,] -0.6770438  0.4038651  0.4082483  