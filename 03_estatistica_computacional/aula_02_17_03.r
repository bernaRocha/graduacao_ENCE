### Aula do dia 17-03-25
# o R não é orientado a objetos

# Criando um objeto, duas formas de atribuição objeto <- OU objeto =

objeto <- 4 + 3 -5
class(objeto) # [1] "numeric"  # para saber qual classe é o objeto

# Criando vetores, para acessar []
vetor1 <- c(1, 10, 25)
nomes <- c("Fulano", "Beltrano", "Ciclano")
nomes # [1] "Fulano"   "Beltrano" "Ciclano" 
nomes[1] # Fulano

# Criando sequências

seq (10 ,22 ,3)  # [1] 10 13 16 19 22
seq (22,10 , -3) # [1] 22 19 16 13 10
# De razão 1, crescente e decrescente
18:23  # [1] 18 19 20 21 22 23
23:18  # [1] 23 22 21 20 19 18

# Repetição de um escalar

rep(0, 6)  # [1] 0 0 0 0 0 0
rep(c(-1, 3), 2) # [1] -1  3 -1  3
rep(1:4, c(2,3,1,2)) # [1] 1 1 2 2 2 3 4 4
help("rep") # Pedir ajuda para ver o que é a função rep

rep(c("Fulana", "Beltrana"), c(2, 3)) # [1] "Fulana"   "Fulana"   "Beltrana" "Beltrana" "Beltrana"

# Operações com vetores

x <- seq(1,10,1) #  [1]  1  2  3  4  5  6  7  8  9 10
x     #  [1]  1  2  3  4  5  6  7  8  9 10
x%%2   # [1] 1 0 1 0 1 0 1 0 1 0
x%/%2  # [1] 0 1 1 2 2 3 3 4 4 5

2*x   #  [1]  2  4  6  8 10 12 14 16 18 20
2+x   #  [1]  3  4  5  6  7  8  9 10 11 12
x/2   #  [1] 0.5 1.0 1.5 2.0 2.5 3.0 3.5 4.0 4.5 5.0
x*2  #  [1]  2  4  6  8 10 12 14 16 18 20

y=seq(2,11,1)  #  [1]  2  3  4  5  6  7  8  9 10 11

# Operadores lógicos
x[1]==x[2] #  [1] FALSE
(x[1]>y[1]) &(x[2]<y[2]) # [1] FALSE
