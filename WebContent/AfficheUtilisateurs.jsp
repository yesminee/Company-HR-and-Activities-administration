<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.util.*, entity.AdminDirecteur , entity.ResponsableDirection" %> 
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
	
		<h1>Liste des utlisateurs</h1>
		
		
		<h2>List des Adminstrateurs</h2>
		<%
		
			List<AdminDirecteur> tab2=(List<AdminDirecteur>)request.getAttribute("tab2");
		
			if(tab2.size()==0){%>
				<p>Il y a pas d'adminstrateur veuillez remplir la tableau</p>
			<% }else{%>
				<table class="table">
					<thead class="thead-dark">
					<tr>
						
							<th scope="col">Code Utilisateur</th>
							<th scope="col">Login</th>
							<th scope="col">Password</th>
					
					</tr>
					</thead>
					
  					<tbody>
			<%for(AdminDirecteur ad:tab2) {%>	
				
					<tr>
						<td> <%= ad.getCode() %> </td>
						<td> <%= ad.getLogin() %> </td>
						<td> <%= ad.getPassword() %> </td>
						
					</tr>
					
					
				<%} %>
				</tbody>
				</table>
				
				
		<%	}  %>
		
		
		<hr />
		
				<h2>List des Directeurs</h2>
		<%
		
			List<AdminDirecteur> tab3=(List<AdminDirecteur>)request.getAttribute("tab3");
		
			if(tab3.size()==0){%>
				<p>Il y a pas de directeur veuillez remplir la tableau</p>
			<% }else{%>
				<table  class="table">
					<thead class="thead-dark">
					<tr>
						
							<th scope="col">Code Utilisateur</th>
							<th scope="col">Login</th>
							<th scope="col">Password</th>
					
					</tr>
					</thead>
					<tbody>
			<%for(AdminDirecteur ad:tab3) {%>	
				
					<tr>
						<td> <%= ad.getCode() %> </td>
						<td> <%= ad.getLogin() %> </td>
						<td> <%= ad.getPassword() %> </td>
						
					</tr>
					
					
				<%} %>
				</tbody>
				</table>
				
				
		<%	}  %>

		<hr />
				<h2>List des Responsables</h2>
		<%
		
			List<ResponsableDirection> tab=(List<ResponsableDirection>)request.getAttribute("tab1");
		
			if(tab.size()==0){%>
				<p>Il y a pas de responsable veuillez remplir la tableau</p>
			<% }else{%>
				<table  class="table">
					<thead  class="thead-dark">
					
					<tr>
						
							<th scope="col">Code Utilisateur</th>
							<th scope="col">Login</th>
							<th scope="col">Password</th>
							<th scope="col">Code Direction</th>
					
					</tr>
					</thead>
					<tbody>
			<%for(ResponsableDirection rd:tab) {%>	
				
					<tr>
						<td> <%= rd.getCode() %> </td>
						<td> <%= rd.getLogin() %> </td>
						<td> <%= rd.getPassword() %> </td>
						<td> <%= rd.getCodeDirection()  %> </td>
					</tr>
					
					
				<%} %>
				</tbody>
				</table>
				
				
		<%	}  %>	
		
		<%@ include file="footer.jsp" %>
		
</body>
</html>