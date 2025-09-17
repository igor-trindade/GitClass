
public class Termometro {

    Double temperaturaAtual = 0.0;
    Double temperaturaMaxRegistrada = 0.0;
    Double temperaturaMinRegistrada = 0.0;

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


}




