import math

print ('\n'*100)

a = 2

portQuadrado = a ** 2
potCubo = a ** 3 
potQuarta = a ** 4

print("atividade 1: \n"
f"Potência ao quadrado: {portQuadrado}\n"\
f"Potência ao cubo: {potCubo}\n "\
f"Potência à quarta: {potQuarta}\n")


print ('\n'*3)

c = 13
d = 3
c_elevado_ao_quadrado = pow(4, 2)
c_elevado_ao_cubo =  pow(4, 3)
c_elevado_a_quarta =  pow(4, 4)
c_elevado_a_d = pow(c,d)


print("atividade 2:\n",
f"c elevado ao quadrado: {c_elevado_ao_quadrado}\n"\
f"c elevado ao cubo: {c_elevado_ao_cubo}\n"\
f"c elevado a quarta: {c_elevado_a_quarta}\n"\
f"c elevado a d : {c_elevado_a_d}\n")

print ('\n'*3,"atividade 2 / Desafio:")


c = float(input('Digite o primeiro numero (Base):'))
d = float(input('Digite o Segundo numero (expoente):'))

resultado = pow(c,d)
print(f"Resultado: {resultado}\n")





print ('\n'*3,"atividade 3")

x = 512

raiz_quadrada_de_x = float(pow(x,1/2))
raiz_cubica_de_x = float(pow(x,1/3))
raiz_quarta_de_x = float(pow(x,1/4))


print(
f"Raíz quadrada de {x} é: {round(raiz_quadrada_de_x,2)}\n"
f"Raíz cubica de {x} é: {round(raiz_cubica_de_x,2)}\n"
f"Raíz cubica de {x} é: {round(raiz_quarta_de_x,2)}")



print ('\n'*3," atividade 4:  Qual o seu teto e piso salarial Dado um salário  R$3345,61?")


w = 3345.61

piso = math.floor(w)
teto = math.ceil(w)

print(f"Piso salárial de {w} é {piso}\n"
      f"Teto Salárial de {w} é {teto}\n")





print ('\n'*3,"atividade 5")




variable = [5.1,4.0,0.1]


for print in variable :

    piso2 = math.floor(print)
    teto2 = math.ceil(print)

    print(f"Piso salárial de {float(print)} é {float(piso2)}\n"
          f"Teto Salárial de {float(print)} é {float(teto2)}\n")
    