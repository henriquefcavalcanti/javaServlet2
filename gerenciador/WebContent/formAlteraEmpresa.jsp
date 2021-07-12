<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>

<c:url value="/alteraEmpresa" var="linkServletNovaEmpresa" />

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
</head>

<body>

	<form action="${ linkServletNovaEmpresa }" method="POST">
	
		<label for="nome">Nome</label> 
		<input type="text" id="nome" name="nome" value="${ empresa.nome }"> 
		
		<fmt:formatDate value="${ empresa.dataAbertura }" pattern="dd/MM/yyyy" var="dataAbertura" />
		<label for="dataAbertura">Data Abertura</label>
		<input type="text" id="dataAbertura" name="dataAbertura" value="${ dataAbertura }">
		
		<input type="hidden" name="id" value="${ empresa.id }">
		
		<input type="submit">
		
	</form>

</body>

</html>