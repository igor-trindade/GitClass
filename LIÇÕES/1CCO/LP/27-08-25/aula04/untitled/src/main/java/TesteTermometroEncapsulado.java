public class TesteTermometroEncapsulado {
    public static void main(String[] args) {
        TermometroEncapsulado termo1 = new TermometroEncapsulado();


        System.out.println("1° print");
        System.out.println(termo1.getTemperaturaAtual());
        System.out.println(termo1.getTemperaturaMaxRegistrada());
        System.out.println(termo1.getTemperaturaMinRegistrada());


        System.out.println("aumenta 2x");
        termo1.setTemperaturaAtual(13.0);
        termo1.aumentarTemperatura(13.0);

        System.out.println("Diminui 2x");
        termo1.diminuirTemperatura(10.0);
        termo1.diminuirTemperatura(10.0);

        System.out.println("Mostra tudo");
        System.out.println(termo1.getTemperaturaAtual());
        System.out.println(termo1.getTemperaturaMaxRegistrada());
        System.out.println(termo1.getTemperaturaMinRegistrada());

        System.out.println("C° para F°");
        System.out.println(termo1.converterParaFahrenheit(termo1.getTemperaturaAtual()));



        System.out.println("1° print");
        System.out.println(termo1.getTemperaturaAtual());
        System.out.println(termo1.getTemperaturaMaxRegistrada());
        System.out.println(termo1.getTemperaturaMinRegistrada());


        System.out.println("aumenta 2x");
        termo1.aumentarTemperatura(23.0);
        termo1.aumentarTemperatura(23.0);

        System.out.println("Diminui 2x");
        termo1.diminuirTemperatura(5.0);
        termo1.diminuirTemperatura(12.0);

        System.out.println("Mostra tudo");
        System.out.println(termo1.getTemperaturaAtual());
        System.out.println(termo1.getTemperaturaMaxRegistrada());
        System.out.println(termo1.getTemperaturaMinRegistrada());
        System.out.println("C° para F°");
        System.out.println(termo1.converterParaFahrenheit(termo1.getTemperaturaAtual()));

    }


}
