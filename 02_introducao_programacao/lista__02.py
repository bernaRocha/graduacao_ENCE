##### Falta a terceira parte da função, colocar no ipynb
'''
(4) – Crie uma função “f_maior_menor” que deverá funcionar da seguinte maneira:
o A função deverá possuir 1 parâmetro: uma matriz, estruturada em uma lista 2d.
o Ela deverá executar, em sequência, as seguintes ações:
 Imprimir a matriz passada como entrada, utilizando o “layout bonito”, como
mostrado nos slides 23 a 25 da aula 11.
 Encontrar e imprimir o maior elemento da linha onde se encontra o menor
elemento da matriz.
 Imprimir também a posição (ou seja a linha e coluna) deste elemento.
'''

def f_maior_menor(matriz):
    for i in range(len(matriz)):
        for j in range(len(matriz[0])):
            print(f"{matriz[i][j]:>6}", end="")
        print()
### segunda parte da funão
### o maior elemento da linha onde se encontra o menor elemento da matriz.
    m = len(matriz); n = len(matriz[0])
    menor = matriz[0][0] # assume que maior é o primeiro
    linha = 0
    for i in range(m):
        for j in range(n):
            if menor > matriz[i][j]:
                menor = matriz[i][j]
                linha = i

    maior = max(matriz[linha])

    posicao = matriz[maior[i][j]]
    
    return f'''O maior elemento da linha onde se encontra o menor elemento da matriz é {maior}
               A posição deste elemento é {posicao}'''  

W = [[ 10, 60, 7], [100, 1, 8], [ 50, -3, 9]]

m = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]

print(f_maior_menor(W))
print(f_maior_menor(m))


W = [[ 10, 60, 7], [100, 1, 8], [ 50, -3, 9]]

m = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]

print(f_maior_menor(W))
print(f_maior_menor(m))
