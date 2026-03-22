package school.sptech.games.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import school.sptech.games.entity.Game;

public interface GameRepository extends JpaRepository<Game, Long> {

    ///  verifica game por nome e por empresa
    boolean existsByNomeAndEmpresa(String nome, String empresa);
    // verifica nome empresa e não por id - valida duplicidade em atualização.
    // put só é duplicidade se o nome e email existir no banco com ID diferente
    // se existir nome, email e id é o proprio objeto para atualizar.
    boolean existsByNomeAndEmpresaAndIdNot(String nome, String empresa, Long id);
}
