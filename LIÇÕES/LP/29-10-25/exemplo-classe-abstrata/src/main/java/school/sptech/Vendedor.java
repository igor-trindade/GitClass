package school.sptech;

public class Vendedor extends Funcionario {
    private Double vendas;
    private Double taxa;

    public Vendedor(String cpf, String nome, Double taxa, Double vendas) {
        super(cpf, nome);
        this.taxa = taxa;
        this.vendas = vendas;
    }

    @Override
    public Double calcSalario() {
        return vendas * taxa;
    }

}
