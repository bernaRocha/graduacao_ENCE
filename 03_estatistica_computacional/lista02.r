#### link da lista https://aulasence.ibge.gov.br/Bacharelado/Daniela%20Polessa%20Paula/Estat%C3%ADstica%20Computacional%20I/Computacional_2022/lista2.pdf
# Questão 1

primeira_matrix <-matrix(c(0,1,1,1,0,1,1,1,0), ncol=3, nrow=3)
primeira_matrix
#     [,1] [,2] [,3]
#[1,]    0    1    1
#[2,]    1    0    1
#[3,]    1    1    0
########## de forma inteligente
matrix(rep(1,9), 3) - diag(1, 3)

segunda_matriz <- matrix(c(2,4, 8, 16, 32, 64, 128, 256, 512), ncol=3, nrow=3)
segunda_matriz

########## de forma inteligente
matrix(2^(1:9), nrow = 3, ncol = 3,byrow = T)

# Questão 2

##### elemento minmax é o maior elemento na linha onde se encontra o menor elmento
M <- matrix(sample(20,16), 4, 4)

# Questão 3

# Questão 6
V <- sample(20,40, replace = TRUE)
# [1] 12  2  3 12  1  9 16 13  6 14 12 20  6  2  2 13  3  2 12  7  7 10 14  8 16
# [26]  9 19  6 10  7  8 11  5 15 11 15 14 20 17 14
unique(V)
# [1] 12  2  3  1  9 16 13  6 14 20  7 10  8 19 11  5 15 17
prod(unique(V))
# [1] 3.379031e+16

# Questão 7
X <- sample(20, 40, replace = TRUE)
Y <- sample(20, 40, replace = TRUE)

intersecao <- intersect(X,Y)
intersecao
# [1]  7 15 17 19 14 16  2  8 13  9  5  3 10  4 18
cumsum(intersecao)
# [1]   7  22  39  58  72  88  90  98 111 120 125 128 138 142 160

# Questão 10

q <- c(1, 5, 10, 20, 50, 100)
posicao <- combn(length(q), 2)
apply(matrix(q[posicao], nrow=2), 2, mean)
