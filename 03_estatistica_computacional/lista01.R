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
# calcule a seguinte expressão 3x3+2x2+6x

x <- 2
resultado <- 3 * 3 + 2 * 2 + 6*x
print(resultado)  # 25

# 3- Supondo que x<-2, y<-4, z<-8 e w<-3, 
# determine os resultados das seguintes expressões:
# x>y & z+y > w
# x==y%/%2 | y^2>sqrt(z)
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