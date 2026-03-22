package atv1;

public class Teste {

    public static void main(String[] args) {

        // Criando os Alunos e setando valores.

        Aluno aluno01 = new Aluno(13001,"Igor Cardoso");
        aluno01.setNota1(7.5);
        aluno01.setNota2(6.0);
        aluno01.setAtivo(true);

        System.out.println(aluno01);

        Aluno aluno02 = new Aluno(13002,"Sofia Luiza");
        aluno02.setNota1(8.5);
        aluno02.setNota2(9.0);
        System.out.println(aluno02);
        aluno02.setAtivo(false);

        Aluno aluno03 = new Aluno(13003,"Nilma Luiza");
        aluno03.setNota1(7.0);
        aluno03.setNota2(6.5);
        System.out.println(aluno03);
        aluno03.setInadimplente(true);

        Aluno aluno04 = new Aluno(13004,"Elisvaldo Cerqueira");
        aluno04.setNota1(10.0);
        aluno04.setNota2(9.5);
        System.out.println(aluno04);
        System.out.println();
        System.out.println();
        System.out.println();

        // criando secretaria e manipulando os alunos
        Secretaria SCTR = new Secretaria();
        SCTR.registraAtrasoPag(aluno01);
        SCTR.registraAtrasoPag(aluno02);

        SCTR.registraPagamento(aluno03);
        SCTR.registraPagamento(aluno04);

        SCTR.registraCancelamento(aluno03);
        SCTR.registraCancelamento(aluno04);



        // printando aprovações
        SCTR.verificaAprovacaoAluno(aluno01);
        SCTR.verificaAprovacaoAluno(aluno02);
        SCTR.verificaAprovacaoAluno(aluno03);
        SCTR.verificaAprovacaoAluno(aluno04);
        System.out.println();
        System.out.println();

        SCTR.exibirRelatorio();
    }

}
