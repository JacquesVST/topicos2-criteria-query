package fema.criteriaquery;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.springframework.stereotype.Service;

import fema.criteriaquery.model.Aparelho;
import fema.criteriaquery.model.Fabricante;

@Service
public class PersistenceManager {
	
	public Session openSession() {
		Configuration cfg = new Configuration();
		cfg.setProperty("hibernate.dialect", "org.hibernate.dialect.H2Dialect");
		cfg.setProperty("hibernate.connection.username", "sa");
		cfg.setProperty("hibernate.connection.password", "");
		cfg.setProperty("hibernate.connection.url", "jdbc:h2:./banco");
		cfg.setProperty("hibernate.connection.driver_class", "org.h2.Driver");
		cfg.setProperty("hibernate.show_sql", "false");
		cfg.addClass(Fabricante.class);
		cfg.addClass(Aparelho.class);

		SessionFactory sessionFactory = cfg.buildSessionFactory();

		return sessionFactory.openSession();
	}

}
