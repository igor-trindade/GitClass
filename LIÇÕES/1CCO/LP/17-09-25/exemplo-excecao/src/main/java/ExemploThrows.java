import java.util.InputMismatchException;
import java.util.Scanner;

public class ExemploThrows {

    public static Integer divide(Integer a, Integer b) throws ArithmeticException {
        return a / b;

    }

    public static void main(String[] args) {
        Scanner leitor = new Scanner(System.in);

        try {
            System.out.println("Digite o primeiro numero");
            Integer num1 = leitor.nextInt();

            System.out.println("Digite o segundo numero");
            Integer num2 = leitor.nextInt();
            System.out.println(num1 + "/" + num2 + "=" + divide(num1, num2));

        } catch (ArithmeticException e) {
            System.out.println("Divisão por zero");
            e.printStackTrace();

        } catch (InputMismatchException e) {
            System.out.println("Digite apenas numeros");
            e.printStackTrace();
        }
    }
}
