package com.example.demo;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

@RestController
@RequestMapping("/movies")
public class FilmController {
    private List<Movie> movies = new ArrayList<>(List.of(
            new Movie("Shrek", 2002, 140),
            new Movie("Hitman", 2001, 120),
            new Movie("Miranha", 2002, 160),
            new Movie("Creed", 2009, 180)
    ));


        @PostMapping
        public ResponseEntity<Movie> addMovie(@RequestBody Movie newMovie) {
            movies.add(newMovie);  // adiciona na lista
            return ResponseEntity.status(201).body(newMovie);
        }

    @PostMapping("/addMultiple")
    public List<Movie> addMovies(@RequestBody List<Movie> newMovies) {
        movies.addAll(newMovies);  // adiciona todos à lista
        return newMovies;          // retorna os filmes adicionados
    }


    @GetMapping
    public List<Movie> getMovies() {
        return movies;
    }


    @GetMapping("/{n1}")
    public ResponseEntity<Movie> getMovieById(@PathVariable int n1) {
        if (isIndice(n1)) {
            return ResponseEntity.status(201).body(movies.get(n1)); // status 200 OK
        }
        return ResponseEntity.status(404).body(null); // status 404 Not Found
    }


    @DeleteMapping("/remove/{n1}")
    public String toRemoveMovie(@PathVariable int n1) {
        if (isIndice(n1)) {
            String movieName = movies.get(n1).getNome();
            movies.remove(n1);
            return "Movie " + movieName + " removed";
        }
        return "Your index does not exist";
    }

    private boolean isIndice(int index) {
        return index >= 0 && index < movies.size();
    }

    @PutMapping("/update/{n1}")
    public String updateMovie(@PathVariable int n1, @RequestBody Movie updatedMovie) {
        if (isIndice(n1)) {
            movies.set(n1, updatedMovie); // substitui o filme no índice
            return "Movie at index " + n1 + " updated to: " + updatedMovie.getNome();
        }
        return "Your index does not exist";
    }

}
