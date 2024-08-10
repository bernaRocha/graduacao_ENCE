'''
Aula do dia 08-08-2024

Exemplo 2: algoritmo em pseudocódigo que recebe nota final de
aluno como entrada e imprime situação do aluno.
Se a nota for maior ou igual a 7,0 imprime “Aprovado”
Caso contrário, imprime “Reprovado”

início
    ler(nota)
    
    se nota >= 7:
        imprimir('Aprovado')
    senão:
        imprimir('Reprovado')
fim


'''

print('Digite a nota do aluno: ')
nota = float(input())
if nota > 7:
    print(f'O aluno tirou a nota {nota} e portanto está aprovado!')
else:
    print(f'O aluno tirou a nota {nota} e portanto infelizmente está aprovado!')