def converte_para_polegadas_pes(valor, conversor):
    '''
    Função para converter um valor em metros para ou polegadas ou pés.
    Quando conversão = 1 a conversão é para polegadas
    e conversão = 2 a conversão é para pés
    '''
    if conversor == 1:
        polegadas = valor * 39.3701
        return f'{valor} metro(s) em polegadas é {polegadas}'
    elif conversor == 2:
        pes = valor * 3.2804   
        return f'{valor} metro(s) em pés é {pes}'
    else: return None

valores = [1, 1.6, 1.75]

for valor in valores:
    print(f'Polegadas: {converte_para_polegadas_pes(valor, 1)}')
    print(f'Pés: {converte_para_polegadas_pes(valor, 2)}')