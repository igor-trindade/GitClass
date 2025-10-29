package school.sptech;

public class main {
    public static void main(String[] args) {

        // Criando a empresa
        Empresa empresa = new Empresa();

        // Criando alguns funcionários
        Engenheiro eng = new Engenheiro("111.111.111-11", "Alice", 8000.0);
        Vendedor vend = new Vendedor("222.222.222-22", "Bruno", 0.1, 50000.0);
        Horista hor = new Horista("333.333.333-33", "Carla", 160, 50.0);

        // Adicionando funcionários à empresa
        empresa.adicionaFunc(eng);
        empresa.adicionaFunc(vend);
        empresa.adicionaFunc(hor);

        // Exibindo todos os funcionários

        empresa.exibeTodos();

        // Exibindo o total de salários

        empresa.exibeTotalSalario();

        // Exibindo apenas os horistas
        empresa.exibeHoristas();
    }
}
