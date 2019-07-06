package com.ineo.trust;
import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.web.servlet.error.ErrorMvcAutoConfiguration;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

import com.ineo.trust.model.User;
import com.ineo.trust.repository.AdminRepository;

@Configuration
@EnableWebSecurity
@EnableAutoConfiguration(exclude = {ErrorMvcAutoConfiguration.class})
public class SecurityConfiguration extends WebSecurityConfigurerAdapter {

	@Autowired
	private BCryptPasswordEncoder bCryptPasswordEncoder;
	
   
	@Autowired
    private AdminRepository adminRepository;

	@Autowired
	private DataSource dataSource;

	@Value("${spring.queries.users-query}")
	private String usersQuery;

	@Value("${spring.queries.roles-query}")
	private String rolesQuery;

	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		auth.jdbcAuthentication().usersByUsernameQuery(usersQuery).authoritiesByUsernameQuery(rolesQuery)
				.dataSource(dataSource).passwordEncoder(bCryptPasswordEncoder);
	}

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		
		http.authorizeRequests()
				// URLs matching for access rights
				.antMatchers("/").permitAll()
				.antMatchers("/login").permitAll()
				.antMatchers("/register").permitAll()
				.antMatchers("/forgotpassword").permitAll()
				.antMatchers("/forgotpass").permitAll()
				.antMatchers("/checkotp").permitAll()
				.antMatchers("/changepass").permitAll()
				.antMatchers("/newpass").permitAll()
				.antMatchers("/error").permitAll()
				.antMatchers("/home/**").hasAnyAuthority("admin", "backoffice","labassistant","frontdesklabassistant","frontdesksonography","frontdeskxray")
				.anyRequest().authenticated()
				.and()
				// form login
				.csrf().disable().formLogin()
				.loginPage("/login")
//				.failureUrl("/login?error=true")
				 .failureHandler((req,res,exp)->{  
				
			         String errMsg="";
			         if(exp.getClass().isAssignableFrom(BadCredentialsException.class)){
			            errMsg="Invalid username or password.";
			         }else{
			            errMsg="Unknown error - "+exp.getMessage();
			         }
			         req.getSession().setAttribute("message", errMsg);
			         res.sendRedirect("/login"); // Redirect user to login page with error message.
			      })
				
				.defaultSuccessUrl("/home")
				.usernameParameter("email")
				.passwordParameter("password")
				.and()
				// logout
				.logout()
				.logoutRequestMatcher(new AntPathRequestMatcher("/logout"))
				/* .logoutSuccessUrl("/") */
				  .logoutSuccessHandler((req,res,auth)->{   // Logout handler called after successful logout 
					  User user=adminRepository.findByEmail(auth.getName());
					  if(user!= null)
					  {
					     user.setActive(0);
			       	   	 adminRepository.save(user);
					  }
			       	   	 req.getSession().setAttribute("message", "You are logged out successfully.");
			       	//  req.getSession().invalidate();
				         res.sendRedirect("/login"); // Redirect user to login page with message.
				      }).and()
				.exceptionHandling()
				.accessDeniedPage("/access-denied");
	}

	@Override
	public void configure(WebSecurity web) throws Exception {
		web.ignoring().antMatchers("/resources/**", "/static/**", "/css/**", "/js/**", "/images/**");
	}

}



