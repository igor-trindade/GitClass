function buscaPosicaoElemento(nomeProcurado, nomes){

for (var i = 0; i < nomes.lenght; i++){
    if( nomes[i] == nomeProcurado){
        return i
    }
}
}

var nomes = ['bob', 'tom','mel', 'dan']



console.log(buscaPosicaoElemento('mel', nomes))
