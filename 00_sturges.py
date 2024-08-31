import math

print('n é a quantidade de dados no data set')

n = int(input('Quantos dados tem a variável em questão? '))

k = 1 + (3.322 * math.log10(n))

print(f'Para um dataset com {n} dados a quantidade de classes é: {round(k, 2)}')

################# outra forma de escrever a fórmula

classes = 1 + (math.log10(n)/math.log10(2))
print(f'Para um dataset com {n} dados a quantidade de classes é: {round(classes, 2)}')
