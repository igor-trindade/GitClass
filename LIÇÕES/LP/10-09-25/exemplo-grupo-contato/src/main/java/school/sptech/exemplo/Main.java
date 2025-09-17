package school.sptech.exemplo;

public class Main {

    public static void main(String[] args) {
        Contato c1 = new Contato
                ("Beatriz", "111111111");
        Contato c2 = new Contato
                ("Manoel", "222222222");

        Grupo grupo1 = new Grupo("SPTECH");

        System.out.println(c1.getDiagrama());
        System.out.println(grupo1.getDiagrama());
        grupo1.adiciona(c1);
        grupo1.adiciona(c2);

        System.out.println(grupo1.getContatos());

        System.out.println("Quantidade de membros:");
        System.out.println(grupo1.getQuantidadeContatos());

        // Bloqueando contato c2
        c2.bloquear();
        // Listando os membros do grupo, após bloquear o contato c2
        System.out.println(grupo1.getContatos());



    }
}