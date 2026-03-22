package school.sptech.demo.DTO;

import school.sptech.demo.Model.Carro;

import java.util.List;

public class CarroMapper {
    private Integer id;
    private String modelo;
    private String montadora;
    private String dataFabricacao;
    private Integer cavalos;
    private Double precoSugerido;
    private Boolean automatico;


    public static CarroResponseDto toResponseDto(Carro entity) {
        if (entity == null) {
            return null;
        }

        CarroResponseDto dto = new CarroResponseDto();
        dto.setModelo(entity.getModelo());
        dto.setMontadora(entity.getMontadora());
        dto.setAutomatico(entity.getAutomatico());
        dto.setCavalos(entity.getCavalos());
        dto.setDataFabricacao(entity.getDataFabricacao());
        dto.setPrecoSugerido(entity.getPrecoSugerido());

        return dto;
    }

    public static List<CarroResponseDto> toResponseDto(List<Carro> entities) {
        return entities.stream()
                .map(CarroMapper::toResponseDto)
                .toList();
    }

    public static Carro toEntity(CarrosRequestDto entity) {
        if (entity == null) {
            return null;
        }

        Carro dto = new Carro();

        dto.setModelo(entity.getModelo());
        dto.setMontadora(entity.getMontadora());
        dto.setAutomatico(entity.getAutomatico());
        dto.setCavalos(entity.getCavalos());
        dto.setDataFabricacao(entity.getDataFabricacao());
        dto.setPrecoSugerido(entity.getPrecoSugerido());

        return dto;
    }

    public static List<Carro> toEntity(List<CarrosRequestDto> entity) {
        return entity.stream().map(CarroMapper::toEntity).toList();
    }


    public CarroMapper() {
    }

    public CarroMapper(Integer id, String modelo, String montadora, String dataFabricacao, Integer cavalos, Double precoSugerido, Boolean automatico) {
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
