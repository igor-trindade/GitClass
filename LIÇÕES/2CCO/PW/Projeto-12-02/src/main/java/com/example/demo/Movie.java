package com.example.demo;

public class Movie {
    private String nome;
    private int anoLancamento;
    private double duration;

    public Movie(String nome, int anoLancamento, double duration) {
        this.nome = nome;
        this.anoLancamento = anoLancamento;
        this.duration = duration;
    }


    public Movie() {
    }
    public String getNome() {
        return nome;
    }
    public void setNome(String nome) {
        this.nome = nome;
    }


    public String getBolhufas() {
    return "Nome %s ano lançamento %d".formatted(nome,anoLancamento);
    }

    public int getAnoLancamento() {
        return anoLancamento;
    }
    public void setAnoLancamento(int anoLancamento) {
        this.anoLancamento = anoLancamento;
    }
    public double getDuration() {
        return duration;
    }
    public void setDuration(double duration) {
        this.duration = duration;
    }



}
