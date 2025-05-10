# Questão 1 - Escreva comandos em R para calcular a média de todos os números
# ímpares entre 1 e 100.
n <- (1:100)
n <- which(!n %% 2 == 0)
mean(n)

# Questão 2 - Escreva comandos R em que conte quantos números entre 1 e 1000
# são divisíveis por 7 e por 11 ao mesmo tempo.

q2 <- (1:1000)
q2 <- which(q2 %% 7 == 0 & q2 %% 11 == 0)
length(q2)

# Questão 3 - Você é analista de dados em uma empresa de manutenção técnica
# que envia equipes para atendimento externo. Sua tarefa é acompanhar a
# produtividade de cada funcionário no mês.

# Escolha ou use a função sample para criar os seguintes objetos em R:

# Objeto 1: Um vetor com os *nomes de 4 técnicos* da equipe de campo

nomes <- c('Fulano', 'Beltrano', 'Ciclano', 'Hermano')

# Objeto 2: Um vetor com os *níveis de experiência* de cada técnico, que pode ser:
# "Júnior", "Pleno" ou "Sênior"

experiencia <- sample(c("Júnior", "Pleno", "Sênior"), size = 4, replace = TRUE)

# Objeto 3: Um vetor com os *valores pagos por tarefa concluída" por cada técnico.

valores_por_tarefa <- ifelse(
  experiencia == "Júnior", 10,
  ifelse(experiencia == "Pleno", 20, 30)
)

# 4: Um *array 4x5x4* em que:
#  - A *primeira dimensão (4)* representa as semanas do mês.

semana_mes <- c(1, 2, 3, 4)

# - A *segunda dimensão (5)* representa os dias úteis da semana (segunda a sexta).

dia_semana <- c('seg', 'ter', 'qua', 'qui', 'sex')

# - A *terceira dimensão (4)* representa cada um dos técnicos. Cada posição do
# array deve conter um número *entre 0 e 3*, indicando *quantas tarefas o técnico
# realizou* naquele dia.

# meu_array <- array(dados, dim = dimensoes)

produtividade <- array(semana_mes, dia_semana, nomes) 
produtividade

produtividade <- array(
  sample(0:3, size = 4 * 5 * 4, replace = TRUE),  # 80 valores aleatórios
  dim = c(4, 5, 4),  # 4 semanas, 5 dias, 4 técnicos
  dimnames = list(
    paste("Semana", 1:4),
    c('seg', 'ter', 'qua', 'qui', 'sex'),
    nomes
  )
)

# Visualizar o array (exemplo para a primeira semana):
print(produtividade)

#Escreva comandos que calcule e mostre:
#  a) O total de tarefas realizadas no mês por cada técnico
#  b) O valor total recebido por cada técnico no mês (com base nas tarefas e valor por tarefa)
#  c) A produtividade relativa: Qual técnico teve a maior e a menor média diária de tarefas ?
#  d) Crie uma nova lista chamada 'resumo_tecnico' com os nomes dos técnicos, o nível de experiência, o total no mês, e o valor total recebido.

# a
total_por_tecnico <- apply(produtividade, 3, sum)
total_por_tecnico


# b
total_por_tecnico <- apply(produtividade, 3, sum)
names(total_por_tecnico) <- nomes

# Passo 2: Calcular o valor total recebido por técnico
valor_total_tecnico <- total_por_tecnico * valores_por_tarefa
valor_total_tecnico

# c
media_diaria <- total_por_tecnico / 20 # 20 dias úteis
media_diaria

# d

resumo_tecnico <- list(
  Nomes = nomes,
  Experiencia = experiencia,
  Total_Tarefas_Mes = total_por_tecnico,
  Valor_Total_Recebido = valor_total_tecnico
)

resumo_tecnico
