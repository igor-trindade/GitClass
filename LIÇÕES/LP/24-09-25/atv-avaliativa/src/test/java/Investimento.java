public class Investimento {


    private String tipo;          // Ex: "CDB", "Tesouro Direto", "Ações"
    private Double valorAplicado;
    private Integer prazoMeses;
    private Double taxaJuros;
    private String risco;


    public Investimento(String tipo, Double valor, Integer meses, Double juros, String risco) {
        this.tipo = tipo;
        this.valorAplicado = valor;
        this.prazoMeses = meses;
        this.taxaJuros = juros;
        this.risco = risco;
    }


    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public Double getValorAplicado() {
        return valorAplicado;
    }

    public void setValorAplicado(Double valorAplicado) {
        this.valorAplicado = valorAplicado;
    }

    public Integer getPrazoMeses() {
        return prazoMeses;
    }

    public void setPrazoMeses(Integer prazoMeses) {
        this.prazoMeses = prazoMeses;
    }

    public Double getTaxaJuros() {
        return taxaJuros;
    }

    public void setTaxaJuros(Double taxaJuros) {
        this.taxaJuros = taxaJuros;
    }

    public String getRisco() {
        return risco;
    }

    public void setRisco(String risco) {
        this.risco = risco;
    }

    @Override
    public String toString() {
        return "Investimento{" +
                "tipo='" + tipo + '\'' +
                ", valorAplicado=" + valorAplicado +
                ", prazoMeses=" + prazoMeses +
                ", taxaJuros=" + taxaJuros +
                ", risco='" + risco + '\'' +
                '}';
    }
}
