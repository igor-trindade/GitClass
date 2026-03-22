package com.example.demo;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

public class CalculatorController {
    @RestController
    public class Calculator{
        private int contador;

        @GetMapping("/calculos/contar")
        public int counter(){
            return contador++;
        }
        @GetMapping("/calculo/somar/{n1}/{n2}")
        public int somar(
                @PathVariable int n1,
                @PathVariable int n2)
        {
            return n1 + n2;
        }


    }
}
