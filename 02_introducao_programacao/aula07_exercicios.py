'''
Aula do dia 29-08-24

Exercícios
'''

n = int(input('Digite um número de 3 algarismos: '))

if n <= 100:
    print('O número está entre 0 e 100')
else:
    if n > 101 and n <= 500:
        print('O número está entre 101 e 500')
    else:
        print('O número é maior que 500')

###########################

import math

n = int(input('Digite um número entre 0 e 15: '))

while n > 15 or n <= 0:
    n = int(input('\nInválido! Digite um número entre 0 e 15: '))   

n = math.factorial(n)
denominador = 5
soma = n / denominador

while denominador < 1000:
    denominador += 5
    soma = soma - (n / denominador)
    
print(f'A soma é: {soma}')
