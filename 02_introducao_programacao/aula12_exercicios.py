'''
Escreve um programa que a partir de uma string s1
gere uma nova string s2 composta pelos 2 primeiros e os dois últimos caracteres de s1
'''

s1 = 'string grande'
s2 = s1[:2] + s1[-2:]
print(s2)

'''
Escreva um programa que remova o caractere da posião i de uma string s
# > f = f.replace("imutável", "bela")
'''

palavra = input("Digite uma palavra  ")
posicao = int(input("Digite a posião do caractere a ser retirado da palavra  "))

resultado = palavra.replace(palavra[posicao - 1], '')
print(resultado)
'''
Escreva um programa que transforme uma frase em uma lista
Ex: 'vovô viu a uva' - ['vovô', 'viu', 'a', 'uva']
'''
s1 = 'vovô viu a uva'
s2 = s1.split(' ')
print(s2)
