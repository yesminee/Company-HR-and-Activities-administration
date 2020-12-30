<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="entity.Activite , java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="header.jsp" %>
	<h2>List Activite</h2>

	<%
	
		List<Activite> tab=(List<Activite>)request.getAttribute("infos");
		if(tab.size()==0){ %> 
			<p>Pas d'activite selon les critere choisi</p>
	<%	}else{ %>
			
		<table class="table">
  			<thead class="thead-dark">
    		<tr>
      			<th scope="col">Code_activite</th>
      			<th scope="col">Direction</th>
      			<th scope="col">Annee</th>
      			<th scope="col">Theme</th>
      			<th scope="col">Intitule</th>
      			<th scope="col">Indicateur </th>
      			<th scope="col">Source_information</th>
      			<th scope="col">Periode</th>
      			<th scope="col">Partenaire</th>
      			<th scope="col">Source_financiere</th>
      			<th scope="col">Etat</th>
    		</tr>
  		</thead>
		
		<tbody>
			
		<%for(Activite a:tab){%>	
			<tr>
				
				<td><%= a.getCode() %></td>
				<td><%= a.getDirection() %></td>
				<td><%= a.getAnnee() %></td>
				<td><%= a.getTheme() %></td>
				<td><%= a.getIntitule() %></td>
				<td><%= a.getIndicateur() %></td>
				<td><%= a.getSI() %></td>
				<td><%= a.getPeriode() %></td>
				<td><%= a.getPartenaire() %></td>
				<td><%= a.getSF() %></td>
				<td><%= a.getEtat() %></td>
			
			</tr>
		<% }%>
		
		</tbody>			
			</table>
				
	<%	}
	%>
	<%@ include file="footer.jsp" %>
</body>
</html>