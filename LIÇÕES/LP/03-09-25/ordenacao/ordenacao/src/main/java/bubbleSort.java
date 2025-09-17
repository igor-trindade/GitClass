import java.util.Arrays;

public class bubbleSort {
    public static void main(String[] args) {

        Integer[] vetor = {9, 7, 3, 6, 2, 4, 5, 1, 8};

        Integer contagem = 0;

        for (int i = 0; i <= vetor.length-1; i++) {

            Integer aux = i;

            for (int j = 1; j < vetor.length - i; j++) {

                if (vetor[j-1] > vetor[j]) {
                   aux = j;
                   vetor[j]= vetor[j-1];
                   vetor[j-1] = aux;
                   contagem++;
                }

            }



        }
        System.out.println(contagem);
        System.out.println(Arrays.toString(vetor));

    }











}
