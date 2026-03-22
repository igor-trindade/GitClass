package school.sptech;

public class AlunoGraduacao extends Aluno {

    private Double notaContinuada;
    private  Double notaProjetoIndividual;

    public AlunoGraduacao(Integer ra, String nome, Double notaContinuada, Double notaProjetoIndividual) {
        super(ra, nome);
        this.notaContinuada = notaContinuada;
        this.notaProjetoIndividual = notaProjetoIndividual;
    }

    @Override
    public void exibirDados() {
        System.out.println("Aluno graduacao: RA = " + getRa() +
                          ", NOME = " + nome +
                          ", Nota continuada = " + notaContinuada +
                          ", notaProjetoIndividual = " + notaProjetoIndividual);

    }

    @Override
    public String toString() {
        return "AlunoGraduacao{" +
                "notaContinuada=" + notaContinuada +
                ", notaProjetoIndividual=" + notaProjetoIndividual +
                ", nome='" + nome + '\'' +
                "} " + super.toString();
    }

    public Double getNotaContinuada() {
        return notaContinuada;
    }
    public void setNotaContinuada(Double notaContinuada) {
        this.notaContinuada = notaContinuada;
    }
    public Double getNotaProjetoIndividual() {
        return notaProjetoIndividual;
    }
    public void setNotaProjetoIndividual(Double notaProjetoIndividual) {
        this.notaProjetoIndividual = notaProjetoIndividual;
    }


}
