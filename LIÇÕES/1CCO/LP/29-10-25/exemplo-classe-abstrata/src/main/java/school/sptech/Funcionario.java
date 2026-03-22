package school.sptech;

import java.beans.ConstructorProperties;

public abstract class Funcionario  {
    private String cpf;
    private String nome;

    public Funcionario(String cpf, String nome) {
        this.cpf = cpf;
        this.nome = nome;
    }
    public Funcionario(){}

    public abstract Double calcSalario();

    @Override
    public String toString() {
        return "Funcionario{" +
                "cpf='" + cpf + '\'' +
                ", nome='" + nome + '\'' +
                ", salario= " + String.format("%.2f",calcSalario()) +
                '}';
    }


}
