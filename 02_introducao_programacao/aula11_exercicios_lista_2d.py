'''
Aula do dia 10-10-24
'''

'''
Criar matrix 5x4 chamada B, de forma automática (sem leitura do usuário) onde o 1° elemento = 1, 2° = 2 usando for!
'''

m = 5; n = 4
B = []
x = 1

for i in range(m):
  B.append([0] * n)
for i in range(m):
  for j in range(n):
    B[i][j] = x
    x += 1

print(B)
