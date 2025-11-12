package school.sptech;

public abstract class FuncionarioBonificado extends Funcionario {
    private Double bonus;
    public abstract Double getValorBonus();

    public FuncionarioBonificado(Integer cpf, String nome, Double bonus) {
        super(cpf, nome);
        this.bonus = bonus;
    }
    public FuncionarioBonificado(Double bonus) {
        this.bonus = bonus;
    }
    public FuncionarioBonificado(){}


    public Double getBonus() {
        return bonus;
    }
    public void setBonus(Double bonus) {
        this.bonus = bonus;
    }



}
