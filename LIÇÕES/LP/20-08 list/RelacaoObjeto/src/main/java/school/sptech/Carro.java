package school.sptech;

public class Carro {

    //Atributos - variaveis que sao criadas dentro da classe
    // mas fora do escopo dos metodos
    //são usadas para representar as caracteristicas do objeto
    // que são relevantes ao projeto

    String modelo;
    Double velocidade;
    String cor;
    Integer anoFabricacao;

    // metodos representam o comportamento do objeto
    // Metodo acelerar

    public void acelerar() {
        System.out.println("Daaaraaannnnnnndamdamdamdam");
        velocidade += 20;
    }

    public void frear() {
        System.out.println("Breeecaaa");
        velocidade -= 20;
    }


    public void colidir() {
        System.out.println("CRAAAASHHHH......");
        velocidade = 0.0;
    }

    //sobrescrever outro metodo toString()

    @Override
    public String toString() {
        return "Carro{" +
                "modelo='" + modelo + '\'' +
                ", velocidade=" + velocidade +
                ", cor='" + cor + '\'' +
                ", anoFabricacao=" + anoFabricacao +
                '}';
    }
}
