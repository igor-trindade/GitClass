
import java.util.List;
import java.util.ArrayList;

public class Empresas {

    private String nome;
    private String setor;            // Ex: "Tecnologia", "Alimentício", "Financeiro"
    private Double faturamentoAnual; // Em R$
    private Integer funcionarios;
    private List<Investimento> investimentos;  // Relação 1:N


    public Empresas(String nome, String setor, Double fat, Integer func) {
        this.nome = nome;
        this.setor = setor;
        this.faturamentoAnual = fat;
        this.funcionarios = func;
        this.investimentos = new ArrayList<>(); // ✅ corrigido
    }
    public void setInvestimentos(Investimento investimentos) {
        this.investimentos.add(investimentos);

    }










    public String getNome() {
        return nome;
    }
    public void setNome(String nome) {
        this.nome = nome;
    }
    public String getSetor() {
        return setor;
    }
    public void setSetor(String setor) {
        this.setor = setor;
    }
    public Double getFaturamentoAnual() {
        return faturamentoAnual;
    }
    public void setFaturamentoAnual(Double faturamentoAnual) {
        this.faturamentoAnual = faturamentoAnual;
    }
    public Integer getFuncionarios() {
        return funcionarios;
    }
    public void setFuncionarios(Integer funcionarios) {
        this.funcionarios = funcionarios;
    }
    public List<Investimento> getInvestimentos() {
        return investimentos;
    }



    @Override
    public String toString() {
        return "Empresas{" +
                "nome='" + nome + '\'' +
                ", setor='" + setor + '\'' +
                ", faturamentoAnual=" + faturamentoAnual +
                ", funcionarios=" + funcionarios +
                ", investimentos=" + investimentos +
                '}';
    }
}

