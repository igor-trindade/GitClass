package sptech.school;
import com.fasterxml.jackson.databind.ObjectMapper;

public class Livro {
    private Integer id;
    private String name;
    private String author;
    private Integer day;
    private Integer month;
    private Integer year;
    private String publisher;
    private Double price;
    private Double rating;

    // Data formatada tipo 01/05/2024
    public String getDataPublicacao() {
        String dia = (day < 10 ? "0" + day : "" + day);
        String mes = (month < 10 ? "0" + month : "" + month);
        return dia + "/" + mes + "/" + year;
    }

    // Preço com 2 casas decimais
    public String getPrecoFormatado() {
        return String.format("%.2f", price);
    }

    // Preço com desconto de 10%
    public String getPrecoDesconto() {
        Double desconto = price * 0.9;
        return String.format("%.2f", desconto);
    }

    // Converter em JSON (string)
    public String toJson() {
        try {
            ObjectMapper mapper = new ObjectMapper();
            return mapper.writerWithDefaultPrettyPrinter().writeValueAsString(this);
        } catch (Exception e) {
            e.printStackTrace();
            return "{}";
        }
    }

    // Converter em CSV (linha única)
    public String toCsv() {
        return "\"" + id + "\","
                + "\"" + name + "\","
                + "\"" + author + "\","
                + "\"" + getDataPublicacao() + "\","
                + "\"" + publisher + "\","
                + "\"" + getPrecoFormatado() + "\","
                + "\"" + getPrecoDesconto() + "\","
                + "\"" + rating + "\"";
    }



    // Getters e Setters
    public Integer getId() { return id; }
    public void setId(Integer id) { this.id = id; }

    public String getName() { return name; }
    public void setName(String name) { this.name = name; }

    public String getAuthor() { return author; }
    public void setAuthor(String author) { this.author = author; }

    public Integer getDay() { return day; }
    public void setDay(Integer day) { this.day = day; }

    public Integer getMonth() { return month; }
    public void setMonth(Integer month) { this.month = month; }

    public Integer getYear() { return year; }
    public void setYear(Integer year) { this.year = year; }

    public String getPublisher() { return publisher; }
    public void setPublisher(String publisher) { this.publisher = publisher; }

    public Double getPrice() { return price; }
    public void setPrice(Double price) { this.price = price; }

    public Double getRating() { return rating; }
    public void setRating(Double rating) { this.rating = rating; }

}
