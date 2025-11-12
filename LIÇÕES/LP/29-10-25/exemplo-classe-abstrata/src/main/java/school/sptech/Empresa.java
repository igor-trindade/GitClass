package school.sptech;

import java.util.ArrayList;
import java.util.List;

public class Empresa {
List<Funcionario> funcionarios = new ArrayList<>();

public Empresa(){
    }

public void adicionaFunc(Funcionario f){
        funcionarios.add(f);
    }
public void exibeTodos(){
    System.out.println("Todos funcionarios:");
        System.out.println(funcionarios.toString());
    }
public void exibeTotalSalario(){
        Double total = 0.0;
    for(Funcionario n : funcionarios){
        total += n.calcSalario();
    }
    System.out.println("Total todos Salarios:");
        System.out.println(total);
}
public void exibeHoristas(){
        for(Funcionario f : funcionarios){
            if(f.getClass() == Horista.class){
                System.out.println("Todos Horistas:");
                System.out.println(f.toString());
            }
        }
}


}
