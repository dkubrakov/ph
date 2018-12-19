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
//                .antMatchers("/index.html").permitAll()
//                .antMatchers("/login.html").permitAll()
//                .antMatchers("/error.html").permitAll()
//                .antMatchers("/accessibility.html").permitAll()
//            .antMatchers("/public/**").permitAll()
//            .antMatchers("/webjars/**").permitAll()
//            .antMatchers("/login/**").permitAll()
//            .antMatchers("/login*").permitAll()
//                .antMatchers("/templates/**").permitAll()
//            .anyRequest().authenticated()
            .anyRequest().permitAll()
//            .and()
//            .formLogin().loginPage("/login.html")
//            .and()
//            .logout().logoutUrl("/logout.html")
//            .invalidateHttpSession(true).logoutSuccessUrl("/login.html?logout")
        ;
    }
}
