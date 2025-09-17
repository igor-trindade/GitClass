import java.util.Arrays;

public class ordenacaoOtimizado {
    public static void main(String[] args) {

        Integer[] vetor = {9, 7, 3, 6, 2, 4, 5, 1, 8};

        Integer contagem = 0;

         for (int i = 0; i <= vetor.length - 1; i++) {

            Integer indMenor = i;
            for (int j = i+1; j < vetor.length; j++) {
                int a = i;
                int b = j;

                if (vetor[j] < vetor[indMenor]) {
                    indMenor = j;
                }

            }
            if(i != indMenor){
                int aux = vetor[i];
                vetor[i] = vetor[indMenor];
                vetor[indMenor] = aux;
                contagem ++;
            }
        }
        System.out.println(contagem);
        System.out.println(Arrays.toString(vetor));

    }


}
