def union():
# Conjunto set - união
# set são {} porem não são ordenadas.
# Não aceitam valores duplicados, parece um vetor mas tem suas regras
# -- muito mais performatico em quesito filtros.
 usuario_xpto = {'mysql','cpu','ram','ssd1','google'}
 usuario_otpx ={'cs2','ram','cpu','hd','google'}

 uniao_usuarios = usuario_xpto | usuario_otpx
 ##ou
 uniao_usuarios2 = usuario_xpto.union(usuario_otpx)
 print(uniao_usuarios)
 print(uniao_usuarios2)

def interseccao():
 
#  A resultante desta operação & ou .intersection   ∩ , 
#  busca juntar ambos set porém somente com elementos comuns entre si. "inner join"
 usuario_xpto ={'mysql','cpu','ram','ssd1','google','opa1','ind','nao'}
 usuario_otpx ={'mysql','cpu','ram','ssd1','google','opa','spfc','sim'}
 
 intersec_usuarios = usuario_xpto & usuario_otpx
 ##ou 
 intersec_usuarios2 = usuario_xpto.intersection(usuario_otpx) 
 print(intersec_usuarios)
 print(intersec_usuarios2)

def pertinencia():
#  Pertinência - ação boleana valida se há o item solicitado  E
 usuario_xpto ={'mysql','cpu','ram','ssd1','google','opa1','ind','nao'}
 usuario_otpx ={'mysql','cpu','ram','ssd1','google','opa','spfc','sim'}
 
 print('cpu'in usuario_otpx)
 print('spfc'in usuario_xpto)


 print('cpu'not in usuario_otpx)
 print('spfc'not in usuario_xpto)

def igualdadae():
 #  valida se os set tem a estrutura de valores iguais independente da ordem
 usuario_xpto ={'mysql','cpu','ram','ssd1','google','opa1','ind','nao'}
 usuario_otpx ={'mysql','cpu','ram','ssd1','google','opa','spfc','sim'}

 print(usuario_xpto == usuario_otpx)
 print(usuario_xpto != usuario_otpx)

def diferencaSimetrica():
  #  cria um novo set com os valores que são simetricos que ambos contenham
 usuario_xpto ={'mysql','cpu','ram','ssd1','google','opa1','ind','nao'}
 usuario_otpx ={'mysql','cpu','ram','ssd1','google','opa','spfc','sim'}

 dif_simetrica = usuario_otpx ^ usuario_xpto
 dif_simetrica2 = usuario_xpto.symmetric_difference(usuario_otpx)
 print(dif_simetrica)
 print(dif_simetrica2)

def diferenca():
 usuario_xpto ={'mysql','cpu','ram','ssd1','google','opa1','ind','nao'}
 usuario_otpx ={'mysql','cpu','ram','ssd1','google','opa','spfc','sim'}

 dif_simetrica2 = usuario_xpto.difference(usuario_otpx)
 print(dif_simetrica2)
 
diferencaSimetrica()

