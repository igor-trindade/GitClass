import java.util.Arrays;

public class ordenacao {
    public static void main(String[] args) {

        Integer[] vetor = {9, 7, 3, 6, 2, 4, 5, 1, 8};

        Integer contagem = 0;

        for (int i = 0; i <= vetor.length -1; i++) {

            Integer aux = i;

            for (int j = i; j < vetor.length; j++) {

                if (vetor[j] < vetor[i]) {
                    aux = vetor[i];
                    vetor[i] = vetor[j];
                    vetor[j] = aux;
                    contagem++;
                }

            }



        }
        System.out.println(contagem);
        System.out.println(Arrays.toString(vetor));

    }











}
