import javax.swing.*;

public class DivisaoFinally {
    public static void main(String[] args) {
        String sNum1, sNum2;


        sNum1 = JOptionPane.showInputDialog("Digite um numero");
        sNum2 = JOptionPane.showInputDialog("Digite um numero");
        try {
            Integer num1 = Integer.valueOf(sNum1);
            Integer num2 = Integer.valueOf(sNum2);

            JOptionPane.showMessageDialog(null, num1 / num2);
        } catch (ArithmeticException e) {
            JOptionPane.showMessageDialog(null, "Divisão por Zero\n " + e,
                    "Erro", JOptionPane.ERROR_MESSAGE);
        } catch (NumberFormatException e) {
            JOptionPane.showMessageDialog(null, "Digite aoenas numeros\n " + e,
                    "Erro", JOptionPane.ERROR_MESSAGE);
        }finally {
            JOptionPane.showMessageDialog(null,"Fim do Programa");
        }

        System.exit(0);

    }
}
