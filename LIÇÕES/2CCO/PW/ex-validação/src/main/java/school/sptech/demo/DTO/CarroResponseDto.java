package school.sptech.demo.DTO;

public class CarroResponseDto {


    private String modelo;
    private String montadora;
    private String dataFabricacao;
    private Integer cavalos;
    private Double precoSugerido;
    private Boolean automatico;

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
