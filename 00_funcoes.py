def imprimir_matriz_bonita(matriz):
  '''
  Função para imprimir uma matriz de forma que fique melhor a compreensão dos números dentro da matriz
  '''
    for i in range(len(matriz)):
        for j in range(len(matriz[0])):
            print(f"{matriz[i][j]:>6}", end="")
        print()
