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
