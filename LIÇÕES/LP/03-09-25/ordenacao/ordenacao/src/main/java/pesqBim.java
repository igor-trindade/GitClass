import javax.print.attribute.standard.Finishings;
import javax.swing.*;
import java.util.Arrays;

public class pesqBim {
    public static void main(String[] args) {
        Integer[] lista = {10, 20, 30, 40, 50, 60, 70, 80, 90};

        System.out.println(pesquisa(50,lista));

    }

    public static Integer pesquisa(Integer valor, Integer[] vetor) {


        Integer inicio = 0;
        Integer fim = vetor.length - 1;
        Integer meio = inicio + fim / 2;
        Integer contador = 0;

        while (inicio >= fim) {

            if (vetor[meio] == valor) {
                return meio;
            } else if (valor > meio) {
                inicio = meio + 1;
                contador++;
            } else if (valor < meio) {
                fim = meio - 1;
                contador++;
            }else{
               meio = -1;
            }


        }
        System.out.println(contador);
        return meio;
    }


}












