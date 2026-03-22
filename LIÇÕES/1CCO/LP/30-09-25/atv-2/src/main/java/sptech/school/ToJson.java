package sptech.school;
import java.io.FileOutputStream;
import java.io.OutputStreamWriter;
import java.nio.charset.StandardCharsets;
import java.io.IOException;
import java.util.List;
import com.fasterxml.jackson.databind.ObjectMapper;

public class ToJson {
    public static void gravaArquivoJson(List<Livro> lista, String nomeArq) {
        nomeArq += ".json";

        try (OutputStreamWriter saida = new OutputStreamWriter(new FileOutputStream(nomeArq), StandardCharsets.UTF_8)) {
            ObjectMapper mapper = new ObjectMapper();
            String json = mapper.writerWithDefaultPrettyPrinter().writeValueAsString(lista);
            saida.write(json);
            System.out.println("Arquivo JSON criado com sucesso: " + nomeArq);
        } catch (IOException erro) {
            System.out.println("Erro ao criar/gravar JSON: " + erro.getMessage());
        }
    }
}
