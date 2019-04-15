package in.edu.acet.boot.config;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan(basePackages = "in.edu.acet")
public class SpringBootInitializer extends SpringBootServletInitializer {

    public static void main(String[] args) {
        SpringApplication.run(SpringBootInitializer.class, args);
    }

    @Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
        return application.sources(SpringBootInitializer.class);
    }

}

