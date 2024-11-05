'''Aula 17'''

f = open("C:\\Program Files\\Python311\\Scripts\\arq_teste.csv")

for linha in f:
    print(linha.rstrip())

    #print(f"comprimento = {len(linha)}")
    #print(linha)

    
f.close()

######################################33

f = open("C:\\Program Files\\Python311\\Scripts\\paises.csv", encoding="utf-8")


tot_europa = tot_america = 0
for linha in f:
    linha = linha.rstrip() # retira o \n do final de cada linha
    colunas = linha.split(",")
    print(colunas)


    if colunas[2] == "América": tot_america += 1
    elif colunas[2] == "Europa": tot_europa += 1


print(f"Total América = {tot_america} e total Europa = {tot_europa}")
f.close()
