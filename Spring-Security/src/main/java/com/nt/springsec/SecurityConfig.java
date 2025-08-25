package com.nt.springsec;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;

@Configuration
@EnableWebSecurity
public class SecurityConfig {
	

	
	@Autowired
	DataSource dataSource;  // To load database configuration from application.properties
	
	@Autowired
	public void auth(AuthenticationManagerBuilder auth) throws Exception {
		
		auth.jdbcAuthentication()
		.dataSource(dataSource)
		.passwordEncoder(new BCryptPasswordEncoder())
		.usersByUsernameQuery("select username , password , enabled from users where username =?")
		.authoritiesByUsernameQuery("select username , authority from authorities where username=?");
	}
	
	
	
	
	
	
	
	
	
	@Bean
	public SecurityFilterChain filterChain(HttpSecurity httpSecurity) throws Exception {
		
		httpSecurity.authorizeHttpRequests((req)->
//		     req.requestMatchers("/","/contact","/adr")
//		     .permitAll()
//		     .anyRequest()
//		     .authenticated()

		req.requestMatchers("/welcome").hasAnyRole("ADMIN","USER")
		.requestMatchers("/contact").hasRole("ADMIN")
		.requestMatchers("/adr").permitAll()
		.anyRequest().authenticated()
	  ).formLogin(form-> form.permitAll());
		
		return httpSecurity.build();
		 
	}
	
	

}
