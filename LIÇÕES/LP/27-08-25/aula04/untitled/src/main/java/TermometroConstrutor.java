
public class TermometroConstrutor {

    private Double temperaturaAtual;
    private Double temperaturaMaxRegistrada;
    private Double temperaturaMinRegistrada;

    public void aumentarTemperatura(Double valor) {

        if (valor <= 0.0 || valor == null) {
            System.out.println("Parâmetro inválido");
        } else {
            temperaturaAtual += valor;
        }

        if (temperaturaAtual > temperaturaMaxRegistrada) {
            temperaturaMaxRegistrada = temperaturaAtual;
        }
    }

    public void diminuirTemperatura(Double valor){
        temperaturaAtual -= valor;
        if (temperaturaAtual < temperaturaMinRegistrada){
            temperaturaMinRegistrada = temperaturaAtual;
        }

    }

    public Double converterParaFahrenheit(Double valor){
        return (valor*1.8)+32;
    }

    public String  toString(String txt){
        Double tempAtual = temperaturaAtual;
        Double tempMax = temperaturaMaxRegistrada;
        Double tempMin = temperaturaMinRegistrada;

        String msg = String.format("Temp atual: %.2f \n" +
                "Temp Max:%.2f\n" +
                "Temp Min: %.2f");

        return msg;
    }


    //construtor
    // construtor vazio - este que o java cria no back
    public TermometroConstrutor(){

    }
    // construtor cheio caso queira fazer algo na criação do objeto

    public TermometroConstrutor(Double temperaturaAtual, Double temperaturaMinRegistrada, Double temperaturaMaxRegistrada) {
        this.temperaturaAtual = temperaturaAtual;
        this.temperaturaMinRegistrada = temperaturaMinRegistrada;
        this.temperaturaMaxRegistrada = temperaturaMaxRegistrada;



    }

    //get set


    public Double getTemperaturaAtual() {
        return temperaturaAtual;
    }

    public void setTemperaturaAtual(Double temperaturaAtual) {
        this.temperaturaAtual = temperaturaAtual;
    }

    public Double getTemperaturaMaxRegistrada() {
        return temperaturaMaxRegistrada;
    }

    public void setTemperaturaMaxRegistrada(Double temperaturaMaxRegistrada) {
        this.temperaturaMaxRegistrada = temperaturaMaxRegistrada;
    }

    public Double getTemperaturaMinRegistrada() {
        return temperaturaMinRegistrada;
    }

    public void setTemperaturaMinRegistrada(Double temperaturaMinRegistrada) {
        this.temperaturaMinRegistrada = temperaturaMinRegistrada;
    }
}



