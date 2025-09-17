import java.util.Scanner;

public class executando {
    public static void main(String[] args) {

        Scanner leitor = new Scanner(System.in);
        Scanner leitorStr = new Scanner(System.in);

        System.out.println("Digite o sua idade");
        Integer idade = leitor.nextInt();

        System.out.println("Digite o seu nome");
        String nome = leitorStr.nextLine();

        System.out.println("Digite o sua altura");
        Double altura = leitor.nextDouble();


        System.out.println("Digite 3 numeros separados por espaço");
        Integer num1 = leitor.nextInt();
        Integer num2 = leitor.nextInt();
        Integer num3 = leitor.nextInt();


        System.out.println("Numero 1: " + num1);
        System.out.println("Numero 2: " + num2);
        System.out.println("Numero 3: " + num3);

    }
}
