<!-- Java Server Page = JSP -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
</head>

<body>

	<c:if test="${ not empty empresa }">
		<p>Empresa ${ empresa } cadastrada com sucesso.</p>
	</c:if>

	<c:if test="${ empty empresa }">
		<p>Nenhuma empresa cadastrada</p>
	</c:if>


</body>

</html>
