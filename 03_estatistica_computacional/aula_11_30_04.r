###### Estruturas de controle e repetição e funcoes
### https://aulasence.ibge.gov.br/Bacharelado/Daniela%20Polessa%20Paula/Estat%C3%ADstica%20Computacional%20I/Computacional_2022/Aula%207R.pdf

x <- scan() # digitei 9 no console

if(x >= 0)
  print(sqrt(x + 10)) # [1] 4.358899
else
  print('raiz complexa')

ifelse(x + 10 > 0, sqrt(x + 10), 'raiz complexa') # [1] 4.358899

############ Ex 2

## sqrt(x2 + 2) / sqrt(x1 ^ 2 - 4)

if (x[2] >= -2 & (x[1] < -2)) #### O resto tá no aula7 notebook do repositório

  
for(i in 1:10){
  print(i ^2 )
} # [1] 1 [1] 4 [1] 9 [1] 16 [1] 25 [1] 36 [1] 49 [1] 64 [1] 81 [1] 100

########### Exemplo 3  
numero <- scan()
divisores <- NULL

for(i in 1: numero) {if(numero%%i==0)}
