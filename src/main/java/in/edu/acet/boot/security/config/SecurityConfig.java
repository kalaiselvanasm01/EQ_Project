package in.edu.acet.boot.security.config;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

import in.edu.acet.constants.QueryConstants;

@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {

    @Autowired
    private DataSource dataSource;

    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.jdbcAuthentication().dataSource(dataSource).usersByUsernameQuery(QueryConstants.LOGIN_QUERY).authoritiesByUsernameQuery(QueryConstants.ROLE_QUERY);
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.authorizeRequests().anyRequest().authenticated()
        		.antMatchers("/viewLogin","/login","/viewRegister","/register","/images/**","/scripts/**","/styles/**","/fonts/**","/timer/**").permitAll()
                .and().formLogin().defaultSuccessUrl("/viewHome")
                .loginPage("/viewLogin").failureUrl("/viewLogin?error=Invalid").loginProcessingUrl("/login")
                .usernameParameter("userName").passwordParameter("password")
                .and().logout().logoutSuccessUrl("/logout");
    }

    @Override
    public void configure(WebSecurity web) throws Exception {
        web.ignoring().antMatchers("/viewLogin","/login")
                      .antMatchers("/viewRegister","/register")
                      .antMatchers("/images/**")
                      .antMatchers("/scripts/**")
                      .antMatchers("/styles/**")
                      .antMatchers("/fonts/**")
                      .antMatchers("/timer/**");
    }

}
