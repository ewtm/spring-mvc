package br.com.teste.controller;

import java.io.FileWriter;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import br.com.teste.dao.CadastroDAO;
import br.com.teste.modelo.Cadastro;

@Controller
public class CadastroController {

	@Autowired
	private CadastroDAO dao;
	
	@RequestMapping("/formulario")
	public String formulario(){
		return "formulario";
	}
	
	
	@RequestMapping("/adiciona")
	public String gravar(Cadastro cadastro){	
		dao.gravar(cadastro);
		System.out.println("Nome:" + cadastro.getNome());
		return "adicionada";
	}
	
	@RequestMapping("/lista")
	public ModelAndView listar(){
		List<Cadastro> cadastros = dao.listar();
		ModelAndView mv = new ModelAndView("/lista");
		mv.addObject("cadastros", cadastros);
		
		return mv ;
	}
	
	@RequestMapping("/remove")
	public String remove(Cadastro cadastro){
		dao.remover(cadastro);
		
		return "redirect:lista";
		
	}
	
	@RequestMapping("/mostra")
	public String mostra(Integer id,Model model){
		model.addAttribute("cadastro",dao.buscaPorId(id));
		
		return "mostra";
	}
	
	@RequestMapping("/altera")
	public String altera(Cadastro cadastro){
		dao.altera(cadastro);
		
		return "redirect:lista";
	}
	
	@RequestMapping("/imprime")
	public String imprime(Integer id,Model model){
		
		model.addAttribute("cadastro",dao.buscaPorId(id));
		
		return "imprime";
	}
	
	@RequestMapping("imprimindo")
	public String imprimindo(Cadastro cadastro){
		
		
		
		try {
			FileWriter wr = new FileWriter("teste.txt");
			wr.write("Nome " + cadastro.getNome());
			wr.write("Altura " + cadastro.getAltura());
			wr.write("Peso" + cadastro.getPeso());
			wr.close();
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		System.out.println("Nome " + cadastro.getNome());
		System.out.println("Altura " + cadastro.getAltura());
		System.out.println("Peso" + cadastro.getPeso());
		
		return "redirect:lista";
	}
	
	
	@RequestMapping("/teste")
	public String teste(){
		return "teste";
	}
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}
}
