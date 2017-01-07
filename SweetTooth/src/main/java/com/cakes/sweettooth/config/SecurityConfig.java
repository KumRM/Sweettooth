package com.cakes.sweettooth.config;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter
{
	@Autowired
	DataSource dataSource;
	
	@Autowired
	public void configAuthentication(AuthenticationManagerBuilder authenticationManagerBuilder) throws Exception
	{
		authenticationManagerBuilder.
		jdbcAuthentication().dataSource(dataSource)
		.usersByUsernameQuery("select userName, password, enabled from User where userName =?")
		.authoritiesByUsernameQuery
("select username, rolename from user u, role r, userrole ur where u.userid = ur.userid and r.roleid = ur.roleid and username = ?");
	}
	
	@Override
	protected void configure(HttpSecurity http) throws Exception 
	{
		http.authorizeRequests()
		.antMatchers("/CategoryForm", "/SubCategoryForm", "/BakerForm", "/ProductForm").access("hasRole('ROLE_ADMIN')") 
		.anyRequest().permitAll()
		.and()
		.formLogin().loginPage("/LoginForm").failureUrl("/LoginForm?error")
		.usernameParameter("username").passwordParameter("password").loginProcessingUrl("/perform_login").defaultSuccessUrl("/")
//		.and()
//		.logout().logoutSuccessUrl("/perform_logout") 
		.and()
		.exceptionHandling().accessDeniedPage("/403")
		.and()
		.csrf()
		.disable();
	}
}
