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
# (d) Imprimir o total de candidatos que tiveram a média maior ou igual a sete.
# (e) Excluir do data frame os candidatos que tiraram nota zero em pelo menos uma das provas.
