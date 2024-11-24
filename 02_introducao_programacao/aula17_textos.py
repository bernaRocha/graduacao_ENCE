'''Aula 17, data 05-11-24'''

f = open("C:\\Program Files\\Python311\\Scripts\\arq_teste.csv")

for linha in f:
    print(linha.rstrip())

    #print(f"comprimento = {len(linha)}")
    #print(linha)
'''
Rakesh,25
Vijay,43
Yash,18
Juily,51
Vidur,39
'''
    
f.close()

######################################33
# Exemplo 1: quantos países são da Europa e quantos são da América
# Exmplo 2: quantas linhas tem o arquivo
f = open("C:\\Program Files\\Python311\\Scripts\\paises.csv", encoding="utf-8")
f.readline() # pula a linha do cabeçalho

tot_europa = tot_america = n = 0 # n é o número de linhas
for linha in f:
    linha = linha.rstrip() # retira o \n do final de cada linha
    colunas = linha.split(",") # transforma uma string em uma lista, separando os dados pela , - vírgula
    n += 1
    print(colunas)


    if colunas[2] == "América": tot_america += 1
    elif colunas[2] == "Europa": tot_europa += 1


print(f"\nTotal América = {tot_america} e total Europa = {tot_europa} e o total de países/ linhas = {n}")
'''
['sigla', 'nome', 'continente', 'extensao']
['AR', 'Argentina', 'América', '2780']
['BR', 'Brasil', 'América', '8511']
['FR', 'França', 'Europa', '644']
['IT', 'Itália', 'Europa', '301']
['UK', 'Reino Unido', 'Europa', '244']

Total América = 2 e total Europa = 3
'''
f.close() # fecha o arquivo, libera a memória
