import java.util.ArrayList;
import java.util.Scanner;
import java.util.List;

public class Main {


        public static void main(String[] args) {
            Scanner scanner = new Scanner(System.in);
            List<Livro> livros = new ArrayList<>();
            Integer idCounter = 1;
            Integer opcao;

            do {
                System.out.println("\n📚==== GERENCIAMENTO DE LIVRARIA ====");
                System.out.println("1 - Cadastrar novo livro");
                System.out.println("2 - Exibir todos os livros");
                System.out.println("3 - Atualizar livro");
                System.out.println("4 - Remover livro");
                System.out.println("5 - Buscar livro por nome");
                System.out.println("6 - Sair");
                System.out.print("Escolha uma opção: ");

                opcao = Integer.valueOf(scanner.nextLine());

                switch (opcao) {
                    case 1:
                        System.out.print("Digite o nome do livro: ");
                        String nome = scanner.nextLine();
                        System.out.print("Digite o preço do livro: ");
                        Double preco = Double.valueOf(scanner.nextLine());
                        livros.add(new Livro(idCounter++, nome, preco));
                        System.out.println("✅ Livro cadastrado com sucesso!");
                        break;

                    case 2:
                        if (livros.isEmpty()) {
                            System.out.println("Nenhum livro cadastrado.");
                        } else {
                            System.out.println("\n📖 Lista de Livros:");
                            for (Livro l : livros) {
                                System.out.println(l);
                            }
                        }
                        break;

                    case 3:
                        System.out.print("Digite o ID do livro que deseja atualizar: ");
                        Integer idAtualizar = Integer.valueOf(scanner.nextLine());
                        Boolean encontrado = false;

                        for (Livro l : livros) {
                            if (l.getId().equals(idAtualizar)) {
                                System.out.print("Novo nome: ");
                                String novoNome = scanner.nextLine();
                                System.out.print("Novo preço: ");
                                Double novoPreco = Double.valueOf(scanner.nextLine());

                                l.setNome(novoNome);
                                l.setPreco(novoPreco);
                                System.out.println("✅ Livro atualizado com sucesso!");
                                encontrado = true;
                                break;
                            }
                        }

                        if (!encontrado) {
                            System.out.println("❌ Livro não encontrado.");
                        }
                        break;

                    case 4:
                        System.out.print("Digite o ID do livro que deseja remover: ");
                        Integer idRemover = Integer.valueOf(scanner.nextLine());
                        Livro livroParaRemover = null;

                        for (Livro l : livros) {
                            if (l.getId().equals(idRemover)) {
                                livroParaRemover = l;
                                break;
                            }
                        }

                        if (livroParaRemover != null) {
                            livros.remove(livroParaRemover);
                            System.out.println("🗑️ Livro removido com sucesso!");
                        } else {
                            System.out.println("❌ Livro não encontrado.");
                        }
                        break;

                    case 5:
                        System.out.print("Digite parte do nome do livro: ");
                        String busca = scanner.nextLine().toLowerCase();
                        Boolean achou = false;

                        System.out.println("\n🔍 Resultados da busca:");
                        for (Livro l : livros) {
                            if (l.getNome().toLowerCase().contains(busca)) {
                                System.out.println(l);
                                achou = true;
                            }
                        }

                        if (!achou) {
                            System.out.println("Nenhum livro encontrado com esse nome.");
                        }
                        break;

                    case 6:
                        System.out.println("👋 Encerrando o sistema...");
                        break;

                    default:
                        System.out.println("⚠️ Opção inválida. Tente novamente.");
                }
            } while (!opcao.equals(6));

            scanner.close();
        }
}
