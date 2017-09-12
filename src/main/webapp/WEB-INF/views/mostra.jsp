<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<c:import url="template/cabecalho.jsp"/>
	<form action="altera" method="post">
	 	<input type="hidden" name="id" value="${cadastro.id}"/>
		<table class="table">	
			
			
			<tr>
				<td>Nome</td>
				<td><input class="form-control" type="text" name="nome" value="${cadastro.nome}"/></td>
			</tr>
			<tr>
				<td>Altura</td>
				<td><input class="form-control" type="number" name="altura"  step="0.01" value="${cadastro.altura}"/></td>
			</tr>
			<tr>
				<td>Peso</td>
				<td><input class="form-control" type="number" name="peso"  step="0.01" value="${cadastro.peso}"/></td>
			</tr>
			
		</table>
		
		<button class="btn btn-primary" type="submit">Alterar</button>
		
	
	</form>


<c:import url="template/rodape.jsp"/>