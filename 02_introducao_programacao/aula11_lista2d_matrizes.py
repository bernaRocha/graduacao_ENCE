'''
Aula do dia 08-10-2024
'''
a = [[10, 20, 30], [40, 50, 60], [70, 80, 90]]
a[0] # [10, 20, 30]
len(a)  # 3

b = [[1, 2, 3], [4, 5, 6]]
len(b)  # 7

c = [[1,2], 3.141592, 'ENCE', [1, 2, 3, 4, 5, 5, 7, 8.99], True]
len(c)  # 5

m = [ [100, -1, 90, 0, -5],
      [-13, 27, 88, -1, 0],
      [0, 14, 30, -20, 25],
      [11, 0, 13, 32, -99] ]

m[0][1]   # -1

matriz_binaria = [
[0, 1, 0, 0, 1, 0],
[1, 0, 0, 1, 1, 1],
[0, 0, 0, 0, 0, 1],
[0, 1, 1, 0, 1, 0]
]

c = [[-45, 6],
[0, 72],
[1543, -89]]

print(f'C[0][0] = {c[0][0]}')  # C[0][0] = -45
print(f'C[0][1] = {c[0][1]}')  # C[0][1] = 6

c[1][0] = c[1][0] + 1

print(c) # [[-45, 6], [1, 72], [1543, -89]]

num_lins = len(mat) # número de linhas = len da matriz
num_cols = len(mat[0]) # número de colunas = len de qq linha

w = [[10, 20],
[30, 40],
[50, 60]]
num_lins = len(w); num_cols = len(w[0])
# percorre e imprime os elementos da matriz
for i in range(num_lins):
  for j in range(num_cols):
    print(f'{w[i][j]:>6}', end="")
  print()
  
'''
    10    20
    30    40
    50    60
'''
mat = [[1000, 2, 7000, 9, -1],
       [-300, 0, 555, 636, 2000],
       [999, -272, -3000, 0, 15]] # define uma matriz 3 x 5

num_lins = len(mat); num_cols = len(mat[0])

# imprime a matriz com a formatação bem mais bonita
for i in range(num_lins):
  for j in range(num_cols):
    print(f"{mat[i][j]:>6}", end="")
  print()

'''
  1000     2  7000     9    -1
  -300     0   555   636  2000
   999  -272 -3000     0    15
'''
n = [[1, 2, 3],
     [4, 5, 6],
     [7, 8, 9]]

ordem = len(n)

# pega os elementos da diagonal principal
diagonal = []
for i in range(ordem):
    for j in range(ordem):
        if i == j:
            diagonal.append(n[i][j])

print(f'[{n[0][0]}, {n[1][1]}, {n[2][2]}]')      # [1, 5, 9]      
print(diagonal)                                  # [1, 5, 9]     
