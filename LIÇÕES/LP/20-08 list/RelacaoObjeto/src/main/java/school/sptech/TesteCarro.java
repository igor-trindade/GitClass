package school.sptech;

public class TesteCarro {

    public static void main(String[] args) {
        Carro fusca = new Carro();

        fusca.anoFabricacao = 1976;
        fusca.modelo = "Fusca";
        fusca.cor = "Preto";
        fusca.velocidade = 0.0;

        fusca.acelerar();
        fusca.acelerar();
        fusca.acelerar();

        System.out.println("Velocidade Atual:" + fusca.velocidade);


        fusca.frear();
        System.out.println("Velocidade Atual:" + fusca.velocidade);

        fusca.colidir();
        System.out.println("Velocidade Atual:" + fusca.velocidade);

        System.out.println(fusca);


        Carro mustang = new Carro();
        mustang.modelo = "GT 69";
        mustang.velocidade = 0.0;
        mustang.anoFabricacao = 1969;

        mustang.acelerar();
        mustang.acelerar();
        mustang.acelerar();
        mustang.acelerar();
        mustang.acelerar();

        System.out.println("Velocidade Atual:" + fusca.velocidade);


        mustang.frear();
        System.out.println("Velocidade Atual:" + fusca.velocidade);

        System.out.println(mustang);

        fusca = mustang;

        System.out.println(fusca);








    }
}
