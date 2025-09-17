

agoraSet ={
    "empresas": {"Itaúsa","Ecorodovias","Taesa","B3","Vale"},
    "tickets": {"ITSA4","ECOR3","TAEE11","B3SA3","VALE3"}}


ativaSet = {
    "empresas": {"B3", "Bradesco", "BB Seguridade", "BR Distribuidora", "Taesa", "CTEEP", "Vale", "Telefônica Brasil"},
    "tickets": {"B3SA3", "BBDC4", "BBSE3", "BRDT3", "TAEE11", "TRPL4", "VALE3", "VIVT3"}}

genialSet = {
    "empresas": {"CPFL", "Minerva", "Cyrela", "Randon", "CTEEP"},
    "tickets": {"CPFE3", "BEEF3", "CYRE3", "SAPT4", "TRPL4"}}

easynvestSet = {
    "empresas": {"B3", "Brasil Agro", "Coca-Cola", "Taesa", "Vale", "Copel", "Itaúsa", "Ambev"},
    "tickets": {"B3SA3", "AGRO3", "COCA34", "TAEE11", "VALE3", "CPLE11", "ITSA4", "ABEV3"}
}

eliteSet = {
    "empresas": {"Bradesco", "BB Seguridade", "Banrisul", "Engie", "Itaúsa", "Sanepar", "Taesa", "CTEEP", "Telefônica Brasil", "Vale"},
    "tickets": {"BBDC4", "BBSE3", "BRSR6", "EGIE3", "ITSA4", "SAPR11", "TAEE11", "TRPL4", "VIVT3", "VALE3"}
}

guideSet = {
    "empresas": {"Alupar", "Banco do Brasil", "Cyrela", "CPFL", "Klabin", "Porto Seguro", "Tim", "Vale"},
    "tickets": {"ALUP11", "BBAS3", "CYRE3", "CPFE3", "KLBN11", "PSSA3", "TIMS3", "VALE3"}
}

novaFuturaSet = {
    "empresas": {"B3", "Cyrela", "Gerdau", "Vivo", "CTEEP"},
    "tickets": {"B3SA3", "CYRE3", "GGBR4", "VIVT3", "TRPL4"}
}


oramaSet = {
    "empresas": {"Banco ABC", "Bradesco", "Minerva", "CESP", "Engie"},
    "tickets": {"ABCB4", "BBDC4", "BEEF3", "CESP6", "EGIE3"}
}



## empresas em comum orama e ativa
print("empresas em comum entre orama e ativa \n",oramaSet["empresas"]&ativaSet["empresas"])


## União tickets  agora e genial 

print('União tickets  agora e genial \n',agoraSet["tickets"]|genialSet["tickets"])


## diferença entre novaFutura e guide

print('diferença entre novaFutura e guide \n',novaFuturaSet["empresas"] - guideSet["empresas"])

## diferença entre 4 corretoras
agora_unicas = agoraSet["tickets"] - (
    ativaSet["tickets"] | genialSet["tickets"] | easynvestSet["tickets"]
)

print('diferença entre 4 corretoras, genial,atica,easy e agora \n ',agora_unicas)


## oque as quatro tem em comum 
comum = agoraSet["tickets"] & ativaSet["tickets"] & genialSet["tickets"] & easynvestSet["tickets"]

print('oque as quatro tem em comum  \n ',comum)


agora_unicas = agoraSet["tickets"] - (ativaSet["tickets"] | genialSet["tickets"] | easynvestSet["tickets"])
ativa_unicas = ativaSet["tickets"] - (agoraSet["tickets"] | genialSet["tickets"] | easynvestSet["tickets"])
genial_unicas = genialSet["tickets"] - (agoraSet["tickets"] | ativaSet["tickets"] | easynvestSet["tickets"])
easynvest_unicas = easynvestSet["tickets"] - (agoraSet["tickets"] | ativaSet["tickets"] | genialSet["tickets"])

print('unicas da agora \n ',agora_unicas)
print('unicas da ativa \n ',ativa_unicas)
print('unicas da genial \n ',genial_unicas)
print('unicas da easynvest_unicas \n ',easynvest_unicas)
