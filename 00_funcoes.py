def imprimir_matriz_bonita(matriz):
  '''
  Função para imprimir uma matriz de forma que fique melhor a compreensão dos números dentro da matriz
  '''
  for i in range(len(matriz)):
    for j in range(len(matriz[0])):
          print(f"{matriz[i][j]:>6}", end="")
    print()


def raiz_cubica(numero):
    '''
    Função para extrair a raíz cúbica de um número
    '''
    import numpy as np
    a = np.cbrt(numero)
    return f"A raiz cúbica de {numero} é: {round(a, 6)}"

print(raiz_cubica(-27))  # A raiz cúbica de -27 é: -3.0

def converte_para_polegadas_pes(valor, conversor):
    '''
    Função para converter um valor em metros para ou polegadas ou pés.
    Quando conversão = 1 a conversão é para polegadas
    e conversão = 2 a conversão é para pés
    '''
    if conversor == 1:
        polegadas = valor * 39.3701
        return f'{valor} metro(s) em polegadas é {polegadas}'
    elif conversor == 2:
        pes = valor * 3.2804   
        return f'{valor} metro(s) em pés é {pes}'
    else: return None

valores = [1, 1.6, 1.75]

for valor in valores:
    print(f'Polegadas: {converte_para_polegadas_pes(valor, 1)}')
    print(f'Pés: {converte_para_polegadas_pes(valor, 2)}')

def f_prod(n):
    '''
    Recebe um inteiro e retorna o produto dos primeiros múltiplos de 5
    exemplo: f_prod(3) -> retorna 5 * 10 * 15 = 750
    '''
    resp = 1
    for i in range(1, n + 1):
        resp *= 5 * i
    return resp

print(f_prod(3)) # 750
