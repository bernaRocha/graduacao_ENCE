# https://aulasence.ibge.gov.br/Bacharelado/Daniela%20Polessa%20Paula/Estat%C3%ADstica%20Computacional%20I/Computacional_2022/Aula%205R.pdf

########### Listas e Data Frames
## Equivalente a um "struct" na linguagem C

aluno <- list(nome = "Bernardo Monteiro Rocha", idade = 37, renda = 3100.25, publica = TRUE)
aluno # mostra todo o conteúdo da list

aluno[1]
#$nome
#[1] "Bernardo Monteiro Rocha"

###### melhor usar o nome da variável ao invés de um índice para acessar o valor
aluno$nome   
#[1] "Bernardo Monteiro Rocha"

#### adicionando uma variável a list   [1]
aluno$lingua_estrangeira <- "mandarim"

#### adicionando uma variável a list   [2]
aluno[[6]] <- "noturno"  # adiciona valor sem uma variável

for (x in aluno){ print(x)}
# [1] "Bernardo Monteiro Rocha"
# [1] 37
# [1] 3100.25
# [1] TRUE
# [1] "mandarim"
# [1] "noturno"

domicilio <- list(total_pessoas = 2, animais = 3, banheiro = TRUE)
domicilio$animais
# [1] 3
domicilio$animais_tipo
# [1] "felino"

length(domicilio)
# [1] 4

#### adicionando uma variável a list   [3]

aluno[7:8] <- c(78, FALSE)
for (x in aluno){ print(x)}
# [1] "Bernardo Monteiro Rocha"
# [1] 37
# [1] 3100.25
# [1] TRUE
# [1] "mandarim"
# [1] "noturno"
# [1] 78
# [1] 0

#### adicionando uma variável a list   [4]
aluno = c(aluno, list(q=9,w="Z")) # variáveis são adicionadas ao final da lista original

##### EXCLUINDO VALORES
# 1
aluno[7:8] <- NULL
# 2
aluno$idade <- NULL
# 3
aluno[[5]] <- NULL

aluno
# $nome
# [1] "Bernardo Monteiro Rocha"

# $renda
# [1] 3100.25

# $publica
# [1] TRUE

# $lingua_estrangeira
# [1] "mandarim"

#### acessando as variáveis da lista
names(aluno)
# [1] "nome"               "renda"              "publica"            "lingua_estrangeira"


dados <- list(v=1:10, A = matrix(1:16, 4, 4)) # cria um vetor e uma matriz
length(dados)
# [1] 2
length(dados$v)
# [1] 10
length(dados$A)
# [1] 16

###### Comando as.list converte para lista
x = as.list(c("Fulano", 29, FALSE))

###### Comando unlist produz um vetor com todos os componentes de uma lista
data <- unlist(aluno)

notas <- list(calculo = 7.0, algebra = 2.3, computacao = 5.3)
notas <- unlist(notas)
notas
#   calculo    algebra computacao 
#       7.0        2.3        5.3 

### Apagando os nomes das variáveis
notas <- unname(notas)
notas
# [1] 7.0 2.3 5.3


##################### DURANTE A AULA #####################

predio <- list(sexo=sample(c("F", "M"), 50, T), idades = sample(2:70, 50, T))

### a) encontre a média de idade por sexo

posicaoF <- which(predio$sexo == "F")
mean(posicaoF) # Média das mulheres do predio
# [1] 28.5
posicaoM <- which(predio$sexo == "M") # Média dos homens
mean(posicaoM)
# [1] 21
