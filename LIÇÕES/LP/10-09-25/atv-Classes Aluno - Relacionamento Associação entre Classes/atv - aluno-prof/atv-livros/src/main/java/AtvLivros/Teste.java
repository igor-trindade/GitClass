package AtvLivros;

public class Teste {

        public static void main(String[] args) {
            Prateleira prateleira = new Prateleira(5, 5000.0);

            Livros l1 = new Livros("001", "Java Básico", "Autor A", 100);
            Livros l2 = new Livros("002", "Estruturas de Dados", "Autor B", 150);

            prateleira.adicionarLivro(l1);
            prateleira.adicionarLivro(l2);

            System.out.println("Quantidade de livros: " + prateleira.quantidadeLivros());
            System.out.println("Peso total: " + prateleira.getPesoTotal());

            Livros encontrado = prateleira.getLivroPorNome("java básico");
            if (encontrado != null) {
                System.out.println("Livro encontrado: " + encontrado.getNome());
            } else {
                System.out.println("Livro não encontrado");
            }

            prateleira.removerLivro("001");
            System.out.println("Quantidade após remoção: " + prateleira.quantidadeLivros());
        }
    }


