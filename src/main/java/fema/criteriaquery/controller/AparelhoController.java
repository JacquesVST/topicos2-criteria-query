package fema.criteriaquery.controller;

import java.math.BigDecimal;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.MatchMode;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import fema.criteriaquery.PersistenceManager;
import fema.criteriaquery.model.Aparelho;
import fema.criteriaquery.model.Aparelho;

@RestController
@RequestMapping("/aparelho")
public class AparelhoController {
	
	@Autowired
	private PersistenceManager pm;
	
	@GetMapping("/todos")
	public ResponseEntity<?> getAll(){
		try {
			Session session = pm.openSession();
			session.createCriteria(Aparelho.class);
			Criteria crit = session.createCriteria(Aparelho.class);
			
			List<Aparelho> aparelhos = crit.list();
			return ResponseEntity.ok(aparelhos);
		} catch (Exception e) {
			e.printStackTrace();
			return ResponseEntity.internalServerError().body(e.getMessage());
		}
	}
	
	@GetMapping("/iLike")
	public ResponseEntity<?> iLike(){
		try {
			Session session = pm.openSession();
			session.createCriteria(Aparelho.class);
			Criteria crit = session.createCriteria(Aparelho.class);
			
			crit.add(Restrictions.ilike("nome", "S", MatchMode.START));
			
			List<Aparelho> aparelhos = crit.list();
			return ResponseEntity.ok(aparelhos);
		} catch (Exception e) {
			e.printStackTrace();
			return ResponseEntity.internalServerError().body(e.getMessage());
		}
	}
	
	
	@GetMapping("/notNull")
	public ResponseEntity<?> notNull(){
		try {
			Session session = pm.openSession();
			session.createCriteria(Aparelho.class);
			Criteria crit = session.createCriteria(Aparelho.class);
			
			crit.add(Restrictions.isNotNull("codigo"));
			
			List<Aparelho> aparelhos = crit.list();
			return ResponseEntity.ok(aparelhos);
		} catch (Exception e) {
			e.printStackTrace();
			return ResponseEntity.internalServerError().body(e.getMessage());
		}
	}
	
	
	@GetMapping("/ge")
	public ResponseEntity<?> ge(){
		try {
			Session session = pm.openSession();
			session.createCriteria(Aparelho.class);
			Criteria crit = session.createCriteria(Aparelho.class);
			
			crit.add(Restrictions.ge("anoLancamento", 2005));
			
			List<Aparelho> aparelhos = crit.list();
			return ResponseEntity.ok(aparelhos);
		} catch (Exception e) {
			e.printStackTrace();
			return ResponseEntity.internalServerError().body(e.getMessage());
		}
	}
	
	
	@GetMapping("/le")
	public ResponseEntity<?> le(){
		try {
			Session session = pm.openSession();
			session.createCriteria(Aparelho.class);
			Criteria crit = session.createCriteria(Aparelho.class);
			
			crit.add(Restrictions.le("preco", new BigDecimal("957.11")));
			
			List<Aparelho> aparelhos = crit.list();
			return ResponseEntity.ok(aparelhos);
		} catch (Exception e) {
			e.printStackTrace();
			return ResponseEntity.internalServerError().body(e.getMessage());
		}
	}

}
