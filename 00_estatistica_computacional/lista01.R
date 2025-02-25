#1- Utilize comandos R para gerar os vetores abaixo:
#   V=(3,6,9,12,...,99)
#   V=(5,25,125,625,... ,9765625)
#   V=(1,-1,1,-1,...,1,-1) (200 termos)
#   V=(1,2,2,3,3,3,4,4,4,4,5,5,5,5,5)

# 1.1
vetor <- seq(from = 3, to = 99, by = 3)
print(vetor)

# 1.2
# 5 ** n = 9765625, n = log5(9765625)
n <- log(9765625, base = 5)
print(n)

n <- 10
vetor2 <- 5^(1:n)
print(vetor2)