package school.sptech.games.controller;

import jakarta.validation.Valid;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import school.sptech.games.service.GameService;
import school.sptech.games.dto.GameRequestDto;
import school.sptech.games.dto.GameResponseDto;
import school.sptech.games.entity.Game;
import school.sptech.games.mapper.GameMapper;

import java.util.List;

@RestController
@RequestMapping("/games")
public class GameController {

    private final GameService service;

    public GameController(GameService service) {
        this.service = service;
    }

    @GetMapping
    public ResponseEntity<List<GameResponseDto>> listar() {
        List<Game> games = service.listar();

        if (games.isEmpty()) {
            return ResponseEntity.noContent().build();
        }

        List<GameResponseDto> response = GameMapper.toResponseDto(games);
        return ResponseEntity.ok(response);
    }

    @GetMapping("/{id}")
    public ResponseEntity<GameResponseDto> buscarPorId(@PathVariable Long id) {
        Game game = service.buscarPorId(id);

        if (game == null) {
            return ResponseEntity.notFound().build();
        }

        return ResponseEntity.ok(GameMapper.toResponseDto(game));
    }

    @PostMapping
    public ResponseEntity<GameResponseDto> criar(
            @RequestBody @Valid GameRequestDto dto
    ) {
        Game game = GameMapper.toEntity(dto);
        Game salvo = service.cadastrar(game);

        return ResponseEntity.status(201)
                .body(GameMapper.toResponseDto(salvo));
    }

    @PutMapping("/{id}")
    public ResponseEntity<GameResponseDto> atualizar(
            @PathVariable Long id,
            @RequestBody @Valid GameRequestDto dto
    ) {
        Game existente = service.buscarPorId(id);

        if (existente == null) {
            return ResponseEntity.notFound().build();
        }

        Game game = GameMapper.toEntity(dto);
        Game atualizado = service.atualizar(game, id);

        return ResponseEntity.ok(GameMapper.toResponseDto(atualizado));
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deletar(@PathVariable Long id) {
        Game existente = service.buscarPorId(id);

        if (existente == null) {
            return ResponseEntity.notFound().build();
        }

        service.removerById(id);
        return ResponseEntity.noContent().build();
    }
}