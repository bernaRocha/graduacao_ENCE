#1- Utilize comandos R para gerar os vetores abaixo:
#   V=(3,6,9,12,...,99)
#   V=(5,25,125,625,... ,9765625)
#   V=(1,-1,1,-1,...,1,-1) (200 termos)
#   V=(1,2,2,3,3,3,4,4,4,4,5,5,5,5,5)

# 1.1
vetor <- seq(from = 3, to = 99, by = 3) # OU seq(3, 99, 3)
print(vetor)  #  [1]  3  6  9 12 15 18 21 24 27 30 33 36 39 42 45 48 51 54 57 60 63 66 69 72 75 78 81 84 87 90 93 96 99

# 1.2
# 5 ** n = 9765625, n = log5(9765625)
n <- log(9765625, base = 5)
print(n) # 10

n <- 10
vetor2 <- 5^(1:n)
print(vetor2)
# 5      25     125     625    3125   15625   78125  390625 1953125 9765625

# OU > 5^seq(1,10,1)   
# [1]       5      25     125     625    3125   15625   78125  390625 1953125 9765625

# 1.3

rep(c(1, -1), 100)
# ou 
(-1)^(2:101)

# 1.4
rep(1:5, c(1,2,3,4,5)) # [1] 1 2 2 3 3 3 4 4 4 4 5 5 5 5 5
# ou 
rep(1:5, 1:5)   #  [1] 1 2 2 3 3 3 4 4 4 4 5 5 5 5 5

# 2 - Supondo que x<-2, escreva um comando de atribuição que 
# calcule a seguinte expressão 3x3+2x2+6x+1

x <- 2
resultado <- 3 * (x ^ 3) + 2 * (x ^ 2) + 6 * x + 1
print(resultado)  # 45

# 3 Utilize os comandos do R para gerar um vetor contendo 
# todos os inteiros de 1 até 100 que não são divisíveis por 2, 3, ou 7
x <- seq(1:100)

x[!x %% 2 == 0 & !x %% 3 == 0 & !x %% 7 == 0]
#  [1]  1  5 11 13 17 19 23 25 29 31 37 41 43 47 53 55 59 61 65 67 71 73 79 83 85 89 95 97

# 4 - Supondo que x<-2, y<-4, z<-8 e w<-3, 
# determine os resultados das seguintes expressões:
# x > y & z + y > w
# x == y %/% 2 | y ^ 2 > sqrt(z)
# y<z & w+z%%2 < 1

x <- 2
y <- 4
z <- 8
w <- 3

a <- x > y & z + y > w
print(a) # FALSE

b <- x == y %% 2 | y ^2 > sqrt(z)
print(b) # TRUE

c <- y < z & w + z %% 2 < 1
print(c) # FALSE

# 5

x <- 2
log2(x^2 + 1) + exp(4 * x + 1)

# [1] 8105.406

# 6 Considere o vetor e determine o produtório dos elementos de V excluindo repetições
v <- sample(20, 40, replace = TRUE)
unique(v)
# [1]  6 15 13 17  1  5  3 10  7 11 19 16  9 20 18
prod(unique(v)) # produtório dos valores únicos de v
# [1] 2.262744e+14

#7 Considere os vetores. Determine as somas acumuladas dos elementos que são comuns a X e a Y

x <- sample(20, 40, replace = TRUE)
y <- sample(20, 40, replace = TRUE)

# Somas acumuladas da união
cumsum(union(x, y))
# [1]   1   7  21  24  37  49  58  78  86 105 123 128 135 139 150 167 169 184 200
# [20] 210

# 9 Considere o comando e escreva um comando que retorne o número de elementos
# de a que não são divisíveis por 4

a <- sample(1000, 100)
sum(!a %% 4 == 0)
# [1] 80

# 10 escreva um conjunto de comandos para determinar quais são os divisores do número 128

numero <- 128
divisores <- which(numero %% 1: numero == 0)
print(divisores) # [1]   1   2   4   8  16  32  64 128