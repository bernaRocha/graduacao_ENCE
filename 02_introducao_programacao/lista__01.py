'''
(4) Crie um programa que peça para o usuário digitar um inteiro de 3 dígitos, armazenando-o em uma
variável n. O programa deverá imprimir a quantidade de centenas, dezenas e unidades de n. Exemplo:
• para n = 249, escrever: 2 centena(s), quatro dezena(s) e nove unidade(s)
• para n = 100, escrever: 1 centena(s), 0 dezena(s) e 0 unidade(s)
'''
n = int(input('Digite um número com 3 digitos: '))
n = str(n)
while len(n) != 3:
    n = int(input('Incorreto! Digite um número com 3 digitos: '))
n = str(n)

centena = n[0]
dezena = n[1]
unidade = n[2]

print(f'O número {n} tem {centena} centena[s], {dezena} dezena[s] e {unidade} unidade[s]')


'''
Durante a aula do dia 05/09/24

(5) Faça um programa que leia o raio r de uma circunferência com centro na origem (0,0), e em seguida as
coordenadas de um ponto P(x,y), e verifique e diga para o usuário se esse ponto é interno, externo ou
pertence à circunferência. O programa deve ser mantido em execução até o usuário digitar -1 para o raio
(flag de saída).
'''
import math

while True:
    r = int(input('Digite o valor do raio, (ao digitar -1 o programa encerrará): '))
    if r == -1:
        print('O programa se encerra aqui!')
        break
    
    p1 = int(input('Digite o valor do ponto x para a verificação: '))
    p2 = int(input('Digite o valor do ponto y para a verificação: '))
    distancia_x = r - p1
    distancia_y = r - p2
    distancia_xy = math.sqrt(distancia_x ** 2 + distancia_y ** 2)

    if distancia_xy < r:
        print('O ponto é interno à circunferência')
    elif distancia_xy == r:
        print('O ponto pertence à circunferência')
    else:
        print('O ponto é externo à circunferência')
            

'''
(6) Rakesh tem 1,50m e cresce 2cm por ano e Zaki tem 1,10m e cresce 3cm por ano. Faça um programa que
calcule e imprima quantos anos serão necessários para que Zaki fique mais alto que Rakesh.

'''

rakesh = 1.5
zaki = 1.1

i = 0

while rakesh > zaki:
  rakesh += 0.02
  zaki += 0.03
  i += 1
print(i)

'''
(7) Faça um programa que leia um número inteiro e o armazene em x. Em seguida, calcule e imprima y da
seguinte forma:
Se x ≤ 0: y = 0
Caso contrário: y = 1/1 + 2/3 + 3/5 + ... + x/m
'''

x = int(input('Digite um valor para x: '))

numerador = 1 
denominador = 1 
y = numerador / denominador

if x <= 0:
    y = 0
else: 
    while numerador < x:
        numerador += 1 
        denominador += 2 
        y += numerador / denominador
        
print(f'Você escolheu {x} e o somatório dá: {y}')

'''
(15) Considere uma lista w contendo n valores reais já criada em memória. Escreva o trecho de código capaz 
de construir do zero uma outra lista u de acordo com o exemplo mostrado abaixo:
lista w 2.5 8 4 1 ... 10
↓
lista u 7.5 4 12 0.5 ... 5
Como sempre, seu programa deve funcionar para qualquer lista de reais w. Analise com calma o exemplo 
acima e identifique o padrão que foi utilizado para criar a lista u
'''

w = [2.5, 8, 4, 1, 10]
u = []
aux = 1

for x in w:
    if aux == 1:
        y = x * 3
        aux = 0
        
    else:
        y = x / 2
        aux = 1
    u.append(y)
    
print(u)
