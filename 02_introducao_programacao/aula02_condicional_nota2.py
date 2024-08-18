'''
Aula do dia 08-08-24

Em pseudocódigo

início
    ler(nota)
    se nota >= 7:
        imprimir('Aprovado')
    se não:
        se nota >= 3: 
            imprimir('Recuperação')
        se não:
            imprimir('Reprovado')
fim
'''

print('Digite a nota do aluno: ')
nota = float(input())
if nota > 7:
    print(f'O aluno tirou a nota {nota} e portanto está aprovado!')
if nota > 3 and nota < 6.9:
    print('Recuperação')
else:
    print(f'O aluno tirou a nota {nota} e portanto infelizmente está reprovado!')
