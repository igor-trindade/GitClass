package AtvLivros;

public class Livros {

    private String cod;
    private String nome;
    private String autor;
    private Integer QtdPaginas;

    public Livros(String cod,String nome, String autor, Integer qtd){
        this.cod =  cod;
        this.nome = nome;
        this.autor = autor;
        this.QtdPaginas = qtd;

    }


public Double CalcularPeso() {
    Double PesoPagina = 2.4;
    Double pesoTotal = this.QtdPaginas * PesoPagina;
    return pesoTotal;
}


    public String getCod() {
        return cod;
    }

    public String getNome() {
        return nome;
    }

    public String getAutor() {
        return autor;
    }

    public Integer getQtdPaginas() {
        return QtdPaginas;
    }

}
