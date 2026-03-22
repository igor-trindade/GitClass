package school.sptech;

public abstract class Funcionario {
private Integer cpf;
private String nome;


public abstract Double calculaSalario();

    public Funcionario(Integer cpf, String nome) {
        this.cpf = cpf;
        this.nome = nome;
    }
    public Funcionario() {
    }

    public Integer getCpf() {
        return cpf;
    }
    public void setCpf(Integer cpf) {
        this.cpf = cpf;
    }
    public String getNome() {
        return nome;
    }
    public void setNome(String nome) {
        this.nome = nome;
    }


}
