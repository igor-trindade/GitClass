package AtvLivros;

import java.util.List;
import java.util.ArrayList;

public class Prateleira {
    private List<Livros> listLivro = new ArrayList<>();
    private Integer limite;
    private Double peso;

    public Prateleira(Integer limite, Double peso) {
        this.limite = limite;
        this.peso = peso;
    }

    public void adicionarLivro(Livros livro) {
        if (listLivro.size() >= limite) {
            System.out.println("Quantidade de livros excedida");
        } else {
            listLivro.add(livro);
        }
    }

    // 1. Remover livro por código
    public void removerLivro(String cod) {
        listLivro.removeIf(livro -> livro.getCod().equals(cod));
    }

    // 2. Quantidade de livros
    public Integer quantidadeLivros() {
        return listLivro.size();
    }

    // 3. Peso total da prateleira com os livros
    public Double getPesoTotal() {
        double total = 0.0;
        for (Livros livro : listLivro) {
            total += livro.CalcularPeso();
        }
        return total;
    }

    // 4. Buscar livro por nome (ignorando maiúsculas e minúsculas)
    public Livros getLivroPorNome(String nome) {
        for (Livros livro : listLivro) {
            if (livro.getNome().equalsIgnoreCase(nome)) {
                return livro;
            }
        }
        return null;
    }
}
