<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List, br.com.alura.gerenciador.servlet.Empresa"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Java Standard Taglib</title>
</head>

<body>

	<c:if test="${ not empty empresa }">
		<p>Empresa ${ empresa } cadastrada com sucesso.</p>
	</c:if>

	<h1>Lista de Empresas</h1>

	<ul>
		<c:forEach items="${ empresas }" var="empresa">
			<fmt:formatDate value="${ empresa.dataAbertura }"
				pattern="dd/MM/yyyy" var="dataAbertura" />
			<li>
				${ empresa.nome } - ${ dataAbertura } 
				<a href="/gerenciador/mostraEmpresa?id=${ empresa.id }">Editar</a>
				<a href="/gerenciador/removeEmpresa?id=${ empresa.id }">Remover</a>
			</li>
		</c:forEach>
	</ul>

</body>

</html>