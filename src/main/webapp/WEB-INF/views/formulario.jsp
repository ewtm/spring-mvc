<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<c:import url="template/cabecalho.jsp"/>
	<form action="adiciona" method="post">
		<table class="table">
			<tr>
				<td>Nome</td>
				<td><input class="form-control" type="text" name="nome"/></td>
			</tr>
			<tr>
				<td>Altura</td>
				<td><input class="form-control" type="number" name="altura"  step="0.01"/></td>
			</tr>
			<tr>
				<td>Peso</td>
				<td><input class="form-control" type="number" name="peso"  step="0.01"/></td>
			</tr>
			
		</table>
		<button class="btn btn-primary" type="submit">Adicionar</button>
		
	
	</form>


<c:import url="template/rodape.jsp"/>