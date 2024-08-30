'''
(6) Rakesh tem 1,50m e cresce 2cm por ano e Zaki tem 1,10m e cresce 3cm por ano. Faça um programa que
calcule e imprima quantos anos serão necessários para que Zaki fique mais alto que Rakesh.

'''

rakesh = 1.5
zaki = 1.1

i = 0

while rakesh > zaki:
  rakesh += 0.02
  zaki += 0.03
  i += 1
print(i)
