package atv1;

public class Aluno {

    private Integer ra;
    private String nome;
    private Boolean ativo;
    private Boolean inadimplente;
    private Double nota1;
    private Double nota2;

    public Aluno(Integer ra, String nome) {
        this.ra = ra;
        this.nome = nome;
        this.ativo = true;
        this.inadimplente = false;
    }

    public Double calcularMedia(Double nota1, Double nota2) {
        Double media = (nota1 * 0.4) + (nota2 * 0.6);
        return media;
    }

    public Integer getRa() {
        return ra;
    }

    public void setRa(Integer ra) {
        this.ra = ra;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public Boolean getAtivo() {
        return ativo;
    }

    public void setAtivo(Boolean ativo) {
        this.ativo = ativo;
    }

    public Boolean getInadimplente() {
        return inadimplente;
    }

    public void setInadimplente(Boolean inadimplente) {
        this.inadimplente = inadimplente;
    }

    public Double getNota1() {
        return nota1;
    }

    public void setNota1(Double nota1) {
        this.nota1 = nota1;
    }

    public Double getNota2() {
        return nota2;
    }

    public void setNota2(Double nota2) {
        this.nota2 = nota2;
    }


    @Override
    public String toString() {
        return "atv1.Aluno{" +
                "ra=" + ra +
                ", nome='" + nome + '\'' +
                ", ativo=" + ativo +
                ", inadimplente=" + inadimplente +
                ", nota1=" + nota1 +
                ", nota2=" + nota2 +
                '}';
    }
}
