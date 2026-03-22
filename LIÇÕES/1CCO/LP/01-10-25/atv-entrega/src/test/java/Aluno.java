import java.util.ArrayList;
import java.util.List;

public class Aluno {

    private String nome;
    private List<Double> notas;

    public Aluno(List notas, String nome) {
        notas = new ArrayList<>();
        this.notas = notas;
        this.nome = nome;
    }

    public void adicionarNota(Double nota) {
    this.notas.add(nota);
    }

    public Double calcularMedia(){
        Double total = 0.0;

//        for (int i = 0; i <= notas.size(); i++) {
//         total += notas.get(i);
//        }

        for(Double nota : notas){
            total += nota;
        }

        return total;

    }

    public String getNome() {
        return nome;
    }
    public void setNome(String nome) {
        this.nome = nome;
    }
    public List getNotas() { return notas;
    }
    public void setNotas(List notas) {
        this.notas = notas;
    }
    @Override
    public String toString() {
        return "Aluno{" +
                "nome='" + nome + '\'' +
                ", notas=" + notas +
                '}';
    }
}
