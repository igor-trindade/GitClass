import javax.swing.*;

public class TesteTermometro {
    public static void main(String[] args) {
        Termometro termo1 = new Termometro();


        System.out.println("1° print");
        System.out.println(termo1.temperaturaAtual);
        System.out.println(termo1.temperaturaMaxRegistrada);
        System.out.println(termo1.temperaturaMinRegistrada);


        System.out.println("aumenta 2x");
        termo1.aumentarTemperatura(13.0);
        termo1.aumentarTemperatura(13.0);

        System.out.println("Diminui 2x");
        termo1.diminuirTemperatura(10.0);
        termo1.diminuirTemperatura(10.0);

        System.out.println("Mostra tudo");
        System.out.println(termo1.temperaturaAtual);
        System.out.println(termo1.temperaturaMaxRegistrada);
        System.out.println(termo1.temperaturaMinRegistrada);

        System.out.println("C° para F°");
        System.out.println(termo1.converterParaFahrenheit(termo1.temperaturaAtual));



        System.out.println("1° print");
        System.out.println(termo1.temperaturaAtual);
        System.out.println(termo1.temperaturaMaxRegistrada);
        System.out.println(termo1.temperaturaMinRegistrada);


        System.out.println("aumenta 2x");
        termo1.aumentarTemperatura(23.0);
        termo1.aumentarTemperatura(23.0);

        System.out.println("Diminui 2x");
        termo1.diminuirTemperatura(5.0);
        termo1.diminuirTemperatura(12.0);

        System.out.println("Mostra tudo");
        System.out.println(termo1.temperaturaAtual);
        System.out.println(termo1.temperaturaMaxRegistrada);
        System.out.println(termo1.temperaturaMinRegistrada);

        System.out.println("C° para F°");
        System.out.println(termo1.converterParaFahrenheit(termo1.temperaturaAtual));










    }
}
