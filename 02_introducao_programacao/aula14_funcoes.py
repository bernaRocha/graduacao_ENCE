'''
Aula do dia 24-10-24
'''

def verificador_idade(idade):
    if idade < 18: return f'{idade} anos é de menor'
    elif idade > 18 and idade <= 30: return f'{idade} anos é jovem imaturo'
    elif idade > 30 and idade <= 55: return f'{idade} anos é uma pessoa madura'
    elif idade <= 99: return f'{idade} anos já é coroa'
    else: return 'idade inválida'

print(verificador_idade(17)) # 17 anos é de menor
print(verificador_idade(29)) # 29 anos é jovem imaturo
print(verificador_idade(37)) # 37 anos é uma pessoa madura
print(verificador_idade(99)) # 99 anos já é coroa
print(verificador_idade(199)) # 199 é uma idade inválida

def soma_numeros(x, y, z = None):
    if (z is None):
        return x + y
    else: return x + y + z
    
print(soma_numeros(1,2))     # 3
print(soma_numeros(3, 5, 7)) # 15
