import org.h2.jdbc.JdbcBlob;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import java.beans.BeanProperty;
import java.util.List;

public class TesteBanco {

    public static void main(String[] args) {
        Connection connection = new Connection();

        JdbcTemplate con = new JdbcTemplate(connection.getDataSource());

        con.execute("drop table Time");
        con.execute("create table Time(" +
                "       id int primary key auto_increment," +
                "       nome Varchar(45)," +
                "       qtd_Jogadores int)");

        con.update("insert into time (nome, qtd_Jogadores) " +
                "        values('Vasco da Gama',20)");
        con.update("insert into time (nome, qtd_Jogadores) " +
                "        values('Santos',40)");


        con.update("insert into time (nome, qtd_Jogadores) " +
                "        values('Paysandu',100)");

        List times = con.queryForList("Select * from time");
        System.out.println("Exibindo o resultado do select de times");
        System.out.println(times);

        List<Time> listaTimes = con.query("Select * from time;",
                new BeanPropertyRowMapper(Time.class));

        System.out.println("Exibindo objetos de times");
        for (int i =0; i < listaTimes.size(); i++){
            System.out.println(listaTimes.get(i));
        }





    }




}
