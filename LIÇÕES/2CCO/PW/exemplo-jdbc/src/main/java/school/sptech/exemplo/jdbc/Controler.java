package school.sptech.exemplo.jdbc;

import org.springframework.http.ResponseEntity;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.*;

import java.beans.BeanProperty;
import java.util.List;

@RestController
@RequestMapping("/series")
public class Controler {

    // Injeção de dependência
    private final JdbcTemplate jdbcTemplate;

    public Controler(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    @GetMapping
    public ResponseEntity<List<Serie>> listarSeries(){
        String sql = "select * from serie;";
        // .query -> consulta que retorna lista de object
        // .queryForObject -> consulta que retorna um objeto
        // .update -> insert, delete,update

        List<Serie> series = jdbcTemplate.query(
                sql,
                new BeanPropertyRowMapper<Serie>(Serie.class)
        );

        if(series.isEmpty()){
            return ResponseEntity.status(204).build();
        }

        return ResponseEntity.status(200).body(series);
    }


    @GetMapping("/{n1}")
    public ResponseEntity<List<Serie>> listById(@PathVariable String n1){
        String sql = "select * from serie where uuid = ?";

        List<Serie> serie = jdbcTemplate.query(sql, new BeanPropertyRowMapper<Serie>(Serie.class),n1);

        if(serie.isEmpty()){
            return ResponseEntity.status(404).body(serie);
        }
        return  ResponseEntity.status(200).body(serie);
    }


    @GetMapping("/2/{n1}")
    public ResponseEntity<Serie> listById2(@PathVariable String n1){

        String sql = "select * from serie where uuid = ?";

        try {
            Serie series = jdbcTemplate.queryForObject(
                    sql,
                    new BeanPropertyRowMapper<>(Serie.class),n1
            );

            return ResponseEntity.status(200).body(series);

        } catch (Exception e) {
            return ResponseEntity.status(404).build();
        }
    }

    private Boolean existeUuid(String uuid) {

        String sql = "SELECT COUNT(*) FROM serie WHERE uuid = ?";

        Integer quantidade = jdbcTemplate.queryForObject(
                sql,
                Integer.class,
                uuid
        );

        return quantidade != null && quantidade > 0;
    }
    @DeleteMapping("/{id}")
    public ResponseEntity<Void> dellByid(@PathVariable String id){

        // verifica antes de deletar
        if (!existeUuid(id)) {
            return ResponseEntity.status(404).build();
        }

        String sql = "delete from serie where uuid = ?";
        jdbcTemplate.update(sql, id);

        return ResponseEntity.status(204).build();
    }

}