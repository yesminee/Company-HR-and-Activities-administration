<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ page import="java.util.*, entity.Theme" %> 
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
	
	<h1>Liste des Themes</h1>
		
		<%
		
			List<Theme> tab=(List<Theme>)request.getAttribute("tab");
		
			if(tab.size()==0){%>
				<p>Il y a pas d'Theme </p>
			<% }else{%>
				<table  class="table">
					<thead class="thead-dark">
					<tr>
						
							<th scope="col">Code Theme</th>
							<th scope="col">Nom Theme</th>
							
					
					</tr>
				</thead>
				<tbody>
			<%for(Theme t:tab) {%>	
					<tr>
						<td> <%= t.getCode() %> </td>
						<td> <%= t.getNom() %> </td>
					</tr>
					
					
				<%} %>
				</tbody>
				</table>
				
				
		<%	}  %>
		<%@ include file="footer.jsp" %>
</body>
</html>