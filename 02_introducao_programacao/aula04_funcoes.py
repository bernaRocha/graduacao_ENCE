'''
Aula do dia 20-08-24

- Conceito de função
- Módulo math
- Funções built-in
- Operadores relacionais
'''

import math
import statistics

euler = math.e
print(f'O número de Euler é {euler}')

pi = math.pi
print(f'O número de PI é {pi}')

infinito = math.inf
print(f'Infinito {infinito}')

menos_infinito = -math.inf
print(f'Infinito negativo {menos_infinito}')

angulo_graus = 60
angulo_radianos = math.radians(angulo_graus)

print(f'Ângulo {angulo_graus}')
print(f'Seno de {angulo_graus} é     {round(math.sin(angulo_radianos),2)}')
print(f'Cosseno de {angulo_graus} é  {round(math.cos(angulo_radianos),2)}')
print(f'Tangente de {angulo_graus} é {round(math.tan(angulo_radianos),2)}')
