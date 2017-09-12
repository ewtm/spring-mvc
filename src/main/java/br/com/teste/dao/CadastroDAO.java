package br.com.teste.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import br.com.teste.modelo.Cadastro;

@Repository
@Transactional
public class CadastroDAO {
	
	@PersistenceContext
	private EntityManager manager;
	
	public void gravar(Cadastro cadastro){
		manager.persist(cadastro);
	}
	
	public List<Cadastro> listar(){
		return manager.createQuery("select c from Cadastro c").getResultList();
	}
	
	public void remover(Cadastro cadastro){
		//em.remove(em.merge(t));
		manager.remove(manager.merge(cadastro));
	}
	
	public Cadastro buscaPorId(Integer id){
		return  manager.find(Cadastro.class, id);
	}
	
	public void altera(Cadastro cadastro){
		manager.merge(cadastro);
		
	}
	
	
}
