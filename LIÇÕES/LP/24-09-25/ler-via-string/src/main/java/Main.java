import java.io.*;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Scanner;

public class Main {

    public static void main(String[] args) {
        // Cria uma lista de cachorro
        List<Cachorro> lista = new ArrayList<>();

        // Preenche a lista com objetos cachorro
        lista.add(new Cachorro(1, "Zeus Berinjela", "Grande", 55.0));
        lista.add(new Cachorro(2, "Cacau", "Grande", 58.0));
        lista.add(new Cachorro(3, "Minnie", "Pequeno", 7.0));
        lista.add(new Cachorro(4, "Maya", "Grande", 62.0));
        lista.add(new Cachorro(5, "Flopy", "Médio", 16.0));
        lista.add(new Cachorro(6, "Ralph", "Médio", 14.0));
        lista.add(new Cachorro(7, "Pérola", "Pequeno", 1.3));
        lista.add(new Cachorro(8, "Akira", "Pequeno", 7.5));

        // Exibe a lista de cachorros
        System.out.println("Lista de cachorros:");
        for (Cachorro c : lista) {
            System.out.println(c);
        }

        // Grava a lista de cachorros num arquivo chamado dogs.csv
        System.out.println("\nGravando arquivo dogs.csv...");
        gravaArquivoCsv(lista, "dogs");
        System.out.println("Arquivo gravado com sucesso!");

        // Le o arquivo dogs.csv e exibe seus dados em forma de relatorio na console
        System.out.println("Lendo e exibindo o arquivo dogs.csv...");
        System.out.println("--------------------------------------------------");
        leExibeArquivoCsv("dogs");

        // le e importa de forma diferente
        leImportaArquivoCsv("dogs");
    }

    // Grava o arquivo CSV
    public static void gravaArquivoCsv(List<Cachorro> lista, String nomeArq) {
        OutputStreamWriter saida = null; // objeto saida sera usado para escrever no arquivo
        Boolean deuRuim = false;
        nomeArq += ".csv";              // acrescenta a extensao .csv ao nome do arquivo

        // Bloco try-catch para abrir o arquivo
        try {
            saida = new OutputStreamWriter(new FileOutputStream(nomeArq),
                    StandardCharsets.UTF_8);
        } catch (IOException erro) {
            System.out.println("Erro ao abrir o arquivo");
            System.exit(1);     // finaliza o programa
        }

        // Bloco try-catch para gravar e fechar o arquivo
        try {
            // Para gravar no arquivo, basta usar saida.write ou saida.append
            // Grava o cabecalho do arquivo
            saida.append("ID;NOME;PORTE;PESO\n");
            // Percorre a lista de dogs
            // e grava os atributos de cada dog em uma linha do arquivo
            // ATENCAO: NAO acrescentar espacos nos formatos dos campos numericos
            // por exemplo: NAO fazer %5d; ou %d ;
            for (Cachorro dog : lista) {
                saida.write(String.format("%d;%s;%s;%.1f\n", dog.getId(),
                        dog.getNome(), dog.getPorte(), dog.getPeso()));
            }

        } catch (IOException erro) {
            System.out.println("Erro ao gravar no arquivo");
            erro.printStackTrace();
            deuRuim = true;
        } finally {
            // Fecha o arquivo
            try {
                saida.close();
            } catch (IOException erro) {
                System.out.println("Erro ao fechar o arquivo");
                deuRuim = true;
            }
            if (deuRuim) {
                System.exit(1);
            }
        }
    }

    // Le o arquivo CSV e exibe seu conteudo no formato de relatorio na console
    public static void leExibeArquivoCsv(String nomeArq) {
        FileReader arq = null;      // arq corresponde ao arquivo
        Scanner entrada = null;     // entrada eh o objeto usado para ler do arquivo
        Boolean deuRuim = false;
        nomeArq += ".csv";

        // Bloco try-catch para abrir o arquivo
        try {
            arq = new FileReader(nomeArq);  // Abre o arquivo para leitura
            // Instancia a classe Scanner e especifica que deve usar delimitador ; ou \n
            entrada = new Scanner(arq).useDelimiter(";|\\n");
        } catch (FileNotFoundException erro) {
            System.out.println("Arquivo inexistente!");
            System.exit(1);
        }

        // Bloco try-catch para ler e fechar o arquivo
        try {
            Boolean cabecalho = true;
            // Enquanto nao chegou ao final do arquivo
            while (entrada.hasNext()) {
                if (cabecalho) {  // se for o cabecalho, le os titulos
                    String titulo1 = entrada.next();
                    String titulo2 = entrada.next();
                    String titulo3 = entrada.next();
                    String titulo4 = entrada.next();
                    // Printa os titulos em colunas na console
                    System.out.printf("%4s %-12s %-9s %4s\n", titulo1,
                            titulo2, titulo3, titulo4);
                    cabecalho = false;  // seta que a partir dai nao eh mais cabecalho
                } else {
                    Integer id = entrada.nextInt();
                    String nome = entrada.next();   // NAO USAR nextLine(), pois ai leria ate o final da linha
                    String porte = entrada.next();
                    Double peso = entrada.nextDouble();
                    // Printa os valores dos atributos em colunas na console
                    // Tamanho das colunas aqui deve ser igual ao tamanho das colunas dos titulos
                    System.out.printf("%04d %-12.12s %-9S %4.1f\n",
                            id, nome, porte, peso);
                }
            }
        } catch (NoSuchElementException erro) {
            System.out.println("Arquivo com problemas!");
            erro.printStackTrace();
            deuRuim = true;
        } catch (IllegalStateException erro) {
            System.out.println("Erro na leitura do arquivo!");
            erro.printStackTrace();
            deuRuim = true;
        } finally {
            try {
                entrada.close();
                arq.close();
            } catch (IOException erro) {
                System.out.println("Erro ao fechar o arquivo");
                deuRuim = true;
            }
            if (deuRuim) {
                System.exit(1);
            }
        }


    }


    public static void leImportaArquivoCsv(String nomeArq) {
        Reader arq = null;
        BufferedReader entrada1 = null;
        nomeArq += ".csv";
        List<Cachorro> ListaLida = new ArrayList<>();
        try {
            arq = new InputStreamReader(new FileInputStream(nomeArq), "UTF-8");
            entrada1 = new BufferedReader(arq);
        } catch (IOException e) {
            System.out.println("Erro na abertura do arquivo");
            System.exit(1);
        }
        try {
            String[] registro;
            String linha = entrada1.readLine();
            registro = linha.split(";");
            System.out.printf("%s %-19s %-9s & %4s\n", registro[0], registro[1], registro[2], registro[3]);

            //lê a segunda linha do arquivo
            linha = entrada1.readLine();

            while (linha != null) {
                registro = linha.split(";");
                // se fosse int seria Integer.parseInt
                Integer id = Integer.valueOf(registro[0]);
                String nome = registro[1];
                String porte = registro[2];
                Double peso = Double.valueOf(registro[3].replace(',', '.'));
                Cachorro dog = new Cachorro(id, nome, porte, peso);
                ListaLida.add(dog);
                System.out.printf("%04d %-12.12s %-9S %4.1f\n",
                        id, nome, porte, peso);
                linha = entrada1.readLine();
            }
        } catch (IOException e) {
            System.out.println("Erro ao ler o arquivo");
            e.printStackTrace();
        } finally {

            try {
                entrada1.close();
                arq.close();
            } catch (IOException e) {
                System.out.println("Erro ao fechar o arquivo");
                e.printStackTrace();
            }
        }
        System.out.println("\n Lista lida do arquivo");
        for (Cachorro dog : ListaLida) {
            System.out.println(dog);
        }
    }

}
