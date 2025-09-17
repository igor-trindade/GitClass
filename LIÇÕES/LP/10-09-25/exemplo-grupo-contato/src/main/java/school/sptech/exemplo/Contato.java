package school.sptech.exemplo;

// Classe Contato que representa um contato com nome, telefone e estado (bloqueado ou não).
// Este objeto é usado como "parte" de outro objeto, indicando uma agregação em outras classes.
public class Contato {

    // Atributos da classe Contato
    private String nome; // Nome do contato.
    private String telefone; // Número de telefone do contato.
    private Boolean bloqueado; // Indica se o contato está bloqueado ou não.

    // Construtor da classe Contato.
    // Inicializa um contato com nome e telefone. O contato começa como não bloqueado (bloqueado = false).
    public Contato(String nome, String telefone) {
        this.nome = nome;
        this.telefone = telefone;
        this.bloqueado = false; // Todo contato começa não bloqueado.
    }

    // Método para bloquear o contato.
    public void bloquear() {
        this.bloqueado = true; // Muda o estado do contato para bloqueado.
    }

    // Método para desbloquear o contato.
    public void desbloquear() {
        this.bloqueado = false; // Muda o estado do contato para desbloqueado.
    }

    // Getters e setters permitem acessar e modificar os valores de nome, telefone e bloqueado.
    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    public Boolean getBloqueado() {
        return bloqueado;
    }

    // toString()
    @Override
    public String toString() {
        return "Contato{" +
                "nome='" + nome + '\'' +
                ", telefone='" + telefone + '\'' +
                ", bloqueado=" + bloqueado +
                '}';
    }

    // Método para representar a classe Contato e seus atributos/métodos em um diagrama UML usando ASCII art.
    public String getDiagrama() {
        return """
                        +---------------------------------------+
                        |             Contato                   |
                        +---------------------------------------+
                        | - nome: String                        |
                        | - telefone: String                    |
                        | - bloqueado: Boolean                  |
                        +---------------------------------------+
                        | + bloquear(): void                    |
                        | + desbloquear(): void                 |
                        +---------------------------------------+
                """;
    }


}
