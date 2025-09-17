package AtvFilmes;

public class TesteFilm {
    public static void main(String[] args) {
        Streaming netflix = new Streaming();

        Filmes f1 = new Filmes(1, "Interestelar", "Ficção", 8.6);
        Filmes f2 = new Filmes(2, "Toy Story", "Animação", 8.3);
        Filmes f3 = new Filmes(3, "O Poderoso Chefão", "Crime", 9.2);
        Filmes f4 = new Filmes(4, "Duna", "Ficção", 8.0);
        Filmes f5 = new Filmes(5, "Titanic", "Romance", 7.9);

        netflix.adicionarFilme(f1);
        netflix.adicionarFilme(f2);
        netflix.adicionarFilme(f3);
        netflix.adicionarFilme(f4);
        netflix.adicionarFilme(f5);

        System.out.println("🎞️ Total de filmes: " + netflix.getQuantidadeDeFilmes());
        System.out.println("📊 Média de notas: " + netflix.getMediaFilmes());

        System.out.println("\n🔍 Buscando por nome 'duna':");
        Filmes buscado = netflix.getFilmePeloNome("duna");
        System.out.println(buscado != null ? buscado : "Filme não encontrado");

        System.out.println("\n🎬 Filmes da categoria 'Ficção':");
        for (Filmes f : netflix.getFilmesPorCategoria("ficção")) {
            System.out.println("- " + f);
        }

        System.out.println("\n🏆 Filme com maior nota:");
        Filmes top = netflix.getFilmeMaiorNota();
        System.out.println(top != null ? top : "Nenhum filme disponível");

        System.out.println("\n🎲 Filme sorteado:");
        Filmes sorteado = netflix.sortearFilme();
        System.out.println(sorteado != null ? sorteado : "Nenhum filme disponível");

        System.out.println("\n🗑️ Removendo filme ID 3 (O Poderoso Chefão)");
        netflix.removerFilme(3);
        System.out.println("Total atualizado: " + netflix.getQuantidadeDeFilmes());
    }
}
