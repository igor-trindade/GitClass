package school.sptech.demo.Controller;

import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import school.sptech.demo.DTO.CarroMapper;
import school.sptech.demo.DTO.CarroResponseDto;
import school.sptech.demo.DTO.CarrosRequestDto;
import school.sptech.demo.Model.Carro;
import school.sptech.demo.Repository.CarroRepository;
import school.sptech.demo.Service.CarroService;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/carros")
public class CarroController {

    private CarroService service;

    public CarroController(CarroService service) {
        this.service = service;
    }

    @GetMapping
    public ResponseEntity<List<CarroResponseDto>> listCarros() {
        List<Carro> todosCarros = service.listar();

        if (todosCarros.isEmpty()) {
            return ResponseEntity.status(204).build();
        }
        List<CarroResponseDto> responseDto = CarroMapper.toResponseDto(todosCarros);

        return ResponseEntity.status(200).body(responseDto);

    }

    @PostMapping
    public ResponseEntity<CarroResponseDto> cadastrar(@RequestBody @Valid CarrosRequestDto dto) {

        final Carro newCarro = CarroMapper.toEntity(dto);
        final CarroResponseDto response = CarroMapper.toResponseDto(newCarro);

        service.cadastrar(newCarro);
        return ResponseEntity.status(201).body(response);
    }

@GetMapping("/{id}")
    public ResponseEntity<CarroResponseDto> getById(@PathVariable Integer id) {

        Carro carro = service.buscarPorId(id);

        if (carro == null) {
            return ResponseEntity.status(404).build();
        }

        CarroResponseDto response = CarroMapper.toResponseDto(carro);

        return ResponseEntity.status(201).body(response);
    }


}
