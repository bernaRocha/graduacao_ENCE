'''
Aula do dia 22-08-24
'''

metodico = input('Você é metódico? [Responda com S ou N]').lower()
organizado = input('Você é organizado? [Responda com S ou N]').lower()
detalhista = input('Você é detalhista? [Responda com S ou N]').lower()
discreto = input('Você é discreto? [Responda com S ou N]').lower()

resposta = 0

if metodico == 's': resposta += 1
if organizado == 's': resposta += 1
if detalhista == 's': resposta += 1
if discreto == 's': resposta += 1

if resposta == 0:
    print('Outro signo')
else:
    if resposta >= 3:
        print('Certamente virginiana')
    else:
        print('Possivelmente virginiana')
