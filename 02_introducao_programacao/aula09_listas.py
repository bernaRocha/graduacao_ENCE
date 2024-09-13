'''
Aula do dia 12-09-2024
'''

lista = ['a', True, 0, 9.5]
print(lista)

lista[0] = 'b' # Troca um valor na lista na posição 0
print(lista)

lista.append('Calor') # Adiciona a string Calor
print(lista)

lista.pop(0) # Deleta o valor no índice 0
print(lista)


len(lista) # Tamanho da lista
sum(lista) # Somatório - para listas numéricas
min(lista) # Valor mínimo - para listas numéricas
max(lista) # Valor máximo - para listas numéricas
