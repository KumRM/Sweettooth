package com.cakes.sweettooth.config;

import java.util.Properties;

import javax.sql.DataSource;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate5.LocalSessionFactoryBuilder;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.cakes.sweettooth.daoimpl.BakerDAOImpl;
import com.cakes.sweettooth.model.Baker;
import com.cakes.sweettooth.model.BillingAddress;
import com.cakes.sweettooth.model.Cart;
import com.cakes.sweettooth.model.Category;
import com.cakes.sweettooth.model.Product;
import com.cakes.sweettooth.model.Role;
import com.cakes.sweettooth.model.ShippingAddress;
import com.cakes.sweettooth.model.SubCategory;
import com.cakes.sweettooth.model.User;
import com.cakes.sweettooth.model.UserDetails;
import com.cakes.sweettooth.model.UserRole;
import com.cakes.sweettooth.service.BakerService;

@Configuration
@ComponentScan("com.cakes.sweettooth")
@EnableTransactionManagement
public class HibernateConfig 
{
	@Bean(name="dataSource")
	public DataSource dataSource()
	{
		DriverManagerDataSource dataSource = new DriverManagerDataSource();
		dataSource.setDriverClassName("org.h2.Driver");
		dataSource.setUrl("jdbc:h2:tcp://localhost/~/sweettooth");
		dataSource.setUsername("sa");
		dataSource.setPassword("");
		
		Properties properties = new Properties();
		properties.setProperty("hibernate.show_sql", "true");
		properties.setProperty("hibernate.dialect", "org.hibernate.dialect.H2Dialect");
		properties.setProperty("hibernate.hbm2ddl.auto", "update");
		return dataSource;	
	}
	
	private Properties hibernateProperties()
	{
		Properties properties = new Properties();
		properties.put("hibernate.show_sql", "true");
		properties.put("hibernate.dialect", "org.hibernate.dialect.H2Dialect");
		properties.put("hibernate.hbm2ddl.auto", "update");
		return properties;
	}
	
	@Bean(name="transactionManager")
	@Autowired
	public HibernateTransactionManager transactionManager(SessionFactory sessionFactory)
	{
		HibernateTransactionManager txManager = new HibernateTransactionManager();
		txManager.setSessionFactory(sessionFactory);
		return txManager;
	}
	
	
	@Autowired
	@Bean(name="sessionFactory")
	public SessionFactory SessionFactory(DataSource dataSource)
	{
		LocalSessionFactoryBuilder sessionBuilder = new LocalSessionFactoryBuilder(dataSource);
		sessionBuilder.addProperties(hibernateProperties());
		sessionBuilder.addAnnotatedClass(Category.class);
		sessionBuilder.addAnnotatedClass(Baker.class);
		sessionBuilder.addAnnotatedClass(SubCategory.class);
		sessionBuilder.addAnnotatedClass(Product.class);
		sessionBuilder.addAnnotatedClass(BillingAddress.class);
		sessionBuilder.addAnnotatedClass(Cart.class);
		sessionBuilder.addAnnotatedClass(Role.class);
		sessionBuilder.addAnnotatedClass(ShippingAddress.class);
		sessionBuilder.addAnnotatedClass(User.class);
		sessionBuilder.addAnnotatedClass(UserDetails.class);
		sessionBuilder.addAnnotatedClass(UserRole.class);
		
		return sessionBuilder.buildSessionFactory();
	}
}