import java.util.ArrayList;
import java.util.List;

public class Aluno {
    private String nome;
    private String ra; // Registro Acadêmico
    private List<Double> notas;

    public Aluno(String nome, String ra) {
        this.nome = nome;
        this.ra = ra;
        this.notas = new ArrayList<>();
    }

    public String getNome() {
        return nome;
    }

    public String getRa() {
        return ra;
    }

    public List<Double> getNotas() {
        return notas;
    }

    // Adiciona uma nota à lista de notas do aluno
    public void adicionarNota(Double nota) {
        notas.add(nota);
    }

    // Calcula a média das notas do aluno
    public Double calcularMedia() {
        if (notas.isEmpty()) {
            return 0.0;
        }

        Double soma = 0.0;
        for (Double nota : notas) {
            soma += nota;
        }

        return soma / notas.size();
    }

    @Override
    public String toString() {
        return "RA: " + ra + " | Nome: " + nome + " | Média: " + String.format("%.2f", calcularMedia());
    }
}
