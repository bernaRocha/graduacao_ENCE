'''
Aula do dia 13-08-24

início
    ler(n)
    fatorial = 1
    k = 1
    enquanto k <= n faça:
        fatorial = fatorial * k
        k = k + 1
        
    imprimir(fatorial)
fim
'''

print('Qual valor você deseja calcular o fatorial? ')

numero = int(input())
fatorial = 1
k = 1

while k <= numero:
    fatorial = fatorial * k
    k = k + 1

print(f'O fatorial do número {numero} é: {fatorial}')

'''
import math

print(math.factorial(5))
'''