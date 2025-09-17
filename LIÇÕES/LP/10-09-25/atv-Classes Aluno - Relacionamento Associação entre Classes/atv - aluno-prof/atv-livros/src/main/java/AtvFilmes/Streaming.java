package AtvFilmes;

import java.util.List;
import java.util.ArrayList;
import java.util.Random;

public class Streaming {
    private List<Filmes> filmes = new ArrayList<>();

    public void adicionarFilme(Filmes filme) {
        filmes.add(filme);
    }


    public void removerFilme(Integer id) {
        filmes.removeIf(filme -> filme.getId().equals(id));
    }


    public Integer getQuantidadeDeFilmes() {
        return filmes.size();
    }


    public Double getMediaFilmes() {
        if (filmes.isEmpty()) return 0.0;

        double soma = 0.0;
        for (Filmes f : filmes) {
            soma += f.getNotaImdb();
        }
        return soma / filmes.size();
    }


    public Filmes getFilmePeloNome(String nome) {
        for (Filmes f : filmes) {
            if (f.getNome().equalsIgnoreCase(nome)) {
                return f;
            }
        }
        return null;
    }


    public List<Filmes> getFilmesPorCategoria(String categoria) {
        List<Filmes> resultado = new ArrayList<>();
        for (Filmes f : filmes) {
            if (f.getCategoria().equalsIgnoreCase(categoria)) {
                resultado.add(f);
            }
        }
        return resultado;
    }


    public Filmes getFilmeMaiorNota() {
        if (filmes.isEmpty()) return null;

        Filmes top = filmes.get(0);
        for (Filmes f : filmes) {
            if (f.getNotaImdb() > top.getNotaImdb()) {
                top = f;
            }
        }
        return top;
    }


    public Filmes sortearFilme() {
        if (filmes.isEmpty()) return null;

        Random rand = new Random();
        int index = rand.nextInt(filmes.size());
        return filmes.get(index);
    }
}

