def raiz_cubica(numero):
    '''
    Função para extrair a raíz cúbica de um número
    '''
    import numpy as np
    a = np.cbrt(numero)
    return f"A raiz cúbica de {numero} é: {round(a, 6)}"

print(raiz_cubica(-27))  # A raiz cúbica de -27 é: -3.0