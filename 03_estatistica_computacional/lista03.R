#### 1

#### 2 Construa uma lista com o seu nome, a sua idade, o nome do seu time e o seu número de irmãos. Em seguida, adicione nesta lista os nomes das disciplinas que você está cursando.

dados <- list(nome <- "Bernardo ", idade <- 37, time <- "Botafogo", irmaos <- 0)
materias <-c('Estatísticals públicas', 'Estatística computacional')
perfil <- c(dados, materias)
perfil

##### 3 Seja L uma lista definida por: 
L<-list(a1=seq(2,20,2),a2=1:10,a3=sample(20,10)) 
# Construa uma matriz M cujas colunas sejam formadas pelos elementos desta lista.
 
M <- matrix(ncol = length(L), data = unlist(L), nrow = length(L[[1]]))

##### 4 Considere o dataframe definido por: 
d<-data.frame(candidatos=1:1000,n1=sample(0:10,1000,replace=TRUE), n2= sample(0:10,1000,replace=TRUE))

# (a) Criar um novo campo correspondente à média de n1 e n2.
library(dplyr)

d <- d %>%
  mutate(media = (d$n1 + d$n2) / 2)

# (b) Determinar a nota média dos candidatos em relação à nota n1 e à nota n2.

medias <- c(mean(d$n1), mean(d$n2)) # [1] 4.932 4.951

# (c) Listar os números dos candidatos que tiveram a média menor do que cinco.

media_menor_5 <- d$candidatos[d$media < 5]
media_menor_5

# (d) Imprimir o total de candidatos que tiveram a média maior ou igual a sete.

media_igual_maior_7 <- subset(d, media >= 5)
length(media_igual_maior_7$candidatos ) # [1] 572

# (e) Excluir do data frame os candidatos que tiraram nota zero em pelo menos uma das provas.

aprovados <- d %>%
  filter(
    !n1 == 0,
    !n2 == 0
  )

aprovados
length(aprovados$candidatos) # [1] 817

#### 5) Construa um data frame que tenha os seguintes campos: sexo, grau de instrução, 
# estado civil e renda. O data frame deve ter 40 registros. Considere as seguintes atribuições 
# para a construção do data frame: para sexo (sample(c(“F”,M”),40,T)) para grau de instrução 
# (sample(c(1,2,3),40,T), para o estado civil (sample(c(“S”,”C”,”D”,”V”),40,T) e renda 
# (200*runif(40,0,1)). Uma vez construído o data frame: 

#• Faça a tabulação para sexo e grau de instrução (freq. absoluta) 

frequencia_absoluta <- table(dados$sexo, dados$grau_de_instrucao)
frequencia_absoluta
#     1  2  3
#  F  6 10  3
#  M  6  5 10

#• Calcule a renda média 
media_renda <- mean(dados$renda) # [1] 99.89947

#• Calcule a moda do grau de instrução

calcular_moda <- function(a) {
  moda_a <- unique(a)
  moda_a[which.max(tabulate(match(a, moda_a)))]
}

moda_df <- calcular_moda(dados$grau_de_instrucao)
moda_df # [1] 2
