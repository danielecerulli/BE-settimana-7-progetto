<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Risultati ricerca con numero di telefono</title>
</head>
<style type="text/css">
td {border: 1px solid black;}
table {border-collapse: collapse; border: 1px solid black; background: #f4f4f4; width: 100%}
</style>
<body>
<h1>LISTA CONTATTI BY NUMERO INSERITO</h1>
		
		<%List<Object[]> contatto = (List<Object[]>)request.getAttribute("contatto");%> 
	<table>	
	<tr><th>ID CONTATTO</th><th>NOME</th><th>COGNOME</th><th>EMAIL</th><th>NUMERO</th></tr>
		<% for ( Object[] o : contatto ) {%>
			<tr><td><%=o[0] %></td><td><%=o[1] %></td><td><%=o[2] %></td><td><%=o[3] %></td><td><%=o[4] %></td></tr>
					
		<% }%>
		
		
	</table><br>
	<a href="index.html">Torna alla Home</a>
</body>
</html>