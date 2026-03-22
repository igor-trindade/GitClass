package com.example.demo;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class PrimalController {


    @GetMapping("/hello-world")
    public String print(){
        return "Hello World";
    }

    @GetMapping("/papaidoceu")
    public String print2(){
        return "Pai Nosso" ;
    }

    @GetMapping("/saudacao/{nome}")
    public String saudar(@PathVariable String nome) {
        return "Olá %s".formatted(nome);
    }

    /**

     PathVariable -> indica uma varial de url/uri e: GET .../usuario/42
     RequestParam -> indica variavel chave valo, ex: /Livros?autor=murilo
     Requestbody -> indica um parametro que vai no corpo da request, ex json,xml...

     * */


}
