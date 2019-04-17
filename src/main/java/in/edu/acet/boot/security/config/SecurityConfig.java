package in.edu.acet.boot.security.config;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.password.PasswordEncoder;

import in.edu.acet.constants.QueryConstants;

@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {

    @Autowired
    private DataSource dataSource;
    
    @Autowired
    private PasswordEncoder passwordEncoder;

    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.jdbcAuthentication().dataSource(dataSource).usersByUsernameQuery(QueryConstants.LOGIN_QUERY).authoritiesByUsernameQuery(QueryConstants.ROLE_QUERY)
        .passwordEncoder(passwordEncoder);
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.authorizeRequests().antMatchers("/**").authenticated()
        		.antMatchers("/viewLogin","/viewRegister","/register","/images/**","/scripts/**","/styles/**","/fonts/**","/timer/**").permitAll()
                .and().formLogin().defaultSuccessUrl("/login")
                .loginPage("/viewLogin").failureUrl("/viewLogin?error=Invalid").loginProcessingUrl("/j_spring_security_check").permitAll()
                .usernameParameter("userName").passwordParameter("password")
                .and().logout().logoutSuccessUrl("/viewLogin?logout=true").and().exceptionHandling().accessDeniedPage("/viewLogin?accessDenied=true")
                .and().csrf().disable();
    }

    @Override
    public void configure(WebSecurity web) throws Exception {
        web.ignoring().antMatchers("/viewLogin")
                      .antMatchers("/viewRegister","/register")
                      .antMatchers("/images/**")
                      .antMatchers("/scripts/**")
                      .antMatchers("/styles/**")
                      .antMatchers("/fonts/**")
                      .antMatchers("/timer/**");
    }

}
