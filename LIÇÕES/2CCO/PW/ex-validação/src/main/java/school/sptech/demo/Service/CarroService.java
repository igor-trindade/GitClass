package school.sptech.demo.Service;

import org.springframework.stereotype.Service;
import school.sptech.demo.Exception.EntidadeNaoEncontrada;
import school.sptech.demo.Model.Carro;
import school.sptech.demo.Repository.CarroRepository;

import java.util.List;
import java.util.Optional;

@Service
public class CarroService {
private final CarroRepository repository;

    public CarroService(CarroRepository repository) {
        this.repository = repository;
    }

    public List<Carro> listar(){
        return repository.findAll();
    }

    public Carro cadastrar(Carro entity){
        Carro carro = repository.save(entity);
        return carro;
    }

    public Carro buscarPorId(Integer id){
        Optional<Carro> byId = repository.findById(id);
        if(byId.isEmpty()){
            throw new EntidadeNaoEncontrada("Carro não encontrado");
        }
        return byId.get();
    }

}
