package school.sptech;

public class RendaVariavel extends Investimento {
    private Double percentualLucro;
    private String Risco;

    @Override
    public Double calcularRendimento() {
          return getValorAplicado() * (1 + percentualLucro/100);
    }

    public Double getPercentualLucro() {
        return percentualLucro;
    }
    public void setPercentualLucro(Double percentualLucro) {
        this.percentualLucro = percentualLucro;
    }
    public String getRisco() {
        return Risco;
    }
    public void setRisco(String risco) {
        Risco = risco;
    }

    @Override
    public String toString() {
        return "RendaVariavel{" +
                "percentualLucro=" + percentualLucro +
                ", Risco='" + Risco + '\'' +
                '}';
    }
}
