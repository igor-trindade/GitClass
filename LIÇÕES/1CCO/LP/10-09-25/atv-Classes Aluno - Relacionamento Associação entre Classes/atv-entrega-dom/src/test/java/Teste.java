public class Teste {

    public static void main(String[] args) {

    // setando investimentos

        // Criando investimentos (8 objetos)
        Investimento inv1 = new Investimento("CDB", 50000.0, 12, 12.2, "Médio");
        Investimento inv2 = new Investimento("Tesouro Direto", 35000.0, 7, 9.2, "Baixo");
        Investimento inv3 = new Investimento("Inv. Imobiliário", 100000.0, 24, 22.2, "Alto");
        Investimento inv4 = new Investimento("LCA", 40000.0, 5, 10.0, "Médio");
        Investimento inv5 = new Investimento("LCI", 1300000.0, 36, 24.5, "Alto");
        Investimento inv6 = new Investimento("Fundo de Ações", 80000.0, 18, 15.0, "Alto");
        Investimento inv7 = new Investimento("Debêntures", 60000.0, 20, 11.0, "Médio");
        Investimento inv8 = new Investimento("CRI/CRA", 90000.0, 30, 18.0, "Alto");


        System.out.println();
        System.out.println();

        System.out.println("===================================TIPOS DE INVESTIMENTOS===========================================");
        System.out.println(
                "1° Tesouro Direto: Investimento em títulos públicos emitidos pelo governo.\n" +
                        "2° CDB (Certificado de Depósito Bancário): Títulos de renda fixa emitidos por bancos, com garantia do FGC (Fundo Garantidor de Créditos).\n" +
                        "3° LCI (Letra de Crédito Imobiliário): Títulos lastreados em financiamento imobiliário, com isenção de Imposto de Renda.\n" +
                        "4° LCA (Letra de Crédito do Agronegócio): Títulos lastreados em financiamento do agronegócio, também isentos de IR.\n" +
                        "5° Inv. Imobiliário: Investimentos em fundos imobiliários ou imóveis físicos para geração de renda.\n" +
                        "6° Fundo de Ações: Investimento em carteira diversificada de ações de empresas, alto risco e potencial de retorno elevado.\n" +
                        "7° Debêntures: Títulos de dívida emitidos por empresas, com rentabilidade definida e risco médio.\n" +
                        "8° CRI/CRA (Certificado de Recebíveis Imobiliários/Agrícolas): Títulos lastreados em recebíveis imobiliários ou do agronegócio, com alto retorno e risco variável."
        );
        System.out.println("==================================================================================================\n");




        System.out.println();
        System.out.println();


        System.out.println(inv1);
        System.out.println();
        System.out.println(inv2);
        System.out.println();
        System.out.println(inv3);
        System.out.println();
        System.out.println(inv4);
        System.out.println();
        System.out.println(inv5);

// criando as empresas
        Empresas empresa1 = new Empresas("Itauna","Banco",2000000.0,40000);
        Empresas empresa2 = new Empresas("C2banc","Banco",100000.0,15000);
        Empresas empresa3 = new Empresas("Grafiza","Imobiliaria",200000.0,500000);
        Empresas empresa4 = new Empresas("Sirela","Imobiliaria",4500000.0,1000);
        Empresas empresa5 = new Empresas("Microhardware","Tecnologia",13000000.0,130000);

// setando investimento as suas empresas
        empresa1.setInvestimentos(inv1);

        System.out.println(empresa1);
        System.out.println();
        System.out.println(empresa2);
        System.out.println();
        System.out.println(empresa3);
        System.out.println();
        System.out.println(empresa4);
        System.out.println();
        System.out.println(empresa5);


        // Adicionando objeto investimento á lista das empresas. Somente entre as 5 msm

        // empresa 1 receberá 8 inv
        empresa5.setInvestimentos(inv1);
        empresa5.setInvestimentos(inv2);
        empresa5.setInvestimentos(inv3);
        empresa5.setInvestimentos(inv4);
        empresa5.setInvestimentos(inv5);
        empresa5.setInvestimentos(inv6);
        empresa5.setInvestimentos(inv7);
        empresa5.setInvestimentos(inv8);

        // Outras empresas com alguns investimentos
        empresa1.setInvestimentos(inv6);
        empresa1.setInvestimentos(inv7);

        empresa2.setInvestimentos(inv1);
        empresa2.setInvestimentos(inv2);

        empresa3.setInvestimentos(inv3);

        empresa4.setInvestimentos(inv4);
        empresa4.setInvestimentos(inv5);




        // ====================== TESTES DE ORDENAÇÃO ==========================
        System.out.println("\n\n================== TESTES DE ORDENAÇÃO E BUSCA ==================\n");

        // SelectionSort por valorAplicado (empresa5 tem vários investimentos)
        System.out.println("Empresa5 antes do SelectionSort (valorAplicado):");
        empresa5.getInvestimentos().forEach(System.out::println);

        Ordenacao.selectionSortPorValor(empresa5.getInvestimentos());

        System.out.println("\nEmpresa5 depois do SelectionSort (valorAplicado):");
        empresa5.getInvestimentos().forEach(System.out::println);

        // Busca Binária por valorAplicado
        double valorBusca = 90000.0;
        Investimento resultado = Ordenacao.buscaBinariaPorValor(empresa5.getInvestimentos(), valorBusca);
        System.out.println("\nResultado da busca binária por valor " + valorBusca + ": " + resultado);

        // BubbleSort por prazoMeses
        System.out.println("\nEmpresa5 antes do BubbleSort (prazoMeses):");
        empresa5.getInvestimentos().forEach(System.out::println);

        Ordenacao.bubbleSortPorPrazo(empresa5.getInvestimentos());

        System.out.println("\nEmpresa5 depois do BubbleSort (prazoMeses):");
        empresa5.getInvestimentos().forEach(System.out::println);


    }
}
