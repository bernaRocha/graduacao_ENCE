####
# Exercícios do lab 01 
####
d <- c(1,2,3,4,5,6,7,8,9,10)
e <- c(1,2,5,10,15,17,16,15,11,7)
plot(d,e)
plot(d,e, type = 'l', col = 'blue', lwd = 2)

##################

# 4 × (245 +√80/2)
4 * (245 + sqrt(80)/ 2)

# 4 × 245 +√80/2
4 * 245 + sqrt(80) / 2

# 4 × (245 +√80)/2
4 * (245 + sqrt(80))/2

# 24^4 − 3 × 53
24 ** 4 - 3 * 53

# ((2^12 − 3)/3) × 53
((2 ** 12 - 3) / 3) * 53

#log(2)
log(2)
log10(2)

# e ^ -2
exp(-2)

##################

x <- 3
y <- 6
z <- 9

x * y
x - y - z
x ** y
class(x) # numeric
class(y)
class(z)

##################

a <- 4
b <- 20

a + b
class(a + b)

b - a
class(b - a)

a * b
class(a * b)

b / a
class( b - a)

a / b
class(a / b)

##################

primeiro_nome <- "Bernardo"
nchar(primeiro_nome)

##################

9 > 8 # TRUE
9 = 8
# Error in 9 = 8 : lado esquerdo da atribuição inválida (do_set)
9 < 8 # FALSE

"late" == "tela" # FALSE
"late" != "tela" # TRUE

##################

vetor.1 <- c(2, 4, 6, 8)
vetor.2 <- c(1, 1, 2, 2)

vetor.1 + 1
vetor.2 * 3
vetor.1 / 2
sqrt(vetor.1)

# 1.414214 2.000000 2.449490 2.828427

vetor.1 + vetor.2

##################

nivel_escolaridade <- c("ensino superior", "ensino médio", "ensino médio", "ensino fundamental", "Não respondeu", "ensino médio", "ensino fundamental",  
                        "ensino médio", "ensino superior","ensino superior")

ordem <- c("ensino fundamental", "ensino médio", "ensino superior", "Não respondeu")

em_ordem <- factor(nivel_escolaridade, levels = ordem)

escolaridade_ordenada <- em_ordem[order(em_ordem)]

vetor_escolaridade <- as.character(escolaridade_ordenada)

print(vetor_escolaridade)