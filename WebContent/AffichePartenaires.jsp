<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*, entity.Partenaire" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>

	<%@ include file="header.jsp" %>
	
	<h1>Liste des Partenaires</h1>
		
		<%
		
			List<Partenaire> tab=(List<Partenaire>)request.getAttribute("tab");
		
			if(tab.size()==0){%>
				<p>Il y a pas de partenaire</p>
			<% }else{%>
				<table  class="table">
					<thead class="thead-dark">
					<tr>
							<th  scope="col">Code Partenaire</th>
							<th  scope="col">Nom Partenaire</th>
							<th  scope="col">Email</th>
					
					</tr>
					</thead>
					 <tbody>
			<%for(Partenaire p:tab) {%>	
				
					<tr>
						<td> <%= p.getCode() %> </td>
						<td> <%= p.getNom() %> </td>
						<td> <%= p.getEmail() %> </td>
					</tr>
					
					
				<%} %>
				</tbody>
				</table>
				
				
		<%	}  %>
		<%@ include file="footer.jsp" %>
</body>
</html>