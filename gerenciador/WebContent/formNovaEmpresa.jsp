<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url value="/novaEmpresa" var="linkServletNovaEmpresa" />

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
		<input type="text" id="nome" name="nome"> 
		
		<label for="dataAbertura">Data Abertura</label>
		<input type="text" id="dataAbertura" name="dataAbertura">
		
		<input type="submit">
		
	</form>

</body>

</html>