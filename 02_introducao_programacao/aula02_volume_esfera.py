'''
Aula do dia 08-08-2024

(1) Elabore os seguintes algoritmos em pseudocódigo:
(a) Receber como entrada o raio da esfera e imprimir o valor do
volume.

início
    ler(raio_da_esfera)
    volume = (4/3) * pi * raio ** 3
    imprimir(volume)
fim
'''
import math
print('Digite o raio da esfera para que seja calculado o volume: ')
raio = float(input())
volume = 4/3 * (math.pi * raio ** 3)
print(f'O volume de uma esfera de raio: {raio} é: {volume}')
