package school.sptech.demo.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import school.sptech.demo.Model.Carro;

public interface CarroRepository extends JpaRepository<Carro, Integer> {

}
