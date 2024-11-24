def f_prod(n):
    '''
    Recebe um inteiro e retorna o produto dos primeiros múltiplos de 5
    exemplo: f_prod(3) -> retorna 5 * 10 * 15 = 750
    '''
    resp = 1
    for i in range(1, n + 1):
        resp *= 5 * i
    return resp

print(f_prod(3)) # 750