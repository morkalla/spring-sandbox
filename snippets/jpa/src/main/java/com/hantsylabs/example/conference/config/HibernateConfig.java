package com.hantsylabs.example.conference.config;

import java.util.Properties;

import javax.sql.DataSource;

import org.hibernate.SessionFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.embedded.EmbeddedDatabaseBuilder;
import org.springframework.orm.hibernate4.HibernateTransactionManager;
import org.springframework.orm.hibernate4.LocalSessionFactoryBuilder;
import org.springframework.transaction.PlatformTransactionManager;

@Configuration
@ComponentScan(basePackages={"com.hantsylabs.example.conference.dao","com.hantsylabs.example.conference.hibernate4"})
public class HibernateConfig {

	@Bean
	public DataSource dataSource() {
		return new EmbeddedDatabaseBuilder().build();
	}

	@Bean
	public SessionFactory sessionFactory() {
		LocalSessionFactoryBuilder builder = new LocalSessionFactoryBuilder(
				dataSource());
		builder.scanPackages("com.hantsylabs.example.conference.model")
				.addProperties(hibernateProperties());

		return builder.buildSessionFactory();
	}

	private Properties hibernateProperties() {
		Properties extraProperties = new Properties();
		extraProperties.put("hibernate.format_sql", "true");
		extraProperties.put("hibernate.show_sql", "true");
		extraProperties.put("hibernate.hbm2ddl.auto", "create");
		return extraProperties;
	}

	@Bean
	public PlatformTransactionManager transactionManager() {
		return new HibernateTransactionManager(sessionFactory());
	}

}