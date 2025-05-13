###### Adiantando a apostila da aula 6 
# https://aulasence.ibge.gov.br/Bacharelado/Daniela%20Polessa%20Paula/Estat%C3%ADstica%20Computacional%20I/Computacional_2022/Aula%206R.pdf

# Fatores são um tipo especial de vetoers orientados para armazenar variáveis categóricas


tipo_partido <- factor(c('esq', 'dir', 'esq', 'dir'))
tipo_partido 
# [1] esq dir esq dir
# Levels: dir esq

qualidade_produto <- factor(sample(c("o","b", "r", "ru","p"), 10, replace = TRUE))
qualidade_produto
# [1] p  o  b  o  p  r  o  b  ru r
# Levels: b o p r ru

######### Fatores numéricos

data <- c(1,2,3,2,1,2,3,2,1,1,2,3,2,1)
fdata <- factor(data)
fdata
# [1] 1 2 3 2 1 2 3 2 1 1 2 3 2 1
# Levels: 1 2 3

rdata <- factor(data, labels = c('I', 'II', 'III'))
rdata
# [1] I   II  III II  I   II  III II  I   I   II  III II  I
# Levels: I II III

########## Extraindo dados

fert <- c(10, 20, 20, 50, 10, 20, 10, 20, 50) # Aqui é possível tirar a média

fert <- factor(fert, levels = c(10, 20, 50), ordered = TRUE) ## Aqui não
fert
# [1] 10 20 20 50 10 20 10 20 50
# Levels: 10 < 20 < 50f

mean(as.numeric(levels(fert)[fert]))
# [1] 23.33333
mean(as.numeric(as.character(fert)))
# [1] 23.33333

############ extraindo dados
as.vector(qualidade_produto)
# [1] "p"  "o"  "b"  "o"  "p"  "r"  "o"  "b"  "ru" "r"
qualidade_produto
# [1] p  o  b  o  p  r  o  b  ru r
#Levels: b o p r ru

nlevels(qualidade_produto) # Quantas categorias únicas
# [1] 5

x <- sample(c('masculino', 'feminino'), 8, replace = TRUE)
x
# [1] "feminino"  "feminino"  "feminino"  "feminino"  "masculino" "feminino" "feminino"  "feminino"
is.factor(x)
# [1] FALSE

sexo <- as.factor(x)
is.factor(sexo)
#[1] TRUE

############# Alterando os fatores

classificacao <- factor(sample(c('a', 'b'), 10, replace = TRUE))
classificacao
# [1] b a b b a a a b a b
# Levels: a b

classificacao[11] <- 'b'
classificacao
# [1] a a a b a a b b b b b 

classificacao[12:14] <- c('a', 'b', 'b')
> classificacao
# [1] a a a b a a b b b b b a b b
Levels: a b

####### Adicionando categoria
levels(classificacao)[3] <- 'C'
classificacao[15:18] <- c('C')
classificacao
# [1] a a a b a a b b b b b a b b C C C C
# Levels: a b C

######### Definindo previamente os níveis

conceito <- factor(c('a', 'b', 'c', 'a'), levels <- c('a', 'b', 'c', 'd'))
conceito
# [1] a b c a
# Levels: a b c d

conceito[5:9] <- c('a', 'd', 'd', 'b', 'a')
conceito
# [1] a b c a a d d b a
# Levels: a b c d


######### Fazendo tabulação e cruzada

sexo <- factor(c('m', 'f', 'm', 'f', 'f', 'f'))
sexo
# [1] m f m f f f
# Levels: f m

table(sexo) # Frequência absoluta
sexo
# f m
# 4 2

grau_instrucao <- factor(c('1o', '1o', '2o', '3o', '2o', '1o'))
grau_instrucao
# [1] 1o 1o 2o 3o 2o 1o
# Levels: 1o 2o 3o

table(sexo, grau_instrucao)
#    grau_instrucao
# sexo 1o 2o 3o
#   f  2  1  1
#   m  1  1  0

##### pág 8
