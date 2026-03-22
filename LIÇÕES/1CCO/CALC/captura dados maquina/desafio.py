
def validar (peso,altura):
 
    if peso <= 0:
        print('Valor Incorreto preencha novamente')
        return False
    if altura <= 0:
        print('Valor Incorreto preencha novamente')
        return False
    
    return True


while True:

    peso = float(input("Digite Seu peso (Kg):"))
    altura = float(input("Digite Sua altura (M): "))   
    if validar(peso,altura):
        break

imc = peso/(altura**2)
print(f"Seu peso:{peso}\n"\
     f"Sua Altura: {altura}\n"\
    f"Seu IMC é: {round(imc,2)}" )


if imc <=  18.5:
    print("")