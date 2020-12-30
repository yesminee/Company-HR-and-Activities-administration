<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.util.*, entity.Direction" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<title>Insert title here</title>
</head>
<body>

	<%@ include file="header.jsp" %>
	
		<h1>Liste des Directions</h1>
		
		<%
		
			List<Direction> tab=(List<Direction>)request.getAttribute("tab");
		
			if(tab.size()==0){%>
				<p>Il y a pas d'utlisateur veuillez remplir la tableau</p>
			<% }else{%>
				<table  class="table">
					 <thead class="thead-dark">
					
					<tr>
						
							<th  scope="col">Code Direction</th>
							<th  scope="col">Nom Direction</th>
							<th  scope="col">Email</th>
					
					</tr>
					</thead>
					<tbody>
			<%for(Direction u:tab) {%>	
				
					<tr>
						<td> <%= u.getCode() %> </td>
						<td> <%= u.getNom() %> </td>
						<td> <%= u.getEmail() %> </td>
					</tr>
					
					
				<%} %>
				</tbody>
				</table>
				
				
		<%	}  %>

<%@ include file="footer.jsp" %>
</body>
</html>