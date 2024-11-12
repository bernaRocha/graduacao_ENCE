'''
Aula do dia 12-11-24

dada uma matriz quadrada de ordem m >= 3, 
faça um programa que exiba na tela o produto de todos os grupos de 3 números adjacentes de sua diagonal principal
'''

matriz = [[9,2,3,4],
          [5,6,7,8],
          [9,8,7,6],
          [5,4,3,2]]

m = len(matriz)

for i in range(2, m):
    prod_adj = matriz[i-2][i-2] * matriz[i-1][i-1] * matriz[i][i]
    print(f'{matriz[i-2][i-2]} * {matriz[i-1][i-1]} * {matriz[i][i]} = {prod_adj}')

# 9 * 6 * 7 = 378
# 6 * 7 * 2 = 84

'''
Mudar o programa anterior para também ao final mostrar o maior valor de produto
'''

matriz = [[9,2,3,4],
          [5,6,7,8],
          [9,8,7,6],
          [5,4,3,2]]

m = len(matriz)

produtos = []
for i in range(2, m):
    prod_adj = matriz[i-2][i-2] * matriz[i-1][i-1] * matriz[i][i]
    print(f'{matriz[i-2][i-2]} * {matriz[i-1][i-1]} * {matriz[i][i]} = {prod_adj}')
    produtos.append(prod_adj)
    
print(f"O maior valor de produtos é {max(produtos)}") # O maior valor de produtos é 378

'''
Transformar o programa em uma função que receba a matriz como entrada
e retorne uma lista com os produtos como saída
'''

def lst_produtos_matriz_princip(matriz):    
    m = len(matriz)

    produtos = []
    for i in range(2, m):
        prod_adj = matriz[i-2][i-2] * matriz[i-1][i-1] * matriz[i][i]
        produtos.append(prod_adj)
    return f"A lista de produtos é {produtos}"

a = [[9,2,3,4],
          [5,6,7,8],
          [9,8,7,6],
          [5,4,3,2]]

print(lst_produtos_matriz_princip(a)) # A lista de produtos é [378, 84]
