public class Main {
    public static void main(String[] args) {
        Turma turma = new Turma();

        // Criando alunos
        Aluno a1 = new Aluno("Igor Cardoso", "001");
        a1.adicionarNota(8.0);
        a1.adicionarNota(7.5);

        Aluno a2 = new Aluno("Maria Silva", "002");
        a2.adicionarNota(9.0);
        a2.adicionarNota(8.5);
        a2.adicionarNota(10.0);

        Aluno a3 = new Aluno("João Souza", "003");
        a3.adicionarNota(5.0);
        a3.adicionarNota(6.0);

        turma.adicionarAluno(a1);
        turma.adicionarAluno(a2);
        turma.adicionarAluno(a3);

        System.out.println("📋 Alunos da Turma:");
        for (Aluno a : turma.getAlunos()) {
            System.out.println(a);
        }

        System.out.println("\n🔍 Buscar aluno por nome (parte): 'mar':");
        for (Aluno a : turma.getAlunoPorNome("mar")) {
            System.out.println(a);
        }

        System.out.println("\nAluno com maior média: " + turma.getAlunoComMaiorMedia());
        System.out.println(" Aluno com menor média: " + turma.getAlunoComMenorMedia());

        System.out.println("\nMédia da turma: " + String.format("%.2f", turma.calcularMediaDaTurma()));
        System.out.println(" Mediana das médias: " + String.format("%.2f", turma.getMediana()));

        System.out.println("\n Média do aluno RA 002: " + turma.getMediaPorRa("002"));
    }
}
