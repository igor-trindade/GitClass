package school.sptech;

public abstract class Investimento {
    private Integer codigo;
    private String nome;
    private Double valorAplicado;
    private Integer prazoMeses;

    public abstract Double calcularRendimento();


    public Integer getCodigo() {
        return codigo;
    }
    public void setCodigo(Integer codigo) {
        this.codigo = codigo;
    }
    public String getNome() {
        return nome;
    }
    public void setNome(String nome) {
        this.nome = nome;
    }
    public Integer getPrazoMeses() {
        return prazoMeses;
    }
    public void setPrazoMeses(Integer prazoMeses) {
        this.prazoMeses = prazoMeses;
    }
    public Double getValorAplicado() {
        return valorAplicado;
    }
    public void setValorAplicado(Double valorAplicado) {
        this.valorAplicado = valorAplicado;
    }

    public Investimento(Integer codigo, String nome, Integer prazoMeses, Double valorAplicado) {
        this.codigo = codigo;
        this.nome = nome;
        this.prazoMeses = prazoMeses;
        this.valorAplicado = valorAplicado;
    }
    public Investimento(){}
}
