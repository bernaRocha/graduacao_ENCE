# Adicionando e excluindo elementos de um vetor

x <- c(1, 2, 3)
#### Acessando o elemento do vetor
x[2] #[1] 2
x[c(3, 1)] # [1] 3 1

x <- c(x[1], 4, x[2:3])
x # [1] 1 4 2 3

# Adicionando no começo do vetor
x <- c(5, x)
x # [1] 5 1 4 2 3

x <- x[-c(1,3)]
x # [1] 1 2 3

# Comparação de dois vetores
x <- 1:21
x #  [1]  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20 21
y <- seq(-10, 20, 5)
y # [1] -10  -5   0   5  10  15  20

x > y
# [1]  TRUE  TRUE  TRUE FALSE FALSE FALSE FALSE  TRUE  TRUE  TRUE  TRUE  TRUE FALSE FALSE  TRUE  TRUE  TRUE  TRUE  TRUE
# [20]  TRUE  TRUE

# Só os ímpares
x[!(x %% 2 == 0)] #  [1]  1  3  5  7  9 11 13 15 17 19 21

## Função which() - Retorna as posiçoes correspondentes ao valores de um vetor ue satisfazem uma ou mais condições

x <- seq(1, 40, 4)
which(x %% 2 == 0) # integer(0)
which(x %% 3 == 0) # [1] 3 6 9
