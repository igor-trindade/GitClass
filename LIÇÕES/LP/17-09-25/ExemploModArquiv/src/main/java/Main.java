import java.io.*;
import java.nio.charset.StandardCharsets;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Scanner;
import java.util.concurrent.CopyOnWriteArrayList;

public class Main {

    public static void main(String[] args) {
        List<Cachorro> lista = new CopyOnWriteArrayList<>();
        lista.add(new Cachorro(1, "Zeus", "Grande", 55.0));
        lista.add(new Cachorro(2, "Cacau", "Grande", 58.0));
        lista.add(new Cachorro(3, "Minnie", "Pequeno", 7.0));
        lista.add(new Cachorro(4, "Maya", "Grande", 62.0));
        lista.add(new Cachorro(5, "Flopy", "Médio", 16.0));
        lista.add(new Cachorro(6, "Ralph", "Médio", 16.0));
        lista.add(new Cachorro(7, "Perola", "Pequeno", 1.3));
        lista.add(new Cachorro(8, "Akira", "Médio", 7.3));

        gravaArquivoCsv(lista, "dogs");
        leExibeArquivoCsv("dogs");
    }

    public static void gravaArquivoCsv(List<Cachorro> lista, String nomeArq) {
        OutputStreamWriter saida = null;
        boolean deuRuim = false; // Flag para controle de erro
        nomeArq += ".csv";

        try {
            saida = new OutputStreamWriter(new FileOutputStream(nomeArq), StandardCharsets.UTF_8);

            saida.append("ID;NOME;PORTE;PESO\n");

            for (Cachorro dog : lista) {
                saida.write(String.format("%d;%s;%s;%.1f\n", dog.getId(), dog.getNome(), dog.getPorte(), dog.getPeso()));
            }

            System.out.println("Arquivo gravado com sucesso!");
        } catch (IOException e) {
            System.out.println("Erro ao gravar o arquivo: ");
            e.printStackTrace();
            deuRuim = true;
        } finally {
            if (saida != null && !deuRuim) {
                try {
                    saida.close();
                } catch (IOException e) {
                    System.out.println("Erro ao fechar o arquivo");
                    e.printStackTrace();
                }
            }
        }
    }

    public static void leExibeArquivoCsv(String nomeArq) {
        FileReader arq = null;
        Scanner entrada = null;
        Boolean deuRuim = false;
        nomeArq += ".csv";
        try {
            arq = new FileReader(nomeArq);
            entrada = new Scanner(arq).useDelimiter(";|\\n");
        } catch (FileNotFoundException e) {
            System.out.println("Arquivo nao encontrado");
            System.exit(1);
        }

        try {
            Boolean cabecalho = true;
            while (entrada.hasNext()) {
                if (cabecalho) {
                    entrada.nextLine();  // Skip header
                    cabecalho = false;
                } else {
                    Integer id = entrada.nextInt();
                    String nome = entrada.next();
                    String porte = entrada.next();
                    Double peso = entrada.nextDouble();
                    System.out.printf("%4d %-19s %-9s %4.1f\n", id, nome, porte, peso);
                }
            }
        } catch (NoSuchElementException e) {
            System.out.println("Erro ao ler o arquivo!");
            e.printStackTrace();
        } finally {
            if (entrada != null) {
                entrada.close();
            }
            if (arq != null) {
                try {
                    arq.close();
                } catch (IOException e) {
                    System.out.println("Erro ao fechar o arquivo.");
                    e.printStackTrace();
                }
            }
        }
    }
}
