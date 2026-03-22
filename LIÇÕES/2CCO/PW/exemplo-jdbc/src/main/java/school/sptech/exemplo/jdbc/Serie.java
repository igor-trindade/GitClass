package school.sptech.exemplo.jdbc;

public class Serie {
    private String UUID;
    private String nome;
    private String plataforma;
    private Integer nota;

    public Serie(String UUID, String nome, String plataforma, Integer nota) {
        this.UUID = UUID;
        this.nome = nome;
        this.plataforma = plataforma;
        this.nota = nota;
    }
    public Serie() {
    }

    public String getUUID() {
        return UUID;
    }

    public void setUUID(String UUID) {
        this.UUID = UUID;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }
    public String getPlataforma() {
        return plataforma;
    }
    public void setPlataforma(String plataforma) {
        this.plataforma = plataforma;
    }
    public Integer getNota() {
        return nota;
    }
    public void setNota(Integer nota) {
        this.nota = nota;
    }
}
