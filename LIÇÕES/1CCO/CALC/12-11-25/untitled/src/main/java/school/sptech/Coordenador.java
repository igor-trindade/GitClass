package school.sptech;

public class Coordenador extends  FuncionarioBonificado{

    private Double qtdHoras;
    private Double valorHoras;
    private Integer qtdCursos;

    @Override
    public Double getValorBonus() {
        Double salario = calculaSalario();
        return salario * getBonus();
    }

    @Override
    public Double calculaSalario() {
        Double valorSalario = (qtdHoras * valorHoras) * 4.5 + (qtdCursos * 500) ;
        return valorSalario;
    }


}
