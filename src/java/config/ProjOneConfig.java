/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package config;

import controller.MainController;
import controller.PrivetController;
import dao.TableOneDao;
import javax.sql.DataSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import service.TableOneService;

/**
 *
 * @author user129
 */

@Configuration
public class ProjOneConfig {
    
    @Bean
    public PrivetController privetController(){
        return new PrivetController(); 
    }
    
    @Bean
    public TableOneService tableOneService(){
        return new TableOneService();
    }
    
    @Bean
    public MainController mainController(){
        return new MainController();
    }
    
    @Bean
    public DataSource dataSource(){
        DriverManagerDataSource dataSource = new DriverManagerDataSource();
        dataSource.setUrl("jdbc:mysql://localhost:3306/project1");
        dataSource.setUsername("admin");
        dataSource.setPassword("admin");
        dataSource.setDriverClassName("com.mysql.jdbc.Driver");
        return dataSource;
    }
        
    @Bean
    //@Autowired
    //@Qualifier("ssss")
    public JdbcTemplate jdbcTemplate(){        
        return new JdbcTemplate(dataSource());
    }
    
    @Bean
    //Autowired
    //@Qualifier("ssss")
    public TableOneDao tableOneDao(){
        return new TableOneDao(jdbcTemplate());
    }
}
