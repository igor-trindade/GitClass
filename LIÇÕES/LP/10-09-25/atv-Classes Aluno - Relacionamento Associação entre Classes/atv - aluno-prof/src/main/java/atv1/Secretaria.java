package atv1;

public class Secretaria {
    private Integer totalInadimplentes;
    private Integer totalCancelamentos;
    private Integer totalPagamentos;

    public Secretaria() {
        this.totalInadimplentes = 0;
        this.totalCancelamentos = 0;
        this.totalPagamentos = 0;

    }

    public void registraPagamento(Aluno aluno) {
        aluno.setInadimplente(false);
        this.totalPagamentos++;
        System.out.print("o aluno " + aluno.getNome() + " de ra " + aluno.getRa() + " está em dia com o pagamento.\n");
    }

    public void registraAtrasoPag(Aluno aluno) {
        aluno.setInadimplente(true);
        this.totalInadimplentes++;
        System.out.printf("o aluno " + aluno.getNome() + " de ra " + aluno.getRa() + " está inadimplente com o pagamento.\n");
    }

    public void registraCancelamento(Aluno aluno) {
        aluno.setAtivo(false);
        this.totalCancelamentos++;
    }

    public void verificaAprovacaoAluno(Aluno aluno) {

        Integer ra = aluno.getRa();
        String nome = aluno.getNome();
        String ativo;
        String inadimplente;
        Double nota1 = aluno.getNota1();
        Double nota2 = aluno.getNota2();
        Double media = aluno.calcularMedia(nota1, nota2);
        String status = "";


        if (aluno.getAtivo()) {
            ativo = "ATIVO";
        } else {
            ativo = "INATIVO";
        }


        if (aluno.getInadimplente()) {
            inadimplente = "SIM";
        } else {
            inadimplente = "NÃO";
        }

        if (media >= 6) {
            status = "Aprovado";
        } else {
            status = "Reprovado";
        }

        System.out.println("\n\nSITUAÇÃO DO ALUNO -> " + ativo +
                "\nRA: " + ra +
                "\nNome: " + nome +
                "\nNota1: " + nota1 +
                "\nNota2: " + nota2 +
                "\nMédia: " + media +
                "\nStatus " + status +
                "\nInadimplente " + inadimplente);
    }

    public void exibirRelatorio() {

        System.out.printf("----------------RELATÓRIO---------------"+
                "\nPagamentos Realizados: " + totalPagamentos+
                "\nInadimplentes: " + totalInadimplentes+
                "\nEvasões: " + totalCancelamentos);

    }


    @Override
    public String toString() {
        return "atv1.Secretaria{" +
                "totalInadimplentes=" + totalInadimplentes +
                ", totalCancelamentos=" + totalCancelamentos +
                ", totalPagamentos=" + totalPagamentos +
                '}';
    }
}
