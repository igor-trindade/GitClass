package school.sptech;

public class RendaFixa extends Investimento {
    private Double taxaJuros;
    private Double imposto;

    @Override
    public Double calcularRendimento() {
     return  (getValorAplicado() * taxaJuros * getPrazoMeses()/12) - imposto;
    }

    public Double getImposto() {
        return imposto;
    }
    public void setImposto(Double imposto) {
        this.imposto = imposto;
    }
    public Double getTaxaJuros() {
        return taxaJuros;
    }
    public void setTaxaJuros(Double taxaJuros) {
        this.taxaJuros = taxaJuros;
    }

    public RendaFixa(Double imposto, Double taxaJuros) {
        this.imposto = imposto;
        this.taxaJuros = taxaJuros;
    }
    public RendaFixa(Integer codigo, String nome, Integer prazoMeses, Double valorAplicado, Double imposto, Double taxaJuros) {
        super(codigo, nome, prazoMeses, valorAplicado);
        this.imposto = imposto;
        this.taxaJuros = taxaJuros;
    }

    @Override
    public String toString() {
        return "RendaFixa{" +
                "imposto=" + imposto +
                ", taxaJuros=" + taxaJuros +
                '}';
    }
}
