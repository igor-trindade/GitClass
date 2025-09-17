import java.util.List;

public class Ordenacao {

    // SelectionSort otimizado (ordena por valorAplicado)
    public static void selectionSortPorValor(List<Investimento> lista) {
        int n = lista.size();
        for (int i = 0; i < n - 1; i++) {
            int auxiliar = i;

            for (int j = i + 1; j < n; j++) {
                if (lista.get(j).getValorAplicado() < lista.get(auxiliar).getValorAplicado()) {
                    auxiliar = j;
                }
            }
            if (auxiliar != i) {
                Investimento aux = lista.get(i);
                lista.set(i, lista.get(auxiliar));
                lista.set(auxiliar, aux);
            }
        }
    }

    // BubbleSort (ordena por prazoMeses)
    public static void bubbleSortPorPrazo(List<Investimento> lista) {
        int n = lista.size();

        for (int i = 0; i < n - 1; i++) {
            for (int j = 0; j < n - i - 1; j++) {
                if (lista.get(j).getPrazoMeses() > lista.get(j + 1).getPrazoMeses()) {
                    // troca
                    Investimento temp = lista.get(j);
                    lista.set(j, lista.get(j + 1));
                    lista.set(j + 1, temp);
                }
            }

        }
    }

    // Pesquisa Binária (sobre valorAplicado) – precisa da lista já ordenada por valorAplicado
    public static Investimento buscaBinariaPorValor(List<Investimento> lista, double valor) {
        int inicio = 0;
        int fim = lista.size() - 1;

        while (inicio <= fim) {
            int meio = (inicio + fim) / 2;
            double valorMeio = lista.get(meio).getValorAplicado();

            if (valorMeio == valor) {
                return lista.get(meio); // achou
            } else if (valorMeio < valor) {
                inicio = meio + 1;
            } else {
                fim = meio - 1;
            }
        }
        return null;
    }
}


