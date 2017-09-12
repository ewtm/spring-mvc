<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<c:import url="template/cabecalho.jsp"/>

<h1>Lista de Cadastro</h1>

<table class="table table-striped table-bordered">
	<tr>
		<th>Nome</th>
		<th>Altura</th>
		<th>Peso</th>
		<th>IMC</th>
		<th>Remover</th>
		<th>Alterar</th>
		<th>Teste</th>
	</tr>
	<c:forEach items="${cadastros}" var="cadastro">
	<tr>
		<td>${cadastro.nome}</td>
		<td>${cadastro.altura}</td>
		<td>${cadastro.peso}</td>
		<td></td>		
		<td><a  class = "btn btn-danger " href="remove?id=${cadastro.id}">Remover</a></td>
		<td><a  class = "btn btn-primary" href="mostra?id=${cadastro.id}">Alterar</a></td>
		<td><a  class = "btn btn-warning" href="imprime?id=${cadastro.id}">Imprimir</a></td>
	
	
		
		
	</c:forEach>

</table>

<c:import url="template/rodape.jsp"/>