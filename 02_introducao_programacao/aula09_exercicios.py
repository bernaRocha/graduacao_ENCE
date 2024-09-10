'''
1 - O valor aproximado de π pode ser calculado pela série:
4 - 43 + 45 - 47 + ...
Calcule π usando 10.000 termos
'''
N = 10000
pi = 0
den = 1

for i in range(N):
    termo = 4 / den
    if i % 2 == 0:
        pi += termo
    else:
        pi -= termo
    den += 2
    
print(f'O valor de π com {N} termos da conta é: {pi}')

'''
2 - Sistema que recebe o voto de 15 eleitores p/ síndico de um prédio:
Tela:
  Vote:
    1 - Rakesh
    2 - Zaki

- Pegar os 15  votos de 1 por 1
- No final dizer quem venceu
- Obs1: Em caso de empate, Rakesh ganha
- Obs2: Se votos nulos são maioria a eleião é anulada
'''
n_votos = 15
rakesh = 0
zaki = 0
nulo = 0

for i in range(n_votos):
    voto = int(input('''
Vote no melhor síndico:
    1 - Rakesh
    2 - Zaki         '''))
    
    if voto == 1: rakesh += 1
    elif voto == 2: zaki += 1
    else: nulo += 1
    print(f'Voto de número: {i + 1}')


if nulo > rakesh and nulo > zaki:
    print('Eleição anulada')
else:
    if rakesh >= zaki: vencedor = 'Rakesh'
    else: vencedor = 'Zaki'

print(f'''No total Rakesh recebeu: {rakesh} votos,
Zaki recebeu: {zaki} votos e
os votos nulos totalizaram {nulo} votos.
O vencedor é {vencedor} 
''')
'''
3 - Trocar para receber votos até a flag de saída ser digitado: - 999
- o resto tudo igual ao anterior (número 2)
'''

rakesh = 0
zaki = 0
nulo = 0
i = 0

while True:    
    voto = int(input('''
Vote no melhor síndico:
    1 - Rakesh
    2 - Zaki         '''))
    
    if voto == 1: rakesh += 1
    elif voto == 2: zaki += 1
    elif voto == 999: break
    else: nulo += 1
    print(f'Voto de número: {i + 1}')
    
if nulo > rakesh and nulo > zaki:
    print('Eleição anulada')
else:
    if rakesh >= zaki: vencedor = 'Rakesh'
    else: vencedor = 'Zaki'

print(f'''No total Rakesh recebeu: {rakesh} votos,
Zaki recebeu: {zaki} votos e
os votos nulos totalizaram {nulo} votos.
O vencedor é {vencedor} 
''')
