'''
Aula do dia 22-10-2024
'''

dict_alunos = {"nome" : "Fulano",
               "idade":25,
               "matriculado": True}

# Não existe posição, existe a chave
print(dict_alunos["nome"])  # Fulano

'''
>>> dict_alunos.keys()
dict_keys(['nome', 'idade', 'matriculado'])

>>> dict_alunos.values()
dict_values(['Fulano', 25, True])

>>> dict_alunos.pop("matriculado")
True
>>> dict_alunos
{'nome': 'Fulano', 'idade': 25}
'''

vazio = dict()
#ou
vazio = {}

filmes = {
"f1": ( "O Filho da Nova", 2001, "AR", 123, 7.9),
"f11": ( "Orgulho e Preconceito", 2005, "UK", 129, 7.8),
"f8": ( "Um Conto Chinês", 2011, "AR", 93, 7.3)
 }

print(filmes['f1']) # ('O Filho da Nova', 2001, 'AR', 123, 7.9)
print(filmes['f1'])[0] # 'O Filho da Nova'

for x, y in filmes.items():
    print(x, y)

'''
f1 ('O Filho da Nova', 2001, 'AR', 123, 7.9)
f11 ('Orgulho e Preconceito', 2005, 'UK', 129, 7.8)
f8 ('Um Conto Chinês', 2011, 'AR', 93, 7.3)
'''

### Exercícios

emps = {7369: "Smith", 7499: "Allen", 7900: "Jamil", 1234: "Saurabh", 7782: "Clark"}
emps_novos = [(7521, "Ward"), (7934, "Miller")]

emps[7788] = "Scott"
print(emps)

emps[7900] = "James"
print(emps)

emps.pop(1234)
print(emps)

emps.update(emps_novos)
print(f'Dicionário atualizado {emps}')

print(7782 in emps) # True

if 7654 in emps:
    print(f"A chave 7654 existe, seu valor é: {emps[7654]}")
else:
    print("A chave 7654 NÃO existe")
    
print("Smith" in emps.values()) # True

print(emps.keys())
print(emps.values())

for k, v in emps.items():
    print(f"chave - {k}, valor - {v}")
