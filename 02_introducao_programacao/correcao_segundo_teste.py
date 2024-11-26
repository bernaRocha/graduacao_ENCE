'''
Correão do segundo teste
'''
####primeira questão###################

a = [[11, 2, 22, 19],
 [50, 49, 99, 40],
 [81, 3, 31, 73],
 [52, 70, 95, 4]]

def f_soma(a):
    m = len(a)
    lst = []
    #x = -1
    for i in range(m):
        lst.append(a[i][i] + a[i][-(i + 1)])
    #    x -= 1
    return lst


print(f_soma(a))   # [30, 148, 34, 56]
####segunda questão###################
def f_troca(s, i, k):
    if i >= len(s) or k >= len(s): return None
    
    aux = ''
    for w in range(len(s)):
        if w == i: aux = aux + s[k]
        elif w == k: aux = aux + s[i]
        else:        aux = aux + s[w]
        
    return aux

print(f_troca('perfeito', 0, 3)) # ferpeito

####terceira questão###################

endereco = 'c:/dados/compras.csv'

arq = open(endereco)

soma = 0
for linha in arq:
 linha = linha.rsrip()
 colunas = linha.split(';')
 soma = soma + float(colunas[1])

arq.close()

dic = {'total': soma}
print(dic)
 
