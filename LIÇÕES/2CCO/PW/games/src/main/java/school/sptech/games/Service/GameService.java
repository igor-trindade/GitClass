package school.sptech.games.service;

import org.springframework.stereotype.Service;
import school.sptech.games.exception.EntityConflictException;
import school.sptech.games.exception.EntityNotFounded;
import school.sptech.games.entity.Game;
import school.sptech.games.repository.GameRepository;

import java.util.List;
import java.util.Optional;

@Service
public class GameService {

    private final GameRepository repository;

    public GameService(GameRepository repository) {
        this.repository = repository;
    }

    public List<Game> listar() {
        return repository.findAll();
    }

    public Game buscarPorId(Long id) {
        Optional<Game> gameOptional = repository.findById(id);

        if (gameOptional.isEmpty()) {
            throw new EntityNotFounded("Entity not found (404)");
        }

        return gameOptional.get();
    }

    public Game cadastrar(Game newGame) {

        if (repository.existsByNomeAndEmpresa(
                newGame.getNome(),
                newGame.getEmpresa()   // ✅ corrigido (antes estava duplicado)
        )) {
            throw new EntityConflictException("Entity already exists (409)");
        }

        return repository.save(newGame);
    }

    public Game atualizar(Game newGame, Long id) {

        if (!repository.existsById(id)) {
            throw new EntityNotFounded("Entity not found (404)");
        }

        if (repository.existsByNomeAndEmpresaAndIdNot(
                newGame.getNome(),
                newGame.getEmpresa(),
                id
        )) {
            throw new EntityConflictException("Entity already exists (409)");
        }

        // ✅ importante: garantir que o ID correto será atualizado
        newGame.setId(id);

        return repository.save(newGame);
    }

    public void removerById(Long id) {

        if (!repository.existsById(id)) {
            throw new EntityNotFounded("Entity not found (404)");
        }

        repository.deleteById(id);
    }
}