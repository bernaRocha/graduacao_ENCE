'''
Aula do dia 08-08-2024

Faça um algoritmo que receba como entra a idade de uma pessoa.

Se for 18 ou mais imprima 'você pode entrar na festa'
Caso contrário imprima: 'barrado, vá embora'
'''

print('Qual a sua idade? ')
idade = float(input())

if idade >= 18:
    print(f'Sua idade é {idade}. Você pode entrar na festa')
else:
    print(f'Você só tem {idade} anos, está barrado, vá embora')