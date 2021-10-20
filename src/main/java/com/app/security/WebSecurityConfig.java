package com.app.security;

import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import com.app.serviceimpl.UserDetailsServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;


@Configuration
@EnableWebSecurity
public class WebSecurityConfig extends WebSecurityConfigurerAdapter{
	
	@Autowired
	private UserDetailsServiceImpl userDetailsService;
	
	@Bean
	public BCryptPasswordEncoder bCryptPasswordEncoder() {
		return new BCryptPasswordEncoder();
	}
	
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		 http
     	.cors().and().csrf().disable()
         .authorizeRequests()
         .antMatchers("/css/**","/images/**","/", "/user/login", "/user/register").permitAll()
         .anyRequest().authenticated()
         .and()
         .formLogin().loginPage("/user/login").usernameParameter("email").passwordParameter("password")
         .loginProcessingUrl("/user/login")
         .defaultSuccessUrl("/user/process-login", true)
         .failureUrl("/user/login")
         .permitAll();
		 
		 http.logout().logoutUrl("/user/logout")
		 .logoutSuccessUrl("/").invalidateHttpSession(true).deleteCookies("JSESSIONID");
	}
	
	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		auth.userDetailsService(userDetailsService).passwordEncoder(bCryptPasswordEncoder());
	}
	

}
