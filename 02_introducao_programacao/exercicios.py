'''
gerar P = soma do inverso de todos os elementos da lista
P = 1/3 + (1/-1) + (1/-2) + (1/ 5) + (1 / -2)

'''
a = [3, -1, -2, 5, -2]
p = 0

for i in a:
    p += 1/i
print(p)

'''
imprimir nome(s) de quem tirou a maior nota
'''

nomes = ['rakesh', 'scott', 'jane', 'jones', 'sophie']
notas = [90, 100, 100, 70, 100]

maior_nota = max(notas)

n = len(nomes)

for i in range(n):
    if notas[i] == maior_nota:
        print(nomes[i], end=" ")
