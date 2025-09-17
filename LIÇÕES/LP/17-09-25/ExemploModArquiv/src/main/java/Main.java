import java.io.OutputStreamWriter;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

public class Main {

    public static void main(String[] args) {
        List<Cachorro> lista = new CopyOnWriteArrayList<>();
        lista.add(new Cachorro(1,"Zeus","Grande",55.0));
        lista.add(new Cachorro(2,"Cacau","Grande",58.0));
        lista.add(new Cachorro(3,"Minnie","Pequeno",7.0));
        lista.add(new Cachorro(4,"Maya","Grande",62.0));
        lista.add(new Cachorro(5,"Flopy","Médio",16.0));
        lista.add(new Cachorro(6,"Ralph","Médio",16.0));
        lista.add(new Cachorro(7,"Perola","Pequenp",1.3));
        lista.add(new Cachorro(8,"Akira","Médio",7.3));
        gravaArquivosCsv(lista,"dogs");
    }


    public static void gravaArquivoCsv(list<Cachorro> lista, String nomeArq){
        OutputStreamWriter saida = null;
    }

}
