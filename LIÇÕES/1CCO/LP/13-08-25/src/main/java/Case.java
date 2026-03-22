import java.util.Scanner;

public class Case {
    public static void main(String[] args) {





        Scanner leitor = new Scanner(System.in);
        System.out.println("Escolha uma das opções abaixo:");
        System.out.println("1 - Cadastrar");
        System.out.println("2 - Alterar dados");
        System.out.println("3 - Sair");

        Integer resposta = leitor.nextInt();

        Boolean fim = false;

        while (!fim) {
            switch (resposta) {
                case 1:
                    System.out.println("Cadastrado");
                    break;
                case 2:
                    System.out.println("Dados Alterados");
                    break;
                case 3:
                    System.out.println("Sair");
                    fim = true;
                    break;

                default:
                    System.out.println("Número invalido");
            }
        }


    }
}
