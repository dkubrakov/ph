package roo.ph.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

@Configuration
@EnableWebSecurity
public class BasicSecurityConfiguration extends WebSecurityConfigurerAdapter {

    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.inMemoryAuthentication()
                .withUser("user").password("user").roles("USER")
                .and()
                .withUser("admin").password("admin").roles("USER", "ADMIN");
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http
            .csrf().disable()
            .authorizeRequests()
            .antMatchers("/").permitAll()
            .antMatchers("/accessibility").permitAll()
            .antMatchers("/public/**").permitAll()
            .antMatchers("/webjars/**").permitAll()
            .antMatchers("/login/**").permitAll()
            .antMatchers("/login*").permitAll()
            .anyRequest().authenticated()
            .and()
                .formLogin().loginPage("/login")
            .and()
            .logout().logoutUrl("logout")
            .invalidateHttpSession(true).logoutSuccessUrl("/login.html?logout")
        ;
    }
}
