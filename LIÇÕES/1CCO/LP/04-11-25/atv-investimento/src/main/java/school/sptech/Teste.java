package school.sptech;

public class Teste {
    public static void main(String[] args) {

        CarteiraInvestimento carteira = new CarteiraInvestimento();


        RendaFixa rf1 = new RendaFixa(1, "CDB Banco XP", 12, 5000.0, 150.0, 0.10);
        RendaFixa rf2 = new RendaFixa(2, "Tesouro Direto", 24, 8000.0, 200.0, 0.12);

        RendaVariavel rv1 = new RendaVariavel();
        rv1.setPercentualLucro(15.0);
        rv1.setRisco("Alto");
        rv1.setCodigo(3);
        rv1.setNome("Ações Petrobras");
        rv1.setValorAplicado(4000.0);
        rv1.setPrazoMeses(6);

        RendaVariavel rv2 = new RendaVariavel();
        rv2.setPercentualLucro(8.0);
        rv2.setRisco("Médio");
        rv2.setCodigo(4);
        rv2.setNome("ETF BOVA11");
        rv2.setValorAplicado(6000.0);
        rv2.setPrazoMeses(12);

        carteira.adicionarInvestimento(rf1);
        carteira.adicionarInvestimento(rf2);
        carteira.adicionarInvestimento(rv1);
        carteira.adicionarInvestimento(rv2);

        System.out.println("--- Investimentos na Carteira ---");
        carteira.listarInvestimentos();

        Double total = carteira.calcularTotalRendimento();
        System.out.printf("\nRendimento total da carteira: R$ %.2f\n", total);

        System.out.println("\n --- Rendimento Individual ---");
        for (Investimento i : carteira.getInvestimentos()) {
            System.out.printf("%s -> Rendimento: R$ %.2f\n",
                    i.getNome(), i.calcularRendimento());
        }
    }
}
