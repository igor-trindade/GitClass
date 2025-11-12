package school.sptech;

import java.util.ArrayList;
import java.util.List;

public class CarteiraInvestimento {

private String investidor;
private List<Investimento> investimentos = new ArrayList<>();

public void adicionarInvestimento( Investimento inv){
investimentos.add(inv);
}
public Double calcularTotalRendimento(){
    Double total = 0.0;
    for(Investimento i : investimentos){
        total += i.calcularRendimento();
    }
    return total;
}

public void listarInvestimentos() {
    List<String> inv = new ArrayList<>();
    for (Investimento i : investimentos) {
        inv.add(i.getNome());
    }


}

    public List<Investimento> getInvestimentos() {
        return investimentos;
    }

    public String getInvestidor() {
        return investidor;
    }

    public void setInvestidor(String investidor) {
        this.investidor = investidor;
    }
}
