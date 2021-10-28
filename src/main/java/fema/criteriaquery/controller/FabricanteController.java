package fema.criteriaquery.controller;

import java.math.BigDecimal;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import fema.criteriaquery.PersistenceManager;
import fema.criteriaquery.model.Fabricante;

@RestController
@RequestMapping("/fabricante")
public class FabricanteController {
	
	@Autowired
	private PersistenceManager pm;
	
	@GetMapping("/todos")
	public ResponseEntity<?> getAll(){
		try {
			Session session = pm.openSession();
			session.createCriteria(Fabricante.class);
			Criteria crit = session.createCriteria(Fabricante.class);
			
			List<Fabricante> fabricantes = crit.list();
			return ResponseEntity.ok(fabricantes);
		} catch (Exception e) {
			e.printStackTrace();
			return ResponseEntity.internalServerError().body(e.getMessage());
		}
	}
	
	@GetMapping("/eq")
	public ResponseEntity<?> eq(){
		try {
			Session session = pm.openSession();
			session.createCriteria(Fabricante.class);
			Criteria crit = session.createCriteria(Fabricante.class);
			
			crit.add(Restrictions.eq("importado", true));
			
			List<Fabricante> fabricantes = crit.list();
			return ResponseEntity.ok(fabricantes);
		} catch (Exception e) {
			e.printStackTrace();
			return ResponseEntity.internalServerError().body(e.getMessage());
		}
	}
	
	
	@GetMapping("/ne")
	public ResponseEntity<?> ne(){
		try {
			Session session = pm.openSession();
			session.createCriteria(Fabricante.class);
			Criteria crit = session.createCriteria(Fabricante.class);
			
			crit.add(Restrictions.ne("origem", "CN"));
			
			List<Fabricante> fabricantes = crit.list();
			return ResponseEntity.ok(fabricantes);
		} catch (Exception e) {
			e.printStackTrace();
			return ResponseEntity.internalServerError().body(e.getMessage());
		}
	}
	
	
	@GetMapping("/gt")
	public ResponseEntity<?> gt(){
		try {
			Session session = pm.openSession();
			session.createCriteria(Fabricante.class);
			Criteria crit = session.createCriteria(Fabricante.class);
			
			crit.add(Restrictions.gt("valor", new BigDecimal("200000")));
			
			List<Fabricante> fabricantes = crit.list();
			return ResponseEntity.ok(fabricantes);
		} catch (Exception e) {
			e.printStackTrace();
			return ResponseEntity.internalServerError().body(e.getMessage());
		}
	}
	
	
	@GetMapping("/lt")
	public ResponseEntity<?> lt(){
		try {
			Session session = pm.openSession();
			session.createCriteria(Fabricante.class);
			Criteria crit = session.createCriteria(Fabricante.class);
			
			crit.add(Restrictions.lt("funcionarios", 100000));
			
			List<Fabricante> fabricantes = crit.list();
			return ResponseEntity.ok(fabricantes);
		} catch (Exception e) {
			e.printStackTrace();
			return ResponseEntity.internalServerError().body(e.getMessage());
		}
	}
	
	

}
