def transforma_matriz(mat):
    '''
    Recebe uma matriz quadrada e retorna uma lista simples com os elementos
    '''
    m = len(mat)
    lst = []
    for i in range(m):
        for j in range(m):
            lst.append(mat[i][j])
    return lst



a = [[1, 2], [3, 4]]
print(transforma_matriz(a)) # [1, 2, 3, 4]