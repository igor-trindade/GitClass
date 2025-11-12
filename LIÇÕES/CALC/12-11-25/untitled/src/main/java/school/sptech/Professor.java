package school.sptech;

public class Professor extends FuncionarioBonificado{
 private Integer qtdAulas;
 private Double valorAula;


    public Professor(Integer cpf, String nome, Double bonus, Integer qtdAulas, Double valorAula) {
        super(cpf, nome, bonus);
        this.qtdAulas = qtdAulas;
        this.valorAula = valorAula;
    }
    public Professor(Double bonus, Integer qtdAulas, Double valorAula) {
        super(bonus);
        this.qtdAulas = qtdAulas;
        this.valorAula = valorAula;
    }
    public Professor(Integer qtdAulas, Double valorAula) {
        this.qtdAulas = qtdAulas;
        this.valorAula = valorAula;
    }


    @Override
    public Double calculaSalario() {
        return qtdAulas * valorAula * 4.5;
    }

    @Override
    public Double getValorBonus() {
        Double salario = calculaSalario();
        return salario * getBonus();
    }


    public Integer getQtdAulas() {
        return qtdAulas;
    }
    public void setQtdAulas(Integer qtdAulas) {
        this.qtdAulas = qtdAulas;
    }
    public Double getValorAula() {
        return valorAula;
    }
    public void setValorAula(Double valorAula) {
        this.valorAula = valorAula;
    }




}
