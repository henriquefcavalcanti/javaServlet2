<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:url value="/entrada" var="linkEntradaServlet"/>

<!DOCTYPE html>
<html>

<head>
    <meta charset="ISO-8859-1">
    <title>Insert title here</title>
</head>

<body>

	<c:import url="logout-parcial.jsp"/>

    <form action="${ linkEntradaServlet }" method="POST">
        <label for="nome">Nome da Empresa:</label>
        <input type="text" id="nome" name="nome">
        
        <label for="dataAbertura">Data de Abertura</label>
        <input type="text" name="dataAbertura" id="dataAbertura">
        
        <input type="hidden" name="acao" value="NovaEmpresa">
        
        <input type="submit">
    </form>

</body>

</html>