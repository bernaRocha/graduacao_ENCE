# Código da página - Rio em dados - no Instagram

'''
O arranjo simples é estudado pela análise combinatória, que busca desenvolver
técnicas de contagem para calcular a quantidade de agrupamentos ordenados
( a ordem importa!!!) que podemos formar escolhendo uma quantidade de elementos de
um conjunto
'''

from itertools import permutations
from math import factorial

# Cria uma função 'arranjo' que recebe os parâmetros "n" e "k"

def arranjo(n, k):
    #calcula o número total de pódios
    total_podios = factorial|(n) // factorial(n - k)

    