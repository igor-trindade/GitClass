package school.sptech.exemplo;

import java.util.ArrayList;
import java.util.List;

// Classe Grupo, que representa um grupo de contatos. Esta classe possui uma relação de **agregação** com Contato,
// o que significa que os Contatos podem existir independentemente do Grupo. Se o Grupo for destruído, os Contatos
// podem continuar a existir fora dele.
public class Grupo {

    // Atributos da classe Grupo
    private String nome; // Nome do grupo.

    // Lista de contatos associados ao grupo.
    private List<Contato> contatos;

    // Construtor da classe Grupo que inicializa apenas com o nome. A lista de contatos começa vazia.
    public Grupo(String nome) {
        this.nome = nome;
        this.contatos = new ArrayList<>(); // Inicializa a lista de contatos.
    }

    // Sobrecarga do construtor: Inicializa o grupo com um nome e uma lista de contatos.
    public Grupo(String nome, List<Contato> contatos) {
        this.nome = nome;
        this.contatos = contatos; // Inicializa o grupo com contatos predefinidos.
    }

    // Método para adicionar um contato ao grupo.
    public void adiciona(Contato contato) {
        this.contatos.add(contato); // Adiciona um contato à lista de contatos.
    }

    // Método para remover um contato do grupo.
    public void remove(Contato contato) {
        this.contatos.remove(contato); // Remove o contato da lista de contatos.
    }

    // Retorna a quantidade de contatos no grupo - esse método não tinha no diagrama do slide
    public Integer getQuantidadeContatos() {
        return this.contatos.size(); // Retorna o número de contatos no grupo.
    }

    // Getters e setters para acessar e modificar os valores de nome e contatos.
    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public List<Contato> getContatos() {
        return contatos;
    }

    // Método para representar a classe Grupo e seus atributos/métodos em um diagrama UML usando ASCII art.
    // Aqui estamos representando a agregação com a classe Contato (losango vazio).
    public String getDiagrama() {
        return """
                        +------------------------------------+
                        |              Grupo                 |
                        +------------------------------------+
                        | - nome: String                     |
                        +------------------------------------+
                        | + adiciona(contato: Contato): void |
                        | + remove(contato: Contato): void   |
                        | + getQuantidadeContatos(): Integer |
                        +------------------------------------+
                
                              aggregation (agregação)
                        +-----------------+ 1             1..* +----------------+
                        |      Grupo       |<>-----------------|     Contato     |
                        +-----------------+                    +-----------------+
                """;
    }

}
