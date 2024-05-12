# Questão 2: Crie um vetor chamado Nível, composto pelos seguintes registros, ordenando suas categorias:
# Alto Baixo Baixo Médio Alto Médio Médio Baixo Baixo Médio

nivel <- c("Alto", "Baixo", "Baixo", "Médio", "Alto", "Médio", "Médio", "Baixo", "Baixo", "Médio")

ordem_nivel <- c("Baixo", "Médio", "Alto")

ordenar <- factor(nivel, levels=ordem_nivel)

nivel_ordenado <- ordenar[order(ordenar)]

vetor_nivel <- as.character(nivel_ordenado)

print(vetor_nivel)

# Questão 3: Crie a seguinte matriz, e dê a ela o nome de Matriz A:
# matriz de 1 até 16 em 4 linhas e colunas

matrizA <- matrix(1:16, nrow=4, ncol=4)
matrizA

# (a) Atribua os seguintes nomes às colunas dessa matriz: Primeira, Segunda, Terceira e Quarta.

colnames(matrizA) <-c('Primeira', 'Segunda', 'Terceira', 'Quarta')
matrizA

# (b) Atribua os seguintes nomes às linhas dessa matriz: A, B, C e D.

rownames(matrizA) <-c('A', 'B', 'C', 'D')
matrizA

# (c) Some 2 a cada elemento dessa matriz, e nomeie a matriz resultante como Matriz B.

matrizB <- matrizA + 2
matrizB

# (d) Extraia o elemento da 2a linha e 3a coluna da Matriz B.

matrizB[2, 3]

# (e) Extraia a sub-matriz composta pelas linhas 3 e 4, e colunas 1 e 2 de Matriz B.

matrizB[3:4, 1:2]
# ou
matrizB[c(3, 4), c(1, 2)]

# (f) Extraia as duas últimas colunas de Matriz B.
matrizB[, 3:4]

# (g) Extraia a primeira e a terceira linhas de Matriz B.
matrizB[c(1, 3), ]

# (h) Some os elementos de Matriz A e Matriz B.
matrizA + matrizB

# Questão 4
# (a) Construa um data frame para representar essa base de dados.

id <- c('a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j')
sexo <- c('F', 'M', 'F', 'F', 'F', 'M', 'F', 'F', 'M', 'M')
idade <- c(29, NULL, 30, 41, 19, 22, NULL, 31, 40, 39)
escolaridade <- c('Superior completo', 'Médio completo', 'Superior completo', 'Pós-graduação', NULL, 'Médio completo', 'Pós-graduação', 'Superior completo', 'Superior completo', 'Pós-graduação')

tabela <- data.frame()



