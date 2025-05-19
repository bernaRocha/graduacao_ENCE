####### gabarito VAE 1

#### Q1
posicao <- which(1:150 %% 3 == 0)
posicao

vetor <- 1:150
multiplos3 <- vetor[posicao]
quantidade_de_multiplos5 <- length(which(multiplos3 %% 5 == 0))

#### Q2
matriz_notas <- matrix(sample(2:9, 20, T), 4,5)
row.names(matriz_notas) <- c('Ana', 'Julia', 'Pedro', 'Diego')

# a) calcular a média de cada aluno
apply(matriz_notas, 1, mean)

# b) encontrar o aluno que tirou a maior nota em cada matéria
apply(matriz_notas, 2, function(x) which(x == max)))

notas_max <- apply(matriz_notas, 2, max)

notamax1 <- row.names(matriz_notas)[which(matriz_notas[,1] == nota_max[1])]

#### Q3
v1 <- sample(25:48, 10, T)
m1 <- matrix(sample(10:90, 9), 3, 3)
a1 <- array(sample(30:80, 8), c(2,2,2))

# a) média e desvio padrão
mean(v1)
sd(v1)

# b) média na diagonal principal m1
mean(diag(m1))

# c) média de a1 no plano 2 e temperatura 2
a1[, 2, 2]
mean(a1[, 2, 2])
      
# d) em a1 calcular a média no tempo 1 e no tempo 2 e ver qual tem maior média de CO2
media_tempo1 <- mean(a1[ , , 1])
media_tempo2 <- mean(a1[ , , 2])
