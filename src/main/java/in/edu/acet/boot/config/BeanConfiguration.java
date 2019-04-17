package in.edu.acet.boot.config;

import java.text.SimpleDateFormat;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.core.env.Environment;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Component;

@Component
@ComponentScan(basePackages = "in.edu.acet")
public class BeanConfiguration {
    
    @Autowired
    private Environment env;
    
    @Autowired
    private DataSource dataSource;
        
    @Bean
    public JdbcTemplate jdbcTemplate() {
        JdbcTemplate jdbcTemplate=new JdbcTemplate(dataSource);
        return jdbcTemplate;
    }
    
    @Bean
    public SimpleDateFormat simpleDateFormat() {
        SimpleDateFormat dateFormat=new SimpleDateFormat(env.getProperty("dob.date.format"));
        return dateFormat;
    }
    
    @Bean
    public BCryptPasswordEncoder passwordEncoder() {
        BCryptPasswordEncoder bCryptPasswordEncoder = new BCryptPasswordEncoder();
        return bCryptPasswordEncoder;
    }
    
}
