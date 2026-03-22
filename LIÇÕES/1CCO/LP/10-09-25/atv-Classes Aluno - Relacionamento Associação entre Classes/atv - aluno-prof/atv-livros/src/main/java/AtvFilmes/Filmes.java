package AtvFilmes;

public class Filmes {
    private Integer id;
    private String nome;
    private String categoria;
    private Double notaImdb;

    public Filmes(Integer id, String nome, String categoria, Double notaImdb) {
        this.id = id;
        this.nome = nome;
        this.categoria = categoria;
        this.notaImdb = notaImdb;
    }

    public Integer getId() {
        return id;
    }

    public String getNome() {
        return nome;
    }

    public String getCategoria() {
        return categoria;
    }

    public Double getNotaImdb() {
        return notaImdb;
    }

    @Override
    public String toString() {
        return nome + " (" + categoria + ") - IMDB: " + notaImdb;
    }
}

