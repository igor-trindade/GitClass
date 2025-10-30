package sptech.school;
import java.io.FileOutputStream;
import java.io.OutputStreamWriter;
import java.nio.charset.StandardCharsets;
import java.io.IOException;
import java.util.List;

public class ToCsv {
    public static void gravaArquivoCsv(List<Livro> lista, String nomeArq) {
        nomeArq += ".csv";

        try (OutputStreamWriter saida = new OutputStreamWriter(new FileOutputStream(nomeArq), StandardCharsets.UTF_8)) {
            // Cabeçalho
            saida.write("\"id\",\"nome\",\"autor\",\"data_publicacao\",\"editora\",\"preco\",\"preco_desconto\",\"nota\"\n");

            // Cada livro vira uma linha
            for (Livro livro : lista) {
                saida.write(livro.toCsv() + "\n");
            }

            System.out.println("Arquivo CSV criado com sucesso: " + nomeArq);
        } catch (IOException erro) {
            System.out.println("Erro ao criar/gravar CSV: " + erro.getMessage());
        }
    }
}
