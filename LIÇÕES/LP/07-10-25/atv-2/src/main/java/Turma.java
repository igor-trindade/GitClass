import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

public class Turma {
    private List<Aluno> alunos;

    public Turma() {
        this.alunos = new ArrayList<>();
    }

    // Adiciona um aluno à turma
    public void adicionarAluno(Aluno aluno) {
        alunos.add(aluno);
    }

    // Retorna o aluno por RA
    public Aluno getAlunoPorRa(String ra) {
        for (Aluno a : alunos) {
            if (a.getRa().equalsIgnoreCase(ra)) {
                return a;
            }
        }
        return null;
    }

    // Retorna alunos cujo nome contenha parte do texto informado
    public List<Aluno> getAlunoPorNome(String nome) {
        List<Aluno> encontrados = new ArrayList<>();
        for (Aluno a : alunos) {
            if (a.getNome().toLowerCase().contains(nome.toLowerCase())) {
                encontrados.add(a);
            }
        }
        return encontrados;
    }

    // Retorna o aluno com maior média
    public Aluno getAlunoComMaiorMedia() {
        if (alunos.isEmpty()) return null;

        Aluno melhor = alunos.get(0);
        for (Aluno a : alunos) {
            if (a.calcularMedia() > melhor.calcularMedia()) {
                melhor = a;
            }
        }
        return melhor;
    }

    // Retorna o aluno com menor média
    public Aluno getAlunoComMenorMedia() {
        if (alunos.isEmpty()) return null;

        Aluno pior = alunos.get(0);
        for (Aluno a : alunos) {
            if (a.calcularMedia() < pior.calcularMedia()) {
                pior = a;
            }
        }
        return pior;
    }

    // Calcula a média das médias da turma
    public Double calcularMediaDaTurma() {
        if (alunos.isEmpty()) return 0.0;

        Double soma = 0.0;
        for (Aluno a : alunos) {
            soma += a.calcularMedia();
        }

        return soma / alunos.size();
    }

    // Calcula a média de um aluno pelo RA
    public Double getMediaPorRa(String ra) {
        Aluno aluno = getAlunoPorRa(ra);
        if (aluno == null) return 0.0;
        return aluno.calcularMedia();
    }

    // Calcula a mediana das médias dos alunos
    public Double getMediana() {
        if (alunos.isEmpty()) return 0.0;

        List<Double> medias = new ArrayList<>();
        for (Aluno a : alunos) {
            medias.add(a.calcularMedia());
        }

        Collections.sort(medias);

        int n = medias.size();
        if (n % 2 == 0) {
            return (medias.get(n / 2 - 1) + medias.get(n / 2)) / 2;
        } else {
            return medias.get(n / 2);
        }
    }

    public List<Aluno> getAlunos() {
        return alunos;
    }
}
