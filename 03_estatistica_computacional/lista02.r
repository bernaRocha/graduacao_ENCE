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
M <- matrix(sample(20,16), 4, 4)

# Questão 3
