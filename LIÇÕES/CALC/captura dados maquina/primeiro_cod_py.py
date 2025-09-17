print('\n' *50) # quebra 50 linhas



# lista ou vetor: É mutavel, É ordenado, É indexado de 0..n
lista = [10,20,30] #lista
print(lista[2])

tupla = (10,20,30) # não é mudavel, É ordenado, É indexado de 0..n
print(tupla[1])

 #dicionario É mutavel, É ordenado (a Partir da v3.7), É indexado pela chave 
dicionario = {"num1":10, "num2":20,"num03":30}
print(dicionario['num1'])


matriz = [[10],[20],[30]] #matriz 
print(matriz)
# matriz 3x3 

matriz01 =[[10],[20],[30]   
           [40],[50],[60]
           [70],[80],[90]] 
print(matriz01)


print (type(lista))
print (type(tupla))
print (type(dicionario))
print (type(matriz))
