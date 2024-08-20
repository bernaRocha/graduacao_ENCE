w <- ((5 * ((25 %% 13) + 100) / (2 * 13)) %/% 2)
print(w) # Em R é mais verboso que em Python

# Resto da divisão é %% e parte inteira da divisão é %/%

a <- 25 / 13
print(a) # 1.923077

# na calculadora: 1,923076923076923

print(4 / 2) # 2 - Em R a divisão exata não resulta em um float

print(2 ** 3 ** 2) # 512 - Igual ao Python

b <- 7 + as.integer("7")
print(b) # 14

print(-1 / 2)
print(1 / 2)
print(1 %/% 2)
print(1 %% 2)

print(2 ** 4)
print(2 * 4.0) # 8 - Diferente do Python, no R não retorna um float
print(2 * 4)

d <- paste("Oi", ", tudo bem?")
print(d)

texto1 <- "Olá"
texto2 <- "mundo"
resultado <- paste(texto1, texto2, sep = ", ")
print(resultado)

nome <- "Fulando"
s1 <- " da Silva"
s2 <- " Sauro"
nome_completo <- paste(nome, s1, s2)
print(nome_completo)
