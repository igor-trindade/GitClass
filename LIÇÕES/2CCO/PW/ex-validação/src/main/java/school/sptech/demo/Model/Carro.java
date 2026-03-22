package school.sptech.demo.Model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Carro {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    private String modelo;
    private String montadora;
    private String dataFabricacao;
    private Integer cavalos;
    private Double precoSugerido;
    private Boolean automatico;


    public Carro() {
    }

    public Carro(Integer id, String modelo, String montadora, String dataFabricacao, Integer cavalos, Double precoSugerido, Boolean automatico) {
        this.id = id;
        this.modelo = modelo;
        this.montadora = montadora;
        this.dataFabricacao = dataFabricacao;
        this.cavalos = cavalos;
        this.precoSugerido = precoSugerido;
        this.automatico = automatico;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getModelo() {
        return modelo;
    }

    public void setModelo(String modelo) {
        this.modelo = modelo;
    }

    public String getMontadora() {
        return montadora;
    }

    public void setMontadora(String montadora) {
        this.montadora = montadora;
    }

    public String getDataFabricacao() {
        return dataFabricacao;
    }

    public void setDataFabricacao(String dataFabricacao) {
        this.dataFabricacao = dataFabricacao;
    }

    public Integer getCavalos() {
        return cavalos;
    }

    public void setCavalos(Integer cavalos) {
        this.cavalos = cavalos;
    }

    public Double getPrecoSugerido() {
        return precoSugerido;
    }

    public void setPrecoSugerido(Double precoSugerido) {
        this.precoSugerido = precoSugerido;
    }

    public Boolean getAutomatico() {
        return automatico;
    }

    public void setAutomatico(Boolean automatico) {
        this.automatico = automatico;
    }
}

