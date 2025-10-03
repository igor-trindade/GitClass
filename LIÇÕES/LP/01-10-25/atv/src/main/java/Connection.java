import org.apache.commons.dbcp2.BasicDataSource;

public class Connection {

    private BasicDataSource dataSource;

    public Connection() {
        dataSource = new BasicDataSource();
        dataSource.setDriverClassName("org.h2.Driver");
        dataSource.setUrl("jdbc:h2:file:./time-db");
        dataSource.setUsername("sa");
        dataSource.setPassword("123");
    }


    public BasicDataSource getDataSource() {
        return this.dataSource;
    }


}

