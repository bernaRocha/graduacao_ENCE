'''
Aula do dia 05-09-24
Usando for faça um programa que peça o valor de n
e calcule h = 1/1 + 1/2 + ... + 1/n

'''
numerador = 1
denominador = 1
h = 0

n = int(input('Digite um valor para n para calcular 1/1 + 1/2 + ... + 1/n: '))
for denominador in range(1, n+1):
    h += 1/denominador

print(f'O valor de h é: {h}')
