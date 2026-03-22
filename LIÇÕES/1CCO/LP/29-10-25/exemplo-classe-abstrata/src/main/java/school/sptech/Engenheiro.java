package school.sptech;

public  class Engenheiro extends Funcionario {
private Double salario;

    public Engenheiro(String cpf, String nome, Double salario) {
        super(cpf, nome);
        this.salario = salario;
    }


    @Override
    public Double calcSalario() {
        return salario;
    }


}
